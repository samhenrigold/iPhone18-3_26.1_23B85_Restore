@interface DataScannerViewController
- (void)dealloc;
- (void)didEnterBackground;
- (void)loadView;
- (void)onPinch:(id)pinch;
- (void)onTap:(id)tap;
- (void)removeFromParentViewController;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willEnterForeground;
@end

@implementation DataScannerViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DataScannerViewController();
  [(DataScannerViewController *)&v6 dealloc];
}

- (void)didEnterBackground
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  selfCopy = self;
  isProcessing = [v4 isProcessing];
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground) = isProcessing;
  [*(&self->super.super.super.isa + v3) stopRunning];
}

- (void)willEnterForeground
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  selfCopy = self;
  [v4 startRunning];
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground) == 1)
  {
    [*(&self->super.super.super.isa + v3) startProcessing];
  }
}

- (void)loadView
{
  selfCopy = self;
  sub_23B2E4E74();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23B2E5254();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23B2E5554(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DataScannerViewController();
  v4 = v7.receiver;
  [(DataScannerViewController *)&v7 viewDidDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] stopRunning];
  [*&v4[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] hideGuidance];
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
  [*&v4[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] invalidate];
  v6 = *&v4[v5];
  *&v4[v5] = 0;
}

- (void)removeFromParentViewController
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DataScannerViewController();
  v2 = v3.receiver;
  [(DataScannerViewController *)&v3 removeFromParentViewController];
  [*&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] stopRunning];
}

- (void)onTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_23B2E5F90(tapCopy);
}

- (void)onPinch:(id)pinch
{
  pinchCopy = pinch;
  selfCopy = self;
  sub_23B2E6560(pinchCopy);
}

@end