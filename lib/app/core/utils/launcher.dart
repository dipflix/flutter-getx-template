import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

// launch call via url launcher
Future launch(String url) async {
  final Uri uri = Uri.parse(url);

  if (await url_launcher.canLaunchUrl(uri)) {
    await url_launcher.launchUrl(uri);
  } else {
    Get.snackbar('Ooops...', 'Can not launch url');
  }
}
