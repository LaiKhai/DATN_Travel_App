import 'package:flutter/material.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';
import 'package:tourshop_app/ui/common/constant/dimen.dart';

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
    return Container(
      padding: EdgeInsets.all(40),
      height: getHeightSize(context),
      width: getWidthSize(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: getHeightSize(context) * 0.1),
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
            padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
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
                    isHidenPassword ? Icons.visibility : Icons.visibility_off,
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
                  onPressed: () {},
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
          )
        ],
      ),
    );
  }
}
