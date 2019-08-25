import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  final GlobalKey<ScaffoldState> sca = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        key: sca,
        endDrawer: Drawer(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                ),

                // 타이틀
                _titleRow(context, this.sca),

                // 메인 리스트
                _horizentalList(context),

                _contents(context),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleRow(BuildContext context, GlobalKey<ScaffoldState> sca){
    return Container(
      child : Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "제목",
                  style: TextStyle(
                      inherit: true,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24
                  ),
                ),
                Text(
                  "부제",
                  style: TextStyle(
                      inherit: true,
                      color: Colors.black45,
                      fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                sca.currentState.openEndDrawer();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _horizentalList(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      margin: EdgeInsets.only(top: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width-80,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Center(
              child: Text("아이템"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width-100,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Center(
              child: Text("!@#"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _contents(BuildContext context){
    return Container(
        margin: EdgeInsets.only(
            top:30.0
        ),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.person),
                  maxRadius: 20.0,
                  minRadius: 20.0,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20.0
                  ),
                  child: Text(
                    "Name",
                    style: TextStyle(
                        color: Colors.black,
                        inherit: true,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20.0
                  ),
                  child: Text(
                    "description",
                    style: TextStyle(
                      color: Colors.black38,
                      inherit: true,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: ListView(
                padding: EdgeInsets.only(top:5.0),
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }

}
