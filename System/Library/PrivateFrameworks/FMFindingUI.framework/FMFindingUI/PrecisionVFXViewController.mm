@interface PrecisionVFXViewController
- (_TtC11FMFindingUI26PrecisionVFXViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PrecisionVFXViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24A523EC8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_24A524854();
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for PrecisionVFXViewController(0);
  [(PrecisionVFXViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24A524A20(disappear);
}

- (_TtC11FMFindingUI26PrecisionVFXViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end