@interface WKIntelligenceReplacementTextEffectCoordinator
+ (int64_t)characterDeltaForReceivedSuggestions:(id)suggestions;
- (BOOL)hasActiveEffects;
- (WKIntelligenceReplacementTextEffectCoordinator)init;
- (WKIntelligenceReplacementTextEffectCoordinator)initWithDelegate:(id)delegate;
- (void)flushReplacementsWithCompletionHandler:(id)handler;
- (void)hideEffectsWithCompletionHandler:(id)handler;
- (void)requestReplacementWithProcessedRange:(_NSRange)range finished:(BOOL)finished characterDelta:(int64_t)delta operation:(id)operation completion:;
- (void)restoreSelectionAcceptedReplacements:(BOOL)replacements completionHandler:(id)handler;
- (void)showEffectsWithCompletionHandler:(id)handler;
- (void)startAnimationForRange:(_NSRange)range completion:(id)completion;
@end

@implementation WKIntelligenceReplacementTextEffectCoordinator

- (BOOL)hasActiveEffects
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = sub_23B584FC0();
  v5 = (*(*v4 + 280))(v4);

  return v5 & 1;
}

+ (int64_t)characterDeltaForReceivedSuggestions:(id)suggestions
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B582C30(0, &qword_27E15ABF8, 0x277D7E8D0);
  v3 = sub_23B59D890();
  v4 = sub_23B58D8F8(v3);

  return v4;
}

- (WKIntelligenceReplacementTextEffectCoordinator)initWithDelegate:(id)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator____lazy_storage___viewManager) = 0;
  *(&self->super.isa + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_processedRangeOffset) = 0;
  v5 = self + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_contextRange;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(&self->super.isa + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_replacementQueue) = MEMORY[0x277D84F90];
  v6 = (&self->super.isa + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_onFlushCompletion);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.isa + OBJC_IVAR___WKIntelligenceReplacementTextEffectCoordinator_delegate) = delegate;
  v9.receiver = self;
  v9.super_class = WKIntelligenceReplacementTextEffectCoordinator;
  swift_unknownObjectRetain();
  v7 = [(WKIntelligenceReplacementTextEffectCoordinator *)&v9 init];

  return v7;
}

- (void)startAnimationForRange:(_NSRange)range completion:(id)completion
{
  length = range.length;
  location = range.location;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = location;
  v12[3] = length;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_23B59D910();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59FD68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59FD70;
  v15[5] = v14;
  selfCopy = self;
  sub_23B56B930(0, 0, v10, &unk_23B59FD78, v15);
}

- (void)requestReplacementWithProcessedRange:(_NSRange)range finished:(BOOL)finished characterDelta:(int64_t)delta operation:(id)operation completion:
{
  v7 = v6;
  length = range.length;
  location = range.location;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(operation);
  v18 = _Block_copy(v7);
  v19 = swift_allocObject();
  *(v19 + 16) = location;
  *(v19 + 24) = length;
  *(v19 + 32) = finished;
  *(v19 + 40) = delta;
  *(v19 + 48) = v17;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = sub_23B59D910();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_23B59FD48;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_23B59FD50;
  v22[5] = v21;
  selfCopy = self;
  sub_23B56B930(0, 0, v16, &unk_23B59FD58, v22);
}

- (void)flushReplacementsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23B59D910();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23B59FD28;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23B59FD30;
  v12[5] = v11;
  selfCopy = self;
  sub_23B56B930(0, 0, v7, &unk_23B59FD38, v12);
}

- (void)restoreSelectionAcceptedReplacements:(BOOL)replacements completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = replacements;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_23B59D910();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B59FD08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59FD10;
  v14[5] = v13;
  selfCopy = self;
  sub_23B56B930(0, 0, v9, &unk_23B59FD18, v14);
}

- (void)hideEffectsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23B59D910();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23B59FCE8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23B59FCF0;
  v12[5] = v11;
  selfCopy = self;
  sub_23B56B930(0, 0, v7, &unk_23B59FCF8, v12);
}

- (void)showEffectsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23B59D910();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23B59FCB0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23B59FCC0;
  v12[5] = v11;
  selfCopy = self;
  sub_23B56B930(0, 0, v7, &unk_23B59FCD0, v12);
}

- (WKIntelligenceReplacementTextEffectCoordinator)init
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end