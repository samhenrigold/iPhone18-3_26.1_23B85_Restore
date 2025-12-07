@interface HealthPluginHostService
- (NSString)description;
- (_TtC10healthappd23HealthPluginHostService)init;
- (void)collectFeedItemCacheDiagnosticsWithCompletion:(id)completion;
- (void)commitSharedSummaryTransactionAsUrgent:(BOOL)urgent completion:(id)completion;
- (void)dealloc;
- (void)debuggingInfoRequestedWithNote:(id)note;
- (void)deleteFeedWithFeedKinds:(id)kinds completion:(id)completion;
- (void)handleJournaledSharingEntries:(id)entries completion:(id)completion;
- (void)populateFeedWithFeedKinds:(id)kinds for:(id)for completion:(id)completion;
- (void)postNotificationWith:(id)with userInfo:(id)info;
- (void)submitTrainingFor:(id)for completion:(id)completion;
@end

@implementation HealthPluginHostService

- (void)populateFeedWithFeedKinds:(id)kinds for:(id)for completion:(id)completion
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  selfCopy = self;
  sub_100017B18(v12, v15, sub_10002389C, v13);

  (*(v8 + 8))(v10, v7);
}

- (void)submitTrainingFor:(id)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_100004210(0, &qword_1000423A8, NSData_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_1000182E8(v6, sub_10002389C, v7);
}

- (void)postNotificationWith:(id)with userInfo:(id)info
{
  if (info)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  withCopy = with;
  selfCopy = self;
  sub_100018D14(withCopy, v6);
}

- (void)collectFeedItemCacheDiagnosticsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000191CC(sub_100023804, v5);
}

- (void)deleteFeedWithFeedKinds:(id)kinds completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_1000229A0(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)commitSharedSummaryTransactionAsUrgent:(BOOL)urgent completion:(id)completion
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v10 = *(&self->super.isa + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle);
  *(v9 + 16) = v8;
  v11 = *(v10 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = urgent;
  *(v12 + 24) = sub_100023898;
  *(v12 + 32) = v9;
  *(v12 + 40) = ObjectType;
  selfCopy = self;
  v14 = v11;

  dispatch thunk of OpenTransactionBuilderManager.commitTransaction(healthStore:asUrgent:completion:)();
}

- (void)handleJournaledSharingEntries:(id)entries completion:(id)completion
{
  v5 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_100022D40(sub_1000237DC);
}

- (void)dealloc
{
  v3 = type metadata accessor for HealthPluginHostService(0);
  selfCopy = self;
  DebuggingResponder.deregisterForDebuggingRequests()();
  v5.receiver = selfCopy;
  v5.super_class = v3;
  [(HealthPluginHostService *)&v5 dealloc];
}

- (_TtC10healthappd23HealthPluginHostService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_10001DB38();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)debuggingInfoRequestedWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001DD44();

  (*(v5 + 8))(v7, v4);
}

@end