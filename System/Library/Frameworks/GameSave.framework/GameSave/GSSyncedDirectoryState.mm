@interface GSSyncedDirectoryState
- (GSSyncedDirectoryState)init;
- (GSSyncedDirectoryState)initWithId:(id)id syncState:(int64_t)state;
- (NSArray)conflictedVersions;
- (NSError)error;
- (NSURL)url;
- (id)internalValue;
@end

@implementation GSSyncedDirectoryState

- (id)internalValue
{
  outlined init with copy of Any?(self + OBJC_IVAR___GSSyncedDirectoryState_internalValue, v9);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_0(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  selfCopy = self;
  GSSyncedDirectoryState.url.getter(v5);

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (NSArray)conflictedVersions
{
  selfCopy = self;
  v3 = GSSyncedDirectoryState.conflictedVersions.getter();

  if (v3)
  {
    type metadata accessor for GSSyncedDirectoryVersion(v4);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (NSError)error
{
  selfCopy = self;
  v3 = GSSyncedDirectoryState.error.getter();

  if (v3)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GSSyncedDirectoryState)initWithId:(id)id syncState:(int64_t)state
{
  if (id)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  *(self + OBJC_IVAR___GSSyncedDirectoryState_state) = state;
  outlined init with copy of Any?(v9, self + OBJC_IVAR___GSSyncedDirectoryState_internalValue);
  v8.receiver = self;
  v8.super_class = GSSyncedDirectoryState;
  v6 = [(GSSyncedDirectoryState *)&v8 init];
  outlined destroy of URL?(v9, &_sypSgMd, &_sypSgMR);
  return v6;
}

- (GSSyncedDirectoryState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end