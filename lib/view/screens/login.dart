import 'package:ecomerce/view/screens/home.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final formKey = GlobalKey<FormState>();
  bool hidePass = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 60),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (!value!.contains('@') || !value.contains('.')) {
                            return "Please enter valid email";
                          }
                          if (value.isEmpty || value == null) {
                            return "This field is required";
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Enter Your email",
                            labelText: "Email"),
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passController,
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return "This field is requird";
                          }
                        },
                        obscureText: hidePass,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hidePass = !hidePass;
                                  });
                                },
                                icon: hidePass
                                    ? Icon(Icons.remove_red_eye)
                                    : Icon(Icons.remove_red_eye_outlined)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Enter Your Password",
                            labelText: "Password"),
                        textInputAction: TextInputAction.done,
                      ),
                    ],
                  )),
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // print("Validate");
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomeScreen(
                            email: emailController.text.toLowerCase().trim())));
                  }
                },
                child: Text('Login'))
          ],
        ),
      )),
    );
  }
}
