import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/widgets/footer_widget.dart';
import 'package:fashion_app/core/widgets/header_widget.dart';
import 'package:fashion_app/features/home/data/products.dart';
import 'package:fashion_app/features/home/presentation/widgets/brand_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/carousel_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/collections.dart';
import 'package:fashion_app/features/home/presentation/widgets/new_arrival_section.dart';
import 'package:fashion_app/features/home/presentation/widgets/trending.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> tabBarLabels=["All","Apparel","Dress","Tshirt","Bag"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
        body: CustomScrollView(
            slivers: [
                HeaderWidget(),
                SliverToBoxAdapter(child: CarouselWidget(itemCounts: 2,
                imgs: [AppConstants.ca1,AppConstants.ca1,AppConstants.ca1],label: "Luxury Fashion & Accessories",
                label1: "Explore Collection",
                )),
                SliverToBoxAdapter(child: Padding(
                  padding: const EdgeInsets.only(top:35),
                  child: NewArrivalSection(tl: "New Arrival", tbl: tabBarLabels, items: items, bl: "Explore More"),
                ),),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top:60),
                    child: BrandWidget(bL: [AppConstants.brandIcon1,AppConstants.brandIcon2,AppConstants.brandIcon3,AppConstants.brandIcon4,AppConstants.brandIcon5,AppConstants.brandIcon6 ]),
                  ) ,
                ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top:60),
                  child: Collections(img: AppConstants.cIcon, sImg: AppConstants.cImg, video: AppConstants.cIcon1),
                ),
              ),

SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top:40),
                  child: Trending(labels: ["2021","Spring","collections","fall","dress","autumncollections","openfashion"])),
              ),
               SliverFillRemaining(
                hasScrollBody: false,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FooterWidget(),
                  ],
                ) ,
               ),

            ],
        )
    );
  }

}