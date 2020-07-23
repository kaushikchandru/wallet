import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'HomeWithSidebar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/homePage' : (context)=>HomeWithSidebar(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/sideImg.png'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("06:22 AM", style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/cloud.png'),
                          fit: BoxFit.contain
                        )
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("34˚ C", style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w800

                    ),)
                  ],
                ),
                Text("Aug 1, 2020 | Wednesday", style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('asset/images/logo.png'),
                              fit: BoxFit.contain
                            )
                          ),
                        ),
                        Text("eWalle", style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'ubuntu',
                          fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 10,),
                        Text("Open An Account For \nDigital E-Wallet Solutions. \nInstant Payouts.\n\nJoin For Free", style: TextStyle(
                          color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: openHomePage,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffffac30),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign Up", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700
                          ),),
                          Icon(Icons.arrow_forward, size: 17,)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("Create an account", style: TextStyle(
                    fontSize: 16
                  ),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void openHomePage()
  {
    Navigator.pushNamed(context, '/homePage');
  }
}
