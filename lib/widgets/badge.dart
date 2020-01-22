import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {

  final IconData icon;
  final double size;

  IconBadge({Key key, @required this.icon, @required this.size})
      : super(key: key);


  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(
          widget.icon,
          size: widget.size,
        ),
        Positioned(
          right: 0.0,
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: 13,
              minHeight: 13,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 1),
              child:Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
