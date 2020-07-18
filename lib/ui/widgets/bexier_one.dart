import 'dart:math';

import 'package:flutter/material.dart';

import 'custom_clipper.dart';



class BezierOne extends StatelessWidget {
  const BezierOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Transform.rotate(
          angle: -pi / 2.5,
          child: ClipPath(
            clipper: ClipPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height *.5,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF8A2BE2), Color(0xFF8A2BE2)]
                  )
              ),
            ),
          ),
        )
    );
  }
}



class BezierTwo extends StatelessWidget {
  const BezierTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(pi);
    return Container(
        child: Transform.rotate(
          angle: 90 ,
          child: ClipPath(
            clipper: ClipPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height *.5,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFBA55D3), Color(0xFFBA55D3)]
                  )
              ),
            ),
          ),
        )
    );
  }
}