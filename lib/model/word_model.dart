import 'package:hive/hive.dart';

part 'word_model.g.dart';

@HiveType(typeId: 1)
class WordModel {
  @HiveField(0)
  int id;

  @HiveField(1)
  String eng;

  @HiveField(2)
  String kor;

  @HiveField(3)
  int count;

  WordModel({
    required this.id,
    required this.eng,
    required this.kor,
    required this.count,
  });
}
