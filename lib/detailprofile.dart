import 'package:flutter/material.dart';

class DetailProfile extends StatefulWidget {
  @override
  _DetailProfileState createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE0FFFF),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),),
        backgroundColor: Color(0xff00F5FF),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.bookmark),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.5, 2.0),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.sp,
                children: <Widget>[
                  Container(
                    height: size.height/5-30,
                    width: size.width/4+15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(image: AssetImage('assets/breakfast.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Roy Chowpin',style: TextStyle(fontFamily: 'Poppins-Bold',fontSize: 20),),
                      SizedBox(height: 4,),
                      Text('2+ years experience',style: TextStyle(fontFamily: 'Poppins-Bold',fontSize: 17),),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('4+', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Icon(Icons.star,color: Colors.yellow,),
                            ],
                          ),
                          SizedBox(width: 4,),
                          Row(
                            children: <Widget>[
                              Text('1K', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(width: 4,),
                              Text('Services')
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.black, size: 17),
                          Text("London, UK", style: TextStyle(color: Colors.black, letterSpacing: 3,),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: (){

                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(7.0),
//                              side: BorderSide(color: Colors.black),
                            ),
                            elevation: 3,
                            color: Color(0xff00E5EE	),
                            child: Text('Call',style: TextStyle(color: Colors.white,
                              fontSize: 17,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
//                              blurRadius: 1.5,
                                  color: Colors.grey,
                                ),

                              ],),),
                          ),
                          SizedBox(width: 15,),
                          RaisedButton(
                            onPressed: (){

                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(7.0),
//                              side: BorderSide(color: Colors.black),
                            ),
                            elevation: 3,
                            color: Color(0xff00E5EE	),
                            child: Text('Message',style: TextStyle(color: Colors.white,
                              fontSize: 17,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
//                              blurRadius: 1.5,
                                  color: Colors.grey,
                                ),

                              ],),),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.5, 2.0),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Highlights',style: TextStyle(fontFamily: 'Poppins-Bold',fontSize: 19,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  HighLights(),
                  Divider(endIndent: 2,indent: 2,),
                  HighLights()
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.5, 2.0),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Reviews',style: TextStyle(fontFamily: 'Poppins-Bold',fontSize: 19,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  HighLights()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget HighLights(){
    return Container(
      padding: EdgeInsets.all(4),
//      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xffF0FFFF),
      ),
      child: Row(children: <Widget>[
        Text('Delivered 5 star service yesterday')
      ],),
    );
  }
}
