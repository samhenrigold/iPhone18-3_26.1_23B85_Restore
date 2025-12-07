@interface AdaptivePresentationControllerDelegate
- (_TtC13PCViewService38AdaptivePresentationControllerDelegate)init;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
@end

@implementation AdaptivePresentationControllerDelegate

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  PassthroughSubject.send(_:)();

  swift_unknownObjectRelease();
}

- (_TtC13PCViewService38AdaptivePresentationControllerDelegate)init
{
  v3 = OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate_subject;
  sub_1000056EC(&qword_1000DB420, &unk_1000928A0);
  swift_allocObject();
  *(&self->super.isa + v3) = PassthroughSubject.init()();
  *(&self->super.isa + OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate____lazy_storage___publisher) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AdaptivePresentationControllerDelegate();
  return [(AdaptivePresentationControllerDelegate *)&v5 init];
}

@end