@interface APSNoOpClientIdentityProvider
- (APSNoOpClientIdentityProvider)init;
- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey dataToSign:(id)sign time:(id)time useIDSNonceVersion:(BOOL)version nonceOut:(id *)out signatureOut:(id *)signatureOut;
- (id)errorsSinceLastSuccessfulServerPresence;
- (id)fetchVMHostCertsAndSignData:(id)data error:(id *)error;
- (void)checkIdentityIsAvailable:(id)available hasExistingToken:(BOOL)token;
- (void)debugForceDeleteIdentity:(id)identity;
- (void)fetchClientIdentityWithReason:(unint64_t)reason hasExistingToken:(BOOL)token completionHandler:(id)handler;
- (void)forceIdentityRefresh:(id)refresh;
- (void)noteServerBagUpdate:(id)update finishedProcessingServerBagUpdateBlock:(id)block;
- (void)preloadIdentity:(id)identity;
- (void)setIdentityAvailabilityDidChangeBlock:(id)block;
@end

@implementation APSNoOpClientIdentityProvider

- (APSNoOpClientIdentityProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NoOpClientIdentityProvider();
  return [(APSNoOpClientIdentityProvider *)&v3 init];
}

- (void)checkIdentityIsAvailable:(id)available hasExistingToken:(BOOL)token
{
  v4 = _Block_copy(available);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)noteServerBagUpdate:(id)update finishedProcessingServerBagUpdateBlock:(id)block
{
  v4 = _Block_copy(block);
  v4[2]();

  _Block_release(v4);
}

- (void)fetchClientIdentityWithReason:(unint64_t)reason hasExistingToken:(BOOL)token completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  if (v5)
  {
    v6 = v5;
    _Block_copy(v5);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v6)[2](v6, 0, isa, 0);

    _Block_release(v6);

    _Block_release(v6);
  }
}

- (void)forceIdentityRefresh:(id)refresh
{
  v5 = sub_1000C8C30(&unk_1001BCA60, &qword_10015D240);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(refresh);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10015D2C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10015D2C8;
  v12[5] = v11;
  selfCopy = self;
  sub_1000C8384(0, 0, v7, &unk_10015D2D0, v12);
}

- (void)preloadIdentity:(id)identity
{
  v5 = sub_1000C8C30(&unk_1001BCA60, &qword_10015D240);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(identity);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10015D2A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10015D2A8;
  v12[5] = v11;
  selfCopy = self;
  sub_1000C8384(0, 0, v7, &unk_10015D2B0, v12);
}

- (id)errorsSinceLastSuccessfulServerPresence
{
  sub_1000C8C30(&unk_1001BD030, &qword_10015D290);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)fetchVMHostCertsAndSignData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_1000C8AD0();
  sub_100006D20(v7, v9);

  return v10;
}

- (BOOL)generateNonceAndSignatureWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey dataToSign:(id)sign time:(id)time useIDSNonceVersion:(BOOL)version nonceOut:(id *)out signatureOut:(id *)signatureOut
{
  if (sign)
  {
    signCopy = sign;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006D20(v10, v11);
  }

  return 0;
}

- (void)setIdentityAvailabilityDidChangeBlock:(id)block
{
  v3 = _Block_copy(block);
  if (v3)
  {

    _Block_release(v3);
  }
}

- (void)debugForceDeleteIdentity:(id)identity
{
  v5 = sub_1000C8C30(&unk_1001BCA60, &qword_10015D240);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(identity);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10015D250;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10015D260;
  v12[5] = v11;
  selfCopy = self;
  sub_1000C8384(0, 0, v7, &unk_10015D270, v12);
}

@end