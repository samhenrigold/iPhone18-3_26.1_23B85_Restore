@interface AllHighlightsForExperienceViewController
- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCollectionViewLayout:(id)layout;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation AllHighlightsForExperienceViewController

- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AllHighlightsForExperienceViewController();
  v2 = v7.receiver;
  [(CompoundDataSourceCollectionViewController *)&v7 viewDidLoad];
  collectionView = [v2 collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    v5 = sub_1BA4A6AE8();
    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x138);
  selfCopy = self;
  v7(&v13);
  v9 = v13;
  sub_1BA4A71E8();
  v12 = v9;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v10 = type metadata accessor for AllHighlightsForExperienceViewController();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(CompoundDataSourceCollectionViewController *)&v11 viewIsAppearing:appearingCopy];
}

- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end