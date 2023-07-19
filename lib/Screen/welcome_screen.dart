import 'package:flutter/material.dart';
import 'package:phoneverify/Screen/registation_screen.dart';
import 'package:phoneverify/Widgets/custom_button.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25,horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/image1.png",
                  height: 300,
                ),
                SizedBox(height: 20,),
                Text("Let's get started",
                  style:TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15,),
                Text("Never a beter time then now to start",
                  style:TextStyle(
                      fontSize: 14,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child:CustomButton(
                    onPresed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Registation(),));
                    },
                    text: "Get Started",
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

