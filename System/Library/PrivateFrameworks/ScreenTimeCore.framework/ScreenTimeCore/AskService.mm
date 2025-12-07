@interface AskService
- (void)approveExceptionForRequest:(STAskForTimeRequest *)request completionHandler:(id)handler;
- (void)handleAnswer:(int64_t)answer requestIdentifier:(NSUUID *)identifier timeApproved:(NSNumber *)approved completionHandler:(id)handler;
- (void)respondToAskForTimeRequestWithIdentifier:(NSString *)identifier answer:(int64_t)answer completionHandler:(id)handler;
- (void)sendAskForTimeRequest:(STAskForTimeRequest *)request completionHandler:(id)handler;
@end

@implementation AskService

- (void)approveExceptionForRequest:(STAskForTimeRequest *)request completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100143AF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100143B00;
  v14[5] = v13;
  requestCopy = request;

  sub_10010D4C0(0, 0, v9, &unk_100143B08, v14);
}

- (void)handleAnswer:(int64_t)answer requestIdentifier:(NSUUID *)identifier timeApproved:(NSNumber *)approved completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = answer;
  v15[3] = identifier;
  v15[4] = approved;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100143AD8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100143AE0;
  v18[5] = v17;
  identifierCopy = identifier;
  approvedCopy = approved;

  sub_10010D4C0(0, 0, v13, &unk_100143AE8, v18);
}

- (void)respondToAskForTimeRequestWithIdentifier:(NSString *)identifier answer:(int64_t)answer completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = answer;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100143AB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100143AC0;
  v16[5] = v15;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v11, &unk_100143AC8, v16);
}

- (void)sendAskForTimeRequest:(STAskForTimeRequest *)request completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100143A60;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140550;
  v14[5] = v13;
  requestCopy = request;

  sub_10010D4C0(0, 0, v9, &unk_100140230, v14);
}

@end