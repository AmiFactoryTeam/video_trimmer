import 'package:flutter/material.dart';

class TrimAreaProperties {
  /// For defining the image fit type of each thumbnail image.
  ///
  /// By default it is set to `BoxFit.fitHeight`.
  final BoxFit thumbnailFit;

  /// For specifying the quality of each
  /// generated image thumbnail, to be displayed in the trimmer
  /// area.
  ///
  /// By default it is set to `75`.
  final int thumbnailQuality;

  /// For adding a blur to the trim area edges. Use `blurColor`
  /// for specifying the color of the blur (usually it's the
  /// background color which helps in blending).
  ///
  /// By default it is set to `false`.
  final bool blurEdges;

  /// For specifying the color of the blur. Use the color of the
  /// background to blend with it.
  ///
  /// By default it is set to `Colors.black`.
  final Color blurColor;

  /// For specifying the widget to be placed at the start
  /// of the trimmer area. You can pass `null` for hiding
  /// the widget.
  ///
  /// By default it is set as:
  ///
  /// ```dart
  /// Icon(
  ///   Icons.arrow_back_ios_new_rounded,
  ///   color: Colors.white,
  ///   size: 16,
  /// )
  /// ```
  final Widget? startIcon;

  /// For specifying the widget to be placed at the end
  /// of the trimmer area. You can pass `null` for hiding
  /// the widget.
  ///
  /// By default it is set as:
  ///
  /// ```dart
  /// Icon(
  ///   Icons.arrow_forward_ios_rounded,
  ///   color: Colors.white,
  ///   size: 16,
  /// )
  /// ```
  final Widget? endIcon;

  /// For specifying the size of the circular border radius
  /// to be applied to each corner of the trimmer area Container.
  ///
  /// By default it is set to `4.0`.
  final double borderRadius;

  /// Helps defining the Trim Area properties.
  ///
  /// A better look at the structure of the **Trim Viewer**:
  ///
  /// ![](https://raw.githubusercontent.com/sbis04/video_trimmer/new_editor/screenshots/trim_viewer_preview_small.png)
  ///
  ///
  /// All the parameters are optional:
  ///
  /// * [thumbnailFit] for specifying the image fit type of each thumbnail image.
  /// By default it is set to `BoxFit.fitHeight`.
  ///
  ///
  /// * [thumbnailQuality] for specifying the quality of each
  /// generated image thumbnail, to be displayed in the trimmer
  /// area. By default it is set to `75`.
  ///
  ///
  /// * [blurEdges] for adding a blur to the trim area edges. Use `blurColor`
  /// for specifying the color of the blur (usually it's the background color
  /// which helps in blending). By default it is set to `false`.
  ///
  ///
  /// * [blurColor] for specifying the color of the blur. Use the color of the
  /// background to blend with it. By default it is set to `Colors.black`.
  ///
  ///
  /// * [startIcon] for specifying the widget to be placed at the start
  /// of the trimmer area. You can pass `null` for hiding
  /// the widget.
  ///
  ///
  /// * [endIcon] for specifying the widget to be placed at the end
  /// of the trimmer area. You can pass `null` for hiding
  /// the widget.
  ///
  ///
  /// * [borderRadius] for specifying the size of the circular border radius
  /// to be applied to each corner of the trimmer area Container.
  /// By default it is set to `4.0`.
  ///
const TrimAreaProperties({
    this.thumbnailFit = BoxFit.fitHeight,
    this.thumbnailQuality = 75,
    this.blurEdges = false,
    this.blurColor = Colors.black,
    this.startIcon,
    this.endIcon,
    this.borderRadius = 4.0,
  });

  /// Helps defining the Fixed Trim Area properties.
  ///
  /// A better look at the structure of the **Trim Viewer**:
  ///
  /// ![](https://raw.githubusercontent.com/sbis04/video_trimmer/new_editor/screenshots/trim_viewer_preview_small.png)
  ///
  ///
  /// All the parameters are optional:
  ///
  /// * [thumbnailFit] for specifying the image fit type of each thumbnail image.
  /// By default it is set to `BoxFit.fitHeight`.
  ///
  ///
  /// * [thumbnailQuality] for specifying the quality of each
  /// generated image thumbnail, to be displayed in the trimmer
  /// area. By default it is set to `75`.
  ///
  ///
  /// * [borderRadius] for specifying the size of the circular border radius
  /// to be applied to each corner of the trimmer area Container.
  /// By default it is set to `4.0`.
  ///
  factory TrimAreaProperties.fixed({
    BoxFit thumbnailFit = BoxFit.fitHeight,
    int thumbnailQuality = 75,
    double borderRadius = 4.0,
  }) {
    return FixedTrimAreaProperties(
      thumbnailFit: thumbnailFit,
      thumbnailQuality: thumbnailQuality,
      borderRadius: borderRadius,
    );
  }
  

  /// Helps defining the Trim Area properties with blur & arrows on the edges.
  ///
  /// A better look at the structure of the **Trim Viewer**:
  ///
  /// ![](https://raw.githubusercontent.com/sbis04/video_trimmer/new_editor/screenshots/trim_viewer_preview_small.png)
  ///
  factory TrimAreaProperties.edgeBlur({
    BoxFit thumbnailFit = BoxFit.fitHeight,
    int thumbnailQuality = 75,
    bool blurEdges = false,
    Color blurColor = Colors.black,
    Widget? startIcon,
    Widget? endIcon,
    double borderRadius = 4.0,
  }) {
    return _TrimAreaPropertiesWithBlur(
      thumbnailFit: thumbnailFit,
      thumbnailQuality: thumbnailQuality,
      blurColor: blurColor,
      borderRadius: borderRadius,
    );
  }
}

class FixedTrimAreaProperties extends TrimAreaProperties {
  /// Helps defining the Fixed Trim Area properties.
  ///
  /// A better look at the structure of the **Trim Viewer**:
  ///
  /// ![](https://raw.githubusercontent.com/sbis04/video_trimmer/new_editor/screenshots/trim_viewer_preview_small.png)
  ///
  ///
  /// All the parameters are optional:
  ///
  /// * [thumbnailFit] for specifying the image fit type of each thumbnail image.
  /// By default it is set to `BoxFit.fitHeight`.
  ///
  ///
  /// * [thumbnailQuality] for specifying the quality of each
  /// generated image thumbnail, to be displayed in the trimmer
  /// area. By default it is set to `75`.
  ///
  ///
  /// * [borderRadius] for specifying the size of the circular border radius
  /// to be applied to each corner of the trimmer area Container.
  /// By default it is set to `4.0`.
  ///
  const FixedTrimAreaProperties({
    BoxFit thumbnailFit = BoxFit.fitHeight,
    int thumbnailQuality = 75,
    double borderRadius = 4.0,
  }): super(
    thumbnailFit: thumbnailFit,
    thumbnailQuality: thumbnailQuality,
    borderRadius: borderRadius
  );
}

class _TrimAreaPropertiesWithBlur extends TrimAreaProperties {
  _TrimAreaPropertiesWithBlur({
    BoxFit thumbnailFit = BoxFit.fitHeight,
    int thumbnailQuality = 75,
    Color blurColor = Colors.black,
    double borderRadius = 4.0,
  }) : super(
          thumbnailFit: thumbnailFit,
          thumbnailQuality: thumbnailQuality,
          borderRadius: borderRadius,
          blurEdges: true,
          blurColor: blurColor,
          startIcon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 16,
          ),
          endIcon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: 16,
          ),
        );
}
