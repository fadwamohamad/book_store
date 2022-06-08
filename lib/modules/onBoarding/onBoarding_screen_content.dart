class OnboardingContents {
  final String image;
  final String desc;

  OnboardingContents(
      {required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    image: "assets/images/Group 113.png",
    desc: "Share Your Favourite Books With Your Family And Friends",
  ),
  OnboardingContents(
    image: "assets/images/undraw_book_lover_mkck.png",
    desc: "Discovery 20 Million Books Shelved Online",
  ),
  OnboardingContents(
    image: "assets/images/Group 114.png",
    desc: "Buy And Sell Books With Us",
  ),
];
