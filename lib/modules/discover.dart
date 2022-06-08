import 'package:book_store/models/slider_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/component/constants.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final List<String> imgList = [
    'assets/images/Biography.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png'
  ];

  @override
  Widget build(BuildContext context) {
    int _current = 0;
    return Column(
      children: [
        Expanded(
            child: Container(
          width: double.infinity,
          color: mainColor,
          padding: EdgeInsetsDirectional.only(top: 20,start: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Our Top Picks',style: TextStyle(
                  fontSize:20,
                  color: Colors.white
              )),
              SizedBox(height: 20,),
              CarouselSlider.builder(
                  itemCount: sliderModel.length,
                  itemBuilder: (context, itemIndex, realIndex)
                  {
                    return Container(
                        child: Column(
                          children: [
                            Image.asset(sliderModel[itemIndex].imageUrl),
                            Text(sliderModel[itemIndex].imageCaption,style: TextStyle(
                                fontSize:14,
                                color: Colors.white
                            )),
                          ],
                        ));
                  },
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }
                  ))
            ],
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsetsDirectional.only(top: 20,start: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     Column(
              //       children: [
              //         CircleAvatar(
              //           backgroundColor: Colors.black,
              //           radius: 30.0,
              //           child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,)),
              //         ),
              //         Text('Add',
              //           style: TextStyle(
              //             fontSize: 10
              //           ),
              //         )
              //       ],
              //     ),
              //     SizedBox(width: 10,),
              //     Container(
              //       height: 80,
              //       width: 250,
              //       child: ListView.builder(
              //        shrinkWrap: true,
              //       scrollDirection: Axis.horizontal,
              //       itemCount: 6,
              //       itemBuilder: (context, index)=>
              //        Padding(
              //          padding: EdgeInsetsDirectional.only(end: 10),
              //          child: Column(
              //            children: [
              //              CircleAvatar(
              //                radius: 30.0,
              //                child: Image.asset('assets/images/iStock-10131071761-1.png'),
              //              ),
              //              Text('dd',style: TextStyle(
              //                  fontSize: 10
              //              ),)
              //            ],
              //          ),
              //        )),
              //     ),
              //
              //   ],
              // ),
              // SizedBox(height: 10,),
              Text('Trending Books'),
              SizedBox(height: 10,),
              Container(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) =>
                        Container(
                          padding: EdgeInsetsDirectional.only(end: 10),
                            child: Image.asset('assets/images/full-share-1 copy 12.png'))),
              )
            ],
          ),

        ))
      ],
    );
  }
  Widget buildCarouselSlider(int index){
    return Container(
        child: Column(
          children: [
            Image.asset(imgList[index]),
            Text('Fatherhood',style: TextStyle(
                fontSize:14,
                color: Colors.white
            )),
          ],
        ));
  }
}
