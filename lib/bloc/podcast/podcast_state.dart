import 'package:final_project_of_mobile_app/data/model/podcast.dart';

abstract class PodcastState {}

class PodcastInitState extends PodcastState {}

class PodcastListState extends PodcastState {
  List<Podcast> podcastList;

  PodcastListState(this.podcastList);
}
