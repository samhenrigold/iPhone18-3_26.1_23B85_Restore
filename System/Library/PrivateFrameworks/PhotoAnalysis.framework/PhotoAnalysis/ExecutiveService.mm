@interface ExecutiveService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)keepPADActiveWithOperationID:(NSString *)d reply:(id)reply;
- (void)performOnDemandTaskWithName:(NSString *)name reply:(id)reply;
- (void)performOnDemandTasksForScenario:(NSString *)scenario reply:(id)reply;
- (void)requestActivityStatusWithReply:(id)reply;
- (void)requestAnalysisStatusWithReply:(id)reply;
@end

@implementation ExecutiveService

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = sub_22FCC8C44();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22FA7F81C;
  *(v13 + 24) = v12;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v11;
  v15[6] = sub_22FA7F824;
  v15[7] = v13;

  sub_22FC3EE08(0, 0, v9, &unk_22FCDC118, v15);
}

- (void)performOnDemandTaskWithName:(NSString *)name reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = name;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDC100;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDC108;
  v15[5] = v14;
  nameCopy = name;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDC110, v15);
}

- (void)performOnDemandTasksForScenario:(NSString *)scenario reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = scenario;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDC0E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDC0E8;
  v15[5] = v14;
  scenarioCopy = scenario;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDC0F0, v15);
}

- (void)requestActivityStatusWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22FCC8D14();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDC0C0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDC0C8;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCDC0D0, v13);
}

- (void)requestAnalysisStatusWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22FCC8D14();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDC098;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDC0A0;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCDC0A8, v13);
}

- (void)keepPADActiveWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDC088;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCD2CA0;
  v15[5] = v14;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA590, v15);
}

@end