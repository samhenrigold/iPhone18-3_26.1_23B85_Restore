@interface CameraModel
- (_TtC13ClarityCamera11CameraModel)init;
- (void)captureOutput:(id)output didFinishCaptureForResolvedSettings:(id)settings error:(id)error;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didFinishRecordingToOutputFileAtURL:(id)l fromConnections:(id)connections error:(id)error;
- (void)dealloc;
- (void)orientationChangedWithNotification:(id)notification;
- (void)sessionInterruptionEndedWithNotification:(id)notification;
- (void)sessionWasInterruptedWithNotification:(id)notification;
@end

@implementation CameraModel

- (void)dealloc
{
  v3 = sub_100003998(&qword_100035540, &qword_100025230);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_100005F70(0, 0, v5, &unk_1000259E0, v9);

  v10 = type metadata accessor for CameraModel(0);
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(CameraModel *)&v11 dealloc];
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  outputCopy = output;
  photoCopy = photo;
  selfCopy = self;
  errorCopy = error;
  sub_10000B464(photoCopy, error);
}

- (void)captureOutput:(id)output didFinishCaptureForResolvedSettings:(id)settings error:(id)error
{
  outputCopy = output;
  settingsCopy = settings;
  selfCopy = self;
  errorCopy = error;
  sub_10000B730(error);
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
  sub_10000B9E0(v12, error);

  (*(v10 + 8))(v12, v9);
}

- (void)orientationChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10000BB78();
}

- (void)sessionWasInterruptedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10000BE6C(notificationCopy, "Session was interrupted: %@");
}

- (void)sessionInterruptionEndedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10000BE6C(notificationCopy, "Session ended interruption: %@");
}

- (_TtC13ClarityCamera11CameraModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end