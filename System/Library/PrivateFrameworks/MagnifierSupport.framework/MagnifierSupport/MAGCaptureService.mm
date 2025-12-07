@interface MAGCaptureService
- (_TtC16MagnifierSupport17MAGCaptureService)init;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)sessionInterruptionEndedWithNotification:(id)notification;
- (void)sessionRuntimeErrorWithNotification:(id)notification;
- (void)sessionWasInterruptedWithNotification:(id)notification;
- (void)wasDisconnectedNotificationWithNotification:(void *)notification;
@end

@implementation MAGCaptureService

- (void)wasDisconnectedNotificationWithNotification:(void *)notification
{
  notificationCopy = notification;
  sub_257DB1770();
}

- (void)sessionRuntimeErrorWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257DB22A4(notificationCopy);
}

- (void)sessionWasInterruptedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257DB2B94(notificationCopy);
}

- (void)sessionInterruptionEndedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257DB347C(notificationCopy);
}

- (_TtC16MagnifierSupport17MAGCaptureService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10, v11);
  v13 = &v19 - v12;
  type metadata accessor for MAGCMSampleBufferWrapper();
  v14 = swift_allocObject();
  *(v14 + 16) = buffer;
  v15 = sub_257ECF930();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = self;
  bufferCopy = buffer;
  selfCopy = self;
  sub_257E81524(0, 0, v13, &unk_257EE9428, v16);
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  outputCopy = output;
  photoCopy = photo;
  selfCopy = self;
  errorCopy = error;
  sub_257DB72DC(photoCopy, error);
}

@end