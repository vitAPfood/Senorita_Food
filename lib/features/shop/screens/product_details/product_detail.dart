import 'package:flutter/material.dart';
import 'package:food/common/widgets/texts/section_heading.dart';
import 'package:food/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:food/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:food/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:food/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:food/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:food/features/shop/screens/product_reviews/product_review.dart';
import 'package:food/utils/constants/sizes.dart';
import 'package:food/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider

            const TProductImageSlider(),

            /// Product Details

            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // - Ratings & share buttton
                  const TRatingandShare(),
                  // Price Title Stock and Brand
                  const TProductMetaData(),
                  // Product Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  //Description
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
                    trimLines: 2,
                    trimCollapsedText: 'show more',
                    trimExpandedText: 'show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Reviwes(420)', showActionButton: false),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewScreen()),
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
