import 'package:wisdom_campus/core/util/value_util.dart';
import 'package:wisdom_campus/core/util/date_util.dart';

/*
 * @description 抽象的数据模型类
 * @author Qson
 * @date 2021-05-14 14:00:36
*/
abstract class BaseModel {}

/*
 * @description Article类
 * @author Qson
 * @date 2021-05-14 14:01:10
*/
class Article extends BaseModel {
  late String id;
  late String userId;
  late int publishDate;
  late int lastModifyDate;
  late String title;
  late Category category;

  late String content;

  late int viewCount;
  late int likeCount;

  String get showDetail => '# $title\n' + content;

  String? get showDate => DateUtil.readTimestamp(publishDate);

  Article.fromMap(Map json) {
    id = ValueUtil.toStr(json['_id']);
    userId = ValueUtil.toStr(json['user_id']);
    publishDate = ValueUtil.toInt(json['publish_date'])!;
    lastModifyDate = ValueUtil.toInt(json['last_modify_date'])!;
    title = ValueUtil.toStr(json['title']);
    category = Category.fromMap(ValueUtil.toMap(json['category']));
    viewCount = ValueUtil.toInt(json['view_count'])!;
    likeCount = ValueUtil.toInt(json['like_count'])!;
    content = ValueUtil.toStr(json['content']);
  }
}

/*
 * @description 类别模型
 * @author Qson
 * @date 2021-05-14 14:01:40
*/
class Category extends BaseModel {
  late String id;
  late String name;

  Category.fromMap(Map json) {
    id = ValueUtil.toStr(json['_id']);
    name = ValueUtil.toStr(json['name']);
  }
}
