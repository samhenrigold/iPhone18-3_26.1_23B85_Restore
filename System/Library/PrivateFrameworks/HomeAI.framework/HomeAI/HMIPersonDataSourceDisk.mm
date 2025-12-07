@interface HMIPersonDataSourceDisk
+ (id)getStoragePath;
- (HMIPersonDataSourceDisk)initWithHomeUUID:(id)d sourceUUID:(id)iD error:(id *)error;
- (void)addFaceprints:(id)faceprints completion:(id)completion;
- (void)fetchAllFaceprintsWithCompletion:(id)completion;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion;
- (void)fetchAllPersonsWithCompletion:(id)completion;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMIPersonDataSourceDisk

- (HMIPersonDataSourceDisk)initWithHomeUUID:(id)d sourceUUID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v36.receiver = self;
  v36.super_class = HMIPersonDataSourceDisk;
  v11 = [(HMIPersonDataSourceDisk *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  v13 = HMIDispatchQueueNameString(v11, 0);
  uTF8String = [v13 UTF8String];
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create(uTF8String, v15);
  workQueue = v12->_workQueue;
  v12->_workQueue = v16;

  objc_storeStrong(&v12->_homeUUID, d);
  objc_storeStrong(&v12->_sourceUUID, iD);
  v18 = MEMORY[0x277CBEBC0];
  getStoragePath = [objc_opt_class() getStoragePath];
  v20 = [v18 fileURLWithPath:?];

  uUIDString = [dCopy UUIDString];
  v22 = [v20 URLByAppendingPathComponent:?];
  uUIDString2 = [iDCopy UUIDString];
  v24 = [v22 URLByAppendingPathComponent:?];
  sourceURL = v12->_sourceURL;
  v12->_sourceURL = v24;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)v12->_sourceURL path];
  v35 = 0;
  LOBYTE(v15) = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v28 = v35;

  if (v15)
  {

LABEL_4:
    v29 = v12;
    goto LABEL_8;
  }

  iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:dCopy, iDCopy];
  v31 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
  v32 = v31;
  if (error)
  {
    v33 = v31;
    *error = v32;
  }

  HMIErrorLog(v12, v32);

  v29 = 0;
LABEL_8:

  return v29;
}

- (void)fetchAllPersonsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIPersonDataSourceDisk *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMIPersonDataSourceDisk_fetchAllPersonsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __57__HMIPersonDataSourceDisk_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v28 = [MEMORY[0x277CBEB58] set];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) sourceURL];
  v4 = [v2 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
  v5 = 0;

  if (v4)
  {
    v25 = a1;
    v26 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      while (2)
      {
        v9 = 0;
        v10 = v5;
        do
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = MEMORY[0x277CBEA90];
          v12 = [*(8 * v9) URLByAppendingPathComponent:?];
          v13 = [v11 dataWithContentsOfURL:?];

          v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
          v5 = v10;

          if (!v14)
          {
            v21 = *(v25 + 40);
            v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
            (*(v21 + 16))(v21, 0, v22);

            goto LABEL_12;
          }

          v15 = [HMIPerson alloc];
          v16 = objc_alloc(MEMORY[0x277CCAD78]);
          v17 = [v14 objectForKeyedSubscript:?];
          v18 = [v16 initWithUUIDString:?];
          v19 = [v14 objectForKeyedSubscript:?];
          v20 = [HMIPerson initWithUUID:v15 name:"initWithUUID:name:"];

          [v28 addObject:?];
          v9 = (v9 + 1);
          v10 = v5;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    (*(*(v25 + 40) + 16))();
LABEL_12:
    v4 = v26;
  }

  else
  {
    v23 = *(a1 + 40);
    v24 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    (*(v23 + 16))(v23, 0, v24);
  }
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMIPersonDataSourceDisk *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMIPersonDataSourceDisk_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
}

void __72__HMIPersonDataSourceDisk_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v66;
  v48 = v3;
  v49 = *MEMORY[0x277CBE8E8];
  v54 = v2;
  v55 = *MEMORY[0x277CBE868];
  v47 = a1;
  v44 = *v66;
LABEL_3:
  v8 = 0;
  v45 = v5;
  while (1)
  {
    if (*v66 != v7)
    {
      objc_enumerationMutation(v3);
    }

    v46 = v8;
    v9 = *(*(&v65 + 1) + 8 * v8);
    v10 = [*(a1 + 40) sourceURL];
    v51 = v9;
    v11 = [v9 UUIDString];
    v12 = [v10 URLByAppendingPathComponent:?];

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v69 = v49;
    v70 = v55;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v64 = v6;
    v15 = [v13 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
    v16 = v64;

    if (!v15)
    {
      break;
    }

    v50 = v12;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
    if (!v18)
    {
      v6 = v16;
      goto LABEL_20;
    }

    v19 = v18;
    v20 = *v61;
    v6 = v16;
    v21 = 0x277CBE000uLL;
    v53 = v17;
    while (2)
    {
      v22 = 0;
      v52 = v19;
      do
      {
        if (*v61 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v60 + 1) + 8 * v22);
        v59 = 0;
        [v23 getResourceValue:? forKey:? error:?];
        v24 = v59;
        if ([v24 BOOLValue])
        {
          v25 = *(v21 + 2704);
          v26 = [v23 URLByAppendingPathComponent:?];
          v27 = [v25 dataWithContentsOfURL:?];

          v58 = v6;
          v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
          v16 = v58;

          if (v28)
          {
            v29 = objc_alloc(MEMORY[0x277CCAD78]);
            v30 = [v28 objectForKeyedSubscript:?];
            v31 = [v29 initWithUUIDString:?];

            v32 = *(v21 + 2704);
            v33 = [v23 URLByAppendingPathComponent:?];
            v57 = v16;
            v34 = [v32 dataWithContentsOfURL:? options:? error:?];
            v6 = v57;

            if (v34)
            {
              v35 = [v28 objectForKeyedSubscript:?];
              memset(&rect, 0, sizeof(rect));
              v36 = [v28 objectForKeyedSubscript:?];
              CGRectMakeWithDictionaryRepresentation(v36, &rect);

              v37 = [HMIPersonFaceCrop initWithUUID:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:" dataRepresentation:? dateCreated:? faceBoundingBox:? personUUID:?];
              [v54 addObject:?];

              v21 = 0x277CBE000;
              v19 = v52;
              v17 = v53;
              goto LABEL_16;
            }

            v39 = *(v47 + 48);
            v40 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
            (*(v39 + 16))(v39, 0, v40);

            v16 = v6;
          }

          else
          {
            v38 = *(v47 + 48);
            v28 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
            (*(v38 + 16))(v38, 0, v28);
          }

          v41 = v53;
          v2 = v54;
          v42 = v53;
          v3 = v48;
          v12 = v50;
          goto LABEL_28;
        }

LABEL_16:

        v22 = (v22 + 1);
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
      if (v19)
      {
        continue;
      }

      break;
    }

LABEL_20:

    v8 = v46 + 1;
    v2 = v54;
    a1 = v47;
    v3 = v48;
    v7 = v44;
    if ((v46 + 1) == v45)
    {
      v5 = [v48 countByEnumeratingWithState:? objects:? count:?];
      if (!v5)
      {
LABEL_24:

        (*(*(a1 + 48) + 16))();
        v16 = v6;
        goto LABEL_29;
      }

      goto LABEL_3;
    }
  }

  v42 = [MEMORY[0x277CCACA8] stringWithFormat:v51];
  v43 = *(a1 + 48);
  v41 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
  (*(v43 + 16))(v43, 0, v41);
LABEL_28:

LABEL_29:
}

- (void)fetchAllFaceprintsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, 0, v6);
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, 0, v6);
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, v6);
}

- (void)addFaceprints:(id)faceprints completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, v7);
}

- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v7 = [v5 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, v7);
}

+ (id)getStoragePath
{
  v2 = +[HMIPreference sharedInstance];
  v3 = [v2 stringPreferenceForKey:? defaultValue:?];

  return v3;
}

@end