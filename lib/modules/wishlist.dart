import 'package:book_store/models/store_model.dart';
import 'package:book_store/models/wishlist_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../shared/component/constants.dart';
class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  double? _ratingValue;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: wishlistModel.length,
      itemBuilder: (BuildContext context, int index) {
      return buildWishlistItem(index);
    },

    );

  }
  Widget buildWishlistItem(int index){
    return Container(
      //padding: EdgeInsetsDirectional.only(bottom: 5),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(wishlistModel[index].bookImage)),
          //SizedBox(width: 20,),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsetsDirectional.only(top: 25,start: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(wishlistModel[index].bookName,style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFF707070)
                    ),),
                    SizedBox(height: 5,),
                    Text(wishlistModel[index].authorName,style: TextStyle(
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
                        child: Text(wishlistModel[index].bookDescription,style: TextStyle(
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
                              onPressed: (){},
                              child: Text('Add to cart',style: TextStyle(
                                  fontSize: 11
                              ),),),
                          )),
                          Expanded(child: Card(
                            child: MaterialButton(
                              onPressed: (){
                                setState(() {
                                  wishlistModel.removeAt(index);
                                });
                              },
                              child: Text('Remove From wishlist',style: TextStyle(
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

