@interface CollectionView
- (BOOL)_scrollToTopIfPossible:(BOOL)possible;
- (_TtC9SeymourUI14CollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)layoutSubviews;
@end

@implementation CollectionView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CollectionView();
  v2 = v5.receiver;
  [(CollectionView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate + 8];

    v3(v2);

    sub_20B583ECC(v3, v4);
  }

  else
  {
  }
}

- (BOOL)_scrollToTopIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  selfCopy = self;
  LOBYTE(possibleCopy) = sub_20BD12948(possibleCopy);

  return possibleCopy & 1;
}

- (_TtC9SeymourUI14CollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider);
  *v9 = 0;
  v9[1] = 0;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CollectionView();
  return [(CollectionView *)&v12 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

@end