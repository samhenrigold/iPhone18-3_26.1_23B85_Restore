@interface SCROBrailleUILiveSpeechManager
- (SCROBrailleUILiveSpeechManager)init;
- (SCROBrailleUILiveSpeechManager)initWithClient:(id)client;
- (void)speak:(NSString *)speak completionHandler:(id)handler;
@end

@implementation SCROBrailleUILiveSpeechManager

- (SCROBrailleUILiveSpeechManager)initWithClient:(id)client
{
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveSpeechManager____lazy_storage___synth) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveSpeechManager_client) = client;
  v4.receiver = self;
  v4.super_class = SCROBrailleUILiveSpeechManager;
  swift_unknownObjectRetain();
  return [(SCROBrailleUILiveSpeechManager *)&v4 init];
}

- (void)speak:(NSString *)speak completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = speak;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_2649828E4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26498D270;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26498D278;
  v16[5] = v15;
  speakCopy = speak;
  selfCopy = self;
  sub_264978F68(0, 0, v11, &unk_26498D280, v16);
}

- (SCROBrailleUILiveSpeechManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end