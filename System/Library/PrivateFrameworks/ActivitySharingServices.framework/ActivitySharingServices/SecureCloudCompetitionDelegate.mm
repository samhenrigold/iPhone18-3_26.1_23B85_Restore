@interface SecureCloudCompetitionDelegate
- (_TtC23ActivitySharingServices30SecureCloudCompetitionDelegate)init;
- (void)competitionManager:(ASCompetitionManager *)manager deleteCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion;
- (void)competitionManager:(ASCompetitionManager *)manager saveCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion;
- (void)competitionManager:(ASCompetitionManager *)manager saveCurrentCompetitionList:(ASCompetitionList *)list archivedCompetitionList:(ASCompetitionList *)competitionList contact:(ASContact *)contact group:(CKOperationGroup *)group completion:(id)completion;
@end

@implementation SecureCloudCompetitionDelegate

- (_TtC23ActivitySharingServices30SecureCloudCompetitionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)competitionManager:(ASCompetitionManager *)manager saveCurrentCompetitionList:(ASCompetitionList *)list archivedCompetitionList:(ASCompetitionList *)competitionList contact:(ASContact *)contact group:(CKOperationGroup *)group completion:(id)completion
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - v16;
  v18 = _Block_copy(completion);
  v19 = swift_allocObject();
  v19[2] = manager;
  v19[3] = list;
  v19[4] = competitionList;
  v19[5] = contact;
  v19[6] = group;
  v19[7] = v18;
  v19[8] = self;
  v20 = sub_221FB64C8();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_221FB9BA0;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_221FB9BA8;
  v22[5] = v21;
  managerCopy = manager;
  listCopy = list;
  competitionListCopy = competitionList;
  contactCopy = contact;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v17, &unk_221FB9BB0, v22);
}

- (void)competitionManager:(ASCompetitionManager *)manager saveCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = manager;
  v15[3] = lists;
  v15[4] = group;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_221FB64C8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_221FB9B80;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FB9B88;
  v18[5] = v17;
  managerCopy = manager;
  listsCopy = lists;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v13, &unk_221FB9B90, v18);
}

- (void)competitionManager:(ASCompetitionManager *)manager deleteCompetitionLists:(NSSet *)lists group:(CKOperationGroup *)group completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = manager;
  v15[3] = lists;
  v15[4] = group;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_221FB64C8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_221FB9B60;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_221FC0690;
  v18[5] = v17;
  managerCopy = manager;
  listsCopy = lists;
  groupCopy = group;
  selfCopy = self;
  sub_221FB26AC(0, 0, v13, &unk_221FB9B70, v18);
}

@end