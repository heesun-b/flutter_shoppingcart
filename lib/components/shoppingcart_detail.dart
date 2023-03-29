import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart2/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(40)
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _detailNameAndPrice(),
            _detailRatingAndReviewCount(),
            _detailColorOption(), 
            _detailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _detailButton(BuildContext context) {
    return Align(
            child: TextButton(
              onPressed: (){
                showCupertinoDialog(context: context, builder: (context) => CupertinoAlertDialog(
                  title: Text("장바구니에 담으시겠습니까?"),
                  actions: [
                    CupertinoDialogAction(child:
                    Text("확인"),
                    onPressed: (){
                      Navigator.pop(context);
                    },)
                  ],
                ),);
              },
              style: TextButton.styleFrom(
                backgroundColor: kAccentColor,
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text("Add to Cart",
              style: TextStyle(color: Colors.white),),
            ),
          );
  }

  Widget _detailColorOption() {
    return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Color Option"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    _detailIcon(Colors.black),
                    _detailIcon(Colors.green),
                    _detailIcon(Colors.orange),
                    _detailIcon(Colors.grey),
                    _detailIcon(Colors.white),

                  ],
                )
              ],
            ),
          );
  }

  Widget _detailIcon(Color mColor) {
    return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Positioned(
                            left: 5,
                            top: 5,
                            child: ClipOval(
                              child: Container(
                                color: mColor,
                                width: 40,
                                height: 40,
                              ),
                            ) )
                      ],
                    ),
                  );
  }

  Widget _detailRatingAndReviewCount() {
    return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Spacer(),
                Text("review"),
                Text("(26)", style: TextStyle(color: Colors.blue),)


              ],
            ),
          );
  }

  Widget _detailNameAndPrice() {
    return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Urban Soft AL 10.0", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                Text("\$699", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
          );
  }
}
