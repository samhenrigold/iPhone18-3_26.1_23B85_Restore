@interface BooksNotificationViewController
- (BOOL)_isURLValid:(id)valid hostPatterns:(id)patterns pathPatterns:(id)pathPatterns;
- (BooksNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)appGroupIdentifierForBridge:(id)bridge;
- (id)objectRegistrationsForBridge:(id)bridge;
- (void)_emitNotificationEngagementEventForResponse:(id)response notificationAction:(id)action actionType:(int64_t)type;
- (void)_renderUserNotification:(id)notification;
- (void)_reportMetricsEvent:(id)event;
- (void)_setupWithCompletion:(id)completion;
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)feedViewController:(id)controller willTransitionToContentHeight:(double)height;
- (void)syncLayoutControllerNeedsFlushing:(id)flushing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BooksNotificationViewController

- (BooksNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = BooksNotificationViewController;
  v4 = [(BooksNotificationViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[BCAppAnalyticsExtensionManager alloc] initWithUploadsEnabled:0];
    [(BooksNotificationViewController *)v4 setAnalyticsManager:v5];

    v6 = [[TUISyncLayoutController alloc] initWithDelegate:v4];
    syncLayoutController = v4->_syncLayoutController;
    v4->_syncLayoutController = v6;
  }

  return v4;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = BooksNotificationViewController;
  [(BooksNotificationViewController *)&v9 viewDidLoad];
  view = [(BooksNotificationViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v10);

  v5 = objc_opt_new();
  [v5 expectedContentSize];
  v7 = v6;

  [(BooksNotificationViewController *)self setPreferredContentSize:Width, v7];
  +[BAEventReporter setupLibraryAnalyticsDataProvider];
  analyticsManager = [(BooksNotificationViewController *)self analyticsManager];
  [analyticsManager setupTrackingForRootViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = BooksNotificationViewController;
  [(BooksNotificationViewController *)&v15 viewDidLayoutSubviews];
  feedViewController = [(BooksNotificationViewController *)self feedViewController];

  if (feedViewController)
  {
    view = [(BooksNotificationViewController *)self view];
    [view frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    feedViewController2 = [(BooksNotificationViewController *)self feedViewController];
    view2 = [feedViewController2 view];
    [view2 setFrame:{v6, v8, v10, v12}];
  }

  [(TUISyncLayoutController *)self->_syncLayoutController flush];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BooksNotificationViewController;
  [(BooksNotificationViewController *)&v5 viewWillAppear:appear];
  analyticsManager = [(BooksNotificationViewController *)self analyticsManager];
  [analyticsManager startSession];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BooksNotificationViewController;
  [(BooksNotificationViewController *)&v4 viewDidAppear:appear];
  [(BooksNotificationViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BooksNotificationViewController;
  [(BooksNotificationViewController *)&v4 viewWillDisappear:disappear];
  [(BooksNotificationViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = BooksNotificationViewController;
  v4 = [(BooksNotificationViewController *)&v9 viewDidDisappear:disappear];
  v5 = BooksNotificationLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "viewDidDisappear", buf, 2u);
  }

  [(BooksNotificationViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
  v6 = +[NSProcessInfo processInfo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002744;
  v7[3] = &unk_1000084B8;
  v7[4] = self;
  [v6 performExpiringActivityWithReason:@"uploading metrics" usingBlock:v7];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [objc_opt_class() userNotificationFromNotification:notificationCopy];
  v6 = v5;
  if (notificationCopy)
  {
    videoUrl = [v5 videoUrl];

    if (videoUrl)
    {
      v15.receiver = self;
      v15.super_class = BooksNotificationViewController;
      [(BooksNotificationViewController *)&v15 didReceiveNotification:notificationCopy];
    }

    else
    {
      v9 = +[BUBag defaultBag];
      ixStoreSheetBooks = [v9 ixStoreSheetBooks];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100002978;
      v11[3] = &unk_100008508;
      v12 = v6;
      selfCopy = self;
      v14 = notificationCopy;
      [ixStoreSheetBooks valueWithCompletion:v11];
    }
  }

  else
  {
    v8 = BooksNotificationLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000048E0(self, v8);
    }
  }
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = objc_opt_class();
  notification = [responseCopy notification];
  v10 = [v8 userNotificationFromNotification:notification];

  actionIdentifier = [responseCopy actionIdentifier];
  LODWORD(notification) = [actionIdentifier isEqualToString:UNNotificationDefaultActionIdentifier];

  v54 = handlerCopy;
  v56 = v10;
  if (notification)
  {
    defaultAction = [v10 defaultAction];
  }

  else
  {
    actionIdentifier2 = [responseCopy actionIdentifier];
    v14 = [actionIdentifier2 isEqualToString:UNNotificationDismissActionIdentifier];

    if (v14)
    {
      defaultAction = 0;
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      buttonActions = [v10 buttonActions];
      defaultAction = [buttonActions countByEnumeratingWithState:&v68 objects:v78 count:16];
      if (defaultAction)
      {
        v16 = *v69;
        while (2)
        {
          for (i = 0; i != defaultAction; i = i + 1)
          {
            if (*v69 != v16)
            {
              objc_enumerationMutation(buttonActions);
            }

            v18 = *(*(&v68 + 1) + 8 * i);
            identifier = [v18 identifier];
            actionIdentifier3 = [responseCopy actionIdentifier];
            v21 = [identifier isEqualToString:actionIdentifier3];

            if (v21)
            {
              defaultAction = v18;
              goto LABEL_15;
            }
          }

          defaultAction = [buttonActions countByEnumeratingWithState:&v68 objects:v78 count:16];
          if (defaultAction)
          {
            continue;
          }

          break;
        }

LABEL_15:
        v10 = v56;
      }
    }
  }

  defaultURL = [defaultAction defaultURL];
  bc_isBookStoreAddToWantToReadURL = [defaultURL bc_isBookStoreAddToWantToReadURL];
  if (bc_isBookStoreAddToWantToReadURL)
  {
    v24 = 3;
LABEL_29:
    v26 = BooksNotificationLog(bc_isBookStoreAddToWantToReadURL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *buf = 138543618;
      v75 = v27;
      v76 = 2048;
      v77 = v24;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: Report Figaro metrics for action type %ld", buf, 0x16u);
    }

    metricsEvent = [defaultAction metricsEvent];
    [(BooksNotificationViewController *)self _reportMetricsEvent:metricsEvent];
    goto LABEL_32;
  }

  bc_isBookStoreAddToWantToReadURL = [defaultURL bc_isBookStoreBuyNowURL];
  if (bc_isBookStoreAddToWantToReadURL)
  {
    v24 = 2;
    goto LABEL_29;
  }

  bc_isBookStoreAddToWantToReadURL = [defaultURL bc_isBookStoreViewInStoreURL];
  if (bc_isBookStoreAddToWantToReadURL)
  {
    v24 = 4;
    goto LABEL_29;
  }

  bc_isBookStoreAddToWantToReadURL = [defaultURL bc_isBookStoreStartReadingURL];
  if (bc_isBookStoreAddToWantToReadURL)
  {
    v24 = 5;
    goto LABEL_29;
  }

  bc_isBookStoreAddToWantToReadURL = [defaultURL bc_isBookStoreStartListeningURL];
  v24 = 6;
  if (bc_isBookStoreAddToWantToReadURL)
  {
    v25 = 6;
  }

  else
  {
    v25 = 0;
  }

  if ((v25 - 2) <= 4)
  {
    goto LABEL_29;
  }

  metricsEvent = BooksNotificationLog(bc_isBookStoreAddToWantToReadURL);
  if (os_log_type_enabled(metricsEvent, OS_LOG_TYPE_DEFAULT))
  {
    v52 = objc_opt_class();
    *buf = 138543618;
    v75 = v52;
    v76 = 2048;
    v77 = v25;
    v53 = v52;
    _os_log_impl(&_mh_execute_header, metricsEvent, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: Skip Figaro metrics reporting for action type %ld", buf, 0x16u);
  }

  v24 = 0;
LABEL_32:

  [(BooksNotificationViewController *)self _emitNotificationEngagementEventForResponse:responseCopy notificationAction:defaultAction actionType:v24];
  metricsEvent2 = [v10 metricsEvent];
  v31 = [metricsEvent2 objectForKeyedSubscript:@"details"];
  v32 = [v31 objectForKeyedSubscript:@"contentAdamId"];

  objc_opt_class();
  v33 = BUDynamicCast();
  v34 = v33;
  if (v33)
  {
    stringValue = v33;
  }

  else
  {
    objc_opt_class();
    v36 = BUDynamicCast();
    stringValue = [v36 stringValue];
  }

  v72[0] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v72[1] = FBSOpenApplicationOptionKeyUnlockDevice;
  v73[0] = &__kCFBooleanTrue;
  v73[1] = &__kCFBooleanTrue;
  v72[2] = FBSOpenApplicationOptionKeyLaunchOrigin;
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v73[2] = v38;
  v39 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:3];

  if ((v24 - 4) < 3)
  {
    ba_effectiveAnalyticsTracker = [(BooksNotificationViewController *)self ba_effectiveAnalyticsTracker];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100003448;
    v58[3] = &unk_100008530;
    v58[4] = self;
    v59 = stringValue;
    v63 = v24;
    v60 = defaultURL;
    v61 = v39;
    v42 = v55;
    v62 = v55;
    [BNBookDataStoreServices addStoreIDToWantToRead:v59 tracker:ba_effectiveAnalyticsTracker completion:v58];

    v43 = v59;
LABEL_40:

    goto LABEL_41;
  }

  if (v24 == 2)
  {
    v45 = BooksNotificationLog(v40);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = objc_opt_class();
      *buf = 138543618;
      v75 = v46;
      v76 = 2048;
      v77 = 2;
      v47 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: handling URL for action type %ld", buf, 0x16u);
    }

    v48 = +[LSApplicationWorkspace defaultWorkspace];
    [v48 openSensitiveURL:defaultURL withOptions:v39];

    v42 = v55;
    v55[2](v55, 1);
  }

  else
  {
    if (v24 == 3)
    {
      ba_effectiveAnalyticsTracker2 = [(BooksNotificationViewController *)self ba_effectiveAnalyticsTracker];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100003354;
      v64[3] = &unk_100008468;
      v64[4] = self;
      v65 = stringValue;
      v67 = 3;
      v66 = v55;
      [BNBookDataStoreServices addStoreIDToWantToRead:v65 tracker:ba_effectiveAnalyticsTracker2 completion:v64];

      v42 = v55;
      v43 = v65;
      goto LABEL_40;
    }

    v49 = BooksNotificationLog(v40);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = objc_opt_class();
      *buf = 138543618;
      v75 = v50;
      v76 = 2048;
      v77 = v24;
      v51 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: Let superclass to handle URL for action type %ld", buf, 0x16u);
    }

    v57.receiver = self;
    v57.super_class = BooksNotificationViewController;
    v42 = v55;
    [(BooksNotificationViewController *)&v57 didReceiveNotificationResponse:responseCopy completionHandler:v55];
  }

LABEL_41:
}

- (id)appGroupIdentifierForBridge:(id)bridge
{
  v3 = +[BUAppGroup books];
  identifier = [v3 identifier];

  return identifier;
}

- (id)objectRegistrationsForBridge:(id)bridge
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("TransactionController+JS.workQueue", v5);

  v7 = [[TUITransactionController alloc] initWithQueue:v6];
  v14[0] = @"notification-extension";
  v13[0] = @"applicationContext";
  v13[1] = @"analyticsController";
  analyticsManager = [(BooksNotificationViewController *)self analyticsManager];
  analyticsController = [analyticsManager analyticsController];
  v14[1] = analyticsController;
  v13[2] = @"remoteConfigDataContainer";
  v10 = +[BCRCDataContainer defaultContainer];
  v14[2] = v10;
  v14[3] = v7;
  v13[3] = @"transactionController";
  v13[4] = @"AlertController";
  v14[4] = objc_opt_class();
  v13[5] = @"DynamicArray";
  v14[5] = objc_opt_class();
  v13[6] = @"DynamicValue";
  v14[6] = objc_opt_class();
  v13[7] = @"FeedDataRequest";
  v14[7] = objc_opt_class();
  v13[8] = @"FeedViewController";
  v14[8] = objc_opt_class();
  v13[9] = @"NoticeViewController";
  v14[9] = objc_opt_class();
  v13[10] = @"OSFeatureFlags";
  v14[10] = objc_opt_class();
  v13[11] = @"Transaction";
  v14[11] = objc_opt_class();
  v13[12] = @"VCStack";
  v14[12] = objc_opt_class();
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:13];

  return v11;
}

- (void)_setupWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BSUIGetLibraryItemStateProvider();
  v6 = +[BSUITemplate manager];
  dynamicRegistry = [v6 dynamicRegistry];
  stateCenter = [v5 stateCenter];
  [dynamicRegistry registerStateProvider:stateCenter forKind:@"libraryItem"];

  v9 = +[BCAnalyticsVisibilityPresentationNotifier sharedInstance];
  v10 = +[JSABridge sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000039B0;
  v13[3] = &unk_100008580;
  v14 = v6;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = v6;
  [v10 initializeEnvironmentWithDataSource:self completion:v13];
}

- (void)_renderUserNotification:(id)notification
{
  notificationCopy = notification;
  v5 = BooksNotificationLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [notificationCopy logKey];
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = logKey;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Will render notification", buf, 0x16u);
  }

  createUNNotificationActions = [notificationCopy createUNNotificationActions];
  if (createUNNotificationActions)
  {
    extensionContext = [(BooksNotificationViewController *)self extensionContext];
    [extensionContext setNotificationActions:createUNNotificationActions];
  }

  defaultAction = [notificationCopy defaultAction];
  defaultURL = [defaultAction defaultURL];
  absoluteString = [defaultURL absoluteString];

  v18 = @"url";
  v19 = absoluteString;
  v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v13 = [[BNFeedViewController alloc] initWithOptions:v12];
  [(BooksNotificationViewController *)self setFeedViewController:v13];

  feedViewController = [(BooksNotificationViewController *)self feedViewController];
  [feedViewController setModalPresentationStyle:0];

  feedViewController2 = [(BooksNotificationViewController *)self feedViewController];
  [feedViewController2 setNotificationDelegate:self];

  feedViewController3 = [(BooksNotificationViewController *)self feedViewController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003D14;
  v17[3] = &unk_1000085A8;
  v17[4] = self;
  [(BooksNotificationViewController *)self presentViewController:feedViewController3 animated:0 completion:v17];
}

- (BOOL)_isURLValid:(id)valid hostPatterns:(id)patterns pathPatterns:(id)pathPatterns
{
  validCopy = valid;
  pathPatternsCopy = pathPatterns;
  patternsCopy = patterns;
  host = [validCopy host];
  v11 = [host bc_hasMatchInRegexPatterns:patternsCopy];

  if (v11)
  {
    path = [validCopy path];
    v13 = [path bc_hasMatchInRegexPatterns:pathPatternsCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_reportMetricsEvent:(id)event
{
  if (event)
  {
    eventCopy = event;
    v5 = objc_alloc_init(AMSMetrics);
    [v5 enqueueEvent:eventCopy];

    flush = [v5 flush];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003F14;
    v7[3] = &unk_1000085D0;
    v7[4] = self;
    [flush addFinishBlock:v7];
  }
}

- (void)_emitNotificationEngagementEventForResponse:(id)response notificationAction:(id)action actionType:(int64_t)type
{
  actionCopy = action;
  notification = [response notification];
  request = [notification request];

  content = [request content];
  metricsEvent = [actionCopy metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];
  v12 = [underlyingDictionary objectForKeyedSubscript:@"details"];
  v13 = [v12 objectForKeyedSubscript:@"contentAdamId"];

  objc_opt_class();
  v14 = BUDynamicCast();
  v45 = v13;
  if (v14)
  {
    stringValue = v14;
LABEL_4:
    v49 = stringValue;
    v17 = [NSArray arrayWithObjects:&v49 count:1];
    goto LABEL_5;
  }

  objc_opt_class();
  v16 = BUDynamicCast();
  stringValue = [v16 stringValue];

  if (stringValue)
  {
    goto LABEL_4;
  }

  v17 = &__NSArray0__struct;
LABEL_5:
  metricsEvent2 = [actionCopy metricsEvent];
  underlyingDictionary2 = [metricsEvent2 underlyingDictionary];
  v20 = [underlyingDictionary2 objectForKeyedSubscript:@"notificationId"];
  v21 = v20;
  v47 = request;
  if (v20)
  {
    identifier = v20;
  }

  else
  {
    identifier = [request identifier];
  }

  v23 = identifier;

  title = [content title];
  body = [content body];
  metricsEvent3 = [actionCopy metricsEvent];
  underlyingDictionary3 = [metricsEvent3 underlyingDictionary];
  v27 = [underlyingDictionary3 objectForKeyedSubscript:@"details"];
  v28 = [v27 objectForKeyedSubscript:@"notificationSubtype"];

  v46 = content;
  if ([v28 isEqualToString:@"newBookAuthor"])
  {
    v29 = 2;
  }

  else
  {
    v29 = [v28 isEqualToString:@"newBookSeries"];
  }

  v42 = v23;
  v30 = [[BANotificationData alloc] initWithNotificationContentID:v17 notificationID:v23 notificationType:1 recoType:v29 goalType:0 titleCode:&stru_100008A38 title:title messageCode:&stru_100008A38 message:body];
  defaultURL = [actionCopy defaultURL];
  absoluteString = [defaultURL absoluteString];
  v33 = absoluteString;
  if (absoluteString)
  {
    v34 = absoluteString;
  }

  else
  {
    v34 = &stru_100008A38;
  }

  v35 = v34;

  v36 = 0;
  if ((type - 1) <= 3)
  {
    v36 = qword_100006240[type - 1];
  }

  v37 = [[BANotificationEngagementData alloc] initWithActionType:type actionUrl:v35 targetID:v17 targetType:v36];

  analyticsManager = [(BooksNotificationViewController *)self analyticsManager];
  analyticsController = [analyticsManager analyticsController];
  applicationTracker = [analyticsController applicationTracker];

  v41 = +[BAEventReporter sharedReporter];
  [v41 emitNotificationEngagementEventWithTracker:applicationTracker engagementData:v37 notificationData:v30];
}

- (void)feedViewController:(id)controller willTransitionToContentHeight:(double)height
{
  viewIfLoaded = [(BooksNotificationViewController *)self viewIfLoaded];
  [viewIfLoaded frame];
  [(BooksNotificationViewController *)self setPreferredContentSize:CGRectGetWidth(v8), height];
}

- (void)syncLayoutControllerNeedsFlushing:(id)flushing
{
  view = [(BooksNotificationViewController *)self view];
  [view setNeedsLayout];
}

@end