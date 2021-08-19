import 'package:flutter/material.dart';

class ConnectedWidget extends StatelessWidget {
  final image;
  final width;
  final connectedUser;
  final user;

  const ConnectedWidget(
      {Key? key, this.image, this.width, this.connectedUser, this.user})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 3, bottom: 3),
            child: image,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.black,
            child: VerticalDivider(),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            connectedUser,
            style: TextStyle(
              fontFamily: "Montserrat SemiBold",
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: width,
          ),
          Text(
            user,
            style: TextStyle(
              fontFamily: "Montserrat SemiBold",
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.done_rounded)
        ],
      ),
    );
  }
}
