import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeSwipe extends StatefulWidget {
  final List items;

  HomeSwipe({Key key, this.items}) : super(key: key);
  @override
  _HomeSwipeState createState() => _HomeSwipeState();
}

class _HomeSwipeState extends State<HomeSwipe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Swiper(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            '${widget.items[index]}',
            fit: BoxFit.fill,
          );
        },
        pagination: SwiperPagination(),
        // control: SwiperControl(),
        autoplay: true,
      ),
    );
  }
}
