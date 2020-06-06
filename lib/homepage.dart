import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:getit/detailprofile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
class FirstApp extends StatefulWidget {
  static const String id = 'first_page';

  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5,
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
        unselectedItemColor: Color(0xffAEEEEE	),
        selectedItemColor: Color(0xff00EEEE),
        onTap: _onItemTap,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.assessment),
            title: new Text('Platter'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_box),
            title: new Text('add'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
      body: SafeArea(child: showSubScreen(_currentIndex)),
    );
  }
  void _onItemTap(int index) async {
//    user = await getUser();
    if (index != _currentIndex) {
      setState(() {
        _currentIndex= index;
      });
    }
  }

//  getUser () async {
//    user = await FirebaseAuth.instance.currentUser();
//    return user;
//  }

  Widget showSubScreen(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return HomePage();
      case 2:
        return HomePage();
      case 3:
        return DetailProfile();
    }

    return SizedBox();
  }
}
class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffE0FFFF),
      appBar: AppBar(
        backgroundColor: Color(0xff00F5FF),
        elevation:0,
        leading: IconButton(icon: Icon(Icons.tune,color: Colors.black,),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.black,),onPressed: (){
            showSearch(context: context, delegate: ServiceSearch());
          },)
        ],
      ),
      body: CustomPaint(
        painter: CurvePainter(),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Top Services',style: TextStyle(fontSize: 20,fontFamily: 'Source_Serif_Pro'),),
                  ),
                  SizedBox(height: 10,),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlayCurve: Curves.easeOutSine,
                      autoPlay: true,
                      aspectRatio: 1,
                      viewportFraction: 0.9,
                      height: 280,
                      enlargeCenterPage: true,
                    ),
                    items: imgList
                        .map((item) => Stack(
                      children: <Widget>[
                        Container(
                          height: 200,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 270,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.5, 2.0),
                                      blurRadius: 3.5,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: NetworkImage(item),
                                    fit: BoxFit.cover,
                                  )),

                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.9,
                          left: 0.0,
                          right: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: size.width - 150,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1.5, 2.0),
                                      blurRadius: 3.5,
                                    ),
                                  ],
                                  color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Lemon Meraingues and yo ass',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Poppins-Medium',color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'yo know yo see it',
                                    style: TextStyle(color: Colors.black54, fontSize: 14, fontFamily: 'Poppins-Medium'),
                                  ),
                                  SizedBox(
                                    height: 13,
                                    child: Divider(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(
                                            Icons.timer,
                                            color: Colors.black38,
                                          ),
                                          SizedBox(width: 6.0),
                                          Text(
                                            '21' + " min",
                                            style: TextStyle(
                                                fontSize: 13.0, color: Colors.black38, fontWeight: FontWeight.w600, fontFamily: 'Montserrat'),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(
                                            Icons.people,
                                            color: Colors.black38,
                                          ),
                                          SizedBox(width: 6.0),
                                          Text(
                                            '4' + " servings",
                                            style: TextStyle(
                                                color: Colors.black38, fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'Montserrat'),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(
                                            Icons.assessment,
                                            color: Colors.black38,
                                          ),
                                          SizedBox(width: 6.0),
                                          Text(
                                            'easy',
                                            style: TextStyle(
                                                color: Colors.black38, fontSize: 13.0, fontWeight: FontWeight.w600, fontFamily: 'Montserrat'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
                        .toList(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xff00F5FF);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
class ServiceSearch extends SearchDelegate<String>{
  List food = ['chicken', 'potato', 'veg', 'paneer', 'cheese', 'egg', 'milk', 'cake', 'burger'];
  List recent = [
    'chicken',
    'potato',
    'veg',
    'paneer',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(primaryColor: Color(0xff00EEEE));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty ? recent : food.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.search),
          trailing: Icon(Icons.arrow_forward_ios),
          title: RichText(
            text: TextSpan(
                text: suggestions[index].substring(0, query.length),
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                children: [TextSpan(text: suggestions[index].substring(query.length), style: TextStyle(color: Colors.grey, fontSize: 15))]),
          )),
      itemCount: suggestions.length,
    );
  }

}