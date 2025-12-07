@interface ShelfPageCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didEndDisplayingItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionViewDidScroll:(id)scroll;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ShelfPageCollectionViewController

- (void)loadView
{
  selfCopy = self;
  sub_68938(selfCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_68A18(selfCopy);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_68A98(selfCopy);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_68BB4(appearCopy, &selRef_viewDidAppear_, 1);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_68BB4(disappearCopy, &selRef_viewDidDisappear_, 0);
}

- (_TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_8F5F4();
  }

  bundleCopy = bundle;
  sub_6A290();
}

- (void)collectionViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_6B3FC(scrollCopy);
}

- (void)collectionView:(id)view didEndDisplayingItemAtIndexPath:(id)path
{
  v6 = sub_8E194();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E154();
  viewCopy = view;
  selfCopy = self;
  sub_6B610(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_8E194();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E154();
  viewCopy = view;
  selfCopy = self;
  sub_6BE80(selfCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_8E194();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E154();
  viewCopy = view;
  selfCopy = self;
  sub_6D5C0(viewCopy, v9);
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

@end