@interface ScannerCardViewController
- (_TtC23NewDeviceSetupUIService25ScannerCardViewController)initWithScannerEngine:(id)engine;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ScannerCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100006498();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ScannerCardViewController *)&v6 viewWillAppear:appearCopy];
  v5 = &v4[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannedCode];
  *v5 = 0;
  *(v5 + 1) = 0;

  [*&v4[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannerVC] start];
  [v4 resetConfirmationRing];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ScannerCardViewController *)&v5 viewDidDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC23NewDeviceSetupUIService25ScannerCardViewController_scannerVC] stop];
}

- (_TtC23NewDeviceSetupUIService25ScannerCardViewController)initWithScannerEngine:(id)engine
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end