import 'package:photo_manager/photo_manager.dart';

class AssetImageInfo {
  String? id;
  final String path;
  final String? mimeType;
  final String? name;
  final AssetEntity? assetEntity;

  AssetImageInfo({
    this.id,
    required this.path,
    this.mimeType,
    this.name,
    this.assetEntity,
  });

  bool get isNetworkImage {
    Uri uri = Uri.parse(path);
    return uri.isScheme('HTTP') || uri.isScheme('HTTPS');
  }
}
