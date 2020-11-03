library bali;

import 'package:flutter/material.dart';

/// Bali.
class Bali{
  
  static Widget garisPutusPutus({
    Color bacgrounColor,
    Color dotColor,
    double height,
    double padding,
    double width
  }){
    return PutusPutus(
      backgroundColor: bacgrounColor,
      dotColor: dotColor,
      height: height,
      padding: padding,
      width: width,
    );
  }
}


class PutusPutus extends StatefulWidget {
  final double width;
  final Color backgroundColor;
  final Color dotColor;
  final double padding;
  final double height;

  const PutusPutus({Key key, this.width, this.backgroundColor, this.dotColor, this.padding, this.height}) : super(key: key);
  @override
  _PutusPutusState createState() => _PutusPutusState(
    width,
    backgroundColor,
    dotColor,
    padding,
    height
  );
}

class _PutusPutusState extends State<PutusPutus> {
  final kunci = GlobalKey();
  var berapa;
  final width,backgroundColor,dotColor,padding,height;

  _PutusPutusState(this.width, this.backgroundColor, this.dotColor, this.padding, this.height);

  @override
  void initState() {
    cariLebar();
    super.initState();
  }
  cariLebar()async{
    if(kunci.currentContext == null){
      await Future.delayed(Duration(seconds: 1),(){
        cariLebar();
      });
    }else{
      RenderBox renderBox = kunci.currentContext.findRenderObject();
      setState(() {
        this.berapa = renderBox.size.width;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: backgroundColor??Colors.white,
      padding: EdgeInsets.all(padding??8),
      width: double.infinity,
      key: kunci,
      child: berapa == null?SizedBox.shrink():
      Row(
        children: [
          for(var i = 0; i < (berapa??500) ~/ ((width??5)*2)  ;i++)
          Expanded(
            child: Container(
              width: width??5,
              color: i %2 == 0?dotColor??Colors.black:Colors.white,
              height: height??1,
            ),
          )
        ]
      ),
    );
  }


}