import 'package:courseapp/widgets/customScaffold.dart';
import 'package:courseapp/widgets/welcomeButton.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child:
      Column(
        children: [
          Padding(padding : EdgeInsets.symmetric(vertical: 40) ,),
          Flexible(
          flex: 8,child:
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0
            ),
            child:
              Center(
                child:
                  Column(
                    children: [
                      Flexible(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child:
                          Padding(
                            padding: EdgeInsets.all(14),
                          child: Image.asset('assets/image/Icon.png',
                            height: 200,)
                            ,) ,
                        ),
                      ),
                      SizedBox(height: 40),
                      RichText(
                          textAlign: TextAlign.center,
                          text:const TextSpan(
                              children:[
                                TextSpan(
                                    text: 'Nices Course\n',
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                TextSpan(
                                    text: '\nDiscover all you need to know about IT here',
                                    style: TextStyle(
                                        fontSize: 20
                                    )
                                )]
                          )),
                    ],
                  ),
              )
          )),
          Flexible( flex: 1,child:
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(child:
                      SignButton(textButton:  'Sign In')
                    ),
                    Expanded(child:
                      SignButton(textButton: 'Sign Up')
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
