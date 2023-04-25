import 'package:flutter/material.dart';
import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/presentation/views/article_list/widgets/custom_tile.dart';
import 'package:transparent_image/transparent_image.dart';

class PictureTile extends StatelessWidget {
  const PictureTile({
    super.key,
    required this.article,
  });

  final PictureArticle article;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      onTap: () {

      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 160,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: FadeInImage.memoryNetwork(
                fit: BoxFit.cover,
                image: article.picture.url,
                placeholder: kTransparentImage,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Text(article.author, textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}
