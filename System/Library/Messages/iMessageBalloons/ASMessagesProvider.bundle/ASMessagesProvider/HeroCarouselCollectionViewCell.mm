@interface HeroCarouselCollectionViewCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)applyLayoutAttributes:(id)attributes;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation HeroCarouselCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21CBF4();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_21CD58();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_21CFC8(attributesCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  if (sub_76A1C0())
  {
    view = [touchCopy view];

    if (!view)
    {
      return 0;
    }

    type metadata accessor for HeroCarouselItemView();
    v11 = swift_dynamicCastClass() != 0;
    selfCopy = view;
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)handleTap:(id)tap
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *&self->carouselView[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
    v5 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl);
    selfCopy = self;
    currentPage = [v5 currentPage];
    v3(currentPage);

    sub_F704(v3, v4);
  }
}

@end