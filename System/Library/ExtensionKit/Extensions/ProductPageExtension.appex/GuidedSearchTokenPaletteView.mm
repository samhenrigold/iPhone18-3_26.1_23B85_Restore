@interface GuidedSearchTokenPaletteView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation GuidedSearchTokenPaletteView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10024F120();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(GuidedSearchTokenPaletteView *)selfCopy traitCollection];

  v6 = 60.0;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect);
  if (v9)
  {
    v10 = *&self->onSelect[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect];
    selfCopy = self;
    sub_10001CE50(v9, v10);
    v12 = sub_10075E07C();
    v9(v12);
    sub_1000167E0(v9, v10);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v13 = *(v6 + 8);
    selfCopy2 = self;
    v13(v8, v5);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10024FF24(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  selfCopy = self;
  sub_10025004C(&v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
    [viewCopy bounds];
    v15 = sub_100250938(&v24, viewCopy, v13, v14);
    v17 = v16;
    v27 = v24;
    sub_10000CFBC(&v27, &unk_100943470, &qword_10078C740);
    v28 = v25;
    sub_1000B8AFC(&v28);
  }

  else
  {
    v15 = 0.0;
    v17 = 0.0;
  }

  (*(v8 + 8))(v10, v7);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  traitCollection = [viewCopy traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {

    v8 = 20.0;
  }

  else
  {
    [viewCopy bounds];
    Width = CGRectGetWidth(v13);

    v8 = 52.0;
    if (Width <= 834.0)
    {
      v8 = 34.0;
    }
  }

  v10 = 6.0;
  v11 = 12.0;
  v12 = v8;
  result.right = v12;
  result.bottom = v11;
  result.left = v8;
  result.top = v10;
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1002520F8(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver))
  {
    scrollCopy = scroll;
    selfCopy = self;

    v5.super.super.super.isa = scrollCopy;
    sub_10076811C(v5);
  }
}

@end