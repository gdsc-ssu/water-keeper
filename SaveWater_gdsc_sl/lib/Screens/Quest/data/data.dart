import 'package:flutter/material.dart';
import 'package:savewater_gdsc_sl/constants.dart';

class QuestData {
  int id;
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;
  String tagLine;

  QuestData(
      {required this.description,
        required this.id,
        required this.image,
        required this.name,
        required this.price,
        required this.tagLine,
        required this.backgroundColor});
}

List<QuestData> questsData = [
  QuestData(
    id: 1,
    description:
        "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Detegrent",
    image: "assets/images/image_1.png",
    price: "250ml",
    tagLine: "Appropriate amount of detergent used",
    backgroundColor: kPrimaryLightColor,
  ),
  QuestData(
      id: 2,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Detegrent",
      image: "assets/images/image_1.png",
      price: "250ml",
      tagLine: "Use of environmental labeling detergent",
      backgroundColor: kPrimaryLightColor,
  ),
  QuestData(
      id: 3,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Detegrent",
      image: "assets/images/image_1.png",
      price: "250ml",
      tagLine: "Appropriate amount of bleach used",
      backgroundColor: kPrimaryLightColor,
  ),
  QuestData(
      id: 4,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Detegrent",
      image: "assets/images/image_1.png",
      price: "250ml",
      tagLine: "Appropriate amount of shampoo used",
      backgroundColor: kPrimaryLightColor),
  QuestData(
    id: 5,
    description:
    "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Water Conservation",
    image: "assets/images/image_1.png",
    price: "250ml",
    tagLine: "Use the bottle for dish-washing",
    backgroundColor: kPrimaryLightColor,
  ),
  QuestData(
    id: 6,
    description:
    "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Water Conservation",
    image: "assets/images/image_1.png",
    price: "250ml",
    tagLine: "Don't turn on the water when you wash your face",
    backgroundColor: kPrimaryLightColor,
  ),
  QuestData(
    id: 7,
    description:
    "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Water Conservation",
    image: "assets/images/image_1.png",
    price: "250ml",
    tagLine: "Use rainwater to water plants",
    backgroundColor: kPrimaryLightColor,
  ),
  QuestData(
    id: 8,
    description:
    "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Water Conservation",
    image: "assets/images/image_1.png",
    price: "250ml",
    tagLine: "Use a water cup when brushing your teeth",
    backgroundColor: kPrimaryLightColor,
  ),
];
