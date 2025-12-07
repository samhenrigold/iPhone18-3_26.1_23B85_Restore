@interface SiriInferenceService
- (void)appSelectedForSearchTermWithRankEventId:(id)id selectedAppBundleId:(id)bundleId numberOfAppsShown:(int64_t)shown;
- (void)logCoreAnalyticsMetricWithMetricsData:(id)data;
- (void)rankAppsForSearchTermWithSearchTerm:(id)term maxResults:(int64_t)results excludeAppBundleIds:(id)ids completionHandler:(id)handler;
- (void)waitForBackgroundJobsToFinishWithCompletionHandler:(id)handler;
@end

@implementation SiriInferenceService

- (void)logCoreAnalyticsMetricWithMetricsData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_10000F214(dataCopy);
}

- (void)waitForBackgroundJobsToFinishWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_10000F550(selfCopy, v4);
  _Block_release(v4);
}

- (void)rankAppsForSearchTermWithSearchTerm:(id)term maxResults:(int64_t)results excludeAppBundleIds:(id)ids completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  selfCopy = self;
  sub_10000F61C(v9, v11, results, v12, sub_10001071C, v13);
}

- (void)appSelectedForSearchTermWithRankEventId:(id)id selectedAppBundleId:(id)bundleId numberOfAppsShown:(int64_t)shown
{
  v8 = sub_1000045B0(&qword_100021768, &qword_1000145F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  if (id)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = 1;
  }

  sub_10000B148(v10, v12, 1, v11);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  selfCopy = self;
  sub_10000FEF8(v10, v13, v15, shown);

  sub_10000E9B8(v10, &qword_100021768, &qword_1000145F8);
}

@end