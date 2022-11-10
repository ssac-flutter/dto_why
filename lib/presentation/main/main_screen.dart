import 'package:dto_why/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dto Why'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => viewModel.fetchImages('banana'),
            child: const Text('banana'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.photos.length,
              itemBuilder: (context, index) {
                final photo = viewModel.photos[index];
                return Image.network(
                  photo.url,
                  height: 100,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
