import 'package:curso_flutter/widgets/listview_builder_widget.dart';
import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  static const name = 'ListViewSeparated';
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.separated(
          itemCount: posts.length,
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.red,
              thickness: 3,
            );
          },
          itemBuilder: (context, index) {
            Post post = posts[index];
            return ItemPost(
              post: post,
            );
          },
        ),
      ),
    );
  }
}
