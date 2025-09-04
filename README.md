# flutter_amostra_json

https://docs.flutter.dev/cookbook/plugins/play-video

RethrownDartError: PlatformException(MEDIA_ERR_SRC_NOT_SUPPORTED, MEDIA_ELEMENT_ERROR: Player load failure: error creating media player, The video has been found to be unsuitable (missing or in a format not supported by your browser)., null)

DartError: setState() called after dispose(): _TrailerPagState#39aab(lifecycle state: defunct, not mounted)
This error happens if you call setState() on a State object for a widget that no longer appears in the widget tree (e.g., whose parent widget no longer includes the widget in its build). This error can occur when code calls setState() from a timer or an animation callback.
The preferred solution is to cancel the timer or stop listening to the animation in the dispose() callback. Another solution is to check the "mounted" property of this object before calling setState() to ensure the object is still in the tree.
This error might indicate a memory leak if setState() is being called because another object is retaining a reference to this State object after it has been removed from the tree. To avoid memory leaks, consider breaking the reference to this object during dispose().
