import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package/models/simple_model.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Example')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              'Provider digunakan saat ingin menganti value dari sebuah model namun tidak mengubah penampilan',
            ),
          ),
          SizedBox(height: 50),
          Consumer<SimpleModel1>(builder: (context, smodel, child) {
            return ElevatedButton(
              onPressed: () {
                smodel.salam();
              },
              child: Text('Jalankan Provider'),
            );
          }),
          SizedBox(height: 15),
          Consumer<SimpleModel1>(builder: (context, smodel, child) {
            return Text(smodel.something);
          })
        ],
      )),
    );
  }
}
