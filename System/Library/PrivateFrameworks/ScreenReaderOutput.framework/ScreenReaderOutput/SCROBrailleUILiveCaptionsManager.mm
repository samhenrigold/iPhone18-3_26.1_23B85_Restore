@interface SCROBrailleUILiveCaptionsManager
- (BOOL)isSourceAudio;
- (SCROBrailleUILiveCaptionsManager)init;
- (SCROBrailleUILiveCaptionsManager)initWithClient:(id)client;
- (void)dealloc;
- (void)setIsSourceAudio:(BOOL)audio;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation SCROBrailleUILiveCaptionsManager

- (SCROBrailleUILiveCaptionsManager)initWithClient:(id)client
{
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_sourceType) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client) = client;
  v4.receiver = self;
  v4.super_class = SCROBrailleUILiveCaptionsManager;
  swift_unknownObjectRetain();
  return [(SCROBrailleUILiveCaptionsManager *)&v4 init];
}

- (BOOL)isSourceAudio
{
  v3 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSourceAudio:(BOOL)audio
{
  v5 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  swift_beginAccess();
  *(&self->super.isa + v5) = audio;
  if (*(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) == 1)
  {
    selfCopy = self;
    [(SCROBrailleUILiveCaptionsManager *)selfCopy stop];
    [(SCROBrailleUILiveCaptionsManager *)selfCopy startWithCompletionHandler:0];
  }
}

- (void)dealloc
{
  selfCopy = self;
  v3 = *sub_26496AB68();
  v4 = selfCopy;
  v5 = v3;
  sub_26496C184(v4);

  v6.receiver = v4;
  v6.super_class = SCROBrailleUILiveCaptionsManager;
  [(SCROBrailleUILiveCaptionsManager *)&v6 dealloc];
}

- (void)startWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_2649828E4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26498CEF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26498CF00;
  v14[5] = v13;
  selfCopy = self;
  sub_264978F68(0, 0, v9, &unk_26498CF10, v14);
}

- (void)stop
{
  selfCopy = self;
  SCROBrailleUILiveCaptionsManager.stop()();
}

- (SCROBrailleUILiveCaptionsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end