@interface CosmeticAssessmentWatermarkScanViewController
- (_TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)updateWatermarkPayload;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CosmeticAssessmentWatermarkScanViewController

- (void)loadView
{
  selfCopy = self;
  sub_1000E39C4();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000E3B04(v2);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000E4064(appear, v4);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000E42B4(disappear, v4);
}

- (void)updateWatermarkPayload
{
  selfCopy = self;
  sub_1000E48C4();
  v4 = v3;
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView);
  v13 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;
  [v5 setVerificationCode:v13];
}

- (_TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end