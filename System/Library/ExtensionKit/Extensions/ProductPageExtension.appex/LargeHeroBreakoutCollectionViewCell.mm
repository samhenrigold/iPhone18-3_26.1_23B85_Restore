@interface LargeHeroBreakoutCollectionViewCell
- (void)applyLayoutAttributes:(id)attributes;
- (void)didTapActionButton;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LargeHeroBreakoutCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10022B3E0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100228B5C();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(LargeHeroBreakoutCollectionViewCell *)&v6 traitCollectionDidChange:changeCopy];
  sub_100229568();
}

- (void)didTapActionButton
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView) + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler;
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 1);
    selfCopy = self;
    v5 = sub_10001CE50(v3, v4);
    v3(v5);
    sub_1000167E0(v3, v4);
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_10022B97C(attributesCopy);
}

@end