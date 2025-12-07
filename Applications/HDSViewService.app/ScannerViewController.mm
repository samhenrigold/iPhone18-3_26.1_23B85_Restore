@interface ScannerViewController
- (_TtC14HDSViewService21ScannerViewController)initWithContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ScannerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100055BDC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ScannerViewController(0);
  v4 = v5.receiver;
  [(ScannerViewController *)&v5 viewWillAppear:appearCopy];
  sub_10008C8D4();
  sub_10006EB18();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ScannerViewController(0);
  v4 = v5.receiver;
  [(ScannerViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_10006EC24();
}

- (_TtC14HDSViewService21ScannerViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end