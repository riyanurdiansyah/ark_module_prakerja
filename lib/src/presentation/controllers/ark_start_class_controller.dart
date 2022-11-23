import 'package:ark_module_prakerja/src/data/datasources/remote/ark_sc_remote_datasource_impl.dart';
import 'package:ark_module_prakerja/src/data/repositories/ark_sc_repository_impl.dart';
import 'package:ark_module_prakerja/src/domain/usecase/ark_sc_usecase.dart';
import 'package:ark_module_prakerja/src/utils/app_constanta.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArkStartClassController extends GetxController {
  late SharedPreferences _prefs;

  late ArkScUseCase _useCase;
  late ArkScRepositoryImpl _repository;
  late ArkScRemoteDataSourceImpl _dataSource;

  final Rx<String> _token = ''.obs;
  Rx<String> get token => _token;

  @override
  void onInit() async {
    await _setup();
    await fetchCourseStatus();
    await fetchCourseItem();
    super.onInit();
  }

  Future _setup() async {
    _dataSource = ArkScRemoteDataSourceImpl();
    _repository = ArkScRepositoryImpl(_dataSource);
    _useCase = ArkScUseCase(_repository);

    _prefs = await SharedPreferences.getInstance();
    _token.value = _prefs.getString('token_access') ?? '';
  }

  Future fetchCourseItem() async {
    final response = await _useCase.fetchCourseItem(
        tokenPrakerjaMigrate, "18761268", "18761485");
  }

  Future fetchCourseStatus() async {
    final response =
        await _useCase.fetchCourseStatus(tokenPrakerjaMigrate, "18761268");
  }
}
