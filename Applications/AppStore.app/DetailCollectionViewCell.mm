@interface DetailCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didTapWithAccessoryView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)wasTapped;
@end

@implementation DetailCollectionViewCell

- (void)wasTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = *&self->previousTitleTextColor[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_selectionHandler];
    selfCopy = self;
    v5 = sub_10000827C(v2, v3);
    v2(v5);

    sub_10001F63C(v2, v3);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002B9594();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1002B9EA0(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTapWithAccessoryView:(id)view
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v6 = *&self->previousTitleTextColor[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction];
    v9[3] = sub_100005744(0, &unk_100984370, UIControl_ptr);
    v9[0] = view;
    viewCopy = view;
    selfCopy = self;
    sub_10000827C(v3, v6);
    v3(v9);
    sub_10001F63C(v3, v6);
    sub_10002B894(v9, &unk_1009711D0, &unk_1007B1A10);
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002BAA00();
}

@end