import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';

import 'package:stylish/screens/home/components/categories.dart';
import 'package:stylish/screens/home/components/search_form.dart';

import 'components/new_arrival.dart';
import 'components/popular.dart';
import 'components/product_card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/Location.svg'),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '15/2 New Texas',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/Notification.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            ),
            const Text(
              'best Outfits for you',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: defaultPadding,
              ),
              child: SearchForm(),
            ),
            const Categories(),
            const SizedBox(
              height: defaultPadding,
            ),
            const NewArrival(),
            const SizedBox(
              height: defaultPadding,
            ),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
