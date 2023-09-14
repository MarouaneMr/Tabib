//set constant config here
import 'package:flutter/material.dart';

class Config{
    static MediaQueryData? mediaQueryData;
    static double? screenWidth;
    static double? screenHeight;


    //Width and height initialization
    void init(Build context){
        mediaQueryData = MediaQuery.of(context);
        screenWidth = mediaQueryData!.size.width;
        screenHeight = mediaQueryData!.size.height;
    }


    static get widthSize {
        return screenWidth;
    }

    static get heightSize{
        return screenHeight;
    }

    //Define spacing height
    static const spaceSmall = SizedBox(
        height: 25,
    );

    static final spaceMedium = SizedBox(
        height: screenHeight! * 0.05,
    );

    static final spaceBig = SizedBox(
        height: screenHeight! * 0.08,
    );

    //Textform field Border

    static const outlineBorder = outlineInputBorder(
        borderRadius:BorderRadius.all(Radius.circular(8)),
    );

    static const focusBorder = outlineInputBorder(
        borderRadius:BorderRadius.all(Radius.circular(8)),
        borderSide:borderSide(
            color: Colors.greenAccent,
        )
    );
    static const errorBorder = outlineInputBorder(
        borderRadius:BorderRadius.all(Radius.circular(8)),
        borderSide:borderSide(
            color: Colors.red,
        )
    );

    static const primaryColor = Colors.greenAccent;

}