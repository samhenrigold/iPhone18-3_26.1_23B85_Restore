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
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer);
  selfCopy = self;
  [v2 removeTarget:selfCopy action:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  [(AppEventSearchResultCollectionViewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10076FD84();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  if (v3)
  {
    v4 = *&self->lockupView[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
    selfCopy = self;
    v6 = sub_10000827C(v3, v4);
    v3(v6);

    sub_10001F63C(v3, v4);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1007723C8(touchCopy);

  return v9;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1007703C4(selfCopy);
}

@end