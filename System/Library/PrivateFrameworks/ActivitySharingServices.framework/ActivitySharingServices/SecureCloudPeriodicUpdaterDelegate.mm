@interface SecureCloudPeriodicUpdaterDelegate
- (_TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate)init;
- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager fetchDidFailWithError:(NSError *)error activity:(OS_xpc_object *)activity completion:(id)completion;
- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager requestChangedRecordsPushWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion;
- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager runSecureCloudTasksWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion;
@end

@implementation SecureCloudPeriodicUpdaterDelegate

- (_TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager runSecureCloudTasksWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = manager;
  v15[3] = group;
  v15[4] = activity;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_221FB64C8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_221FBC7C0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FB9BA8;
  v18[5] = v17;
  managerCopy = manager;
  groupCopy = group;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_221FB26AC(0, 0, v13, &unk_221FB9BB0, v18);
}

- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager requestChangedRecordsPushWithGroup:(CKOperationGroup *)group activity:(OS_xpc_object *)activity completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = manager;
  v15[3] = group;
  v15[4] = activity;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_221FB64C8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_221FBC7B0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FB9B88;
  v18[5] = v17;
  managerCopy = manager;
  groupCopy = group;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_221FB26AC(0, 0, v13, &unk_221FB9B90, v18);
}

- (void)periodicUpdateManager:(ASPeriodicUpdateManager *)manager fetchDidFailWithError:(NSError *)error activity:(OS_xpc_object *)activity completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = manager;
  v15[3] = error;
  v15[4] = activity;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_221FB64C8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_221FBC7A0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FC0690;
  v18[5] = v17;
  managerCopy = manager;
  errorCopy = error;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_221FB26AC(0, 0, v13, &unk_221FB9B70, v18);
}

@end