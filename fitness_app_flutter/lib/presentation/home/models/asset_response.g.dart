// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetResponse _$AssetResponseFromJson(Map<String, dynamic> json) =>
    AssetResponse(
      User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssetResponseToJson(AssetResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
