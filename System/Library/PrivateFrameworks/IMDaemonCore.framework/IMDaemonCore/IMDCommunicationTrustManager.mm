@interface IMDCommunicationTrustManager
+ (IMDCommunicationTrustManager)sharedManager;
- (IMDCommunicationTrustManager)init;
- (void)requestDecisionForSender:(NSString *)sender completion:(id)completion;
@end

@implementation IMDCommunicationTrustManager

+ (IMDCommunicationTrustManager)sharedManager
{
  if (qword_27D8CCBF8 != -1)
  {
    swift_once();
  }

  v3 = qword_27D8D4880;

  return v3;
}

- (void)requestDecisionForSender:(NSString *)sender completion:(id)completion
{
  v7 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = sender;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B7DBA58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B7F9388;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B7F8D08;
  v14[5] = v13;
  senderCopy = sender;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v9, &unk_22B7F8D10, v14);
}

- (IMDCommunicationTrustManager)init
{
  v3.receiver = self;
  v3.super_class = IMDCommunicationTrustManager;
  return [(IMDCommunicationTrustManager *)&v3 init];
}

@end