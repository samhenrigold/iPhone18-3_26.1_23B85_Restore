@interface SecureTaskDelegate
- (_TtC20AttributionKitDaemon18SecureTaskDelegate)init;
- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
@end

@implementation SecureTaskDelegate

- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = session;
  v13[3] = challenge;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001BAFD8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001BAFE8;
  v16[5] = v15;
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1000A226C(0, 0, v11, &unk_1001BAFF8, v16);
}

- (_TtC20AttributionKitDaemon18SecureTaskDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecureTaskDelegate();
  return [(SecureTaskDelegate *)&v3 init];
}

@end