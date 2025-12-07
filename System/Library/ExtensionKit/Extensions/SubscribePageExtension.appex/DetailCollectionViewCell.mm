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
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = *&self->previousTitleTextColor[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_selectionHandler];
    selfCopy = self;
    v5 = sub_10001B5AC(v2, v3);
    v2(v5);

    sub_1000164A8(v2, v3);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002FC5E4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1002FCEF0(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTapWithAccessoryView:(id)view
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v6 = *&self->previousTitleTextColor[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction];
    v9[3] = sub_100016C60(0, &qword_100928A80, UIControl_ptr);
    v9[0] = view;
    viewCopy = view;
    selfCopy = self;
    sub_10001B5AC(v3, v6);
    v3(v9);
    sub_1000164A8(v3, v6);
    sub_10000C8CC(v9, &unk_100923520, &qword_1007A5A70);
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002FDA50();
}

@end