@interface Daemon
+ (void)setReactor:(id)reactor;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15ScreenTimeAgent6Daemon)init;
- (id)operationToResolveAsset:(id)asset;
- (id)operationToSendEvents:(id)events;
- (id)operationToSendStatusUpdate:(id)update;
- (void)configurationSourceDidFailToRegister:(id)register withError:(id)error;
- (void)containerEventChanged:(id)changed;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)start;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
@end

@implementation Daemon

+ (void)setReactor:(id)reactor
{
  v4 = qword_1001E7018;
  qword_1001E7018 = reactor;
  reactorCopy = reactor;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = sub_1000D53C8();
  [v3 invalidate];

  v4 = sub_1000D53E8();
  [v4 invalidate];

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for Daemon(0);
  [(Daemon *)&v5 dealloc];
}

- (void)start
{
  selfCopy = self;
  sub_1000D5D28();
}

- (_TtC15ScreenTimeAgent6Daemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000DBBC4(connectionCopy);

  return v9 & 1;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  sub_1000DDAD4();
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  if (!identifier)
  {
    v10 = 0;
    v12 = 0;
    if (context)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v19, 0, sizeof(v19));
    serviceCopy = service;
    accountCopy = account;
    selfCopy = self;
    goto LABEL_6;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (!context)
  {
    goto LABEL_5;
  }

LABEL_3:
  serviceCopy2 = service;
  accountCopy2 = account;
  swift_unknownObjectRetain();
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_6:
  sub_1000DDD0C(v10, v12);

  sub_1000A5148(v19, &qword_1001E03A0, qword_100140A70);
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v13 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  if (!data)
  {
    serviceCopy = service;
    accountCopy = account;
    dCopy = d;
    contextCopy = context;
    selfCopy = self;
    v23 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = 0;
    v26 = 0;
    goto LABEL_6;
  }

  serviceCopy2 = service;
  accountCopy2 = account;
  dCopy2 = d;
  contextCopy2 = context;
  selfCopy2 = self;
  dataCopy = data;
  data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (!d)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

LABEL_6:
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = self;
  v33[5] = service;
  v33[6] = account;
  v33[7] = data;
  v33[8] = v23;
  v33[9] = v24;
  v33[10] = v26;
  v33[11] = context;
  sub_1000D4310(0, 0, v15, &unk_100141EF0, v33);
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  v13 = sub_1000A0F2C(&qword_1001E1850, &qword_100141EE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  if (d)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1000DDE70();

  sub_1000A5148(v15, &qword_1001E1850, &qword_100141EE0);
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v6 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = service;
  v10[5] = self;
  serviceCopy = service;
  selfCopy = self;
  sub_1000D4310(0, 0, v8, &unk_100141ED0, v10);
}

- (void)containerEventChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000D8244();

  (*(v5 + 8))(v7, v4);
}

- (void)configurationSourceDidFailToRegister:(id)register withError:(id)error
{
  v6 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = error;
  v10[5] = self;
  errorCopy = error;
  selfCopy = self;
  sub_1000D45CC(0, 0, v8, &unk_100141EB0, v10);
}

- (id)operationToSendStatusUpdate:(id)update
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v5 = sub_1000D4C80();
  requestManager = [v5 requestManager];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [requestManager operationToSendStatusUpdate:isa];

  return v8;
}

- (id)operationToSendEvents:(id)events
{
  selfCopy = self;
  v4 = sub_1000DE0B8("DMFConfigurationSourceClientDelegate.operation(toSendEvents)", "DMSourceClient toSendEvents Not implemented");

  return v4;
}

- (id)operationToResolveAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  v6 = sub_1000DE0B8("DMFConfigurationSourceClientDelegate.operation(toResolveAsset)", "DMSourceClient toResolveAsset Not implemented");

  return v6;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100141E98;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100140550;
  v16[5] = v15;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_10010D4C0(0, 0, v11, &unk_100140230, v16);
}

@end