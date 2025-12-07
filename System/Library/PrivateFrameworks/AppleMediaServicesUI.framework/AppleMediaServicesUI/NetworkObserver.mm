@interface NetworkObserver
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
@end

@implementation NetworkObserver

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  sub_10017B0D4(selfCopy, taskCopy, metricsCopy);
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
  sub_10017B528(sessionCopy, taskCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_10017BD34(sessionCopy, taskCopy, error);
}

@end