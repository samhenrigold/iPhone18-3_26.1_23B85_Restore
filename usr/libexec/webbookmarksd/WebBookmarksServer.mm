@interface WebBookmarksServer
+ (id)sharedServer;
- (BOOL)_connectionHasRequiredEntitlementForImportOrExport:(id)export;
- (BOOL)_exportsContentOfBookmarkFolder:(id)folder collection:(id)collection writer:(id)writer error:(id *)error;
- (BOOL)_isCloudHistoryEnabled;
- (BOOL)clientIsDefaultBrowserEntitledWithConnection:(id)connection message:(id)message;
- (WebBookmarksServer)init;
- (id)_newWebsiteDataStore;
- (void)_addToReadingListWithMessage:(id)message forConnection:(id)connection;
- (void)_clearAllCloudTabDevicesForConnection:(id)connection;
- (void)_clearAllHistory;
- (void)_clearAllScribbleEdits;
- (void)_clearCloudTabsForCurrentDeviceForConnection:(id)connection;
- (void)_clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate profiles:(id)profiles options:(int64_t)options clearAllSpotlightHistoryForProfile:(BOOL)profile;
- (void)_connection:(id)_connection clearAllSafariHistoryWithMessage:(id)message;
- (void)_connection:(id)_connection clearHistoryWithMessage:(id)message;
- (void)_connection:(id)_connection computeNumberOfItemsToBeImportedWithMessage:(id)message;
- (void)_connection:(id)_connection deleteSafariAllWebSecurityOriginWithMessage:(id)message;
- (void)_connection:(id)_connection deleteSafariPersistentURLCacheStorage:(id)storage;
- (void)_connection:(id)_connection deleteSafariWebSecurityOriginWithMessage:(id)message;
- (void)_connection:(id)_connection didToggleCloudTabsWithMessage:(id)message;
- (void)_connection:(id)_connection exportBookmarksWithMessage:(id)message;
- (void)_connection:(id)_connection exportHistoryWithMessage:(id)message;
- (void)_connection:(id)_connection getNumberOfHistorySitesToBeExportedWithMessage:(id)message;
- (void)_connection:(id)_connection getSafariDataUsageSummaryWithMessage:(id)message;
- (void)_connection:(id)_connection getSafariWebDataUsageWithMessage:(id)message;
- (void)_connection:(id)_connection importBookmarksWithMessage:(id)message;
- (void)_connection:(id)_connection importChromeExtensionsWithMessage:(id)message;
- (void)_connection:(id)_connection importChromeHistoryWithMessage:(id)message;
- (void)_connection:(id)_connection importCreditCardsWithMessage:(id)message;
- (void)_connection:(id)_connection importExtensionsWithMessage:(id)message;
- (void)_connection:(id)_connection importHistoryWithMessage:(id)message;
- (void)_connection:(id)_connection openSafariExportSettingsWithMessage:(id)message;
- (void)_connection:(id)_connection scanImportURLsWithMessage:(id)message;
- (void)_deleteDataForWebsiteDataRecord:(id)record matchingWebKitWebsiteDataRecords:(id)records websiteDataStore:(id)store completion:(id)completion;
- (void)_deleteDataForWebsiteDataRecord:(id)record websiteDataStore:(id)store completion:(id)completion;
- (void)_exportHistoryToURL:(id)l sandboxExtension:(id)extension profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_generateWebsiteDataRecordsWithCompletion:(id)completion;
- (void)_getSafariDataUsageSummaryWithWebsiteDataStore:(id)store completion:(id)completion;
- (void)_importChromeExtensionsFromFileHandle:(id)handle connection:(id)connection completionHandler:(id)handler;
- (void)_importCreditCardsFromFileHandle:(id)handle connection:(id)connection completionHandler:(id)handler;
- (void)_importExtensionsFromFileHandle:(id)handle connection:(id)connection completionHandler:(id)handler;
- (void)_importHistoryFromFileHandle:(id)handle ageLimit:(double)limit profileIdentifier:(id)identifier forChrome:(BOOL)chrome completionHandler:(id)handler;
- (void)_logWarningWithMessage:(id)message connection:(id)connection;
- (void)_performBlock:(id)block forAllDataStoresNeededForProfileIdentifiers:(id)identifiers completion:(id)completion;
- (void)_performBlock:(id)block forDataStores:(id)stores completion:(id)completion;
- (void)_scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler;
- (void)dealloc;
- (void)reportSevereError:(id)error completionHandler:(id)handler;
@end

@implementation WebBookmarksServer

- (WebBookmarksServer)init
{
  v97.receiver = self;
  v97.super_class = WebBookmarksServer;
  v2 = [(WebBookmarksServer *)&v97 init];
  if (v2)
  {
    inited = objc_initWeak(&location, v2);
    v5 = sub_100014400(inited, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Initializing WebBookmarksServer", buf, 2u);
    }

    v6 = dispatch_queue_create("com.apple.webbookmarksd.WebsiteDataUsageTaskQueue", 0);
    websiteDataUsageTaskQueue = v2->_websiteDataUsageTaskQueue;
    v2->_websiteDataUsageTaskQueue = v6;

    v8 = dispatch_queue_create("com.apple.webbookmarksd.ProfilesWebsiteDataUsageTaskQueue", 0);
    profilesWebsiteDataUsageTaskQueue = v2->_profilesWebsiteDataUsageTaskQueue;
    v2->_profilesWebsiteDataUsageTaskQueue = v8;

    v10 = objc_alloc_init(WBUFeatureManager);
    featureManager = v2->_featureManager;
    v2->_featureManager = v10;

    v12 = objc_alloc_init(WebBookmarksLockCoordinator);
    bookmarkLockCoordinator = v2->_bookmarkLockCoordinator;
    v2->_bookmarkLockCoordinator = v12;

    if ([(WBUFeatureManager *)v2->_featureManager isReadingListAvailable])
    {
      v14 = objc_alloc_init(WebBookmarksServerReadingListHandler);
      readingListHandler = v2->_readingListHandler;
      v2->_readingListHandler = v14;
    }

    v16 = [WebBookmarksXPCListener alloc];
    v17 = [v16 initListenerForMachService:kWebBookmarksdServiceName];
    listener = v2->_listener;
    v2->_listener = v17;

    [(WebBookmarksXPCListener *)v2->_listener setDelegate:v2];
    v19 = v2->_listener;
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000082B0;
    v93[3] = &unk_1000291F0;
    objc_copyWeak(&v94, &location);
    [(WebBookmarksXPCListener *)v19 setHandler:v93 forMessageNamed:kWebBookmarksAddToReadingListMessageName];
    v20 = v2->_listener;
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_100008328;
    v91[3] = &unk_1000291F0;
    objc_copyWeak(&v92, &location);
    [(WebBookmarksXPCListener *)v20 setHandler:v91 forMessageNamed:kWebBookmarksClearAllCloudTabDevicesMessageName];
    v21 = v2->_listener;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100008384;
    v89[3] = &unk_1000291F0;
    objc_copyWeak(&v90, &location);
    [(WebBookmarksXPCListener *)v21 setHandler:v89 forMessageNamed:kWebBookmarksClearCloudTabsForCurrentDeviceMessageName];
    v22 = v2->_listener;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_1000083E0;
    v87[3] = &unk_1000291F0;
    objc_copyWeak(&v88, &location);
    [(WebBookmarksXPCListener *)v22 setHandler:v87 forMessageNamed:kWebBookmarksDidToggleCloudTabsMessageName];
    v23 = v2->_listener;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100008458;
    v85[3] = &unk_1000291F0;
    objc_copyWeak(&v86, &location);
    [(WebBookmarksXPCListener *)v23 setHandler:v85 forMessageNamed:kWebBookmarksGetSafariWebDataUsageMessageName];
    v24 = v2->_listener;
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_1000084D0;
    v83[3] = &unk_1000291F0;
    objc_copyWeak(&v84, &location);
    [(WebBookmarksXPCListener *)v24 setHandler:v83 forMessageNamed:kWebBookmarksDeleteAllSafariWebSecurityOriginsMessageName];
    v25 = v2->_listener;
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100008548;
    v81[3] = &unk_1000291F0;
    objc_copyWeak(&v82, &location);
    [(WebBookmarksXPCListener *)v25 setHandler:v81 forMessageNamed:kWebBookmarksDeleteSafariWebSecurityOriginMessageName];
    v26 = v2->_listener;
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000085C0;
    v79[3] = &unk_1000291F0;
    objc_copyWeak(&v80, &location);
    [(WebBookmarksXPCListener *)v26 setHandler:v79 forMessageNamed:kWebBookmarksDeleteSafariPersistentURLCacheStorageMessageName];
    v27 = v2->_listener;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100008638;
    v77[3] = &unk_1000291F0;
    objc_copyWeak(&v78, &location);
    [(WebBookmarksXPCListener *)v27 setHandler:v77 forMessageNamed:kWebBookmarksGetSafariDataUsageSummaryMessageName];
    v28 = v2->_listener;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000086B0;
    v75[3] = &unk_1000291F0;
    objc_copyWeak(&v76, &location);
    [(WebBookmarksXPCListener *)v28 setHandler:v75 forMessageNamed:kWebBookmarksClearHistoryMessageName];
    v29 = v2->_listener;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_100008728;
    v73[3] = &unk_1000291F0;
    objc_copyWeak(&v74, &location);
    [(WebBookmarksXPCListener *)v29 setHandler:v73 forMessageNamed:kWebBookmarksExportBookmarksMessageName];
    v30 = v2->_listener;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000087A0;
    v71[3] = &unk_1000291F0;
    objc_copyWeak(&v72, &location);
    [(WebBookmarksXPCListener *)v30 setHandler:v71 forMessageNamed:kWebBookmarksImportBookmarksMessageName];
    v31 = v2->_listener;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100008818;
    v69[3] = &unk_1000291F0;
    objc_copyWeak(&v70, &location);
    [(WebBookmarksXPCListener *)v31 setHandler:v69 forMessageNamed:kWebBookmarksExportHistoryMessageName];
    v32 = v2->_listener;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100008890;
    v67[3] = &unk_1000291F0;
    objc_copyWeak(&v68, &location);
    [(WebBookmarksXPCListener *)v32 setHandler:v67 forMessageNamed:kWebBookmarksGetNumberOfHistorySitesToBeExportedMessageName];
    v33 = v2->_listener;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100008908;
    v65[3] = &unk_1000291F0;
    objc_copyWeak(&v66, &location);
    [(WebBookmarksXPCListener *)v33 setHandler:v65 forMessageNamed:kWebBookmarksScanImportURLsMessageName];
    v34 = v2->_listener;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100008980;
    v63[3] = &unk_1000291F0;
    objc_copyWeak(&v64, &location);
    [(WebBookmarksXPCListener *)v34 setHandler:v63 forMessageNamed:kWebBookmarksImportChromeExtensionsMessageName];
    v35 = v2->_listener;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000089F8;
    v61[3] = &unk_1000291F0;
    objc_copyWeak(&v62, &location);
    [(WebBookmarksXPCListener *)v35 setHandler:v61 forMessageNamed:kWebBookmarksImportHistoryMessageName];
    v36 = v2->_listener;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100008A70;
    v59[3] = &unk_1000291F0;
    objc_copyWeak(&v60, &location);
    [(WebBookmarksXPCListener *)v36 setHandler:v59 forMessageNamed:kWebBookmarksImportChromeHistoryMessageName];
    v37 = v2->_listener;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100008AE8;
    v57[3] = &unk_1000291F0;
    objc_copyWeak(&v58, &location);
    [(WebBookmarksXPCListener *)v37 setHandler:v57 forMessageNamed:kWebBookmarksImportCreditCardsMessageName];
    v38 = v2->_listener;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100008B60;
    v55[3] = &unk_1000291F0;
    objc_copyWeak(&v56, &location);
    [(WebBookmarksXPCListener *)v38 setHandler:v55 forMessageNamed:kWebBookmarksImportExtensionsMessageName];
    v39 = v2->_listener;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100008BD8;
    v53[3] = &unk_1000291F0;
    objc_copyWeak(&v54, &location);
    [(WebBookmarksXPCListener *)v39 setHandler:v53 forMessageNamed:kWebBookmarksComputeNumberOfItemsToBeImportedMessageName];
    v40 = v2->_listener;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100008C50;
    v51[3] = &unk_1000291F0;
    objc_copyWeak(&v52, &location);
    [(WebBookmarksXPCListener *)v40 setHandler:v51 forMessageNamed:kWebBookmarksOpenSafariExportSettings];
    v41 = v2->_listener;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100008CC8;
    v49[3] = &unk_1000291F0;
    objc_copyWeak(&v50, &location);
    [(WebBookmarksXPCListener *)v41 setHandler:v49 forMessageNamed:kWebBookmarksClearHSTSSuperCookiesMessageName];
    [(WebBookmarksXPCListener *)v2->_listener setHandler:&stru_100029230 forMessageNamed:webBookmarksScheduleBookmarksDatabaseMaintenanceTask];
    [(WebBookmarksXPCListener *)v2->_listener setHandler:&stru_100029250 forMessageNamed:webBookmarksScheduleBookmarksDatabaseMigrationTask];
    [(WebBookmarksXPCListener *)v2->_listener setHandler:&stru_100029270 forMessageNamed:webBookmarksPasswordIconsCleanupMessageName];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100008D64;
    v47[3] = &unk_100029298;
    v42 = v2;
    v48 = v42;
    v43 = [WBSDiagnosticStateCollector registeredStateCollectorWithLogLabel:@"Website Data State" payloadProvider:v47];
    stateCollector = v42->_stateCollector;
    v42->_stateCollector = v43;

    v45 = v42;
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v66);
    objc_destroyWeak(&v68);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&v72);
    objc_destroyWeak(&v74);
    objc_destroyWeak(&v76);
    objc_destroyWeak(&v78);
    objc_destroyWeak(&v80);
    objc_destroyWeak(&v82);
    objc_destroyWeak(&v84);
    objc_destroyWeak(&v86);
    objc_destroyWeak(&v88);
    objc_destroyWeak(&v90);
    objc_destroyWeak(&v92);
    objc_destroyWeak(&v94);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WebBookmarksServer;
  [(WebBookmarksServer *)&v4 dealloc];
}

+ (id)sharedServer
{
  if (qword_10002E928 != -1)
  {
    sub_1000164E0();
  }

  v3 = qword_10002E920;

  return v3;
}

- (void)_addToReadingListWithMessage:(id)message forConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  isReadingListAvailable = [(WBUFeatureManager *)self->_featureManager isReadingListAvailable];
  if (isReadingListAvailable)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = [v10 applicationIsInstalled:safariMobileApplicationBundleIdentifier];

    if (v11)
    {
      [(WebBookmarksServerReadingListHandler *)self->_readingListHandler handleAddToReadingListWithMessage:messageCopy forConnection:connectionCopy];
    }

    else
    {
      v15 = sub_1000146E8(v12, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100016530();
      }
    }
  }

  else
  {
    v14 = sub_1000146E8(isReadingListAvailable, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000164F4();
    }
  }
}

- (void)_clearAllCloudTabDevicesForConnection:(id)connection
{
  featureManager = self->_featureManager;
  connectionCopy = connection;
  if (([(WBUFeatureManager *)featureManager isCloudTabsAvailable]& 1) == 0)
  {
    [(WebBookmarksServer *)self _logWarningWithMessage:@"Ignoring request to clear cloud tab devices connection:because cloud tabs feature is currently disabled.", connectionCopy];
    goto LABEL_5;
  }

  v5 = [(CloudTabStore *)connectionCopy hasBoolEntitlement:@"com.apple.private.safari.cloudtabs"];

  if (v5)
  {
    connectionCopy = objc_alloc_init(CloudTabStore);
    [(CloudTabStore *)connectionCopy _clearAllDevices];
LABEL_5:

    return;
  }

  v8 = sub_1000147E0(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

- (void)_clearCloudTabsForCurrentDeviceForConnection:(id)connection
{
  featureManager = self->_featureManager;
  connectionCopy = connection;
  if (([(WBUFeatureManager *)featureManager isCloudTabsAvailable]& 1) == 0)
  {
    [(WebBookmarksServer *)self _logWarningWithMessage:@"Ignoring request to clear cloud tabs on this device connection:because cloud tabs feature is currently disabled", connectionCopy];
    goto LABEL_5;
  }

  v5 = [(CloudTabStore *)connectionCopy hasBoolEntitlement:@"com.apple.private.safari.cloudtabs"];

  if (v5)
  {
    connectionCopy = objc_alloc_init(CloudTabStore);
    [(CloudTabStore *)connectionCopy clearTabsForCurrentDevice];
LABEL_5:

    return;
  }

  v8 = sub_1000147E0(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

- (void)_connection:(id)_connection didToggleCloudTabsWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if (([(WBUFeatureManager *)self->_featureManager isCloudTabsAvailable]& 1) != 0)
  {
    v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.safari.cloudtabs"];
    if (v8)
    {
      v10 = xpc_dictionary_get_BOOL(messageCopy, kWebBookmarksEnabledKey);
      v11 = xpc_dictionary_get_BOOL(messageCopy, kWebBookmarksTerminateAfterUpdatingKey);
      v12 = +[NSUserDefaults safari_browserDefaults];
      [v12 setBool:v10 forKey:@"CloudTabsEnabled"];
      [v12 synchronize];
      v13 = objc_alloc_init(CloudTabStore);
      [(CloudTabStore *)v13 synchronizeCloudTabDevices];
      if (v10 && [(CloudTabStore *)v13 canSaveCloudTabsForCurrentDevice])
      {
        v14 = [WBTabCollection alloc];
        v15 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
        v16 = [v14 initWithConfiguration:v15 openDatabase:1];

        browserState = [v16 browserState];
        [(CloudTabStore *)v13 saveCurrentDeviceTabsFromBrowserState:browserState];
      }

      else
      {
        [(CloudTabStore *)v13 clearTabsForCurrentDevice];
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CloudTabStorePrefChangedNotification", 0, 0, 0);
      if (v11)
      {
        exit(0);
      }
    }

    else
    {
      v18 = sub_1000147E0(v8, v9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10001656C(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }
  }

  else
  {
    [(WebBookmarksServer *)self _logWarningWithMessage:@"Ignoring request to toggle cloud tabs connection:because cloud tabs feature is currently disabled", _connectionCopy];
  }
}

- (id)_newWebsiteDataStore
{
  v2 = objc_alloc_init(_WKWebsiteDataStoreConfiguration);
  v3 = sub_1000114E4();
  v4 = [v3 URLByAppendingPathComponent:@"IndexedDB" isDirectory:1];

  [v2 _setIndexedDBDatabaseDirectory:v4];
  v6 = sub_100013C40(v5);
  v7 = [NSURL fileURLWithPath:v6 isDirectory:1];
  v8 = [v7 URLByAppendingPathComponent:@"Cookies/Cookies.binarycookies" isDirectory:0];

  [v2 _setCookieStorageFile:v8];
  v9 = [WKWebsiteDataStore safari_dataStoreWithConfiguration:v2];
  v10 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  [v9 _setResourceLoadStatisticsEnabled:{objc_msgSend(v10, "webui_trackerProtectionEnabled")}];

  return v9;
}

- (void)_generateWebsiteDataRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  +[NSMutableDictionary dictionary];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009604;
  v5 = v14[3] = &unk_1000292E0;
  v15 = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009768;
  v12[3] = &unk_100029330;
  v12[4] = self;
  v13 = objc_retainBlock(v14);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009AA8;
  v9[3] = &unk_100028BD8;
  v10 = v5;
  v11 = completionCopy;
  v6 = completionCopy;
  v7 = v5;
  v8 = v13;
  [(WebBookmarksServer *)self _performBlock:v12 forAllDataStoresNeededForProfileIdentifiers:0 completion:v9];
}

- (void)_connection:(id)_connection getSafariWebDataUsageWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  v9 = v8;
  v11 = sub_1000147E0(v8, v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Scheduling Fetch data usage", buf, 2u);
    }

    xpc_transaction_begin();
    websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009D28;
    block[3] = &unk_100029178;
    block[4] = self;
    v22 = messageCopy;
    v23 = _connectionCopy;
    dispatch_async(websiteDataUsageTaskQueue, block);
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v12, v14, v15, v16, v17, v18, v19, v20);
  }
}

- (void)_deleteDataForWebsiteDataRecord:(id)record matchingWebKitWebsiteDataRecords:(id)records websiteDataStore:(id)store completion:(id)completion
{
  recordsCopy = records;
  storeCopy = store;
  completionCopy = completion;
  v11 = +[WKWebsiteDataStore safari_allDataTypes];
  v13 = sub_1000147E0(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 134217984;
    v25 = [recordsCopy count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting %zu records", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A2E4;
  v19[3] = &unk_100029408;
  v20 = recordsCopy;
  v21 = storeCopy;
  v22 = v11;
  v23 = completionCopy;
  v15 = v11;
  v16 = storeCopy;
  v17 = recordsCopy;
  v18 = completionCopy;
  [v16 removeDataOfTypes:v15 forDataRecords:v17 completionHandler:v19];
}

- (void)_performBlock:(id)block forAllDataStoresNeededForProfileIdentifiers:(id)identifiers completion:(id)completion
{
  blockCopy = block;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v11 = +[NSMutableArray array];
  if (identifiersCopy && ![identifiersCopy containsObject:WBAllWebsiteDataProfileIdentifier])
  {
    v27 = completionCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allObjects = [identifiersCopy allObjects];
    v19 = [allObjects countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      v22 = WBSDefaultProfileIdentifier;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(allObjects);
          }

          v24 = *(*(&v28 + 1) + 8 * i);
          if ([v24 isEqualToString:v22])
          {
            _newWebsiteDataStore = [(WebBookmarksServer *)self _newWebsiteDataStore];
          }

          else
          {
            _newWebsiteDataStore = [WKWebsiteDataStore safari_dataStoreWithoutCachingForProfileWithIdentifier:v24];
          }

          v26 = _newWebsiteDataStore;
          [v11 addObject:_newWebsiteDataStore];
        }

        v20 = [allObjects countByEnumeratingWithState:&v28 objects:v41 count:16];
      }

      while (v20);
    }

    completionCopy = v27;
    [(WebBookmarksServer *)self _performBlock:blockCopy forDataStores:v11 completion:v27];
  }

  else
  {
    _newWebsiteDataStore2 = [(WebBookmarksServer *)self _newWebsiteDataStore];
    [v11 addObject:_newWebsiteDataStore2];

    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000A75C;
    v38[3] = &unk_100029430;
    v14 = v11;
    v39 = v14;
    v15 = v13;
    v40 = v15;
    [WKWebsiteDataStore _fetchAllIdentifiers:v38];
    profilesWebsiteDataUsageTaskQueue = self->_profilesWebsiteDataUsageTaskQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A89C;
    block[3] = &unk_100029480;
    v33 = v15;
    selfCopy = self;
    v36 = blockCopy;
    v35 = v14;
    v37 = completionCopy;
    v17 = v15;
    dispatch_async(profilesWebsiteDataUsageTaskQueue, block);
  }
}

- (void)_performBlock:(id)block forDataStores:(id)stores completion:(id)completion
{
  blockCopy = block;
  storesCopy = stores;
  completionCopy = completion;
  v9 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = storesCopy;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        dispatch_group_enter(v9);
        v15 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
        [v14 _setResourceLoadStatisticsEnabled:{objc_msgSend(v15, "webui_trackerProtectionEnabled")}];

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10000AC28;
        v25[3] = &unk_100028BB0;
        v26 = v9;
        blockCopy[2](blockCopy, v14, v25);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  profilesWebsiteDataUsageTaskQueue = self->_profilesWebsiteDataUsageTaskQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AC30;
  block[3] = &unk_100028BD8;
  v23 = v9;
  v24 = completionCopy;
  v17 = completionCopy;
  v18 = v9;
  dispatch_async(profilesWebsiteDataUsageTaskQueue, block);
}

- (void)_connection:(id)_connection deleteSafariWebSecurityOriginWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if (v8)
  {
    xpc_transaction_begin();
    v10 = sub_10000AE2C(messageCopy);
    [_connectionCopy sendMessage:v10];

    websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000AE78;
    v20[3] = &unk_100029150;
    v21 = messageCopy;
    selfCopy = self;
    dispatch_async(websiteDataUsageTaskQueue, v20);
  }

  else
  {
    v12 = sub_1000147E0(v8, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)_deleteDataForWebsiteDataRecord:(id)record websiteDataStore:(id)store completion:(id)completion
{
  recordCopy = record;
  storeCopy = store;
  completionCopy = completion;
  domain = [recordCopy domain];
  v12 = +[WKWebsiteDataStore safari_allDataTypes];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000B334;
  v17[3] = &unk_1000294F8;
  v18 = domain;
  selfCopy = self;
  v20 = recordCopy;
  v21 = storeCopy;
  v22 = completionCopy;
  v13 = completionCopy;
  v14 = storeCopy;
  v15 = recordCopy;
  v16 = domain;
  [v14 fetchDataRecordsOfTypes:v12 completionHandler:v17];
}

- (void)_connection:(id)_connection deleteSafariAllWebSecurityOriginWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  v9 = v8;
  v11 = sub_1000147E0(v8, v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting all website data records", buf, 2u);
    }

    v13 = xpc_dictionary_get_value(messageCopy, kWebsiteProfileIdentifiersKey);
    v14 = v13;
    if (v13)
    {
      count = xpc_array_get_count(v13);
      v16 = +[NSMutableSet set];
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v18 = [NSString stringWithUTF8String:xpc_array_get_string(v14, i)];
          [v16 addObject:v18];
        }
      }
    }

    else
    {
      v16 = 0;
    }

    if ([v16 count] == 1)
    {
      xpc_transaction_begin();
      v26 = sub_10000AE2C(messageCopy);
      [_connectionCopy sendMessage:v26];

      websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000B76C;
      v28[3] = &unk_100029150;
      v28[4] = self;
      v29 = v16;
      dispatch_async(websiteDataUsageTaskQueue, v28);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v12, v19, v20, v21, v22, v23, v24, v25);
  }
}

- (void)_connection:(id)_connection deleteSafariPersistentURLCacheStorage:(id)storage
{
  _connectionCopy = _connection;
  storageCopy = storage;
  v7 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if (v7)
  {
    v9 = sub_10000AE2C(storageCopy);
    [_connectionCopy sendMessage:v9];

    v12 = sub_1000147E0(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting persistent url cache storage", v22, 2u);
    }

    v13 = [[NSURLCache alloc] _initWithMemoryCapacity:0 diskCapacity:0x7FFFFFFFFFFFFFFFLL relativePath:@"com.apple.mobilesafari"];
    [v13 removeAllCachedResponses];
    _CFNetworkResetHSTSHosts();
  }

  else
  {
    v14 = sub_1000147E0(v7, v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

- (void)_connection:(id)_connection getSafariDataUsageSummaryWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  v9 = v8;
  v11 = sub_1000147E0(v8, v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Querying data usage summary", buf, 2u);
    }

    xpc_transaction_begin();
    websiteDataUsageTaskQueue = self->_websiteDataUsageTaskQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BFB0;
    block[3] = &unk_100029178;
    v22 = messageCopy;
    selfCopy = self;
    v24 = _connectionCopy;
    dispatch_async(websiteDataUsageTaskQueue, block);
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10001656C(v12, v14, v15, v16, v17, v18, v19, v20);
  }
}

- (void)_getSafariDataUsageSummaryWithWebsiteDataStore:(id)store completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v7 = +[WKWebsiteDataStore safari_allDataTypes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C3A0;
  v9[3] = &unk_1000295E8;
  v11 = v12;
  v8 = completionCopy;
  v10 = v8;
  [storeCopy _fetchDataRecordsOfTypes:v7 withOptions:1 completionHandler:v9];

  _Block_object_dispose(v12, 8);
}

- (void)_connection:(id)_connection clearAllSafariHistoryWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if (v8)
  {
    v10 = sub_10000AE2C(messageCopy);
    [_connectionCopy sendMessage:v10];

    v13 = sub_100014574(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Clearing all history", v22, 2u);
    }

    [(WebBookmarksServer *)self _clearAllHistory];
    [(WebBookmarksServer *)self _clearAllScribbleEdits];
  }

  else
  {
    v14 = sub_1000147E0(v8, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

- (void)_clearAllScribbleEdits
{
  v2 = [WBSUserDefinedContentBlockerManager alloc];
  v3 = +[WBSUserDefinedContentBlockerSQLiteStore sharedStore];
  v4 = [v2 initWithDataStore:v3];

  [v4 resetDatabaseWithCompletionHandler:&stru_100029608];
}

- (void)_clearAllHistory
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C86C;
  v5[3] = &unk_100029680;
  v6 = os_transaction_create();
  v7 = objc_alloc_init(WBSHistoryConnectionProxy);
  selfCopy = self;
  v3 = v7;
  v4 = v6;
  [v3 connectWithOptions:0 delegate:self completionHandler:v5];
}

- (void)_connection:(id)_connection clearHistoryWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if (v8)
  {
    v10 = &CacheDeleteRegisterInfoCallbacks_ptr;
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:xpc_dictionary_get_double(messageCopy, kWebsiteStartDateKey)];
    v33 = [NSDate dateWithTimeIntervalSinceReferenceDate:xpc_dictionary_get_double(messageCopy, kWebsiteEndDateKey)];
    int64 = xpc_dictionary_get_int64(messageCopy, kWebsiteOptionsKey);
    v32 = xpc_dictionary_get_BOOL(messageCopy, kWebsiteClearAllSpotlightHistoryForProfileKey);
    v13 = xpc_dictionary_get_value(messageCopy, kWebsiteProfileIdentifiersKey);
    v14 = v13;
    if (v13)
    {
      count = xpc_array_get_count(v13);
      v16 = objc_alloc_init(NSMutableSet);
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v18 = [NSString stringWithUTF8String:xpc_array_get_string(v14, i)];
          [v16 addObject:v18];
        }

        v10 = &CacheDeleteRegisterInfoCallbacks_ptr;
      }
    }

    else
    {
      v16 = 0;
    }

    v27 = sub_10000AE2C(messageCopy);
    [_connectionCopy sendMessage:v27];

    v30 = sub_100014574(v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478595;
      v35 = v11;
      v36 = 2113;
      v37 = v33;
      v38 = 2113;
      v39 = v16;
      v40 = 2048;
      v41 = int64;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Clearing history; start date: %{private}@; end date: %{private}@; profiles: %{private}@; options: %zu", buf, 0x2Au);
    }

    [(WebBookmarksServer *)self _clearHistoryVisitsAddedAfterDate:v11 beforeDate:v33 profiles:v16 options:int64 clearAllSpotlightHistoryForProfile:v32];
    distantPast = [v10[361] distantPast];

    if (v11 == distantPast)
    {
      [(WebBookmarksServer *)self _clearAllScribbleEdits];
    }
  }

  else
  {
    v19 = sub_1000147E0(v8, v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }
}

- (void)_clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate profiles:(id)profiles options:(int64_t)options clearAllSpotlightHistoryForProfile:(BOOL)profile
{
  optionsCopy = options;
  dateCopy = date;
  beforeDateCopy = beforeDate;
  profilesCopy = profiles;
  v15 = os_transaction_create();
  v16 = objc_alloc_init(WBSHistoryConnectionProxy);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10000D2B8;
  v46[3] = &unk_100029570;
  v17 = dateCopy;
  v47 = v17;
  v18 = objc_retainBlock(v46);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10000D3EC;
  v40[3] = &unk_1000296F8;
  v19 = v16;
  v41 = v19;
  selfCopy = self;
  v20 = v17;
  v43 = v20;
  v21 = beforeDateCopy;
  v44 = v21;
  profileCopy = profile;
  v22 = objc_retainBlock(v40);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000D6FC;
  v37[3] = &unk_100029178;
  v37[4] = self;
  v23 = v19;
  v38 = v23;
  v24 = v15;
  v39 = v24;
  v25 = objc_retainBlock(v37);
  if (optionsCopy)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000D930;
    v34[3] = &unk_100029798;
    v35 = v22;
    v36 = v25;
    [v23 listDatabaseURLsWithCompletionHandler:v34];
    [(WebBookmarksServer *)self _performBlock:v18 forAllDataStoresNeededForProfileIdentifiers:0 completion:&stru_1000297B8];

    v28 = v35;
    goto LABEL_5;
  }

  if ([profilesCopy count])
  {
    [(WebBookmarksServer *)self _performBlock:v18 forAllDataStoresNeededForProfileIdentifiers:profilesCopy completion:&stru_1000297D8];
    allObjects = [profilesCopy allObjects];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000DC34;
    v32[3] = &unk_100029770;
    v33 = v22;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000DD00;
    v30[3] = &unk_100028D20;
    v31 = v25;
    [allObjects safari_enumerateAsynchronouslyOnQueue:&_dispatch_main_q enumerationBlock:v32 completionBlock:v30];

    v28 = v33;
LABEL_5:

    goto LABEL_6;
  }

  v29 = sub_100014574(0, v26);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_100016804();
  }

LABEL_6:
}

- (void)_connection:(id)_connection exportBookmarksWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:_connectionCopy])
  {
    v8 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, kWebBookmarksExportBookmarksSandboxExtensionKey)];
    v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, kWebBookmarksExportBookmarksURLKey)];
    v10 = [NSURL URLWithString:v9];
    [v8 UTF8String];
    v11 = sandbox_extension_consume();
    if (v11 == -1)
    {
      v26 = sub_10001485C(-1, v12);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100016BC4(v26);
      }

      v27 = sub_10000AE2C(messageCopy);
      [_connectionCopy sendMessage:v27];
    }

    else
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10000E078;
      v34[3] = &unk_100029598;
      v37 = v11;
      v35 = _connectionCopy;
      v36 = messageCopy;
      v13 = objc_retainBlock(v34);
      v14 = +[WebBookmarkCollection safariBookmarkCollection];
      rootBookmark = [v14 rootBookmark];
      v33 = 0;
      v15 = [[WBSNetscapeBookmarkFileWriter alloc] initWithURL:v10 error:&v33];
      v16 = v33;
      v18 = v16;
      if (!v15 || v16)
      {
        v28 = sub_100014400(v16, v17);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100016B2C(v28);
        }
      }

      else
      {
        v32 = 0;
        v19 = [(WebBookmarksServer *)self _exportsContentOfBookmarkFolder:rootBookmark collection:v14 writer:v15 error:&v32];
        v20 = v32;
        v18 = v20;
        if (!v19 || v20)
        {
          v29 = sub_100014400(v20, v21);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100016B2C(v29);
          }
        }

        else
        {
          v31 = 0;
          v22 = [v15 finishWithError:&v31];
          v23 = v31;
          v18 = v23;
          if (!v22 || v23)
          {
            v25 = sub_100014400(v23, v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_100016B2C(v25);
            }
          }
        }
      }

      (v13[2])(v13);

      v27 = v35;
    }
  }
}

- (BOOL)_exportsContentOfBookmarkFolder:(id)folder collection:(id)collection writer:(id)writer error:(id *)error
{
  folderCopy = folder;
  collectionCopy = collection;
  writerCopy = writer;
  LOBYTE(v12) = 1;
  v29 = collectionCopy;
  v13 = [collectionCopy listWithID:objc_msgSend(folderCopy skipOffset:"identifier") includeHidden:{0, 1}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v13 bookmarkArray];
  v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    v27 = v13;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        if (![v18 isHidden] || (objc_msgSend(v18, "isReadingListFolder") & 1) != 0 || (objc_msgSend(v18, "isBookmarksBarFolder") & 1) != 0 || objc_msgSend(v18, "isBookmarksMenuFolder"))
        {
          if ([v18 isFolder])
          {
            localizedTitle = [v18 localizedTitle];
            if ([v18 specialID])
            {
              title = [v18 title];
              v21 = [writerCopy openFolder:localizedTitle identifier:title error:error];

              if (!v21)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v25 = [writerCopy openFolder:localizedTitle identifier:0 error:error];

              if ((v25 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            if (!-[WebBookmarksServer _exportsContentOfBookmarkFolder:collection:writer:error:](self, "_exportsContentOfBookmarkFolder:collection:writer:error:", v18, v29, writerCopy, error) || ([writerCopy closeFolderWithError:error] & 1) == 0)
            {
LABEL_25:
              LOBYTE(v12) = 0;
LABEL_26:
              v13 = v27;
              goto LABEL_27;
            }
          }

          else
          {
            if ([folderCopy isReadingListItem])
            {
              readingListDateLastViewed = [folderCopy readingListDateLastViewed];
            }

            else
            {
              readingListDateLastViewed = 0;
            }

            address = [v18 address];
            localizedTitle2 = [v18 localizedTitle];
            v12 = [writerCopy appendURLString:address title:localizedTitle2 dateOfLastVisitIfReadingListItem:readingListDateLastViewed error:error];

            if (!v12)
            {
              goto LABEL_26;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      LOBYTE(v12) = 1;
      v13 = v27;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  return v12;
}

- (void)_connection:(id)_connection exportHistoryWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:_connectionCopy])
  {
    v8 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, kWebBookmarksHistoryExportSandboxExtensionKey)];
    v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, kWebBookmarksHistoryExportURLKey)];
    v10 = [NSURL URLWithString:v9];
    v11 = [NSString stringWithCString:xpc_dictionary_get_string(messageCopy encoding:kWebsiteProfileIdentifiersKey), 1];
    v13 = sub_1000148D8(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v18 = v10;
      v19 = 2113;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Exporting history; export URL: %{private}@; profile: %{private}@", buf, 0x16u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000E5C0;
    v14[3] = &unk_100029150;
    v15 = _connectionCopy;
    v16 = messageCopy;
    [(WebBookmarksServer *)self _exportHistoryToURL:v10 sandboxExtension:v8 profileIdentifier:v11 completionHandler:v14];
  }
}

- (void)_exportHistoryToURL:(id)l sandboxExtension:(id)extension profileIdentifier:(id)identifier completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  extensionCopy = extension;
  v14 = os_transaction_create();
  v15 = objc_alloc_init(WBSHistoryConnectionProxy);
  [extensionCopy UTF8String];

  v16 = sandbox_extension_consume();
  if (v16 == -1)
  {
    v24 = sub_10001485C(-1, v17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100016BC4(v24);
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000E8C0;
    v33[3] = &unk_100029800;
    v35 = v16;
    v34 = handlerCopy;
    v18 = objc_retainBlock(v33);
    v32 = 0;
    v19 = [[WBSHistoryExporter alloc] initWithURL:lCopy error:&v32];
    v20 = v32;
    v22 = v20;
    if (!v19 || v20)
    {
      v25 = sub_1000148D8(v20, v21);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100016C4C(v25);
      }

      (v18[2])(v18);
    }

    else
    {
      v23 = +[NSMutableDictionary dictionary];
      [v23 setObject:identifierCopy forKeyedSubscript:WBSHistoryConnectionOptionDatabaseID];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000E904;
      v26[3] = &unk_100029850;
      v27 = identifierCopy;
      v31 = v18;
      v28 = v19;
      v29 = v14;
      v30 = v15;
      [v30 connectWithOptions:v23 delegate:self completionHandler:v26];
    }
  }
}

- (void)_connection:(id)_connection getNumberOfHistorySitesToBeExportedWithMessage:(id)message
{
  _connectionCopy = _connection;
  xdict = message;
  v20 = os_transaction_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_10000EEC0;
  v42[4] = sub_10000EED0;
  v43 = +[NSMutableSet set];
  v26 = objc_alloc_init(WBSHistoryConnectionProxy);
  v5 = dispatch_group_create();
  length = 0;
  data = xpc_dictionary_get_data(xdict, kWebBookmarksNumberOfHistorySitesToBeExportedProfileIdentifiersKey, &length);
  v7 = objc_opt_class();
  v8 = [NSData dataWithBytes:data length:length];
  v40 = 0;
  v21 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v7 fromData:v8 error:&v40];
  v22 = v40;

  if (v22)
  {
    v11 = sub_1000148D8(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [v22 safari_privacyPreservingDescription];
      sub_100016D80(safari_privacyPreservingDescription, buf, v11);
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v21;
    v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v13)
    {
      v14 = *v37;
      v15 = WBSHistoryConnectionOptionDatabaseID;
      do
      {
        v16 = 0;
        do
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v36 + 1) + 8 * v16);
          v44 = v15;
          v45 = v17;
          _connectionCopy = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1, _connectionCopy];
          dispatch_group_enter(v5);
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_10000EED8;
          v33[3] = &unk_1000298A0;
          v33[4] = v17;
          v34 = v5;
          v35 = v42;
          [v26 connectWithOptions:_connectionCopy delegate:self completionHandler:v33];

          v16 = v16 + 1;
        }

        while (v13 != v16);
        v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v13);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F0A0;
    block[3] = &unk_1000298C8;
    v28 = xdict;
    v32 = v42;
    v29 = _connectionCopy;
    v30 = v20;
    v31 = v26;
    dispatch_group_notify(v5, &_dispatch_main_q, block);

    v11 = v28;
  }

  _Block_object_dispose(v42, 8);
}

- (void)_connection:(id)_connection scanImportURLsWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:_connectionCopy])
  {
    length = 0;
    data = xpc_dictionary_get_data(messageCopy, kWebBookmarksImportURLsKey, &length);
    v9 = objc_opt_class();
    v10 = [NSData dataWithBytes:data length:length];
    v27 = 0;
    v11 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v9 fromData:v10 error:&v27];
    v12 = v27;

    if (v12)
    {
      v15 = sub_10001485C(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100016E74(v15);
      }
    }

    else
    {
      v16 = xpc_dictionary_get_data(messageCopy, kWebBookmarksImportSandboxExtensionsKey, &length);
      v17 = objc_opt_class();
      v18 = [NSData dataWithBytes:v16 length:length];
      v26 = 0;
      v19 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:v17 fromData:v18 error:&v26];
      v12 = v26;

      if (v12)
      {
        v22 = sub_10001485C(v20, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100016F0C(v22);
        }
      }

      else
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10000F368;
        v23[3] = &unk_1000298F0;
        v24 = messageCopy;
        v25 = _connectionCopy;
        [(WebBookmarksServer *)self _scanImportURLs:v11 sandboxExtensions:v19 completionHandler:v23];
      }
    }
  }
}

- (void)_scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler
{
  handlerCopy = handler;
  extensionsCopy = extensions;
  lsCopy = ls;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  [v10 scanImportURLs:lsCopy sandboxExtensions:extensionsCopy completionHandler:handlerCopy];
}

- (void)_connection:(id)_connection importBookmarksWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:_connectionCopy])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(messageCopy closeOnDealloc:{kWebBookmarksImportBookmarksFileDescriptorKey), 1}];
    v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
    v11 = [[WebBookmarkImportDelegate alloc] initWithCoordinator:self->_bookmarkLockCoordinator];
    ++self->_bookmarksFilesBeingImported;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000F6A0;
    v13[3] = &unk_100029918;
    v13[4] = self;
    v14 = messageCopy;
    v15 = v11;
    v16 = _connectionCopy;
    v12 = v11;
    [v10 parseNetscapeBookmarkFromFileHandle:v9 delegate:v12 completionHandler:v13];
  }
}

- (void)_connection:(id)_connection importHistoryWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:_connectionCopy])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(messageCopy closeOnDealloc:{kWebBookmarksImportHistoryFileDescriptorKey), 1}];
    v10 = xpc_dictionary_get_double(messageCopy, kWebBookmarksImportHistoryAgeLimitKey);
    v11 = [NSString stringWithCString:xpc_dictionary_get_string(messageCopy encoding:kWebsiteProfileIdentifiersKey), 1];
    v13 = sub_10001485C(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Importing history; profile: %{public}@", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F960;
    v14[3] = &unk_1000295C0;
    v15 = messageCopy;
    v16 = _connectionCopy;
    [(WebBookmarksServer *)self _importHistoryFromFileHandle:v9 ageLimit:v11 profileIdentifier:v14 completionHandler:v10];
  }
}

- (void)_importHistoryFromFileHandle:(id)handle ageLimit:(double)limit profileIdentifier:(id)identifier forChrome:(BOOL)chrome completionHandler:(id)handler
{
  handleCopy = handle;
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = os_transaction_create();
  v16 = objc_alloc_init(WBSHistoryConnectionProxy);
  v17 = +[NSMutableDictionary dictionary];
  [v17 setObject:identifierCopy forKeyedSubscript:WBSHistoryConnectionOptionDatabaseID];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000FB5C;
  v23[3] = &unk_100029990;
  v27 = v16;
  v28 = handlerCopy;
  chromeCopy = chrome;
  v24 = identifierCopy;
  v25 = handleCopy;
  limitCopy = limit;
  v26 = v15;
  v18 = v16;
  v19 = v15;
  v20 = handleCopy;
  v21 = handlerCopy;
  v22 = identifierCopy;
  [v18 connectWithOptions:v17 delegate:self completionHandler:v23];
}

- (void)_connection:(id)_connection importChromeExtensionsWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if (v8)
  {
    v10 = [NSFileHandle alloc];
    v11 = [v10 initWithFileDescriptor:xpc_dictionary_dup_fd(messageCopy closeOnDealloc:{kWebBookmarksImportChromeExtensionsFileDescriptorKey), 1}];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100010170;
    v20[3] = &unk_100029150;
    v21 = _connectionCopy;
    v22 = messageCopy;
    [(WebBookmarksServer *)self _importChromeExtensionsFromFileHandle:v11 connection:v21 completionHandler:v20];
  }

  else
  {
    v12 = sub_10001485C(v8, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)_importChromeExtensionsFromFileHandle:(id)handle connection:(id)connection completionHandler:(id)handler
{
  handlerCopy = handler;
  connectionCopy = connection;
  handleCopy = handle;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  v11 = [[WebBookmarksExtensionsImporterDelgate alloc] initWithConnection:connectionCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000102C4;
  v13[3] = &unk_1000299B8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v10 parseChromeExtensionsFromFileHandle:handleCopy delegate:v11 completionHandler:v13];
}

- (void)_connection:(id)_connection importChromeHistoryWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if (v8)
  {
    v10 = [NSFileHandle alloc];
    v11 = [v10 initWithFileDescriptor:xpc_dictionary_dup_fd(messageCopy closeOnDealloc:{kWebBookmarksImportChromeHistoryFileDescriptorKey), 1}];
    v12 = xpc_dictionary_get_double(messageCopy, kWebBookmarksImportChromeHistoryAgeLimitKey);
    v13 = [NSString stringWithCString:xpc_dictionary_get_string(messageCopy encoding:kWebsiteProfileIdentifiersKey), 1];
    v15 = sub_10001485C(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Importing history; profile: %{public}@", buf, 0xCu);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100010540;
    v24[3] = &unk_1000295C0;
    v25 = messageCopy;
    v26 = _connectionCopy;
    [(WebBookmarksServer *)self _importChromeHistoryFromFileHandle:v11 ageLimit:v13 profileIdentifier:v24 completionHandler:v12];
  }

  else
  {
    v16 = sub_10001485C(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

- (void)_connection:(id)_connection importCreditCardsWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  v8 = [_connectionCopy hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  if (v8)
  {
    v10 = [NSFileHandle alloc];
    v11 = [v10 initWithFileDescriptor:xpc_dictionary_dup_fd(messageCopy closeOnDealloc:{kWebBookmarksImportCreditCardsFileDescriptorKey), 1}];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000106F4;
    v20[3] = &unk_100029150;
    v21 = _connectionCopy;
    v22 = messageCopy;
    [(WebBookmarksServer *)self _importCreditCardsFromFileHandle:v11 connection:v21 completionHandler:v20];
  }

  else
  {
    v12 = sub_10001485C(v8, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)_importCreditCardsFromFileHandle:(id)handle connection:(id)connection completionHandler:(id)handler
{
  handlerCopy = handler;
  connectionCopy = connection;
  handleCopy = handle;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  v11 = [[WebBookmarksCreditCardImporterDelgate alloc] initWithConnection:connectionCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010848;
  v13[3] = &unk_1000299B8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v10 parseCreditCardJSONFromFileHandle:handleCopy delegate:v11 completionHandler:v13];
}

- (void)_connection:(id)_connection importExtensionsWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:_connectionCopy])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(messageCopy closeOnDealloc:{kWebBookmarksImportExtensionsFileDescriptorKey), 1}];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000109D0;
    v10[3] = &unk_100029150;
    v11 = _connectionCopy;
    v12 = messageCopy;
    [(WebBookmarksServer *)self _importExtensionsFromFileHandle:v9 connection:v11 completionHandler:v10];
  }
}

- (void)_importExtensionsFromFileHandle:(id)handle connection:(id)connection completionHandler:(id)handler
{
  handlerCopy = handler;
  connectionCopy = connection;
  handleCopy = handle;
  v10 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
  v11 = [[WebBookmarksExtensionsImporterDelgate alloc] initWithConnection:connectionCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010B24;
  v13[3] = &unk_1000299B8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v10 parseExtensionsFromFileHandle:handleCopy delegate:v11 completionHandler:v13];
}

- (void)_connection:(id)_connection computeNumberOfItemsToBeImportedWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  if ([(WebBookmarksServer *)self _connectionHasRequiredEntitlementForImportOrExport:_connectionCopy])
  {
    v8 = [NSFileHandle alloc];
    v9 = [v8 initWithFileDescriptor:xpc_dictionary_dup_fd(messageCopy closeOnDealloc:{kWebBookmarksComputeNumberOfItemsToBeImportedFileDescriptorKey), 1}];
    v10 = [NSString stringWithCString:xpc_dictionary_get_string(messageCopy encoding:kWebBookmarksComputeNumberOfItemsToBeImportedMetadataDataTypeKey), 1];
    v11 = objc_alloc_init(WBSBrowsingDataImportServiceProxy);
    v12 = [[WebBookmarksImportCount alloc] initWithExportMetadataDataType:v10];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100010EB0;
    v16[3] = &unk_100029630;
    v17 = messageCopy;
    v13 = v12;
    v18 = v13;
    v19 = _connectionCopy;
    v14 = objc_retainBlock(v16);
    if ([v10 isEqualToString:WBSHistoryExportDataType])
    {
      [v11 parseHistoryJSONFromFileHandle:v9 ageLimit:v13 delegate:v14 completionHandler:CFAbsoluteTimeGetCurrent() - WBUHistoryDefaultItemAgeLimit];
    }

    else if ([v10 isEqualToString:WBSChromeHistoryExportDataType])
    {
      [v11 parseChromeHistoryJSONFromFileHandle:v9 ageLimit:v13 delegate:v14 completionHandler:CFAbsoluteTimeGetCurrent() - WBUHistoryDefaultItemAgeLimit];
    }

    else if ([v10 isEqualToString:WBSExtensionsExportDataType])
    {
      [v11 parseExtensionsFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else if ([v10 isEqualToString:WBSBookmarksExportDataType])
    {
      [v11 parseNetscapeBookmarkFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else if ([v10 isEqualToString:WBSCreditCardExportDataType])
    {
      [v11 parseCreditCardJSONFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else if ([v10 isEqualToString:WBSChromeExtensionsExportDataType])
    {
      [v11 parseChromeExtensionsFromFileHandle:v9 delegate:v13 completionHandler:v14];
    }

    else
    {
      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (v14[2])(v14, v15);
    }
  }
}

- (void)_connection:(id)_connection openSafariExportSettingsWithMessage:(id)message
{
  _connectionCopy = _connection;
  messageCopy = message;
  connection = [_connectionCopy connection];
  pid = xpc_connection_get_pid(connection);

  v10 = [RBSProcessIdentifier identifierWithPid:pid];
  v24 = 0;
  v11 = [RBSProcessHandle handleForIdentifier:v10 error:&v24];
  v12 = v24;

  if (v12)
  {
    v13 = sub_10000AE2C(messageCopy);
    v14 = v13;
    v15 = &kWebBookmarksOpenSafariExportSettingsFailedKey;
LABEL_8:
    v22 = *v15;
    v23 = 1;
    goto LABEL_9;
  }

  if (![v11 isApplication] || (objc_msgSend(v11, "currentState"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "endowmentNamespaces"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", FBSSceneVisibilityEndowmentNamespace), v17, v16, (v18 & 1) == 0))
  {
    v13 = sub_10000AE2C(messageCopy);
    v14 = v13;
    v15 = &kWebBookmarksOpenSafariExportSettingsNotRunningForegroundKey;
    goto LABEL_8;
  }

  if (![(WebBookmarksServer *)self clientIsDefaultBrowserEntitledWithConnection:_connectionCopy message:messageCopy])
  {
    v13 = sub_10000AE2C(messageCopy);
    v14 = v13;
    v15 = &kWebBookmarksOpenSafariExportSettingsMissingEntitlementKey;
    goto LABEL_8;
  }

  v19 = +[LSApplicationWorkspace defaultWorkspace];
  v20 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari?action=showExportSheet"];
  v21 = [v19 openSensitiveURL:v20 withOptions:0];

  v13 = sub_10000AE2C(messageCopy);
  v14 = v13;
  v22 = kWebBookmarksOpenSafariExportSettingsFailedKey;
  v23 = v21 ^ 1;
LABEL_9:
  xpc_dictionary_set_BOOL(v13, v22, v23);
  [_connectionCopy sendMessage:v14];
}

- (BOOL)clientIsDefaultBrowserEntitledWithConnection:(id)connection message:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  connection = [connectionCopy connection];
  xpc_connection_get_audit_token();

  if (+[WBSFeatureAvailability isInternalInstall](WBSFeatureAvailability, "isInternalInstall") && xpc_dictionary_get_BOOL(messageCopy, kWebBookmarksOpenSafariExportSettingsTestingModeKey) || ([connectionCopy hasBoolEntitlement:@"com.apple.developer.web-browser"] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = _BECheckEntitlmentForAuditToken();
  }

  return v8;
}

- (BOOL)_isCloudHistoryEnabled
{
  isCloudHistorySyncAvailable = [(WBUFeatureManager *)self->_featureManager isCloudHistorySyncAvailable];
  if (isCloudHistorySyncAvailable)
  {
    v3 = objc_alloc_init(ACAccountStore);
    aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
    v5 = [aa_primaryAppleAccount isEnabledForDataclass:kAccountDataclassBookmarks];

    LOBYTE(isCloudHistorySyncAvailable) = v5;
  }

  return isCloudHistorySyncAvailable;
}

- (BOOL)_connectionHasRequiredEntitlementForImportOrExport:(id)export
{
  v3 = [export hasBoolEntitlement:@"com.apple.private.webbookmarks.settings"];
  v5 = v3;
  if ((v3 & 1) == 0)
  {
    v6 = sub_100014400(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001656C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return v5;
}

- (void)_logWarningWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy && ([connectionCopy connection], v9 = objc_claimAutoreleasedReturnValue(), pid = xpc_connection_get_pid(v9), v9, pid))
  {
    v11 = sub_100014400(connectionCopy, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100017504(messageCopy, pid, v11);
    }
  }

  else
  {
    v12 = sub_100014400(connectionCopy, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001758C();
    }
  }
}

- (void)reportSevereError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v8 = sub_100014574(handlerCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_1000175F4(v8);
  }

  handlerCopy[2](handlerCopy);
}

@end