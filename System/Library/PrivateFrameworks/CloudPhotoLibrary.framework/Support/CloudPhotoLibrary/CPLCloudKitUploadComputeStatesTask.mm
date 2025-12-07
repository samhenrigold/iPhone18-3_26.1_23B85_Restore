@interface CPLCloudKitUploadComputeStatesTask
- (CPLCloudKitUploadComputeStatesTask)initWithController:(id)controller computeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)self0;
- (void)_getEncryptionHelper;
- (void)_getTemporaryFolder;
- (void)_uploadComputeStatesWithTemporaryFolderURL:(id)l;
- (void)runOperations;
@end

@implementation CPLCloudKitUploadComputeStatesTask

- (CPLCloudKitUploadComputeStatesTask)initWithController:(id)controller computeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)self0
{
  statesCopy = states;
  scopeCopy = scope;
  sharedScopeCopy = sharedScope;
  mappingCopy = mapping;
  scopeMappingCopy = scopeMapping;
  recordsCopy = records;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = CPLCloudKitUploadComputeStatesTask;
  v21 = [(CPLCloudKitTransportTask *)&v31 initWithController:controller];
  if (v21)
  {
    v22 = [statesCopy copy];
    computeStates = v21->_computeStates;
    v21->_computeStates = v22;

    objc_storeStrong(&v21->_scope, scope);
    objc_storeStrong(&v21->_sharedScope, sharedScope);
    objc_storeStrong(&v21->_targetMapping, mapping);
    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:scopeMappingCopy];
    v24 = [recordsCopy copy];
    knownRecords = v21->_knownRecords;
    v21->_knownRecords = v24;

    v26 = [handlerCopy copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v26;
  }

  return v21;
}

- (void)runOperations
{
  v5 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v5];
  v4 = v5;
  if (v3)
  {
    [(CPLCloudKitUploadComputeStatesTask *)self _getEncryptionHelper];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)_getEncryptionHelper
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100087B94;
  v2[3] = &unk_1002761A8;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self acquireHelperWithIdentifier:@"compute-state-encryption" completionHandler:v2];
}

- (void)_getTemporaryFolder
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100087C9C;
  v2[3] = &unk_100274458;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getTemporaryFolderWithCompletionHandler:v2];
}

- (void)_uploadComputeStatesWithTemporaryFolderURL:(id)l
{
  lCopy = l;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_computeStates, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  v5 = self->_computeStates;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        itemScopedIdentifier = [v10 itemScopedIdentifier];
        v12 = itemScopedIdentifier;
        if (itemScopedIdentifier)
        {
          [v4 setObject:v10 forKeyedSubscript:itemScopedIdentifier];
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = sub_1000039EC(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v48 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[CCSS] Missing identifier to upload for compute state %@", buf, 0xCu);
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v7);
  }

  scopeIdentifier = [(CPLEngineScope *)selfCopy->_scope scopeIdentifier];
  v15 = [(CPLCloudKitTransportTask *)selfCopy cloudKitScopeForScopeIdentifier:scopeIdentifier];

  zoneID = [v15 zoneID];

  if (zoneID)
  {
    sharedScope = selfCopy->_sharedScope;
    if (sharedScope)
    {
      scopeIdentifier2 = [(CPLEngineScope *)sharedScope scopeIdentifier];
      v19 = [(CPLCloudKitTransportTask *)selfCopy cloudKitScopeForScopeIdentifier:scopeIdentifier2];

      zoneID2 = [v19 zoneID];

      if (!zoneID2)
      {
        completionHandler = selfCopy->_completionHandler;
        v22 = [CPLErrors cplErrorWithCode:80 description:@"Missing required shared zone"];
        completionHandler[2](completionHandler, 0, v22);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v19 = 0;
    }

    controller = [(CPLCloudKitTransportTask *)selfCopy controller];
    v22 = [controller zoneIdentificationForCloudKitScope:v15 engineScope:selfCopy->_scope];

    if (v19 && selfCopy->_sharedScope)
    {
      controller2 = [(CPLCloudKitTransportTask *)selfCopy controller];
      v31 = [controller2 zoneIdentificationForCloudKitScope:v19 engineScope:selfCopy->_sharedScope];
    }

    else
    {
      v31 = 0;
    }

    v26 = objc_alloc_init(NSMutableArray);
    allKeys = [v4 allKeys];
    targetMapping = selfCopy->_targetMapping;
    knownRecords = selfCopy->_knownRecords;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000881D8;
    v41[3] = &unk_1002761D0;
    v41[4] = selfCopy;
    v42 = v4;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100088508;
    v36[3] = &unk_1002761F8;
    v37 = v42;
    v38 = lCopy;
    v39 = selfCopy;
    v40 = v26;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000888A4;
    v34[3] = &unk_100272268;
    v34[4] = selfCopy;
    v35 = v40;
    v29 = v40;
    [(CPLCloudKitTransportTask *)selfCopy updatePrivatePropertiesOnAssetsWithScopedIdentifiers:allKeys desiredKeys:&off_1002913E0 destinationZoneIdentification:v22 sharedZoneIdentification:v31 targetMapping:targetMapping knownRecords:knownRecords shouldUpdateRecord:v41 updateBlock:v36 completionHandler:v34];

    goto LABEL_25;
  }

  v23 = selfCopy->_completionHandler;
  v19 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
  v23[2](v23, 0, v19);
LABEL_26:
}

@end