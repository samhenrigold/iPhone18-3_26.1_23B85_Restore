@interface CustodianDaemonService
- (void)availableRecoveryFactorsWithCompletion:(id)completion;
- (void)displayTrustedContactFlowWithModel:(id)model completion:(id)completion;
- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)d completion:(id)completion;
- (void)fetchCustodianRecoveryKeysWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion;
- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)d completion:(id)completion;
- (void)fetchSuggestedCustodiansWithCompletion:(id)completion;
- (void)fetchTrustedContactsWithRequest:(AATrustedContactFetchRequest *)request completion:(id)completion;
- (void)generateCustodianRecoveryCodeWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion;
- (void)reSendCustodianInvitationWithCustodianID:(id)d completion:(id)completion;
- (void)repairCustodians:(id)custodians completion:(id)completion;
- (void)repairCustodians:(id)custodians remove:(id)remove completion:(id)completion;
@end

@implementation CustodianDaemonService

- (void)reSendCustodianInvitationWithCustodianID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v10);

  sub_100054154(v9, self, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)fetchTrustedContactsWithRequest:(AATrustedContactFetchRequest *)request completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033F348;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033F350;
  v14[5] = v13;
  requestCopy = request;

  sub_10016483C(0, 0, v9, &unk_10033F358, v14);
}

- (void)fetchSuggestedCustodiansWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *&self->familyManager[24];
  v7 = *&self->familyManager[32];
  sub_1000080F8(self->familyManager, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10005B8E0;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v9(sub_10005A73C, v8, v6, v7);
}

- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)d completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10005A734;
  *(v9 + 24) = v8;

  sub_1000D119C(v5, v7, sub_10005B8F0, v9);
}

- (void)generateCustodianRecoveryCodeWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033F308;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033F310;
  v14[5] = v13;
  contextCopy = context;

  sub_10016483C(0, 0, v9, &unk_10033F318, v14);
}

- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)d completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;

  sub_100049E7C(v5, v7, sub_10005B8DC, v8);
}

- (void)fetchCustodianRecoveryKeysWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033F2E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033E760;
  v14[5] = v13;
  contextCopy = context;

  sub_10016483C(0, 0, v9, &unk_10033F2F0, v14);
}

- (void)displayTrustedContactFlowWithModel:(id)model completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();

  sub_10004E800(model, sub_10005B8F8, v6);
  swift_unknownObjectRelease();
}

- (void)availableRecoveryFactorsWithCompletion:(id)completion
{
  v5 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  (*(v6 + 16))(v8, &self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__recoveryFactorsController], v5);

  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  sub_1000080F8(v13, v13[3]);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000080F0;
  *(v11 + 24) = v10;

  sub_1002A3A80(sub_10005A1E4, v11);

  sub_10000839C(v13);
}

- (void)repairCustodians:(id)custodians remove:(id)remove completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (custodians)
  {
    type metadata accessor for UUID();
    custodians = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v7);

  sub_1000580A8(custodians, self, v7);
  _Block_release(v7);

  _Block_release(v7);
}

- (void)repairCustodians:(id)custodians completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (custodians)
  {
    type metadata accessor for UUID();
    custodians = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v6);

  sub_1000580A8(custodians, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end