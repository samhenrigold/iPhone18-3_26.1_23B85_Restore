@interface HPSSpatialProfileSingleStepBottomContainer
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)string;
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithFrame:(CGRect)frame;
- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep;
- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep animateInAlongSide:(id *)side animateOutAlongSide:(id *)alongSide animatedCompletion:(id)completion;
- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep completionAction:(id)action;
- (void)showContinueButton:(BOOL)button;
- (void)updateContinueButtonActionWithTarget:(id)target selector:(SEL)selector;
- (void)updateContinueButtonTitleWithTitle:(id)title;
@end

@implementation HPSSpatialProfileSingleStepBottomContainer

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)string
{
  v3 = _Block_copy(string);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_2511F4BE0(sub_2511F9CD0, v4);
}

- (void)showContinueButton:(BOOL)button
{
  selfCopy = self;
  sub_2511F4E70(button);
}

- (void)updateContinueButtonActionWithTarget:(id)target selector:(SEL)selector
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2511F4F58(target, selector);
  swift_unknownObjectRelease();
}

- (void)updateContinueButtonTitleWithTitle:(id)title
{
  v4 = sub_25121179C();
  v6 = v5;
  selfCopy = self;
  sub_2511F50B4(v4, v6);
}

- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep
{
  v4 = *&toStep;
  v5 = *&step;
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x138);
  selfCopy = self;
  v6(v5, v4, 0, 0);
}

- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep completionAction:(id)action
{
  v5 = *&toStep;
  v6 = *&step;
  v8 = _Block_copy(action);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_2511C68F0;
  }

  else
  {
    v9 = 0;
  }

  v10 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x140);
  selfCopy = self;
  v10(v6, v5, 0, 0, v8, v9);

  sub_251146DF4(v8, v9);
}

- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep animateInAlongSide:(id *)side animateOutAlongSide:(id *)alongSide animatedCompletion:(id)completion
{
  v10 = *&step;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_2511C65B0;
  }

  else
  {
    v13 = 0;
  }

  selfCopy = self;
  sub_2511F5440(v10, toStep, side, alongSide, v12, v13);
  sub_251146DF4(v12, v13);
}

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v5 = type metadata accessor for HPSSpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) initWithFrame_];
  v6 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(v5) initWithFrame_];
  v7 = self + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection;
  *v7 = 0;
  v7[8] = 1;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end