@interface DKAppInstallMonitor
@end

@implementation DKAppInstallMonitor

void __58___DKAppInstallMonitor__applicationsDidChange_didInstall___block_invoke(uint64_t a1)
{
  v1 = a1;
  v73 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  WeakRetained = objc_loadWeakRetained((v1 + 40));
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v3 = *(v1 + 32);
  obj = [v3 countByEnumeratingWithState:&v66 objects:v72 count:16];
  v4 = 0;
  if (obj)
  {
    v5 = *v67;
    v52 = v3;
    v53 = *v67;
    v49 = v1;
    do
    {
      for (i = 0; i != obj; i = i + 1)
      {
        if (*v67 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v66 + 1) + 8 * i);
        v8 = [v7 applicationType];
        if ([v8 isEqualToString:@"System"])
        {
        }

        else
        {
          v9 = [v7 isAppUpdate];

          if (v9)
          {
            continue;
          }
        }

        v10 = [objc_opt_class() _eventWithAppProxy:v7 didInstall:*(v1 + 48)];
        if (v10)
        {
          [v2 addObject:v10];
        }

        if ((*(v1 + 48) & 1) == 0)
        {
          v11 = [_DKAppInstallMonitor _identifierFromProxy:v7];
          if (v11)
          {
            if (!v4)
            {
              v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
            }

            v12 = [v7 correspondingApplicationRecord];
            v13 = [v12 appClipMetadata];

            v54 = v13;
            if (v13)
            {
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v14 = [v13 parentApplicationIdentifiers];
              v15 = [v14 countByEnumeratingWithState:&v62 objects:v71 count:16];
              if (v15)
              {
                v16 = v15;
                v50 = v4;
                v17 = *v63;
                while (2)
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v63 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:*(*(&v62 + 1) + 8 * j) error:0];

                    if (v19)
                    {
                      LODWORD(v13) = 1;
                      goto LABEL_26;
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v62 objects:v71 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }

                LODWORD(v13) = 0;
LABEL_26:
                v4 = v50;
                v3 = v52;
              }

              else
              {
                LODWORD(v13) = 0;
              }
            }

            v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v21 = [MEMORY[0x277CFE258] deletionPredicateForBundleID:v11];
            [v20 addObject:v21];

            if (v13)
            {
              v22 = MEMORY[0x277CCA920];
              v23 = v2;
              v24 = v4;
              v25 = MEMORY[0x277CFE260];
              v26 = [MEMORY[0x277CFE298] appUsageStream];
              v27 = [v26 name];
              v28 = [v25 predicateForEventsWithStreamName:v27];
              v29 = [v22 notPredicateWithSubpredicate:v28];

              v4 = v24;
              v2 = v23;
              v1 = v49;

              v3 = v52;
              [v20 addObject:v29];
            }

            v30 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v20];
            [v4 addObject:v30];
            [MEMORY[0x277CF19B0] pruneWithUninstalledBundleIdentifier:v11];

            v5 = v53;
          }
        }
      }

      obj = [v3 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (obj);
  }

  v51 = v4;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obja = v2;
  v31 = [obja countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v59;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(obja);
        }

        v35 = *(*(&v58 + 1) + 8 * k);
        v36 = objc_alloc(MEMORY[0x277CF0FE0]);
        v37 = [v35 stringValue];
        v38 = [v35 metadata];
        v39 = [MEMORY[0x277CFE160] isInstall];
        v40 = [v38 objectForKeyedSubscript:v39];
        v41 = [v36 initWithBundleID:v37 isInstall:v40];

        v42 = [WeakRetained source];
        [v42 sendEvent:v41];
      }

      v32 = [obja countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v32);
  }

  if ([obja count])
  {
    v43 = [WeakRetained historicalHandler];

    if (v43)
    {
      v44 = [WeakRetained historicalHandler];
      (v44)[2](v44, obja);
    }
  }

  if (v51)
  {
    if ([v51 count])
    {
      v45 = [WeakRetained historicalDeletingHandler];

      if (v45)
      {
        v46 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v51];
        v47 = [WeakRetained historicalDeletingHandler];
        (v47)[2](v47, v46);
      }
    }
  }

  v48 = [MEMORY[0x277CBEAA8] date];
  [WeakRetained setLastUpdate:v48];
}

@end