@interface AccountDetailCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didTapWithAccessoryView:(id)view;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection;
- (void)prepareForReuse;
- (void)wasTapped;
@end

@implementation AccountDetailCollectionViewCell

- (void)wasTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_selectionHandler);
  if (v2)
  {
    v3 = *&self->titleLabel[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_selectionHandler];
    selfCopy = self;
    v5 = sub_10001B5AC(v2, v3);
    v2(v5);

    sub_1000164A8(v2, v3);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005A7034();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1005A83F4(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  traitCollection = [(AccountDetailCollectionViewCell *)selfCopy traitCollection];
  v7 = sub_100753804() & 1;

  if (v7 != (sub_100753804() & 1))
  {
    sub_1005A9124();
  }
}

- (void)didTapWithAccessoryView:(id)view
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryAction);
  if (v3)
  {
    v6 = *&self->titleLabel[OBJC_IVAR____TtC22SubscribePageExtension31AccountDetailCollectionViewCell_accessoryAction];
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
  sub_1005A9DEC();
}

@end