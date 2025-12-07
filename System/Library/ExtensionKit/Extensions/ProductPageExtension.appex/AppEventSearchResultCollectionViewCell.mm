@interface AppEventSearchResultCollectionViewCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventSearchResultCollectionViewCell

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer);
  selfCopy = self;
  [v2 removeTarget:selfCopy action:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  [(AppEventSearchResultCollectionViewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100227BA0();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  if (v3)
  {
    v4 = *&self->lockupView[OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
    selfCopy = self;
    v6 = sub_10001CE50(v3, v4);
    v3(v6);

    sub_1000167E0(v3, v4);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1002289B4(touchCopy);

  return v9;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002281E0(selfCopy);
}

@end