@interface AegirCloudCoverService
+ (NSString)cloudLevelHighFileName;
+ (NSString)cloudLevelLowFileName;
+ (NSString)cloudLevelMidFileName;
+ (NSString)cloudLevelPrefix;
- (BOOL)canFetchData;
- (BOOL)disableFetch;
- (NSArray)allCloudLevelFileNames;
- (NSURL)directory;
- (NUNIFileConverter)fileConverter;
- (_TtC12NanoUniverse22AegirCloudCoverService)init;
- (_TtC12NanoUniverse22AegirCloudCoverService)initWithImageScale:(float)scale;
- (id)cloudTextureURLs;
- (void)retrieveCloudTextureURLsWithNotifyOn:(id)on completionHandler:(id)handler;
- (void)setDirectory:(id)directory;
- (void)setDisableFetch:(BOOL)fetch;
- (void)setFileConverter:(id)converter;
@end

@implementation AegirCloudCoverService

- (NUNIFileConverter)fileConverter
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFileConverter:(id)converter
{
  v5 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  swift_beginAccess();
  *(self + v5) = converter;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)disableFetch
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisableFetch:(BOOL)fetch
{
  v5 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  swift_beginAccess();
  *(self + v5) = fetch;
}

- (NSURL)directory
{
  v3 = sub_25B716250();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_25B7161F0();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setDirectory:(id)directory
{
  v4 = sub_25B716250();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  sub_25B716220();
  v11 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v5 + 16))(v8, self + v11, v4);
  swift_beginAccess();
  v12 = *(v5 + 24);
  selfCopy = self;
  v12(self + v11, v10, v4);
  swift_endAccess();
  sub_25B702CE0(v8);

  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
}

- (_TtC12NanoUniverse22AegirCloudCoverService)initWithImageScale:(float)scale
{
  static AegirCloudCoverService.Configuration.prodEnvironment.getter(v10);
  v7[0] = v10[0];
  v7[1] = v10[1];
  v8 = v11;
  v9 = v12;
  v4 = objc_allocWithZone(type metadata accessor for AegirCloudCoverService(0));
  v5 = AegirCloudCoverService.init(configuration:imageScale:)(v7, scale);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)retrieveCloudTextureURLsWithNotifyOn:(id)on completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  onCopy = on;
  selfCopy = self;
  sub_25B704BD4(onCopy, sub_25B715214, v7);
}

- (id)cloudTextureURLs
{
  selfCopy = self;
  sub_25B704FCC();

  sub_25B716250();
  v3 = sub_25B716830();

  return v3;
}

- (BOOL)canFetchData
{
  selfCopy = self;
  v3 = sub_25B7055DC(selfCopy);

  return v3 & 1;
}

- (_TtC12NanoUniverse22AegirCloudCoverService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSString)cloudLevelPrefix
{
  v2 = sub_25B7167A0();

  return v2;
}

+ (NSString)cloudLevelLowFileName
{
  v2 = sub_25B7167A0();

  return v2;
}

+ (NSString)cloudLevelMidFileName
{
  v2 = sub_25B7167A0();

  return v2;
}

+ (NSString)cloudLevelHighFileName
{
  v2 = sub_25B7167A0();

  return v2;
}

- (NSArray)allCloudLevelFileNames
{
  _s12NanoUniverse22AegirCloudCoverServiceC03allD14LevelFileNamesSaySSGvg_0();
  v2 = sub_25B716830();

  return v2;
}

@end