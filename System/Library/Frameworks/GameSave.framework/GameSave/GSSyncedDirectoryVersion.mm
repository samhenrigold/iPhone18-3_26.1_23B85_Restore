@interface GSSyncedDirectoryVersion
- (BOOL)isLocal;
- (GSSyncedDirectoryVersion)init;
- (GSSyncedDirectoryVersion)initWithVersion:(id)version;
- (NSDate)modifiedDate;
- (NSString)description;
- (NSString)localizedNameOfSavingComputer;
- (NSURL)url;
@end

@implementation GSSyncedDirectoryVersion

- (BOOL)isLocal
{
  v2 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion);
  }

  else
  {
    return 1;
  }
}

- (NSString)localizedNameOfSavingComputer
{
  v2 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
    v5 = *v3;
    v4 = v3[1];
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = MEMORY[0x23EE6B6E0](v5, v4);

  return v6;
}

- (NSDate)modifiedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v10)
  {
    (*(v7 + 16))(v5, v10 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    Date.init()();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      outlined destroy of URL?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v11.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);

  return v11.super.isa;
}

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version))
  {
    selfCopy = self;
    GameSaveSyncedDirectory.Version.url.getter();

    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    selfCopy2 = self;
    URL.init(fileURLWithPath:)();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  URL._bridgeToObjectiveC()(v11);
  v14 = v13;
  (*(v7 + 8))(v9, v6);

  return v14;
}

- (GSSyncedDirectoryVersion)initWithVersion:(id)version
{
  if (version)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return GSSyncedDirectoryVersion.init(version:)(v4);
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR___GSSyncedDirectoryVersion_version);
  if (v2)
  {
    selfCopy = self;
    v2 = GameSaveSyncedDirectory.Version.description.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = MEMORY[0x23EE6B6E0](v2, v5);

  return v6;
}

- (GSSyncedDirectoryVersion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end