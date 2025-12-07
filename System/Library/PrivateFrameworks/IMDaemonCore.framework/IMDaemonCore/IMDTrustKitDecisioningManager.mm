@interface IMDTrustKitDecisioningManager
+ (IMDTrustKitDecisioningManager)sharedManager;
- (BOOL)isJunkFilteringEnabled;
- (BOOL)shouldSkipTrustKitDecisioningForChat:(id)chat sender:(id)sender;
- (IMDTrustKitDecisioningManager)init;
- (IMDTrustKitDecisioningManager)initWithSyncedSettingsManager:(id)manager spamFilterHelper:(id)helper;
- (void)requestDecisionForSender:(NSString *)sender service:(NSString *)service trustIndicator:(NSString *)indicator messageBody:(NSAttributedString *)body countryCode:(NSString *)code requestReason:(int64_t)reason containsOneTimeCode:(BOOL)timeCode completionHandler:(id)self0;
@end

@implementation IMDTrustKitDecisioningManager

+ (IMDTrustKitDecisioningManager)sharedManager
{
  if (qword_28141F0C0 != -1)
  {
    swift_once();
  }

  v3 = qword_2814225C8;

  return v3;
}

- (IMDTrustKitDecisioningManager)initWithSyncedSettingsManager:(id)manager spamFilterHelper:(id)helper
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return IMDTrustKitDecisioningManager.init(syncedSettingsManager:spamFilterHelper:)(manager, helper);
}

- (BOOL)isJunkFilteringEnabled
{
  selfCopy = self;
  v3 = sub_22B77F22C();

  return v3 & 1;
}

- (BOOL)shouldSkipTrustKitDecisioningForChat:(id)chat sender:(id)sender
{
  v6 = sub_22B7DB6A8();
  v8 = v7;
  chatCopy = chat;
  selfCopy = self;
  LOBYTE(chat) = sub_22B77F408(chat, v6, v8);

  v8, v11, v12, v13, v14, v15, v16, v17, v19, v20;
  return chat & 1;
}

- (void)requestDecisionForSender:(NSString *)sender service:(NSString *)service trustIndicator:(NSString *)indicator messageBody:(NSAttributedString *)body countryCode:(NSString *)code requestReason:(int64_t)reason containsOneTimeCode:(BOOL)timeCode completionHandler:(id)self0
{
  reasonCopy = reason;
  senderCopy = sender;
  v16 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &reasonCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = sender;
  *(v20 + 24) = service;
  *(v20 + 32) = indicator;
  *(v20 + 40) = body;
  v21 = reasonCopy;
  *(v20 + 48) = code;
  *(v20 + 56) = v21;
  *(v20 + 64) = timeCode;
  *(v20 + 72) = v19;
  *(v20 + 80) = self;
  v22 = sub_22B7DBA58();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B7FBBE0;
  v23[5] = v20;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B7F8D08;
  v24[5] = v23;
  v25 = senderCopy;
  serviceCopy = service;
  indicatorCopy = indicator;
  bodyCopy = body;
  codeCopy = code;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v18, &unk_22B7F8D10, v24);
}

- (IMDTrustKitDecisioningManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end