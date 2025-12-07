@interface DIPHTTPSessionTaskDelegate
- (_TtC8coreidvdP33_0866DFB7931A54BC66BDAA51B582B51526DIPHTTPSessionTaskDelegate)init;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
@end

@implementation DIPHTTPSessionTaskDelegate

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v8 = sub_100007224(&qword_100849428, &qword_1006E9430);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for URLRequest();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(handler);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_1005C5C10(v13, v11);
  isa = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v11, v14);
  }

  v18[2](v18, isa);

  _Block_release(v18);
  sub_10000BE18(v13, &qword_100849428, &qword_1006E9430);
  (*(v15 + 8))(v17, v14);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  sessionCopy = session;
  connectivityCopy = connectivity;
  selfCopy = self;
  sub_1005C5404(connectivityCopy);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_1005C5844(error);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1005C5A8C(challengeCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC8coreidvdP33_0866DFB7931A54BC66BDAA51B582B51526DIPHTTPSessionTaskDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DIPHTTPSessionTaskDelegate *)&v3 init];
}

@end