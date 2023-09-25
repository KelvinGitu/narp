class HomePageTile {
  String message;
  String image;

  HomePageTile({
    required this.message,
    required this.image,
  });
}

List homeData = [
  HomePageTile(
    message: 'Get your deliveries anywhere in the country',
    image: 'images/deliveryAnywhere.png',
  ),
   HomePageTile(
    message: 'Affordable rates',
    image: 'images/affordable.jpg',
  ),
   HomePageTile(
    message: 'Fast delivery times',
    image: 'images/fastDelivery.jpg',
  ),
   HomePageTile(
    message: 'Become a driver ',
    image: 'images/driver.jpg',
  ),
];
