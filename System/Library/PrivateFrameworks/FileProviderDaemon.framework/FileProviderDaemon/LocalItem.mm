@interface LocalItem
- (NSArray)conflictingVersions;
- (NSDictionary)extendedAttributes;
- (NSNumber)hasUnresolvedConflicts;
- (NSPersonNameComponents)mostRecentEditorNameComponents;
- (NSString)description;
- (NSString)filename;
- (NSString)fp_appContainerBundleIdentifier;
- (NSURL)fileURL;
- (UTType)contentType;
- (_TtC18FileProviderDaemon9LocalItem)init;
- (void)setFileURL:(id)l;
@end

@implementation LocalItem

- (NSString)description
{
  selfCopy = self;
  sub_1CF009330();
  v4 = v3;

  v5 = sub_1CF9E6888();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (NSString)filename
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename + 8);

  v3 = sub_1CF9E6888();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (UTType)contentType
{
  v3 = sub_1CF9E5FF8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentType, v3, v5);
  v8 = sub_1CF9E5F38();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSPersonNameComponents)mostRecentEditorNameComponents
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1CEFCCBDC(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_mostRecentEditorNameComponents, &v12 - v4, &qword_1EC4C1180, &unk_1CFA18170);
  v6 = sub_1CF9E5748();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_1CF9E5728();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (NSURL)fileURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(self + v6, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1CF9E5928();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (NSNumber)hasUnresolvedConflicts
{
  if (*(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions))
  {
    v3 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v3 >> 62)
  {
    sub_1CF9E7818();
  }

  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  selfCopy = self;

  v3, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_1CF9E7548();

  return v12;
}

- (NSArray)conflictingVersions
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions);
  if (v2)
  {
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);

    v3 = sub_1CF9E6D28();
    v2, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)extendedAttributes
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_extendedAttributes);

  v3 = sub_1CF9E6618();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (void)setFileURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    sub_1CF9E59D8();
    v8 = sub_1CF9E5A58();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1CF9E5A58();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  selfCopy = self;
  sub_1CEFDA9E0(v7, self + v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
}

- (NSString)fp_appContainerBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_isContainer) == 1)
  {
    v3 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_spotlightSubDomainIdentifier + 8);
    if (v3)
    {

      v4 = sub_1CF9E6888();
      v3, v5, v6, v7, v8, v9, v10, v11;
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_TtC18FileProviderDaemon9LocalItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end