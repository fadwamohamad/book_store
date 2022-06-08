import 'package:book_store/layout/cubit/cubit.dart';
import 'package:book_store/layout/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/component/constants.dart';

class HomeLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeLayoutCubit,HomeLayoutStates>(
      listener: (context, state) {},
       builder: (context, state) {
         var cubit = HomeLayoutCubit.get(context);
      return Scaffold(
        backgroundColor: Color(0xFFFE5E5E5),

        appBar: AppBar(
            automaticallyImplyLeading: false,
          backgroundColor: mainColor,
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,),
                      suffixIcon: IconButton(
                        icon: SvgPicture.asset('assets/icons/Group 100.svg'),
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Search Books, Authors ',
                      border: InputBorder.none),
                ),
              ),
            )),
        body: cubit.screens[cubit.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFFF707070),
          selectedItemColor: mainColor,
          currentIndex: cubit.currentIndex,
          onTap: (index) {
            cubit.changeBottomNav(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/search (1).svg',
                  color: cubit.currentIndex == 0 ? mainColor : Colors.grey),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/book.svg',
                  color: cubit.currentIndex == 1 ? mainColor : Colors.grey),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/heart (2).svg',
                  color: cubit.currentIndex == 2 ? mainColor : Colors.grey),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Group 102.svg',
                  color: cubit.currentIndex == 3 ? mainColor : Colors.grey),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/user (2).svg',
                  color: cubit.currentIndex == 4 ? mainColor : Colors.grey),
              label: 'Profile',
            ),
          ],
        ),
      );});
  }
}
