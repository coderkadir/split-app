import 'package:flutter/material.dart';

class CheckBill extends StatefulWidget {
  @override
  _CheckBillState createState() => _CheckBillState();
}

class _CheckBillState extends State<CheckBill> {
  double _currentSliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 8,
            ),
            child: Icon(
              Icons.alarm,
              color: Colors.black,
              size: 22,
            ),
          )
        ],
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 15,
            ),
            margin: EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(55)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.transparent.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hesabı Paylaştır",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Toplam Ücret",
                          style: TextStyle(color: Colors.grey.shade600),
                        )
                      ],
                    ),
                    Text(
                      "\$ 413.09",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 6.5,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-3, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/0.png"),
                        ),
                        Text(
                          "Ödenecek Hesap",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$ 413.09",
                          style: TextStyle(
                              fontSize: 020, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      child: Slider(
                        value: 50,
                        min: 0,
                        max: 100,
                        divisions: 7,
                        label: "%" + _currentSliderValue.round().toString(),
                        activeColor: Colors.amber,
                        inactiveColor: Colors.white10,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 6.5,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-3, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/1.png"),
                        ),
                        Text(
                          "Ödenecek Hesap",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$ 413.09",
                          style: TextStyle(
                              fontSize: 020, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      child: Slider(
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        divisions: 7,
                        label: "%" + _currentSliderValue.round().toString(),
                        activeColor: Colors.amber,
                        inactiveColor: Colors.white10,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 6.5,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-3, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/3.png"),
                        ),
                        Text(
                          "Ödenecek Hesap",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$ 413.09",
                          style: TextStyle(
                              fontSize: 020, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      child: Slider(
                        value: 12,
                        min: 0,
                        max: 100,
                        divisions: 7,
                        label: "%" + _currentSliderValue.round().toString(),
                        activeColor: Colors.amber,
                        inactiveColor: Colors.white10,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 6.5,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.transparent.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-3, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/5.png"),
                        ),
                        Text(
                          "Ödenecek Hesap",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600),
                        ),
                        Text(
                          "\$ 413.09",
                          style: TextStyle(
                              fontSize: 020, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      child: Slider(
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        divisions: 7,
                        label: "%" + _currentSliderValue.round().toString(),
                        activeColor: Colors.amber,
                        inactiveColor: Colors.white10,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    )
                  ],
                )),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset("assets/images/5.png"),
                ),
                Text(
                  "Ödenecek Hesap",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
                Text(
                  "\$ 413.09",
                  style: TextStyle(fontSize: 020, fontWeight: FontWeight.bold),
                )
              ],
            )),
            Container(
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 7,
                label: "%" + _currentSliderValue.round().toString(),
                activeColor: Colors.amber,
                inactiveColor: Colors.white10,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset("assets/images/5.png"),
                ),
                Text(
                  "Ödenecek Hesap",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
                Text(
                  "\$ 413.09",
                  style: TextStyle(fontSize: 020, fontWeight: FontWeight.bold),
                )
              ],
            )),
            Container(
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 7,
                label: "%" + _currentSliderValue.round().toString(),
                activeColor: Colors.amber,
                inactiveColor: Colors.white10,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset("assets/images/5.png"),
                ),
                Text(
                  "Ödenecek Hesap",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
                Text(
                  "\$ 413.09",
                  style: TextStyle(fontSize: 020, fontWeight: FontWeight.bold),
                )
              ],
            )),
            Container(
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 7,
                label: "%" + _currentSliderValue.round().toString(),
                activeColor: Colors.amber,
                inactiveColor: Colors.white10,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.all(20),
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(55)),
            color: Colors.grey.shade900),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
              margin: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
            ),
            Text(
              "Hesabı yok et",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
