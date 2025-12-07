@interface CaptureFrameReceiverObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CaptureFrameReceiverObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  v9 = (self + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v10 = *v9;

  v10(v11);

  sub_100011940(v12, &qword_100068EB0, &qword_100047EB0);
}

@end