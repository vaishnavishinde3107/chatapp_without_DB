import 'package:chatapp/util/my_button.dart';
import 'package:chatapp/util/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _conpasscontroller = TextEditingController();
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

   void login() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 25),

          //welcome back message
          Text(
            "Welcome! let's make an account.",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
            ),

            const SizedBox(height: 25),
          //email
          MyTextfield(hintText: 'Email', obscureText: false, controller: _emailcontroller,),
          const SizedBox(height: 25),
          //pass
          MyTextfield(hintText: 'Password', obscureText: true, controller: _passcontroller,),
          const SizedBox(height: 25),
          //Confirm pass
          MyTextfield(hintText: 'Confirm password', obscureText: true, controller: _conpasscontroller,),
          //register button
          const SizedBox(height: 25),
          MyButton(text: 'Register', onTap: login,),
          const SizedBox(height: 25),
          //register
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already a member? ",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),),
              GestureDetector(
                onTap: onTap,
                child: Text("Login now!",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),),
              )
            ],
          )
          ],
        ),
      ),
    );
  }

  
}