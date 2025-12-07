@interface AllHealthDataViewController
- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCollectionViewLayout:(id)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation AllHealthDataViewController

- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation) = 1;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA47C4F4();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  swift_beginAccess();
  v8 = *(&self->super.super.super.super.super.isa + v7);
  selfCopy = self;
  sub_1BA4A71E8();
  v12 = v8;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v10 = type metadata accessor for AllHealthDataViewController();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(CompoundDataSourceCollectionViewController *)&v11 viewIsAppearing:appearingCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AllHealthDataViewController();
  v4 = v7.receiver;
  [(CompoundDataSourceCollectionViewController *)&v7 viewDidAppear:appearCopy];
  userActivity = [v4 userActivity];
  if (userActivity)
  {
    v6 = userActivity;
    [v4 submitUserActivityForRestoration_];
  }
}

- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end