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
  sub_10042BF88();
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

  sub_10042FB00(v8, type metadata accessor for ShelfHeaderLayout);
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
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = self;
  v18.super_class = ObjectType;
  selfCopy = self;
  [(ShelfHeaderView *)&v18 layoutSubviews];
  v8 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView);
  [(ShelfHeaderView *)selfCopy bounds];
  [v8 setFrame:?];
  [(ShelfHeaderView *)selfCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  traitCollection = [(ShelfHeaderView *)selfCopy traitCollection];
  ShelfHeaderLayout.place(at:with:)(traitCollection, v10, v12, v14, v16);

  sub_10042FB00(v6, type metadata accessor for ShelfHeaderLayout);
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_10042AFC4();
}

@end