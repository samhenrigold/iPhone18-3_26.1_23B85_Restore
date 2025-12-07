@interface NotificationSystemServiceClient
- (id)allBundleIdentifiersForCategories;
- (id)categoriesForBundleIdentifier:(id)identifier;
- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier;
- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier;
- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier;
@end

@implementation NotificationSystemServiceClient

- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier
{
  v4 = sub_1DA940A14();
  v6 = v5;
  selfCopy = self;
  sub_1DA935578(v4, v6);
}

- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier
{
  v5 = sub_1DA940BE4();
  v6 = sub_1DA940A14();
  v8 = v7;
  selfCopy = self;
  sub_1DA935960(v5, v6, v8);
}

- (id)allBundleIdentifiersForCategories
{
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA940FE4();

  v3 = sub_1DA940BD4();

  return v3;
}

- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  sub_1DA940A14();
  sub_1DA940A14();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD67B0, &qword_1DA960070);
  sub_1DA940FE4();

  return v7;
}

- (id)categoriesForBundleIdentifier:(id)identifier
{
  sub_1DA940A14();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7900, qword_1DA960078);
  sub_1DA940FE4();

  sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v4 = sub_1DA940BD4();

  return v4;
}

- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier
{
  sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v5 = sub_1DA940BE4();
  v6 = sub_1DA940A14();
  v8 = v7;
  selfCopy = self;
  sub_1DA936294(v5, v6, v8);
}

@end