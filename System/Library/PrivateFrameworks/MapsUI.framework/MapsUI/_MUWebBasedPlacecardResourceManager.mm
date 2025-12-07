@interface _MUWebBasedPlacecardResourceManager
+ (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)shared;
- (BOOL)useLocalBundle;
- (NSSet)fetchedResourceNames;
- (NSURL)directoryURL;
- (NSURL)localBundleURL;
- (NSURL)onlineBundleURL;
- (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)init;
- (void)fetchDirectoryURLWithCompletion:(id)completion;
- (void)prepareResources;
- (void)removeBundle;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group;
- (void)setFetchedResourceNames:(id)names;
- (void)setOnlineBundleURL:(id)l;
- (void)setUseLocalBundle:(BOOL)bundle;
@end

@implementation _MUWebBasedPlacecardResourceManager

+ (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)shared
{
  if (qword_1EC174CE8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC174CF0;

  return v3;
}

- (void)fetchDirectoryURLWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C576E5F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1C5768378(v7, v6);
  sub_1C5632FA8(v7, v6);
}

- (NSURL)directoryURL
{
  v3 = sub_1C584EA90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1C57693F8(v7);

  v9 = sub_1C584EA20();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (BOOL)useLocalBundle
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseLocalBundle:(BOOL)bundle
{
  v5 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  swift_beginAccess();
  *(self + v5) = bundle;
}

- (NSURL)localBundleURL
{
  v3 = sub_1C584EA90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL, v3);
  v8 = sub_1C584EA20();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSURL)onlineBundleURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  sub_1C5754258(self + v7, v6);
  v8 = sub_1C584EA90();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C584EA20();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setOnlineBundleURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  if (l)
  {
    sub_1C584EA50();
    v13 = sub_1C584EA90();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v13 = sub_1C584EA90();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v14 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  selfCopy = self;
  sub_1C576DC7C(v12, self + v14);
  swift_endAccess();
  sub_1C5754258(self + v14, v9);
  sub_1C584EA90();
  v16 = (*(*(v13 - 8) + 48))(v9, 1, v13) == 1;
  sub_1C5625230(v9, &unk_1EC16E660, &unk_1C58685F0);
  (*((*MEMORY[0x1E69E7D40] & *selfCopy) + 0x88))(v16);

  sub_1C5625230(v12, &unk_1EC16E660, &unk_1C58685F0);
}

- (NSSet)fetchedResourceNames
{
  swift_beginAccess();

  v2 = sub_1C584F920();

  return v2;
}

- (void)setFetchedResourceNames:(id)names
{
  v4 = sub_1C584F930();
  v5 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)init
{
  *(self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle) = 1;
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL;
  if (qword_1EC174CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C584EA90();
  v5 = __swift_project_value_buffer(v4, qword_1EC174CB8);
  v6 = *(v4 - 8);
  (*(v6 + 16))(self + v3, v5, v4);
  (*(v6 + 56))(self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL, 1, 1, v4);
  *(self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames) = MEMORY[0x1E69E7CD0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for _MUWebBasedPlacecardResourceManager(0);
  return [(_MUWebBasedPlacecardResourceManager *)&v8 init];
}

- (void)prepareResources
{
  selfCopy = self;
  _MUWebBasedPlacecardResourceManager.prepareResources()();
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  _s6MapsUI35_MUWebBasedPlacecardResourceManagerC016resourceManifestG24DidChangeActiveTileGroupyySo011GEOResourceiG0CSgF_0();
}

- (void)removeBundle
{
  selfCopy = self;
  _MUWebBasedPlacecardResourceManager.removeBundle()();
}

@end