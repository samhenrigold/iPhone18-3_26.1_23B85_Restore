@interface ClientConnection
- (void)addEncodedEngagedResults:(id)results withConfiguration:(id)configuration;
- (void)addEncodedEngagedResults:(id)results withConfiguration:(id)configuration completion:(id)completion;
- (void)allEngagedResults:(id)results maxCount:(int64_t)count withConfiguration:(id)configuration completion:(id)completion;
- (void)bag:(id)bag reply:(id)reply;
- (void)bagChangeNotificationWithNotification:(id)notification;
- (void)clearEncodedEngagedResults:(id)results withConfiguration:(id)configuration completion:(id)completion;
- (void)clearEngagementsFromDate:(id)date toDate:(id)toDate;
- (void)clearEngagementsWithTitle:(id)title type:(id)type;
- (void)fileDeleteNotificationWithNotification:(id)notification;
- (void)fileDownloadNotificationWithNotification:(id)notification;
- (void)fileHandleAndAttributesForResource:(id)resource completion:(id)completion;
- (void)fileHandleForWritingFeedbackType:(int64_t)type reply:(id)reply;
- (void)forceFetchBag:(id)bag reply:(id)reply;
- (void)getImageMap:(id)map;
- (void)getQueryContextDataForClient:(unint64_t)client activity:(unint64_t)activity reply:(id)reply;
- (void)handleInvocation;
- (void)listSessions:(id)sessions;
- (void)reportFeedback:(id)feedback payloadData:(id)data queryId:(unint64_t)id;
- (void)reportPegasusFeedbackWithPayloadData:(id)data forUseragent:(id)useragent;
- (void)request:(id)request request:(id)a4 reply:(id)reply;
- (void)stopSessions:(id)sessions;
- (void)teeFeedback:(id)feedback;
- (void)topEncodedEngagedResultsForInput:(NSString *)input maxCount:(int64_t)count withConfiguration:(PARSessionConfiguration *)configuration completion:(id)completion;
- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2;
@end

@implementation ClientConnection

- (void)handleInvocation
{
  selfCopy = self;
  sub_1000101C4();
}

- (void)bag:(id)bag reply:(id)reply
{
  v6 = _Block_copy(reply);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100013438;
  }

  else
  {
    v7 = 0;
  }

  bagCopy = bag;
  selfCopy = self;
  sub_100010344();
  sub_100010300(v6, v7);
}

- (void)reportFeedback:(id)feedback payloadData:(id)data queryId:(unint64_t)id
{
  feedbackCopy = feedback;
  dataCopy = data;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_10001372C(feedback, v11, v13, id);
  sub_100014A40(v11, v13);
}

- (void)request:(id)request request:(id)a4 reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  requestCopy = request;
  v10 = a4;
  selfCopy = self;
  sub_100035960(request, v10, selfCopy, v8);
  _Block_release(v8);
}

- (void)bagChangeNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10009A594();
}

- (void)fileDownloadNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10009A8EC(notificationCopy);
}

- (void)fileDeleteNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10009AB58(notificationCopy);
}

- (void)forceFetchBag:(id)bag reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  bagCopy = bag;
  selfCopy = self;
  sub_10009ACEC(bag, selfCopy, v6);
  _Block_release(v6);
}

- (void)reportPegasusFeedbackWithPayloadData:(id)data forUseragent:(id)useragent
{
  dataCopy = data;
  useragentCopy = useragent;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10009B410();

  sub_100014A40(v8, v10);
}

- (void)teeFeedback:(id)feedback
{
  v4 = _Block_copy(feedback);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000A5278;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10009B9C8(v7);
  sub_100010300(v7, v6);
}

- (void)stopSessions:(id)sessions
{
  v4 = _Block_copy(sessions);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000A5278;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10009BD64(v7);
  sub_100010300(v7, v6);
}

- (void)listSessions:(id)sessions
{
  v4 = _Block_copy(sessions);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000A4964;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10009C124(v7);
  sub_100010300(v7, v6);
}

- (void)fileHandleAndAttributesForResource:(id)resource completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_1000A495C;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_10009C310(v6, v8, v5);
  sub_100010300(v5, v9);
}

- (void)fileHandleForWritingFeedbackType:(int64_t)type reply:(id)reply
{
  v6 = _Block_copy(reply);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10001341C;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_10009C66C(type, v6);
  sub_100010300(v6, v7);
}

- (void)clearEngagementsFromDate:(id)date toDate:(id)toDate
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10009C868();

  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
}

- (void)clearEngagementsWithTitle:(id)title type:(id)type
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  typeCopy = type;
  selfCopy = self;
  sub_10009CA5C(v6, v8, type);
}

- (void)addEncodedEngagedResults:(id)results withConfiguration:(id)configuration
{
  if (results)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  configurationCopy = configuration;
  selfCopy = self;
  sub_10009CBDC(v6, configurationCopy);
}

- (void)addEncodedEngagedResults:(id)results withConfiguration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (results)
  {
    results = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000A5278;
  }

  else
  {
    v9 = 0;
  }

  configurationCopy = configuration;
  selfCopy = self;
  sub_10009CDAC(results, configurationCopy, v8, v9);
  sub_100010300(v8, v9);
}

- (void)topEncodedEngagedResultsForInput:(NSString *)input maxCount:(int64_t)count withConfiguration:(PARSessionConfiguration *)configuration completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = input;
  v11[3] = count;
  v11[4] = configuration;
  v11[5] = v10;
  v11[6] = self;
  inputCopy = input;
  configurationCopy = configuration;
  selfCopy = self;

  sub_10009D8F4(&unk_10019C630, v11);
}

- (void)allEngagedResults:(id)results maxCount:(int64_t)count withConfiguration:(id)configuration completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v9)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v9 = sub_1000A4898;
  }

  else
  {
    v13 = 0;
  }

  configurationCopy = configuration;
  selfCopy = self;
  sub_10009DA04(v10, v12, count, configurationCopy, v9);
  sub_100010300(v9, v13);
}

- (void)clearEncodedEngagedResults:(id)results withConfiguration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (results)
  {
    results = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000A4890;
  }

  else
  {
    v9 = 0;
  }

  configurationCopy = configuration;
  selfCopy = self;
  sub_10009DD50(results, configurationCopy, v8, v9);
  sub_100010300(v8, v9);
}

- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2
{
  v1Copy = v1;
  v2Copy = v2;
  selfCopy = self;
  sub_10009E0B8();
}

- (void)getImageMap:(id)map
{
  v4 = _Block_copy(map);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000A4888;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10009E1BC(v7);
  sub_100010300(v7, v6);
}

- (void)getQueryContextDataForClient:(unint64_t)client activity:(unint64_t)activity reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  selfCopy = self;
  sub_10009E91C(client, activity, selfCopy, v8);
  _Block_release(v8);
}

@end