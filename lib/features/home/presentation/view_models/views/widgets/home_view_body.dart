import 'package:bokly_app/const/constant.dart';
import 'package:bokly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';

import 'custome_app_bar.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding),
                child: CustomeAppBar(),
              ),
              FeaturedListView(),
              SizedBox(
                height: 49,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
