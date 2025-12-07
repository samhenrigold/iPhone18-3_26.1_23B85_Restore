@interface CPLCloudKitInMemoryResourceDownloadTask
- (CPLCloudKitInMemoryResourceDownloadTask)initWithController:(id)controller resource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)_inMemoryDownloadOperationForRecordID:(id)d resource:(id)resource record:(id)record keys:(id)keys operationType:(int64_t)type completionBlock:(id)block;
- (void)_fetchPlaceholderRecordAndStartDownload;
- (void)_startDownload;
- (void)runOperations;
@end

@implementation CPLCloudKitInMemoryResourceDownloadTask

- (CPLCloudKitInMemoryResourceDownloadTask)initWithController:(id)controller resource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  resourceCopy = resource;
  recordCopy = record;
  targetCopy = target;
  mappingCopy = mapping;
  handlerCopy = handler;
  v29.receiver = self;
  v29.super_class = CPLCloudKitInMemoryResourceDownloadTask;
  v20 = [(CPLCloudKitTransportTask *)&v29 initWithController:controller];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_resource, resource);
    objc_storeStrong(&v21->_record, record);
    v22 = objc_alloc_init(CPLRecordTargetMapping);
    targetMapping = v21->_targetMapping;
    v21->_targetMapping = v22;

    v24 = v21->_targetMapping;
    scopedIdentifier = [targetCopy scopedIdentifier];
    [(CPLRecordTargetMapping *)v24 setTarget:targetCopy forRecordWithScopedIdentifier:scopedIdentifier];

    v26 = [handlerCopy copy];
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v26;

    [(CPLCloudKitTransportTask *)v21 setTransportScopeMapping:mappingCopy];
    [(CPLCloudKitTransportTask *)v21 setIsMetadata:0];
    [(CPLCloudKitTransportTask *)v21 setBoostable:0];
  }

  return v21;
}

- (id)_inMemoryDownloadOperationForRecordID:(id)d resource:(id)resource record:(id)record keys:(id)keys operationType:(int64_t)type completionBlock:(id)block
{
  dCopy = d;
  resourceCopy = resource;
  recordCopy = record;
  keysCopy = keys;
  blockCopy = block;
  v17 = sub_1001A8CE0(keysCopy);
  if (CPLCloudKitUseGateKeeperForOperationType())
  {
    v18 = CPLCloudKitGateKeeperDefaultDownloadType;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000A4C10;
    v34[3] = &unk_1002769D0;
    v35 = blockCopy;
    v19 = [CPLCKResourceDownloadOperation inMemoryDownloadOperationForRecordID:dCopy resource:resourceCopy record:recordCopy keys:keysCopy downloadType:v18 completionBlock:v34];
    v20 = v35;
  }

  else
  {
    v21 = [CKFetchRecordsOperation alloc];
    v37 = dCopy;
    v22 = [NSArray arrayWithObjects:&v37 count:1];
    v19 = [v21 initWithRecordIDs:v22];

    [v19 setShouldFetchAssetContentInMemory:1];
    v20 = sub_1001A8C80(keysCopy);
    v36[0] = v17;
    v36[1] = v20;
    v23 = [NSArray arrayWithObjects:v36 count:2];
    [v19 setDesiredKeys:v23];

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_1000044F0;
    v32[4] = sub_10000535C;
    v33 = 0;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001ACDC4;
    v31[3] = &unk_1002769F8;
    v31[4] = v32;
    [v19 setPerRecordCompletionBlock:v31];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000A4CB0;
    v25[3] = &unk_100276A20;
    v30 = v32;
    v26 = dCopy;
    v27 = v17;
    v28 = keysCopy;
    v29 = blockCopy;
    [v19 setFetchRecordsCompletionBlock:v25];

    _Block_object_dispose(v32, 8);
  }

  return v19;
}

- (void)runOperations
{
  v8 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v8];
  v4 = v8;
  if (v3)
  {
    if (self->_record)
    {
      targetMapping = self->_targetMapping;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000A4F4C;
      v7[3] = &unk_100272468;
      v7[4] = self;
      [(CPLCloudKitTransportTask *)self fetchUnknownTargetsInMapping:targetMapping completionHandler:v7];
    }

    else
    {
      identity = [(CPLResource *)self->_resource identity];
      [identity fingerPrint];

      [(CPLCloudKitInMemoryResourceDownloadTask *)self _fetchPlaceholderRecordAndStartDownload];
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)_fetchPlaceholderRecordAndStartDownload
{
  itemScopedIdentifier = [(CPLResource *)self->_resource itemScopedIdentifier];
  v9 = itemScopedIdentifier;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  targetMapping = self->_targetMapping;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A508C;
  v7[3] = &unk_100275080;
  v7[4] = self;
  v8 = itemScopedIdentifier;
  v6 = itemScopedIdentifier;
  [(CPLCloudKitTransportTask *)self fetchPlaceholderRecordsForScopedIdentifiers:v4 targetMapping:targetMapping completionHandler:v7];
}

- (void)_startDownload
{
  v32 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v32];
  v4 = v32;
  if (v3)
  {
    v5 = sub_100084A0C(CPLCloudKitResourceKeys, [CPLCloudKitFakeDynamicDerivatives realResourceTypeForResource:self->_resource]);
    if (v5)
    {
      itemScopedIdentifier = [(CPLResource *)self->_resource itemScopedIdentifier];
      v7 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:itemScopedIdentifier];
      resourceScopedIdentifier = [v7 resourceScopedIdentifier];
      scopeIdentifier = [resourceScopedIdentifier scopeIdentifier];
      v10 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

      if (v10)
      {
        v28 = v7;
        identifier = [resourceScopedIdentifier identifier];
        v12 = [v10 recordIDWithRecordName:identifier];

        if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = sub_100003AFC(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_1001A8CE0(v5);
            v16 = v15 = resourceScopedIdentifier;
            *buf = 138412546;
            *&buf[4] = v12;
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Starting in memory download for %@ (resourceKey %@)", buf, 0x16u);

            resourceScopedIdentifier = v15;
          }
        }

        v27 = resourceScopedIdentifier;
        v17 = objc_alloc_init(CPLCloudKitDownloadMetric);
        identity = [(CPLResource *)self->_resource identity];
        -[CPLCloudKitDownloadMetric setExpectedSize:](v17, "setExpectedSize:", [identity fileSize]);

        [(CPLCloudKitDownloadMetric *)v17 setRequestedItemCount:1];
        [(CPLCloudKitTransportTask *)self associateMetric:v17];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000A5560;
        v29[3] = &unk_100276A70;
        v29[4] = self;
        v30 = v17;
        v31 = v12;
        v19 = v12;
        scopeIdentifier2 = v17;
        v21 = objc_retainBlock(v29);
        v22 = itemScopedIdentifier;
        v23 = CPLCloudKitOperationTypeForScope(v10);
        v24 = [(CPLCloudKitInMemoryResourceDownloadTask *)self _inMemoryDownloadOperationForRecordID:v19 resource:self->_resource record:self->_record keys:v5 operationType:v23 completionBlock:v21];
        v25 = v23;
        itemScopedIdentifier = v22;
        [(CPLCloudKitTransportTask *)self launchOperation:v24 type:v25 withContext:0];

        resourceScopedIdentifier = v27;
        v7 = v28;
      }

      else
      {
        completionHandler = self->_completionHandler;
        scopeIdentifier2 = [resourceScopedIdentifier scopeIdentifier];
        v19 = [CPLErrors cplErrorWithCode:80 description:@"Missing zone for %@", scopeIdentifier2];
        completionHandler[2](completionHandler, 0, v19);
      }
    }

    else
    {
      sub_1001AD2C4(&self->_resource, self, buf);
      itemScopedIdentifier = *buf;
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end