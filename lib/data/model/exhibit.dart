import 'package:equatable/equatable.dart';

class Exhibit extends Equatable {
  final String title;
  final List<dynamic> images;

  const Exhibit({required this.title, required this.images});

  factory Exhibit.fromJson(Map<String, dynamic> map) {
    return Exhibit(
      title: map['title'] ?? '',
      images: List<dynamic>.from(map['images']),
    );
  }

  @override
  List<Object?> get props => [title, images];
}
