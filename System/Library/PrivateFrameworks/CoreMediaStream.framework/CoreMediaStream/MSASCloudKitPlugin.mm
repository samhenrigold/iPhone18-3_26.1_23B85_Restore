@interface MSASCloudKitPlugin
+ (id)_decryptedObjectForRecord:(id)record forKey:(id)key validateClass:(Class)class;
+ (id)fetchMigrationCtag;
+ (void)_fetchRecordWithRecordID:(id)d zoneName:(id)name fieldName:(id)fieldName ownerUserID:(id)iD isOwned:(BOOL)owned completionHandler:(id)handler;
+ (void)fetchClientOrgKeyForRecordID:(id)d zoneName:(id)name fieldName:(id)fieldName ownerUserID:(id)iD isOwned:(BOOL)owned completionHandler:(id)handler;
@end

@implementation MSASCloudKitPlugin

+ (id)_decryptedObjectForRecord:(id)record forKey:(id)key validateClass:(Class)class
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  keyCopy = key;
  encryptedValues = [recordCopy encryptedValues];
  v10 = [encryptedValues objectForKeyedSubscript:keyCopy];

  if (!v10 && ([recordCopy objectForKeyedSubscript:keyCopy], (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
    v10 = v11;
LABEL_5:
    v12 = v11;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
    {
      v11 = [v10 base64EncodedStringWithOptions:0];
      goto LABEL_5;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    recordType = [recordCopy recordType];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v18 = 138543874;
    v19 = recordType;
    v20 = 2114;
    v21 = recordName;
    v22 = 2114;
    v23 = objc_opt_class();
    v17 = v23;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected object instead of encrypted data for %{public}@.%{public}@: %{public}@", &v18, 0x20u);
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (void)_fetchRecordWithRecordID:(id)d zoneName:(id)name fieldName:(id)fieldName ownerUserID:(id)iD isOwned:(BOOL)owned completionHandler:(id)handler
{
  ownedCopy = owned;
  v52[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  fieldNameCopy = fieldName;
  iDCopy = iD;
  handlerCopy = handler;
  v29 = iDCopy;
  v30 = nameCopy;
  v17 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:nameCopy ownerName:iDCopy];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2001;
  v47 = __Block_byref_object_dispose__2002;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2001;
  v41 = __Block_byref_object_dispose__2002;
  v42 = 0;
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:dCopy zoneID:v17];
    v28 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.icloud-photos.fdb" environment:1];
    v19 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v19 setApplicationBundleIdentifierOverrideForContainerAccess:@"com.apple.photos.cloud"];
    [v19 setApplicationBundleIdentifierOverrideForNetworkAttribution:@"com.apple.photos.cloud"];
    [v19 setApplicationBundleIdentifierOverrideForPushTopicGeneration:@"com.apple.sharedstreams"];
    v20 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v28 options:v19];
    v21 = objc_alloc_init(MEMORY[0x277CBC4F0]);
    [v21 setContainer:v20];
    v22 = objc_alloc(MEMORY[0x277CBC3E0]);
    v52[0] = v18;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    v24 = [v22 initWithRecordIDs:v23];

    [v24 setConfiguration:v21];
    v51 = fieldNameCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [v24 setDesiredKeys:v25];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __104__MSASCloudKitPlugin__fetchRecordWithRecordID_zoneName_fieldName_ownerUserID_isOwned_completionHandler___block_invoke;
    v32[3] = &unk_278E908D0;
    v35 = &v37;
    v36 = &v43;
    v26 = v18;
    v33 = v26;
    v34 = dCopy;
    [v24 setFetchRecordsCompletionBlock:v32];
    if (ownedCopy)
    {
      [v20 privateCloudDatabase];
    }

    else
    {
      [v20 sharedCloudDatabase];
    }
    v27 = ;
    [v27 addOperation:v24];
    [v24 waitUntilFinished];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v50 = v30;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid zoneID for zoneName: %@", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, v44[5], v38[5]);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
}

void __104__MSASCloudKitPlugin__fetchRecordWithRecordID_zoneName_fieldName_ownerUserID_isOwned_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if (v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v14 = 138412290;
    v15 = v6;
    v12 = MEMORY[0x277D86220];
    v13 = "Failed to fetch userRecord: %@";
LABEL_10:
    _os_log_error_impl(&dword_245B99000, v12, OS_LOG_TYPE_ERROR, v13, &v14, 0xCu);
    goto LABEL_3;
  }

  v7 = [v5 objectForKey:a1[4]];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[7] + 8) + 40);
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v11 = a1[5];
    v14 = 138412290;
    v15 = v11;
    v12 = MEMORY[0x277D86220];
    v13 = "No valid userRecord for recordID: %@";
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched userRecord: %@", &v14, 0xCu);
  }

LABEL_3:
}

+ (id)fetchMigrationCtag
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[MSProtocolUtilities currentOwnerCKUserID];
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__2001;
    v10 = __Block_byref_object_dispose__2002;
    v11 = 0;
    [self _fetchRecordWithRecordID:@"DBRMetadata" zoneName:@"SharedAlbumsInfo" fieldName:? ownerUserID:? isOwned:? completionHandler:?];
    v4 = v7[5];

    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __40__MSASCloudKitPlugin_fetchMigrationCtag__block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 _decryptedObjectForRecord:v5 forKey:v4 validateClass:objc_opt_class()];

  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

+ (void)fetchClientOrgKeyForRecordID:(id)d zoneName:(id)name fieldName:(id)fieldName ownerUserID:(id)iD isOwned:(BOOL)owned completionHandler:(id)handler
{
  ownedCopy = owned;
  dCopy = d;
  nameCopy = name;
  fieldNameCopy = fieldName;
  iDCopy = iD;
  handlerCopy = handler;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__MSASCloudKitPlugin_fetchClientOrgKeyForRecordID_zoneName_fieldName_ownerUserID_isOwned_completionHandler___block_invoke;
  v21[3] = &unk_278E90880;
  v23 = handlerCopy;
  selfCopy = self;
  v22 = fieldNameCopy;
  v19 = handlerCopy;
  v20 = fieldNameCopy;
  [self _fetchRecordWithRecordID:dCopy zoneName:nameCopy fieldName:v20 ownerUserID:iDCopy isOwned:ownedCopy completionHandler:v21];
}

void __108__MSASCloudKitPlugin_fetchClientOrgKeyForRecordID_zoneName_fieldName_ownerUserID_isOwned_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = a2;
  v9 = [v5 _decryptedObjectForRecord:v8 forKey:v6 validateClass:objc_opt_class()];

  (*(a1[5] + 16))();
}

@end