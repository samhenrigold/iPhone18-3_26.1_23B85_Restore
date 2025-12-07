@interface ManageStorageAppsListViewModel
+ (NSString)ViewModelDidUpdateNotificationName;
- (_TtC14iCloudSettings30ManageStorageAppsListViewModel)init;
- (id)expandedSubTitleForDataclass:(id)dataclass;
- (id)expandedSubTitleForLiverpoolBundleId:(id)id;
- (void)fetchAppsListWithFetchHomeViewModel:(BOOL)model loadImages:(BOOL)images completionHandler:(id)handler;
- (void)handleQuotaChangeNotification;
@end

@implementation ManageStorageAppsListViewModel

+ (NSString)ViewModelDidUpdateNotificationName
{
  if (qword_280A0E318 != -1)
  {
    swift_once();
  }

  v3 = qword_280A0F410;

  return v3;
}

- (void)handleQuotaChangeNotification
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_27587D460(0, 0, v5, &unk_2759C3C50, v7);
}

- (void)fetchAppsListWithFetchHomeViewModel:(BOOL)model loadImages:(BOOL)images completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = model;
  *(v13 + 17) = images;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_2759BA518();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2759C3C38;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2759C3C40;
  v16[5] = v15;
  selfCopy = self;
  sub_275929728(0, 0, v11, &unk_2759C33E0, v16);
}

- (id)expandedSubTitleForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  selfCopy = self;
  ManageStorageAppsListViewModel.expandedSubTitle(forDataclass:)();
  v7 = v6;

  if (v7)
  {
    v8 = sub_2759BA258();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)expandedSubTitleForLiverpoolBundleId:(id)id
{
  v4 = sub_2759BA298();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = ManageStorageAppsListViewModel.expandedSubTitle(forLiverpoolBundleId:)(v8).value._object;

  if (object)
  {
    v10 = sub_2759BA258();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC14iCloudSettings30ManageStorageAppsListViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end