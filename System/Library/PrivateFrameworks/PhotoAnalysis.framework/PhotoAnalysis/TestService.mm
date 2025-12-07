@interface TestService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)performGetStringWithOperationID:(NSString *)d reply:(id)reply;
- (void)performLongOperationWithOperationID:(NSString *)d reply:(id)reply;
@end

@implementation TestService

- (void)performGetStringWithOperationID:(NSString *)d reply:(id)reply
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
  v14[4] = &unk_22FCD7F20;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCD7F28;
  v15[5] = v14;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCD7F30, v15);
}

- (void)performLongOperationWithOperationID:(NSString *)d reply:(id)reply
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
  v14[4] = &unk_22FCD7EF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCD2CA0;
  v15[5] = v14;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA590, v15);
}

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

  sub_22FC3EE08(0, 0, v9, &unk_22FCD7EE8, v15);
}

@end