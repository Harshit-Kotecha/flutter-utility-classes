import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionsHelper {
  static Future<bool> hasCameraPermission() async {
    final status = await Permission.camera.request();

    return status.isGranted;
  }

  static Future<bool> hasStoragePermission() async {
    try {
      final status = await Permission.storage.status;

      if (!status.isGranted) {
        bool permissionStatus;
        final deviceInfo = await DeviceInfoPlugin().androidInfo;

        if (deviceInfo.version.sdkInt > 32) {
          permissionStatus = await Permission.photos.request().isGranted;
        } else {
          permissionStatus = await Permission.storage.request().isGranted;
        }
        return permissionStatus;
      } else {
        return true;
      }
    } catch (e) {
      return false;
    }
  }
}
