@interface OverridingFileManager
- (NSURL)temporaryDirectory;
- (_TtC9BlastDoor21OverridingFileManager)init;
- (id)URLForDirectory:(unint64_t)directory inDomain:(unint64_t)domain appropriateForURL:(id)l create:(BOOL)create error:(id *)error;
@end

@implementation OverridingFileManager

- (NSURL)temporaryDirectory
{
  v3 = sub_2146D8958();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_21408B890(v6);

  v8 = sub_2146D8898();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (id)URLForDirectory:(unint64_t)directory inDomain:(unint64_t)domain appropriateForURL:(id)l create:(BOOL)create error:(id *)error
{
  v25[0] = error;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v25 - v13;
  v15 = sub_2146D8958();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v25 - v20;
  if (l)
  {
    sub_2146D88E8();
    (*(v16 + 32))(v14, v19, v15);
    (*(v16 + 56))(v14, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  selfCopy = self;
  sub_21408BBEC(directory, domain, v14, create, v21);
  sub_213FB2DF4(v14, &unk_27C9131A0, &unk_2146E9D10);

  v23 = sub_2146D8898();
  (*(v16 + 8))(v21, v15);

  return v23;
}

- (_TtC9BlastDoor21OverridingFileManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end