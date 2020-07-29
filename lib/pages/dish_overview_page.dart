import 'package:flutter/material.dart';
import 'package:mero_kitchen_app/model/Video.dart';
import 'package:mero_kitchen_app/model/channel.dart';
import 'package:mero_kitchen_app/providers/dish_provider.dart';
import 'package:mero_kitchen_app/services/youtube_api_services.dart';
import 'package:mero_kitchen_app/widgets/dish_card.dart';
import 'package:provider/provider.dart';

import 'details_page.dart';

///****************************************************
///*** Created by Fady Fouad on 26-Jul-20 at 15:13.***
///****************************************************

class DishOverViewPage extends StatefulWidget {
  static final String routeName = "/dish_overview";

  @override
  _DishOverViewPageState createState() => _DishOverViewPageState();
}

class _DishOverViewPageState extends State<DishOverViewPage> {
  Channel _channel;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _initChannel();
  }

  _initChannel() async {
    Channel channel = await APIService.instance
        .fetchChannel(channelId: 'UCivo8yotPgYc08Sy-MZiPlQ');
    setState(() {
      _channel = channel;
    });
  }

  _buildProfileInfo() {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35.0,
            backgroundImage: NetworkImage(_channel.profilePictureUrl),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _channel.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${_channel.subscriberCount} subscribers',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildVideo(Video video) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      padding: EdgeInsets.all(10.0),
      height: 140.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image(
            width: 150.0,
            image: NetworkImage(video.thumbnailUrl),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Text(
              video.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
    List<Video> allVideos = _channel.videos..addAll(moreVideos);
    setState(() {
      _channel.videos = allVideos;
    });
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    final dishData = Provider.of<DishProvider>(context);
    final dishList = dishData.dishes;
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
          child: Text(
            'مطبخ ميرو',
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: _channel != null
              ? NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollDetails) {
                    if (!_isLoading &&
                        _channel.videos.length !=
                            int.parse(_channel.videoCount) &&
                        scrollDetails.metrics.pixels ==
                            scrollDetails.metrics.maxScrollExtent) {
                      _loadMoreVideos();
                    }
                    return false;
                  },
                  child: AnimatedList(
                    scrollDirection: Axis.horizontal,
                    initialItemCount: _channel.videos.length,
                    itemBuilder: (context, index, animation) {
                      Video video = _channel.videos[index];
                      return Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                          child: DishCard(
                            title: _channel.videos[index].title,
                            desc: _channel.videos[index].id,
                            imageUrl:
                                'https://img.youtube.com/vi/${_channel.videos[index].id}/0.jpg',
                            isFav: false,
                            onCardTap: () => {
                              Navigator.pushNamed(
                                  context, DetailsPage.routeName,
                                  arguments: (_channel.videos[index].id))
                            },
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).primaryColor, // Red
                    ),
                  ),
                ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 38.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
//                  Icon(FontAwesomeIcons.checkDouble),
              FlatButton(
                child: Text(
                  'Foods',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: Theme.of(context).backgroundColor,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text(
                  'Foods',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: Theme.of(context).backgroundColor,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text(
                  'Foods',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: Theme.of(context).accentColor,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: () => {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
