import 'package:fluttershop/category/base_category.dart';
import 'package:fluttershop/category/category_controller.dart';
import 'package:fluttershop/discounts/base_discount.dart';
import 'package:fluttershop/discounts/discount_controller.dart';
import 'package:fluttershop/image/base_image.dart';
import 'package:fluttershop/image/image_controller.dart';
import 'package:fluttershop/product_option/base_option.dart';
import 'package:fluttershop/tag/base_tag.dart';
import 'package:fluttershop/tag/tag_controller.dart';

class BaseProduct {
  String id;
  String title;
  String description;
  double price;
  double quantity;
  List<BaseImage> images;
  List<BaseProductOption> options;
  List<BaseCategory> categories;
  List<BaseTag> tags;
  List<BaseDiscount> discounts;

  BaseProduct(
    this.id,
    this.title,
    this.description,
    this.price,
    this.quantity,
    this.images,
    this.options,
    this.categories,
    this.tags,
    this.discounts,
  );

  BaseProduct.fromJson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject['id'];
    this.title = jsonObject['title'];
    this.description = jsonObject['description'];
    this.price = jsonObject['price'];
    this.quantity = jsonObject['quantity'];
    this.images = ImageController.toImages(jsonObject['images']);
    this.categories = CategoryController.toCategories(jsonObject['categories']);
    this.tags = TagController.toTags(jsonObject['tags']);
    this.discounts = DiscountController.toDiscounts(jsonObject['discounts']);
  }
}
