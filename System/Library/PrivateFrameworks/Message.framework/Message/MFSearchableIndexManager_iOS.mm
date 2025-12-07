@interface MFSearchableIndexManager_iOS
+ (BOOL)shouldCancelSearchQuery;
+ (void)addSearchQueryCancelable:(id)cancelable;
+ (void)removeSearchQueryCancelable:(id)cancelable;
- (MFSearchableIndexManager_iOS)initWithDatabase:(id)database messagePersistence:(id)persistence richLinkPersistence:(id)linkPersistence hookResponder:(id)responder;
- (void)enableIndexingAndBeginScheduling:(BOOL)scheduling;
@end

@implementation MFSearchableIndexManager_iOS

+ (BOOL)shouldCancelSearchQuery
{
  v2 = +[MFActivityMonitor currentMonitor];
  shouldCancel = [v2 shouldCancel];

  return shouldCancel;
}

+ (void)addSearchQueryCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 addCancelable:cancelableCopy];
}

+ (void)removeSearchQueryCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 removeCancelable:cancelableCopy];
}

- (MFSearchableIndexManager_iOS)initWithDatabase:(id)database messagePersistence:(id)persistence richLinkPersistence:(id)linkPersistence hookResponder:(id)responder
{
  databaseCopy = database;
  persistenceCopy = persistence;
  linkPersistenceCopy = linkPersistence;
  responderCopy = responder;
  v22.receiver = self;
  v22.super_class = MFSearchableIndexManager_iOS;
  v14 = [(EDSearchableIndexManager *)&v22 initWithDatabase:databaseCopy messagePersistence:persistenceCopy richLinkPersistence:linkPersistenceCopy hookResponder:responderCopy];
  if (v14)
  {
    v15 = [(EDSearchableIndexPersistence *)[MFSearchableIndexPersistence_iOS alloc] initWithDatabase:databaseCopy messagePersistence:persistenceCopy richLinkPersistence:linkPersistenceCopy hookResponder:responderCopy];
    persistence = v14->_persistence;
    v14->_persistence = &v15->super;

    analytics = [(EDSearchableIndexManager *)v14 analytics];
    [(EDSearchableIndexPersistence *)v14->_persistence setAnalytics:analytics];

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.email.MFSearchableIndexManager_iOS.contentProtectionQueue", v18);
    contentProtectionQueue = v14->_contentProtectionQueue;
    v14->_contentProtectionQueue = v19;
  }

  return v14;
}

- (void)enableIndexingAndBeginScheduling:(BOOL)scheduling
{
  schedulingCopy = scheduling;
  os_unfair_lock_lock(&self->_indexLock);
  index = [(MFSearchableIndexManager_iOS *)self index];

  if (!index)
  {
    v6 = [MFSearchableIndex_iOS alloc];
    searchableIndexName = [objc_opt_class() searchableIndexName];
    v8 = [(MFSearchableIndex_iOS *)v6 initWithName:searchableIndexName dataSource:self->_persistence];
    [(MFSearchableIndexManager_iOS *)self setIndex:v8];

    analytics = [(EDSearchableIndexManager *)self analytics];
    index2 = [(MFSearchableIndexManager_iOS *)self index];
    [index2 setAnalytics:analytics];

    searchableIndexBundleID = [objc_opt_class() searchableIndexBundleID];
    index3 = [(MFSearchableIndexManager_iOS *)self index];
    [index3 setSearchableIndexBundleID:searchableIndexBundleID];

    v13 = [objc_alloc(MEMORY[0x1E699B6B0]) initWithSchedulable:self->_index];
    [(MFSearchableIndexManager_iOS *)self setScheduler:v13];

    scheduler = [(MFSearchableIndexManager_iOS *)self scheduler];
    index4 = [(MFSearchableIndexManager_iOS *)self index];
    [index4 setSchedulableDelegate:scheduler];

    v16 = objc_alloc(MEMORY[0x1E699B6D8]);
    index5 = [(MFSearchableIndexManager_iOS *)self index];
    messagePersistence = [(EDSearchableIndexPersistence *)self->_persistence messagePersistence];
    v19 = [v16 initWithSearchableIndex:index5 persistence:messagePersistence];
    [(EDSearchableIndexManager *)self setSpotlightDaemonClient:v19];
  }

  os_unfair_lock_unlock(&self->_indexLock);
  messagePersistence2 = [(EDSearchableIndexPersistence *)self->_persistence messagePersistence];
  messageFilesAreClassC = [messagePersistence2 messageFilesAreClassC];
  scheduler2 = [(MFSearchableIndexManager_iOS *)self scheduler];
  [scheduler2 setRequireClassA:messageFilesAreClassC ^ 1u];

  v23.receiver = self;
  v23.super_class = MFSearchableIndexManager_iOS;
  [(EDSearchableIndexManager *)&v23 enableIndexingAndBeginScheduling:schedulingCopy];
}

@end