import 'package:flutter/material.dart';
import 'package:insta/style/constants.dart';
import 'package:insta/size_config.dart';
import 'package:insta/widgets/common_button_widget.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth / 12),
            child: Column(
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.only(top: 60.0),
                //   child: Center(
                //     child: Container(
                //         width: 200,
                //         height: 150,
                //         /*decoration: BoxDecoration(
                //             color: Colors.red,
                //             borderRadius: BorderRadius.circular(50.0)),*/
                //         child: Image.asset('asset/images/flutter-logo.png')),
                //   ),
                // ),
                SizedBox(
                  height: 30,
                ),
                inputTextField('Phone number, email or username', false),
                inputTextField('Password', true),

                loginButton(),
                loginDetails(context, 'Forgot your login details ? ',
                    'Get help logging in'),
                horizontalDevider(),
                loginWithFacebookButton(),
                bottomHorizontalDevider()

                // SizedBox(
                //   height: 130,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget horizontalDevider() => Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(children: <Widget>[
          Expanded(child: Divider()),
          Text("OR",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: kAccentColor)),
          Expanded(child: Divider()),
        ]),
      );
  Widget bottomHorizontalDevider() => Align(
        alignment: FractionalOffset.bottomCenter,
        child: Column(children: <Widget>[
          Container(
              child: Divider(
            color: kAccentColor,
          )),
          loginDetails(context, "Don't have an account?", " Sign up")
        ]),
      );
  Widget inputTextField(String hintText, bool obscureText) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
          obscureText: obscureText,
        ),
      );
}

Widget loginDetails(context, title1, title2) => RichText(
      text: TextSpan(
        text: ' ',
        children: <TextSpan>[
          TextSpan(
              text: title1,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: kAccentColor)),
          TextSpan(
              text: title2,
              style: TextStyle(color: Theme.of(context).accentColor)),
        ],
      ),
    );

Widget loginButton() => CommonButtonWidget(
      buttonText: 'Log in',
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight / 17,
    );

Widget loginWithFacebookButton() => CommonButtonWidget(
      buttonText: ' Continue with facebook',
      icon: Icon(Icons.facebook, color: kContentColorDarkTheme),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight / 17,
    );
