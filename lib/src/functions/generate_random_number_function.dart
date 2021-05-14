// ignore: top_level_function_literal_block

import 'dart:math';

final random = new Random();

generateRandomNumberFunction(intervalToRandom) {
  return random.nextInt(intervalToRandom);
}
