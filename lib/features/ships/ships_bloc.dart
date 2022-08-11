import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ncl_coding_assessment/core/application_entity.dart';
import 'package:ncl_coding_assessment/core/pipes.dart';
import 'package:ncl_coding_assessment/features/ships/ships_view_model.dart';

class ShipsBloc extends Bloc {
  final shipViewModelPipe = Pipe<ShipsViewModel>();

  Map<String, String> rawContentResponse = {};

  @override
  void dispose() {
    shipViewModelPipe.dispose();
  }

  ShipsBloc() : super(null);

  Future getShipOne() async {
    final ApplicationEntity entity = Modular.get<ApplicationEntity>();

    if (isNull(rawContentResponse["SHIPONE"])) {
      final String shipOne = await Modular.get().getShipOne();

      rawContentResponse['SHIPONE'] = shipOne;

      if (entity.apiFailure != null) {
        handleErrors();
        return;
      }
    }
  }

  void handleResponse() {
    if (rawContentResponse["SHIPONE"] != null) {
      shipViewModelPipe.send(_buildShipsViewModel());
    }
  }

  void handleErrors() {
    final ApplicationEntity entity = Modular.get<ApplicationEntity>();
    Modular.get<ErrorHandleBloc>().setError();
  }

  ShipsViewModel _buildShipsViewModel() {
    return ShipsViewModel();
  }
}
