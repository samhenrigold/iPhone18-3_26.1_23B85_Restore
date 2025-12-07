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
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = *&self->previousTitleTextColor[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_selectionHandler];
    selfCopy = self;
    v5 = sub_10001CE50(v2, v3);
    v2(v5);

    sub_1000167E0(v2, v3);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003AD61C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1003ADF28(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTapWithAccessoryView:(id)view
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v6 = *&self->previousTitleTextColor[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction];
    v9[3] = sub_100016F40(0, &unk_10094BB70, UIControl_ptr);
    v9[0] = view;
    viewCopy = view;
    selfCopy = self;
    sub_10001CE50(v3, v6);
    v3(v9);
    sub_1000167E0(v3, v6);
    sub_10000CFBC(v9, &unk_1009434C0, &qword_100783F60);
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003AEA88();
}

@end