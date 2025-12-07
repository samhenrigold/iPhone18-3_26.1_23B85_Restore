@interface PlaylistPicker.ViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtCO5Music14PlaylistPicker14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PlaylistPicker.ViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100468D9C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10046B7A8(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10046B8A4(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10046BAC8(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10046BBD0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8 = *&size.width;
  v9 = *&size.height;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100477184(v8, v9, 0);
  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  [(PlaylistPicker.ViewController *)&v11 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047AAB4(self + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v6, type metadata accessor for PlaylistPicker.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  viewCopy = view;
  selfCopy = self;
  sub_10047AB30(v6, type metadata accessor for PlaylistPicker.Mode);
  v10 = &unk_10109B360;
  if (EnumCaseMultiPayload != 1)
  {
    v10 = &unk_10109B338;
  }

  v11 = *v10;

  return v11;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10047A378(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10046BF68(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  sub_10010FC20(&qword_101191468, &qword_100ECE470);
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_headerRegistration;
  swift_beginAccess();
  sub_1000089F8(self + v13, v8, &qword_101191468, &qword_100ECE470);
  v14 = sub_10010FC20(&unk_101191158, &qword_100ECE278);
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v8, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    viewCopy = view;
    selfCopy = self;
    v19 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

    (*(v10 + 8))(v12, v9);
    (*(v15 + 8))(v8, v14);

    return v19;
  }

  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_10047A6E0(viewCopy);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10046CD80(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = (self + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v8 = *&self->containerSource[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText];
  *v6 = v5;
  v6[1] = v9;
  selfCopy = self;
  sub_10046DE00(v7, v8);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v5 = *&self->containerSource[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  selfCopy = self;
  sub_10046DE00(v4, v5);
}

- (_TtCO5Music14PlaylistPicker14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end