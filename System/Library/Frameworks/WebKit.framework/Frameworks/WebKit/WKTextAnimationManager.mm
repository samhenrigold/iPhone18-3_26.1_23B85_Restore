@interface WKTextAnimationManager
- (WKTextAnimationManager)init;
- (WKTextAnimationManager)initWithDelegate:(id)delegate;
- (WKTextAnimationSourceDelegate)delegate;
- (void)addTextAnimationForAnimationID:(id)d withStyleType:(int64_t)type;
- (void)removeTextAnimationForAnimationID:(id)d;
- (void)setDelegate:(id)delegate;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler;
@end

@implementation WKTextAnimationManager

- (WKTextAnimationSourceDelegate)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectWeakAssign();
}

- (WKTextAnimationManager)initWithDelegate:(id)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = swift_unknownObjectRetain();
  v4 = sub_23B597CA0(v3);

  return v4;
}

- (void)addTextAnimationForAnimationID:(id)d withStyleType:(int64_t)type
{
  v6 = sub_23B59D350();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B59D320();
  selfCopy = self;
  sub_23B597EB4(v9, type);

  (*(v7 + 8))(v9, v6);
}

- (void)removeTextAnimationForAnimationID:(id)d
{
  v4 = sub_23B59D350();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B59D320();
  selfCopy = self;
  sub_23B598880(v7);

  (*(v5 + 8))(v7, v4);
}

- (WKTextAnimationManager)init
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

- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23B59D910();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B5A01A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B5A01B0;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_23B56B930(0, 0, v9, &unk_23B5A01B8, v14);
}

- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = animation;
  *(v13 + 24) = visible;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23B59D910();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B5A0170;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B5A0180;
  v16[5] = v15;
  animationCopy = animation;
  selfCopy = self;
  sub_23B56B930(0, 0, v11, &unk_23B5A0190, v16);
}

@end