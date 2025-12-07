@interface CSDPendingMembershipTracker
- (CSDPendingMembershipTrackerDelegate)delegate;
- (CSDPendingMembershipTrackerMessenger)messenger;
- (id)pendingMembersByGroup;
- (id)retrievePendingMembersFor:(id)for;
- (void)clearPendingMembershipFor:(id)for;
- (void)handleDelegatedPendingMember:(id)member forConversation:(id)conversation withGroupUUID:(id)d from:(id)from transactionUUID:(id)iD;
- (void)handleLocalApprovalOfMember:(id)member forConversation:(id)conversation;
- (void)handleLocalRejectionOfMember:(id)member forConversation:(id)conversation;
- (void)handleNewPendingMember:(id)member responseKey:(id)key forConversation:(id)conversation withLink:(id)link dateInitiatedLMI:(id)i;
- (void)setDelegate:(id)delegate;
- (void)setMessenger:(id)messenger;
- (void)stopTrackingPendingMember:(id)member forConversation:(id)conversation triggeredLocally:(BOOL)locally;
@end

@implementation CSDPendingMembershipTracker

- (CSDPendingMembershipTrackerMessenger)messenger
{
  v2 = sub_100317C18();

  return v2;
}

- (void)setMessenger:(id)messenger
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100317C84(messenger);
}

- (CSDPendingMembershipTrackerDelegate)delegate
{
  v2 = sub_100317D00();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100317D6C(delegate);
}

- (void)stopTrackingPendingMember:(id)member forConversation:(id)conversation triggeredLocally:(BOOL)locally
{
  memberCopy = member;
  conversationCopy = conversation;
  selfCopy = self;
  sub_100317E54();
}

- (void)clearPendingMembershipFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1003180F4(forCopy);
}

- (id)retrievePendingMembersFor:(id)for
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100318250();

  (*(v5 + 8))(v7, v4);
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_1002F93D0(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  v9.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)pendingMembersByGroup
{
  selfCopy = self;
  sub_100318524();

  type metadata accessor for UUID();
  sub_10026D814(&qword_1006A5680, &qword_100580360);
  sub_10031E358();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)handleNewPendingMember:(id)member responseKey:(id)key forConversation:(id)conversation withLink:(id)link dateInitiatedLMI:(id)i
{
  v27 = type metadata accessor for Date();
  v13 = *(v27 - 8);
  __chkstk_darwin(v27);
  v15 = &conversationCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memberCopy = member;
  keyCopy = key;
  conversationCopy = conversation;
  linkCopy = link;
  iCopy = i;
  selfCopy = self;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100318950(memberCopy, v21, v23, conversation, linkCopy, v15, v24, v25, conversationCopy, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  sub_100049B14(v21, v23);

  (*(v13 + 8))(v15, v27);
}

- (void)handleDelegatedPendingMember:(id)member forConversation:(id)conversation withGroupUUID:(id)d from:(id)from transactionUUID:(id)iD
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  memberCopy = member;
  conversationCopy = conversation;
  fromCopy = from;
  selfCopy = self;
  sub_100319F0C();

  v22 = *(v12 + 8);
  v22(v15, v11);
  v22(v17, v11);
}

- (void)handleLocalApprovalOfMember:(id)member forConversation:(id)conversation
{
  memberCopy = member;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10031A874(memberCopy, conversationCopy);
}

- (void)handleLocalRejectionOfMember:(id)member forConversation:(id)conversation
{
  memberCopy = member;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10031A900(memberCopy, conversationCopy);
}

@end