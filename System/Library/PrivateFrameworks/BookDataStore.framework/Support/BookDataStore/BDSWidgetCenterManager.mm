@interface BDSWidgetCenterManager
+ (BDSWidgetCenterManager)sharedInstance;
- (BDSWidgetCenterManager)init;
- (void)reloadWidgetTimelinesWithShouldDonateRelevance:(BOOL)relevance;
@end

@implementation BDSWidgetCenterManager

+ (BDSWidgetCenterManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000463BC;
  block[3] = &unk_10023F980;
  block[4] = self;
  if (qword_100274A78 != -1)
  {
    dispatch_once(&qword_100274A78, block);
  }

  v2 = qword_100274A80;

  return v2;
}

- (BDSWidgetCenterManager)init
{
  v16.receiver = self;
  v16.super_class = BDSWidgetCenterManager;
  v2 = [(BDSWidgetCenterManager *)&v16 init];
  if (v2)
  {
    v3 = time(0);
    srand48(v3);
    objc_initWeak(&location, v2);
    v4 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.iBooks.BooksWidget" kind:@"BooksWidget"];
    timelineController = v2->_timelineController;
    v2->_timelineController = v4;

    v6 = [BUCoalescingCallBlock alloc];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100046550;
    v13 = &unk_10023FC40;
    objc_copyWeak(&v14, &location);
    v7 = [v6 initWithNotifyBlock:&v10 blockDescription:@"BDSWidgetCenter Timeline Reload"];
    coalescingBlock = v2->_coalescingBlock;
    v2->_coalescingBlock = v7;

    [(BUCoalescingCallBlock *)v2->_coalescingBlock setCoalescingDelay:2.0, v10, v11, v12, v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)reloadWidgetTimelinesWithShouldDonateRelevance:(BOOL)relevance
{
  relevanceCopy = relevance;
  v5 = +[BUBag defaultBag];
  booksReadingNowWidgetRolloutRate = [v5 booksReadingNowWidgetRolloutRate];
  valuePromise = [booksReadingNowWidgetRolloutRate valuePromise];
  v22 = 0;
  v8 = [valuePromise resultWithTimeout:&v22 error:2.0];
  v9 = v22;
  [v8 doubleValue];
  v11 = v10;

  v13 = drand48();
  if (v9)
  {
    v14 = sub_10000DE28(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      v24 = v11;
      v25 = 2048;
      v26 = v13;
      v27 = 1024;
      v28 = 0;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "BDSWidgetCenterManager - failed to retrieve bag key value. Rollout rate: %f, random number: %f, isPassRolloutTest: %d, error: %@", buf, 0x26u);
    }
  }

  v16 = v13 <= v11 && v9 == 0 && relevanceCopy;
  [(BDSWidgetCenterManager *)self setShouldDonateRelevance:v16];
  v17 = [[BDSOSTransaction alloc] initWithTransactionName:"com.apple.bookdatastored.BDSWidgetCenterManager.reloadWidgetTimelinesWithShouldDonateRelevance"];
  coalescingBlock = [(BDSWidgetCenterManager *)self coalescingBlock];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100046A50;
  v20[3] = &unk_10023F6B0;
  v21 = v17;
  v19 = v17;
  [coalescingBlock signalWithCompletion:v20];
}

@end