@interface CPLCloudKitFetchExistingSharedScopeTask
- (CPLCloudKitFetchExistingSharedScopeTask)initWithController:(id)controller completionHandler:(id)handler;
- (void)_validateLastZoneIDInArray:(id)array currentUserID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchExistingSharedScopeTask

- (CPLCloudKitFetchExistingSharedScopeTask)initWithController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = CPLCloudKitFetchExistingSharedScopeTask;
  v7 = [(CPLCloudKitTransportTask *)&v11 initWithController:controller];
  if (v7)
  {
    v8 = [handlerCopy copy];
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;
  }

  return v7;
}

- (void)_validateLastZoneIDInArray:(id)array currentUserID:(id)d
{
  arrayCopy = array;
  dCopy = d;
  v32 = 0;
  v8 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v32];
  v9 = v32;
  if (v8)
  {
    if ([arrayCopy count])
    {
      lastObject = [arrayCopy lastObject];
      removeLastObject = [arrayCopy removeLastObject];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_100003C0C(removeLastObject);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          cpl_zoneName = [lastObject cpl_zoneName];
          *buf = 138543362;
          v34 = cpl_zoneName;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking if %{public}@ is a valid shared zone", buf, 0xCu);
        }
      }

      v14 = [[CPLCloudKitScope alloc] initWithZoneID:lastObject];
      controller = [(CPLCloudKitTransportTask *)self controller];
      v16 = [controller recordsToFetchToIdentifyCloudKitScope:v14 proposedScopeType:0 currentUserID:dCopy];
      if ([v16 count])
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000B0F80;
        v26[3] = &unk_100276F68;
        v26[4] = self;
        v27 = controller;
        v17 = &v28;
        v18 = v9;
        v19 = lastObject;
        v20 = v14;
        v28 = v20;
        v29 = dCopy;
        v30 = v19;
        v31 = arrayCopy;
        v21 = v20;
        lastObject = v19;
        v9 = v18;
        v22 = &v27;
        [(CPLCloudKitTransportTask *)self fetchRecordsWithIDs:v16 fetchResources:1 inScope:v21 completionHandler:v26];
      }

      else
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1000B13A8;
        v23[3] = &unk_1002721A0;
        v23[4] = self;
        v22 = &v24;
        v24 = arrayCopy;
        v17 = &v25;
        v25 = dCopy;
        [(CPLCloudKitTransportTask *)self dispatchAsync:v23];
      }
    }

    else
    {
      sub_1001AF6B8(self);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v6 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v6];
  v4 = v6;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B148C;
    v5[3] = &unk_100274018;
    v5[4] = self;
    [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v5];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end