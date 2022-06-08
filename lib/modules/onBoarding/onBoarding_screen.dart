import 'package:book_store/modules/login/login.dart';
import 'package:book_store/modules/onBoarding/onBoarding_screen_content.dart';
import 'package:book_store/shared/component/components.dart';
import 'package:flutter/material.dart';

class OnBoardingscreen extends StatefulWidget {
  const OnBoardingscreen({Key? key}) : super(key: key);

  @override
  _OnBoardingscreenState createState() => _OnBoardingscreenState();
}

class _OnBoardingscreenState extends State<OnBoardingscreen> {
  final _controller = PageController();
  int _currentPage = 0;
  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
          border: Border.all(color: Color(0xFFFF4D03F)),
        color:_currentPage == index?const Color(0xFFFF4D03F): Colors.white,
      ),

      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: 10,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView.builder(
            controller:_controller,
            onPageChanged: (value) => setState(() => _currentPage = value),
            itemCount: contents.length,
            itemBuilder: (context, index) => Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                    child: TextButton(onPressed: (){
                      navigateTo(context, Login());
                    }, child: Text('Skip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFF969696)
                      ),))),
                SizedBox(height: 73,),
                Image.asset(
                  contents[index].image,
                ),
                SizedBox(height: 47.9,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    contents[index].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                ),
                SizedBox(height: 34,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                        (int index) => InkWell(
                        onTap: (){
                          _controller.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                        },
                        child: _buildDots(index: index)),
                  ),
                ),
                SizedBox(height: 25,),
                _currentPage + 1 == contents.length
                    ? Container(
                  height: 45,
                  width: 184,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF4D03F),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      navigateTo(context, Login());
                    },
                    child: Text("Get Started",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),

                  ),
                )
                    :Container()

              ],
            )
          )),
    );
  }
}
