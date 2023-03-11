import 'package:flare_ui/components/gradient_raised_button.dart';
import 'package:flare_ui/components/underline_text_field.dart';
import 'package:flutter/material.dart';

class SignupEmail extends StatefulWidget {
  @override
  _SignupEmailState createState() => _SignupEmailState();
}

class _SignupEmailState extends State<SignupEmail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'What\'s your email\naddress?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        UnderlineTextField(
                          hint: 'bhr.tawfik@gmail.com',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GradientRaisedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/signup_password');
                          },
                          title: 'Continue',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
