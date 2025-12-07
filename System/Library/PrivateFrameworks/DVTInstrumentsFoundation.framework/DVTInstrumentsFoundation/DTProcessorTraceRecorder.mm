@interface DTProcessorTraceRecorder
+ (NSString)recordingVersionString;
- (BOOL)saveRecordingWithFd:(int)fd error:(id *)error;
- (DTProcessorTraceRecorder)init;
- (DTProcessorTraceRecorder)initWithConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation DTProcessorTraceRecorder

+ (NSString)recordingVersionString
{
  v2 = hwtrace_version_info();
  if (v2)
  {
    v3 = v2;
    sub_248030BA8();
    MEMORY[0x24C1C47E0](v3, -1, -1);
    v4 = sub_248030B28();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (DTProcessorTraceRecorder)initWithConfiguration:(id)configuration
{
  ObjectType = swift_getObjectType();
  v6 = sub_2480309A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording) = 0;
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_state) = 0;
  v10 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  v11 = qword_27EE83A18;
  configurationCopy = configuration;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_248006DF0(v6, qword_27EE85A60);
  v14 = *(v7 + 16);
  v14(self + v10, v13, v6);
  v14(v9, v13, v6);
  sub_248030908();
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_configuration) = configurationCopy;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(DTProcessorTraceRecorder *)&v16 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    selfCopy = self;
    hwtrace_live_recording_deinit();
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(DTProcessorTraceRecorder *)&v6 dealloc];
}

- (BOOL)saveRecordingWithFd:(int)fd error:(id *)error
{
  selfCopy = self;
  ProcessorTraceRecorder.saveRecording(fd:)(fd);

  if (v7)
  {
    if (error)
    {
      v8 = sub_2480306A8();

      v9 = v8;
      *error = v8;
    }

    else
    {
    }
  }

  return v7 == 0;
}

- (DTProcessorTraceRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end