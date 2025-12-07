@interface ItemizedTextListView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ItemizedTextListView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2AFAAC(change);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ItemizedTextListView();
  v2 = v5.receiver;
  [(ItemizedTextListView *)&v5 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler + 8];

    v3(v2);
    sub_17654(v3, v4);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_2AFD34(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2B059C(selfCopy);
}

@end