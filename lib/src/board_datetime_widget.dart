import 'package:flutter/material.dart';

import 'board_datetime_builder.dart';
import 'board_datetime_multi_builder.dart';
import 'board_datetime_options.dart';
import 'ui/abstract_datetime_widget.dart';
import 'ui/board_datetime_contents_state.dart';
import 'utils/board_datetime_result.dart';
import 'utils/board_enum.dart';

/// Show a Modal Picker for DateTime bottom sheet.
///
/// The `context` argument is used to look up the [Navigator] and [Theme] for
/// the bottom sheet.
///
/// The `valueNotifier` is a parameter to detect changes and notify you immediately.
/// If it is changed in the picker, it is set to value so that the caller will
/// receive a change callback immediately.
/// With or without specification, pressing the check button in the
/// header will return the selected date.
///
/// The `initialDate` and `minimumDate` and `maximumDate` are parameters related to dates,
/// respectively. Initial value, minimum date, and maximum date.
///
/// The `options` is an option to customize the picker display.
///
/// The `breakpoint` is the width that switches between wide and standard display.
/// The `radius` is a rounded corner on both sides of the top in modal display.
///
/// `barrierColor`, `routeSettings`, `transitionAnimationController`, etc. are
/// the parameters that are specified in the normal modal bottom sheet,
/// so please check there for a description of the parameters.
Future<DateTime?> showBoardDateTimePickerForDateTime({
  required BuildContext context,
  ValueNotifier<DateTime>? valueNotifier,
  void Function(BoardDateTimeResult)? onResult,
  void Function(DateTime)? onChanged,
  DateTime? initialDate,
  DateTime? minimumDate,
  DateTime? maximumDate,
  BoardDateTimeOptions? options,
  double breakpoint = 800,
  double radius = 24,
  Color? barrierColor,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = false,
  CloseButtonBuilder? customCloseButtonBuilder,
}) async {
  return await showBoardDateTimePicker<BoardDateTimeResult>(
    context: context,
    valueNotifier: valueNotifier,
    pickerType: DateTimePickerType.datetime,
    onChanged: onChanged,
    onResult: onResult,
    initialDate: initialDate,
    minimumDate: minimumDate,
    maximumDate: maximumDate,
    options: options,
    breakpoint: breakpoint,
    radius: radius,
    barrierColor: barrierColor,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    useRootNavigator: useRootNavigator,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    useSafeArea: useSafeArea,
    customCloseButtonBuilder: customCloseButtonBuilder,
  );
}

/// Show a Modal Picker for Date bottom sheet.
///
/// The `context` argument is used to look up the [Navigator] and [Theme] for
/// the bottom sheet.
///
/// The `valueNotifier` is a parameter to detect changes and notify you immediately.
/// If it is changed in the picker, it is set to value so that the caller will
/// receive a change callback immediately.
/// With or without specification, pressing the check button in the
/// header will return the selected date.
///
/// The `initialDate` and `minimumDate` and `maximumDate` are parameters related to dates,
/// respectively. Initial value, minimum date, and maximum date.
///
/// The `options` is an option to customize the picker display.
///
/// The `breakpoint` is the width that switches between wide and standard display.
/// The `radius` is a rounded corner on both sides of the top in modal display.
///
/// `barrierColor`, `routeSettings`, `transitionAnimationController`, etc. are
/// the parameters that are specified in the normal modal bottom sheet,
/// so please check there for a description of the parameters.
Future<DateTime?> showBoardDateTimePickerForDate({
  required BuildContext context,
  BoardDateTimeController? controller,
  ValueNotifier<DateTime>? valueNotifier,
  void Function(BoardDateResult)? onResult,
  void Function(DateTime)? onChanged,
  DateTime? initialDate,
  DateTime? minimumDate,
  DateTime? maximumDate,
  BoardDateTimeOptions? options,
  Widget? headerWidget,
  double breakpoint = 800,
  double radius = 24,
  Color? barrierColor,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = false,
  Widget Function(BuildContext context)? onTopActionBuilder,
  CloseButtonBuilder? customCloseButtonBuilder,
}) async {
  return await showBoardDateTimePicker<BoardDateResult>(
      context: context,
      controller: controller,
      valueNotifier: valueNotifier,
      pickerType: DateTimePickerType.date,
      onChanged: onChanged,
      onResult: onResult,
      initialDate: initialDate,
      minimumDate: minimumDate,
      maximumDate: maximumDate,
      options: options,
      headerWidget: headerWidget,
      breakpoint: breakpoint,
      radius: radius,
      barrierColor: barrierColor,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      useSafeArea: useSafeArea,
      onTopActionBuilder: onTopActionBuilder,
      customCloseButtonBuilder: customCloseButtonBuilder);
}

/// Show a Modal Picker for Time bottom sheet.
///
/// The `context` argument is used to look up the [Navigator] and [Theme] for
/// the bottom sheet.
///
/// The `valueNotifier` is a parameter to detect changes and notify you immediately.
/// If it is changed in the picker, it is set to value so that the caller will
/// receive a change callback immediately.
/// With or without specification, pressing the check button in the
/// header will return the selected date.
///
/// The `initialDate` and `minimumDate` and `maximumDate` are parameters related to dates,
/// respectively. Initial value, minimum date, and maximum date.
///
/// The `options` is an option to customize the picker display.
///
/// The `breakpoint` is the width that switches between wide and standard display.
/// The `radius` is a rounded corner on both sides of the top in modal display.
///
/// `barrierColor`, `routeSettings`, `transitionAnimationController`, etc. are
/// the parameters that are specified in the normal modal bottom sheet,
/// so please check there for a description of the parameters.
Future<DateTime?> showBoardDateTimePickerForTime({
  required BuildContext context,
  BoardDateTimeController? controller,
  ValueNotifier<DateTime>? valueNotifier,
  void Function(BoardTimeResult)? onResult,
  void Function(DateTime)? onChanged,
  DateTime? initialDate,
  DateTime? minimumDate,
  DateTime? maximumDate,
  BoardDateTimeOptions? options,
  Widget? headerWidget,
  double breakpoint = 800,
  double radius = 24,
  Color? barrierColor,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = false,
  Widget Function(BuildContext context)? onTopActionBuilder,
  CloseButtonBuilder? customCloseButtonBuilder,
}) async {
  return await showBoardDateTimePicker<BoardTimeResult>(
    context: context,
    controller: controller,
    valueNotifier: valueNotifier,
    pickerType: DateTimePickerType.time,
    onChanged: onChanged,
    onResult: onResult,
    initialDate: initialDate,
    minimumDate: minimumDate,
    maximumDate: maximumDate,
    options: options,
    headerWidget: headerWidget,
    breakpoint: breakpoint,
    radius: radius,
    barrierColor: barrierColor,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    useRootNavigator: useRootNavigator,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    useSafeArea: useSafeArea,
    onTopActionBuilder: onTopActionBuilder,
    customCloseButtonBuilder: customCloseButtonBuilder,
  );
}

/// Show a BoardDateTimePicker modal bottom sheet.
///
/// The `context` argument is used to look up the [Navigator] and [Theme] for
/// the bottom sheet.
///
/// The `pickerType` argument is type of picker to display mode.
/// [date] or [time] or [datetime].
///
/// The `valueNotifier` is a parameter to detect changes and notify you immediately.
/// If it is changed in the picker, it is set to value so that the caller will
/// receive a change callback immediately.
/// With or without specification, pressing the check button in the
/// header will return the selected date.
///
/// The `initialDate` and `minimumDate` and `maximumDate` are parameters related to dates,
/// respectively. Initial value, minimum date, and maximum date.
///
/// The `options` is an option to customize the picker display.
///
/// The `breakpoint` is the width that switches between wide and standard display.
/// The `radius` is a rounded corner on both sides of the top in modal display.
///
/// `barrierColor`, `routeSettings`, `transitionAnimationController`, etc. are
/// the parameters that are specified in the normal modal bottom sheet,
/// so please check there for a description of the parameters.
Future<DateTime?> showBoardDateTimePicker<T extends BoardDateTimeCommonResult>({
  required BuildContext context,
  BoardDateTimeController? controller,
  required DateTimePickerType pickerType,
  ValueNotifier<DateTime>? valueNotifier,
  void Function(DateTime)? onChanged,
  void Function(T)? onResult,
  DateTime? initialDate,
  DateTime? minimumDate,
  DateTime? maximumDate,
  BoardDateTimeOptions? options,
  Widget? headerWidget,
  double breakpoint = 800,
  double radius = 24,
  Color? barrierColor,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = false,
  Widget Function(BuildContext context)? onTopActionBuilder,
  CloseButtonBuilder? customCloseButtonBuilder,
}) async {
  final opt = options ?? const BoardDateTimeOptions();

  return await showModalBottomSheet<DateTime?>(
    context: context,
    isScrollControlled: true,
    barrierColor: barrierColor,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    useRootNavigator: useRootNavigator,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    useSafeArea: useSafeArea,
    backgroundColor:
        opt.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
      ),
    ),
    clipBehavior: Clip.antiAlias,
    builder: (ctx) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
        ),
        child: _SingleBoardDateTimeWidget(
          controller: controller,
          breakpoint: breakpoint,
          pickerType: pickerType,
          initialDate: initialDate,
          minimumDate: minimumDate,
          maximumDate: maximumDate,
          options: opt,
          valueNotifier: valueNotifier,
          headerWidget: headerWidget,
          onChanged: onChanged,
          onResult: (val) => onResult?.call(val as T),
          onTopActionBuilder: onTopActionBuilder,
          customCloseButtonBuilder: customCloseButtonBuilder,
        ),
      );
    },
  );
}

class _SingleBoardDateTimeWidget extends AbstractBoardDatetimeWidget {
  const _SingleBoardDateTimeWidget({
    super.controller,
    super.breakpoint = 800,
    super.initialDate,
    super.minimumDate,
    super.maximumDate,
    required super.pickerType,
    super.options = const BoardDateTimeOptions(),
    super.valueNotifier,
    super.onChanged,
    super.onResult,
    required super.headerWidget,
    required super.onTopActionBuilder,
    required super.customCloseButtonBuilder,
  });

  @override
  State<_SingleBoardDateTimeWidget> createState() =>
      _SingleBoardDateTimeWidgetState();
}

class _SingleBoardDateTimeWidgetState<T extends AbstractBoardDatetimeWidget>
    extends State<T> {
  late DateTime date;

  @override
  void initState() {
    date = widget.initialDate ?? DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleBoardDateTimeContent(
      key: widget.controller?.boardKey,
      onChange: (val) {
        date = val;
        widget.valueNotifier?.value = val;
        widget.onChanged?.call(val);
      },
      onResult: widget.onResult,
      pickerType: widget.pickerType,
      options: widget.options,
      breakpoint: widget.breakpoint,
      initialDate: date,
      minimumDate: widget.minimumDate,
      maximumDate: widget.maximumDate,
      headerWidget: widget.headerWidget,
      modal: true,
      onCloseModal: () {
        Navigator.of(context).pop(date);
      },
      onUpdateByClose: (val, val2) {
        date = val;
        widget.valueNotifier?.value = val;
      },
      onTopActionBuilder: widget.onTopActionBuilder,
      customCloseButtonBuilder: widget.customCloseButtonBuilder,
      embeddedOptions: widget.embeddedOptions,
    );
  }
}

/// Show a BoardDateTimePicker modal bottom sheet.
///
/// The `context` argument is used to look up the [Navigator] and [Theme] for
/// the bottom sheet.
///
/// The `pickerType` argument is type of picker to display mode.
/// [date] or [time] or [datetime].
///
/// The `startDate` and `endDate` and `minimumDate` and `maximumDate` are parameters related to dates,
/// respectively. Start date, end date, minimum date, and maximum date.
///
/// The `options` is an option to customize the picker display.
///
/// The `breakpoint` is the width that switches between wide and standard display.
/// The `radius` is a rounded corner on both sides of the top in modal display.
///
/// `barrierColor`, `routeSettings`, `transitionAnimationController`, etc. are
/// the parameters that are specified in the normal modal bottom sheet,
/// so please check there for a description of the parameters.
///
/// `multiSelectionMaxDateBuilder`: Builder specifying the date range rules to be used in the case of multiple selections.
/// Called when a starting date is selected and
/// specifies the range of dates that can then be selected.
/// **[attention]** This parameter overrides the default `maximumDate` value specified.
Future<BoardDateTimeMultiSelection?>
    showBoardDateTimeMultiPicker<T extends BoardDateTimeCommonResult>({
  required BuildContext context,
  BoardMultiDateTimeController? controller,
  required DateTimePickerType pickerType,
  // ValueNotifier<DateTime>? valueNotifier,
  void Function(BoardDateTimeMultiSelection)? onChanged,
  void Function(T, T)? onResult,
  DateTime? startDate,
  DateTime? endDate,
  DateTime? minimumDate,
  DateTime? maximumDate,
  BoardDateTimeOptions? options,
  Widget? headerWidget,
  double breakpoint = 800,
  double radius = 24,
  Color? barrierColor,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  bool? showDragHandle,
  bool useSafeArea = false,
  Widget Function(BuildContext context)? onTopActionBuilder,
  CloseButtonBuilder? customCloseButtonBuilder,
  MultiSelectionMaxDateBuilder? multiSelectionMaxDateBuilder,
  MultiPickerDateRangeMode dateRangeMode = MultiPickerDateRangeMode.constrained,
}) async {
  final opt = options ?? const BoardDateTimeOptions();

  return await showModalBottomSheet<BoardDateTimeMultiSelection?>(
    context: context,
    isScrollControlled: true,
    barrierColor: barrierColor,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
    useRootNavigator: useRootNavigator,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    showDragHandle: showDragHandle,
    useSafeArea: useSafeArea,
    backgroundColor:
        opt.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
      ),
    ),
    clipBehavior: Clip.antiAlias,
    builder: (ctx) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
        ),
        child: _MultiBoardDateTimeWidget(
          controller: controller,
          breakpoint: breakpoint,
          pickerType: pickerType,
          startDate: startDate,
          endDate: endDate,
          minimumDate: minimumDate,
          maximumDate: maximumDate,
          options: opt,
          headerWidget: headerWidget,
          // valueNotifier: valueNotifier,
          onChanged: onChanged,
          onResult: (val1, val2) => onResult?.call(val1 as T, val2 as T),
          onTopActionBuilder: onTopActionBuilder,
          customCloseButtonBuilder: customCloseButtonBuilder,
          multiSelectionMaxDateBuilder: multiSelectionMaxDateBuilder,
          dateRangeMode: dateRangeMode,
        ),
      );
    },
  );
}

class _MultiBoardDateTimeWidget extends AbstractMultiBoardDatetimeWidget {
  const _MultiBoardDateTimeWidget({
    super.controller,
    super.breakpoint = 800,
    super.startDate,
    super.endDate,
    super.minimumDate,
    super.maximumDate,
    required super.pickerType,
    super.options = const BoardDateTimeOptions(),
    // this.valueNotifier,
    super.onChanged,
    super.onResult,
    super.headerWidget,
    super.onTopActionBuilder,
    super.customCloseButtonBuilder,
    super.multiSelectionMaxDateBuilder,
    super.dateRangeMode,
  });

  @override
  State<_MultiBoardDateTimeWidget> createState() =>
      _MultiBoardDateTimeWidgetState();
}

class _MultiBoardDateTimeWidgetState<T extends AbstractMultiBoardDatetimeWidget>
    extends State<T> {
  late BoardDateTimeMultiSelection selection;

  @override
  void initState() {
    if (widget.pickerType == DateTimePickerType.time) {
      final now = DateTime.now();
      selection = BoardDateTimeMultiSelection(
        start:
            widget.startDate ?? DateTime(now.year, now.month, now.day, 0, 0, 0),
        end: widget.endDate ??
            DateTime(now.year, now.month, now.day, 23, 59, 59),
      );
    } else {
      selection = BoardDateTimeMultiSelection(
        start: widget.startDate ?? DateTime.now(),
        end: widget.endDate ?? DateTime.now().add(const Duration(days: 1)),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime? minimumDate = widget.minimumDate;
    DateTime? maximumDate = widget.maximumDate;

    if (widget.pickerType == DateTimePickerType.time) {
      final now = DateTime.now();
      minimumDate ??= DateTime(now.year, now.month, now.day, 0, 0, 0);
      maximumDate ??= DateTime(now.year, now.month, now.day, 23, 59, 59);
    }

    return MultiBoardDateTimeContent(
      key: widget.controller?.boardKey,
      onChange: (start, end) {
        selection = BoardDateTimeMultiSelection(start: start, end: end);
        // widget.valueNotifier?.value = val;
        widget.onChanged?.call(selection);
      },
      onResult: widget.onResult,
      pickerType: widget.pickerType,
      options: widget.options,
      breakpoint: widget.breakpoint,
      startDate: selection.start,
      endDate: selection.end,
      minimumDate: minimumDate,
      maximumDate: maximumDate,
      headerWidget: widget.headerWidget,
      modal: true,
      onCloseModal: () {
        Navigator.of(context).pop(selection);
      },
      onUpdateByClose: (val, val2) {
        selection = BoardDateTimeMultiSelection(
          start: val,
          end: val2 ?? selection.end,
        );
      },
      onTopActionBuilder: widget.onTopActionBuilder,
      customCloseButtonBuilder: widget.customCloseButtonBuilder,
      multiSelectionMaxDateBuilder: widget.multiSelectionMaxDateBuilder,
      embeddedOptions: widget.embeddedOptions,
      dateRangeMode: widget.dateRangeMode,
    );
  }
}

class BoardDateTimeMultiSelection {
  final DateTime start;
  final DateTime end;

  BoardDateTimeMultiSelection({
    required this.start,
    required this.end,
  });

  @override
  String toString() {
    return 'BoardDateTimeMultiSelection {start: $start, end: $end}';
  }
}

/// ### BoardDateTimePickerWidget
///
/// A widget that displays a date and time picker.
///
/// This is used to embed the Picker functionality into a custom widget.
///
/// Currently, there is a possibility of layout errors due to size constraints,
/// so specifying the parent widget’s size is not recommended.
///
/// It is preferable to have a minimum width of 300 for proper display.
class BoardDateTimePickerWidget extends AbstractBoardDatetimeWidget {
  BoardDateTimePickerWidget({
    super.key,
    super.controller,
    super.breakpoint = 800,
    super.initialDate,
    super.minimumDate,
    super.maximumDate,
    required super.pickerType,
    super.options = const BoardDateTimeOptions(),
    super.valueNotifier,
    super.onChanged,
    super.onResult,
    super.headerWidget,
    super.onTopActionBuilder,
    super.customCloseButtonBuilder,
    bool fixedHeight = false,
  }) : super(
          embeddedOptions: EmbeddedOptions(
            embedded: true,
            fixedHeight: fixedHeight,
          ),
        );

  @override
  State<BoardDateTimePickerWidget> createState() =>
      _SingleBoardDateTimeWidgetState();
}

/// ### BoardDateTimePickerWidget
///
/// A widget that displays a date and time picker.
///
/// This is used to embed the Picker functionality into a custom widget.
///
/// Currently, there is a possibility of layout errors due to size constraints,
/// so specifying the parent widget’s size is not recommended.
///
/// It is preferable to have a minimum width of 300 for proper display.

class BoardDateTimePickerMultiWidget extends AbstractMultiBoardDatetimeWidget {
  BoardDateTimePickerMultiWidget({
    super.key,
    super.controller,
    super.breakpoint = 800,
    super.startDate,
    super.endDate,
    super.minimumDate,
    super.maximumDate,
    required super.pickerType,
    super.options = const BoardDateTimeOptions(),
    // this.valueNotifier,
    super.onChanged,
    super.onResult,
    super.headerWidget,
    super.onTopActionBuilder,
    super.customCloseButtonBuilder,
    super.multiSelectionMaxDateBuilder,
    bool fixedHeight = false,
  }) : super(
          embeddedOptions: EmbeddedOptions(
            embedded: true,
            fixedHeight: fixedHeight,
          ),
        );

  @override
  State<BoardDateTimePickerMultiWidget> createState() =>
      _MultiBoardDateTimeWidgetState();
}
