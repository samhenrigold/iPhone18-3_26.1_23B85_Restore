@interface PaymentTerminalService
- (_TtC21ProximityReaderDaemon22PaymentTerminalService)init;
- (void)closeSessionWithDelete:(BOOL)delete backgrounded:(BOOL)backgrounded;
- (void)declineTransaction:(NSUUID *)transaction completionHandler:(id)handler;
- (void)isAccountLinked:(id)linked completion:(id)completion;
- (void)linkAccount:(id)account relink:(BOOL)relink completion:(id)completion;
- (void)startIssuerPINEntry:(id)entry transactionId:(id)id completion:(id)completion;
- (void)startSession:(id)session completion:(id)completion;
- (void)startTransaction:(id)transaction completion:(id)completion;
- (void)status:(id)status completion:(id)completion;
- (void)storeAndForwardStatusWithCompletionHandler:(id)handler;
@end

@implementation PaymentTerminalService

- (void)declineTransaction:(NSUUID *)transaction completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = transaction;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2613AC828;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2613AC830;
  v14[5] = v13;
  transactionCopy = transaction;
  selfCopy = self;
  sub_261262B98(0, 0, v9, &unk_2613AC838, v14);
}

- (void)storeAndForwardStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2613AC808;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2613AC810;
  v12[5] = v11;
  selfCopy = self;
  sub_261262B98(0, 0, v7, &unk_2613AC818, v12);
}

- (_TtC21ProximityReaderDaemon22PaymentTerminalService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)isAccountLinked:(id)linked completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_2613A18CC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_26130DF80(v6, v8, sub_261324930, v9);
}

- (void)linkAccount:(id)account relink:(BOOL)relink completion:(id)completion
{
  relinkCopy = relink;
  v7 = _Block_copy(completion);
  v8 = sub_2613A18CC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_26130E754(v8, v10, relinkCopy, sub_2613241B4, v11);
}

- (void)status:(id)status completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (status)
  {
    v7 = sub_2613A18CC();
    status = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_261320744(v7, status, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)startSession:(id)session completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  sessionCopy = session;
  selfCopy = self;
  sub_261320F84(sessionCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)closeSessionWithDelete:(BOOL)delete backgrounded:(BOOL)backgrounded
{
  deleteCopy = delete;
  selfCopy = self;
  sub_2613113B4(deleteCopy, backgrounded);
}

- (void)startTransaction:(id)transaction completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = transaction;
  v13[6] = sub_261324924;
  v13[7] = v11;
  selfCopy = self;
  transactionCopy = transaction;
  *(&selfCopy->super.isa + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = sub_261266800(0, 0, v9, &unk_2613ACA80, v13);
}

- (void)startIssuerPINEntry:(id)entry transactionId:(id)id completion:(id)completion
{
  v7 = sub_26139F13C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  v12 = sub_2613A18CC();
  v14 = v13;
  sub_26139F11C();
  _Block_copy(v11);
  selfCopy = self;
  sub_26132276C(v12, v14, v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

@end