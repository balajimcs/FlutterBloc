import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/Auth/login/bloc/login_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../resources/app_routes.dart';

class LoginAuth extends StatefulWidget {
  @override
  _LoginAuthState createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  TextEditingController customerController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _key = new GlobalKey<FormState>();
  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  late AuthenticationBloc _authBloc;
  late SharedPreferences _sharedPreferences;

  Future<void> _initializeSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _authBloc = AuthenticationBloc(sharedPreferences: _sharedPreferences);
  }

  @override
  void initState() {
    super.initState();
    _initializeSharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<AuthenticationBloc>(
        create: (context) => _authBloc,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/Group 3.png'),
              fit: BoxFit.fill,
            )),
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RotatedBox(
                  quarterTurns: -2,
                  child: SingleChildScrollView(
                    child: Container(

                        // padding: EdgeInsets.only(top: 100),
                        child: Stack(
                      children: <Widget>[
                        // Text("data", style: TextStyle(color: Colors.black, fontSize: 20),),
                        // Image(image: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1530&q=80"), width: 10,),
                        Container(
                          color: Colors.black,
                          width: 10,
                          height: 10,
                        ),
                        RotatedBox(
                          quarterTurns: 2,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                SystemNavigator.pop();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 0, top: 10, bottom: 10),
                                      child: Icon(
                                        Icons.arrow_circle_left_outlined,
                                        color: Colors.black,
                                        size: 32,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        Opacity(
                          opacity: 0.5,
                          child: ClipPath(
                            clipper: WaveClipper(),
                            child: Container(
                              color: Color(0xffEAF12D),
                              height: 630,
                            ),
                          ),
                        ),

                        ClipPath(
                          clipper: WaveClipper(),
                          child: Container(
                            padding: EdgeInsets.only(bottom: 50),
                            color: Color(0xffEAF12D),
                            height: 610,
                            alignment: Alignment.center,
                            child: RotatedBox(
                              quarterTurns: 2,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Icon(
                                                  Icons
                                                      .arrow_circle_left_outlined,
                                                  color: Colors.black,
                                                  size: 32,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 170,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 25, left: 22),
                                        child: SingleChildScrollView(
                                          child: Row(
                                            children: [
                                              Text(
                                                'login',
                                                style: TextStyle(
                                                    color: Color(0xFF134FAF),
                                                    fontFamily: "Raleway",
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Image.asset(
                                                  ("assets/images/2029711.png"),
                                                  width: 30,
                                                  height: 30,
                                                  color: Color(0xFF134FAF)),
                                            ],
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          bottom: 10,
                                          top: 20),
                                      child: Form(
                                        key: _key,
                                        child: Column(
                                          children: [
                                            TextField(
                                              controller: customerController,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Raleway",
                                                  fontSize: 18),
                                              decoration: InputDecoration(
                                                hintText: 'customer_id',
                                                labelText: 'customer_id',
                                                hintStyle: TextStyle(
                                                  fontFamily: "Raleway",
                                                ),
                                                labelStyle: TextStyle(
                                                    color: Color(0xFF134FAF),
                                                    fontFamily: "Raleway",
                                                    fontSize: 19),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xFF134FAF),
                                                      width: 3),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                prefixIcon: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20, right: 15),
                                                  child: Icon(
                                                      Icons.login_rounded,
                                                      color: Color(0xFF134FAF)),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TextField(
                                              controller: passwordController,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Raleway",
                                                  fontSize: 18),
                                              obscureText: _secureText,
                                              decoration: InputDecoration(
                                                hintText: 'password',
                                                labelText: 'password',
                                                hintStyle: TextStyle(
                                                  fontFamily: "Raleway",
                                                ),
                                                labelStyle: TextStyle(
                                                    color: Color(0xFF134FAF),
                                                    fontFamily: "Raleway",
                                                    fontSize: 19),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(width: 1.5),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xFF134FAF),
                                                      width: 3),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                prefixIcon: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20, right: 15),
                                                  child: Icon(Icons.password,
                                                      color: Color(0xFF134FAF)),
                                                ),
                                                suffixIcon: IconButton(
                                                  onPressed: showHide,
                                                  icon: Icon(
                                                    _secureText
                                                        ? Icons.visibility_off
                                                        : Icons.visibility,
                                                    color: Color(0xFF134FAF),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            InkWell(
                                              onTap: () {
                                                _authBloc.add(LoginEvent(
                                                  customerId:
                                                      customerController.text,
                                                  password:
                                                      passwordController.text,
                                                ));
                                                _authBloc.stream
                                                    .listen((state) {
                                                  if (state.status ==
                                                      AuthenticationStatus
                                                          .authenticated) {
                                                    // Navigate to a new screen

                                                    showDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          AlertDialog(
                                                        title: Text(
                                                            'Login Success'),
                                                        content: Text(
                                                            'You have successfully logged in.'),
                                                        actions: [
                                                          ElevatedButton(
                                                            child: Text('OK'),
                                                            onPressed: () {
                                                              setState(() {
                                                                customerController
                                                                    .clear();
                                                                passwordController
                                                                    .clear();
                                                              });
                                                              Get.back();
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }
                                                });
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    boxShadow: <BoxShadow>[],
                                                    gradient:
                                                        LinearGradient(
                                                            begin: Alignment
                                                                .centerLeft,
                                                            end: Alignment
                                                                .centerRight,
                                                            colors: [
                                                          Color(0xFF134FAF),
                                                          Color(0xFF134FAF)
                                                        ])),
                                                child: Text(
                                                  'login',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontFamily: "Raleway",
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10),
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text('fog_password',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: "Raleway",
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      child: Divider(
                                                        thickness: 2,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'or',
                                                    style: TextStyle(
                                                      fontFamily: "Raleway",
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      child: Divider(
                                                        thickness: 2,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 10),
                                                padding: EdgeInsets.all(7),
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      'don\'t_have_acc',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: "Raleway",
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'register',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF134FAF),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily: "Raleway",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      child: Divider(
                                                        thickness: 2,
                                                      ),
                                                    ),
                                                  ),
                                                  Text('or'),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      child: Divider(
                                                        thickness: 2,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 18),
                                              child: InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        'login_with_otp',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF134FAF),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: "Raleway",
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
