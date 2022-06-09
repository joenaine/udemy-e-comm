import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemyecommerce/consts/colors.dart';
import 'package:udemyecommerce/provider/dark_theme_provider.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/emptycart.png'))),
        ),
        Text(
          'Your Cart Is Empty',
          style: TextStyle(
              color: Theme.of(context).textSelectionTheme.cursorColor,
              fontSize: 36,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 30),
        Text(
          'Looks Like You didn`t \n add anything to your cart',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: themeChange.darkTheme
                  ? Theme.of(context).disabledColor
                  : ColorsConsts.subTitle,
              fontSize: 26,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'SHOP NOW',
            style: TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
        )
      ],
    );
  }
}
