@interface DustCloudScannerCardViewController
- (_TtC14AppleIDSetupUI34DustCloudScannerCardViewController)initWithScannerEngine:(id)engine;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DustCloudScannerCardViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DustCloudScannerCardViewController();
  v4 = v5.receiver;
  [(PRXScannerViewController *)&v5 viewWillAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine] start];
  [v4 resetConfirmationRing];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine);
  selfCopy = self;
  [v4 stop];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DustCloudScannerCardViewController();
  [(DustCloudScannerCardViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (_TtC14AppleIDSetupUI34DustCloudScannerCardViewController)initWithScannerEngine:(id)engine
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end