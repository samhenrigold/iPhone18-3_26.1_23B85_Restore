@interface BLTDebugObserverHolder
+ (void)startWithWKAppList:(id)list;
- (BLTDebugObserverHolder)initWithWKAppList:(id)list;
- (void)dealloc;
- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens withReply:(id)reply;
@end

@implementation BLTDebugObserverHolder

+ (void)startWithWKAppList:(id)list
{
  listCopy = list;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BLTDebugObserverHolder_startWithWKAppList___block_invoke;
  v7[3] = &unk_278D31928;
  v8 = listCopy;
  selfCopy = self;
  v5 = startWithWKAppList__onceToken;
  v6 = listCopy;
  if (v5 != -1)
  {
    dispatch_once(&startWithWKAppList__onceToken, v7);
  }
}

uint64_t __45__BLTDebugObserverHolder_startWithWKAppList___block_invoke(uint64_t a1, uint64_t a2)
{
  result = BLTIsDebugOrInternalBuild(a1, a2);
  if (result)
  {
    v4 = [objc_alloc(*(a1 + 40)) initWithWKAppList:*(a1 + 32)];
    v5 = startWithWKAppList____sharedInstance;
    startWithWKAppList____sharedInstance = v4;

    return MEMORY[0x2821F96F8](v4, v5);
  }

  return result;
}

- (BLTDebugObserverHolder)initWithWKAppList:(id)list
{
  listCopy = list;
  v13.receiver = self;
  v13.super_class = BLTDebugObserverHolder;
  v5 = [(BLTDebugObserverHolder *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_wkAppList, listCopy);
    v8 = BLTWorkQueue(v7);
    v9 = BLTWorkQueue(v8);
    v10 = [BLTBBObserver surrogateWithQueue:v8 calloutQueue:v9];
    observer = v6->_observer;
    v6->_observer = v10;

    [(BBObserver *)v6->_observer setDelegate:v6];
    [(BBObserver *)v6->_observer setObserverFeed:32878];
  }

  return v6;
}

- (void)dealloc
{
  [(BBObserver *)self->_observer invalidate];
  v3.receiver = self;
  v3.super_class = BLTDebugObserverHolder;
  [(BLTDebugObserverHolder *)&v3 dealloc];
}

- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens withReply:(id)reply
{
  sirensCopy = sirens;
  v39 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  replyCopy = reply;
  v13 = blt_general_log(replyCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sectionID = [bulletinCopy sectionID];
    [bulletinCopy publisherMatchID];
    v26 = v25 = bulletinCopy;
    if (sirensCopy)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v16 = +[BLTPairedSyncCoordinator syncState];
    if ([v16 isInitialSyncComplete])
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    WeakRetained = objc_loadWeakRetained(&self->_wkAppList);
    *buf = 138413570;
    if ([WeakRetained isLoaded])
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    v28 = sectionID;
    v29 = 2112;
    v30 = v26;
    v31 = 2048;
    feedCopy = feed;
    v33 = 2080;
    v34 = v15;
    bulletinCopy = v25;
    v35 = 2080;
    v36 = v17;
    v37 = 2080;
    v38 = v19;
    _os_log_impl(&dword_241FB3000, v13, OS_LOG_TYPE_INFO, "Bulletin in section %@ with matchID %@ sent to observers now on feed %lu with lightsandsirens: %s initSyncComplete: %s wkAppsLoaded: %s", buf, 0x3Eu);
  }

  replyCopy[2](replyCopy, 0);
  date = [MEMORY[0x277CBEAA8] date];
  if ((feed & 0x806E) != 0)
  {
    v21 = kdebug_trace();
    if (sirensCopy)
    {
      v22 = blt_general_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        publishDate = [bulletinCopy publishDate];
        [date timeIntervalSinceDate:publishDate];
        *buf = 134217984;
        v28 = v24;
        _os_log_impl(&dword_241FB3000, v22, OS_LOG_TYPE_INFO, "Bulletin raised after %f seconds from 'publish' date", buf, 0xCu);
      }
    }
  }
}

@end