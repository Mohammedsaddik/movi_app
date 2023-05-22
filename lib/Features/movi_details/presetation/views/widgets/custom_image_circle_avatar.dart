import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.orange,
      minRadius: 14,
      maxRadius: 20,
      backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg'),
    );
  }
}
