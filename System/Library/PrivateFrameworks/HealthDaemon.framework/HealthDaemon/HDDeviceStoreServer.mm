@interface HDDeviceStoreServer
+ (id)requiredEntitlements;
- (void)remote_deleteDevice:(id)device completion:(id)completion;
- (void)remote_fetchAllDevicesWithCompletion:(id)completion;
- (void)remote_fetchDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion;
- (void)remote_fetchGymkitAndBluetoothDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion;
@end

@implementation HDDeviceStoreServer

- (void)remote_fetchDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion
{
  completionCopy = completion;
  propertyCopy = property;
  valuesCopy = values;
  profile = [(HDStandardTaskServer *)self profile];
  deviceManager = [profile deviceManager];
  v15 = 0;
  v13 = [deviceManager devicesWithProperty:propertyCopy matchingValues:valuesCopy error:&v15];

  v14 = v15;
  completionCopy[2](completionCopy, v13, v14);
}

- (void)remote_fetchGymkitAndBluetoothDevicesMatchingValues:(id)values forProperty:(id)property completion:(id)completion
{
  v110 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  propertyCopy = property;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  sourceManager = [profile sourceManager];
  v13 = *MEMORY[0x277CCE288];
  v101 = 0;
  v14 = [sourceManager allSourcesForBundleIdentifier:v13 error:&v101];
  v15 = v101;

  if (v14)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    sourceManager2 = [profile2 sourceManager];
    v18 = *MEMORY[0x277CCE2C0];
    v100 = v15;
    v19 = [sourceManager2 allSourcesForBundleIdentifier:v18 error:&v100];
    v20 = v100;

    if (v19)
    {
      selfCopy = self;
      profile3 = [(HDStandardTaskServer *)self profile];
      sourceManager3 = [profile3 sourceManager];
      v23 = *MEMORY[0x277CCE420];
      v99 = v20;
      v24 = [sourceManager3 allSourcesForBundleIdentifier:v23 error:&v99];
      v25 = v99;

      if (v24)
      {
        v75 = v24;
        v76 = v19;
        v74 = completionCopy;
        v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v73 = v14;
        v27 = v14;
        v28 = [v27 countByEnumeratingWithState:&v95 objects:v109 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v96;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v96 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v95 + 1) + 8 * i), "persistentID")}];
              [v26 addObject:v32];
            }

            v29 = [v27 countByEnumeratingWithState:&v95 objects:v109 count:16];
          }

          while (v29);
        }

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v33 = v76;
        v34 = [v33 countByEnumeratingWithState:&v91 objects:v108 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v92;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v92 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v91 + 1) + 8 * j), "persistentID")}];
              [v26 addObject:v38];
            }

            v35 = [v33 countByEnumeratingWithState:&v91 objects:v108 count:16];
          }

          while (v35);
        }

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v39 = v24;
        v40 = [v39 countByEnumeratingWithState:&v87 objects:v107 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v88;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v88 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v87 + 1) + 8 * k), "persistentID")}];
              [v26 addObject:v44];
            }

            v41 = [v39 countByEnumeratingWithState:&v87 objects:v107 count:16];
          }

          while (v41);
        }

        v45 = selfCopy;
        profile4 = [(HDStandardTaskServer *)selfCopy profile];
        dataProvenanceManager = [profile4 dataProvenanceManager];
        profile5 = [(HDStandardTaskServer *)selfCopy profile];
        v86 = v25;
        v49 = [dataProvenanceManager deviceIDsForSourceIDs:v26 profile:profile5 error:&v86];
        v50 = v86;

        v72 = v49;
        if (v49)
        {
          v70 = propertyCopy;
          v71 = valuesCopy;
          v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          obj = v49;
          v52 = [obj countByEnumeratingWithState:&v82 objects:v106 count:16];
          v78 = v51;
          if (v52)
          {
            v53 = v52;
            v54 = *v83;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                v56 = v50;
                if (*v83 != v54)
                {
                  objc_enumerationMutation(obj);
                }

                v57 = *(*(&v82 + 1) + 8 * m);
                profile6 = [(HDStandardTaskServer *)v45 profile];
                deviceManager = [profile6 deviceManager];
                v81 = v50;
                v60 = [deviceManager deviceForPersistentID:v57 error:&v81];
                v50 = v81;

                if (v60)
                {
                  [v78 addObject:v60];
                  v45 = selfCopy;
                }

                else
                {
                  _HKInitializeLogging();
                  v61 = *MEMORY[0x277CCC2A0];
                  v45 = selfCopy;
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v103 = selfCopy;
                    v104 = 2114;
                    v105 = v57;
                    _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "%@: Failed to fetch device with ID: %{public}@", buf, 0x16u);
                  }
                }
              }

              v53 = [obj countByEnumeratingWithState:&v82 objects:v106 count:16];
            }

            while (v53);
          }

          v62 = v45;
          v63 = v50;

          profile7 = [(HDStandardTaskServer *)v62 profile];
          deviceManager2 = [profile7 deviceManager];
          v80 = v50;
          propertyCopy = v70;
          valuesCopy = v71;
          v66 = [deviceManager2 devicesWithProperty:v70 matchingValues:v71 error:&v80];
          v50 = v80;

          v14 = v73;
          if (v66)
          {
            allObjects = [v66 allObjects];
            v68 = v78;
            [v78 addObjectsFromArray:allObjects];

            v69 = [MEMORY[0x277CBEB98] setWithArray:v78];
            completionCopy = v74;
            (v74)[2](v74, v69, 0);
          }

          else
          {
            completionCopy = v74;
            v74[2](v74, 0, v50);
            v68 = v78;
          }
        }

        else
        {
          completionCopy = v74;
          v74[2](v74, 0, v50);
          v14 = v73;
        }

        v24 = v75;

        v25 = v50;
        v19 = v76;
      }

      else
      {
        completionCopy[2](completionCopy, 0, v25);
      }

      v20 = v25;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v20);
    }

    v15 = v20;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)remote_fetchAllDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  deviceManager = [profile deviceManager];
  v9 = 0;
  v7 = [deviceManager allDevicesWithError:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_deleteDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  profile = [(HDStandardTaskServer *)self profile];
  deviceManager = [profile deviceManager];
  v12 = 0;
  v10 = [deviceManager deleteDevice:deviceCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

+ (id)requiredEntitlements
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end