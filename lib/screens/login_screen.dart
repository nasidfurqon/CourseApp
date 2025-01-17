import 'package:courseapp/screens/forget_password.dart';
import 'package:courseapp/screens/signup_screen.dart';
import 'package:courseapp/widgets/customScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formSignKey = GlobalKey<FormState>();
  bool remember_password = false  ;
  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child: Column(
        children: [
          Expanded(
              flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 6,
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key :_formSignKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Sign In',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue
                          ),
                        ),
                        SizedBox(height: 30,),
                        TextFormField(
                          validator: (value) {
                            if(value == null || value.isEmpty){
                                return 'Please Enter Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Input Email',
                            hintStyle: TextStyle(
                              color: Colors.black26
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightBlueAccent
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue
                              ),
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Enter Password';
                              }
                              return null;
                            },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Input Password',
                            hintStyle: TextStyle(
                              color: Colors.black26
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightBlueAccent
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue
                              ),
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(value: remember_password,
                                    onChanged: (bool?value){
                                      setState(() {
                                        remember_password =  value!;
                                      });
                                    }),
                                Text('Remember me')
                              ],
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: ((t) => ForgetPassword()))
                                );
                              },
                              child: Text('Forget Password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                              ),),
                            ),
                          ],
                        ),
                        SizedBox(height: 25,),
                        SizedBox( width: double.infinity,
                          child:ElevatedButton(onPressed: () {
                  
                          },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue
                            )
                              , child: Text('Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17
                                ) ,))
                          ,),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.grey,
                            )),
                            Padding(padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                            child: Text('Sign In With',
                            style: TextStyle(
                              color: Colors.grey
                            ),) ,),
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.grey,
                            ))
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Logo(Logos.facebook_f),
                            Logo(Logos.google),
                            Logo(Logos.twitter)
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text('Don\'t have an account? ',
                              style: TextStyle(
                                color: Colors.black45

                              ),),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (t) => SignupScreen()));
                                },
                                child: Text('Sign Up',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                                ),),
                              )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
          )
        ],
      )
    );
  }
}


