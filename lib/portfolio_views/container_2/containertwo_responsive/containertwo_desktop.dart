import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';


class ContainertwoDesktop extends StatefulWidget {
  const ContainertwoDesktop({super.key});

  @override
  State<ContainertwoDesktop> createState() => _ContainertwoDesktopState();
}

class _ContainertwoDesktopState extends State<ContainertwoDesktop> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
      //height: height*0.8,
      width: width,
      color: AppColor.lightbgColor,
      child: Column(children: [
        SizedBox(height: 20,),
        Text('My Services',style: GoogleFonts.inconsolata(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ColumnWidget(text1: 'Front End', text2: 'I am Nitish Kumar i have Excellent skill of web development and android development.  learner by YouTube. '),
          ColumnWidget(text1: 'Front End', text2: 'I am Nitish Kumar i have Excellent skill of web development and android development.  learner by YouTube. '),
          ColumnWidget(text1: 'Front End', text2: 'I am Nitish Kumar i have Excellent skill of web development and android development.  learner by YouTube. '),
        ],),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ColumnWidget(text1: 'Front End', text2: 'I am Nitish Kumar i have Excellent skill of web development and android development.  learner by YouTube. '),
          ColumnWidget(text1: 'Front End', text2: 'I am Nitish Kumar i have Excellent skill of web development and android development.  learner by YouTube. '),
          ColumnWidget(text1: 'Front End', text2: 'I am Nitish Kumar i have Excellent skill of web development and android development.  learner by YouTube. '),
        ],),




      ],),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  String text1;
  String text2;
   ColumnWidget({super.key,
   required this.text1,
     required this.text2

   });

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return   Container(
      width: width*0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                border: Border.all(color: AppColor.greenPrimaryColor,width: 7)
            ),
            child: Center(child:
            Image.asset('lib/assets/icon.png'),),
          ),
         SizedBox(height: 5,),
          Text(text1,style: GoogleFonts.inconsolata(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 5,),
          Text(text2,style: GoogleFonts.inconsolata(
              color: Color(0xff767676),
              fontSize: 16,
              fontWeight: FontWeight.w300
          ),),
        ],
      ),
    );
  }
}

