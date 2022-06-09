import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemyecommerce/consts/colors.dart';
import 'package:udemyecommerce/widget/cart_empty.dart';
import 'package:udemyecommerce/widget/cart_full.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List products = ['1'];
    return products.isEmpty
        ? Scaffold(
            body: CartEmpty(),
          )
        : Scaffold(
            bottomSheet: checkOutSection(context),
            appBar: AppBar(
              title: Text('Cart Items Count'),
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.delete_simple))
              ],
            ),
            body: Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return CartFull();
                },
              ),
            ),
          );
  }

  Widget checkOutSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey, width: 0.7)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      ColorsConsts.gradiendLStart,
                      ColorsConsts.gradiendLEnd,
                    ], stops: [
                      0.0,
                      0.7
                    ])),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Check Out',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context)
                                .textSelectionTheme
                                .cursorColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Total: ',
              style: TextStyle(
                  color: Theme.of(context).textSelectionTheme.cursorColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'KZT 20.000',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
