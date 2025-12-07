@interface PhotoLibraryService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)computeCacheDidLoad:(id)load;
- (void)curatedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)exportMomentContextDataWithReply:(id)reply;
- (void)extendedCuratedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)hastingsCurationFromAssetUUIDs:(NSArray *)ds options:(NSData *)options operationID:(NSString *)d reply:(id)reply;
- (void)keyAssetFromAssetUUIDs:(NSArray *)ds inAllAssets:(NSArray *)assets operationID:(NSString *)d reply:(id)reply;
- (void)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(NSSet *)ds candidateAssetUUIDs:(NSSet *)iDs operationID:(NSString *)d reply:(id)reply;
- (void)notifyAvailabilityForFeature:(unint64_t)feature reply:(id)reply;
- (void)requestPersonalizedSensingRefreshWithReply:(id)reply;
- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply;
- (void)warmupPhotoLibraryWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply;
@end

@implementation PhotoLibraryService

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

  sub_22FC3EE08(0, 0, v9, &unk_22FCD2E08, v15);
}

- (void)warmupPhotoLibraryWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  *(v14 + 16) = duration;
  *(v14 + 24) = d;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCD2DF0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2DF8;
  v17[5] = v16;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCD2E00, v17);
}

- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = ds;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCD2DD0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2DD8;
  v17[5] = v16;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCD2DE0, v17);
}

- (void)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(NSSet *)ds candidateAssetUUIDs:(NSSet *)iDs operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = ds;
  v16[3] = iDs;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2DB0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCD2DB8;
  v19[5] = v18;
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCD2DC0, v19);
}

- (void)keyAssetFromAssetUUIDs:(NSArray *)ds inAllAssets:(NSArray *)assets operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = ds;
  v16[3] = assets;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D78;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCD2D80;
  v19[5] = v18;
  dsCopy = ds;
  assetsCopy = assets;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCD2D88, v19);
}

- (void)curatedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = ds;
  v16[3] = options;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D58;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCD2D60;
  v19[5] = v18;
  dsCopy = ds;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCD2D68, v19);
}

- (void)extendedCuratedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = ds;
  v16[3] = options;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D38;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCD2D40;
  v19[5] = v18;
  dsCopy = ds;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCD2D48, v19);
}

- (void)hastingsCurationFromAssetUUIDs:(NSArray *)ds options:(NSData *)options operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = ds;
  v16[3] = options;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D18;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCD2D20;
  v19[5] = v18;
  dsCopy = ds;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCD2D28, v19);
}

- (void)computeCacheDidLoad:(id)load
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(load);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22FCC8D14();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCD2CF8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCD2D00;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCD2D08, v13);
}

- (void)requestPersonalizedSensingRefreshWithReply:(id)reply
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
  v12[4] = &unk_22FCD2CD8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCD2CE0;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCD2CE8, v13);
}

- (void)exportMomentContextDataWithReply:(id)reply
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
  v12[4] = &unk_22FCD2CB8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCD2CC0;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCD2CC8, v13);
}

- (void)notifyAvailabilityForFeature:(unint64_t)feature reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = feature;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCD2C98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCD2CA0;
  v15[5] = v14;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA590, v15);
}

@end