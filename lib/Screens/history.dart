import 'package:flutter/material.dart';
import 'package:inventory_management/constants/colors.dart';
import 'package:inventory_management/supportfiles/list.dart';
import 'package:flutter_cart/flutter_cart.dart';

class history extends StatefulWidget {
  String text;
  List items;
  history({required this.text, required this.items});

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  // ItemBrain ls = ItemBrain();
  // ItemBrain itm = ItemBrain();

  bool isEven = false;
  Apptheme th = Apptheme();
  @override
  Widget build(BuildContext context) {
    String a = widget.text;
    List<dynamic> cart = [];

    return Scaffold(
        appBar: AppBar(
            title: Text(
              widget.text,
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              )
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [th.klemon, th.kyellow],
                ),
              ),
            ),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            centerTitle: true),
        body: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              isEven = true;
            } else {
              isEven = false;
            }
            return ListTile(
              trailing: InkWell(
                onTap: () {
                  print(widget.items[index]);
                },
                child: Icon(
                  Icons.shopping_cart,
                  color: th.kbluish,
                ),
              ),
              tileColor: isEven ? Colors.white : Colors.grey.shade300,
              title: Text(widget.items[index].itemname),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Item No : " + widget.items[index].itemprice.toString()),
                  Text("Price : " +
                      widget.items[index].itemnum.toString() +
                      " Rs."),
                ],
              ),
              leading: Image(
                width: 50,
                height: 50,
                image: AssetImage(
                  widget.items[index].accpeptedData,
                ),
              ),
            );
          },
        ));
  }
}
