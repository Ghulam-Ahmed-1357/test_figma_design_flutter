import 'package:first_figma_design/app_navigation/app_navigation.dart';
import 'package:first_figma_design/custom_widgets/custom_button.dart';
import 'package:first_figma_design/route_names/route_names.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset('assets/images/Group.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                'Let`s meeting new \npeople around you',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              // child: ElevatedButton.icon(onPressed: (){}, label: Text('Login with Phone',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),), icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.phone_in_talk,color: Colors.blue,)),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size.fromHeight(70)),),
              child: CustomButton(
                text: "Login with Phone",
                iconSize: 20,
                avatarRadius: 15,
                textColor: Colors.white,
                icon: Icon(Icons.phone_in_talk, color: Colors.blue),
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              // child: ElevatedButton.icon(onPressed: (){}, label: Text('Login with Phone',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),), icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.phone_in_talk,color: Colors.blue,)),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size.fromHeight(70)),),
              child: CustomButton(
                text: "Login with Google",
                imageUrl:
                    "https://th.bing.com/th/id/OIP.EhTMbGiYfYzQnWLgjZaoJAHaHa?w=198&h=198&c=7&r=0&o=5&pid=1.7",
                imageHeight: 25,
                imageWidth: 25,
                avatarRadius: 15,
                textColor: Colors.black,
                color: Colors.grey.shade200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: InkWell(
                onTap: () {
                  AppNavigation.pushNamed(context, RouteNames.home);
                },
                child: Text.rich(
                  TextSpan(
                    text: 'Don`t have an account? ',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
