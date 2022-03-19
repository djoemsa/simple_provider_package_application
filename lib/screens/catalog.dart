import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallpaper Catalog'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            // SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              color: Color(0xffecf0f1),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.width / 8,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Column(
                      children: [Text('RED WALLPAPER'), Text('Rp.100,000')],
                    ),
                  ),
                  Checkbox(value: false, onChanged: (newValue) {})
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              color: Color(0xffecf0f1),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.width / 8,
                    color: Colors.blue,
                  ),
                  Expanded(
                    child: Column(
                      children: [Text('RED WALLPAPER'), Text('Rp.100,000')],
                    ),
                  ),
                  Checkbox(value: false, onChanged: (newValue) {})
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              color: Color(0xffecf0f1),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.width / 8,
                    color: Colors.amber,
                  ),
                  Expanded(
                    child: Column(
                      children: [Text('RED WALLPAPER'), Text('Rp.100,000')],
                    ),
                  ),
                  Checkbox(value: false, onChanged: (newValue) {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
