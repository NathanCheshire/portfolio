// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'License.g.dart';

@JsonSerializable()
class License {
  final String? key;
  final String? name;
  final String? spdx_id;
  final String? url;
  final String? node_id;

  const License({
    required this.key,
    required this.name,
    required this.spdx_id,
    required this.url,
    required this.node_id,
  });

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}
