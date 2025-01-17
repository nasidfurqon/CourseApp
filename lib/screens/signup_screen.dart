import 'package:courseapp/screens/login_screen.dart';
import 'package:courseapp/widgets/customScaffold.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formSignKey = GlobalKey<FormState>();
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child: Column(
        children: [
          Expanded(flex: 1, child: SizedBox()),
          Expanded(flex:6 ,
              child:
              Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 15),
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                  topRight:Radius.circular(40)
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignKey,
                      child: Column(
                        children: [
                          Text('Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w900,
                            fontSize: 30
                          ),
                          ),
                          SizedBox(height: 30,),
                          TextFormField(
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return 'Please Enter Full Name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                                hintText: 'Input Full Name',
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
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Checkbox(value: agree ,
                                  onChanged: (bool? value){
                                    setState(() {
                                      agree = value!;
                                    });
                                  },),
                              Text('I agree to the processing of ',
                              style: TextStyle(
                                color: Colors.black45
                              ),),
                              Text('Personal data',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                          SizedBox(height: 25,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(onPressed: (){

                            }, style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue
                            )
                                ,child: Text('Sign Up',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white
                            ),)),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(child: Divider(
                                color: Colors.grey,
                                thickness: 0.7,
                              )),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0,),
                              child: Text('Sign Up With',
                              style: TextStyle(color: Colors.grey),),
                              ),
                              Expanded(child: Divider(color: Colors.grey, thickness: 0.7,))
                            ],
                          ),
                          SizedBox(height:  20),
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
                              Text('Already have an account? ',
                                style: TextStyle(
                                    color: Colors.black45

                                ),),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (t) => LoginScreen()));
                                },
                                child: Text('Sign In',
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
              )
          )
        ],
      ),
    );
  }
}
