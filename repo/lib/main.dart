import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:repo/check.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coder Kadir',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Sepret());
  }
}

class Sepret extends StatefulWidget {
  @override
  _SepretState createState() => _SepretState();
}

class _SepretState extends State<Sepret> {
  final TextStyle _kalin =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18);
  final TextStyle _normal = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  var balancedeger = 1239.27;

  int _selectedIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.adjust_rounded,
          color: Colors.black,
        ),
        title: Text(
          "coder_kadir",
          style: _kalin,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.amberAccent.shade100,
              child: Image.asset("assets/images/0.png"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Cuzdan yazı
            Container(
              margin: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "Cüzdan",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ),
            //balance degeri
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 12,
                  child: Icon(
                    Icons.attach_money,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Text(
                  balancedeger.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            //User kadtları
            Container(
              margin: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 12,
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset("assets/images/1.png"),
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        border: Border.all(
                          color: Colors.white, // red as border color
                        ),
                        color: Colors.pink.shade100,
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/2.png"),
                      margin: EdgeInsets.only(left: 40),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.green.shade100,
                        border: Border.all(
                          color: Colors.white, // red as border color
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/3.png"),
                      margin: EdgeInsets.only(left: 80),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.lightGreenAccent.shade100,
                        border: Border.all(
                          color: Colors.white, // red as border color
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/0.png"),
                      margin: EdgeInsets.only(left: 120),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.redAccent.shade100,
                        border: Border.all(
                          color: Colors.white, // red as border color
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(left: 160),
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.purpleAccent.shade100,
                        border: Border.all(
                          color: Colors.white, // red as border color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Toplam Hesap ",
              style: _normal,
            ),
            Text(
              "\$ ${balancedeger / 3}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CheckBill()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                height: MediaQuery.of(context).size.height / 14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: Colors.amber.shade200,
                ),
                child: Center(
                  child: Text(
                    "Faturayı Böl",
                    style: _normal,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "Yakınındaki arkadaşlar",
                  style: _kalin,
                ),
              ),
            ),

            //Buraya scrollwiev eklenbip dinamikleştirilebilir
            /*  SingleChildScrollView(scrollDirection: Axis.horizontal,) */ //gibi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.blue.shade100),
                  width: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.blueGrey.shade100,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset:
                                  Offset(5, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/0.png"),
                      ),
                      Text(
                        "Ali",
                        style: _normal,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent.shade200,
                        radius: 12,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.amber.shade100,
                  ),
                  width: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.lightGreenAccent.shade100,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset:
                                  Offset(5, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/3.png"),
                      ),
                      Text(
                        "Ömer",
                        style: _normal,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.green.shade200,
                        radius: 12,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.pink.shade100,
                  ),
                  width: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.pinkAccent.shade100,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: Offset(5, 4),
                            ),
                          ],
                        ),
                        child: Image.asset("assets/images/5.png"),
                      ),
                      Text(
                        "Damla",
                        style: _normal,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.redAccent.shade200,
                        radius: 12,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.qr_code_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: (index) {},
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black26,
              ),
              label: '',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: Colors.black26,
              ),
              label: '',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: Colors.black26,
              ),
              label: '',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black26,
              ),
              label: '',
              backgroundColor: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
