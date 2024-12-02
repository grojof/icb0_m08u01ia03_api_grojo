class YouTubeUrlUtil {
  /// Extracts the thumbnail URL from a given YouTube video URL.
  ///
  /// This method supports URLs from:
  /// - youtube.com (both classic and embedded formats)
  /// - youtu.be (shortened format)
  ///
  /// Returns the URL of the YouTube thumbnail in medium quality (`mqdefault.jpg`),
  /// or `null` if the input is not a valid YouTube video URL.
  static String? getYouTubeThumbnail(String videoUrl) {
    final uri = Uri.tryParse(videoUrl);

    if (uri != null) {
      // Extract ID from youtube.com (includes embed)
      if (uri.host.contains('youtube.com')) {
        if (uri.pathSegments.contains('embed')) {
          return 'https://img.youtube.com/vi/${uri.pathSegments.last}/mqdefault.jpg';
        }
        final videoId =
            uri.queryParameters['v']; // Extract ID from classic YouTube URLs
        if (videoId != null) {
          return 'https://img.youtube.com/vi/$videoId/mqdefault.jpg';
        }
      }

      // Extract ID from youtu.be (shortened format)
      else if (uri.host.contains('youtu.be')) {
        final videoId = uri.pathSegments.first; // Extract ID from youtu.be
        return 'https://img.youtube.com/vi/$videoId/mqdefault.jpg';
      }
    }

    // Return null if no valid video ID is found
    return null;
  }
}
