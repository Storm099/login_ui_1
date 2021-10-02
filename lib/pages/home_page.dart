import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.green.shade900,
              Colors.green.shade800,
              Colors.green.shade700,
              Colors.green.shade600,
            ]
          )
        ),

        child: Column(

          children: [

            const SizedBox(height: 80,),
            // #welcome
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Login",style: TextStyle(color: Colors.white,fontSize: 40,),),
                  Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 20,),),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                    color: Colors.white
                ),
                child:  Column(
                  children: [
                    const SizedBox(height: 80,),
                    //#email #password
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade600,
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                )
                              ]
                            ),
                            child: const TextField(
                              style: TextStyle(color: Colors.green),
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 12),
                              ),

                            ),
                          ),
                          Container(
                            decoration:  BoxDecoration(
                              //borderRadius: BorderRadius.circular(1),
                              color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade600,
                                      blurRadius: 20,
                                      offset: const Offset(0, 10),
                                  )
                                ]
                            ),
                            child: const TextField(
                              style: TextStyle(color: Colors.green),
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 12),
                              ),
                                obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    //#login button
                    Container(
                      height: 45,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 80),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Colors.green
                      ),
                      child: const Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),)),
                    ),
                    const SizedBox(height: 30,),
                    const Text("Login with SNS",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),

                    const SizedBox(height: 40,),
                    //#facebook #github
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(

                        children: [

                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                              ),
                              child: const Center(child: Text("Facebook",style: TextStyle(color: Colors.white),)),
                            ),
                          ),
                          const SizedBox(width: 30,),
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black
                              ),
                              child: const Center(child: Text("Github",style: TextStyle(color: Colors.white),)),
                            ),
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            )


          ],

        ),

      ),

    );
  }
}
