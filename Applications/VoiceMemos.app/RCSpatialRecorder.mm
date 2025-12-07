@interface RCSpatialRecorder
- (BOOL)handleWillTerminate:(id *)terminate;
- (BOOL)sampleRecordingTime:(double *)time;
- (BOOL)startAndReturnError:(id *)error;
- (NSDictionary)outputFileSettings;
- (NSURL)outputFileURL;
- (VMRecordingController)controller;
- (_TtC10VoiceMemos17RCSpatialRecorder)init;
- (_TtC10VoiceMemos17RCSpatialRecorder)initWithOutputFileURL:(id)l outputFileSettings:(id)settings;
- (void)captureSessionRecorder:(id)recorder didFailWithError:(id)error;
- (void)captureSessionRecorderDidCaptureSampleBuffer:(id)buffer buffer:(id)a4 mediaTime:(double)time;
- (void)captureSessionRecorderDidFinish:(id)finish fileOutputURL:(id)l error:(id)error;
- (void)captureSessionRecorderIsRunningDidChange:(id)change isRunning:(BOOL)running;
- (void)setController:(id)controller;
- (void)setGroup:(id)group;
- (void)setOutputFileSettings:(id)settings;
- (void)stopRecordingAtTime:(double)time completion:(id)completion;
@end

@implementation RCSpatialRecorder

- (void)setGroup:(id)group
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_group);
  *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_group) = group;
  groupCopy = group;
}

- (VMRecordingController)controller
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setController:(id)controller
{
  *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller) = controller;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSURL)outputFileURL
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_captureSessionRecorder) + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutputURL, v3, v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (NSDictionary)outputFileSettings
{

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setOutputFileSettings:(id)settings
{
  *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_outputFileSettings) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)stopRecordingAtTime:(double)time completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  selfCopy = self;
  sub_10015CD64(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (BOOL)sampleRecordingTime:(double *)time
{
  v3 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime + 8);
  if ((v3 & 1) == 0)
  {
    v6 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime);
    v7 = objc_opt_self();
    selfCopy = self;
    [v7 secondsForHostTime:mach_absolute_time()];
    *time = v9 - v6 + *(selfCopy + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_punchInTime);
  }

  return v3 ^ 1;
}

- (BOOL)startAndReturnError:(id *)error
{
  selfCopy = self;
  sub_10018611C();
  sub_100186A38();

  return 1;
}

- (BOOL)handleWillTerminate:(id *)terminate
{
  v3 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_captureSessionRecorder);
  v4 = *(v3 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutput);
  selfCopy = self;
  [v4 stopRecording];
  [*(v3 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession) stopRunning];

  return 1;
}

- (_TtC10VoiceMemos17RCSpatialRecorder)initWithOutputFileURL:(id)l outputFileSettings:(id)settings
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10015C5F0(v6, v7);
}

- (_TtC10VoiceMemos17RCSpatialRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureSessionRecorderIsRunningDidChange:(id)change isRunning:(BOOL)running
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller);
  if (v4)
  {
    [v4 setIoStarted:running];
  }
}

- (void)captureSessionRecorder:(id)recorder didFailWithError:(id)error
{
  recorderCopy = recorder;
  errorCopy = error;
  selfCopy = self;
  sub_10015CE60(errorCopy);
}

- (void)captureSessionRecorderDidFinish:(id)finish fileOutputURL:(id)l error:(id)error
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = (self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion);
  v11 = *(self + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion);
  if (v11)
  {
    v12 = v10[1];
    selfCopy = self;
    v14 = sub_1000D0DAC(v11, v12);
    v11(v14);
    sub_1000338B4(v11, v12);
  }

  else
  {
    selfCopy2 = self;
  }

  (*(v7 + 8))(v9, v6);
  v16 = *v10;
  v17 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_1000338B4(v16, v17);
}

- (void)captureSessionRecorderDidCaptureSampleBuffer:(id)buffer buffer:(id)a4 mediaTime:(double)time
{
  bufferCopy = buffer;
  v9 = a4;
  selfCopy = self;
  sub_10015D21C(v9, time);
}

@end