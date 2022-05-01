import 'package:json_annotation/json_annotation.dart';

import 'License.dart';
import 'owner.dart';

part 'repo.g.dart';

@JsonSerializable(nullable: true)
class Repo {
  final int? id;
  final String? node_id;
  final String? name;
  final String? full_name;
  final bool? private;
  final Owner? owner;
  final String? html_url;
  final String? description;
  final bool? fork;
  final String? url;
  final String? forks_url;
  final String? keys_url;
  final String? collaborators_url;
  final String? teams_url;
  final String? hooks_url;
  final String? issue_events_url;
  final String? events_url;
  final String? assignees_url;
  final String? branches_url;
  final String? tags_url;
  final String? blobs_url;
  final String? git_tags_url;
  final String? git_refs_url;
  final String? trees_url;
  final String? statuses_url;
  final String? languages_url;
  final String? stargazers_url;
  final String? contributors_url;
  final String? subscribers_url;
  final String? subscription_url;
  final String? commits_url;
  final String? git_commits_url;
  final String? comments_url;
  final String? issue_comment_url;
  final String? contents_url;
  final String? compare_url;
  final String? merges_url;
  final String? archive_url;
  final String? downloads_url;
  final String? issues_url;
  final String? pulls_url;
  final String? miletones_url;
  final String? notifications_url;
  final String? labels_url;
  final String? releases_url;
  final String? deployments_url;
  final String? created_at;
  final String? updated_at;
  final String? pushed_at;
  final String? git_url;
  final String? ssh_url;
  final String? clone_url;
  final String? svn_url;
  final String? homepage;
  final int? size;
  final int? stargazers_count;
  final int? watchers_count;
  final String? language;
  final bool? has_issues;
  final bool? has_projects;
  final bool? has_downloads;
  final bool? has_wiki;
  final bool? has_pages;
  final int? forks_count;
  final String? mirror_url;
  final bool? archived;
  final bool? disabled;
  final int? open_issues_count;
  final License? license;
  final int? forks;
  final int? open_issues;
  final int? watchers;
  final String? default_branch;

  const Repo({
    required this.id,
required this.node_id,
required this.name,
required this.full_name,
required this.private,
required this.owner,
required this.html_url,
required this.description,
required this.fork,
required this.url,
required this.forks_url,
required this.keys_url,
required this.collaborators_url,
required this.teams_url,
required this.hooks_url,
required this.issue_events_url,
required this.events_url,
required this.assignees_url,
required this.branches_url,
required this.tags_url,
required this.blobs_url,
required this.git_tags_url,
required this.git_refs_url,
required this.trees_url,
required this.statuses_url,
required this.languages_url,
required this.stargazers_url,
required this.contributors_url,
required this.subscribers_url,
required this.subscription_url,
required this.commits_url,
required this.git_commits_url,
required this.comments_url,
required this.issue_comment_url,
required this.contents_url,
required this.compare_url,
required this.merges_url,
required this.archive_url,
required this.downloads_url,
required this.issues_url,
required this.pulls_url,
required this.miletones_url,
required this.notifications_url,
required this.labels_url,
required this.releases_url,
required this.deployments_url,
required this.created_at,
required this.updated_at,
required this.pushed_at,
required this.git_url,
required this.ssh_url,
required this.clone_url,
required this.svn_url,
required this.homepage,
required this.size,
required this.stargazers_count,
required this.watchers_count,
required this.language,
required this.has_issues,
required this.has_projects,
required this.has_downloads,
required this.has_wiki,
required this.has_pages,
required this.forks_count,
required this.mirror_url,
required this.archived,
required this.disabled,
required this.open_issues_count,
required this.license,
required this.forks,
required this.open_issues,
required this.watchers,
required this.default_branch,
  });

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
  
  Map<String, dynamic> toJson() => _$RepoToJson(this);
}