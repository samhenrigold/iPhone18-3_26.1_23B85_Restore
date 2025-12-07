@interface PASVSScannerCardViewController
- (_TtC14PASViewService30PASVSScannerCardViewController)initWithScannerEngine:(id)engine;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PASVSScannerCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000E8FC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PASVSScannerCardViewController();
  v4 = v5.receiver;
  [(PASVSScannerCardViewController *)&v5 viewWillAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC] start];
  [v4 resetConfirmationRing];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PASVSScannerCardViewController();
  v4 = v5.receiver;
  [(PASVSScannerCardViewController *)&v5 viewDidDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC] stop];
}

- (_TtC14PASViewService30PASVSScannerCardViewController)initWithScannerEngine:(id)engine
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end