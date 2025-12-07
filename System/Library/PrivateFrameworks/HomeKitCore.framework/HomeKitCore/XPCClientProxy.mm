@interface XPCClientProxy
- (_TtC11HomeKitCore14XPCClientProxy)init;
- (void)fetchModelsWithType:(int64_t)type completionHandler:(id)handler;
- (void)fetchModelsWithTypes:(id)types completionHandler:(id)handler;
- (void)registerObserver:(id)observer modelTypes:(id)types completionHandler:(id)handler;
@end

@implementation XPCClientProxy

- (_TtC11HomeKitCore14XPCClientProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fetchModelsWithType:(int64_t)type completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_253126F58;
  *(v17 + 24) = v15;
  (*(v11 + 16))(v13, self + v16, v10);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = type;
  (*(v11 + 32))(v19 + v18, v13, v10);
  v20 = sub_253148DE4();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_253151028;
  v21[5] = v19;
  v21[6] = sub_253126F60;
  v21[7] = v17;
  selfCopy = self;

  sub_253112858(0, 0, v9, &unk_253151038, v21);
}

- (void)fetchModelsWithTypes:(id)types completionHandler:(id)handler
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = _Block_copy(handler);
  v14 = sub_253148C94();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_253126D0C;
  *(v17 + 24) = v15;
  (*(v10 + 16))(v12, self + v16, v9);
  v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  (*(v10 + 32))(v19 + v18, v12, v9);
  v20 = sub_253148DE4();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_253151008;
  v21[5] = v19;
  v21[6] = sub_253126D14;
  v21[7] = v17;
  selfCopy = self;

  sub_253112858(0, 0, v8, &unk_253151018, v21);
}

- (void)registerObserver:(id)observer modelTypes:(id)types completionHandler:(id)handler
{
  selfCopy = self;
  observerCopy = observer;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &selfCopy - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &selfCopy - v13;
  v15 = _Block_copy(handler);
  v16 = sub_253148C94();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_253126020;
  *(v19 + 24) = v17;
  (*(v11 + 16))(v14, self + v18, v10);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  (*(v11 + 32))(v22 + v20, v14, v10);
  *(v22 + v21) = observerCopy;
  v23 = sub_253148DE4();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_253150FD0;
  v24[5] = v22;
  v24[6] = sub_253126028;
  v24[7] = v19;
  swift_unknownObjectRetain_n();
  v25 = selfCopy;

  sub_253112858(0, 0, v9, &unk_253150FE0, v24);
  swift_unknownObjectRelease();
}

@end