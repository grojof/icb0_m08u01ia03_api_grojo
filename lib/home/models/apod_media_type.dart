enum ApodMediaType {
  image,
  video,
  other,
}

ApodMediaType apodMediaTypeFromString(String value) {
  switch (value) {
    case 'image':
      return ApodMediaType.image;
    case 'video':
      return ApodMediaType.video;
    case 'other':
      return ApodMediaType.other;
    default:
      return ApodMediaType.other;
  }
}
