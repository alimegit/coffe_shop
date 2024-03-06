import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/hello_screen.dart';


class AppRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        {
          return navigate(const HelloScreen());

        }

      default:
        {
          return navigate(
            Scaffold(
              body: Center(
                child: Text(
                  "Mavjud Emas",
                  style: TextStyle(fontSize: 30.sp),
                ),
              ),
            ),
          );
        }
    }
  }

  static navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

class RouteNames {
  static const String helloScreen = "/";
}