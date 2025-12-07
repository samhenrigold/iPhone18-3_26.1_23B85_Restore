@interface WFCloudKitItemRequest
+ (id)createRecordFromItem:(id)item zoneID:(id)d;
+ (id)createRecordIDWithName:(id)name zoneID:(id)d;
+ (id)desiredKeysFromProperties:(id)properties itemType:(Class)type;
+ (id)itemValueForRecordValue:(id)value item:(id)item property:(id)property resolvedReferences:(id)references;
+ (id)recordFromSystemFieldsData:(id)data error:(id *)error;
+ (id)recordValueForItemValue:(id)value item:(id)item property:(id)property recordKey:(id)key zoneID:(id)d;
+ (id)systemFieldsDataFromRecord:(id)record error:(id *)error;
+ (void)assignRecordValue:(id)value toItem:(id)item withProperty:(id)property resolvedReferences:(id)references;
+ (void)hydrateItem:(id)item withRecord:(id)record resolvedReferences:(id)references setNilValues:(BOOL)values;
- (WFCloudKitItemRequest)initWithContainer:(id)container database:(id)database;
- (id)deleteItem:(id)item completionHandler:(id)handler;
- (id)fetchConfigurationAssetWithType:(id)type configuration:(id)configuration completionHandler:(id)handler;
- (id)fetchItemWithID:(id)d itemType:(Class)type groupName:(id)name properties:(id)properties completionHandler:(id)handler;
- (id)fetchItemsWithPredicate:(id)predicate itemType:(Class)type groupName:(id)name properties:(id)properties sortDescriptors:(id)descriptors resultsLimit:(unint64_t)limit qualityOfService:(int64_t)service completionHandler:(id)self0;
- (id)fetchRecordIDs:(id)ds desiredKeys:(id)keys operationGroup:(id)group completionHandler:(id)handler;
- (id)updateItems:(id)items setNilValues:(BOOL)values qualityOfService:(int64_t)service timeoutIntervalForRequest:(double)request completionHandler:(id)handler;
@end

@implementation WFCloudKitItemRequest

- (id)fetchConfigurationAssetWithType:(id)type configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  typeCopy = type;
  if (![typeCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteConfigurationAsset.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"assetType.length"}];
  }

  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  applicationBundle = [mEMORY[0x1E6996CA8] applicationBundle];

  v14 = [applicationBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v15 = [applicationBundle objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  bundleIdentifier = [applicationBundle bundleIdentifier];
  [bundleIdentifier UTF8String];
  if (((configurationCopy != 0) & os_variant_has_internal_content()) != 0)
  {
    v17 = configurationCopy;
  }

  else
  {
    v17 = @"default";
  }

  v18 = v17;

  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetType = %@ AND shortVersion = %@ AND buildNumber = %@ AND configuration = %@", typeCopy, v14, v15, v18];

  v20 = objc_opt_class();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115__WFCloudKitItemRequest_RemoteConfigurationAsset__fetchConfigurationAssetWithType_configuration_completionHandler___block_invoke;
  v25[3] = &unk_1E837F588;
  v26 = handlerCopy;
  v21 = handlerCopy;
  v22 = [(WFCloudKitItemRequest *)self fetchItemsWithPredicate:v19 itemType:v20 groupName:@"ConfigurationAssetQuery" properties:0 sortDescriptors:0 resultsLimit:1 completionHandler:v25];

  return v22;
}

void __115__WFCloudKitItemRequest_RemoteConfigurationAsset__fetchConfigurationAssetWithType_configuration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 assetDataFile];

  (*(*(a1 + 32) + 16))();
}

- (id)fetchRecordIDs:(id)ds desiredKeys:(id)keys operationGroup:(id)group completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  keysCopy = keys;
  groupCopy = group;
  handlerCopy = handler;
  v14 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [dsCopy count];
    performExpensiveFetchOperations = [(WFCloudKitItemRequest *)self performExpensiveFetchOperations];
    v32 = "[WFCloudKitItemRequest fetchRecordIDs:desiredKeys:operationGroup:completionHandler:]";
    v17 = @"all";
    *buf = 136315650;
    if (!performExpensiveFetchOperations)
    {
      v17 = keysCopy;
    }

    v33 = 2048;
    v34 = v15;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Fetching %lu records by ID. Desired keys: %@", buf, 0x20u);
  }

  v18 = [objc_alloc(MEMORY[0x1E695B938]) initWithRecordIDs:dsCopy];
  if (![(WFCloudKitItemRequest *)self performExpensiveFetchOperations])
  {
    [v18 setDesiredKeys:keysCopy];
  }

  [v18 setGroup:groupCopy];
  xpcActivity = [(WFCloudKitItemRequest *)self xpcActivity];
  configuration = [v18 configuration];
  [configuration setXpcActivity:xpcActivity];

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __85__WFCloudKitItemRequest_fetchRecordIDs_desiredKeys_operationGroup_completionHandler___block_invoke;
  v28 = &unk_1E83798C8;
  v29 = dsCopy;
  v30 = handlerCopy;
  v21 = handlerCopy;
  v22 = dsCopy;
  [v18 setFetchRecordsCompletionBlock:&v25];
  v23 = [(WFCloudKitItemRequest *)self database:v25];
  [v23 addOperation:v18];

  return v18;
}

void __85__WFCloudKitItemRequest_fetchRecordIDs_desiredKeys_operationGroup_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) count];
    v9 = 136315394;
    v10 = "[WFCloudKitItemRequest fetchRecordIDs:desiredKeys:operationGroup:completionHandler:]_block_invoke";
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_INFO, "%s Fetching %lu records by ID completed", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)deleteItem:(id)item completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  itemCopy = item;
  v8 = objc_opt_new();
  v9 = objc_alloc(MEMORY[0x1E695B9B8]);
  identifier = [itemCopy identifier];

  v24[0] = identifier;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v12 = [v9 initWithRecordsToSave:0 recordIDsToDelete:v11];

  xpcActivity = [(WFCloudKitItemRequest *)self xpcActivity];
  configuration = [v12 configuration];
  [configuration setXpcActivity:xpcActivity];

  [v8 setCloudOperation:v12];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__WFCloudKitItemRequest_deleteItem_completionHandler___block_invoke;
  v20[3] = &unk_1E837A588;
  v15 = v8;
  selfCopy = self;
  v23 = handlerCopy;
  v21 = v15;
  v16 = handlerCopy;
  [v12 setModifyRecordsCompletionBlock:v20];
  database = [(WFCloudKitItemRequest *)self database];
  [database addOperation:v12];

  v18 = v15;
  return v15;
}

void __54__WFCloudKitItemRequest_deleteItem_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = [*(a1 + 32) isCancelled];
  v6 = *(a1 + 48);
  if (v5)
  {
    v7 = [*(a1 + 40) createTaskCancelledError];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(a1 + 48), v8);
  }
}

- (id)updateItems:(id)items setNilValues:(BOOL)values qualityOfService:(int64_t)service timeoutIntervalForRequest:(double)request completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v15 = objc_opt_new();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke;
  v34[3] = &unk_1E8379800;
  v34[4] = self;
  v34[5] = a2;
  v16 = [itemsCopy if_map:v34];
  container = [(WFCloudKitItemRequest *)self container];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_2;
  v25[3] = &unk_1E83798A0;
  v30 = handlerCopy;
  serviceCopy = service;
  v26 = v16;
  selfCopy = self;
  requestCopy = request;
  v18 = v15;
  v28 = v18;
  v29 = itemsCopy;
  valuesCopy = values;
  v19 = itemsCopy;
  v20 = v16;
  v21 = handlerCopy;
  [container accountStatusWithCompletionHandler:v25];

  v22 = v29;
  v23 = v18;

  return v18;
}

id __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_1F4AB1E68] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"WFCloudKitItemRequest.m" lineNumber:294 description:{@"Item must conform to WFCloudKitItem protocol: %@", v3}];
  }

  v4 = [objc_opt_class() createRecordFromItem:v3 zoneID:0];

  return v4;
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    v10 = WFLocalizedString(@"In order to do this, you must be signed into iCloud.");
    v11 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [v11 errorWithDomain:@"WFCloudKitErrorDomain" code:2 userInfo:v12];

    (*(*(a1 + 64) + 16))();
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if ((v3 + 1) > 0x22)
  {
    goto LABEL_9;
  }

  if (((1 << (v3 + 1)) & 0x404040400) == 0)
  {
    if (v3 == -1)
    {
      v3 = 21;
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
  }

LABEL_4:
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_3;
  block[3] = &unk_1E8379878;
  v5 = *(a1 + 32);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 40);
  v14 = v6;
  v7 = *(a1 + 48);
  v18 = *(a1 + 64);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v16 = v14;
  v17 = v9;
  v21 = *(a1 + 88);
  dispatch_async(v4, block);

  v10 = v16;
LABEL_6:
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:*(a1 + 32) recordIDsToDelete:0];
  [v2 setSavePolicy:2];
  v3 = [*(a1 + 40) xpcActivity];
  v4 = [v2 configuration];
  [v4 setXpcActivity:v3];

  if (*(a1 + 72) != -1 || *(a1 + 80) != 0.0)
  {
    v5 = [v2 configuration];
    [v5 setQualityOfService:*(a1 + 72)];
    [v5 setTimeoutIntervalForRequest:*(a1 + 80)];
  }

  [*(a1 + 48) setCloudOperation:v2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_4;
  v12[3] = &unk_1E8379850;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = *(a1 + 40);
  v11 = v8;
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = v7;
  v13 = v11;
  v14 = v9;
  v15 = *(a1 + 88);
  [v2 setModifyRecordsCompletionBlock:v12];
  v10 = [*(a1 + 40) database];
  [v10 addOperation:v2];
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if ([*(a1 + 32) isCancelled])
  {
    v8 = *(a1 + 56);
    v9 = [*(a1 + 40) createTaskCancelledError];
    (*(v8 + 16))(v8, v9);
  }

  else if (v7)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_5;
    v15 = &unk_1E8379828;
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    [v6 enumerateObjectsUsingBlock:&v12];
    v10 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v6 count];
      *buf = 136315394;
      v19 = "[WFCloudKitItemRequest updateItems:setNilValues:qualityOfService:timeoutIntervalForRequest:completionHandler:]_block_invoke_4";
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_INFO, "%s Updated %lu items", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __111__WFCloudKitItemRequest_updateItems_setNilValues_qualityOfService_timeoutIntervalForRequest_completionHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [WFCloudKitItemRequest hydrateItem:v7 withRecord:v6 setNilValues:*(a1 + 40)];
}

- (id)fetchItemWithID:(id)d itemType:(Class)type groupName:(id)name properties:(id)properties completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  propertiesCopy = properties;
  handlerCopy = handler;
  nameCopy = name;
  if (([(objc_class *)type conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitItemRequest.m" lineNumber:223 description:@"Item type must conform to WFCloudKitItem protocol"];
  }

  v17 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    recordName = [dCopy recordName];
    *buf = 136315394;
    v45 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]";
    v46 = 2112;
    v47 = recordName;
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Fetching record with ID: %@", buf, 0x16u);
  }

  v19 = objc_alloc_init(MEMORY[0x1E695BA08]);
  [v19 setName:nameCopy];

  v20 = objc_opt_new();
  v21 = objc_alloc(MEMORY[0x1E695B938]);
  v43 = dCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v23 = [v21 initWithRecordIDs:v22];

  xpcActivity = [(WFCloudKitItemRequest *)self xpcActivity];
  configuration = [v23 configuration];
  [configuration setXpcActivity:xpcActivity];

  if (![(WFCloudKitItemRequest *)self performExpensiveFetchOperations])
  {
    v26 = [objc_opt_class() desiredKeysFromProperties:propertiesCopy itemType:type];
    [v23 setDesiredKeys:v26];
  }

  [v23 setGroup:v19];
  [v20 setCloudOperation:v23];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke;
  v36[3] = &unk_1E83797D8;
  v27 = v20;
  v37 = v27;
  selfCopy = self;
  v41 = handlerCopy;
  typeCopy = type;
  v39 = dCopy;
  v40 = v19;
  v28 = v19;
  v29 = dCopy;
  v30 = handlerCopy;
  [v23 setFetchRecordsCompletionBlock:v36];
  database = [(WFCloudKitItemRequest *)self database];
  [database addOperation:v23];

  v32 = v40;
  v33 = v27;

  return v27;
}

void __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([a1[4] isCancelled])
  {
    v7 = a1[8];
    v8 = [a1[5] createTaskCancelledError];
    v7[2](v7, 0, v8);
  }

  else
  {
    v9 = [v5 allValues];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 recordType];
      v12 = [a1[9] recordType];
      isEqualToString = objc_msgSend_isEqualToString_(v11);

      if (isEqualToString)
      {
        v14 = objc_alloc_init(a1[9]);
        v15 = [[WFCloudKitItemRecord alloc] initWithRecord:v10 item:v14];
        v16 = [a1[5] operationWaitingQueue];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_287;
        v26[3] = &unk_1E8379788;
        v17 = a1[4];
        v18 = a1[5];
        v27 = v17;
        v28 = v18;
        v29 = v15;
        v30 = a1[7];
        v19 = a1[8];
        v31 = v14;
        v32 = v19;
        v20 = v14;
        v21 = v15;
        dispatch_async(v16, v26);
      }

      else
      {
        v22 = getWFCloudKitLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v23 = [a1[6] recordName];
          v24 = [v10 recordType];
          v25 = [a1[9] recordType];
          *buf = 136315906;
          v34 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]_block_invoke";
          v35 = 2114;
          v36 = v23;
          v37 = 2114;
          v38 = v24;
          v39 = 2114;
          v40 = v25;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Record with identifier %{public}@ is type %{public}@, instead of %{public}@", buf, 0x2Au);
        }

        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitErrorDomain" code:1 userInfo:0];
        (*(a1[8] + 2))();
      }
    }

    else
    {
      (*(a1[8] + 2))();
    }
  }
}

void __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_287(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) operationQueue];
  v3 = [WFCloudKitResolveReferencesOperation alloc];
  v4 = *(a1 + 40);
  v17[0] = *(a1 + 48);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v6 = [(WFCloudKitResolveReferencesOperation *)v3 initWithRequest:v4 records:v5 operationGroup:*(a1 + 56) task:*(a1 + 32)];
  [v2 addOperation:v6];

  v7 = [*(a1 + 32) operationQueue];
  [v7 waitUntilAllOperationsAreFinished];

  v8 = [*(a1 + 40) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_2;
  block[3] = &unk_1E837F510;
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = *(a1 + 40);
  v13 = v11;
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = v10;
  v15 = v13;
  v16 = v12;
  dispatch_async(v8, block);
}

void __89__WFCloudKitItemRequest_fetchItemWithID_itemType_groupName_properties_completionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 56);
    v10 = [*(a1 + 40) createTaskCancelledError];
    (*(v2 + 16))(v2, 0);
  }

  else
  {
    v3 = [*(a1 + 32) error];

    v4 = getWFCloudKitLogObject();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) error];
        *buf = 136315394;
        v12 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]_block_invoke_2";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Record fetch and resolve operations encountered error: %{public}@", buf, 0x16u);
      }

      v7 = *(a1 + 56);
      v8 = [*(a1 + 32) error];
      (*(v7 + 16))(v7, 0, v8);
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 48);
        *buf = 136315394;
        v12 = "[WFCloudKitItemRequest fetchItemWithID:itemType:groupName:properties:completionHandler:]_block_invoke";
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Record fetch and resolve operations completed. Item: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

- (id)fetchItemsWithPredicate:(id)predicate itemType:(Class)type groupName:(id)name properties:(id)properties sortDescriptors:(id)descriptors resultsLimit:(unint64_t)limit qualityOfService:(int64_t)service completionHandler:(id)self0
{
  v74 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  propertiesCopy = properties;
  handlerCopy = handler;
  descriptorsCopy = descriptors;
  nameCopy = name;
  if (([(objc_class *)type conformsToProtocol:&unk_1F4AB1E68]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitItemRequest.m" lineNumber:152 description:@"Item type must conform to WFCloudKitItem protocol"];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v19 = getWFGalleryLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v67 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]";
    v68 = 2114;
    v69 = uUID;
    _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_INFO, "%s Starting task with debugging UUID: %{public}@", buf, 0x16u);
  }

  v49 = objc_opt_new();
  v20 = objc_alloc(MEMORY[0x1E695BA30]);
  recordType = [(objc_class *)type recordType];
  v22 = [v20 initWithRecordType:recordType predicate:predicateCopy];

  [v22 setSortDescriptors:descriptorsCopy];
  v23 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    recordType2 = [(objc_class *)type recordType];
    *buf = 136315906;
    v67 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]";
    v68 = 2114;
    v69 = uUID;
    v70 = 2114;
    v71 = recordType2;
    v72 = 2112;
    v73 = predicateCopy;
    _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_INFO, "%s Debugging UUID: %{public}@ Searching records of type %{public}@ with predicate: %@", buf, 0x2Au);
  }

  v25 = objc_alloc_init(MEMORY[0x1E695BA08]);
  [v25 setName:nameCopy];

  defaultConfiguration = [v25 defaultConfiguration];
  [defaultConfiguration setQualityOfService:service];

  xpcActivity = [(WFCloudKitItemRequest *)self xpcActivity];
  defaultConfiguration2 = [v25 defaultConfiguration];
  [defaultConfiguration2 setXpcActivity:xpcActivity];

  v29 = objc_opt_new();
  v30 = objc_opt_new();
  v31 = [objc_alloc(MEMORY[0x1E695BA48]) initWithQuery:v22];
  v32 = v31;
  if (limit)
  {
    [v31 setResultsLimit:?];
  }

  if (![(WFCloudKitItemRequest *)self performExpensiveFetchOperations])
  {
    v33 = [objc_opt_class() desiredKeysFromProperties:propertiesCopy itemType:type];
    [v32 setDesiredKeys:v33];
  }

  [v32 setGroup:v25];
  v34 = objc_alloc(MEMORY[0x1E695BA90]);
  v35 = [v34 initWithZoneName:*MEMORY[0x1E695B800] ownerName:*MEMORY[0x1E695B728]];
  [v32 setZoneID:v35];

  [v49 setCloudOperation:v32];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke;
  v62[3] = &unk_1E8379760;
  typeCopy = type;
  v36 = v29;
  v63 = v36;
  v37 = v30;
  v64 = v37;
  [v32 setRecordFetchedBlock:v62];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2;
  v54[3] = &unk_1E83797B0;
  v38 = v49;
  v55 = v38;
  v56 = uUID;
  v60 = v37;
  v61 = handlerCopy;
  selfCopy = self;
  v58 = v36;
  v59 = v25;
  v39 = v37;
  v40 = v25;
  v41 = v36;
  v42 = handlerCopy;
  v43 = uUID;
  [v32 setQueryCompletionBlock:v54];
  database = [(WFCloudKitItemRequest *)self database];
  [database addOperation:v32];

  v45 = v60;
  v46 = v38;

  return v38;
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v6 = objc_alloc_init(v3);
  v5 = [[WFCloudKitItemRecord alloc] initWithRecord:v4 item:v6];

  [*(a1 + 32) addObject:v5];
  [*(a1 + 40) addObject:v6];
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    goto LABEL_2;
  }

  v9 = [v4 domain];
  if ((objc_msgSend_isEqualToString_(v9) & 1) == 0)
  {

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v13 = [*(a1 + 48) operationWaitingQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_280;
    v17[3] = &unk_1E8379788;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = *(a1 + 64);
    v23 = *(a1 + 80);
    v22 = *(a1 + 72);
    dispatch_async(v13, v17);

    goto LABEL_13;
  }

  v10 = [v4 code];

  if (v10 == 20)
  {
LABEL_2:
    v5 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v25 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]_block_invoke_2";
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Debugging UUID: %{public}@ cancelled task", buf, 0x16u);
    }

    v7 = *(a1 + 80);
    v8 = [*(a1 + 48) createTaskCancelledError];
    (*(v7 + 16))(v7, 0, v8);

    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v11 = getWFCloudKitLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 40);
    *buf = 136315650;
    v25 = "[WFCloudKitItemRequest fetchItemsWithPredicate:itemType:groupName:properties:sortDescriptors:resultsLimit:qualityOfService:completionHandler:]_block_invoke";
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v4;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Debugging UUID: %{public}@ Unable to complete predicate query: %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 80) + 16))();
LABEL_13:
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_280(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  v3 = [[WFCloudKitResolveReferencesOperation alloc] initWithRequest:*(a1 + 40) records:*(a1 + 48) operationGroup:*(a1 + 56) task:*(a1 + 32)];
  [v2 addOperation:v3];

  v4 = [*(a1 + 32) operationQueue];
  [v4 waitUntilAllOperationsAreFinished];

  v5 = [*(a1 + 40) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2_282;
  block[3] = &unk_1E837F510;
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = *(a1 + 40);
  v10 = v8;
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = v7;
  v12 = v10;
  v13 = v9;
  dispatch_async(v5, block);
}

void __143__WFCloudKitItemRequest_fetchItemsWithPredicate_itemType_groupName_properties_sortDescriptors_resultsLimit_qualityOfService_completionHandler___block_invoke_2_282(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(a1 + 56);
    v10 = [*(a1 + 40) createTaskCancelledError];
    (*(v2 + 16))(v2, 0, v10);
    v3 = v10;
LABEL_5:

    return;
  }

  v4 = [*(a1 + 32) error];

  v5 = *(a1 + 56);
  if (v4)
  {
    v9 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, 0, v9);
    v3 = v9;
    goto LABEL_5;
  }

  v6 = *(a1 + 48);
  v7 = *(v5 + 16);
  v8 = *(a1 + 56);

  v7(v8, v6, 0);
}

- (WFCloudKitItemRequest)initWithContainer:(id)container database:(id)database
{
  containerCopy = container;
  databaseCopy = database;
  v19.receiver = self;
  v19.super_class = WFCloudKitItemRequest;
  v9 = [(WFCloudKitItemRequest *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, container);
    objc_storeStrong(&v10->_database, database);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.shortcuts.WFCloutKitItemRequest-operation", v11);
    operationWaitingQueue = v10->_operationWaitingQueue;
    v10->_operationWaitingQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.shortcuts.WFCloudKitItemRequest-callback", v14);
    callbackQueue = v10->_callbackQueue;
    v10->_callbackQueue = v15;

    v17 = v10;
  }

  return v10;
}

+ (id)recordValueForItemValue:(id)value item:(id)item property:(id)property recordKey:(id)key zoneID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  itemCopy = item;
  keyCopy = key;
  type = [property type];
  if (type > 2)
  {
    if (type == 3)
    {
      v23 = valueCopy;
      v16 = v23;
      if (v23 && [v23 conformsToProtocol:&unk_1F4AB1E68])
      {
        if (objc_opt_respondsToSelector())
        {
          v24 = [itemCopy referenceActionForKey:keyCopy];
        }

        else
        {
          v24 = 0;
        }

        v26 = objc_alloc(MEMORY[0x1E695BAB0]);
        identifier = [v16 identifier];
        v7 = [v26 initWithRecordID:identifier action:v24];

        goto LABEL_26;
      }
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_27;
      }

      v15 = objc_opt_class();
      v16 = WFEnforceClass_1501(valueCopy, v15);
      if (v16)
      {
        if (objc_opt_respondsToSelector())
        {
          v17 = [itemCopy referenceActionForKey:keyCopy];
        }

        else
        {
          v17 = 0;
        }

        v7 = [objc_alloc(MEMORY[0x1E695BAB0]) initWithRecordID:v16 action:v17];
        goto LABEL_26;
      }
    }

LABEL_17:
    v7 = 0;
LABEL_26:

    goto LABEL_27;
  }

  if (type < 2)
  {
    v7 = valueCopy;
    goto LABEL_27;
  }

  if (type == 2)
  {
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(valueCopy, v18);
    v16 = v19;
    if (v19)
    {
      fileURL = [v19 fileURL];
      if (fileURL)
      {
        v21 = objc_alloc(MEMORY[0x1E695B878]);
        fileURL2 = [v16 fileURL];
        v7 = [v21 initWithFileURL:fileURL2];
      }

      else
      {
        v25 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v29 = 136315138;
          v30 = "+[WFCloudKitItemRequest recordValueForItemValue:item:property:recordKey:zoneID:]";
          _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s Could not get URL for file.", &v29, 0xCu);
        }

        v7 = 0;
      }

      goto LABEL_26;
    }

    goto LABEL_17;
  }

LABEL_27:

  return v7;
}

+ (id)itemValueForRecordValue:(id)value item:(id)item property:(id)property resolvedReferences:(id)references
{
  valueCopy = value;
  propertyCopy = property;
  referencesCopy = references;
  type = [propertyCopy type];
  if (type > 1)
  {
    switch(type)
    {
      case 4:
        v20 = objc_opt_class();
        v21 = WFEnforceClass_1501(valueCopy, v20);
        v15 = v21;
        if (v21)
        {
          recordID = [v21 recordID];
LABEL_16:

          goto LABEL_20;
        }

        break;
      case 3:
        v22 = objc_opt_class();
        v23 = WFEnforceClass_1501(valueCopy, v22);
        v15 = v23;
        if (v23)
        {
          recordID2 = [v23 recordID];
          fileType = [referencesCopy objectForKeyedSubscript:recordID2];
          item = [fileType item];
          goto LABEL_14;
        }

        break;
      case 2:
        v13 = objc_opt_class();
        v14 = WFEnforceClass_1501(valueCopy, v13);
        v15 = v14;
        if (v14)
        {
          v16 = MEMORY[0x1E6996E20];
          recordID2 = [v14 fileURL];
          fileType = [propertyCopy fileType];
          item = [v16 fileWithURL:recordID2 options:5 ofType:fileType];
LABEL_14:
          recordID = item;

          goto LABEL_16;
        }

        break;
      default:
        goto LABEL_20;
    }

    recordID = 0;
    goto LABEL_16;
  }

  if (!type)
  {
    if (!valueCopy)
    {
      nilValue = [propertyCopy nilValue];
      goto LABEL_19;
    }

LABEL_18:
    nilValue = valueCopy;
LABEL_19:
    recordID = nilValue;
    goto LABEL_20;
  }

  if (type == 1)
  {
    goto LABEL_18;
  }

LABEL_20:

  return recordID;
}

+ (id)createRecordFromItem:(id)item zoneID:(id)d
{
  v43 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dCopy = d;
  v8 = objc_opt_class();
  recordType = [v8 recordType];
  properties = [v8 properties];
  if (objc_opt_respondsToSelector())
  {
    ensureFileAssets = [itemCopy ensureFileAssets];
  }

  if (objc_opt_respondsToSelector())
  {
    recordSystemFieldsData = [itemCopy recordSystemFieldsData];

    if (recordSystemFieldsData)
    {
      recordSystemFieldsData2 = [itemCopy recordSystemFieldsData];
      v14 = [WFCloudKitItemRequest recordFromSystemFieldsData:recordSystemFieldsData2 error:0];

      if (v14)
      {
        recordID = [v14 recordID];
        identifier = [itemCopy identifier];
        v17 = [recordID isEqual:identifier];

        if (v17)
        {
          goto LABEL_16;
        }

        v18 = getWFCloudKitLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          identifier2 = [itemCopy identifier];
          recordID2 = [v14 recordID];
          *buf = 136315650;
          v38 = "+[WFCloudKitItemRequest createRecordFromItem:zoneID:]";
          v39 = 2114;
          v40 = identifier2;
          v41 = 2114;
          v42 = recordID2;
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s CKRecord created from serialized data has different identifier than the WFCloudKitItem it was created for: WFCloudKitItem's is %{public}@, CKRecord's is %{public}@. Creating CKRecord from scratch", buf, 0x20u);
        }
      }
    }
  }

  identifier3 = [itemCopy identifier];

  if (identifier3)
  {
    v22 = objc_alloc(MEMORY[0x1E695BA60]);
    identifier4 = [itemCopy identifier];
    v14 = [v22 initWithRecordType:recordType recordID:identifier4];
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E695BA60]);
    if (dCopy)
    {
      v25 = [v24 initWithRecordType:recordType zoneID:dCopy];
    }

    else
    {
      v25 = [v24 initWithRecordType:recordType];
    }

    v14 = v25;
  }

LABEL_16:
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __53__WFCloudKitItemRequest_createRecordFromItem_zoneID___block_invoke;
  v32[3] = &unk_1E8379990;
  selfCopy = self;
  v33 = itemCopy;
  v34 = dCopy;
  v26 = v14;
  v35 = v26;
  v27 = dCopy;
  v28 = itemCopy;
  [properties enumerateKeysAndObjectsUsingBlock:v32];
  v29 = v35;
  v30 = v26;

  return v26;
}

void __53__WFCloudKitItemRequest_createRecordFromItem_zoneID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 hasConstantValue])
  {
    v7 = [v6 constantValue];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v6 name];
    v7 = [v8 valueForKey:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__WFCloudKitItemRequest_createRecordFromItem_zoneID___block_invoke_2;
    v14[3] = &unk_1E8379968;
    v19 = *(a1 + 56);
    v15 = *(a1 + 32);
    v16 = v6;
    v17 = v5;
    v18 = *(a1 + 40);
    v10 = [v7 if_compactMap:v14];
  }

  else if (v7)
  {
    v10 = [*(a1 + 56) recordValueForItemValue:v7 item:*(a1 + 32) property:v6 recordKey:v5 zoneID:*(a1 + 40)];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 isEncrypted];
  v12 = *(a1 + 48);
  if (v11)
  {
    v13 = [v12 encryptedValues];
    [v13 setObject:v10 forKey:v5];
  }

  else
  {
    [v12 setObject:v10 forKey:v5];
  }
}

+ (id)createRecordIDWithName:(id)name zoneID:(id)d
{
  dCopy = d;
  v6 = MEMORY[0x1E695BA70];
  nameCopy = name;
  v8 = [v6 alloc];
  if (dCopy)
  {
    v9 = [v8 initWithRecordName:nameCopy zoneID:dCopy];
  }

  else
  {
    v9 = [v8 initWithRecordName:nameCopy];
  }

  v10 = v9;

  return v10;
}

+ (void)assignRecordValue:(id)value toItem:(id)item withProperty:(id)property resolvedReferences:(id)references
{
  itemCopy = item;
  propertyCopy = property;
  referencesCopy = references;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__WFCloudKitItemRequest_assignRecordValue_toItem_withProperty_resolvedReferences___block_invoke;
    v19[3] = &unk_1E8379940;
    selfCopy = self;
    v20 = itemCopy;
    v21 = propertyCopy;
    v22 = referencesCopy;
    v14 = [valueCopy if_compactMap:v19];

    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = [self itemValueForRecordValue:valueCopy item:itemCopy property:propertyCopy resolvedReferences:referencesCopy];

  if (v14)
  {
LABEL_5:
    v15 = itemCopy;
    name = [propertyCopy name];
    [v15 willChangeValueForKey:name];

    name2 = [propertyCopy name];
    [v15 setValue:v14 forKey:name2];

    name3 = [propertyCopy name];
    [v15 didChangeValueForKey:name3];
  }

LABEL_6:
}

+ (void)hydrateItem:(id)item withRecord:(id)record resolvedReferences:(id)references setNilValues:(BOOL)values
{
  itemCopy = item;
  recordCopy = record;
  referencesCopy = references;
  properties = [objc_opt_class() properties];
  recordID = [recordCopy recordID];
  [itemCopy setValue:recordID forKey:@"identifier"];

  if (objc_opt_respondsToSelector())
  {
    creationDate = [recordCopy creationDate];
    modificationDate = [recordCopy modificationDate];
    creatorUserRecordID = [recordCopy creatorUserRecordID];
    recordName = [creatorUserRecordID recordName];
    [itemCopy setCreatedAt:creationDate modifiedAt:modificationDate createdBy:recordName];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [WFCloudKitItemRequest systemFieldsDataFromRecord:recordCopy error:0];
    [itemCopy setRecordSystemFieldsData:v19];
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__WFCloudKitItemRequest_hydrateItem_withRecord_resolvedReferences_setNilValues___block_invoke;
  v23[3] = &unk_1E8379918;
  valuesCopy = values;
  v24 = recordCopy;
  v25 = itemCopy;
  v26 = referencesCopy;
  selfCopy = self;
  v20 = referencesCopy;
  v21 = itemCopy;
  v22 = recordCopy;
  [properties enumerateKeysAndObjectsUsingBlock:v23];
}

void __80__WFCloudKitItemRequest_hydrateItem_withRecord_resolvedReferences_setNilValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 isEncrypted];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 encryptedValues];
    v9 = [v8 objectForKey:v10];

    if (!v9)
    {
LABEL_5:
      if (*(a1 + 64) != 1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = [v7 objectForKey:v10];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 56) assignRecordValue:v9 toItem:*(a1 + 40) withProperty:v5 resolvedReferences:*(a1 + 48)];
LABEL_7:
}

+ (id)desiredKeysFromProperties:(id)properties itemType:(Class)type
{
  propertiesCopy = properties;
  v6 = objc_opt_new();
  v7 = v6;
  if (propertiesCopy)
  {
    [v6 setArray:propertiesCopy];
  }

  else
  {
    properties = [(objc_class *)type properties];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__WFCloudKitItemRequest_desiredKeysFromProperties_itemType___block_invoke;
    v10[3] = &unk_1E83798F0;
    v11 = v7;
    [properties enumerateKeysAndObjectsUsingBlock:v10];
  }

  return v7;
}

void __60__WFCloudKitItemRequest_desiredKeysFromProperties_itemType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isIgnoredByDefault] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

+ (id)recordFromSystemFieldsData:(id)data error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v13 = 0;
  v7 = [[v5 alloc] initForReadingFromData:dataCopy error:&v13];

  v8 = v13;
  [v7 setRequiresSecureCoding:1];
  v9 = [objc_alloc(MEMORY[0x1E695BA60]) initWithCoder:v7];
  [v7 finishDecoding];
  if (!v9)
  {
    v10 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "+[WFCloudKitItemRequest recordFromSystemFieldsData:error:]";
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to decode record from system fields data: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v11 = v8;
      *error = v8;
    }
  }

  return v9;
}

+ (id)systemFieldsDataFromRecord:(id)record error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACC8];
  recordCopy = record;
  v7 = [[v5 alloc] initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v7];

  [v7 finishEncoding];
  encodedData = [v7 encodedData];
  error = [v7 error];
  if (!encodedData)
  {
    v10 = getWFCloudKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "+[WFCloudKitItemRequest systemFieldsDataFromRecord:error:]";
      v15 = 2114;
      v16 = error;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to encode system fields data from record: %{public}@", &v13, 0x16u);
    }

    if (error)
    {
      v11 = error;
      *error = error;
    }
  }

  return encodedData;
}

@end