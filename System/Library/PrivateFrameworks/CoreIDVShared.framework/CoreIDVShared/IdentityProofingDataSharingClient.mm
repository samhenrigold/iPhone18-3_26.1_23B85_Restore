@interface IdentityProofingDataSharingClient
- (void)checkUserConsentWithCompletionHandler:(id)handler;
- (void)didChangeUserConsentWithStatus:(int64_t)status completionHandler:(id)handler;
- (void)fetchUserConsentWithCompletionHandler:(id)handler;
@end

@implementation IdentityProofingDataSharingClient

- (void)fetchUserConsentWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02C98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02CA0;
  v12[5] = v11;

  sub_225CBCC70(0, 0, v7, &unk_225D02CA8, v12);
}

- (void)didChangeUserConsentWithStatus:(int64_t)status completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = status;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_225CCE994();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02C78;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D02C80;
  v14[5] = v13;

  sub_225CBCC70(0, 0, v9, &unk_225D02C88, v14);
}

- (void)checkUserConsentWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02C68;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225CF9CD0;
  v12[5] = v11;

  sub_225CBCC70(0, 0, v7, &unk_225D02030, v12);
}

@end