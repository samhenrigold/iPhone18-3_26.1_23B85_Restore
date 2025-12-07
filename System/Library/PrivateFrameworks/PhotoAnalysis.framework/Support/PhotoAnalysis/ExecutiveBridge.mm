@interface ExecutiveBridge
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)targetForOriginalTarget:(id)target connection:(id)connection selector:(SEL)selector;
- (void)dispatchOperation:(id)operation toTarget:(id)target service:(id)service;
- (void)dumpStatusToLog:(id)log;
- (void)shutdown:(id)shutdown;
- (void)startup:(id)startup;
@end

@implementation ExecutiveBridge

- (id)targetForOriginalTarget:(id)target connection:(id)connection selector:(SEL)selector
{
  swift_unknownObjectRetain();
  connectionCopy = connection;
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  ExecutiveBridge.target(forOriginalTarget:connection:selector:)(v16, v17);

  sub_100001C24(v16);
  v9 = v18;
  if (v18)
  {
    v10 = sub_1000034E4(v17, v18);
    v11 = *(v9 - 8);
    __chkstk_darwin(v10, v10);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v13, v9);
    sub_100001C24(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)startup:(id)startup
{
  v5 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(startup);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100004C48;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100004C50;
  v13[5] = v12;
  selfCopy = self;
  sub_100002F28(0, 0, v8, &unk_100004C58, v13);
}

- (void)shutdown:(id)shutdown
{
  v5 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(shutdown);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100004C28;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100004C30;
  v13[5] = v12;
  selfCopy = self;
  sub_100002F28(0, 0, v8, &unk_100004C38, v13);
}

- (void)dumpStatusToLog:(id)log
{
  v5 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(log);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100004BE0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100004BF0;
  v13[5] = v12;
  selfCopy = self;
  sub_100002F28(0, 0, v8, &unk_100004C00, v13);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = ExecutiveBridge.listener(_:shouldAcceptNewConnection:)(listenerCopy, connectionCopy);

  return v9;
}

- (void)dispatchOperation:(id)operation toTarget:(id)target service:(id)service
{
  operationCopy = operation;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _s14photoanalysisd15ExecutiveBridgeC17dispatchOperation_8toTarget7serviceySo020PHAServiceCancelableE0C_ypyptF_0(operationCopy, v9, v8);

  sub_100001C24(v8);
  sub_100001C24(v9);
}

@end