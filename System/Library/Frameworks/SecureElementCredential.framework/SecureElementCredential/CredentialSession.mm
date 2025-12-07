@interface CredentialSession
- (void)installationCompletedWithCredentials:(NSArray *)credentials completionHandler:(id)handler;
- (void)presentmentAssertionTimeoutWithError:(NSError *)error completionHandler:(id)handler;
- (void)receivedHciDataWithData:(NSData *)data appletIdentifier:(NSData *)identifier completionHandler:(id)handler;
- (void)rfFieldChanged:(BOOL)changed completionHandler:(id)handler;
- (void)sessionEndedWithError:(id)error;
- (void)sessionErrorEventWithReason:(NSError *)reason completionHandler:(id)handler;
@end

@implementation CredentialSession

- (void)presentmentAssertionTimeoutWithError:(NSError *)error completionHandler:(id)handler
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = error;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23AA961EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23AA97F28;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97F30;
  v14[5] = v13;
  errorCopy = error;

  sub_23AA8F52C(0, 0, v9, &unk_23AA97F38, v14);
}

- (void)installationCompletedWithCredentials:(NSArray *)credentials completionHandler:(id)handler
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = credentials;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23AA961EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23AA97EE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97EE8;
  v14[5] = v13;
  credentialsCopy = credentials;

  sub_23AA8F52C(0, 0, v9, &unk_23AA97EF0, v14);
}

- (void)receivedHciDataWithData:(NSData *)data appletIdentifier:(NSData *)identifier completionHandler:(id)handler
{
  v9 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23AA961EC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23AA97EA8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23AA97EB0;
  v16[5] = v15;
  dataCopy = data;
  identifierCopy = identifier;

  sub_23AA8F52C(0, 0, v11, &unk_23AA97EB8, v16);
}

- (void)rfFieldChanged:(BOOL)changed completionHandler:(id)handler
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = changed;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_23AA961EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23AA97E70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97E78;
  v14[5] = v13;

  sub_23AA8F52C(0, 0, v9, &unk_23AA97E80, v14);
}

- (void)sessionErrorEventWithReason:(NSError *)reason completionHandler:(id)handler
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = reason;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23AA961EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23AA97E08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97E18;
  v14[5] = v13;
  reasonCopy = reason;

  sub_23AA8F52C(0, 0, v9, &unk_23AA97E28, v14);
}

- (void)sessionEndedWithError:(id)error
{

  errorCopy = error;
  sub_23AA8EDDC(error);
}

@end