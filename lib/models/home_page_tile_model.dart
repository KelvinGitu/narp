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
    image: 'assets/images/deliveryAnywhere.png',
  ),
   HomePageTile(
    message: 'Affordable rates',
    image: 'assets/images/affordable.jpg',
  ),
   HomePageTile(
    message: 'Fast delivery times', 
    image: 'assets/images/fastDelivery.jpg', 
  ),
   HomePageTile(
    message: 'Become a driver ',
    image: 'assets/images/driver.jpg',
  ),
];