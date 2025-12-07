@interface WallpaperService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)upgradePosterConfigurationWithAssetDirectory:(NSURL *)directory options:(NSDictionary *)options reply:(id)reply;
@end

@implementation WallpaperService

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

  sub_22FC3EE08(0, 0, v9, &unk_22FCD65B8, v15);
}

- (void)upgradePosterConfigurationWithAssetDirectory:(NSURL *)directory options:(NSDictionary *)options reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = directory;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCD65A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2CA0;
  v17[5] = v16;
  directoryCopy = directory;
  optionsCopy = options;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA590, v17);
}

@end