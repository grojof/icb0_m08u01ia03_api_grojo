enum EpicImageType {
  natural,
  enhanced,
  aerosol,
  cloud,
}

extension EpicImageTypeExtension on EpicImageType {
  String get prefix {
    switch (this) {
      case EpicImageType.natural:
        return 'epic_1b';
      case EpicImageType.enhanced:
        return 'epic_RGB';
      case EpicImageType.aerosol:
        return 'epic_uvai';
      case EpicImageType.cloud:
        return 'epic_cloudfraction';
    }
  }
}
