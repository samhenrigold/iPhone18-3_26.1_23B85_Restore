@interface CPLCloudKitGetCurrentSyncAnchorTask
- (CPLCloudKitGetCurrentSyncAnchorTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 previousScopeChange:(id)change completionHandler:(id)handler;
- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)anchor;
- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)anchor currentUserID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitGetCurrentSyncAnchorTask

- (CPLCloudKitGetCurrentSyncAnchorTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 previousScopeChange:(id)change completionHandler:(id)handler
{
  scopeCopy = scope;
  v14 = a5;
  changeCopy = change;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = CPLCloudKitGetCurrentSyncAnchorTask;
  v17 = [(CPLCloudKitTransportTask *)&v21 initWithController:controller];
  if (v17)
  {
    v18 = [handlerCopy copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_cloudKitScope, scope);
    objc_storeStrong(&v17->_scope, a5);
    objc_storeStrong(&v17->_previousScopeChange, change);
  }

  return v17;
}

- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)anchor
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B05BC;
  v4[3] = &unk_100273B50;
  selfCopy = self;
  anchorCopy = anchor;
  v3 = anchorCopy;
  [(CPLCloudKitTransportTask *)selfCopy getUserRecordIDFetchIfNecessaryWithCompletionHandler:v4];
}

- (void)_fetchLibraryInfoAndStateWithCurrentSyncAnchor:(id)anchor currentUserID:(id)d
{
  anchorCopy = anchor;
  dCopy = d;
  controller = [(CPLCloudKitTransportTask *)self controller];
  v9 = [controller zoneIdentificationForCloudKitScope:self->_cloudKitScope engineScope:self->_scope];

  v10 = [v9 recordsToFetchForScopeInfoWithCurrentUserID:dCopy];
  if ([v10 count])
  {
    cloudKitScope = self->_cloudKitScope;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B0770;
    v12[3] = &unk_100276EF0;
    v12[4] = self;
    v13 = v9;
    v14 = dCopy;
    v15 = anchorCopy;
    [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v10 fetchResources:1 inScope:cloudKitScope completionHandler:v12];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v10 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v10];
  v4 = v10;
  if (v3)
  {
    if ([(CPLEngineScope *)self->_scope scopeType])
    {
      cloudKitScope = self->_cloudKitScope;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000B09BC;
      v9[3] = &unk_100276F18;
      v9[4] = self;
      [(CPLCloudKitTransportTask *)self fetchZoneForScope:cloudKitScope completionHandler:v9];
    }

    else
    {
      completionHandler = self->_completionHandler;
      scopeIdentifier = [(CPLEngineScope *)self->_scope scopeIdentifier];
      v8 = [CPLErrors invalidScopeErrorWithScopeIdentifier:scopeIdentifier];
      (*(completionHandler + 2))(completionHandler, 0, 0, 0, v8);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end