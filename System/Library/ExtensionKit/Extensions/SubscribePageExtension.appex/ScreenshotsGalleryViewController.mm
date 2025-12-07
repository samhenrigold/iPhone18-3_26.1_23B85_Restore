@interface ScreenshotsGalleryViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)swipeStateChangedOn:(id)on;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ScreenshotsGalleryViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10019CA90(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10019CCAC(v2);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10019D1DC(change, v6);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8.n128_f64[0] = width;
  sub_10019D310(coordinator, v8, height);
  swift_unknownObjectRelease();
}

- (void)swipeStateChangedOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  if ([onCopy state] == 3)
  {
    [(ScreenshotsGalleryViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks);
  if (v4 >> 62)
  {
    return sub_100754664();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10019D78C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_10019E6EC(cellCopy, v15);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100741774();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex;
  if (v12 == *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex))
  {

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    isa = sub_100741704().super.isa;
    [viewCopy scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];

    v15 = sub_100741774();
    (*(v7 + 8))(v9, v6);
    *(&selfCopy->super.super.super.super.super.isa + v13) = v15;
  }
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10019ECA8(viewCopy, layoutCopy, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_10019F394(viewCopy, v15);
  v17 = v16;
  v19 = v18;

  (*(v9 + 8))(v11, v8);
  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_10019DEC8(deceleratingCopy);
}

@end