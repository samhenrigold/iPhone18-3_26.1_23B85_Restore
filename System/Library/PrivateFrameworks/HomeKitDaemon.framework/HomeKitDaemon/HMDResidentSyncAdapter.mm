@interface HMDResidentSyncAdapter
@end

@implementation HMDResidentSyncAdapter

id __HMDResidentSyncAdapter_1_1_block_invoke(uint64_t a1, void *a2)
{
  v102 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = toManyRelationship(v2, @"users");
  v71 = v3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      v9 = objectValue(v8, 1, @"privilege");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (!v11 || (v12 = [v11 unsignedIntegerValue], v11, v12 == 2))
      {
        [v4 removeObjectAtIndex:v7];
        --v6;
        if (v71)
        {
          v13 = objectValue(v8, 0, @"modelID");
          [v71 addObject:v13];
        }
      }

      else
      {
        ++v7;
      }
    }

    while (v7 < v6);
  }

  if ([v71 count])
  {
    v55 = v4;
    v56 = v2;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v4;
    v59 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v59)
    {
      v58 = *v93;
      do
      {
        v14 = 0;
        do
        {
          if (*v93 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v60 = v14;
          v15 = *(*(&v92 + 1) + 8 * v14);
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v62 = toManyRelationship(v15, @"bulletinRegistrations");
          v66 = [v62 countByEnumeratingWithState:&v88 objects:v100 count:16];
          if (v66)
          {
            v64 = *v89;
            do
            {
              v16 = 0;
              do
              {
                if (*v89 != v64)
                {
                  objc_enumerationMutation(v62);
                }

                v68 = v16;
                v17 = *(*(&v88 + 1) + 8 * v16);
                v84 = 0u;
                v85 = 0u;
                v86 = 0u;
                v87 = 0u;
                v18 = toManyRelationship(v17, @"conditions");
                v19 = [v18 countByEnumeratingWithState:&v84 objects:v99 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v85;
                  do
                  {
                    for (i = 0; i != v20; ++i)
                    {
                      if (*v85 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v84 + 1) + 8 * i);
                      v24 = objectValue(v23, 0, @"$type");
                      v25 = [v24 isEqualToString:@"MKFPresenceBulletinCondition"];

                      if (v25)
                      {
                        v26 = toManyRelationship(v23, @"users");
                        pruneArrayOfRefs(v26, v71);
                      }
                    }

                    v20 = [v18 countByEnumeratingWithState:&v84 objects:v99 count:16];
                  }

                  while (v20);
                }

                v16 = v68 + 1;
              }

              while (v68 + 1 != v66);
              v66 = [v62 countByEnumeratingWithState:&v88 objects:v100 count:16];
            }

            while (v66);
          }

          v14 = v60 + 1;
        }

        while (v60 + 1 != v59);
        v59 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
      }

      while (v59);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v69 = toManyRelationship(v56, @"accessories");
    v27 = [v69 countByEnumeratingWithState:&v80 objects:v98 count:16];
    v28 = v71;
    if (v27)
    {
      v29 = v27;
      v30 = *v81;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v81 != v30)
          {
            objc_enumerationMutation(v69);
          }

          v32 = *(*(&v80 + 1) + 8 * j);
          v33 = toManyRelationship(v32, @"usersWithListeningHistoryEnabled");
          pruneArrayOfRefs(v33, v71);

          v34 = toManyRelationship(v32, @"usersWithMediaContentProfileEnabled");
          pruneArrayOfRefs(v34, v71);

          v35 = toManyRelationship(v32, @"usersWithPersonalRequestsEnabled");
          pruneArrayOfRefs(v35, v71);

          v36 = toManyRelationship(v32, @"pairedUsers");
          pruneArrayOfRefs(v36, v71);
        }

        v29 = [v69 countByEnumeratingWithState:&v80 objects:v98 count:16];
      }

      while (v29);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v61 = toManyRelationship(v56, @"triggers");
    v65 = [v61 countByEnumeratingWithState:&v76 objects:v97 count:16];
    if (v65)
    {
      v63 = *v77;
      do
      {
        v37 = 0;
        do
        {
          if (*v77 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v70 = v37;
          v38 = *(*(&v76 + 1) + 8 * v37);
          v39 = objectValue(v38, 2, @"owner");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;

          if (v41)
          {
            v42 = [v41 objectForKeyedSubscript:@"modelID"];
            v43 = [v28 containsObject:v42];

            if (v43)
            {
              v44 = [v38 objectAtIndexedSubscript:2];
              [v44 setObject:0 forKeyedSubscript:@"owner"];
            }
          }

          v67 = v41;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v45 = toManyRelationship(v38, @"events");
          v46 = [v45 countByEnumeratingWithState:&v72 objects:v96 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v73;
            do
            {
              for (k = 0; k != v47; ++k)
              {
                if (*v73 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v72 + 1) + 8 * k);
                v51 = objectValue(v50, 0, @"$type");
                v52 = [v51 isEqualToString:@"Presence"];

                if (v52)
                {
                  v53 = toManyRelationship(v50, @"users");
                  pruneArrayOfRefs(v53, v71);
                }
              }

              v47 = [v45 countByEnumeratingWithState:&v72 objects:v96 count:16];
            }

            while (v47);
          }

          v28 = v71;
          v37 = v70 + 1;
        }

        while (v70 + 1 != v65);
        v65 = [v61 countByEnumeratingWithState:&v76 objects:v97 count:16];
      }

      while (v65);
    }

    v4 = v55;
    v2 = v56;
  }

  return v2;
}

@end