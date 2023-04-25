// ignore_for_file: lines_longer_than_80_chars

import 'package:test_on_mars/domain/entities/article.dart';
import 'package:test_on_mars/domain/entities/picture_detail.dart';

const responseGetArticlesJson = """
[
    {
        "id": "64446673f1031",
        "type": 2,
        "title": "When it is raining heavily.",
        "picture": {
            "width": 800,
            "height": 1422,
            "url": "https://picsum.photos/800/1422"
        },
        "author": "Mark Doda"
    },
    {
        "id": "64446673f103d",
        "type": 1,
        "title": "Wouldn't Harm a Fly",
        "excerpt": "It took him a while to realize that everything he decided not to change, he was actually choosing...",
        "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam egestas imperdiet sapien, aliquam cursus est vehicula sit amet. Aliquam et eleifend quam. Vestibulum at congue lacus. Suspendisse tincidunt sagittis libero, vel iaculis nulla porta a. Curabitur ac urna nec velit suscipit commodo. Suspendisse potenti. Aliquam cursus velit ut est aliquam vehicula. Morbi tempus varius mi volutpat semper. Curabitur blandit, quam ut tristique vulputate, odio felis eleifend eros, at varius orci sapien non risus."
    }
]
""";

const article1Json = """
{
    "id": "64446673f103d",
    "type": 1,
    "title": "Wouldn't Harm a Fly",
    "excerpt": "It took him a while to realize that everything he decided not to change, he was actually choosing...",
    "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam egestas imperdiet sapien, aliquam cursus est vehicula sit amet. Aliquam et eleifend quam. Vestibulum at congue lacus. Suspendisse tincidunt sagittis libero, vel iaculis nulla porta a. Curabitur ac urna nec velit suscipit commodo. Suspendisse potenti. Aliquam cursus velit ut est aliquam vehicula. Morbi tempus varius mi volutpat semper. Curabitur blandit, quam ut tristique vulputate, odio felis eleifend eros, at varius orci sapien non risus."
}
""";

const List<Article> articles = [
  Article.article(
    id: article1Id,
    title: "Wouldn't Harm a Fly",
    excerpt:
        'It took him a while to realize that everything he decided not to change, he was actually choosing...',
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam egestas imperdiet sapien, aliquam cursus est vehicula sit amet. Aliquam et eleifend quam. Vestibulum at congue lacus. Suspendisse tincidunt sagittis libero, vel iaculis nulla porta a. Curabitur ac urna nec velit suscipit commodo. Suspendisse potenti. Aliquam cursus velit ut est aliquam vehicula. Morbi tempus varius mi volutpat semper. Curabitur blandit, quam ut tristique vulputate, odio felis eleifend eros, at varius orci sapien non risus.',
  ),
  Article.picture(
    id: '64446673f1031',
    title: 'When it is raining heavily.',
    picture: PictureDetail(
      width: 800,
      height: 1422,
      url: 'https://picsum.photos/800/1422',
    ),
    author: 'Mark Doda',
  )
];

const Article article1 = Article.article(
  id: article1Id,
  title: "Wouldn't Harm a Fly",
  excerpt:
      'It took him a while to realize that everything he decided not to change, he was actually choosing...',
  text:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam egestas imperdiet sapien, aliquam cursus est vehicula sit amet. Aliquam et eleifend quam. Vestibulum at congue lacus. Suspendisse tincidunt sagittis libero, vel iaculis nulla porta a. Curabitur ac urna nec velit suscipit commodo. Suspendisse potenti. Aliquam cursus velit ut est aliquam vehicula. Morbi tempus varius mi volutpat semper. Curabitur blandit, quam ut tristique vulputate, odio felis eleifend eros, at varius orci sapien non risus.',
);

const String article1Id = '64446673f103d';
