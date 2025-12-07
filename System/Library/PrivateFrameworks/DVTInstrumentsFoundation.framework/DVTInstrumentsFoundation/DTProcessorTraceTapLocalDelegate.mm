@interface DTProcessorTraceTapLocalDelegate
- (DTProcessorTraceTapLocalDelegate)init;
- (DTProcessorTraceTapLocalDelegate)initWithConfig:(id)config;
- (id)validateConfig;
- (void)fetchDataForReason:(unint64_t)reason block:(id)block;
- (void)pause;
- (void)start;
- (void)stop;
- (void)unpause;
@end

@implementation DTProcessorTraceTapLocalDelegate

- (DTProcessorTraceTapLocalDelegate)initWithConfig:(id)config
{
  v5 = sub_2480309A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_config) = config;
  configCopy = config;
  v19 = sub_248006358(configCopy);
  v10 = type metadata accessor for ProcessorTraceRecorder(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v11[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v12 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_27EE83A18 != -1)
  {
    swift_once();
  }

  v13 = sub_248006DF0(v5, qword_27EE85A60);
  v14 = *(v6 + 16);
  v14(&v11[v12], v13, v5);
  v14(v8, v13, v5);
  sub_248030908();
  *&v11[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = v19;
  v21.receiver = v11;
  v21.super_class = v10;
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder) = [(DTProcessorTraceTapLocalDelegate *)&v21 init];
  v15 = type metadata accessor for ProcessorTraceTapLocalDelegate();
  v20.receiver = self;
  v20.super_class = v15;
  v16 = [(DTProcessorTraceTapLocalDelegate *)&v20 init];

  return v16;
}

- (id)validateConfig
{
  selfCopy = self;
  v3 = sub_248005470();

  return v3;
}

- (void)start
{
  selfCopy = self;
  sub_2480056FC();
}

- (void)stop
{
  selfCopy = self;
  sub_2480058A8();
}

- (void)pause
{
  selfCopy = self;
  sub_248005A54();
}

- (void)unpause
{
  selfCopy = self;
  sub_248005C00();
}

- (void)fetchDataForReason:(unint64_t)reason block:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  selfCopy = self;
  sub_248006A14(reason, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (DTProcessorTraceTapLocalDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end