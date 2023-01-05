import 'package:flutter/material.dart';

class nextpage extends StatefulWidget {
  const nextpage({Key? key}) : super(key: key);

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {

  TextEditingController signup_NameController = TextEditingController();
  TextEditingController signup_EmailController = TextEditingController();
  TextEditingController signup_PasswordController = TextEditingController();
  TextEditingController signup_Con_PasswordController = TextEditingController();
  TextEditingController login_UserNameController = TextEditingController();
  TextEditingController login_PasswordController = TextEditingController();

  int number = 0;
  GlobalKey<FormState> signup = GlobalKey<FormState>();
  GlobalKey<FormState> login = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper App",style: TextStyle(color: Colors.white,fontSize: 25),),
        backgroundColor: Colors.teal,
      ),
      body: Theme(
      data: ThemeData(
      colorScheme: const ColorScheme.light(primary: Colors.teal),),
        child: Stepper(
            steps: [
              Step(
                isActive: true,
                title: Text("SignUp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                content: Form(
                  key: signup,
                  child: Column(
                    children: [
                      TextFormField(
                        controller:signup_NameController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Username...";
                          }
                          return null;
                        },
                        decoration:  InputDecoration(
                            hintText: "Full Name",
                            prefixIcon: Icon(Icons.person_outline)),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: signup_EmailController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Email...";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration:InputDecoration(
                            hintText: "Email id",
                            prefixIcon: Icon(Icons.email_outlined)),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: signup_PasswordController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Password...";
                          }
                          return null;
                        },
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock)),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: signup_Con_PasswordController,
                        validator: (val) {
                          if (val!.isEmpty ||
                              val != signup_PasswordController.text) {
                            return "Please Enter Correct Password...";
                          }
                          return null;
                        },
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock)),
                      )
                    ],
                  ),
                ),
              ),
              Step(
                isActive: true,
                title: const Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                content: Form(
                  key: login,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: login_UserNameController,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val!.isEmpty ||
                              val != signup_NameController.text) {
                            return "Please Enter Corect Username...";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: "User Name",
                            prefixIcon: Icon(Icons.person)),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: login_PasswordController,
                        validator: (val) {
                          if (val!.isEmpty ||
                              val != signup_PasswordController.text) {
                            return "Please Enter Correct Password...";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock)),
                      ),
                    ],
                  ),
                ),
              ), Step(
                title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                content: Text("Home page"),
              )
            ],
            onStepContinue: () {},
            onStepCancel: () {},
            currentStep: number,
          ),
      ),
    );
  }
}
