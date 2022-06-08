// class StoreModel{
//    String? bookImage;
//    String? bookName;
//    String? authorName;
//    String? bookDescription;
//   //final int bookRate;
//
//   StoreModel(Map<String, dynamic> map){
//     bookImage = map['bookImage'];
//     bookName = map['bookName'];
//     authorName = map['authorName'];
//     bookDescription = map['bookDescription'];
//   }
// }
class StoreModel {
  String? id;
  final String bookImage;
  final String bookName;
  final String authorName;
  final String bookDescription;
  bool? isWishlist;

  StoreModel(
      { this.id,
        required this.bookImage,
        required this.bookName,
        required this.authorName,
        required this.bookDescription,
        this.isWishlist
      });

  // StoreModel.fromId(this.id,this.bookImage, this.bookName, this.authorName, this.bookDescription) {
  //   this.id;
  //   this.bookImage;
  //   this.bookName;
  //   this.authorName;
  //   this.bookDescription;
  //
  // }
}


List<StoreModel> storeModel = [
  StoreModel(
    bookImage: "assets/images/1.png",
    bookName: "The Heart of Hell",
    authorName: "Mitch Weiss",
    bookDescription: "The untold story of courage and sacrifice in the shadow of Iwo Jima.",
    isWishlist: true
  ),
  StoreModel(
    bookImage: "assets/images/2.png",
    bookName: "Adrennes 1944",
    authorName: "Antony Beevor",
    bookDescription: "#1 international bestseller and award winning history book.",
    isWishlist: true
  ),
  StoreModel(
    bookImage: "assets/images/3.png",
    bookName: "War on the Gothic Line",
    authorName: "Christian Jennings",
    bookDescription: "Through the eyes of thirteen men and women from seven different nations",
    isWishlist: false
  ),

];
