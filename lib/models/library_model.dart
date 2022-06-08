class LibraryGeneralModel {
  final String imageUrl;
  final String imageCaption;

  LibraryGeneralModel(
      {required this.imageUrl, required this.imageCaption});
}

List<LibraryGeneralModel> generalModel = [
  LibraryGeneralModel(
    imageUrl: "assets/images/Biography.png",
    imageCaption: "Biography",
  ),
  LibraryGeneralModel(
    imageUrl: "assets/images/Business.png",
    imageCaption: "Business",
  ),
  LibraryGeneralModel(
    imageUrl: "assets/images/Children.png",
    imageCaption: "Children",
  ),
  LibraryGeneralModel(
    imageUrl: "assets/images/Cookery.png",
    imageCaption: "Cookery",
  ),
  LibraryGeneralModel(
    imageUrl: "assets/images/Fiction.png",
    imageCaption: "Fiction",
  ),
  LibraryGeneralModel(
    imageUrl: "assets/images/Graphic Novels.png",
    imageCaption: "Graphic Novels",
  ),
];
