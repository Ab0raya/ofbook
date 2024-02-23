import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_list_state.dart';

class FeaturedListCubit extends Cubit<FeaturedListState> {
  FeaturedListCubit() : super(FeaturedListInitial());
}
