@interface HMIExternalPersonDataSourceDisk
- (void)addPerson:(id)person completion:(id)completion;
- (void)addPersonFaceCrops:(id)crops completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
@end

@implementation HMIExternalPersonDataSourceDisk

- (void)addPerson:(id)person completion:(id)completion
{
  personCopy = person;
  completionCopy = completion;
  workQueue = [(HMIPersonDataSourceDisk *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMIExternalPersonDataSourceDisk_addPerson_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = self;
  v12 = personCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = personCopy;
  dispatch_async(workQueue, block);
}

void __56__HMIExternalPersonDataSourceDisk_addPerson_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceURL];
  v3 = [*(a1 + 40) UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 URLByAppendingPathComponent:?];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v9 = 0;

  if (v8)
  {
    v10 = [*(a1 + 40) UUID];
    v19 = [v10 UUIDString];
    v20 = [*(a1 + 40) name];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v12 = [v5 URLByAppendingPathComponent:?];
    v13 = [HMIFaceUtilities serializeJSONObject:"serializeJSONObject:url:error:" url:? error:?];
    v14 = v9;

    if (v13)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 40)];
      v17 = *(a1 + 48);
      v18 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
      (*(v17 + 16))(v17, v18);
    }

    v9 = v14;
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 40)];
    v15 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    (*(v15 + 16))(v15, v12);
  }
}

- (void)addPersonFaceCrops:(id)crops completion:(id)completion
{
  cropsCopy = crops;
  completionCopy = completion;
  workQueue = [(HMIPersonDataSourceDisk *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMIExternalPersonDataSourceDisk_addPersonFaceCrops_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = cropsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = cropsCopy;
  dispatch_async(workQueue, block);
}

void __65__HMIExternalPersonDataSourceDisk_addPersonFaceCrops_completion___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  v29 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v29)
  {
    v30 = MEMORY[0];
LABEL_3:
    v1 = 0;
    while (1)
    {
      if (MEMORY[0] != v30)
      {
        objc_enumerationMutation(obj);
      }

      v2 = *(8 * v1);
      v3 = [*(a1 + 40) sourceURL];
      v4 = [v2 personUUID];
      v5 = [v4 UUIDString];
      v6 = [v3 URLByAppendingPathComponent:?];

      v7 = [v2 UUID];
      v8 = [v7 UUIDString];
      v9 = [v6 URLByAppendingPathComponent:?];

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v9 path];
      v12 = [v10 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
      v13 = 0;

      if ((v12 & 1) == 0)
      {
        break;
      }

      v32 = v6;
      v14 = [v2 UUID];
      v33 = [v14 UUIDString];
      [v2 faceBoundingBox];
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v36);
      v15 = [v2 dateCreated];
      v35 = HMIJSONFormattedStringForDate(v15);
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

      v17 = [v9 URLByAppendingPathComponent:?];
      v18 = [HMIFaceUtilities serializeJSONObject:"serializeJSONObject:url:error:" url:? error:?];
      v19 = v13;

      if ((v18 & 1) == 0)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:v2];
        v25 = *(a1 + 48);
        v26 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
        goto LABEL_15;
      }

      v20 = [v2 dataRepresentation];
      v21 = [v9 URLByAppendingPathComponent:?];
      v22 = [v20 writeToURL:? atomically:?];

      if ((v22 & 1) == 0)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:v2];
        v25 = *(a1 + 48);
        v26 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
LABEL_15:
        v27 = v26;
        (*(v25 + 16))(v25, v26);

        v6 = v32;
LABEL_16:

        return;
      }

      if (v29 == ++v1)
      {
        v29 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v29)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:v2];
    v23 = *(a1 + 48);
    v17 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
    (*(v23 + 16))(v23, v17);
    v19 = v13;
    goto LABEL_16;
  }

LABEL_11:

  (*(*(a1 + 48) + 16))();
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 hmfErrorWithCode:?];
  (*(completion + 2))(completionCopy, 0, v6);
}

@end