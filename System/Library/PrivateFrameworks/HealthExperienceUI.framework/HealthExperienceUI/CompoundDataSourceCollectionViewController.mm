@interface CompoundDataSourceCollectionViewController
- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)observedTraitsDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CompoundDataSourceCollectionViewController

- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  v5 = sub_1B9F0F3F4(layout);

  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B9F23808();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1B9F53348(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v4 = v6.receiver;
  v5 = [(CompoundDataSourceCollectionViewController *)&v6 viewDidAppear:appearCopy];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x108))(v5);
}

- (void)observedTraitsDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1B9F46930(environment, collectionCopy);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v2 = v5.receiver;
  [(CompoundDataSourceCollectionViewController *)&v5 viewDidLayoutSubviews];
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    traitCollection = [v2 traitCollection];
    sub_1BA4A7368();

    sub_1BA4A7248();
  }
}

- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  CompoundDataSourceCollectionViewController.collectionView(_:didSelectItemAt:)(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  v14 = _s18HealthExperienceUI42CompoundDataSourceCollectionViewControllerC010collectionH0_33contextMenuConfigurationForItemAt5pointSo09UIContextlM0CSgSo012UICollectionH0C_10Foundation9IndexPathVSo7CGPointVtF_0(viewCopy);

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v32 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v32 - v22;
  sub_1BA4A1918();
  sub_1BA4A1918();
  sub_1BA4A1918();
  selfCopy = self;
  v25 = *sub_1B9F23FB0();
  v26 = (*(v25 + 360))(v19, v11);

  v27 = *(v8 + 8);
  v27(v15, v7);
  if (v26)
  {
    v28 = v19;
  }

  else
  {
    v28 = v11;
  }

  if (v26)
  {
    v29 = v11;
  }

  else
  {
    v29 = v19;
  }

  v27(v28, v7);
  (*(v8 + 32))(v23, v29, v7);
  v30 = sub_1BA4A18F8();
  v27(v23, v7);

  return v30;
}

@end