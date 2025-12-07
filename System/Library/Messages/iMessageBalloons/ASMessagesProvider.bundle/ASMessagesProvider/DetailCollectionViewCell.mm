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
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = *&self->previousTitleTextColor[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_selectionHandler];
    selfCopy = self;
    v5 = sub_F714(v2, v3);
    v2(v5);

    sub_F704(v2, v3);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_340310();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_340C1C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTapWithAccessoryView:(id)view
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v6 = *&self->previousTitleTextColor[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryAction];
    v10[3] = sub_BE70(0, &unk_948000, UIControl_ptr);
    v10[0] = view;
    viewCopy = view;
    selfCopy = self;
    v9 = sub_F714(v3, v6);
    v3(v10, v9);
    sub_F704(v3, v6);
    sub_10A2C(v10, &unk_93FBD0, &qword_77DFA0);
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_34177C();
}

@end