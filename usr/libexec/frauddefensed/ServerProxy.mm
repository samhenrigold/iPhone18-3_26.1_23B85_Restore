@interface ServerProxy
- (void)debugUIManagerPresentPillBanner:(NSString *)banner subtitle:(NSString *)subtitle completionHandler:(id)handler;
- (void)reportManagerReport:(NSString *)report report:(NSDictionary *)a4 completionHandler:(id)handler;
- (void)spamDecisionManagerInference:(NSString *)inference sender:(NSString *)sender messageBody:(NSString *)body receiverISOCountryCode:(NSString *)code attachments:(NSArray *)attachments trustIndicator:(NSString *)indicator messageType:(NSString *)type inferenceType:(NSString *)self0 completionHandler:(id)self1;
- (void)spamDecisioningManagerIsSetupWithCompletionHandler:(id)handler;
- (void)spamDecisioningManagerSetupWithCompletionHandler:(id)handler;
@end

@implementation ServerProxy

- (void)reportManagerReport:(NSString *)report report:(NSDictionary *)a4 completionHandler:(id)handler
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = report;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100091270;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100091278;
  v16[5] = v15;
  reportCopy = report;
  v18 = a4;

  sub_10002C764(0, 0, v11, &unk_100091280, v16);
}

- (void)spamDecisioningManagerSetupWithCompletionHandler:(id)handler
{
  v5 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100091240;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100091248;
  v12[5] = v11;

  sub_10002C764(0, 0, v7, &unk_100091250, v12);
}

- (void)spamDecisioningManagerIsSetupWithCompletionHandler:(id)handler
{
  v5 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100091210;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100091218;
  v12[5] = v11;

  sub_10002C764(0, 0, v7, &unk_100091220, v12);
}

- (void)spamDecisionManagerInference:(NSString *)inference sender:(NSString *)sender messageBody:(NSString *)body receiverISOCountryCode:(NSString *)code attachments:(NSArray *)attachments trustIndicator:(NSString *)indicator messageType:(NSString *)type inferenceType:(NSString *)self0 completionHandler:(id)self1
{
  selfCopy = self;
  indicatorCopy = indicator;
  v16 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v16 - 8);
  v18 = &selfCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = inference;
  v20[3] = sender;
  v20[4] = body;
  v20[5] = code;
  v21 = selfCopy;
  v22 = indicatorCopy;
  v20[6] = attachments;
  v20[7] = v22;
  v20[8] = type;
  v20[9] = inferenceType;
  v20[10] = v19;
  v20[11] = v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1000911E8;
  v24[5] = v20;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_1000911F0;
  v25[5] = v24;
  inferenceCopy = inference;
  senderCopy = sender;
  bodyCopy = body;
  codeCopy = code;
  attachmentsCopy = attachments;
  v31 = indicatorCopy;
  typeCopy = type;
  inferenceTypeCopy = inferenceType;

  sub_10002C764(0, 0, v18, &unk_1000911F8, v25);
}

- (void)debugUIManagerPresentPillBanner:(NSString *)banner subtitle:(NSString *)subtitle completionHandler:(id)handler
{
  v9 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = banner;
  v13[3] = subtitle;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100091198;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000911A8;
  v16[5] = v15;
  bannerCopy = banner;
  subtitleCopy = subtitle;

  sub_10002C764(0, 0, v11, &unk_1000911B8, v16);
}

@end