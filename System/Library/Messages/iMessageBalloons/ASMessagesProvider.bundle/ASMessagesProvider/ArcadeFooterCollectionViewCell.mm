@interface ArcadeFooterCollectionViewCell
- (void)buttonTapped;
- (void)didTapFootnoteWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation ArcadeFooterCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_417324();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock);
  if (v2)
  {
    v3 = *&self->riverView[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock];
    selfCopy = self;
    v5 = sub_F714(v2, v3);
    v2(v5);

    sub_F704(v2, v3);
  }
}

- (void)didTapFootnoteWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_419134();
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v6 = sub_769640();
  eventCopy = event;
  selfCopy = self;
  sub_417CA8(v6, event);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  sub_769640();
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted) = 0;
  v7 = qword_93C420;
  eventCopy = event;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel) setTextColor:qword_946630];
  isa = sub_769630().super.isa;

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  [(ArcadeFooterCollectionViewCell *)&v11 touchesEnded:isa withEvent:eventCopy];
}

@end