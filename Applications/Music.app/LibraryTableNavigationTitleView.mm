@interface LibraryTableNavigationTitleView
- (CGSize)intrinsicContentSize;
- (_TtC5Music31LibraryTableNavigationTitleView)initWithCoder:(id)coder;
- (_TtC5Music31LibraryTableNavigationTitleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation LibraryTableNavigationTitleView

- (_TtC5Music31LibraryTableNavigationTitleView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC5Music31LibraryTableNavigationTitleView_filterButton) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v10[0].receiver = self;
  v10[0].super_class = type metadata accessor for LibraryTableNavigationTitleView();
  v2 = v10[0].receiver;
  [(objc_super *)v10 layoutSubviews];
  v3 = OBJC_IVAR____TtC5Music31LibraryTableNavigationTitleView_filterButton;
  v4 = *&v2[OBJC_IVAR____TtC5Music31LibraryTableNavigationTitleView_filterButton];
  [v2 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v7 = *&v2[v3];
  CGRect.centeringAlong(axes:in:)(0.0, 0.0, v8, v9);
  memset(&v10[1], 0, 32);
  v11 = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  [v7 setFrame:?];
}

- (_TtC5Music31LibraryTableNavigationTitleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end