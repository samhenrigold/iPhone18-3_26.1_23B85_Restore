@interface AXLiveCaptionSourceInfo
- (BOOL)isEqual:(id)equal;
- (NSLocale)locale;
- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)init;
- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)initWithSourceType:(int64_t)type pid:(int)pid appID:(id)d appName:(id)name locale:(id)locale;
- (int64_t)hash;
- (void)setLocale:(id)locale;
@end

@implementation AXLiveCaptionSourceInfo

- (NSLocale)locale
{
  v3 = sub_25605347C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_25605340C();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setLocale:(id)locale
{
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25605342C();
  v8 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)initWithSourceType:(int64_t)type pid:(int)pid appID:(id)d appName:(id)name locale:(id)locale
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_2560536AC();
  v15 = v14;
  v16 = sub_2560536AC();
  v18 = v17;
  if (locale)
  {
    sub_25605342C();
    v19 = sub_25605347C();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v20 = sub_25605347C();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  }

  return AXLiveCaptionSourceInfo.init(sourceType:pid:appID:appName:locale:)(type, pid, v13, v15, v16, v18, v12);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_25605388C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_25603138C(v8);

  sub_256033238(v8, &qword_27F8256B0, &qword_2560559A8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_2560316B8();

  return v3;
}

- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end