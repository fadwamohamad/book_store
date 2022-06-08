import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/myCart_model.dart';
import '../shared/component/constants.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myCartModel.length,
          itemBuilder: (BuildContext context, int index) {
        return buildMyCartItem(index);
      },

      ),
    );
  }
  Widget buildMyCartItem(int index){
    return Container(
      //padding: EdgeInsetsDirectional.only(bottom: 5),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(myCartModel[index].bookImage)),
          //SizedBox(width: 20,),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsetsDirectional.only(top: 25,start: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(myCartModel[index].bookName,style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFF707070)
                    ),),
                    SizedBox(height: 5,),
                    Text(myCartModel[index].authorName,style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFF707070)
                    ),),
                    RatingBar(
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        ratingWidget: RatingWidget(
                            full: const Icon(Icons.star, color: Color(0xFFFF2C94C)),
                            half: const Icon(
                              Icons.star,
                              color: Color(0xFFFF2C94C),
                            ),
                            empty: const Icon(
                              Icons.star_outline,
                              color: Color(0xFFFF2C94C),
                            )),
                        onRatingUpdate: (value) {
                          setState(() {
                            _ratingValue = value;
                          });
                        }),
                    SizedBox(height: 5,),
                    Container(
                        width: 200,
                        child: Text(myCartModel[index].bookDescription,style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFFF707070)
                        ),)),
                    Container(
                      height: 100,
                      width: 200,
                      child: Row(
                        children: [
                          Expanded(child: Card(
                            color: mainColor,
                            child: MaterialButton(
                              onPressed: (){
                                setState(() {
                                  myCartModel.removeAt(index);
                                });
                              },
                              child: Text('Remove',style: TextStyle(
                                  fontSize: 11
                              ),),),
                          )),
                          Expanded(child: Card(
                            child: MaterialButton(
                              onPressed: (){

                              },
                              child: Text('Add to wishlist',style: TextStyle(
                                  fontSize: 8
                              ),),),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
