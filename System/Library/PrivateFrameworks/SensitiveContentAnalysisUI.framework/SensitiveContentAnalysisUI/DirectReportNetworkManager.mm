@interface DirectReportNetworkManager
- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
@end

@implementation DirectReportNetworkManager

- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = session;
  v13[3] = challenge;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1BC75BE10();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BC76DB30;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BC76DB40;
  v16[5] = v15;
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1BC6AD080(0, 0, v11, &unk_1BC76DB50, v16);
}

@end