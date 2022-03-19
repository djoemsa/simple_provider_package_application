import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package/models/simple_model.dart';

class ChangeNotifierPage extends StatelessWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifierProvider Example'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
                'ChangeNotifierProvider, akan mengubah value pada model dan juga meng-Rebuild Widgert yang dipilih'),
          ),
          SizedBox(height: 50),
          Consumer<SimpleModel3>(
            builder: (context, value, child) {
              return ElevatedButton(
                  onPressed: () {
                    value.salam();
                  },
                  child: Text('Jalankan ChangeNotifierProvider'));
            },
          ),
          SizedBox(height: 15),
          Consumer<SimpleModel3>(
            builder: (context, value, child) {
              return Text(value.something);
            },
          )
        ],
      )),
    );
  }
}
