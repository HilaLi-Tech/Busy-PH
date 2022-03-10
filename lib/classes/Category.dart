//This dart file contains custom classes for the category list in the home page.

class Category {
  String image = "";
  String title = "";
  String description = "";

  Category({required this.title, required this.description, required this.image}){
    this.image = "assets/images/"+ image;
  }
}