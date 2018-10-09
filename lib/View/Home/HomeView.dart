import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:banner/banner.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:english_words/english_words.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new BannerView(
          data: ['a', 'b', 'c'],
          buildShowView: (index, data) {
            return new CachedNetworkImage(
              imageUrl: "https://dummyimage.com/800x600/957218/FFFFFF&text="+WordPair.random().asPascalCase,
              placeholder: new Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
              errorWidget: new Icon(Icons.error),
              fit: BoxFit.fitWidth,
            );
          },
          delayTime: 10,
          onBannerClickListener: (index, data) {
            debugPrint("show dialog");
            Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("$data")));
          },
        ),
      ],
    );
  }

  _showDialog(BuildContext context, String message) {
    var alert = new AlertDialog(
      title: Text("123"),
    );

    showDialog(
      context: context,
      builder: (context) => alert,
    );
  }

}
