// As this is going to be a catalog app, creating a model here that will handle the appropriate information for each product in the catalog.

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.image,
  });
}

//creating a class that will handle products array for now that will be used to show the information on the page
class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone 13",
      description: "Apple iPhone 12th generation",
      price: 1000,
      color: "33505a",
      image:
          "https://www.imagineonline.store/cdn/shop/files/iPhone_13_Starlight_PDP_Image_Position-1A__GBEN.jpg?v=1692412588",
    ),
  ];
}
