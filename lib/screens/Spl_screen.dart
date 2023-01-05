import 'package:flutter/material.dart';
import 'package:stppper_login/screens/nextpage.dart';

class Spl_screen extends StatefulWidget {
  const Spl_screen({Key? key}) : super(key: key);

  @override
  State<Spl_screen> createState() => _Spl_screenState();
}

class _Spl_screenState extends State<Spl_screen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
        return Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const nextpage(),
            ));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 100),
              Column(
                children: const [
                  Text.rich(
                    TextSpan(
                        text: "Flutter\n",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.blue,
                            fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                              text: "Devs",
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                ],
              )
            ],
          ),
           Spacer(),
          CircularProgressIndicator(),
           SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
