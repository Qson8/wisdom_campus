import 'package:flutter/material.dart';
import 'package:wisdom_campus/models/models.dart';
import 'package:wisdom_campus/style/style.dart';


class ArticleCell extends StatelessWidget {
  final Article article;

  ArticleCell({required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.to(() => DetailRoute(),arguments: article.id)
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Style.mainTextColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Text(
                            '#' + article.category.name,
                            style: TextStyle(
                              color: Style.primaryColor,
                              fontSize: 12,
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            // AppRouter.of(context).setNewRoutePath(
                            //   CategoryArticlesRoute(
                            //     categoryId: article.category.id,
                            //     data: {
                            //       "title": article.category.name,
                            //     },
                            //   ),[]
                            // );
                          },
                        ),
                        Text(
                          "article showDate",
                          style: TextStyle(
                            fontSize: 12,
                            color: Style.subTextColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 0.5,
              color: Style.bgColor,
            )
          ],
        ),
      ),
    );
  }
}
