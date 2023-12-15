import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  static const name = 'ListViewBuilder';
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          Post post = posts[index];
          return ItemPost(
            post: post,
          );
        },
      ),
    );
  }
}

class ItemPost extends StatelessWidget {
  final Post post;
  const ItemPost({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          post.creator,
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: Image(
            image: NetworkImage(post.image),
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.favorite,
              color: post.like ? Colors.red : Colors.green,
            ),
            const Icon(
              Icons.share,
            ),
          ],
        )
      ],
    );
  }
}

class Post {
  final String creator;
  final String image;
  final bool like;

  Post({required this.creator, required this.image, required this.like});
}

List<Post> posts = [
  Post(
      creator: 'Fernando',
      image:
          'https://images.gog-statics.com/455ff8097ca01fe893703d38b20f46bc9a539765256f9755ea9e592f48938763.jpg',
      like: true),
  Post(
      creator: 'Rafa',
      image:
          'https://lzd-img-global.slatic.net/g/p/a389b8891353b3b6898cb43a8300bf57.jpg_720x720q80.jpg_.webp',
      like: false),
  Post(
      creator: 'Emilio',
      image: 'https://i.blogs.es/acd781/mario-kart-8-deluxe/1366_2000.jpg',
      like: true),
];
