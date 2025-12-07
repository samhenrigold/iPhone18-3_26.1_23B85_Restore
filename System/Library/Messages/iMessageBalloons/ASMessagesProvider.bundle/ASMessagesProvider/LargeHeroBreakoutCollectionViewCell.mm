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
  sub_291908();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_291D54();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(LargeHeroBreakoutCollectionViewCell *)&v6 traitCollectionDidChange:changeCopy];
  sub_28FA90();
}

- (void)didTapActionButton
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider35LargeHeroBreakoutCollectionViewCell_detailsView) + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler;
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 1);
    selfCopy = self;
    v5 = sub_F714(v3, v4);
    v3(v5);
    sub_F704(v3, v4);
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_2921BC(attributesCopy);
}

@end