import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';
import 'package:tourshop_app/ui/common/constant/dimen.dart';
import 'package:tourshop_app/ui/page/us_navigator.dart';

class US_TextField_Login extends StatefulWidget {
  const US_TextField_Login({Key? key}) : super(key: key);

  @override
  State<US_TextField_Login> createState() => _US_TextField_LoginState();
}

class _US_TextField_LoginState extends State<US_TextField_Login> {
  bool isHidenPassword = true;
  void _toggleButtonViewPassword() {
    setState(() {
      isHidenPassword = !isHidenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    //textfield login
    return Container(
        margin: EdgeInsets.fromLTRB(40, 200, 40, 0),
        height: getHeightSize(context),
        width: getWidthSize(context),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 100),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: US_APP_WHITE, fontSize: 15),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    prefix: Icon(
                      Icons.person,
                      size: 15,
                      color: US_APP_WHITE,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 60),
                child: TextField(
                  style: TextStyle(color: US_APP_WHITE, fontSize: 15),
                  obscureText: isHidenPassword,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: US_APP_WHITE)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: US_APP_WHITE),
                    ),
                    prefix: Icon(
                      Icons.lock,
                      size: 15,
                      color: US_APP_WHITE,
                    ),
                    suffix: InkWell(
                      onTap: _toggleButtonViewPassword,
                      child: Icon(
                        isHidenPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: US_APP_WHITE,
                        size: 20,
                      ),
                    ),
                    labelText: 'Mật Khẩu',
                    labelStyle: TextStyle(fontSize: 16, color: US_APP_WHITE),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 142,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Navigator_Screen()),
                        );
                      },
                      child: Text(
                        "Đăng ký",
                        style: TextStyle(color: US_APP_WHITE),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          side: BorderSide(color: US_APP_WHITE)),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 55,
                    width: 142,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Đăng nhập"),
                      style: ElevatedButton.styleFrom(
                          primary: US_APP_COLOR,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Text(
                  "Hoặc qua mạng xã hội",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 0, 0, 0),
                          onPrimary: Color.fromRGBO(0, 0, 0, 0)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.facebook,
                              color: Color.fromARGB(255, 38, 112, 223),
                              size: 50,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Facebook',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 0, 0, 0),
                          onPrimary: Color.fromRGBO(0, 0, 0, 0)),
                      child: Column(
                        children: [
                          Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                'assets/images/ic_google_app.png',
                                fit: BoxFit.contain,
                              )),
                          Container(
                            child: Text(
                              'Google',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ));
  }
}