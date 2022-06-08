class MyCartModel{
  final String bookImage;
  final String bookName;
  final String authorName;
  final String bookDescription;
  //final int bookRate;

  MyCartModel(
      {
        required this.bookImage,
        required this.bookName,
        required this.authorName,
        required this.bookDescription});
}

List<MyCartModel> myCartModel = [];