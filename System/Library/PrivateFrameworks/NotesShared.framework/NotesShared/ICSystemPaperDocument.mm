@interface ICSystemPaperDocument
+ (id)assetsDirectoryAt:(id)at;
+ (id)databaseDirectoryAt:(id)at;
+ (void)closeContextForNote:(id)note;
- (BOOL)writeNewVersionFromSyncArchive:(id)archive error:(id *)error;
- (CRContext)coherenceContext;
- (_TtC11NotesShared21ICSystemPaperDocument)init;
- (_TtC11NotesShared21ICSystemPaperDocument)initWithPaperAttachment:(id)attachment;
- (id)archiveBundleForSyncAndReturnError:(id *)error;
- (id)toFallbackPDFData;
- (void)removeStrokesFromStyleInventory;
- (void)updateGraphDestinationsUsingInlineAttachmentIdentifierMap:(id)map completion:(id)completion;
@end

@implementation ICSystemPaperDocument

- (CRContext)coherenceContext
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  selfCopy = self;
  managedObjectContext = [v2 managedObjectContext];
  if (managedObjectContext)
  {
    v6 = managedObjectContext;
    MEMORY[0x28223BE20](managedObjectContext, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500, &qword_2150C94E0);
    sub_2150A56D0();

    v7 = v9;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (_TtC11NotesShared21ICSystemPaperDocument)initWithPaperAttachment:(id)attachment
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) = attachment;
  v8.receiver = self;
  v8.super_class = ObjectType;
  attachmentCopy = attachment;
  return [(ICSystemPaperDocument *)&v8 init];
}

- (id)archiveBundleForSyncAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = ICSystemPaperDocument.archiveBundleForSync()();

  return v4;
}

- (BOOL)writeNewVersionFromSyncArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  selfCopy = self;
  ICSystemPaperDocument.writeNewVersionFromSyncArchive(_:)(archiveCopy);

  return 1;
}

+ (id)databaseDirectoryAt:(id)at
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  sub_2150A36F0();
  sub_2150A36C0();
  v12 = *(v4 + 8);
  v12(v8, v3);
  v13 = sub_2150A36B0();
  v12(v11, v3);

  return v13;
}

+ (id)assetsDirectoryAt:(id)at
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v19 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19 - v14;
  sub_2150A36F0();
  sub_2150A36C0();
  sub_2150A36D0();
  v16 = *(v4 + 8);
  v16(v8, v3);
  v16(v12, v3);
  v17 = sub_2150A36B0();
  v16(v15, v3);

  return v17;
}

- (void)updateGraphDestinationsUsingInlineAttachmentIdentifierMap:(id)map completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_2150A4920();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_214FE2BD4;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  ICSystemPaperDocument.updateGraphDestinations(usingInlineAttachmentIdentifierMap:completion:)(v6, v5, v7);
  sub_214D6AB7C(v5, v7);
}

+ (void)closeContextForNote:(id)note
{
  noteCopy = note;
  _s11NotesShared21ICSystemPaperDocumentC12closeContext3forySo6ICNoteC_tFZ_0(noteCopy);
}

- (void)removeStrokesFromStyleInventory
{
  selfCopy = self;
  ICSystemPaperDocument.removeStrokesFromStyleInventory()();
}

- (id)toFallbackPDFData
{
  selfCopy = self;
  v3 = ICSystemPaperDocument.toFallbackPDFData()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_2150A3790();
    sub_214FE1228(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (_TtC11NotesShared21ICSystemPaperDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end