@interface InformativeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InformativeView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_22EC28(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_22F074(selfCopy);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InformativeView();
  v2 = v5.receiver;
  [(InformativeView *)&v5 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler + 8];

    v3(v2);
    sub_17654(v3, v4);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_22FB28(change);
}

@end