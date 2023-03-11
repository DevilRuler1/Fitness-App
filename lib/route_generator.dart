import 'package:flare_ui/ui/home/profile.dart';
import 'package:flutter/material.dart';
import 'ui/chat.dart';
import 'ui/home/home.dart';
import 'ui/inbox.dart';
import 'ui/login.dart';
import 'ui/post_page.dart';
import 'ui/signup/signup_email.dart';
import 'ui/signup/signup_password.dart';
import 'ui/All_Services.dart';
import 'ui/All_Trainers.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //get argument when passing setting via pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Login());

      case '/signup_email':
        return MaterialPageRoute(builder: (_) => SignupEmail());

      case '/signup_password':
        return MaterialPageRoute(builder: (_) => SignupPassword());

      case '/home':
        return MaterialPageRoute(builder: (_) => Home());

      case '/post_page':
        return MaterialPageRoute(builder: (_) => PostPage());

      case '/inbox':
        return MaterialPageRoute(builder: (_) => Inbox());

      case '/chat':
        return MaterialPageRoute(builder: (_) => Chat());

      case '/All_Services':
        return MaterialPageRoute(builder:  (_) => ServicePage());

      case '/All_Trainers':
        return MaterialPageRoute(builder:  (_) => TrainersPage());

      case '/profile':
        return MaterialPageRoute(builder:  (_) => Profile());

      //case '/welcome':
      // //here we can do some checks on passed args
      // //ex:
      // //validation of correct data type
      // if (args is String) {
      //   return MaterialPageRoute(
      //     builder: (_) => FripeHome(
      //       data: args,
      //     ),
      //   );
      // }
      // //if args is not of the correct type we return error
      // //or throw exception in dev mod
      // return _errorRoute();
      //return MaterialPageRoute(builder: (_) => OnBoarding());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
