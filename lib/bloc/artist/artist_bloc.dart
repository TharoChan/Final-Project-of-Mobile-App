import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_project_of_mobile_app/bloc/artist/artist_event.dart';
import 'package:final_project_of_mobile_app/bloc/artist/artist_state.dart';
import 'package:final_project_of_mobile_app/data/repository/artist_repository.dart';

class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  final ArtistRepository _artistRepository;
  ArtistBloc(this._artistRepository) : super(ArtistInitState()) {
    on<ArtistListEvent>((event, emit) async {
      var artitstList = await _artistRepository.artistList();
      emit(ArtistListState(artitstList));
    });
  }
}
