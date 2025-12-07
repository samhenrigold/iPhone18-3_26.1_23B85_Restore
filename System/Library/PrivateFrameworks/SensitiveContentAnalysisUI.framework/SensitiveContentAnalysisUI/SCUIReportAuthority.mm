@interface SCUIReportAuthority
- (SCUIReportAuthority)init;
- (SCUIReportAuthority)initWithLocale:(id)locale moreHelpMenuOptions:(int64_t)options interventionType:(int64_t)type;
- (unint64_t)kind;
@end

@implementation SCUIReportAuthority

- (unint64_t)kind
{
  v3 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(self + OBJC_IVAR___SCUIReportAuthority_authority, v5, type metadata accessor for Report.Authority);
  v6 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v7 = 1;
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
  {
    sub_1BC68164C(v5, type metadata accessor for Report.Authority);
    return 0;
  }

  return v7;
}

- (SCUIReportAuthority)initWithLocale:(id)locale moreHelpMenuOptions:(int64_t)options interventionType:(int64_t)type
{
  optionsCopy = options;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1BC7599C0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1BC759960();
  ObjectType = swift_getObjectType();
  (*(v10 + 16))(v13, v15, v9);
  sub_1BC681900(v13, optionsCopy, v8);
  v17 = (*(ObjectType + 96))(v8);
  (*(v10 + 8))(v15, v9);
  swift_deallocPartialClassInstance();
  return v17;
}

- (SCUIReportAuthority)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end