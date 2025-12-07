@interface HDUserCharacteristicSyncEntity
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDUserCharacteristicSyncEntity

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v67.receiver = self;
  v67.super_class = &OBJC_METACLASS___HDUserCharacteristicSyncEntity;
  v46 = objectsCopy;
  v44 = storeCopy;
  v45 = objc_msgSendSuper2(&v67, sel_receiveSyncObjects_version_syncStore_profile_error_, objectsCopy, version, storeCopy, profileCopy, error);
  if (v45)
  {
    goto LABEL_2;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = objectsCopy;
  v49 = [v17 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (!v49)
  {

    goto LABEL_2;
  }

  v18 = *v64;
  v19 = 1;
  v20 = off_27860F000;
  v52 = *MEMORY[0x277CCBB18];
  errorCopy = error;
  v47 = *v64;
  v48 = v17;
  v51 = profileCopy;
  do
  {
    v21 = 0;
    do
    {
      if (*v64 != v18)
      {
        v22 = v21;
        objc_enumerationMutation(v17);
        v21 = v22;
      }

      v50 = v21;
      v23 = *(*(&v63 + 1) + 8 * v21);
      if ([v23 hasCategory])
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = [v23 keyValuePairs];
        v58 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (!v58)
        {
          goto LABEL_35;
        }

        v57 = *v60;
        v24 = v52;
        while (1)
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v60 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v59 + 1) + 8 * i);
            v27 = [v26 key];

            if (v27)
            {
              v28 = v20[48];
              v29 = [v26 key];
              v30 = [(__objc2_class *)v28 userCharacteristicTypeForKey:v29];

              date = [MEMORY[0x277CBEAA8] date];
              if ([v26 hasTimestamp])
              {
                decodedTimestamp = [v26 decodedTimestamp];

                [decodedTimestamp timeIntervalSinceReferenceDate];
                v34 = v33;
                date = decodedTimestamp;
              }

              else
              {
                v34 = 2.22507386e-308;
              }

              decodedValue = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v24];
              if (v30 != decodedValue || ([profileCopy daemon], v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "behavior"), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "futureMigrationsEnabled")))
              {
                _relatedQuantityType = [v30 _relatedQuantityType];

                if (v30 == decodedValue)
                {
                }

                if (!_relatedQuantityType)
                {
                  decodedValue = [v26 decodedValue];
                  v37 = [v30 _relatedSampleForInsertionWithCharacteristicValue:decodedValue date:date];
                  if (v37)
                  {
                    dataProvenanceManager = [profileCopy dataProvenanceManager];
                    defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];

                    if (defaultLocalDataProvenance)
                    {
                      dataManager = [profileCopy dataManager];
                      v68 = v37;
                      [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
                      v42 = v41 = v19;
                      v43 = [dataManager insertDataObjects:v42 withProvenance:defaultLocalDataProvenance creationDate:errorCopy error:v34];

                      LODWORD(v42) = v41;
                      v24 = v52;

                      v19 = v43 & v42;
                      profileCopy = v51;
                    }

                    else
                    {
                      [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:100 description:@"Failed to get local device data provenance"];
                    }

                    v20 = off_27860F000;
LABEL_30:
                  }
                }

                continue;
              }

              defaultLocalDataProvenance = v55;
              v37 = v56;
              goto LABEL_30;
            }
          }

          v58 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (!v58)
          {
LABEL_35:

            v18 = v47;
            v17 = v48;
            break;
          }
        }
      }

      v21 = v50 + 1;
    }

    while (v50 + 1 != v49);
    v49 = [v17 countByEnumeratingWithState:&v63 objects:v70 count:16];
  }

  while (v49);

  if ((v19 & 1) == 0)
  {
    v45 = 1;
    goto LABEL_3;
  }

LABEL_2:
  userCharacteristicsManager = [profileCopy userCharacteristicsManager];
  [(HDUserCharacteristicsManager *)userCharacteristicsManager _userCharacteristicsDidChangeShouldUpdateUserProfile:0 shouldSync:?];

LABEL_3:
  return v45;
}

@end