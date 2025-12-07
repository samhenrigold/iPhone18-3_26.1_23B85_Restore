@interface TaskLimitersObjC
- (_TtC14ACSEFoundation16TaskLimitersObjC)init;
- (void)performClosureNoParamsWithIdentifier:(id)identifier task:(id)task completion:(id)completion;
- (void)performWithIdentifier:(id)identifier task:(id)task completion:(id)completion;
@end

@implementation TaskLimitersObjC

- (void)performWithIdentifier:(id)identifier task:(id)task completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(task);
  v12 = _Block_copy(completion);
  v13 = sub_23C43714C();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = sub_23C43726C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = v13;
  v19[6] = v15;
  v19[7] = sub_23C435840;
  v19[8] = v16;
  v19[9] = sub_23C435848;
  v19[10] = v17;
  selfCopy = self;
  sub_23C4330D8(0, 0, v10, &unk_23C439210, v19);
}

- (void)performClosureNoParamsWithIdentifier:(id)identifier task:(id)task completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(task);
  v12 = _Block_copy(completion);
  v13 = sub_23C43714C();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = sub_23C43726C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = v13;
  v19[6] = v15;
  v19[7] = sub_23C435810;
  v19[8] = v16;
  v19[9] = sub_23C435818;
  v19[10] = v17;
  selfCopy = self;
  sub_23C4211EC(0, 0, v10, &unk_23C439208, v19);
}

- (_TtC14ACSEFoundation16TaskLimitersObjC)init
{
  v3 = OBJC_IVAR____TtC14ACSEFoundation16TaskLimitersObjC_taskLimiters;
  type metadata accessor for TaskLimiters();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = MEMORY[0x277D84F98];
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TaskLimitersObjC();
  return [(TaskLimitersObjC *)&v6 init];
}

@end