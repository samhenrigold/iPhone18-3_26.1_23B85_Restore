@interface QLTextDocument
- (BOOL)loadFromContents:(id)contents ofType:(id)type error:(id *)error;
- (NSAttributedString)attributedTextContent;
- (NSString)textContent;
- (_TtC9QuickLook14QLTextDocument)initWithFileURL:(id)l;
- (id)contentsForType:(id)type error:(id *)error;
- (void)saveWithTextContent:(id)content;
@end

@implementation QLTextDocument

- (NSString)textContent
{
  selfCopy = self;
  sub_23A7C6C4C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_23A7EE814();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSAttributedString)attributedTextContent
{
  selfCopy = self;
  v3 = sub_23A7C6DC0();

  return v3;
}

- (void)saveWithTextContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_23A7C6E8C(contentCopy);
}

- (id)contentsForType:(id)type error:(id *)error
{
  sub_23A7EE844();
  selfCopy = self;
  sub_23A7C6FFC(v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_23A7EEDF4();
  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

- (BOOL)loadFromContents:(id)contents ofType:(id)type error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  typeCopy = type;
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  if (typeCopy)
  {
    v9 = sub_23A7EE844();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_23A7C7860(v13, v9, v11);
  __swift_destroy_boxed_opaque_existential_0(v13);

  return 1;
}

- (_TtC9QuickLook14QLTextDocument)initWithFileURL:(id)l
{
  v4 = sub_23A7EDF64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDF44();
  v8 = self + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = -1;
  v9 = sub_23A7EDF24();
  v10 = type metadata accessor for QLTextDocument();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(UIDocument *)&v13 initWithFileURL:v9];

  (*(v5 + 8))(v7, v4);
  return v11;
}

@end