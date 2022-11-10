import 'package:fitness_app_flutter/presentation/home/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'asset_response.g.dart';

@JsonSerializable()
class AssetResponse {
  final User user;

  AssetResponse(this.user);

  factory AssetResponse.fromJson(Map<String, dynamic> json) => _$AssetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AssetResponseToJson(this);
}