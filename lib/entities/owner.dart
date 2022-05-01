import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable(nullable: true)
class Owner {
  final String? login;
  final int? id;
  final String? node_id;
  final String? avatar_url;
  final String? gravatar_id;
  final String? url;
  final String? html_url;
  final String? followers_url;
  final String? following_url;
  final String? gists_url;
  final String? starred_url;
  final String? subscriptions_url;
  final String? organizations_url;
  final String? events_url;
  final String? received_events_url;
  final String? type;
  final bool? site_admin;

  const Owner({
    required this.login,
    required this.id,
    required this.node_id,
    required this.avatar_url,
    required this.gravatar_id,
    required this.url,
    required this.html_url,
    required this.followers_url,
    required this.following_url,
    required this.gists_url ,
    required this.starred_url,
    required this.subscriptions_url,
    required this.organizations_url,
    required this.events_url,
    required this.received_events_url,
    required this.type,
    required this.site_admin
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}