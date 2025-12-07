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
    sub_21D2C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  v9 = (self + OBJC_IVAR____TtC25RPControlCenterModuleHQLR28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v10 = *v9;

  v10(v11);

  sub_1BF9C(v12, &qword_37A00, &qword_25968);
}

@end