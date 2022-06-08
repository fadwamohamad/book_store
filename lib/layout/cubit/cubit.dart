import 'package:book_store/layout/cubit/states.dart';
import 'package:book_store/models/slider_model.dart';
import 'package:book_store/models/store_model.dart';
import 'package:book_store/models/wishlist_model.dart';
import 'package:book_store/modules/discover.dart';
import 'package:book_store/modules/library.dart';
import 'package:book_store/modules/profile.dart';
import 'package:book_store/modules/store.dart';
import 'package:book_store/modules/wishlist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInitialState());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);

  // SocialUserModel model;
  //
  // void getUserData() {
  //   emit(SocialGetUserLoadingState());
  //
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(uId)
  //       .get()
  //       .then((value) => {
  //     print(value.data()),
  //     model = SocialUserModel.fromJson(value.data()),
  //     emit(SocialGetUserSuccessState()),
  //   })
  //       .catchError((error) {
  //     print(error.toString());
  //     emit(SocialGetUserErrorState(error.toString()));
  //   });
  // }

  int currentIndex = 0;

  List<Widget> screens = [
    DiscoverScreen(),
    LibraryScreen(),
    WishListScreen(),
    StoreScreen(),
    ProfileScreen()
  ];


  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(HomeLayoutChangeBottomNavState());
  }
}