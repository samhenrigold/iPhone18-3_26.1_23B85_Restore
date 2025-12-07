@interface UARPiCloudManager
- (BOOL)fetchVerificationCertificateInContainer:(id)container;
- (BOOL)handleRemoteFetchRequestForCHIPAccessoriesMetadata:(id)metadata batchRequest:(BOOL)request;
- (BOOL)handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:(id *)metadata productGroup:(id)group batchRequest:(BOOL)request;
- (BOOL)processCHIPAccessoriesRecord:(id)record;
- (BOOL)processCHIPAttestationCertificateRecord:(id)record subjectKeyIdentifier:(id)identifier;
- (BOOL)validateCHIPFirmwareRecord:(id)record inContainer:(id)container forAccessory:(id)accessory;
- (BOOL)validateSignatureForUARPAccessoryRecord:(id)record inContainer:(id)container;
- (UARPiCloudManager)initWithDelegate:(id)delegate containerID:(id)d;
- (__SecKey)copyPublicKeyForVerificationCertificateData:(id)data policy:(__SecPolicy *)policy;
- (__SecKey)copyPublicKeyFromCertificateID:(id)d;
- (id)calculateDigestFromCHIPAccessoryCKRecord:(id)record;
- (id)calculateDigestFromCHIPAttestationCertificateRecord:(id)record;
- (id)calculateDigestFromUARPAccessoryRecord:(id)record;
- (id)filterInterestedZonesInContainer:(id)container forAccessories:(id)accessories;
- (int64_t)fetchRemoteDatabaseChangesInContainer:(id)container completion:(id)completion;
- (void)fetchZoneChangesInContainer:(id)container forAccessories:(id)accessories;
- (void)handleRemoteFetchRequestForCHIPAttestationCertificates:(id)certificates;
- (void)handleRemoteFetchRequestSyncForCHIPAttestationCertificates:(id *)certificates subjectKeyIdentifier:(id)identifier;
- (void)performRemoteFetchForAccessories:(id)accessories;
- (void)performRemoteFetchForAttestationCertificates:(id)certificates;
- (void)performRemoteFetchForCHIPVerificationCertificateSync;
- (void)performRemoteFetchForSupportedAccessoriesMetadata:(id)metadata batchRequest:(BOOL)request;
- (void)performRemoteFetchForSupportedAccessoriesMetadataInZone:(id)zone;
- (void)processCHIPAccessoriesRecords:(id)records isComplete:(BOOL)complete productGroup:(id)group;
- (void)processCHIPAttestationCertificateRecords:(id)records subjectKeyIdentifier:(id)identifier;
- (void)processCHIPFirmwareRecord:(id)record inContainer:(id)container forAccessory:(id)accessory;
- (void)processCKRecord:(id)record inContainer:(id)container forAccessory:(id)accessory;
- (void)processRecordsInContainer:(id)container forAccessory:(id)accessory;
- (void)processUpdatedRecordsInContainer:(id)container forAccessories:(id)accessories;
- (void)processVerificationCertificateRecord:(id)record forContainer:(id)container;
- (void)qHandleRemoteFetchRequestForAccessories:(id)accessories;
@end

@implementation UARPiCloudManager

- (BOOL)handleRemoteFetchRequestForCHIPAccessoriesMetadata:(id)metadata batchRequest:(BOOL)request
{
  requestCopy = request;
  metadataCopy = metadata;
  v7 = objc_autoreleasePoolPush();
  container = [(UARPiCloudManager *)self container];
  verificationCertificates = [container verificationCertificates];

  if (verificationCertificates || (-[UARPiCloudManager performRemoteFetchForCHIPVerificationCertificateSync](self, "performRemoteFetchForCHIPVerificationCertificateSync"), -[UARPiCloudManager container](self, "container"), v10 = objc_claimAutoreleasedReturnValue(), [v10 verificationCertificates], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v15 = 0;
    v12 = [(UARPiCloudManager *)self handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:&v15 productGroup:metadataCopy batchRequest:requestCopy];
    v13 = v15;
    [(UARPiCloudManager *)self processCHIPAccessoriesRecords:v13 isComplete:v12 productGroup:metadataCopy];
  }

  else
  {
    LOBYTE(v12) = 1;
    [(UARPiCloudManager *)self processCHIPAccessoriesRecords:0 isComplete:1 productGroup:metadataCopy];
  }

  objc_autoreleasePoolPop(v7);

  return v12;
}

- (BOOL)handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:(id *)metadata productGroup:(id)group batchRequest:(BOOL)request
{
  requestCopy = request;
  v47[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 1;
  v8 = [(UARPiCloudManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    container = [(UARPiCloudManager *)self container];
    containerID = [container containerID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = containerID;
    _os_log_impl(&dword_2701F5000, v8, OS_LOG_TYPE_DEFAULT, "Fetching CHIPAccessories Record for Container:%@", &buf, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277CBC600]);
  v12 = [v11 initWithZoneName:@"chipAccessories" ownerName:*MEMORY[0x277CBBF20]];
  v13 = objc_alloc(MEMORY[0x277CBC3B0]);
  v47[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  v15 = [v13 initWithRecordZoneIDs:v14 configurationsByRecordZoneID:0];

  [v15 setFetchAllChanges:!requestCopy];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  if (requestCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17 = objc_alloc_init(MEMORY[0x277CBC3A8]);
    container2 = [(UARPiCloudManager *)self container];
    databaseChangeToken = [container2 databaseChangeToken];
    [v17 setPreviousServerChangeToken:databaseChangeToken];

    [dictionary setObject:v17 forKey:v12];
    [v15 setConfigurationsByRecordZoneID:dictionary];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __108__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata_productGroup_batchRequest___block_invoke;
  v35[3] = &unk_279DFCED0;
  v35[4] = self;
  v20 = groupCopy;
  v36 = v20;
  p_buf = &buf;
  [v15 setRecordChangedBlock:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __108__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata_productGroup_batchRequest___block_invoke_14;
  v33[3] = &unk_279DFCEF8;
  v34 = requestCopy;
  v33[4] = self;
  v33[5] = &v38;
  [v15 setRecordZoneFetchCompletionBlock:v33];
  v21 = dispatch_semaphore_create(0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __108__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata_productGroup_batchRequest___block_invoke_18;
  v31[3] = &unk_279DFCF20;
  v31[4] = self;
  v22 = v21;
  v32 = v22;
  [v15 setFetchRecordZoneChangesCompletionBlock:v31];
  container3 = [(UARPiCloudManager *)self container];
  database = [container3 database];
  [database addOperation:v15];

  v25 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v22, v25))
  {
    v26 = [(UARPiCloudManager *)self log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:productGroup:batchRequest:];
    }

    *metadata = 0;
    container4 = [(UARPiCloudManager *)self container];
    [container4 setDatabaseChangeToken:0];

    [v15 cancel];
    v28 = 1;
  }

  else
  {
    *metadata = *(*(&buf + 1) + 40);
    v28 = *(v39 + 24);
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v38, 8);

  return v28 & 1;
}

void __108__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata_productGroup_batchRequest___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:productGroup:batchRequest:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2701F5000, v4, OS_LOG_TYPE_DEFAULT, "%s: Record Changed: %@", &v19, 0x16u);
  }

  v5 = [v3 recordType];
  v6 = [v5 isEqualToString:@"CHIPAccessory"];

  if (v6)
  {
    v7 = [v3 recordID];
    v8 = [v7 recordName];
    v9 = [v8 componentsSeparatedByString:@"-"];
    v10 = [v9 firstObject];

    v11 = *(a1 + 40);
    if (!v11 || [v11 isEqualToString:v10])
    {
      if ([*(a1 + 32) processCHIPAccessoriesRecord:v3])
      {
        v12 = [[CHIPAccessoriesRecord alloc] initWithCKRecord:v3];
        if (v12)
        {
          v13 = *(*(*(a1 + 48) + 8) + 40);
          if (!v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v15 = *(*(a1 + 48) + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = v14;

            v13 = *(*(*(a1 + 48) + 8) + 40);
          }

          [v13 addObject:v12];
        }
      }

      else
      {
        v12 = [*(a1 + 32) log];
        if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v3 recordID];
          v18 = [v17 recordName];
          v19 = 136315394;
          v20 = "[UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:productGroup:batchRequest:]_block_invoke";
          v21 = 2112;
          v22 = v18;
          _os_log_impl(&dword_2701F5000, &v12->super, OS_LOG_TYPE_DEFAULT, "%s: Invalid CHIPAccessoryRecord: %@", &v19, 0x16u);
        }
      }
    }
  }

  else
  {
    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:productGroup:batchRequest:]_block_invoke";
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2701F5000, v10, OS_LOG_TYPE_DEFAULT, "%s: Invalid Record type: %@", &v19, 0x16u);
    }
  }
}

void __108__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata_productGroup_batchRequest___block_invoke_14(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = [*(a1 + 32) log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = "NO";
    v17 = 136316162;
    v18 = "[UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:productGroup:batchRequest:]_block_invoke";
    if (a5)
    {
      v14 = "YES";
    }

    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2080;
    v26 = v14;
    _os_log_impl(&dword_2701F5000, v13, OS_LOG_TYPE_INFO, "%s: Record Zone Fetch completed for recordZoneID: %@ changeToken:%@ error: %@ moreComing %s", &v17, 0x34u);
  }

  if (*(a1 + 48) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = a5 ^ 1;
    if ((a5 ^ 1))
    {
      v15 = [*(a1 + 32) container];
      [v15 setDatabaseChangeToken:0];
    }

    else
    {
      v15 = [v11 copy];
      v16 = [*(a1 + 32) container];
      [v16 setDatabaseChangeToken:v15];
    }
  }
}

void __108__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata_productGroup_batchRequest___block_invoke_18(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAccessoriesMetadata:productGroup:batchRequest:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2701F5000, v4, OS_LOG_TYPE_INFO, "%s: Record Zone Fetch completed with error: %@", &v5, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)handleRemoteFetchRequestForCHIPAttestationCertificates:(id)certificates
{
  certificatesCopy = certificates;
  container = [(UARPiCloudManager *)self container];
  verificationCertificates = [container verificationCertificates];

  if (verificationCertificates || (-[UARPiCloudManager performRemoteFetchForCHIPVerificationCertificateSync](self, "performRemoteFetchForCHIPVerificationCertificateSync"), -[UARPiCloudManager container](self, "container"), v7 = objc_claimAutoreleasedReturnValue(), [v7 verificationCertificates], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v10 = 0;
    [(UARPiCloudManager *)self handleRemoteFetchRequestSyncForCHIPAttestationCertificates:&v10 subjectKeyIdentifier:certificatesCopy];
    v9 = v10;
    [(UARPiCloudManager *)self processCHIPAttestationCertificateRecords:v9 subjectKeyIdentifier:certificatesCopy];
  }

  else
  {
    [(UARPiCloudManager *)self processCHIPAttestationCertificateRecords:0 subjectKeyIdentifier:certificatesCopy];
  }
}

- (void)handleRemoteFetchRequestSyncForCHIPAttestationCertificates:(id *)certificates subjectKeyIdentifier:(id)identifier
{
  v32[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [(UARPiCloudManager *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    container = [(UARPiCloudManager *)self container];
    containerID = [container containerID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = containerID;
    _os_log_impl(&dword_2701F5000, v7, OS_LOG_TYPE_DEFAULT, "Fetching CHIPAttestationCertificate Record for Container:%@", &buf, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277CBC600]);
  v11 = [v10 initWithZoneName:@"chipAttestationCertificates" ownerName:*MEMORY[0x277CBBF20]];
  v12 = objc_alloc(MEMORY[0x277CBC3B0]);
  v32[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v14 = [v12 initWithRecordZoneIDs:v13 configurationsByRecordZoneID:0];

  [v14 setFetchAllChanges:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __107__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAttestationCertificates_subjectKeyIdentifier___block_invoke;
  v24[3] = &unk_279DFCED0;
  v24[4] = self;
  v15 = identifierCopy;
  v25 = v15;
  p_buf = &buf;
  [v14 setRecordChangedBlock:v24];
  v16 = dispatch_semaphore_create(0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __107__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAttestationCertificates_subjectKeyIdentifier___block_invoke_24;
  v22[3] = &unk_279DFCF20;
  v22[4] = self;
  v17 = v16;
  v23 = v17;
  [v14 setFetchRecordZoneChangesCompletionBlock:v22];
  container2 = [(UARPiCloudManager *)self container];
  database = [container2 database];
  [database addOperation:v14];

  v20 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v17, v20))
  {
    v21 = [(UARPiCloudManager *)self log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAttestationCertificates:subjectKeyIdentifier:];
    }

    *certificates = 0;
    [v14 cancel];
  }

  else
  {
    *certificates = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);
}

void __107__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAttestationCertificates_subjectKeyIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAttestationCertificates:subjectKeyIdentifier:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2701F5000, v4, OS_LOG_TYPE_DEFAULT, "%s: Record Changed :%@", &v14, 0x16u);
  }

  v5 = *(a1 + 40);
  if (!v5 || ([v3 recordID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "recordName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqualToString:", v7), v7, v6, v8))
  {
    v9 = [[CHIPAttestationCertificateRecord alloc] initWithCKRecord:v3];
    if (v9)
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      if (!v10)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v12 = *(*(a1 + 48) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v10 addObject:v9];
    }
  }
}

void __107__UARPiCloudManager_CHIP__handleRemoteFetchRequestSyncForCHIPAttestationCertificates_subjectKeyIdentifier___block_invoke_24(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[UARPiCloudManager(CHIP) handleRemoteFetchRequestSyncForCHIPAttestationCertificates:subjectKeyIdentifier:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2701F5000, v4, OS_LOG_TYPE_INFO, "%s: Record Zone Fetch completed with error: %@", &v5, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)performRemoteFetchForCHIPVerificationCertificateSync
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(UARPiCloudManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    container = [(UARPiCloudManager *)self container];
    containerID = [container containerID];
    *buf = 138412290;
    v28 = containerID;
    _os_log_impl(&dword_2701F5000, v3, OS_LOG_TYPE_DEFAULT, "Fetching CHIPVerificationCertificate Record for Container:%@", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277CBC600]);
  v7 = [v6 initWithZoneName:@"certificates" ownerName:*MEMORY[0x277CBBF20]];
  v8 = [objc_alloc(MEMORY[0x277CBC5C8]) initWithRecordName:@"certificates" zoneID:v7];
  v9 = objc_alloc(MEMORY[0x277CBC3E8]);
  v26 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v11 = [v9 initWithRecordIDs:v10];

  v12 = dispatch_semaphore_create(0);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __79__UARPiCloudManager_CHIP__performRemoteFetchForCHIPVerificationCertificateSync__block_invoke;
  v22 = &unk_279DFCF48;
  selfCopy = self;
  v13 = v8;
  v24 = v13;
  v14 = v12;
  v25 = v14;
  [v11 setFetchRecordsCompletionBlock:&v19];
  v15 = [(UARPiCloudManager *)self container:v19];
  database = [v15 database];
  [database addOperation:v11];

  v17 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v14, v17))
  {
    v18 = [(UARPiCloudManager *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager(CHIP) performRemoteFetchForCHIPVerificationCertificateSync];
    }

    [v11 cancel];
  }
}

void __79__UARPiCloudManager_CHIP__performRemoteFetchForCHIPVerificationCertificateSync__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[UARPiCloudManager(CHIP) performRemoteFetchForCHIPVerificationCertificateSync]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2701F5000, v7, OS_LOG_TYPE_INFO, "%s: operationError = %@, recordsByRecordID: %@", &v10, 0x20u);
  }

  if (v5 && !v6)
  {
    v8 = [v5 objectForKey:*(a1 + 40)];
    v9 = [*(a1 + 32) container];
    [v9 processVerificationCertificateRecord:v8];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)processCHIPAccessoriesRecords:(id)records isComplete:(BOOL)complete productGroup:(id)group
{
  completeCopy = complete;
  v24 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  groupCopy = group;
  if (recordsCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = recordsCopy;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          accessoryMetadata = [*(*(&v19 + 1) + 8 * v15) accessoryMetadata];
          [v10 addObject:accessoryMetadata];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    delegate = [(UARPiCloudManager *)self delegate];
    [delegate remoteFetchCompletionForSupportedAccessories:v10 productGroup:groupCopy isComplete:completeCopy error:0];
  }

  else if (completeCopy)
  {
    delegate2 = [(UARPiCloudManager *)self delegate];
    [delegate2 remoteFetchCompletionForSupportedAccessories:0 productGroup:groupCopy isComplete:1 error:0];
  }
}

- (BOOL)processCHIPAccessoriesRecord:(id)record
{
  v28 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = [(UARPiCloudManager *)self calculateDigestFromCHIPAccessoryCKRecord:recordCopy];
  v6 = [v5 length];
  v7 = [(UARPiCloudManager *)self log];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_2701F5000, v8, OS_LOG_TYPE_INFO, "CHIPAccessory record digest: %@", buf, 0xCu);
    }

    v8 = [recordCopy objectForKey:@"signatureV2"];
    if (v8 && (v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0]) != 0)
    {
      v10 = v9;
      v11 = [recordCopy objectForKey:@"verificationCertificateKey"];
      if (v11 && (v12 = [(UARPiCloudManager *)self copyPublicKeyFromCertificateID:v11]) != 0)
      {
        v13 = v12;
        v14 = [(UARPiCloudManager *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          *buf = 138412290;
          v27 = recordName;
          _os_log_impl(&dword_2701F5000, v14, OS_LOG_TYPE_DEFAULT, "Validating signature on Record %@", buf, 0xCu);
        }

        error = 0;
        v17 = SecKeyVerifySignature(v13, *MEMORY[0x277CDC2B8], v5, v10, &error);
        v18 = v17 != 0;
        CFRelease(v13);
        v19 = [(UARPiCloudManager *)self log];
        v20 = v19;
        if (v17)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            recordID2 = [recordCopy recordID];
            recordName2 = [recordID2 recordName];
            *buf = 138412290;
            v27 = recordName2;
            _os_log_impl(&dword_2701F5000, v20, OS_LOG_TYPE_DEFAULT, "Stonehenge Signature validation successful for CHIPAccessoryRecord %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [UARPiCloudManager(CHIP) processCHIPAccessoriesRecord:recordCopy];
          }

          CFRelease(error);
        }
      }

      else
      {
        v23 = [(UARPiCloudManager *)self log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [UARPiCloudManager(CHIP) processCHIPAccessoriesRecord:recordCopy];
        }

        v18 = 0;
      }
    }

    else
    {
      v10 = [(UARPiCloudManager *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudManager(CHIP) processCHIPAccessoriesRecord:recordCopy];
      }

      v18 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager(CHIP) processCHIPAccessoriesRecord:recordCopy];
    }

    v18 = 0;
  }

  return v18;
}

- (void)processCHIPAttestationCertificateRecords:(id)records subjectKeyIdentifier:(id)identifier
{
  v47 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  identifierCopy = identifier;
  if (recordsCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = recordsCopy;
    v9 = recordsCopy;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          if (identifierCopy)
          {
            recordName = [*(*(&v41 + 1) + 8 * i) recordName];
            v16 = [identifierCopy isEqualToString:recordName];

            if (!v16)
            {
              continue;
            }
          }

          if ([(UARPiCloudManager *)self processCHIPAttestationCertificateRecord:v14 subjectKeyIdentifier:identifierCopy])
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v11);
    }

    selfCopy = self;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v8;
    v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v37 + 1) + 8 * j);
          rootCertificate = [v22 rootCertificate];
          v24 = [rootCertificate mutableCopy];

          intermediateCertificates = [v22 intermediateCertificates];
          if (intermediateCertificates)
          {
            v26 = intermediateCertificates;
            intermediateCertificates2 = [v22 intermediateCertificates];
            v28 = [intermediateCertificates2 length];

            if (v28)
            {
              intermediateCertificates3 = [v22 intermediateCertificates];
              [v24 appendFormat:@", %@", intermediateCertificates3];
            }
          }

          v30 = [MEMORY[0x277CCACA8] stringWithString:v24];
          recordName2 = [v22 recordName];
          [v17 setObject:v30 forKeyedSubscript:recordName2];
        }

        v19 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v19);
    }

    delegate = [(UARPiCloudManager *)selfCopy delegate];
    [delegate remoteFetchCompletionForAttestationCertificates:v17 subjectKeyIdentifier:identifierCopy error:0];

    recordsCopy = v35;
  }

  else
  {
    delegate2 = [(UARPiCloudManager *)self delegate];
    [delegate2 remoteFetchCompletionForAttestationCertificates:0 subjectKeyIdentifier:identifierCopy error:0];
  }
}

- (BOOL)processCHIPAttestationCertificateRecord:(id)record subjectKeyIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  verificationCertificateID = [recordCopy verificationCertificateID];
  v7 = [(UARPiCloudManager *)self copyPublicKeyFromCertificateID:verificationCertificateID];

  v8 = [(UARPiCloudManager *)self calculateDigestFromCHIPAttestationCertificateRecord:recordCopy];
  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  signature = [recordCopy signature];
  v11 = [v9 initWithBase64EncodedString:signature options:0];

  if (v7)
  {
    v12 = 0;
    if ([(__CFData *)v8 length]&& v11)
    {
      v13 = [(UARPiCloudManager *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        ckRecord = [recordCopy ckRecord];
        recordID = [ckRecord recordID];
        recordName = [recordID recordName];
        *buf = 138412290;
        v24 = recordName;
        _os_log_impl(&dword_2701F5000, v13, OS_LOG_TYPE_DEFAULT, "Validating signature on Record %@", buf, 0xCu);
      }

      error = 0;
      v17 = SecKeyVerifySignature(v7, *MEMORY[0x277CDC2B8], v8, v11, &error);
      v12 = v17 != 0;
      CFRelease(v7);
      v18 = [(UARPiCloudManager *)self log];
      v19 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          ckRecord2 = [recordCopy ckRecord];
          *buf = 138412290;
          v24 = ckRecord2;
          _os_log_impl(&dword_2701F5000, v19, OS_LOG_TYPE_DEFAULT, "Signature validation successful CHIPAttestationCertificateRecord %@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [UARPiCloudManager(CHIP) processCHIPAttestationCertificateRecord:recordCopy subjectKeyIdentifier:?];
        }

        CFRelease(error);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)calculateDigestFromCHIPAccessoryCKRecord:(id)record
{
  v38 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v6 = [recordName componentsSeparatedByString:@"-"];

  v7 = 0;
  if ([v6 count] == 2)
  {
    v28 = v6;
    lastObject = [v6 lastObject];
    allKeys = [recordCopy allKeys];
    v10 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v33;
      v16 = *MEMORY[0x277D02648];
      v17 = @"verificationCertificateKey";
      v30 = lastObject;
      v18 = *v33;
      v29 = recordCopy;
      while (1)
      {
        if (v18 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v32 + 1) + 8 * v14);
        if ([v19 isEqualToString:@"accessoryCategoryNumber"])
        {
          if (([lastObject isEqualToString:v16] & 1) == 0)
          {
            break;
          }
        }

        if (([v19 isEqualToString:v17] & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", @"signature") & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", @"signatureV2") & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", @"accessoryProductLabel") & 1) == 0)
        {
          v20 = [recordCopy objectForKey:v19];
          v21 = [v20 dataUsingEncoding:4];
          v22 = v17;
          bytes = [v21 bytes];
          v24 = [v21 length];
          v25 = bytes;
          v17 = v22;
          CC_SHA256_Update(&c, v25, v24);

          recordCopy = v29;
          lastObject = v30;
LABEL_14:
        }

        if (++v14 >= v13)
        {
          v26 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (!v26)
          {
            goto LABEL_19;
          }

          v13 = v26;
          v14 = 0;
        }

        v18 = *v33;
      }

      v20 = [recordCopy objectForKey:@"accessoryCategoryNumber"];
      data = bswap64([v20 unsignedLongLongValue]);
      CC_SHA256_Update(&c, &data, 8u);
      goto LABEL_14;
    }

LABEL_19:

    v7 = [MEMORY[0x277CBEB28] dataWithLength:32];
    CC_SHA256_Final([v7 mutableBytes], &c);

    v6 = v28;
  }

  return v7;
}

- (id)calculateDigestFromCHIPAttestationCertificateRecord:(id)record
{
  recordCopy = record;
  memset(&v13, 0, sizeof(v13));
  CC_SHA256_Init(&v13);
  rootCertificate = [recordCopy rootCertificate];
  v5 = [rootCertificate dataUsingEncoding:4];
  CC_SHA256_Update(&v13, [v5 bytes], objc_msgSend(v5, "length"));
  intermediateCertificates = [recordCopy intermediateCertificates];
  v7 = intermediateCertificates;
  if (intermediateCertificates)
  {
    v8 = [intermediateCertificates dataUsingEncoding:4];

    CC_SHA256_Update(&v13, [v8 bytes], objc_msgSend(v8, "length"));
    v5 = v8;
  }

  recordStatus = [recordCopy recordStatus];
  v10 = [recordStatus dataUsingEncoding:4];

  CC_SHA256_Update(&v13, [v10 bytes], objc_msgSend(v10, "length"));
  v11 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256_Final([v11 mutableBytes], &v13);

  return v11;
}

- (__SecKey)copyPublicKeyFromCertificateID:(id)d
{
  dCopy = d;
  container = [(UARPiCloudManager *)self container];
  verificationCertificates = [container verificationCertificates];
  v7 = [verificationCertificates objectForKey:dCopy];

  if (v7)
  {
    v8 = [v7 dataUsingEncoding:4];
    AppleCHIPUpdateSigning = SecPolicyCreateAppleCHIPUpdateSigning();
    if (AppleCHIPUpdateSigning)
    {
      v10 = AppleCHIPUpdateSigning;
      v11 = [(UARPiCloudManager *)self copyPublicKeyForVerificationCertificateData:v8 policy:AppleCHIPUpdateSigning];
      CFRelease(v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)processCHIPFirmwareRecord:(id)record inContainer:(id)container forAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  accessoryCopy = accessory;
  recordCopy = record;
  v11 = [[CHIPAccessoryFirmwareRecord alloc] initWithCKRecord:recordCopy];

  LODWORD(recordCopy) = [accessoryCopy signatureValidationNeeded];
  v12 = [(UARPiCloudManager *)self log];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!recordCopy)
  {
    if (v13)
    {
      recordName = [(CHIPAccessoryFirmwareRecord *)v11 recordName];
      v17 = 136315394;
      v18 = "[UARPiCloudManager(CHIP) processCHIPFirmwareRecord:inContainer:forAccessory:]";
      v19 = 2112;
      v20 = recordName;
      _os_log_impl(&dword_2701F5000, v12, OS_LOG_TYPE_DEFAULT, "%s: Bypassing signature validation on Record %@", &v17, 0x16u);
    }

    goto LABEL_9;
  }

  if (v13)
  {
    recordName2 = [(CHIPAccessoryFirmwareRecord *)v11 recordName];
    v17 = 136315394;
    v18 = "[UARPiCloudManager(CHIP) processCHIPFirmwareRecord:inContainer:forAccessory:]";
    v19 = 2112;
    v20 = recordName2;
    _os_log_impl(&dword_2701F5000, v12, OS_LOG_TYPE_DEFAULT, "%s: Validating signature on Record %@", &v17, 0x16u);
  }

  if ([(UARPiCloudManager *)self validateCHIPFirmwareRecord:v11 inContainer:containerCopy forAccessory:accessoryCopy])
  {
LABEL_9:
    [accessoryCopy setChipFirmwareRecord:v11];
  }

  delegate = [(UARPiCloudManager *)self delegate];
  [delegate remoteFetchCompletion:accessoryCopy error:0];
}

- (BOOL)validateCHIPFirmwareRecord:(id)record inContainer:(id)container forAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  verificationCertificateID = [recordCopy verificationCertificateID];
  v8 = [(UARPiCloudManager *)self copyPublicKeyFromCertificateID:verificationCertificateID];

  if (v8)
  {
    digest = [recordCopy digest];
    if ([(__CFData *)digest length])
    {
      v10 = [(UARPiCloudManager *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *cf = 138412290;
        *&cf[4] = digest;
        _os_log_impl(&dword_2701F5000, v10, OS_LOG_TYPE_INFO, "CHIPAccessoryFirmware record digest: %@", cf, 0xCu);
      }

      v11 = objc_alloc(MEMORY[0x277CBEA90]);
      signature = [recordCopy signature];
      v13 = [v11 initWithBase64EncodedString:signature options:0];

      if (v13)
      {
        v14 = [(UARPiCloudManager *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          recordName = [recordCopy recordName];
          *cf = 138412290;
          *&cf[4] = recordName;
          _os_log_impl(&dword_2701F5000, v14, OS_LOG_TYPE_DEFAULT, "Validating signature on Record %@", cf, 0xCu);
        }

        *cf = 0;
        v16 = SecKeyVerifySignature(v8, *MEMORY[0x277CDC2B8], digest, v13, cf);
        v17 = v16 != 0;
        CFRelease(v8);
        if (!v16)
        {
          v18 = [(UARPiCloudManager *)self log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [UARPiCloudManager(CHIP) validateCHIPFirmwareRecord:recordCopy inContainer:? forAccessory:?];
          }

          CFRelease(*cf);
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (UARPiCloudManager)initWithDelegate:(id)delegate containerID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = UARPiCloudManager;
  v9 = [(UARPiCloudManager *)&v17 init];
  if (!dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 16))
  {
    container = v9;
    v9 = 0;
    goto LABEL_5;
  }

  if (v9)
  {
    v10 = os_log_create("com.apple.accessoryupdater.uarp", "iCloudAssetManager");
    log = v9->_log;
    v9->_log = v10;

    objc_storeStrong(&v9->_delegate, delegate);
    v12 = dispatch_queue_create("com.apple.UARPiCloudManager.recordProcessingQueue", 0);
    recordProcessingQueue = v9->_recordProcessingQueue;
    v9->_recordProcessingQueue = v12;

    v14 = [[UARPiCloudContainer alloc] initWithContainerID:dCopy];
    container = v9->_container;
    v9->_container = v14;
LABEL_5:
  }

  return v9;
}

- (void)performRemoteFetchForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  recordProcessingQueue = self->_recordProcessingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UARPiCloudManager_performRemoteFetchForAccessories___block_invoke;
  v7[3] = &unk_279DFD010;
  v8 = accessoriesCopy;
  selfCopy = self;
  v6 = accessoriesCopy;
  dispatch_async(recordProcessingQueue, v7);
}

void *__54__UARPiCloudManager_performRemoteFetchForAccessories___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 qHandleRemoteFetchRequestForAccessories:v4];
  }

  return result;
}

- (void)qHandleRemoteFetchRequestForAccessories:(id)accessories
{
  v18 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  if ([(UARPiCloudManager *)self fetchVerificationCertificateInContainer:self->_container])
  {
    container = self->_container;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__UARPiCloudManager_qHandleRemoteFetchRequestForAccessories___block_invoke;
    v11[3] = &unk_279DFCF20;
    v11[4] = self;
    v12 = accessoriesCopy;
    [(UARPiCloudManager *)self fetchRemoteDatabaseChangesInContainer:container completion:v11];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = accessoriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(UARPiCloudManagerDelegate *)self->_delegate remoteFetchCompletion:*(*(&v13 + 1) + 8 * v10++) error:0];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager qHandleRemoteFetchRequestForAccessories:];
    }
  }
}

void __61__UARPiCloudManager_qHandleRemoteFetchRequestForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = v4;
    v7 = [v5 updatedZones];
    *buf = 136315650;
    v23 = "[UARPiCloudManager qHandleRemoteFetchRequestForAccessories:]_block_invoke";
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_2701F5000, v6, OS_LOG_TYPE_INFO, "%s: container.updatedZones: %@ error: %@", buf, 0x20u);
  }

  v8 = [*(*(a1 + 32) + 16) updatedZones];
  v9 = [v8 count];
  if (v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  v11 = !v10;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(a1 + 40);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if ((v11 & 1) == 0)
        {
          [*(*(a1 + 32) + 24) remoteFetchCompletion:*(*(&v17 + 1) + 8 * i) error:{v3, v17}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  if (v11)
  {
    [*(a1 + 32) fetchZoneChangesInContainer:*(*(a1 + 32) + 16) forAccessories:*(a1 + 40)];
  }
}

- (int64_t)fetchRemoteDatabaseChangesInContainer:(id)container completion:(id)completion
{
  containerCopy = container;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277CBC380]) initWithPreviousServerChangeToken:0];
  [v8 setFetchAllChanges:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke;
  v17[3] = &unk_279DFD0B0;
  v17[4] = self;
  v9 = containerCopy;
  v18 = v9;
  [v8 setRecordZoneWithIDChangedBlock:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke_289;
  v14[3] = &unk_279DFD100;
  v14[4] = self;
  v15 = v9;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = v9;
  [v8 setFetchDatabaseChangesCompletionBlock:v14];
  database = [v11 database];
  [database addOperation:v8];

  return 0;
}

void __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke_2;
  block[3] = &unk_279DFCFE8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v9 = 136315394;
    v10 = "[UARPiCloudManager fetchRemoteDatabaseChangesInContainer:completion:]_block_invoke_2";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_INFO, "%s: Zone with ID %@ changed", &v9, 0x16u);
  }

  v4 = [UARPiCloudZone alloc];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) containerID];
  v7 = [(UARPiCloudZone *)v4 initWithZoneID:v5 containerID:v6];

  v8 = [*(a1 + 48) updatedZones];
  [v8 addObject:v7];
}

void __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke_289(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke_2_290;
  v14[3] = &unk_279DFD0D8;
  v14[4] = v10;
  v15 = v7;
  v19 = a3;
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 48);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, v14);
}

uint64_t __70__UARPiCloudManager_fetchRemoteDatabaseChangesInContainer_completion___block_invoke_2_290(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 136315906;
    v9 = "[UARPiCloudManager fetchRemoteDatabaseChangesInContainer:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v4;
    v12 = 1024;
    v13 = v3;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_INFO, "%s: Fetch database changes operation completed with token: %@ moreComing: %d error: %@", &v8, 0x26u);
  }

  if (!*(a1 + 48))
  {
    v6 = [*(a1 + 40) copy];
    [*(a1 + 56) setDatabaseChangeToken:v6];
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)fetchZoneChangesInContainer:(id)container forAccessories:(id)accessories
{
  v37 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  accessoriesCopy = accessories;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"zoneName" ascending:1];
  updatedZones = [containerCopy updatedZones];
  if ([updatedZones count])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke;
    v28[3] = &unk_279DFD128;
    v12 = containerCopy;
    v29 = v12;
    v30 = dictionary;
    v13 = array;
    v31 = v13;
    [updatedZones enumerateObjectsUsingBlock:v28];
    v32 = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v15 = [v13 sortedArrayUsingDescriptors:v14];

    v16 = [objc_alloc(MEMORY[0x277CBC3B0]) initWithRecordZoneIDs:v15 configurationsByRecordZoneID:0];
    [v16 setFetchAllChanges:1];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_2;
    v26[3] = &unk_279DFD150;
    v26[4] = self;
    v17 = v12;
    v27 = v17;
    [v16 setRecordChangedBlock:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_306;
    v24[3] = &unk_279DFD1C8;
    v24[4] = self;
    v25 = updatedZones;
    [v16 setRecordZoneFetchCompletionBlock:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_2_310;
    v21[3] = &unk_279DFD218;
    v21[4] = self;
    v18 = v17;
    v22 = v18;
    v23 = accessoriesCopy;
    [v16 setFetchRecordZoneChangesCompletionBlock:v21];
    database = [v18 database];
    [database addOperation:v16];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v34 = "[UARPiCloudManager fetchZoneChangesInContainer:forAccessories:]";
      v35 = 2112;
      v36 = accessoriesCopy;
      _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_INFO, "%s: No updates available for accessories %@", buf, 0x16u);
    }
  }
}

void __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBC3A8]);
  v4 = [*(a1 + 32) containerID];
  v5 = [v4 containsString:@"com.apple.chip"];

  if (v5)
  {
    [v3 setPreviousServerChangeToken:0];
  }

  else
  {
    v6 = [v11 changeToken];
    [v3 setPreviousServerChangeToken:v6];
  }

  v7 = *(a1 + 40);
  v8 = [v11 zoneID];
  [v7 setObject:v3 forKey:v8];

  v9 = *(a1 + 48);
  v10 = [v11 zoneID];
  [v9 addObject:v10];
}

void __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_3;
  block[3] = &unk_279DFCFE8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[UARPiCloudManager fetchZoneChangesInContainer:forAccessories:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_INFO, "%s: Record changed: %@", &v5, 0x16u);
  }

  v4 = [*(a1 + 48) updatedRecords];
  [v4 addObject:*(a1 + 40)];
}

void __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_306(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(v13 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_2_307;
  block[3] = &unk_279DFD1A0;
  block[4] = v13;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(v14, block);
}

void __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_2_307(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *buf = 136315906;
    v11 = "[UARPiCloudManager fetchZoneChangesInContainer:forAccessories:]_block_invoke_2";
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_INFO, "%s: Record Zone Fetch completed for recordZoneID: %@ changeToken:%@ error: %@", buf, 0x2Au);
  }

  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_308;
  v7[3] = &unk_279DFD178;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v6 enumerateObjectsUsingBlock:v7];
}

void __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_308(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 zoneID];
  v6 = [v5 zoneName];
  v7 = [*(a1 + 32) zoneName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [*(a1 + 40) copy];
    [v10 setChangeToken:v9];

    *a3 = 1;
  }
}

void __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_2_310(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_3_311;
  v8[3] = &unk_279DFD1F0;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t __64__UARPiCloudManager_fetchZoneChangesInContainer_forAccessories___block_invoke_3_311(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[UARPiCloudManager fetchZoneChangesInContainer:forAccessories:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_INFO, "%s: Record Zone Fetch completed for all zones with error: %@", &v5, 0x16u);
  }

  return [*(a1 + 32) processUpdatedRecordsInContainer:*(a1 + 48) forAccessories:*(a1 + 56)];
}

- (void)processUpdatedRecordsInContainer:(id)container forAccessories:(id)accessories
{
  v82 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  accessoriesCopy = accessories;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = log;
    containerID = [containerCopy containerID];
    updatedRecords = [containerCopy updatedRecords];
    *buf = 136315650;
    v77 = "[UARPiCloudManager processUpdatedRecordsInContainer:forAccessories:]";
    v78 = 2112;
    v79 = containerID;
    v80 = 2112;
    v81 = updatedRecords;
    _os_log_impl(&dword_2701F5000, v8, OS_LOG_TYPE_INFO, "%s: Updated Records in Container %@: %@", buf, 0x20u);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [containerCopy updatedRecords];
  v11 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  v58 = containerCopy;
  selfCopy = self;
  if (!v11)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_45;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v57 = *v70;
  do
  {
    v15 = 0;
    v54 = v12;
    do
    {
      if (*v70 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v69 + 1) + 8 * v15);
      v17 = self->_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v77 = "[UARPiCloudManager processUpdatedRecordsInContainer:forAccessories:]";
        v78 = 2112;
        v79 = v16;
        _os_log_impl(&dword_2701F5000, v17, OS_LOG_TYPE_INFO, "%s: Processing Record %@", buf, 0x16u);
      }

      recordType = [v16 recordType];
      if ([recordType isEqualToString:@"UARPAccessory"])
      {
      }

      else
      {
        [v16 recordType];
        v20 = v19 = v15;
        v21 = [v20 isEqualToString:@"CHIPAccessoryFirmware"];

        v15 = v19;
        if (!v21)
        {
          v40 = self->_log;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = v40;
            recordType2 = [v16 recordType];
            *buf = 136315394;
            v77 = "[UARPiCloudManager processUpdatedRecordsInContainer:forAccessories:]";
            v78 = 2112;
            v79 = recordType2;
            _os_log_impl(&dword_2701F5000, v41, OS_LOG_TYPE_INFO, "%s: Unexpected RecordType %@, discarding", buf, 0x16u);
          }

          goto LABEL_41;
        }
      }

      v22 = [v16 objectForKey:@"recordStatus"];
      if ([v22 isEqualToString:@"1"])
      {
        v56 = v22;
        recordID = [v16 recordID];
        recordName = [recordID recordName];
        v25 = [recordName componentsSeparatedByString:@"-"];
        firstObject = [v25 firstObject];

        if (firstObject)
        {
          v60 = v16;
          recordID2 = [v16 recordID];
          zoneID = [recordID2 zoneID];
          zoneName = [zoneID zoneName];

          if (zoneName)
          {
            v53 = v15;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v30 = accessoriesCopy;
            v31 = [v30 countByEnumeratingWithState:&v65 objects:v74 count:16];
            if (!v31)
            {
              goto LABEL_27;
            }

            v32 = v31;
            v33 = *v66;
            while (1)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v66 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v65 + 1) + 8 * i);
                productNumber = [v35 productNumber];
                if ([productNumber isEqualToString:firstObject])
                {
                  productGroup = [v35 productGroup];
                  v38 = [productGroup isEqualToString:zoneName];

                  if (!v38)
                  {
                    continue;
                  }

                  productNumber = [v35 availableRecords];
                  [productNumber addObject:v60];
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v65 objects:v74 count:16];
              if (!v32)
              {
LABEL_27:

                self = selfCopy;
                v15 = v53;
                v12 = v54;
                goto LABEL_36;
              }
            }
          }

          v44 = self->_log;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v77 = "[UARPiCloudManager processUpdatedRecordsInContainer:forAccessories:]";
            v78 = 2112;
            v79 = v60;
            _os_log_impl(&dword_2701F5000, v44, OS_LOG_TYPE_INFO, "%s: Unexpected format for zoneName for CKRecord %@, discarding", buf, 0x16u);
          }

          zoneName = 0;
          v12 = v54;
        }

        else
        {
          v43 = self->_log;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v77 = "[UARPiCloudManager processUpdatedRecordsInContainer:forAccessories:]";
            v78 = 2112;
            v79 = v16;
            _os_log_impl(&dword_2701F5000, v43, OS_LOG_TYPE_INFO, "%s: Unexpected format for RecordName for CKRecord %@, discarding", buf, 0x16u);
          }

          firstObject = 0;
          zoneName = v13;
          v12 = v54;
LABEL_36:
          v22 = v56;
        }
      }

      else
      {
        v39 = self->_log;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v77 = "[UARPiCloudManager processUpdatedRecordsInContainer:forAccessories:]";
          v78 = 2112;
          v79 = v16;
          _os_log_impl(&dword_2701F5000, v39, OS_LOG_TYPE_DEFAULT, "%s: Discarding Inactive Record %@", buf, 0x16u);
        }

        zoneName = v13;
        firstObject = v14;
      }

      v13 = zoneName;
      v14 = firstObject;
LABEL_41:
      ++v15;
    }

    while (v15 != v12);
    v12 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  }

  while (v12);
LABEL_45:

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v45 = accessoriesCopy;
  v46 = [v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v62;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v62 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v61 + 1) + 8 * j);
        v51 = self->_log;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v77 = "[UARPiCloudManager processUpdatedRecordsInContainer:forAccessories:]";
          v78 = 2112;
          v79 = v50;
          _os_log_impl(&dword_2701F5000, v51, OS_LOG_TYPE_INFO, "%s: Processing accessory %@", buf, 0x16u);
        }

        self = selfCopy;
        [(UARPiCloudManager *)selfCopy processRecordsInContainer:v58 forAccessory:v50];
      }

      v47 = [v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v47);
  }
}

- (void)processRecordsInContainer:(id)container forAccessory:(id)accessory
{
  v48 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  accessoryCopy = accessory;
  availableRecords = [accessoryCopy availableRecords];
  v8 = [availableRecords count];

  if (!v8)
  {
    goto LABEL_5;
  }

  availableRecords2 = [accessoryCopy availableRecords];
  if ([availableRecords2 count] != 1)
  {

LABEL_7:
    v14 = MEMORY[0x277CCABB0];
    firmwareVersion = [accessoryCopy firmwareVersion];
    v36 = [v14 numberWithInteger:{objc_msgSend(firmwareVersion, "integerValue")}];

    *buf = 0;
    *&buf[8] = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = accessoryCopy;
    obj = [accessoryCopy availableRecords];
    v16 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v37 = 0;
      v13 = @"firmwareVersion";
      v19 = &unk_288030CE8;
      v20 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          if ([containerCopy isCHIPContainer])
          {
            v23 = v19;
            v24 = [v22 objectForKey:@"firmwareVersionNumber"];
            v25 = [v22 objectForKey:@"minFirmwareVersionNumber"];
            v26 = [v22 objectForKey:@"maxFirmwareVersionNumber"];
            if ((!v25 || ([v25 isEqualToNumber:v24] & 1) != 0 || objc_msgSend(v36, "compare:", v25) != -1) && (!v26 || (objc_msgSend(v26, "isEqualToNumber:", v24) & 1) != 0 || objc_msgSend(v36, "compare:", v26) != 1) && objc_msgSend(v24, "compare:", v36) == 1 && objc_msgSend(v24, "compare:", v19) == 1)
            {
              v23 = v24;

              v27 = v22;
              v37 = v27;
            }

            v13 = @"firmwareVersionString";
            v19 = v23;
          }

          else
          {
            v28 = [v22 objectForKey:v13];

            v39 = 0uLL;
            [MEMORY[0x277D02628] versionFromString:v28 version:&v39];
            if (uarpVersionCompare(buf, &v39) == 1)
            {
              *buf = v39;
              v29 = v22;

              v37 = v29;
            }

            v18 = v28;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
      v37 = 0;
      v13 = @"firmwareVersion";
      v19 = &unk_288030CE8;
    }

    self = v33;
    accessoryCopy = v34;
    firstObject = v37;
    if (!v37)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

  isCHIPContainer = [containerCopy isCHIPContainer];

  if (isCHIPContainer)
  {
    goto LABEL_7;
  }

  availableRecords3 = [accessoryCopy availableRecords];
  firstObject = [availableRecords3 firstObject];

  v13 = @"firmwareVersion";
  if (!firstObject)
  {
LABEL_5:
    [(UARPiCloudManagerDelegate *)self->_delegate remoteFetchCompletion:accessoryCopy error:0];
    goto LABEL_34;
  }

LABEL_31:
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v31 = log;
    v32 = [firstObject objectForKey:v13];
    *buf = 136315650;
    *&buf[4] = "[UARPiCloudManager processRecordsInContainer:forAccessory:]";
    *&buf[12] = 2112;
    *&buf[14] = v32;
    v45 = 2112;
    v46 = accessoryCopy;
    _os_log_impl(&dword_2701F5000, v31, OS_LOG_TYPE_INFO, "%s: Greatest Firmware Version %@ available on iCloud for accessory: %@", buf, 0x20u);
  }

  [(UARPiCloudManager *)self processCKRecord:firstObject inContainer:containerCopy forAccessory:accessoryCopy];

LABEL_34:
}

- (void)processCKRecord:(id)record inContainer:(id)container forAccessory:(id)accessory
{
  v42 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  containerCopy = container;
  accessoryCopy = accessory;
  if (![containerCopy isCHIPContainer])
  {
    v11 = [[UARPiCloudAccessoryRecord alloc] initWithCKRecord:recordCopy];
    v12 = v11;
    if (!v11)
    {
      goto LABEL_19;
    }

    recordStatus = [(UARPiCloudAccessoryRecord *)v11 recordStatus];
    v14 = [recordStatus compare:@"1" options:1];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v16 = log;
      recordName = [(UARPiCloudAccessoryRecord *)v12 recordName];
      recordStatus2 = [(UARPiCloudAccessoryRecord *)v12 recordStatus];
      *buf = 136315650;
      *&buf[4] = "[UARPiCloudManager processCKRecord:inContainer:forAccessory:]";
      *&buf[12] = 2112;
      *&buf[14] = recordName;
      v38 = 2112;
      v39 = recordStatus2;
      _os_log_impl(&dword_2701F5000, v16, OS_LOG_TYPE_INFO, "%s: Record %@ Active Status: %@", buf, 0x20u);
    }

    if (v14)
    {
      goto LABEL_19;
    }

    firmwareVersion = [accessoryCopy firmwareVersion];

    if (firmwareVersion)
    {
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        recordName2 = [(UARPiCloudAccessoryRecord *)v12 recordName];
        firmwareVersion2 = [(UARPiCloudAccessoryRecord *)v12 firmwareVersion];
        firmwareVersion3 = [accessoryCopy firmwareVersion];
        *buf = 136315906;
        *&buf[4] = "[UARPiCloudManager processCKRecord:inContainer:forAccessory:]";
        *&buf[12] = 2112;
        *&buf[14] = recordName2;
        v38 = 2112;
        v39 = firmwareVersion2;
        v40 = 2112;
        v41 = firmwareVersion3;
        _os_log_impl(&dword_2701F5000, v21, OS_LOG_TYPE_INFO, "%s: Comparing Record %@ Firmware Version %@ with %@ on accessory", buf, 0x2Au);
      }

      *buf = 0;
      *&buf[8] = 0;
      v25 = MEMORY[0x277D02628];
      firmwareVersion4 = [accessoryCopy firmwareVersion];
      [v25 versionFromString:firmwareVersion4 version:buf];

      v27 = MEMORY[0x277D02628];
      v28 = [(UARPiCloudAccessoryRecord *)v12 firmwareVersion:0];
      [v27 versionFromString:v28 version:&v36];

      if (uarpVersionCompare(buf, &v36) != 1)
      {
        goto LABEL_19;
      }
    }

    signatureValidationNeeded = [accessoryCopy signatureValidationNeeded];
    v30 = self->_log;
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
    if (signatureValidationNeeded)
    {
      if (v31)
      {
        v32 = v30;
        recordName3 = [(UARPiCloudAccessoryRecord *)v12 recordName];
        *buf = 136315394;
        *&buf[4] = "[UARPiCloudManager processCKRecord:inContainer:forAccessory:]";
        *&buf[12] = 2112;
        *&buf[14] = recordName3;
        _os_log_impl(&dword_2701F5000, v32, OS_LOG_TYPE_INFO, "%s: Validating signature on Record %@", buf, 0x16u);
      }

      if (![(UARPiCloudManager *)self validateSignatureForUARPAccessoryRecord:v12 inContainer:containerCopy])
      {
        goto LABEL_19;
      }
    }

    else if (v31)
    {
      v34 = v30;
      recordName4 = [(UARPiCloudAccessoryRecord *)v12 recordName];
      *buf = 136315394;
      *&buf[4] = "[UARPiCloudManager processCKRecord:inContainer:forAccessory:]";
      *&buf[12] = 2112;
      *&buf[14] = recordName4;
      _os_log_impl(&dword_2701F5000, v34, OS_LOG_TYPE_INFO, "%s: Bypassing signature validation on Record %@", buf, 0x16u);
    }

    [accessoryCopy setRecord:v12];
LABEL_19:
    [(UARPiCloudManagerDelegate *)self->_delegate remoteFetchCompletion:accessoryCopy error:0];

    goto LABEL_20;
  }

  [(UARPiCloudManager *)self processCHIPFirmwareRecord:recordCopy inContainer:containerCopy forAccessory:accessoryCopy];
LABEL_20:
}

- (void)processVerificationCertificateRecord:(id)record forContainer:(id)container
{
  recordCopy = record;
  containerCopy = container;
  v8 = [recordCopy objectForKey:@"certificate"];
  v9 = v8;
  if (v8)
  {
    assetContent = [v8 assetContent];
    v19 = recordCopy;
    if (!assetContent)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudManager processVerificationCertificateRecord:v9 forContainer:?];
      }

      v12 = 0;
      AppleAccessoryUpdateSigning = 0;
      goto LABEL_15;
    }

    AppleAccessoryUpdateSigning = SecPolicyCreateAppleAccessoryUpdateSigning();
    if (!AppleAccessoryUpdateSigning)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudManager processVerificationCertificateRecord:forContainer:];
      }

      v12 = 0;
      goto LABEL_14;
    }

    v12 = [(UARPiCloudManager *)self copyPublicKeyForVerificationCertificateData:assetContent policy:AppleAccessoryUpdateSigning];
    if (v12)
    {
LABEL_14:
      [containerCopy setVerificationCertificate:{assetContent, recordCopy}];
LABEL_15:
      [containerCopy setPublicKey:{v12, v19}];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      fileURL = [v9 fileURL];
      v21 = 0;
      v16 = [defaultManager removeItemAtURL:fileURL error:&v21];
      v17 = v21;

      if ((v16 & 1) == 0)
      {
        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(UARPiCloudManager *)v18 processVerificationCertificateRecord:v9 forContainer:v17];
        }
      }

      if (AppleAccessoryUpdateSigning)
      {
        CFRelease(AppleAccessoryUpdateSigning);
      }

      recordCopy = v20;
      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager processVerificationCertificateRecord:forContainer:];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager processVerificationCertificateRecord:forContainer:];
    }

    [containerCopy setPublicKey:0];
    assetContent = 0;
  }

LABEL_22:
}

- (__SecKey)copyPublicKeyForVerificationCertificateData:(id)data policy:(__SecPolicy *)policy
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(UARPiCloudContainer *)self->_container requiresPrefForSigningBeta])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "Setting Security Pref AllowAccessoryUpdateSigningBeta", buf, 2u);
    }

    CFPreferencesSetAppValue(@"AllowAccessoryUpdateSigningBeta", *MEMORY[0x277CBED28], @"com.apple.security");
  }

  v23 = dataCopy;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  v8 = [v7 componentsSeparatedByString:{@", "}];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:*(*(&v26 + 1) + 8 * i) options:0];
        v16 = SecCertificateCreateWithData(0, v15);
        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v12);
  }

  trust = 0;
  SecTrustCreateWithCertificates(v9, policy, &trust);
  if (trust)
  {
    error = 0;
    v17 = SecTrustEvaluateWithError(trust, &error);
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v31 = v17;
      v32 = 2112;
      v33 = error;
      _os_log_impl(&dword_2701F5000, v18, OS_LOG_TYPE_DEFAULT, "Certificate is trusted: %d trustErrorRef %@", buf, 0x12u);
    }

    CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, 0);
    v20 = SecCertificateCopyKey(CertificateAtIndex);
    CFRelease(trust);
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager copyPublicKeyForVerificationCertificateData:policy:];
    }

    v20 = 0;
  }

  return v20;
}

- (id)filterInterestedZonesInContainer:(id)container forAccessories:(id)accessories
{
  v42 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  accessoriesCopy = accessories;
  v6 = [MEMORY[0x277CBEB58] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = containerCopy;
  obj = [containerCopy updatedZones];
  v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v27 = *v37;
    do
    {
      v10 = 0;
      v29 = v8;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        zoneID = [v11 zoneID];
        zoneName = [zoneID zoneName];
        v14 = [zoneName isEqualToString:@"certificates"];

        if (v14)
        {
          [v6 addObject:v11];
        }

        else
        {
          v31 = v10;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v15 = accessoriesCopy;
          v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v33;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v33 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v32 + 1) + 8 * i);
                zoneID2 = [v11 zoneID];
                zoneName2 = [zoneID2 zoneName];
                productGroup = [v20 productGroup];
                v24 = [zoneName2 isEqualToString:productGroup];

                if (v24)
                {
                  [v6 addObject:v11];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v17);
          }

          v9 = v27;
          v8 = v29;
          v10 = v31;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  return v6;
}

- (BOOL)validateSignatureForUARPAccessoryRecord:(id)record inContainer:(id)container
{
  v32 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  containerCopy = container;
  error = 0;
  publicKey = [containerCopy publicKey];

  if (!publicKey)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager validateSignatureForUARPAccessoryRecord:inContainer:];
    }

    goto LABEL_18;
  }

  v9 = [(UARPiCloudManager *)self calculateDigestFromUARPAccessoryRecord:recordCopy];
  if (!v9)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager validateSignatureForUARPAccessoryRecord:inContainer:];
    }

    goto LABEL_18;
  }

  v10 = v9;
  v11 = objc_alloc(MEMORY[0x277CBEA90]);
  signature = [recordCopy signature];
  v13 = [v11 initWithBase64EncodedString:signature options:0];

  log = self->_log;
  if (!v13)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudManager validateSignatureForUARPAccessoryRecord:inContainer:];
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = log;
    recordName = [recordCopy recordName];
    *buf = 138412290;
    v27 = recordName;
    _os_log_impl(&dword_2701F5000, v15, OS_LOG_TYPE_DEFAULT, "Validating signature on Record %@", buf, 0xCu);
  }

  publicKey2 = [containerCopy publicKey];
  v18 = SecKeyVerifySignature(publicKey2, *MEMORY[0x277CDC2B8], v10, v13, &error);
  v19 = v18 != 0;

  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    recordName2 = [recordCopy recordName];
    v23 = @"INVALID";
    *buf = 138412802;
    v27 = recordName2;
    if (v18)
    {
      v23 = @"VALID";
    }

    v28 = 2112;
    v29 = v23;
    v30 = 2112;
    v31 = error;
    _os_log_impl(&dword_2701F5000, v21, OS_LOG_TYPE_DEFAULT, "Signature on Record %@: %@ error: %@", buf, 0x20u);
  }

LABEL_19:
  return v19;
}

- (BOOL)fetchVerificationCertificateInContainer:(id)container
{
  v28[1] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if ([containerCopy isCHIPContainer])
  {
    [(UARPiCloudManager *)self performRemoteFetchForCHIPVerificationCertificateSync];
  }

  else
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__0;
    v24[4] = __Block_byref_object_dispose__0;
    v25 = 0;
    v5 = dispatch_semaphore_create(0);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_INFO, "Fetching Verification Certificate", buf, 2u);
    }

    v7 = objc_alloc(MEMORY[0x277CBC600]);
    v8 = [v7 initWithZoneName:@"certificates" ownerName:*MEMORY[0x277CBBF20]];
    v9 = [objc_alloc(MEMORY[0x277CBC5C8]) initWithRecordName:@"certificates" zoneID:v8];
    v10 = objc_alloc(MEMORY[0x277CBC3E8]);
    v28[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v12 = [v10 initWithRecordIDs:v11];

    [v12 setShouldFetchAssetContentInMemory:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__UARPiCloudManager_fetchVerificationCertificateInContainer___block_invoke;
    v19[3] = &unk_279DFD240;
    v19[4] = self;
    v23 = v24;
    v13 = v9;
    v20 = v13;
    v14 = containerCopy;
    v21 = v14;
    v15 = v5;
    v22 = v15;
    [v12 setFetchRecordsCompletionBlock:v19];
    database = [v14 database];
    [database addOperation:v12];

    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[UARPiCloudManager fetchVerificationCertificateInContainer:]";
      _os_log_impl(&dword_2701F5000, v17, OS_LOG_TYPE_INFO, "%s: Waiting on the fetch record completion block to be finished", buf, 0xCu);
    }

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);

    _Block_object_dispose(v24, 8);
  }

  return 1;
}

void __61__UARPiCloudManager_fetchVerificationCertificateInContainer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[UARPiCloudManager fetchVerificationCertificateInContainer:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2701F5000, v7, OS_LOG_TYPE_INFO, "%s: operationError = %@, recordsByRecordID: %@", &v11, 0x20u);
  }

  if (v5 && !v6)
  {
    v8 = [v5 objectForKey:*(a1 + 40)];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1 + 32) processVerificationCertificateRecord:*(*(*(a1 + 64) + 8) + 40) forContainer:*(a1 + 48)];
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (void)performRemoteFetchForSupportedAccessoriesMetadataInZone:(id)zone
{
  v6 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UARPiCloudManager performRemoteFetchForSupportedAccessoriesMetadataInZone:]";
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: Deprecated", &v4, 0xCu);
  }
}

- (void)performRemoteFetchForSupportedAccessoriesMetadata:(id)metadata batchRequest:(BOOL)request
{
  requestCopy = request;
  v30 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    *&buf[4] = "[UARPiCloudManager performRemoteFetchForSupportedAccessoriesMetadata:batchRequest:]";
    *buf = 136315650;
    if (requestCopy)
    {
      v8 = "YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    *&buf[22] = 2080;
    v29 = v8;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: productGroup:%@ batchRequest:%s", buf, 0x20u);
  }

  containerID = [(UARPiCloudContainer *)self->_container containerID];
  if ([containerID isEqualToString:@"com.apple.chip"])
  {
  }

  else
  {
    containerID2 = [(UARPiCloudContainer *)self->_container containerID];
    v11 = [containerID2 isEqualToString:@"com.apple.chip.staging"];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v29) = 1;
  v12 = dispatch_semaphore_create(0);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = dispatch_time(0, 0);
  v13 = MEMORY[0x277D85DD0];
  do
  {
    v14 = v25[3];
    recordProcessingQueue = self->_recordProcessingQueue;
    v18[0] = v13;
    v18[1] = 3221225472;
    v18[2] = __84__UARPiCloudManager_performRemoteFetchForSupportedAccessoriesMetadata_batchRequest___block_invoke;
    v18[3] = &unk_279DFD268;
    v21 = buf;
    v18[4] = self;
    v16 = metadataCopy;
    v23 = requestCopy;
    v19 = v16;
    v22 = &v24;
    v17 = v12;
    v20 = v17;
    dispatch_after(v14, recordProcessingQueue, v18);
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  }

  while (!*(*&buf[8] + 24));
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(buf, 8);
LABEL_11:
}

intptr_t __84__UARPiCloudManager_performRemoteFetchForSupportedAccessoriesMetadata_batchRequest___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) handleRemoteFetchRequestForCHIPAccessoriesMetadata:*(a1 + 40) batchRequest:*(a1 + 72)];
  v2 = *(*(a1 + 56) + 8);
  if (*(a1 + 72) == 1 && (*(v2 + 24) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = dispatch_time(0, 1000000000);
  }

  else
  {
    *(v2 + 24) = 1;
  }

  v3 = *(a1 + 48);

  return dispatch_semaphore_signal(v3);
}

- (void)performRemoteFetchForAttestationCertificates:(id)certificates
{
  v14 = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[UARPiCloudManager performRemoteFetchForAttestationCertificates:]";
    v12 = 2112;
    v13 = certificatesCopy;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: subjectKeyIdentifier:%@", buf, 0x16u);
  }

  recordProcessingQueue = self->_recordProcessingQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__UARPiCloudManager_performRemoteFetchForAttestationCertificates___block_invoke;
  v8[3] = &unk_279DFD010;
  v8[4] = self;
  v9 = certificatesCopy;
  v7 = certificatesCopy;
  dispatch_async(recordProcessingQueue, v8);
}

void __66__UARPiCloudManager_performRemoteFetchForAttestationCertificates___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) containerID];
  if ([v2 isEqualToString:@"com.apple.chip"])
  {
  }

  else
  {
    v3 = [*(*(a1 + 32) + 16) containerID];
    v4 = [v3 isEqualToString:@"com.apple.chip.staging"];

    if (!v4)
    {
      return;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  [v5 handleRemoteFetchRequestForCHIPAttestationCertificates:v6];
}

- (id)calculateDigestFromUARPAccessoryRecord:(id)record
{
  v39 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  array = [MEMORY[0x277CBEB18] array];
  manufacturer = [recordCopy manufacturer];
  OUTLINED_FUNCTION_0_2(manufacturer);

  model = [recordCopy model];
  OUTLINED_FUNCTION_0_2(model);

  firmwareVersion = [recordCopy firmwareVersion];
  OUTLINED_FUNCTION_0_2(firmwareVersion);

  firmwareURL = [recordCopy firmwareURL];
  OUTLINED_FUNCTION_0_2(firmwareURL);

  releaseType = [recordCopy releaseType];

  if (releaseType)
  {
    releaseType2 = [recordCopy releaseType];
    OUTLINED_FUNCTION_0_2(releaseType2);
  }

  updateClassification = [recordCopy updateClassification];

  if (updateClassification)
  {
    updateClassification2 = [recordCopy updateClassification];
    OUTLINED_FUNCTION_0_2(updateClassification2);
  }

  deploymentList = [recordCopy deploymentList];
  v15 = [deploymentList count];

  if (v15)
  {
    deploymentStr = [recordCopy deploymentStr];
    OUTLINED_FUNCTION_0_2(deploymentStr);
  }

  releaseNotesURL = [recordCopy releaseNotesURL];
  OUTLINED_FUNCTION_0_2(releaseNotesURL);

  firmwareBinaryHash = [recordCopy firmwareBinaryHash];
  OUTLINED_FUNCTION_0_2(firmwareBinaryHash);

  releaseNotesHash = [recordCopy releaseNotesHash];
  OUTLINED_FUNCTION_0_2(releaseNotesHash);

  recordStatus = [recordCopy recordStatus];
  OUTLINED_FUNCTION_0_2(recordStatus);

  releaseDate = [recordCopy releaseDate];
  OUTLINED_FUNCTION_0_2(releaseDate);

  firmwareFileSize = [recordCopy firmwareFileSize];
  OUTLINED_FUNCTION_0_2(firmwareFileSize);

  releaseNotesFileSize = [recordCopy releaseNotesFileSize];
  OUTLINED_FUNCTION_0_2(releaseNotesFileSize);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = array;
  v25 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v33 + 1) + 8 * i) dataUsingEncoding:{4, v33}];
        CC_SHA256_Update(&c, [v29 bytes], objc_msgSend(v29, "length"));
      }

      v26 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  v30 = [MEMORY[0x277CBEB28] dataWithLength:32];
  v31 = v30;
  if (v30)
  {
    CC_SHA256_Final([v30 mutableBytes], &c);
  }

  return v31;
}

- (void)processVerificationCertificateRecord:(void *)a1 forContainer:(void *)a2 .cold.3(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 assetContent];
  v5 = [a2 assetTransferOptions];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_2_0();
  v9 = v4;
  v10 = v6;
  v11 = v7;
  _os_log_error_impl(&dword_2701F5000, v3, OS_LOG_TYPE_ERROR, "%s: Failed to retrieve verification/certificate data from %@, %@", v8, 0x20u);
}

- (void)processVerificationCertificateRecord:(uint64_t)a3 forContainer:.cold.4(void *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 fileURL];
  v9[0] = 136315650;
  OUTLINED_FUNCTION_2_0();
  v10 = v7;
  v11 = v8;
  v12 = a3;
  _os_log_error_impl(&dword_2701F5000, v5, OS_LOG_TYPE_ERROR, "%s: Failed to delete asset at URL %@ withError %@", v9, 0x20u);
}

- (void)processVerificationCertificateRecord:forContainer:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end