import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DataModel{

  final String text1;
  final String text2;
  final image;
  DataModel(
      {
        required this.text1,
        required this.text2,
        required  this.image,
      }
      );
}
class Number extends StatelessWidget{
  List<DataModel> data=[
    DataModel(
      text1: "ichi" ,
      text2: "one",
      image: "assets/images/numbers/number_one.png",
    ),
    DataModel(
      text1: "Ni" ,
      text2: "Two",
      image: "assets/images/numbers/number_two.png",
    ),
    DataModel(
      text1: "San" ,
      text2: "Three",
      image: "assets/images/numbers/number_three.png",
    ),
    DataModel(
      text1: "Shi" ,
      text2: "four",
      image: "assets/images/numbers/number_four.png",
    ),
    DataModel(
      text1: "GO" ,
      text2: "five",
      image: "assets/images/numbers/number_five.png",
    ),
    DataModel(
      text1: "Roku" ,
      text2: "six",
      image: "assets/images/numbers/number_six.png",
    ),
    DataModel(
      text1: "Sebun" ,
      text2: "seven",
      image: "assets/images/numbers/number_seven.png",
    ),
    DataModel(
      text1: "hachi" ,
      text2: "eight",
      image: "assets/images/numbers/number_eight.png",
    ),
    DataModel(
      text1: "ku" ,
      text2: "nine",
      image: "assets/images/numbers/number_nine.png",
    ),
    DataModel(
      text1: "ju" ,
      text2: "ten",
      image: "assets/images/numbers/number_ten.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff452F24),
        title: Text("Numbers",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => BuildNumberJabness(data[index],context),
                itemCount: data.length,
              ),
            ),
          ]
      ),
    );
  }
}
Widget BuildNumberJabness(DataModel data,context){
  return Container(
    color: Color(0xffF9952F),
    child: Row(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Color(0xffFFF4DB),
          child: Image(image: AssetImage("${data.image}"),),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("${data.text1} \n${data.text2}",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xffFFEBBC),
            ),

          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed:()  {
                final player = AudioPlayer();
                 player.play(AssetSou
                 // will immediately start playing
              } ,
              icon:Icon(Icons.arrow_right,
                size: 70,
                color: Color(0xffFFEBBC),
              ) ,
            ),
          ),
        ),
      ],
    ),
  );



}




