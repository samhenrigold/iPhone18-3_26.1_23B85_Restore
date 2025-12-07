@interface CPLCloudKitFetchTransportScopeTask
- (CPLCloudKitFetchTransportScopeTask)initWithController:(id)controller scope:(id)scope cloudKitScope:(id)kitScope completionHandler:(id)handler;
- (void)_callCompletionWithZone:(id)zone;
- (void)_updateCloudKitScopeWithZone:(id)zone;
- (void)createRecordZoneWithID:(id)d;
- (void)runOperations;
@end

@implementation CPLCloudKitFetchTransportScopeTask

- (CPLCloudKitFetchTransportScopeTask)initWithController:(id)controller scope:(id)scope cloudKitScope:(id)kitScope completionHandler:(id)handler
{
  scopeCopy = scope;
  kitScopeCopy = kitScope;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = CPLCloudKitFetchTransportScopeTask;
  v14 = [(CPLCloudKitTransportTask *)&v21 initWithController:controller];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scope, scope);
    objc_storeStrong(&v15->_cloudKitScope, kitScope);
    v16 = objc_alloc_init(CPLEngineScopeFlagsUpdate);
    fetchedFlags = v15->_fetchedFlags;
    v15->_fetchedFlags = v16;

    v18 = objc_retainBlock(handlerCopy);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    v15->_options = 0;
  }

  return v15;
}

- (void)_updateCloudKitScopeWithZone:(id)zone
{
  cloudKitScope = self->_cloudKitScope;
  zoneCopy = zone;
  v6 = [CPLCloudKitScope alloc];
  if (cloudKitScope)
  {
    options = self->_options | [(CPLCloudKitScope *)self->_cloudKitScope options];
  }

  else
  {
    options = self->_options;
  }

  v12 = [(CPLCloudKitScope *)v6 initWithZone:zoneCopy options:options];

  controller = [(CPLCloudKitTransportTask *)self controller];
  v9 = [controller zoneIdentificationForCloudKitScope:v12 engineScope:self->_scope];

  cloudKitScope = [v9 cloudKitScope];
  v11 = self->_cloudKitScope;
  self->_cloudKitScope = cloudKitScope;
}

- (void)createRecordZoneWithID:(id)d
{
  dCopy = d;
  v18 = 0;
  v6 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100003568(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        cpl_zoneName = [dCopy cpl_zoneName];
        *buf = 138543362;
        v21 = cpl_zoneName;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating primary zone with zoneID %{public}@", buf, 0xCu);
      }
    }

    v11 = [[CKRecordZone alloc] initWithZoneID:dCopy];
    [(CPLCloudKitFetchTransportScopeTask *)self _updateCloudKitScopeWithZone:v11];
    v12 = [CKModifyRecordZonesOperation alloc];
    v19 = v11;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
    v14 = [v12 initWithRecordZonesToSave:v13 recordZoneIDsToDelete:0];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002FB5C;
    v15[3] = &unk_100273760;
    v15[4] = self;
    v16 = dCopy;
    v17 = a2;
    [v14 setModifyRecordZonesCompletionBlock:v15];
    [(CPLCloudKitTransportTask *)self launchOperation:v14 type:CPLCloudKitOperationTypeForScope(self->_cloudKitScope) withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v75 = 0;
  v4 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v75];
  v5 = v75;
  if (v4)
  {
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = sub_1000043B0;
    v73 = sub_1000052BC;
    v74 = [(CPLCloudKitScope *)self->_cloudKitScope zone];
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_1000043B0;
    v67 = sub_1000052BC;
    zoneID = [v70[5] zoneID];
    if (v64[5])
    {
      v6 = [CKRecordZoneID alloc];
      zoneName = [v64[5] zoneName];
      ownerName = [v64[5] ownerName];
      v9 = [v6 initWithZoneName:zoneName ownerName:ownerName];
      v10 = v64[5];
      v64[5] = v9;

      v11 = 0;
    }

    else
    {
      scopeType = [(CPLEngineScope *)self->_scope scopeType];
      scope = self->_scope;
      if (scopeType == 1)
      {
        scopeIdentifier = [(CPLEngineScope *)scope scopeIdentifier];
        v15 = [scopeIdentifier isEqualToString:CPLPrimaryScopeIdentifier];

        v16 = [CKRecordZoneID alloc];
        [(CPLEngineScope *)self->_scope scopeIdentifier];
        if (v15)
          v17 = {;
          v18 = [v16 initWithCPLScopeIdentifier:v17];
          v11 = 0;
          v19 = &stru_1002737A0;
          v20 = &stru_1002737E0;
        }

        else
          v27 = {;
          v28 = [v16 initWithCPLScopeIdentifier:v27];

          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_100030600;
          v61[3] = &unk_100273808;
          v29 = v28;
          v62 = v29;
          v19 = objc_retainBlock(v61);
          v11 = v29;
          v17 = v62;
          v20 = &stru_100273828;
          v18 = v11;
        }

        if (v19)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      zoneName = [(CPLEngineScope *)scope scopeIdentifier];
      sub_100193BC0(zoneName, &self->_scope);
      v21 = [(CPLCloudKitTransportTask *)self zoneIDFromScopeIdentifier:zoneName];
      v22 = v64[5];
      v64[5] = v21;

      v23 = v64;
      v11 = v64[5];
      ownerName2 = [v23[5] ownerName];
      v25 = [ownerName2 isEqualToString:CKCurrentUserDefaultName];

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        [(CPLEngineScopeFlagsUpdate *)self->_fetchedFlags setValue:1 forFlag:1];
        v26 = 2;
      }

      if ([(CPLCloudKitZoneIdentification *)CPLCloudKitLibraryShareZoneIdentification isSupportedZoneID:v64[5]]|| [(CPLCloudKitZoneIdentification *)CPLCloudKitCollectionShareZoneIdentification isSupportedZoneID:v64[5]])
      {
        v26 |= 4uLL;
      }

      v31 = [CPLCloudKitScope alloc];
      v32 = [(CPLCloudKitScope *)v31 initWithZoneID:v64[5] options:v26];
      cloudKitScope = self->_cloudKitScope;
      self->_cloudKitScope = v32;

      v34 = [(CPLCloudKitScope *)self->_cloudKitScope zone];
      ownerName = v70[5];
      v70[5] = v34;
    }

    v18 = 0;
LABEL_19:
    if (!v64[5])
    {
      sub_100193CE0(v30);
      v50 = +[NSAssertionHandler currentHandler];
      v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFetchTransportScopeTask.m"];
      [v50 handleFailureInMethod:a2 object:self file:v51 lineNumber:162 description:@"No zoneID to validate against"];

      abort();
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100030614;
    v60[3] = &unk_100273850;
    v60[4] = &v63;
    v19 = objc_retainBlock(v60);
    v35 = v64[5];

    v20 = &stru_100273870;
    v18 = v35;
LABEL_21:
    v36 = self->_cloudKitScope;
    if (v36)
    {
      v37 = CPLCloudKitOperationTypeForScope(v36);
    }

    else
    {
      v37 = 1;
    }

    if (v11)
    {
      v38 = [CKFetchRecordZonesOperation alloc];
      v78 = v11;
      v39 = [NSArray arrayWithObjects:&v78 count:1];
      v40 = [v38 initWithRecordZoneIDs:v39];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v42 = sub_100003568(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          cpl_zoneName = [v11 cpl_zoneName];
          sub_100193C6C(cpl_zoneName, self, buf, v42);
        }

LABEL_31:
      }
    }

    else
    {
      v44 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
      v40 = v44;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v42 = sub_100003568(v44);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v45 = self->_scope;
          *buf = 138412290;
          v77 = v45;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Fetching all zones for %@", buf, 0xCu);
        }

        goto LABEL_31;
      }
    }

    operationID = [v40 operationID];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100030630;
    v52[3] = &unk_1002738E8;
    v52[4] = self;
    v57 = &v63;
    v47 = v19;
    v55 = v47;
    v58 = &v69;
    v48 = operationID;
    v59 = a2;
    v53 = v48;
    v56 = v20;
    v49 = v18;
    v54 = v49;
    [v40 setFetchRecordZonesCompletionBlock:v52];
    [(CPLCloudKitTransportTask *)self launchOperation:v40 type:v37 withContext:0];

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v69, 8);

    goto LABEL_33;
  }

  (*(self->_completionHandler + 2))();
LABEL_33:
}

- (void)_callCompletionWithZone:(id)zone
{
  v4 = [(CPLCloudKitFetchTransportScopeTask *)self _updateCloudKitScopeWithZone:zone];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100003568(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      zoneID = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
      cpl_zoneName = [zoneID cpl_zoneName];
      options = [(CPLCloudKitScope *)self->_cloudKitScope options];
      v11 = 138543618;
      v12 = cpl_zoneName;
      v13 = 2048;
      v14 = options;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetched zone %{public}@ with options 0x%lx", &v11, 0x16u);
    }
  }

  completionHandler = self->_completionHandler;
  transportScope = [(CPLCloudKitScope *)self->_cloudKitScope transportScope];
  completionHandler[2](completionHandler, transportScope, self->_fetchedFlags, 0);
}

@end