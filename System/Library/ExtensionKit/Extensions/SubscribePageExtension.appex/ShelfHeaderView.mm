@interface ShelfHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateConfiguration;
@end

@implementation ShelfHeaderView

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10005D2B0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  traitCollection = [(ShelfHeaderView *)selfCopy traitCollection];
  v11 = ShelfHeaderLayout.measure(toFit:with:)(traitCollection, width, height);
  v13 = v12;

  sub_100066518(v8, type metadata accessor for ShelfHeaderLayout);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(ShelfHeaderView *)&v10 layoutSubviews];
  v8 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_containerView);
  [(ShelfHeaderView *)selfCopy bounds];
  [v8 setFrame:?];
  [(ShelfHeaderView *)selfCopy bounds];
  traitCollection = [(ShelfHeaderView *)selfCopy traitCollection];
  ShelfHeaderLayout.place(at:with:)(traitCollection);

  sub_100066518(v6, type metadata accessor for ShelfHeaderLayout);
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_10005C2EC();
}

@end