@interface IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate
- (_TtCC19HealthRecordsDaemon34IssuerDirectoryDownloadTaskManagerP33_7AB94515F5C396F1FDF73A0A6286A3E442URLSessionNoCustomCertVerificationDelegate)init;
- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
@end

@implementation IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate

- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  sub_251AF4E18(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = session;
  v13[3] = challenge;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_251C71214();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_251C775E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_251C775E8;
  v16[5] = v15;
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_251B34078(0, 0, v11, &unk_251C775F0, v16);
}

- (_TtCC19HealthRecordsDaemon34IssuerDirectoryDownloadTaskManagerP33_7AB94515F5C396F1FDF73A0A6286A3E442URLSessionNoCustomCertVerificationDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate();
  return [(IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate *)&v3 init];
}

@end