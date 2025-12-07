@interface BiographyView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityListStrings;
- (NSArray)accessibilityStackViews;
- (_TtC16MusicApplication13BiographyView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BiographyView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_160360();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BiographyView();
  v2 = v5.receiver;
  [(BiographyView *)&v5 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler + 8];

    v3(v2);
    sub_17654(v3, v4);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1606B4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for BiographyView();
  v4 = v8.receiver;
  changeCopy = change;
  [(BiographyView *)&v8 traitCollectionDidChange:changeCopy];
  [v4 setNeedsLayout];
  v6 = *&v4[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
  if (v6)
  {
    v7 = *&v4[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler + 8];

    v6(v4);
    sub_17654(v6, v7);
  }
}

- (NSArray)accessibilityStackViews
{
  sub_160C40();
  type metadata accessor for TextStackView();
  v2.super.isa = sub_AB9740().super.isa;

  return v2.super.isa;
}

- (NSArray)accessibilityListStrings
{
  selfCopy = self;
  sub_16114C();

  v3.super.isa = sub_AB9740().super.isa;

  return v3.super.isa;
}

- (_TtC16MusicApplication13BiographyView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end