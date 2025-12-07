@interface TickerViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC11FTMInternal20TickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002060F0();
}

- (void)viewDidAppear:(BOOL)appear
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numberValue);
  selfCopy = self;
  sub_1002065E0(v3, selfCopy, v4);
}

- (_TtC11FTMInternal20TickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10020730C();
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  selfCopy = self;

  v8 = String.count.getter();

  if (__OFSUB__(v8, 4))
  {
    __break(1u);
  }

  else
  {
    v13 = (v8 - 4) * 32.0 + 68.0;
    layer = [viewCopy layer];
    [layer frame];
    v16 = v15;

    v10 = (v16 - v13) * 0.5;
    v9 = 0.0;
    v11 = 0.0;
    v12 = v10;
  }

  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;

  v5 = String.count.getter();

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100206D50(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end