import 'package:book_store/models/store_model.dart';

class WishlistModel{
  final String bookImage;
  final String bookName;
  final String authorName;
  final String bookDescription;
  //final int bookRate;

  WishlistModel(
      {
        required this.bookImage,
        required this.bookName,
        required this.authorName,
        required this.bookDescription});
}

List<WishlistModel> wishlistModel = [
  WishlistModel(
      bookImage: "assets/images/1.png",
      bookName: "The Heart of Hell",
      authorName: "Mitch Weiss",
      bookDescription: "The untold story of courage and sacrifice in the shadow of Iwo Jima.",

  ),
];