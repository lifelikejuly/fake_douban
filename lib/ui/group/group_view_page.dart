//export 'src/widgets/scroll_controller.dart';
//export 'package:flutter/src/widgets/page_view.dart';
//
//class CustomerPageController extends ScrollController {
//  /// Creates a page controller.
//  ///
//  /// The [initialPage], [keepPage], and [viewportFraction] arguments must not be null.
//  CustomerPageController({
//    this.initialPage = 0,
//    this.keepPage = true,
//    this.viewportFraction = 1.0,
//  }) : assert(initialPage != null),
//        assert(keepPage != null),
//        assert(viewportFraction != null),
//        assert(viewportFraction > 0.0);
//
//  /// The page to show when first creating the [PageView].
//  final int initialPage;
//
//  /// Save the current [page] with [PageStorage] and restore it if
//  /// this controller's scrollable is recreated.
//  ///
//  /// If this property is set to false, the current [page] is never saved
//  /// and [initialPage] is always used to initialize the scroll offset.
//  /// If true (the default), the initial page is used the first time the
//  /// controller's scrollable is created, since there's isn't a page to
//  /// restore yet. Subsequently the saved page is restored and
//  /// [initialPage] is ignored.
//  ///
//  /// See also:
//  ///
//  ///  * [PageStorageKey], which should be used when more than one
//  ///    scrollable appears in the same route, to distinguish the [PageStorage]
//  ///    locations used to save scroll offsets.
//  final bool keepPage;
//
//  /// The fraction of the viewport that each page should occupy.
//  ///
//  /// Defaults to 1.0, which means each page fills the viewport in the scrolling
//  /// direction.
//  final double viewportFraction;
//
//  /// The current page displayed in the controlled [PageView].
//  ///
//  /// There are circumstances that this [PageController] can't know the current
//  /// page. Reading [page] will throw an [AssertionError] in the following cases:
//  ///
//  /// 1. No [PageView] is currently using this [PageController]. Once a
//  /// [PageView] starts using this [PageController], the new [page]
//  /// position will be derived:
//  ///
//  ///   * First, based on the attached [PageView]'s [BuildContext] and the
//  ///     position saved at that context's [PageStorage] if [keepPage] is true.
//  ///   * Second, from the [PageController]'s [initialPage].
//  ///
//  /// 2. More than one [PageView] using the same [PageController].
//  ///
//  /// The [hasClients] property can be used to check if a [PageView] is attached
//  /// prior to accessing [page].
//  double get page {
//    assert(
//    positions.isNotEmpty,
//    'PageController.page cannot be accessed before a PageView is built with it.',
//    );
//    assert(
//    positions.length == 1,
//    'The page property cannot be read when multiple PageViews are attached to '
//        'the same PageController.',
//    );
//    final _PagePosition position = this.position;
//    return position.page;
//  }
//
//  /// Animates the controlled [PageView] from the current page to the given page.
//  ///
//  /// The animation lasts for the given duration and follows the given curve.
//  /// The returned [Future] resolves when the animation completes.
//  ///
//  /// The `duration` and `curve` arguments must not be null.
//  Future<void> animateToPage(
//      int page, {
//        @required Duration duration,
//        @required Curve curve,
//      }) {
//    final _PagePosition position = this.position;
//    return position.animateTo(
//      position.getPixelsFromPage(page.toDouble()),
//      duration: duration,
//      curve: curve,
//    );
//  }
//
//  /// Changes which page is displayed in the controlled [PageView].
//  ///
//  /// Jumps the page position from its current value to the given value,
//  /// without animation, and without checking if the new value is in range.
//  void jumpToPage(int page) {
//    final _PagePosition position = this.position;
//    position.jumpTo(position.getPixelsFromPage(page.toDouble()));
//  }
//
//  /// Animates the controlled [PageView] to the next page.
//  ///
//  /// The animation lasts for the given duration and follows the given curve.
//  /// The returned [Future] resolves when the animation completes.
//  ///
//  /// The `duration` and `curve` arguments must not be null.
//  Future<void> nextPage({ @required Duration duration, @required Curve curve }) {
//    return animateToPage(page.round() + 1, duration: duration, curve: curve);
//  }
//
//  /// Animates the controlled [PageView] to the previous page.
//  ///
//  /// The animation lasts for the given duration and follows the given curve.
//  /// The returned [Future] resolves when the animation completes.
//  ///
//  /// The `duration` and `curve` arguments must not be null.
//  Future<void> previousPage({ @required Duration duration, @required Curve curve }) {
//    return animateToPage(page.round() - 1, duration: duration, curve: curve);
//  }
//
//  @override
//  ScrollPosition createScrollPosition(ScrollPhysics physics, ScrollContext context, ScrollPosition oldPosition) {
//    return _PagePosition(
//      physics: physics,
//      context: context,
//      initialPage: initialPage,
//      keepPage: keepPage,
//      viewportFraction: viewportFraction,
//      oldPosition: oldPosition,
//    );
//  }
//
//  @override
//  void attach(ScrollPosition position) {
//    super.attach(position);
//    final _PagePosition pagePosition = position;
//    pagePosition.viewportFraction = viewportFraction;
//  }
//}
