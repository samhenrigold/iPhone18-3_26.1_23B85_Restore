@interface FABuildInviteOperation
- (FABuildInviteOperation)init;
- (FABuildInviteOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner inviteRecipients:(id)recipients;
- (void)buildInviteWithCompletionHandler:(id)handler;
@end

@implementation FABuildInviteOperation

- (FABuildInviteOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner inviteRecipients:(id)recipients
{
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_inviteRecipients) = v10;
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_aaGrandSlamSigner) = signer;
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_familyGrandSlamSigner) = slamSigner;
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_networkService) = service;
  v16.receiver = self;
  v16.super_class = type metadata accessor for FABuildInviteOperation(v10, v11);
  serviceCopy = service;
  signerCopy = signer;
  slamSignerCopy = slamSigner;
  return [(FABuildInviteOperation *)&v16 init];
}

- (void)buildInviteWithCompletionHandler:(id)handler
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
  v12[4] = &unk_10008C6D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008C7F0;
  v13[5] = v12;
  selfCopy = self;
  sub_100071FE8(0, 0, v8, &unk_10008C6E0, v13);
}

- (FABuildInviteOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end