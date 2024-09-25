import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rating_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class RatingEntity extends Equatable{
  @JsonKey(name: 'rate')
  double rate;
  @JsonKey(name: 'count')
  int count;

  RatingEntity({required this.rate,required this.count});
  @override
  // TODO: implement props
  List<Object?> get props => [rate,count];

  factory RatingEntity.fromJson(Map<String, Object?> json) => _$RatingEntityFromJson(json);

  Map<String,dynamic>? toJson() => _$RatingEntityToJson(this);


}