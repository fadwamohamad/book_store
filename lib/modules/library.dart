import 'package:book_store/models/library_model.dart';
import 'package:book_store/shared/component/constants.dart';
import 'package:flutter/material.dart';
class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 62,
                child: TabBar(
                  controller: tabController,
                  labelColor: mainColor,
                  isScrollable: true,
                  indicatorColor: mainColor,
                  unselectedLabelColor: Color(0xFFF707070),
                  labelStyle: TextStyle(
                    fontSize: 18
                  ),
                  tabs: [
                    Tab(text: 'General'),
                    Tab(text: 'New'),
                    Tab(text: 'Most Viewed'),
                  ],
                ),

              ),
              Container(
                height: 730,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20),
                      child: Container(
                        height: 700,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 10),
                          itemBuilder: (context, index)=> InkWell(
                              onTap: (){
                              },
                              child: Container(
                                padding: EdgeInsetsDirectional.only(top: 15),
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Text(generalModel[index].imageCaption,style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,fontWeight: FontWeight.bold
                                    ),),
                                    Image.asset(generalModel[index].imageUrl,height: 119,width: 78,)
                                  ],
                                ),
                              )),
                          itemCount: generalModel.length,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20),
                      child: Container(
                        height: 700,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 10),
                          itemBuilder: (context, index)=> InkWell(
                              onTap: (){
                              },
                              child: Container(
                                padding: EdgeInsetsDirectional.only(top: 15),
                                decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Text(generalModel[index].imageCaption,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,fontWeight: FontWeight.bold
                                    ),),
                                    Image.asset(generalModel[index].imageUrl,height: 119,width: 78,)
                                  ],
                                ),
                              )),
                          itemCount: generalModel.length,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20),
                      child: Container(
                        height: 700,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 10),
                          itemBuilder: (context, index)=> InkWell(
                              onTap: (){
                              },
                              child: Container(
                                padding: EdgeInsetsDirectional.only(top: 15),
                                decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Text(generalModel[index].imageCaption,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,fontWeight: FontWeight.bold
                                    ),),
                                    Image.asset(generalModel[index].imageUrl,height: 119,width: 78,)
                                  ],
                                ),
                              )),
                          itemCount: generalModel.length,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

