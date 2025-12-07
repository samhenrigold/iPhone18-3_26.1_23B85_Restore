@interface PBFMigrationHelpers
+ (void)updateConfiguredPropertiesForDataStoreURL:(id)l extensionToDescriptorMap:(id)map migrationKey:(id)key reason:(id)reason match:(id)match update:(id)update;
@end

@implementation PBFMigrationHelpers

+ (void)updateConfiguredPropertiesForDataStoreURL:(id)l extensionToDescriptorMap:(id)map migrationKey:(id)key reason:(id)reason match:(id)match update:(id)update
{
  mapCopy = map;
  keyCopy = key;
  reasonCopy = reason;
  matchCopy = match;
  updateCopy = update;
  v18 = MEMORY[0x277CBEBC0];
  lCopy = l;
  v20 = [v18 pbf_dataStoreExtensionContainerURLForBaseURL:lCopy version:{+[PBFPosterExtensionDataStore dataStoreVersion](PBFPosterExtensionDataStore, "dataStoreVersion")}];

  v21 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v20, 0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __123__PBFMigrationHelpers_updateConfiguredPropertiesForDataStoreURL_extensionToDescriptorMap_migrationKey_reason_match_update___block_invoke;
  v27[3] = &unk_2782C9428;
  v28 = mapCopy;
  v29 = keyCopy;
  v30 = reasonCopy;
  v31 = matchCopy;
  v32 = updateCopy;
  v22 = updateCopy;
  v23 = reasonCopy;
  v24 = matchCopy;
  v25 = keyCopy;
  v26 = mapCopy;
  [v21 enumerateObjectsUsingBlock:v27];
}

void __123__PBFMigrationHelpers_updateConfiguredPropertiesForDataStoreURL_extensionToDescriptorMap_migrationKey_reason_match_update___block_invoke(void *a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 extensionIdentifier];
  v6 = [v4 objectForKey:v5];

  if (a1[4])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = [v3 setupEnvironmentIfNecessary];
    v9 = [v3 providerInfoObjectForKey:a1[5]];

    if (!v9)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v37 = v3;
      obj = [v3 configurationStoreCoordinatorsWithError:0];
      v43 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      if (v43)
      {
        v10 = *v47;
        v11 = 0x277D3E000uLL;
        v40 = *v47;
        v41 = a1;
        v38 = v6;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v46 + 1) + 8 * i);
            if (a1[4])
            {
              if ([v6 count])
              {
                v14 = [v13 descriptorIdentifier];
                v15 = [v6 containsObject:v14];

                if (!v15)
                {
                  continue;
                }
              }
            }

            v16 = [v13 pathOfLatestVersion];
            v17 = [*(v11 + 3552) modelObjectCacheForPath:v16];
            v18 = [v17 configuredProperties];
            v19 = (*(a1[7] + 16))();
            if (v19)
            {
              v20 = PBFLogMigration(v19);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                [v13 extensionIdentifier];
                v21 = v39 = v18;
                v22 = [v13 descriptorIdentifier];
                v23 = v41[6];
                v24 = [v17 identity];
                v25 = [v24 posterUUID];
                *buf = 138413058;
                v51 = v21;
                v52 = 2112;
                v53 = v22;
                v54 = 2112;
                v55 = v23;
                a1 = v41;
                v56 = 2112;
                v57 = v25;
                _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "Config for extension: %@ descriptor:%@ needs update for %@ UUID:%@", buf, 0x2Au);

                v6 = v38;
                v18 = v39;
              }

              v26 = [v16 contentsURL];
              v45 = 0;
              v27 = [v13 addNewVersionWithContents:v26 error:&v45];
              v28 = v45;

              if (v27)
              {
                if (v28)
                {
                  v30 = PBFLogMigration(v29);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v31 = a1[6];
                    *buf = 138412546;
                    v51 = v31;
                    v52 = 2112;
                    v53 = v28;
                    _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "%@ migration error creating new version of configuration: %@", buf, 0x16u);
                  }
                }

                else
                {
                  v30 = [v13 pathOfLatestVersion];
                  v32 = (*(a1[8] + 16))();
                  v44 = 0;
                  [MEMORY[0x277D3EDE8] storeConfiguredPropertiesForPath:v30 configuredProperties:v32 error:&v44];
                  v33 = v44;
                  v34 = v33;
                  if (v33)
                  {
                    v35 = PBFLogMigration(v33);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      v36 = v41[6];
                      *buf = 138412546;
                      v51 = v36;
                      v52 = 2112;
                      v53 = v34;
                      _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "%@ migration error storing updated configuredProperties: %@", buf, 0x16u);
                    }
                  }

                  a1 = v41;
                }
              }

              v10 = v40;
              v11 = 0x277D3E000;
            }
          }

          v43 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
        }

        while (v43);
      }

      v3 = v37;
      [v37 providerInfoSetObject:MEMORY[0x277CBEC38] forKey:a1[5]];
    }

    [v3 invalidate];
  }
}

@end