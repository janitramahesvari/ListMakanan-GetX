import 'package:get/get.dart';

class ConfirmregCtrl extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String nowa;
  late String jeniskelamin;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    nowa = arguments['nowa'];
    jeniskelamin = arguments['jenis_kelamin'];
  }
}