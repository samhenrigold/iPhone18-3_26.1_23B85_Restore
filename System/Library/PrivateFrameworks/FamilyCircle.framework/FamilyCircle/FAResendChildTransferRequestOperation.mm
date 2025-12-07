@interface FAResendChildTransferRequestOperation
- (FAResendChildTransferRequestOperation)init;
- (FAResendChildTransferRequestOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner email:(id)email isResend:(BOOL)resend;
- (void)cancelChildTransferWithCompletionHandler:(id)handler;
- (void)resendChildTransferWithCompletionHandler:(id)handler;
@end

@implementation FAResendChildTransferRequestOperation

- (FAResendChildTransferRequestOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner email:(id)email isResend:(BOOL)resend
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = (self + OBJC_IVAR___FAResendChildTransferRequestOperation_email);
  *v13 = v12;
  v13[1] = v14;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_aaGrandSlamSigner) = signer;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_familyGrandSlamSigner) = slamSigner;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_networkService) = service;
  *(&self->super.isa + OBJC_IVAR___FAResendChildTransferRequestOperation_isResend) = resend;
  v19.receiver = self;
  v19.super_class = type metadata accessor for FAResendChildTransferRequestOperation(v12, v14);
  serviceCopy = service;
  signerCopy = signer;
  slamSignerCopy = slamSigner;
  return [(FAResendChildTransferRequestOperation *)&v19 init];
}

- (void)resendChildTransferWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008C808;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008C810;
  v13[5] = v12;
  selfCopy = self;
  sub_100071FE8(0, 0, v8, &unk_10008C818, v13);
}

- (void)cancelChildTransferWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008C7E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008C7F0;
  v13[5] = v12;
  selfCopy = self;
  sub_100071FE8(0, 0, v8, &unk_10008C6E0, v13);
}

- (FAResendChildTransferRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end