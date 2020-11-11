import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200.0,
              width: 150.0,
                child: FlatButton(
                  child: Text("Button 2"),
                  onPressed: ()=>print("pressed"),
                ),
              //color: Colors.black54,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
             Container(
                height: 200.0,
                width: 150.0,
                child: FlatButton(
                  child: Text("Button 1"),
                  onPressed: ()=>print("pressed"),
                ),
                //color: Colors.black54,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),

          ],
        ),
          SizedBox(
            height: 20.0,
          ),
           Container(
              height: 150.0,
              width: 340.0,
              child: FlatButton(
                child: Text("BMI Calculate"),
                onPressed: ()=>print("pressed"),
              ),
              //color: Colors.black54,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 150.0,
            width: 340.0,
            child: _slider(),
            //color: Colors.black54,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),


        ],
      ),
    );
  }
}
class _slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<_slider> {
  static double _lowervalue = 1.0;
  static double _uppervalue = 100.0;
  RangeValues values = RangeValues(_lowervalue, _uppervalue);
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      min : _lowervalue,
      max : _uppervalue,
      values: values,
      onChanged: (val){
        setState(() {
          print("j");
          values = val;
        });
      },
    );
  }
}
