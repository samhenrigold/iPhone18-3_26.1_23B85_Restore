@interface CaptureSessionRecorder
- (_TtC10VoiceMemos22CaptureSessionRecorder)init;
- (void)captureOutput:(id)output didFinishRecordingToOutputFileAtURL:(id)l fromConnections:(id)connections error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)handleRuntimeErrorWithNotification:(id)notification;
@end

@implementation CaptureSessionRecorder

- (void)handleRuntimeErrorWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001865CC(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC10VoiceMemos22CaptureSessionRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)output didFinishRecordingToOutputFileAtURL:(id)l fromConnections:(id)connections error:(id)error
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  outputCopy = output;
  selfCopy = self;
  errorCopy = error;
  sub_1001878A0(v12, error);

  (*(v10 + 8))(v12, v9);
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;
  selfCopy = self;
  sub_100187980(bufferCopy);
}

@end