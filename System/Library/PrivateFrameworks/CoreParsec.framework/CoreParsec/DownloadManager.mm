@interface DownloadManager
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler;
- (void)bagChangeNotificationWithNotification:(id)notification;
@end

@implementation DownloadManager

- (void)bagChangeNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1000A88F8();
}

- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler
{
  v10 = type metadata accessor for URLRequest();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1000AD8C8(sessionCopy, taskCopy, v13, selfCopy, v14);
  _Block_release(v14);

  (*(v11 + 8))(v13, v10);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_1000AEA78();
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1000B03E0();

  (*(v9 + 8))(v11, v8);
}

@end