import 'package:ecommerce_app_bloc/model/product/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Single_product extends StatefulWidget {
  final Product product;
  const Single_product({Key? key,required this.product}) : super(key: key);

  @override
  State<Single_product> createState() => _Single_productState();
}

class _Single_productState extends State<Single_product> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: BeveledRectangleBorder(
          side: BorderSide(color: Colors.grey,width: 0.5),
          borderRadius: BorderRadius.circular(5)
        ),
            title: Text(widget.product.product_tittle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.product.product_desc),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(widget.product.product_price.toString()),
                SizedBox(width: 10,),
                Text('Rating:'),
                SizedBox(width: 5,),
                Text(widget.product.rating.rating.toString())
              ],
            ),

          ],
        ),
        leading: Container(
          height: 70,
            width: 70,
            child: Image.network(widget.product.image)),
      ),
    );
  }
}
