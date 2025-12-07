@interface ClinicalDocumentDownloader
- (_TtC19HealthRecordsDaemon26ClinicalDocumentDownloader)init;
- (id)exportedInterface;
- (void)remote_beginOrResumeDownloadingAttachments:(NSArray *)attachments shouldRequestMore:(BOOL)more completion:(id)completion;
- (void)remote_downloadAttachment:(HKMedicalDownloadableAttachment *)attachment completion:(id)completion;
- (void)remote_pingDownloaderWithCompletion:(id)completion;
- (void)remote_triggerDownloadForAttachment:(NSUUID *)attachment completion:(id)completion;
@end

@implementation ClinicalDocumentDownloader

- (_TtC19HealthRecordsDaemon26ClinicalDocumentDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_beginOrResumeDownloadingAttachments:(NSArray *)attachments shouldRequestMore:(BOOL)more completion:(id)completion
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = attachments;
  *(v13 + 24) = more;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_251C71214();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_251C78E50;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_251C78E58;
  v16[5] = v15;
  attachmentsCopy = attachments;
  selfCopy = self;
  sub_251B34078(0, 0, v11, &unk_251C78E60, v16);
}

- (void)remote_downloadAttachment:(HKMedicalDownloadableAttachment *)attachment completion:(id)completion
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = attachment;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_251C71214();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_251C78E30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_251C78E38;
  v14[5] = v13;
  attachmentCopy = attachment;
  selfCopy = self;
  sub_251B34078(0, 0, v9, &unk_251C78E40, v14);
}

- (void)remote_pingDownloaderWithCompletion:(id)completion
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_251C71214();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_251C78E10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_251C78E18;
  v12[5] = v11;
  selfCopy = self;
  sub_251B34078(0, 0, v7, &unk_251C78E20, v12);
}

- (void)remote_triggerDownloadForAttachment:(NSUUID *)attachment completion:(id)completion
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = attachment;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_251C71214();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_251C78DC8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_251C775E8;
  v14[5] = v13;
  attachmentCopy = attachment;
  selfCopy = self;
  sub_251B34078(0, 0, v9, &unk_251C775F0, v14);
}

- (id)exportedInterface
{
  v2 = HKClinicalDocumentDownloaderInterface();

  return v2;
}

@end