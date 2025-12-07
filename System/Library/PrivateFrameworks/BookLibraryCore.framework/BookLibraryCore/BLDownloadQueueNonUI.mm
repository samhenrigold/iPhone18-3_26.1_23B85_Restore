@interface BLDownloadQueueNonUI
+ (id)innerSharedInstance;
+ (void)cancelAllActiveDownloads;
+ (void)overrideSharedInstance:(id)instance;
+ (void)prepareForRemoveApp;
- (BLDownloadQueueNonUI)init;
- (BLDownloadQueueServerProgressObserver)serverProgressObserver;
- (BLServiceProxy)serviceProxy;
- (NSArray)downloads;
- (id)_dateFromObject:(id)object;
- (id)_numberFromObject:(id)object;
- (id)_stringFromObject:(id)object;
- (void)_addDownloadWithMetadata:(id)metadata isRestore:(BOOL)restore completion:(id)completion;
- (void)_cancelAllPausedDownloads;
- (void)_purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)addDownloadWithMetadata:(id)metadata completion:(id)completion;
- (void)addDownloadWithPermlink:(id)permlink title:(id)title completion:(id)completion;
- (void)addDownloadWithPurchaseParameters:(id)parameters completion:(id)completion;
- (void)addDownloadWithPurchaseParameters:(id)parameters storeID:(id)d completion:(id)completion;
- (void)addDownloadsWithManifestRequest:(id)request completion:(id)completion;
- (void)addDownloadsWithMetadata:(id)metadata completion:(id)completion;
- (void)addDownloadsWithRestoreContentRequestItems:(id)items completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)addRestoreDownloadWithMetadata:(id)metadata completion:(id)completion;
- (void)addRestoreDownloadsWithMetadata:(id)metadata completion:(id)completion;
- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion;
- (void)dealloc;
- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion;
- (void)processAutomaticDownloadsWithReply:(id)reply;
- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d completion:(id)completion;
- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d isAudiobook:(BOOL)audiobook completion:(id)completion;
- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d isAudiobook:(BOOL)audiobook userInfo:(id)info completion:(id)completion;
- (void)purchaseWithRequest:(id)request completion:(id)completion;
- (void)reloadFromServerWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)restartDownloadWithID:(id)d withCompletion:(id)completion;
- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion;
@end

@implementation BLDownloadQueueNonUI

- (BLDownloadQueueNonUI)init
{
  v5.receiver = self;
  v5.super_class = BLDownloadQueueNonUI;
  v2 = [(BLDownloadQueueNonUI *)&v5 init];
  if (v2)
  {
    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    [mEMORY[0x277CF32F0] addObserver:v2 accountTypes:1];
  }

  return v2;
}

+ (id)innerSharedInstance
{
  if (qword_280BC5950 != -1)
  {
    sub_241D204AC();
  }

  v3 = qword_280BC5948;

  return v3;
}

- (BLDownloadQueueServerProgressObserver)serverProgressObserver
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D2066C;
  block[3] = &unk_278D173A8;
  block[4] = self;
  if (qword_280BC58B8 != -1)
  {
    dispatch_once(&qword_280BC58B8, block);
  }

  return qword_280BC58C0;
}

- (NSArray)downloads
{
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  downloads = [serverProgressObserver downloads];

  return downloads;
}

+ (void)overrideSharedInstance:(id)instance
{
  instanceCopy = instance;
  if (qword_280BC58C8)
  {
    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Attempting to set an overrideInstance when one is already set.", buf, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:@"BLDownloadQueueTooManyInstances" format:@"Attempting to set an overrideInstance when one is already set."];
  }

  objc_storeStrong(&qword_280BC58C8, instance);
  innerSharedInstance = [self innerSharedInstance];

  if (innerSharedInstance != instanceCopy)
  {
    v8 = BLDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "You must use the BLDownloadQueue singleton before trying to use the BLDownloadQueueNonUI singleton.", v9, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:@"BLDownloadQueueTooManyInstances" format:@"You must use the BLDownloadQueue singleton before trying to use the BLDownloadQueueNonUI singleton."];
  }
}

- (void)dealloc
{
  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy shutdown];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  [mEMORY[0x277CF32F0] removeObserver:self accountTypes:1];

  v6.receiver = self;
  v6.super_class = BLDownloadQueueNonUI;
  [(BLDownloadQueueNonUI *)&v6 dealloc];
}

- (BLServiceProxy)serviceProxy
{
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  serviceProxy = [serverProgressObserver serviceProxy];

  return serviceProxy;
}

- (void)_cancelAllPausedDownloads
{
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver cancelAllPausedDownloads];
}

- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d completion:(id)completion
{
  v8 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  parametersCopy = parameters;
  v11 = [v8 numberWithLongLong:{objc_msgSend(d, "longLongValue")}];
  v12 = [BLPurchaseRequest requestWithBuyParameters:parametersCopy storeIdentifier:v11];

  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v12 completion:completionCopy];
}

- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d isAudiobook:(BOOL)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  v10 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  parametersCopy = parameters;
  v13 = [v10 numberWithLongLong:{objc_msgSend(d, "longLongValue")}];
  v14 = [BLPurchaseRequest requestWithBuyParameters:parametersCopy storeIdentifier:v13];

  [v14 setAudiobook:audiobookCopy];
  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v14 completion:completionCopy];
}

- (void)purchaseWithBuyParameters:(id)parameters storeID:(id)d isAudiobook:(BOOL)audiobook userInfo:(id)info completion:(id)completion
{
  audiobookCopy = audiobook;
  v12 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  infoCopy = info;
  parametersCopy = parameters;
  v16 = [v12 numberWithLongLong:{objc_msgSend(d, "longLongValue")}];
  v17 = [BLPurchaseRequest requestWithBuyParameters:parametersCopy storeIdentifier:v16];

  [v17 setAudiobook:audiobookCopy];
  [v17 setAnalyticsInfo:infoCopy];

  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v17 completion:completionCopy];
}

- (void)_purchaseWithRequest:(id)request uiHostProxy:(id)proxy completion:(id)completion
{
  requestCopy = request;
  proxyCopy = proxy;
  completionCopy = completion;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: purchaseWithBuyParameters:uiManager:", buf, 2u);
  }

  v12 = _os_activity_create(&dword_241D1F000, "purchaseWithBuyParameters:uiManager:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D73C40;
  v16[3] = &unk_278D18B80;
  v16[4] = self;
  v17 = requestCopy;
  v18 = proxyCopy;
  v19 = completionCopy;
  v13 = proxyCopy;
  v14 = requestCopy;
  v15 = completionCopy;
  os_activity_apply(v12, v16);
}

- (void)purchaseWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = objc_alloc_init(BLUIHostServiceNonUI);
  [(BLDownloadQueueNonUI *)self _purchaseWithRequest:requestCopy uiHostProxy:v8 completion:completionCopy];
}

- (void)addDownloadWithPurchaseParameters:(id)parameters storeID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  parametersCopy = parameters;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadWithPurchaseParameters", buf, 2u);
  }

  v12 = MEMORY[0x277CCABB0];
  longLongValue = [dCopy longLongValue];

  v14 = [v12 numberWithLongLong:longLongValue];
  v15 = [BLPurchaseRequest requestWithBuyParameters:parametersCopy storeIdentifier:v14];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241D746CC;
  v17[3] = &unk_278D18BA8;
  v18 = completionCopy;
  v16 = completionCopy;
  [(BLDownloadQueueNonUI *)self purchaseWithRequest:v15 completion:v17];
}

- (void)addDownloadWithPermlink:(id)permlink title:(id)title completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  permlinkCopy = permlink;
  titleCopy = title;
  completionCopy = completion;
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadWithPermlink", buf, 2u);
  }

  if (completionCopy)
  {
    v12 = completionCopy;
  }

  else
  {
    v12 = &unk_2853E2B48;
  }

  v13 = MEMORY[0x245CFF560](v12);

  v14 = +[BLLibrary defaultBookLibrary];
  v27 = 0;
  v15 = [v14 _bookItemFromPermlink:permlinkCopy error:&v27];
  v16 = v27;

  if (!v15)
  {
    serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_241D749E0;
    v23[3] = &unk_278D18BF0;
    v26 = v13;
    v23[4] = self;
    v24 = permlinkCopy;
    v25 = titleCopy;
    [serviceProxy downloadWithPermlink:v24 title:v25 reply:v23];

    v19 = v26;
LABEL_12:

    goto LABEL_13;
  }

  v17 = +[BLLibrary defaultBookLibrary];
  v22 = v16;
  [v17 _addBookItemToEduContainer:v15 error:&v22];
  v18 = v22;

  if (v18)
  {
    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      permlink = [v15 permlink];
      *buf = 138412546;
      v29 = permlink;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadWithPermlink: could not add permlink to container %@.  It may already exist. Recevied error:  %@", buf, 0x16u);
    }

    v16 = v18;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)addDownloadWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadWithMetadata", v9, 2u);
  }

  [(BLDownloadQueueNonUI *)self _addDownloadWithMetadata:metadataCopy isRestore:0 completion:completionCopy];
}

- (void)addRestoreDownloadWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addRestoreDownloadWithMetadata", v9, 2u);
  }

  [(BLDownloadQueueNonUI *)self _addDownloadWithMetadata:metadataCopy isRestore:1 completion:completionCopy];
}

- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: pauseDownloadWithID", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2B68;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy pauseDownloadWithID:dCopy withReply:v10];
}

- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: resumeDownloadWithID", buf, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2B88;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D750F8;
  v14[3] = &unk_278D18C40;
  v15 = dCopy;
  v16 = v10;
  v14[4] = self;
  v12 = dCopy;
  v13 = v10;
  [serviceProxy resumeDownloadWithID:v12 withReply:v14];
}

- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: cancelDownloadWithID", v13, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2BA8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy cancelDownloadWithID:dCopy withReply:v10];

  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver notifyDidCompleteForDownloadID:dCopy];
}

+ (void)cancelAllActiveDownloads
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = BLDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Cancelling all active book downloads.", buf, 2u);
  }

  v10 = 0;
  v3 = [[BLServiceProxy alloc] initWithError:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "[DownloadQueue]: Error encountered creating service proxy: %@", buf, 0xCu);
    }
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D7581C;
  v8[3] = &unk_278D18B30;
  v9 = v6;
  v7 = v6;
  [(BLServiceProxy *)v3 cancelAllActiveDownloadsWithReply:v8];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

+ (void)prepareForRemoveApp
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = BLDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: prepareForRemoveApp", buf, 2u);
  }

  v9 = 0;
  v3 = [[BLServiceProxy alloc] initWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "[DownloadQueue]: Error encountered creating service proxy: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_241D75AB4;
    v7[3] = &unk_278D18B30;
    v8 = v6;
    v5 = v6;
    [(BLServiceProxy *)v3 prepareForRemoveAppWithReply:v7];
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)addDownloadsWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithMetadata:", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2BC8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy requestDownloadsWithMetadata:metadataCopy areRestore:0 reply:v10];
}

- (void)addRestoreDownloadsWithMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addRestoreDownloadsWithMetadata:", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2BE8;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy requestDownloadsWithMetadata:metadataCopy areRestore:1 reply:v10];
}

- (void)addDownloadsWithRestoreContentRequestItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadsWithRestoreContentRequestItems:", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2C08;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy requestDownloadsWithRestoreContentRequestItems:itemsCopy reply:v10];
}

- (void)addDownloadsWithManifestRequest:(id)request completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = requestCopy;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: addDownloadsWithManifestRequest:completion: for manifestRequest: %@", buf, 0xCu);
  }

  v9 = _os_activity_create(&dword_241D1F000, "addDownloadsWithManifestRequest:completion:", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D75F58;
  block[3] = &unk_278D18CA8;
  v13 = requestCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = requestCopy;
  v11 = completionCopy;
  os_activity_apply(v9, block);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver registerObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  serverProgressObserver = [(BLDownloadQueueNonUI *)self serverProgressObserver];
  [serverProgressObserver unregisterObserver:observerCopy];
}

- (void)addDownloadWithPurchaseParameters:(id)parameters completion:(id)completion
{
  v4 = BLDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "This method is not implemented. Please file a radar.", v5, 2u);
  }
}

- (void)processAutomaticDownloadsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: processAutomaticDownloadsWithReply", v9, 2u);
  }

  if (replyCopy)
  {
    v6 = replyCopy;
  }

  else
  {
    v6 = &unk_2853E2C48;
  }

  v7 = MEMORY[0x245CFF560](v6);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy processAutomaticDownloadsWithReply:v7];
}

- (void)restartDownloadWithID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: restartDownloadWithID", v12, 2u);
  }

  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &unk_2853E2C68;
  }

  v10 = MEMORY[0x245CFF560](v9);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy restartDownloadWithID:dCopy withReply:v10];
}

- (void)reloadFromServerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Request reload server download queue", v9, 2u);
  }

  if (completionCopy)
  {
    v6 = completionCopy;
  }

  else
  {
    v6 = &unk_2853E2C88;
  }

  v7 = MEMORY[0x245CFF560](v6);

  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  [serviceProxy reloadFromServerWithReply:v7];
}

- (void)_addDownloadWithMetadata:(id)metadata isRestore:(BOOL)restore completion:(id)completion
{
  restoreCopy = restore;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &unk_2853E2CA8;
  }

  metadataCopy = metadata;
  v9 = MEMORY[0x245CFF560](completionCopy);
  v10 = [[BLDownloadMetadata alloc] initWithDictionary:metadataCopy];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BLDownloadMetadata itemIdentifier](v10, "itemIdentifier")}];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BLDownloadMetadata collectionIdentifier](v10, "collectionIdentifier")}];
  kind = [(BLDownloadMetadata *)v10 kind];
  serviceProxy = [(BLDownloadQueueNonUI *)self serviceProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_241D76530;
  v19[3] = &unk_278D18CD0;
  v22 = kind;
  v23 = v9;
  v19[4] = self;
  v20 = v11;
  v21 = v12;
  v15 = kind;
  v16 = v12;
  v17 = v11;
  v18 = v9;
  [serviceProxy requestDownloadWithMetadata:metadataCopy isRestore:restoreCopy reply:v19];
}

- (id)_stringFromObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      stringValue = BUDynamicCast();
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v5 = BUDynamicCast();
      stringValue = [v5 stringValue];

      goto LABEL_10;
    }

    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = objectCopy;
      v11 = 2112;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to neither an NSString nor an NSNumber", &v9, 0x16u);
    }
  }

  stringValue = 0;
LABEL_10:

  return stringValue;
}

- (id)_numberFromObject:(id)object
{
  v12 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_8;
    }

    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = objectCopy;
      v10 = 2112;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to an NSNumber", &v8, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (id)_dateFromObject:(id)object
{
  v12 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_8;
    }

    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = objectCopy;
      v10 = 2112;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to an NSDate", &v8, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  if (reason - 101 <= 1)
  {
    v9 = v4;
    v10 = v5;
    v7 = BLServiceLog(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Account Changed.  Cancelling paused downloads", v8, 2u);
    }

    [(BLDownloadQueueNonUI *)self _cancelAllPausedDownloads];
  }
}

@end