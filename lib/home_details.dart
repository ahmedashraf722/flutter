import 'package:flutter/material.dart';
import 'package:plant_cart/plant_store.dart';

class HomeDetail extends StatefulWidget {
  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  Widget _inputText(String hint, bool secure, Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 44, bottom: 10, right: 44),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: secure,
        decoration: InputDecoration(
          focusColor: Colors.white,
          labelText: hint,
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: icon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: 500,
                    height: 340,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/plant.jpg'),
                          fit: BoxFit.cover),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 30,
              ),
              Positioned(
                top: 300,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      color: Colors.green),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 100,
                  child: ListView(
                    children: [
                      SizedBox(height: 50),
                      _inputText("UserName", false, Icon(Icons.person)),
                      SizedBox(height: 10),
                      _inputText("Password", true, Icon(Icons.lock)),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 4),
                        child: Text("Forget Password?",
                            style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Store()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(40),
                          width: 250,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Row(
                          children: [
                            Text(
                              "New User ?",
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
