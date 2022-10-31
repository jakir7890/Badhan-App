import 'package:get/get.dart';


import '../modules/blood_tab/bindings/blood_tab_binding.dart';
import '../modules/blood_tab/views/blood_tab_view.dart';
import '../modules/bloodgroup_call/bindings/bloodgroup_call_binding.dart';
import '../modules/bloodgroup_call/views/bloodgroup_call_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/chat_ui/bindings/chat_ui_binding.dart';
import '../modules/chat_ui/views/chat_ui_view.dart';
import '../modules/full_registration/bindings/full_registration_binding.dart';
import '../modules/full_registration/views/full_registration_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/patient_info/bindings/patient_info_binding.dart';
import '../modules/patient_info/views/patient_info_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/registration/quick_registration/view/quick_registration.dart';
import '../modules/registration/view/registration.dart';
import '../modules/select_language/view/select_language.dart';
import '../modules/user_screen/view/user_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.User_screen;

  static final routes = [
    GetPage(
      name: _Paths.Register,
      page: () => Registration(),
    ),
    GetPage(
      name: _Paths.SelLang,
      page: () => SelectLanguage(),
    ),
    GetPage(name: _Paths.USER, page: () => UserScreen()),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.QuickRegi,
      page: () => QuickRegistraton(),
    ),
    GetPage(
      name: _Paths.CHAT_UI,
      page: () => const ChatUiView(),
      binding: ChatUiBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.FULL_REGISTRATION,
      page: () => const FullRegistrationView(),
      binding: FullRegistrationBinding(),
    ),
    GetPage(
      name: _Paths.BLOOD_TAB,
      page: () => const BloodTabView(),
      binding: BloodTabBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_INFO,
      page: () => const PatientInfoView(),
      binding: PatientInfoBinding(),
    ),
    GetPage(
      name: _Paths.BLOODGROUP_CALL,
      page: () => const BloodgroupCallView(),
      binding: BloodgroupCallBinding(),
    ),
    
  ];
}
