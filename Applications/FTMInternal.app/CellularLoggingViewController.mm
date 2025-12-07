@interface CellularLoggingViewController
- (_TtC11FTMInternal29CellularLoggingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated;
- (void)didChangedChunkFileSliderValue:(id)value;
- (void)didChangedMaxLogsSlider:(id)slider;
- (void)didTapConfig;
- (void)didTapReset;
- (void)didTapStart;
- (void)didTapStop;
- (void)endAppearanceTransition;
- (void)sliderValueChangedSinope:(id)sinope;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CellularLoggingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10027D5B0();
}

- (void)beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated
{
  animatedCopy = animated;
  transitionCopy = transition;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CellularLoggingViewController();
  [(CellularLoggingViewController *)&v6 beginAppearanceTransition:transitionCopy animated:animatedCopy];
}

- (void)endAppearanceTransition
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CellularLoggingViewController();
  [(CellularLoggingViewController *)&v2 endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CellularLoggingViewController();
  v4 = v5.receiver;
  [(CellularLoggingViewController *)&v5 viewWillDisappear:disappearCopy];
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 154) == 1)
  {
    sub_10027E0C4();
  }
}

- (void)didTapStart
{
  selfCopy = self;
  sub_10027D8EC();
}

- (void)didTapStop
{
  v2 = qword_100375018;
  selfCopy = self;
  if (v2 != -1)
  {
    v8 = selfCopy;
    swift_once();
    selfCopy = v8;
  }

  if (*(qword_100382500 + 154) == 1)
  {
    v7 = selfCopy;
    v4 = sub_10027CD44();
    sub_1001D54B4();

    if (qword_100374F90 != -1)
    {
      swift_once();
    }

    v5 = qword_100382478;
    v6 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("CellularLoggingViewController - didTapStop", 42, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);
    sub_10027E0C4();
    selfCopy = v7;
  }
}

- (void)didTapReset
{
  selfCopy = self;
  sub_10027E5A0();
}

- (void)didTapConfig
{
  selfCopy = self;
  sub_10027EA60();
}

- (void)sliderValueChangedSinope:(id)sinope
{
  sinopeCopy = sinope;
  selfCopy = self;
  sub_10027EBA8(sinopeCopy, v5);
}

- (void)didChangedChunkFileSliderValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  sub_10027EE00(valueCopy);
}

- (void)didChangedMaxLogsSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  sub_10027F0F4(sliderCopy);
}

- (_TtC11FTMInternal29CellularLoggingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100280D60(v5, v7, bundle);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 60.0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  if (!v6)
  {
    return 0;
  }

  if (v6 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100281FB8(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_100282C78(0);
  swift_unknownObjectRetain();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_100282C78(1);
  swift_unknownObjectRetain();

  return v6;
}

@end