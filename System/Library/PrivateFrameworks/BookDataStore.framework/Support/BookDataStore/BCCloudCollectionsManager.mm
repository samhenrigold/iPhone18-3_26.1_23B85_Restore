@interface BCCloudCollectionsManager
+ (id)sharedManager;
+ (id)sharedService;
+ (void)deleteCloudDataWithCompletion:(id)completion;
- (NSManagedObjectModel)objectModel;
- (id)collectionDetailManagerInstance;
- (id)collectionMemberManagerInstance;
- (id)diagnosticEntityInfos:(BOOL)infos;
- (id)initService;
- (void)dataSource:(id)source storeDidReset:(id)reset;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)setEnableCloudSync:(BOOL)sync completion:(id)completion;
@end

@implementation BCCloudCollectionsManager

+ (id)sharedManager
{
  v2 = objc_opt_class();

  return [v2 sharedService];
}

+ (id)sharedService
{
  if (qword_100274AD8[0] != -1)
  {
    sub_1001C3D10();
  }

  v3 = qword_100274AD0;

  return v3;
}

- (id)initService
{
  v23.receiver = self;
  v23.super_class = BCCloudCollectionsManager;
  v2 = [(BCCloudCollectionsManager *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100002660(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v22[0] = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Initializing BCCloudCollectionsManager - Service mode", v22, 2u);
    }

    v5 = +[BCCloudKitController sharedInstance];
    v6 = [BCCloudDataSource alloc];
    objectModel = [(BCCloudCollectionsManager *)v3 objectModel];
    v8 = [(BCCloudDataSource *)v6 initWithManagedObjectModel:objectModel nameOnDisk:@"BCCloudCollections" delegate:v3];
    collectionDataSource = v3->_collectionDataSource;
    v3->_collectionDataSource = v8;

    v10 = [[BCCloudCollectionDetailManager alloc] initWithCloudDataSource:v3->_collectionDataSource cloudKitController:v5];
    collectionDetailManager = v3->_collectionDetailManager;
    v3->_collectionDetailManager = v10;

    v12 = [[BCCloudCollectionMemberManager alloc] initWithCloudDataSource:v3->_collectionDataSource cloudKitController:v5];
    collectionMemberManager = v3->_collectionMemberManager;
    v3->_collectionMemberManager = v12;

    v14 = [BCCloudChangeTokenController alloc];
    managedObjectContext = [(BCCloudDataSource *)v3->_collectionDataSource managedObjectContext];
    v16 = [(BCCloudChangeTokenController *)v14 initWithMOC:managedObjectContext zoneName:@"CollectionZone" cloudKitController:v5];
    changeTokenController = v3->_changeTokenController;
    v3->_changeTokenController = v16;

    v18 = [[BDSSaltVersionIdentifierManager alloc] initWithZoneDataManager:v3 tokenController:v3->_changeTokenController databaseController:0];
    saltVersionIdentifierManager = v3->_saltVersionIdentifierManager;
    v3->_saltVersionIdentifierManager = v18;

    v20 = +[_TtC14bookdatastored13BDSSyncEngine shared];
    [v20 addSaltChangeObserver:v3];
  }

  return v3;
}

- (NSManagedObjectModel)objectModel
{
  objectModel = self->_objectModel;
  if (!objectModel)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"BCCloudCollections" ofType:@"momd"];

    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
    v7 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v6];
    v8 = self->_objectModel;
    self->_objectModel = v7;

    objectModel = self->_objectModel;
  }

  return objectModel;
}

- (id)collectionDetailManagerInstance
{
  objc_opt_class();
  collectionDetailManager = [(BCCloudCollectionsManager *)self collectionDetailManager];
  v4 = BUDynamicCast();

  return v4;
}

- (id)collectionMemberManagerInstance
{
  objc_opt_class();
  collectionMemberManager = [(BCCloudCollectionsManager *)self collectionMemberManager];
  v4 = BUDynamicCast();

  return v4;
}

- (void)dataSource:(id)source storeDidReset:(id)reset
{
  resetCopy = reset;
  v5 = sub_100002660(resetCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = resetCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionsManager dataSource:storeDidReset:%{public}@", &v8, 0xCu);
  }

  v6 = [[CKRecordZoneID alloc] initWithZoneName:@"CollectionZone" ownerName:CKCurrentUserDefaultName];
  v7 = +[_TtC14bookdatastored13BDSSyncEngine shared];
  [v7 resetChangeToken:v6];
}

- (void)setEnableCloudSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  completionCopy = completion;
  v7 = sub_100002660(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (syncCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionsManager SERVICE #enableCloudSync setEnableCloudSync:completion %@", buf, 0xCu);
  }

  v9 = [[CKRecordZoneID alloc] initWithZoneName:@"CollectionZone" ownerName:CKCurrentUserDefaultName];
  v10 = +[_TtC14bookdatastored13BDSSyncEngine shared];
  [v10 setCloudKitZone:v9 enabled:syncCopy];

  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  dispatch_group_enter(v11);
  collectionDetailManagerInstance = [(BCCloudCollectionsManager *)self collectionDetailManagerInstance];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10007B42C;
  v23[3] = &unk_10023FAC0;
  v25 = syncCopy;
  v13 = v11;
  v24 = v13;
  [collectionDetailManagerInstance setEnableCloudSync:syncCopy completion:v23];

  collectionMemberManagerInstance = [(BCCloudCollectionsManager *)self collectionMemberManagerInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007B480;
  v20[3] = &unk_10023FAC0;
  v22 = syncCopy;
  v21 = v13;
  v15 = v13;
  [collectionMemberManagerInstance setEnableCloudSync:syncCopy completion:v20];

  [(BCCloudChangeTokenController *)self->_changeTokenController setEnableCloudSync:syncCopy];
  v16 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B4D4;
  block[3] = &unk_1002402E0;
  v19 = completionCopy;
  v17 = completionCopy;
  dispatch_group_notify(v15, v16, block);
}

- (void)setEnableCloudSync:(BOOL)sync
{
  syncCopy = sync;
  v5 = sub_100002660(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (syncCopy)
    {
      v6 = @"YES";
    }

    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionsManager #enableCloudSync setEnableCloudSync %@", &v11, 0xCu);
  }

  v7 = [[CKRecordZoneID alloc] initWithZoneName:@"CollectionZone" ownerName:CKCurrentUserDefaultName];
  v8 = +[_TtC14bookdatastored13BDSSyncEngine shared];
  [v8 setCloudKitZone:v7 enabled:syncCopy];

  collectionDetailManagerInstance = [(BCCloudCollectionsManager *)self collectionDetailManagerInstance];
  [collectionDetailManagerInstance setEnableCloudSync:syncCopy];

  collectionMemberManagerInstance = [(BCCloudCollectionsManager *)self collectionMemberManagerInstance];
  [collectionMemberManagerInstance setEnableCloudSync:syncCopy];

  [(BCCloudChangeTokenController *)self->_changeTokenController setEnableCloudSync:syncCopy];
}

- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  saltVersionIdentifierManager = [(BCCloudCollectionsManager *)self saltVersionIdentifierManager];
  [saltVersionIdentifierManager handleSaltVersionIdentifierChange:identifierCopy completion:&stru_100241F60];
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSMutableArray);
  collectionDetailManagerInstance = [(BCCloudCollectionsManager *)self collectionDetailManagerInstance];
  [v5 bds_addObjectIfNotNil:collectionDetailManagerInstance];

  collectionMemberManagerInstance = [(BCCloudCollectionsManager *)self collectionMemberManagerInstance];
  [v5 bds_addObjectIfNotNil:collectionMemberManagerInstance];

  v9 = sub_10000DC08(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BCCloudCollectionsManager hasSaltChangedWithCompletion %@", &v10, 0xCu);
  }

  [v5 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:"hasSaltChangedWithCompletion:" completion:completionCopy];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000DC08(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionsManager dissociateCloudDataFromSyncWithCompletion", v10, 2u);
  }

  collectionDetailManagerInstance = [(BCCloudCollectionsManager *)self collectionDetailManagerInstance];
  v11[0] = collectionDetailManagerInstance;
  collectionMemberManagerInstance = [(BCCloudCollectionsManager *)self collectionMemberManagerInstance];
  changeTokenController = self->_changeTokenController;
  v11[1] = collectionMemberManagerInstance;
  v11[2] = changeTokenController;
  v9 = [NSArray arrayWithObjects:v11 count:3];
  [v9 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:"dissociateCloudDataFromSyncWithCompletion:" completion:completionCopy];
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v4 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = sub_10000DB80(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudCollectionsManager deleteCloudDataWithCompletion:\", v8, 2u);
    }
  }

  [BCCloudDataSource deleteCloudDataWithCompletion:completionCopy];
}

- (id)diagnosticEntityInfos:(BOOL)infos
{
  infosCopy = infos;
  v5 = objc_alloc_init(NSMutableArray);
  collectionDetailManagerInstance = [(BCCloudCollectionsManager *)self collectionDetailManagerInstance];
  v7 = [collectionDetailManagerInstance diagnosticEntityInfos:infosCopy];
  [v5 addObjectsFromArray:v7];

  collectionMemberManagerInstance = [(BCCloudCollectionsManager *)self collectionMemberManagerInstance];
  v9 = [collectionMemberManagerInstance diagnosticEntityInfos:infosCopy];
  [v5 addObjectsFromArray:v9];

  return v5;
}

@end