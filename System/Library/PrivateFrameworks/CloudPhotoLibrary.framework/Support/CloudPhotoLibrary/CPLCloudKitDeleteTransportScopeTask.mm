@interface CPLCloudKitDeleteTransportScopeTask
- (CPLCloudKitDeleteTransportScopeTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 completionHandler:(id)handler;
- (id)_errorForDeleteError:(id)error;
- (void)_deleteZoneWithCurrentUserID:(id)d;
- (void)_didFinishDeleteWithError:(id)error;
- (void)runOperations;
@end

@implementation CPLCloudKitDeleteTransportScopeTask

- (CPLCloudKitDeleteTransportScopeTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 completionHandler:(id)handler
{
  scopeCopy = scope;
  v12 = a5;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = CPLCloudKitDeleteTransportScopeTask;
  v14 = [(CPLCloudKitTransportTask *)&v18 initWithController:controller];
  if (v14)
  {
    v15 = [handlerCopy copy];
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;

    objc_storeStrong(&v14->_cloudKitScope, scope);
    objc_storeStrong(&v14->_scope, a5);
  }

  return v14;
}

- (id)_errorForDeleteError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = [CPLCloudKitErrors realErrorForError:errorCopy];

    domain = [v5 domain];
    v7 = [domain isEqualToString:CKErrorDomain];

    if (v7 && ([v5 code] == 26 || objc_msgSend(v5, "code") == 28))
    {
      v8 = 0;
LABEL_8:

      goto LABEL_10;
    }

    if (v5)
    {
      lastOperationRequestUUIDs = [(CPLCloudKitTransportTask *)self lastOperationRequestUUIDs];
      v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:v5 withRequestUUIDs:lastOperationRequestUUIDs description:@"Failed to delete zone"];

      v5 = lastOperationRequestUUIDs;
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)_didFinishDeleteWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (self->_forced && ([errorCopy isCPLOperationCancelledError] & 1) == 0)
  {
    cloudKitScope = self->_cloudKitScope;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100048140;
    v7[3] = &unk_100274348;
    v8 = v5;
    selfCopy = self;
    [(CPLCloudKitTransportTask *)self fetchZoneForScope:cloudKitScope completionHandler:v7];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100048290;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

- (void)_deleteZoneWithCurrentUserID:(id)d
{
  dCopy = d;
  v38 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v38];
  v6 = v38;
  if (v5)
  {
    if (![(CPLEngineScope *)self->_scope scopeType])
    {
      sub_10019A3B8(&self->_scope, self);
      goto LABEL_36;
    }

    cloudKitScope = self->_cloudKitScope;
    if (!cloudKitScope)
    {
      controller = [(CPLCloudKitTransportTask *)self controller];
      scopeIdentifier = [(CPLEngineScope *)self->_scope scopeIdentifier];
      zoneID = [controller zoneIDFromScopeIdentifier:scopeIdentifier];

      ownerName = [zoneID ownerName];
      recordName = [dCopy recordName];
      v13 = [ownerName isEqualToString:recordName];

      if (v13)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_10019A2F8(zoneID, &self->_scope);
        }

        (*(self->_completionHandler + 2))();
        goto LABEL_35;
      }

      v14 = [[CPLCloudKitScope alloc] initWithZoneID:zoneID currentUserID:dCopy];
      v15 = self->_cloudKitScope;
      self->_cloudKitScope = v14;

      cloudKitScope = self->_cloudKitScope;
    }

    zoneID = [(CPLCloudKitScope *)cloudKitScope zoneID];
    if (!zoneID)
    {
      completionHandler = self->_completionHandler;
      v17 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
      completionHandler[2](completionHandler, v17);
LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    if (!self->_forced && [CPLCloudKitZoneIdentification shouldProtectZoneIDFromDeletion:zoneID])
    {
      sub_10019A1EC(&self->_scope, zoneID, self);
      goto LABEL_35;
    }

    controller2 = [(CPLCloudKitTransportTask *)self controller];
    v17 = [controller2 zoneIdentificationForCloudKitScope:self->_cloudKitScope engineScope:self->_scope];

    if ([v17 supportsZoneDelete])
    {
      v18 = [CKModifyRecordZonesOperation alloc];
      v44 = zoneID;
      v19 = [NSArray arrayWithObjects:&v44 count:1];
      v20 = [v18 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v19];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = sub_100003700(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = zoneID;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Deleting zone %@", buf, 0xCu);
        }
      }

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000488E8;
      v37[3] = &unk_100274370;
      v37[4] = self;
      [v20 setModifyRecordZonesCompletionBlock:v37];
      cloudKitScope = [v17 cloudKitScope];
      [(CPLCloudKitTransportTask *)self launchOperation:v20 type:CPLCloudKitOperationTypeForScope(cloudKitScope) withContext:0];
    }

    else
    {
      shareRecordIDToDelete = [v17 shareRecordIDToDelete];
      v20 = shareRecordIDToDelete;
      if (shareRecordIDToDelete)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v26 = sub_100003700(shareRecordIDToDelete);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v40 = v20;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Deleting share record %{public}@", buf, 0xCu);
          }
        }

        v27 = [CKModifyRecordsOperation alloc];
        v43 = v20;
        v28 = [NSArray arrayWithObjects:&v43 count:1];
        cloudKitScope = [v27 initWithRecordsToSave:0 recordIDsToDelete:v28];

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100048A44;
        v36[3] = &unk_100274370;
        v36[4] = self;
        [cloudKitScope setModifyRecordsCompletionBlock:v36];
        cloudKitScope2 = [v17 cloudKitScope];
        [(CPLCloudKitTransportTask *)self launchOperation:cloudKitScope type:CPLCloudKitOperationTypeForScope(cloudKitScope2) withContext:0];
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v30 = sub_100003700(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            cloudKitScope3 = [v17 cloudKitScope];
            zoneID2 = [cloudKitScope3 zoneID];
            cpl_zoneName = [zoneID2 cpl_zoneName];
            v31 = [CPLScopeChange descriptionForScopeType:[(CPLEngineScope *)self->_scope scopeType]];
            *buf = 138543618;
            v40 = cpl_zoneName;
            v41 = 2112;
            v42 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Trying to delete %{public}@ that does not provide ways to do so (scope type: %@)", buf, 0x16u);
          }
        }

        if (!self->_forced)
        {
          [(CPLCloudKitDeleteTransportScopeTask *)self _didFinishDeleteWithError:0];
          goto LABEL_33;
        }

        v32 = self->_completionHandler;
        cloudKitScope = +[CPLErrors notImplementedError];
        v32[2](v32, cloudKitScope);
      }
    }

LABEL_33:
    goto LABEL_34;
  }

  (*(self->_completionHandler + 2))();
LABEL_36:
}

@end