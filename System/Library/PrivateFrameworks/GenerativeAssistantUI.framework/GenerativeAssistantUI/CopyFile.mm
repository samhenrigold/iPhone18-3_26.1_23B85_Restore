@interface CopyFile
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (_TtC16MarkdownDocument8CopyFile)init;
- (id)activityImage;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation CopyFile

- (id)activityImage
{
  selfCopy = self;
  v2 = sub_24FEC9370();

  return v2;
}

- (NSString)activityTitle
{
  v2 = sub_24FEDCA84();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24FEDE1B4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24FEDE1A4();
  if (qword_27F3A5BB0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F3B3150;
  sub_24FEDCA74();
  sub_24FEDE214();
  v5 = sub_24FEDE1C4();

  return v5;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_24FEDE324();
  selfCopy = self;
  LOBYTE(self) = sub_24FEC9880(v4);

  return self & 1;
}

- (void)prepareWithActivityItems:(id)items
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5 + 16;
  v7 = sub_24FEDE324();
  if (*(v7 + 16))
  {
    sub_24FE72CC0(v7 + 32, v13);
    selfCopy = self;

    v9 = sub_24FEDC9E4();
    v10 = swift_dynamicCast();
    (*(*(v9 - 8) + 56))(v6, v10 ^ 1u, 1, v9);
    v11 = OBJC_IVAR____TtC16MarkdownDocument8CopyFile_fileURL;
    swift_beginAccess();
    sub_24FECD334(v6, selfCopy + v11);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

- (void)performActivity
{
  selfCopy = self;
  sub_24FECA030();
}

- (_TtC16MarkdownDocument8CopyFile)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end