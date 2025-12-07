@interface SCROBrailleUIIntelligenceManager
- (SCROBrailleUIIntelligenceManager)init;
- (void)summarize:(NSString *)summarize completionHandler:(id)handler;
@end

@implementation SCROBrailleUIIntelligenceManager

- (void)summarize:(NSString *)summarize completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = summarize;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_2649828E4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26498CF60;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26498CF68;
  v16[5] = v15;
  summarizeCopy = summarize;
  selfCopy = self;
  sub_264978F68(0, 0, v11, &unk_26498CF70, v16);
}

- (SCROBrailleUIIntelligenceManager)init
{
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUIIntelligenceManager____lazy_storage___lazyLLMManager) = 0;
  v3.receiver = self;
  v3.super_class = SCROBrailleUIIntelligenceManager;
  return [(SCROBrailleUIIntelligenceManager *)&v3 init];
}

@end