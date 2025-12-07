@interface BAManagedDownloaderExtensionWrapper
- (BAManagedDownloaderExtensionWrapper)init;
- (BAManagedDownloaderExtensionWrapper)initWithWrappedExtension:(id)extension;
- (id)downloadsForRequest:(int64_t)request manifestURL:(id)l extensionInfo:(id)info;
- (void)backgroundDownload:(BADownload *)download didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
- (void)backgroundDownload:(id)download failedWithError:(id)error;
- (void)backgroundDownload:(id)download finishedWithFileURL:(id)l;
@end

@implementation BAManagedDownloaderExtensionWrapper

- (BAManagedDownloaderExtensionWrapper)initWithWrappedExtension:(id)extension
{
  *(&self->super.isa + OBJC_IVAR___BAManagedDownloaderExtensionWrapper_swiftExtension) = extension;
  v4.receiver = self;
  v4.super_class = BAManagedDownloaderExtensionWrapper;
  swift_unknownObjectRetain();
  return [(BAManagedDownloaderExtensionWrapper *)&v4 init];
}

- (id)downloadsForRequest:(int64_t)request manifestURL:(id)l extensionInfo:(id)info
{
  v8 = sub_236E819F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  v12 = *(&self->super.isa + OBJC_IVAR___BAManagedDownloaderExtensionWrapper_swiftExtension);
  infoCopy = info;
  selfCopy = self;
  sub_236E764C0(request, v11, infoCopy, v12);

  (*(v9 + 8))(v11, v8);
  sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
  sub_236E3AA4C();
  v15 = sub_236E82094();

  return v15;
}

- (void)backgroundDownload:(BADownload *)download didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = download;
  v13[3] = challenge;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_236E82034();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_236E86678;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_236E85048;
  v16[5] = v15;
  downloadCopy = download;
  challengeCopy = challenge;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v11, &unk_236E85050, v16);
}

- (void)backgroundDownload:(id)download finishedWithFileURL:(id)l
{
  v5 = sub_236E819F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  downloadCopy = download;
  sub_236E795A8(downloadCopy, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)backgroundDownload:(id)download failedWithError:(id)error
{
  downloadCopy = download;
  errorCopy = error;
  sub_236E793B0(downloadCopy, errorCopy);
}

- (BAManagedDownloaderExtensionWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end