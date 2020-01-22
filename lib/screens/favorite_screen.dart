import 'package:flutter/material.dart';
import 'package:restaurant_ui_kit/util/foods.dart';
import 'package:restaurant_ui_kit/widgets/grid_product.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> with AutomaticKeepAliveClientMixin<FavoriteScreen>{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            Text(
              "My Favorite Items",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10.0),

            GridView.builder(
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.25),
              ),
              itemCount: foods == null ? 0 :foods.length,
              itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
                Map food = foods[index];
//                print(foods);
//                print(foods.length);
                return GridProduct(
                  img: food['img'],
                  isFav: true,
                  name: food['name'],
                  rating: 5.0,
                  raters: 23,
                );
              },
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
