@interface ICPaperAttachmentCreationHelper
+ (BOOL)createPaperDocumentForAttachment:(id)attachment fromLegacyMediaAtURL:(id)l error:(id *)error;
+ (id)createSystemPaperAttachmentWithPKDrawing:(id)drawing inNote:(id)note;
+ (void)copyNewPaperBundleToAttachment:(ICAttachment *)attachment fromURL:(NSURL *)l completionHandler:(id)handler;
+ (void)createPaperDocumentForAttachment:(ICAttachment *)attachment fromLegacyMediaAtURL:(NSURL *)l completionHandler:(id)handler;
- (ICPaperAttachmentCreationHelper)init;
@end

@implementation ICPaperAttachmentCreationHelper

+ (void)copyNewPaperBundleToAttachment:(ICAttachment *)attachment fromURL:(NSURL *)l completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = attachment;
  v14[3] = l;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2150A5120();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2150C8AE8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2150C8AF0;
  v17[5] = v16;
  attachmentCopy = attachment;
  lCopy = l;
  sub_21501779C(0, 0, v12, &unk_2150C8AF8, v17);
}

+ (void)createPaperDocumentForAttachment:(ICAttachment *)attachment fromLegacyMediaAtURL:(NSURL *)l completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = attachment;
  v14[3] = l;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2150A5120();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2150C8AC8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2150C8AD0;
  v17[5] = v16;
  attachmentCopy = attachment;
  lCopy = l;
  sub_21501779C(0, 0, v12, &unk_2150C8AD8, v17);
}

+ (BOOL)createPaperDocumentForAttachment:(id)attachment fromLegacyMediaAtURL:(id)l error:(id *)error
{
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  swift_getObjCClassMetadata();
  attachmentCopy = attachment;
  static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(attachmentCopy, v10);
  (*(v7 + 8))(v10, v6);

  return 1;
}

+ (id)createSystemPaperAttachmentWithPKDrawing:(id)drawing inNote:(id)note
{
  v6 = sub_2150A48F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  noteCopy = note;
  sub_2150A48E0();

  swift_getObjCClassMetadata();
  v13 = static ICPaperAttachmentCreationHelper.createSystemPaperAttachment(with:in:)(v10, noteCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (ICPaperAttachmentCreationHelper)init
{
  v3.receiver = self;
  v3.super_class = ICPaperAttachmentCreationHelper;
  return [(ICPaperAttachmentCreationHelper *)&v3 init];
}

@end