@interface BeaconSharingTrampoline
- (_TtC12searchpartyd23BeaconSharingTrampoline)init;
- (void)checkDataIntegrityWithShareIdentifier:(id)identifier completion:(id)completion;
- (void)share:(id)share recipients:(id)recipients shareType:(unint64_t)type completion:(id)completion;
- (void)sharingLimitsWithCompletion:(id)completion;
- (void)startRefreshingSharesWithCompletion:(id)completion;
- (void)stopRefreshingSharesWithCompletion:(id)completion;
- (void)updatedCircleIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation BeaconSharingTrampoline

- (void)share:(id)share recipients:(id)recipients shareType:(unint64_t)type completion:(id)completion
{
  selfCopy = self;
  typeCopy = type;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v29 = &v27 - v8;
  v30 = type metadata accessor for UUID();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v30);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = _Block_copy(completion);
  v28 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
  v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = type metadata accessor for TaskPriority();
  v18 = v29;
  (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
  v19 = v14;
  v20 = v30;
  (*(v9 + 16))(v12, v19, v30);
  v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = selfCopy;
  *(v23 + 4) = typeCopy;
  *(v23 + 5) = v24;
  (*(v9 + 32))(&v23[v21], v12, v20);
  *&v23[v22] = v27;
  v25 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v25 = sub_1001BDE18;
  v25[1] = v16;
  v26 = v24;

  sub_10025EDD4(0, 0, v18, &unk_101390CF8, v23);

  (*(v9 + 8))(v28, v20);
}

- (void)startRefreshingSharesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 16]);
  selfCopy = self;
  sub_1001B9924(v5, sub_1001BE468);
}

- (void)stopRefreshingSharesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1001B9B28(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)updatedCircleIdentifiers:(id)identifiers completion:(id)completion
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  type metadata accessor for UUID();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = v10;
  v13[6] = sub_1001BE468;
  v13[7] = v11;
  selfCopy = self;
  sub_10025EDD4(0, 0, v8, &unk_101390B60, v13);
}

- (void)checkDataIntegrityWithShareIdentifier:(id)identifier completion:(id)completion
{
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = _Block_copy(completion);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_1000D2A70(v16, v14, &qword_1016980D0, &unk_10138F3B0);
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = self;
  sub_1000D2AD8(v14, v23 + v22, &qword_1016980D0, &unk_10138F3B0);
  v24 = (v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_1001BC47C;
  v24[1] = v20;
  selfCopy = self;

  sub_10025EDD4(0, 0, v9, &unk_101390B28, v23);

  sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
}

- (void)sharingLimitsWithCompletion:(id)completion
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = sub_1001BC2E0;
  v10[5] = v8;
  sub_10025EDD4(0, 0, v6, &unk_101390AF8, v10);
}

- (_TtC12searchpartyd23BeaconSharingTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end