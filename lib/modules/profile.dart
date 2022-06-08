import 'package:book_store/modules/mycart.dart';
import 'package:book_store/shared/component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/component/components.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsetsDirectional.only(top: 20,start: 10,end: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Column(
                children: [
                  const Text(
                    "Fadwa Elmasri"
                    ,style: TextStyle(
                      fontSize: 20.0,
                      color:Colors.blueGrey,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("21",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Books",
                                  style: TextStyle(
                                    color: Color(0xFFF212121),
                                    fontSize: 10.0,
                                  ),)
                              ],
                            ),
                          ),
                          Expanded(
                            child:
                            Column(
                              children: [
                                Text("50 K",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Followers",
                                  style: TextStyle(
                                    color: Color(0xFFF212121),
                                    fontSize: 10.0,
                                  ),),
                              ],
                            ),
                          ),
                          Expanded(
                            child:
                            Column(
                              children: [
                                Text("30",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Following",
                                  style: TextStyle(
                                    color: Color(0xFFF212121),
                                    fontSize: 10.0,
                                  ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: mainColor,
                    radius: 50.0,
                    child: Image.asset('assets/images/iStock-10131071761-1.png'),
                  ),
                  SizedBox(height: 10,),
                  Card(
                      elevation: 2.0,
                      color: mainColor,
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Text("Edit Profile",style: TextStyle(
                              fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),))
                  ),
                ],
              ),
            ],),
            Container(
              padding: EdgeInsetsDirectional.only(start: 10,end: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Accounts'),
                    SizedBox(height: 7,),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          navigateTo(context, MyCartScreen());
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/buy.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'My Cart ',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          //navigateTo(context, ProfilePage());
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/credit-card.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Purchases',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          //navigateTo(context, ProfilePage());
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/user (2).svg',color: mainColor,),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Account',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 21,),
                    Text('Settings'),
                    SizedBox(height: 7,),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          //navigateTo(context, ProfilePage());
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/auricular-phone-symbol-in-a-circle.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Night Mode',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/alarm.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Notification',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          //navigateTo(context, ProfilePage());
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/global.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Language',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {
                          //navigateTo(context, ProfilePage());
                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/information.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Help',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 5,
                      ),
                      child: InkWell(
                        onTap: () {

                        },
                        child: Container(
                          padding: EdgeInsetsDirectional.only(
                              start: 10, end: 16, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFEDEDF7),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/arrow.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Sign Out',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ))





          ],
        ),
      ),
    );

  }

}
