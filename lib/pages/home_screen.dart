// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:full_portfolio_flutter/custom_widgets/custom_contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://picsum.photos/seed/picsum/200/300',
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
            ),
            Text(
              'Shafin Al Kayed',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              height: 35,
              width: 150,
              child: CustomContactButton( 
                buttonText: 'CONTACT US', 
                buttonIcon: Icons.send_sharp,
                onPressed: (){  },
              )
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Body()
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "I\'m Shafin, a great eater. \nMostly prefer eating meats \n(Chicken, mutton or Beef)\n", 
                              style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                          SizedBox(
                            height: 35,
                            width: 160,
                            child: CustomContactButton(
                              buttonText: "INBOX ME", 
                              buttonIcon: Icons.mail_outline, 
                              onPressed: (){  }
                            ),
                          )
                        ],
                      )
                  ],
                )
              ],
            )),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                      Opacity(
                        opacity: 0.6,
                        child: Image.asset(
                          'images/dj_shafin.jpg', 
                          fit: BoxFit.fill,
                          height: 500,
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

