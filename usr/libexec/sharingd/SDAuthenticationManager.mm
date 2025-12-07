@interface SDAuthenticationManager
+ (_TtC16DaemoniOSLibrary23SDAuthenticationManager)shared;
- (_TtC16DaemoniOSLibrary23SDAuthenticationManager)init;
- (_TtP16DaemoniOSLibrary31SDAuthenticationManagerDelegate_)delegate;
- (void)addAuthenticationStateChangesObserver:(id)observer identifier:(id)identifier;
- (void)authenticateFor:(unint64_t)for sessionID:(id)d options:(id)options delegate:(id)delegate;
- (void)canAuthenticateFor:(unint64_t)for options:(id)options sessionID:(id)d delegate:(id)delegate;
- (void)disableFor:(unint64_t)for idsDeviceID:(id)d sessionID:(id)iD delegate:(id)delegate;
- (void)enableFor:(unint64_t)for deviceID:(id)d passcode:(id)passcode sessionID:(id)iD delegate:(id)delegate;
- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)handler;
- (void)handleDelegateInvalidatedFor:(id)for;
- (void)handleStateChanged;
- (void)handleVisionOSFailureTappedWithUserInfo:(id)info;
- (void)listEligibleDevicesFor:(unint64_t)for completionHandler:(id)handler;
- (void)registerForApprovalRequestsFor:(unint64_t)for delegate:(id)delegate;
- (void)reportApprovalResultWithAcmToken:(id)token error:(id)error sessionID:(id)d;
- (void)requestEnablementFor:(unint64_t)for deviceID:(id)d sessionID:(id)iD delegate:(id)delegate;
- (void)start;
@end

@implementation SDAuthenticationManager

- (_TtP16DaemoniOSLibrary31SDAuthenticationManagerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (_TtC16DaemoniOSLibrary23SDAuthenticationManager)shared
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A10A8;

  return v3;
}

- (void)start
{
  selfCopy = self;
  sub_1006A1840();
}

- (void)listEligibleDevicesFor:(unint64_t)for completionHandler:(id)handler
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100810778;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100810780;
  v14[5] = v13;
  selfCopy = self;
  sub_1006E2B30(0, 0, v9, &unk_100810788, v14);
}

- (void)enableFor:(unint64_t)for deviceID:(id)d passcode:(id)passcode sessionID:(id)iD delegate:(id)delegate
{
  forCopy = for;
  v24 = type metadata accessor for UUID();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &forCopy - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  passcodeCopy = passcode;
  iDCopy = iD;
  swift_unknownObjectRetain();
  selfCopy = self;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1006A2828(forCopy, v14, v16, v20, v22, v13, delegate);
  swift_unknownObjectRelease();

  sub_100026AC0(v20, v22);
  (*(v11 + 8))(v13, v24);
}

- (void)requestEnablementFor:(unint64_t)for deviceID:(id)d sessionID:(id)iD delegate:(id)delegate
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006A6A1C(for, v13, v15, v12, delegate);
  swift_unknownObjectRelease();

  (*(v10 + 8))(v12, v9);
}

- (void)disableFor:(unint64_t)for idsDeviceID:(id)d sessionID:(id)iD delegate:(id)delegate
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006A87C8(for, v13, v15, v12, delegate);
  swift_unknownObjectRelease();

  (*(v10 + 8))(v12, v9);
}

- (void)canAuthenticateFor:(unint64_t)for options:(id)options sessionID:(id)d delegate:(id)delegate
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  optionsCopy = options;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006AC46C(for, optionsCopy, v13, delegate);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v10);
}

- (void)authenticateFor:(unint64_t)for sessionID:(id)d options:(id)options delegate:(id)delegate
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  optionsCopy = options;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006B02C4(for, v13, options, delegate);

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v10);
}

- (void)registerForApprovalRequestsFor:(unint64_t)for delegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006B41AC(for, delegate);
  swift_unknownObjectRelease();
}

- (void)reportApprovalResultWithAcmToken:(id)token error:(id)error sessionID:(id)d
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  errorCopy = error;
  dCopy = d;
  selfCopy = self;
  if (token)
  {
    tokenCopy = token;
    token = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xF000000000000000;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006B5120(token, v18, error, v12);
  sub_10028BCC0(token, v18);

  (*(v10 + 8))(v12, v9);
}

- (void)addAuthenticationStateChangesObserver:(id)observer identifier:(id)identifier
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006B6290(observer, v9);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
}

- (void)handleVisionOSFailureTappedWithUserInfo:(id)info
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = v7;
  selfCopy = self;
  sub_1002B3098(0, 0, v6, &unk_100810698, v9);
}

- (void)getEnabledAuthenticationTypesWithCompletionHandler:(id)handler
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100810630;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10080F2C0;
  v12[5] = v11;
  selfCopy = self;
  sub_1006E2B30(0, 0, v7, &unk_1007FB9F0, v12);
}

- (void)handleStateChanged
{
  selfCopy = self;
  sub_1006B9190();
}

- (_TtC16DaemoniOSLibrary23SDAuthenticationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleDelegateInvalidatedFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006DEA5C(for);
  swift_unknownObjectRelease();
}

@end