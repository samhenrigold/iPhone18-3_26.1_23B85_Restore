@interface RemoteReader
- (_TtC14softposreaderd12RemoteReader)init;
- (void)cancelReadWithReply:(id)reply;
- (void)generateSecureReaderBlobWithTrxBlob:(id)blob pinBlob:(id)pinBlob reply:(id)reply;
- (void)getCardReaderBlobWithTxnBlob:(id)blob reply:(id)reply;
- (void)getSAFSessionTimeRemainingWithToken:(id)token reply:(id)reply;
- (void)readCardWithParameter:(id)parameter delegate:(id)delegate reply:(id)reply;
- (void)signBatchWithBatchId:(id)id count:(int64_t)count vtid:(id)vtid reply:(id)reply;
- (void)signTransactionWithPaymentCardData:(id)data generalCardData:(id)cardData transactionUUID:(id)d vtid:(id)vtid reply:(id)reply;
- (void)validateWithReadParameters:(id)parameters reply:(id)reply;
@end

@implementation RemoteReader

- (void)validateWithReadParameters:(id)parameters reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v8 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v7);
  v9 = *(v8 + 8);
  parametersCopy = parameters;
  selfCopy = self;
  v9(parametersCopy, v7, v8);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)readCardWithParameter:(id)parameter delegate:(id)delegate reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v11 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v10);
  v12 = *(v11 + 16);
  parameterCopy = parameter;
  swift_unknownObjectRetain();
  selfCopy = self;
  v12(parameter, delegate, sub_10018D094, v9, v10, v11);

  swift_unknownObjectRelease();
}

- (void)cancelReadWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v5);
  v7 = *(v6 + 24);
  selfCopy = self;
  v7(v5, v6);
  v4[2](v4);

  _Block_release(v4);
}

- (void)generateSecureReaderBlobWithTrxBlob:(id)blob pinBlob:(id)pinBlob reply:(id)reply
{
  v8 = _Block_copy(reply);
  blobCopy = blob;
  selfCopy = self;
  pinBlobCopy = pinBlob;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (pinBlobCopy)
  {
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = *&selfCopy->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v19 = *&selfCopy->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&selfCopy->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v18);
  v20 = (*(v19 + 32))(v12, v14, v15, v17, v18, v19);
  v22 = v21;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8[2](v8, isa, 0);

  sub_10001A074(v15, v17);
  sub_100009548(v12, v14);
  _Block_release(v8);

  sub_100009548(v20, v22);
}

- (void)getSAFSessionTimeRemainingWithToken:(id)token reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v9);
  v11 = *(v10 + 40);
  selfCopy = self;
  v13 = v11(v6, v8, v9, v10);

  v14 = [objc_allocWithZone(NSNumber) initWithInteger:v13];
  v5[2](v5, v14, 0);

  _Block_release(v5);
}

- (void)signTransactionWithPaymentCardData:(id)data generalCardData:(id)cardData transactionUUID:(id)d vtid:(id)vtid reply:(id)reply
{
  v13 = type metadata accessor for UUID();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _Block_copy(reply);
  dataCopy = data;
  cardDataCopy = cardData;
  dCopy = d;
  vtidCopy = vtid;
  selfCopy = self;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = v21;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v23;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v38 = selfCopy;
  v33 = *&selfCopy->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v32 = *&selfCopy->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&selfCopy->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v33);
  v34 = (*(v32 + 48))(v27, v28, v24, v26, v15, v29, v31, v33, v32);

  v35 = v37;
  (*(v37 + 2))(v37, v34, 0);
  _Block_release(v35);

  sub_100009548(v24, v26);
  sub_100009548(v27, v28);
  (*(v39 + 8))(v15, v40);
}

- (void)signBatchWithBatchId:(id)id count:(int64_t)count vtid:(id)vtid reply:(id)reply
{
  countCopy = count;
  v8 = type metadata accessor for UUID();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v16 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v15 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v16);
  v17 = *(v15 + 56);
  selfCopy = self;
  v18 = v17(v10, countCopy, v12, v14, v16, v15);

  v11[2](v11, v18, 0);
  _Block_release(v11);

  (*(v22 + 8))(v10, v23);
}

- (void)getCardReaderBlobWithTxnBlob:(id)blob reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v9);
  v11 = *(v10 + 64);
  selfCopy = self;
  v11(v6, v8, v9, v10);

  v13 = String._bridgeToObjectiveC()();

  v5[2](v5, v13);

  _Block_release(v5);
}

- (_TtC14softposreaderd12RemoteReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end