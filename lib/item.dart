import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  // const Button({Key? key}) : super(key: key);
  final String ItemName;
  final int Price;
  ItemButton(this.ItemName, this.Price);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 10.0,
        primary: Colors.white,
      ),
      child: Container(
        padding: EdgeInsets.all(7),
        height: 260,
        width: 140,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 190,
              color: Colors.grey[200],
            ),
            Text(
              ItemName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '${Price}.000đ',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.w800),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
                child: Text(
                  'Xem chi tiết',
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
