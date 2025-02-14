class Item {
  final String name;
  final String count;
  // ignore: prefer_typing_uninitialized_variables
  final imagePath;
  final int costPrice;
  final int sellingPrice;

Item ({
  required this.name,
  required this.count,
  required this.imagePath,
  required this.costPrice,
  required this.sellingPrice
});
}