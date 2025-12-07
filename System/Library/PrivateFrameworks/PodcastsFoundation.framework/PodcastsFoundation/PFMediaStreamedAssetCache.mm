@interface PFMediaStreamedAssetCache
- (BOOL)clearAndReturnError:(id *)error;
- (BOOL)completeAndReturnError:(id *)error;
- (NSString)pathExtension;
- (PFMediaStreamedAssetCache)init;
- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l;
- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l cacheLocation:(id)location purgeability:(int)purgeability;
- (id)cachedAssetURL;
- (id)persistentFileURL;
- (id)streamCacheURLAndReturnError:(id *)error;
- (void)dealloc;
@end

@implementation PFMediaStreamedAssetCache

- (NSString)pathExtension
{

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1D9176B9C();
  v11 = sub_1D9176B1C();
  streamedMediaAssetURL = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v13 = sub_1D9176B1C();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = [(PFMediaStreamedAssetCache *)self initWithSourceURL:v11 cacheLocation:v13 purgeability:512];

  v14(v10, v4);
  return v15;
}

- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l cacheLocation:(id)location purgeability:(int)purgeability
{
  v6 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1D9176B9C();
  sub_1D9176B9C();
  return MediaStreamedAssetCache.init(sourceURL:cacheLocation:purgeability:)(v11, v8, purgeability);
}

- (id)cachedAssetURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  MediaStreamedAssetCache.cachedAssetURL()(v5);

  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1D9176B1C();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (id)streamCacheURLAndReturnError:(id *)error
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  selfCopy = self;
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy2 = self;
  os_unfair_lock_lock((v8 + v10));
  sub_1D8E6A76C((v8 + v9), v7);
  os_unfair_lock_unlock((v8 + v10));

  v12 = sub_1D9176B1C();
  (*(v5 + 8))(v7, v4);

  return v12;
}

- (BOOL)completeAndReturnError:(id *)error
{
  v3 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v3 + v5));
  sub_1D8E6A754(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));

  return 1;
}

- (BOOL)clearAndReturnError:(id *)error
{
  v3 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v3 + v5));
  sub_1D8E68FE0(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));

  return 1;
}

- (id)persistentFileURL
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  selfCopy = self;
  sub_1D9176B3C();
  sub_1D9176B4C();
  v11 = *(v4 + 8);
  v11(v6, v3);

  v12 = sub_1D9176B1C();
  v11(v9, v3);

  return v12;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;

  os_unfair_lock_lock((v4 + v6));
  sub_1D8E69B90(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(PFMediaStreamedAssetCache *)&v8 dealloc];
}

- (PFMediaStreamedAssetCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end