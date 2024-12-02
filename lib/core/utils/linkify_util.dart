import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

/// A utility class for processing and displaying text with clickable links.
class LinkifyUtil {
  /// Processes and displays text with automatically detected links.
  ///
  /// - [text]: The text to process.
  /// - [style]: General text style.
  /// - [linkStyle]: Style for detected links.
  /// - [onError]: Callback to handle errors when opening links.
  ///
  /// This function extends the default link detection by normalizing certain
  /// custom patterns (e.g., Twitter's `pic.twitter.com` links) into valid URLs.
  static Widget buildLinkifyText({
    required String text,
    TextStyle? style,
    TextStyle? linkStyle,
    TextAlign textAlign = TextAlign.start,
    void Function(Exception)? onError,
  }) {
    // Process the text to normalize custom links.
    final processedText = _processCustomLinks(text);

    return SelectableLinkify(
      text: processedText,
      textAlign: textAlign,
      style: style,
      linkStyle: linkStyle?.copyWith(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
      onOpen: (link) async {
        try {
          await _launchUrl(link.url);
        } catch (e) {
          onError?.call(Exception('Error opening the link: $e'));
        }
      },
    );
  }

  /// Normalizes custom link formats into valid URLs.
  ///
  /// This function processes the input text to detect and transform specific
  /// patterns like `pic.twitter.com` into clickable URLs.
  ///
  /// - [text]: The raw text to process.
  /// - Returns: The processed text with normalized URLs.
  static String _processCustomLinks(String text) {
    // Regex to match Twitter-style short URLs (e.g., pic.twitter.com).
    final twitterPattern = RegExp(r'\bpic\.twitter\.com/\S+');

    // Regex to match general URLs that might lack a scheme.
    final genericPattern = RegExp(r'\bwww\.\S+\.\S+');

    // Start processing the text.
    return text.replaceAllMapped(twitterPattern, (match) {
      return 'https://${match.group(0)}'; // Add https:// prefix if missing.
    }).replaceAllMapped(genericPattern, (match) {
      return 'https://${match.group(0)}'; // Add https:// prefix to generic links.
    });
  }

  /// Opens a URL in the default browser.
  ///
  /// - [url]: The URL to open. If the URL lacks a scheme, `https://` is added.
  ///
  /// Throws an exception if the URL cannot be opened.
  static Future<void> _launchUrl(String url) async {
    final formattedUrl = url.startsWith('http') ? url : 'https://$url';
    if (await canLaunchUrl(Uri.parse(formattedUrl))) {
      await launchUrl(
        Uri.parse(formattedUrl),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw Exception('Unable to open the link: $formattedUrl');
    }
  }
}
