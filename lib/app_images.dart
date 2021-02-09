import 'dart:math';

class AppImages {
  static List<String> images = [
    'assets/woman_balck.jpg',
    'assets/billgates.jpg',
    'assets/cognitive.jpg',
    'assets/elonmusk.jpg',
    'assets/meghanmarkle.jpg',
    'assets/reservedperson.jpg',
  ];

  static String getRandomImage() {
    // generates a new Random object
    final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
    return images[_random.nextInt(images.length)];
  }
}
