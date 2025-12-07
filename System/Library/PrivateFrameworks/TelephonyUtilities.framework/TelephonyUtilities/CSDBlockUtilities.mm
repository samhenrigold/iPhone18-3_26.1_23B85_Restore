@interface CSDBlockUtilities
- (BOOL)blockListContainsMembers:(id)members providerIdentifier:(id)identifier;
- (void)reportFailureForReason:(int64_t)reason provider:(id)provider callUUID:(id)d actionToFail:(id)fail;
@end

@implementation CSDBlockUtilities

- (BOOL)blockListContainsMembers:(id)members providerIdentifier:(id)identifier
{
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  LOBYTE(v6) = sub_1002BCC98(v5, v6, v8);

  return v6 & 1;
}

- (void)reportFailureForReason:(int64_t)reason provider:(id)provider callUUID:(id)d actionToFail:(id)fail
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  providerCopy = provider;
  failCopy = fail;
  selfCopy = self;
  sub_1002BD204(reason, providerCopy, v13, fail);

  (*(v11 + 8))(v13, v10);
}

@end