@interface DownloadableURLOptions
- (BOOL)nonAppInitiated;
- (NSString)urlRawString;
- (NSURL)url;
- (_TtC18PodcastsFoundation22DownloadableURLOptions)init;
- (_TtC18PodcastsFoundation22DownloadableURLOptions)initWithUrl:(id)url nonAppInitiated:(BOOL)initiated;
- (id)init:(id)init nonAppInitiated:(BOOL)initiated;
- (void)setNonAppInitiated:(BOOL)initiated;
@end

@implementation DownloadableURLOptions

- (id)init:(id)init nonAppInitiated:(BOOL)initiated
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D917820C();
  v8 = (self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString);
  *v8 = v7;
  v8[1] = v9;
  *(self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated) = initiated;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(DownloadableURLOptions *)&v11 init];
}

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1D9176BFC();

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

- (BOOL)nonAppInitiated
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)urlRawString
{

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (void)setNonAppInitiated:(BOOL)initiated
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  swift_beginAccess();
  *(self + v5) = initiated;
}

- (_TtC18PodcastsFoundation22DownloadableURLOptions)initWithUrl:(id)url nonAppInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B9C();
  sub_1D9176ACC();
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11 = [(DownloadableURLOptions *)self init:v10 nonAppInitiated:initiatedCopy];

  (*(v7 + 8))(v9, v6);
  return v11;
}

- (_TtC18PodcastsFoundation22DownloadableURLOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end