@interface AXSASecureControllerImplementation
- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate;
- (void)setDelegate:(id)delegate;
- (void)startListening;
- (void)startListeningOnQueue:(id)queue;
- (void)stopListening;
@end

@implementation AXSASecureControllerImplementation

- (_TtP18AXSoundDetectionUI34AXSDSoundActionsControllerDelegate_)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)startListening
{
  selfCopy = self;
  sub_23D6675F8();
}

- (void)startListeningOnQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_23D6675F8();
}

- (void)stopListening
{
  selfCopy = self;
  sub_23D664FBC();
}

@end