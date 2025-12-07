@interface CSDNeighborhoodActivityConduit
- (CSDNeighborhoodActivityConduit)init;
- (void)conversationManager:(id)manager changedActivityAuthorizationForBundleIdentifier:(id)identifier;
- (void)conversationsChangedForConversationManager:(id)manager;
- (void)dealloc;
@end

@implementation CSDNeighborhoodActivityConduit

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  os_state_remove_handler();
  [*(&selfCopy->super.isa + OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor) invalidate];
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(CSDNeighborhoodActivityConduit *)&v5 dealloc];
}

- (CSDNeighborhoodActivityConduit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationsChangedForConversationManager:(id)manager
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1000E2538();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = qword_10011DC30;
  selfCopy = self;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  v12 = sub_1000A75DC(&qword_100120020, v9, type metadata accessor for ConduitActor, &unk_1000F2250);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = selfCopy;

  sub_100022960(0, 0, v6, &unk_1000F2410, v13);
}

- (void)conversationManager:(id)manager changedActivityAuthorizationForBundleIdentifier:(id)identifier
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1000E2338();
  v10 = v9;
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = qword_10011DC30;
  selfCopy = self;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_1001230F0;
  v16 = sub_1000A75DC(&qword_100120020, v13, type metadata accessor for ConduitActor, &unk_1000F2250);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = selfCopy;
  v17[5] = v8;
  v17[6] = v10;

  sub_100022960(0, 0, v7, &unk_1000F23B8, v17);
}

@end