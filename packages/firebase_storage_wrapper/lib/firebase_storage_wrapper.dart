library firebase_storage_wrapper;

import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageWrapper {
  static Future<String> uploadFile({
    required File file,
    required String path,
  }) async {
    try {
      final Reference reference = FirebaseStorage.instance.ref().child(path);
      final UploadTask uploadTask = reference.putFile(file);
      final Reference secondReference = (await uploadTask).ref;
      return (await secondReference.getDownloadURL()).toString();
    } catch (e) {
      throw Exception(
        e.toString(),
      );
    }
  }

  static Future<void> deleteFile({required String imgPath}) async {
    try {
      final Reference reference = FirebaseStorage.instance.ref().child(imgPath);
      await reference.delete();
      return;
    } catch (e) {
      throw Exception(
        e.toString(),
      );
    }
  }
}
