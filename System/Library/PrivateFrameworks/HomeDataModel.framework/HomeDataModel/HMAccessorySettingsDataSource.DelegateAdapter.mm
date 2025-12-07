@interface HMAccessorySettingsDataSource.DelegateAdapter
- (_TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter)init;
- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
@end

@implementation HMAccessorySettingsDataSource.DelegateAdapter

- (_TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  sub_1D1A63030();
  v11 = sub_1D1E67C1C();
  v12 = self + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = v7;
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    sourceCopy = source;
    v15 = *(v13 + 24);
    sourceCopy2 = source;
    selfCopy = self;
    v15(&sourceCopy, v10, v11, ObjectType, v13);

    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v19);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }
}

@end