import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_package/models/simple_model.dart';

class ProxyProviderPage extends StatelessWidget {
  const ProxyProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProxyProvider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                  'ProxyProvider adalah Provider yang memerlukan model dari provider lainnya sebagai parameter atau sejenisnya'),
            ),
            SizedBox(height: 50),
            Consumer<SimpleModel2>(
              builder: (context, value, child) {
                return ElevatedButton(
                    onPressed: () {
                      value.salam("Assalamu'alaikum");
                    },
                    child: Text('jalankan ChangeNotifierProvider'));
              },
            ),
            SizedBox(height: 30),
            Consumer<SimpleModel2>(
              builder: (context, value, child) {
                return Text(value.something);
              },
            ),
            SizedBox(height: 30),
            Consumer<SimpleModelProxy>(
              builder: (context, value, child) {
                return ElevatedButton(
                    onPressed: () {
                      value.salamJuga();
                    },
                    child: Text('Jalankan ProxyProvider'));
              },
            )
          ],
        ),
      ),
    );
  }
}
