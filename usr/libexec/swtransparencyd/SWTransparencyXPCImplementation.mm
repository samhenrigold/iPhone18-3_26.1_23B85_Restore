@interface SWTransparencyXPCImplementation
- (_TtC15swtransparencyd31SWTransparencyXPCImplementation)init;
- (void)clearAllCFUWithCompletion:(id)completion;
- (void)dailyWithCompletion:(id)completion;
- (void)postCFU:(NSString *)u completion:(id)completion;
- (void)sysdiagnoseInfoWithCompletion:(id)completion;
- (void)triggerConsistencyVerificationWithCompletion:(id)completion;
- (void)triggerMilestoneRefreshWithCompletion:(id)completion;
- (void)triggerPublicKeybagRefreshWithCompletion:(id)completion;
- (void)verifyProofs:(NSData *)proofs forDigest:(NSData *)digest configuration:(SWTransparencyOperationConfiguration *)configuration completion:(id)completion;
- (void)waitStateMachineReadyWithCompletion:(id)completion;
@end

@implementation SWTransparencyXPCImplementation

- (void)triggerMilestoneRefreshWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100106908;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106910;
  v12[5] = v11;
  selfCopy = self;
  sub_100039048(0, 0, v7, &unk_100106918, v12);
}

- (void)triggerConsistencyVerificationWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001068E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001068F0;
  v12[5] = v11;
  selfCopy = self;
  sub_100039048(0, 0, v7, &unk_1001068F8, v12);
}

- (void)triggerPublicKeybagRefreshWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001068C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001068D0;
  v12[5] = v11;
  selfCopy = self;
  sub_100039048(0, 0, v7, &unk_1001068D8, v12);
}

- (void)verifyProofs:(NSData *)proofs forDigest:(NSData *)digest configuration:(SWTransparencyOperationConfiguration *)configuration completion:(id)completion
{
  v11 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = proofs;
  v15[3] = digest;
  v15[4] = configuration;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001068A8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001068B0;
  v18[5] = v17;
  proofsCopy = proofs;
  digestCopy = digest;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100039048(0, 0, v13, &unk_1001068B8, v18);
}

- (void)sysdiagnoseInfoWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100106888;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106890;
  v12[5] = v11;
  selfCopy = self;
  sub_100039048(0, 0, v7, &unk_100106898, v12);
}

- (void)postCFU:(NSString *)u completion:(id)completion
{
  v7 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = u;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100106868;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100106870;
  v14[5] = v13;
  uCopy = u;
  selfCopy = self;
  sub_100039048(0, 0, v9, &unk_100106878, v14);
}

- (void)clearAllCFUWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100106848;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106850;
  v12[5] = v11;
  selfCopy = self;
  sub_100039048(0, 0, v7, &unk_100106858, v12);
}

- (void)waitStateMachineReadyWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100106828;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100106830;
  v12[5] = v11;
  selfCopy = self;
  sub_100039048(0, 0, v7, &unk_100106838, v12);
}

- (void)dailyWithCompletion:(id)completion
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001067E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001067F0;
  v12[5] = v11;
  selfCopy = self;
  sub_100039048(0, 0, v7, &unk_100106800, v12);
}

- (_TtC15swtransparencyd31SWTransparencyXPCImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end