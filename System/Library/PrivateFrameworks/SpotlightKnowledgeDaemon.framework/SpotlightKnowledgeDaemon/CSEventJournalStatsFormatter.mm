@interface CSEventJournalStatsFormatter
+ (id)tabulateStats:(id)stats;
@end

@implementation CSEventJournalStatsFormatter

+ (id)tabulateStats:(id)stats
{
  v94 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (statsCopy)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v49 = statsCopy;
    obj = statsCopy;
    v51 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
    if (v51)
    {
      v50 = *v87;
      v66 = v4;
      do
      {
        v5 = 0;
        do
        {
          if (*v87 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v52 = v5;
          v6 = *(*(&v86 + 1) + 8 * v5);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v61 = v6;
          v53 = [obj objectForKeyedSubscript:?];
          v55 = [v53 countByEnumeratingWithState:&v82 objects:v92 count:16];
          if (v55)
          {
            v54 = *v83;
            do
            {
              v7 = 0;
              do
              {
                if (*v83 != v54)
                {
                  objc_enumerationMutation(v53);
                }

                v57 = v7;
                v8 = *(*(&v82 + 1) + 8 * v7);
                v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v61, v8];
                v10 = MEMORY[0x277CCACA8];
                v56 = v9;
                v11 = [v10 stringWithFormat:@"%s:\n", objc_msgSend(v56, "UTF8String")];
                [v4 addObject:v11];

                v12 = [obj objectForKeyedSubscript:v61];
                v60 = v8;
                v13 = [v12 objectForKeyedSubscript:v8];
                allKeys = [v13 allKeys];
                v15 = [allKeys sortedArrayUsingComparator:&__block_literal_global_3];

                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v58 = v15;
                v63 = [v58 countByEnumeratingWithState:&v78 objects:v91 count:16];
                if (v63)
                {
                  v59 = *v79;
                  do
                  {
                    v16 = 0;
                    do
                    {
                      if (*v79 != v59)
                      {
                        objc_enumerationMutation(v58);
                      }

                      v64 = v16;
                      v17 = *(*(&v78 + 1) + 8 * v16);
                      v18 = [obj objectForKeyedSubscript:v61];
                      v19 = [v18 objectForKeyedSubscript:v60];
                      v20 = [v19 objectForKeyedSubscript:v17];

                      v68 = v20;
                      allKeys2 = [v20 allKeys];
                      v22 = [allKeys2 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

                      v23 = MEMORY[0x277CCACA8];
                      uTF8String = [v17 UTF8String];
                      v25 = [v22 count];
                      v26 = &stru_2846CE8D8;
                      if (!v25)
                      {
                        v26 = @"\t<empty>";
                      }

                      v27 = [v23 stringWithFormat:@"%s[%s]:%@", "    ", uTF8String, v26];
                      [v4 addObject:v27];

                      v76 = 0u;
                      v77 = 0u;
                      v74 = 0u;
                      v75 = 0u;
                      v65 = v22;
                      v69 = [v65 countByEnumeratingWithState:&v74 objects:v90 count:16];
                      if (v69)
                      {
                        v67 = *v75;
                        do
                        {
                          for (i = 0; i != v69; ++i)
                          {
                            if (*v75 != v67)
                            {
                              objc_enumerationMutation(v65);
                            }

                            v73 = *(*(&v74 + 1) + 8 * i);
                            v29 = [v68 objectForKeyedSubscript:?];
                            v72 = objc_alloc(MEMORY[0x277CCACA8]);
                            v30 = [v29 objectForKeyedSubscript:@"add"];
                            v31 = v30;
                            if (v30)
                            {
                              v32 = v30;
                            }

                            else
                            {
                              v32 = &unk_2846E76B0;
                            }

                            v71 = v32;
                            v33 = [v29 objectForKeyedSubscript:@"addsWithNeedsEmbeddings"];
                            v34 = v33;
                            if (v33)
                            {
                              v35 = v33;
                            }

                            else
                            {
                              v35 = &unk_2846E76B0;
                            }

                            v70 = v35;
                            v36 = [v29 objectForKeyedSubscript:@"update"];
                            v37 = v36;
                            if (v36)
                            {
                              v38 = v36;
                            }

                            else
                            {
                              v38 = &unk_2846E76B0;
                            }

                            v39 = [v29 objectForKeyedSubscript:@"updatesWithNeedsEmbeddings"];
                            v40 = v39;
                            if (v39)
                            {
                              v41 = v39;
                            }

                            else
                            {
                              v41 = &unk_2846E76B0;
                            }

                            v42 = [v29 objectForKeyedSubscript:@"delete"];
                            v43 = v42;
                            if (v42)
                            {
                              v44 = v42;
                            }

                            else
                            {
                              v44 = &unk_2846E76B0;
                            }

                            v45 = [v72 initWithFormat:@"%s%s[%@]\t-> Adds:%@\tAddsWithNeedsEmbeddings:%@\tUpdates:%@\tUpdatesWithNeedsEmbeddings:%@\tDeletes:%@", "    ", "    ", v73, v71, v70, v38, v41, v44];

                            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", objc_msgSend(v45, "UTF8String")];
                            v4 = v66;
                            [v66 addObject:v46];
                          }

                          v69 = [v65 countByEnumeratingWithState:&v74 objects:v90 count:16];
                        }

                        while (v69);
                      }

                      [v4 addObject:@"\n"];
                      v16 = v64 + 1;
                    }

                    while (v64 + 1 != v63);
                    v63 = [v58 countByEnumeratingWithState:&v78 objects:v91 count:16];
                  }

                  while (v63);
                }

                v7 = v57 + 1;
              }

              while (v57 + 1 != v55);
              v55 = [v53 countByEnumeratingWithState:&v82 objects:v92 count:16];
            }

            while (v55);
          }

          v5 = v52 + 1;
        }

        while (v52 + 1 != v51);
        v51 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
      }

      while (v51);
    }

    v47 = [v4 componentsJoinedByString:@"\n"];
    statsCopy = v49;
  }

  else
  {
    v47 = @"empty stats";
  }

  return v47;
}

BOOL __46__CSEventJournalStatsFormatter_tabulateStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a2 componentsSeparatedByString:@"_"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v35 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 containsString:@".journal"])
        {
          v12 = [v10 componentsSeparatedByString:@"."];
          v11 = [v12 objectAtIndexedSubscript:0];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  [v4 componentsSeparatedByString:@"_"];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v31 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * j);
        if ([v18 containsString:{@".journal", v28}])
        {
          v20 = [v18 componentsSeparatedByString:@"."];
          v19 = [v20 objectAtIndexedSubscript:0];

          goto LABEL_21;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_21:

  v21 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v22 = v21;
  v23 = 1;
  if (v11 && v19)
  {
    v24 = [v21 numberFromString:v11];
    v25 = [v24 unsignedLongLongValue];
    v26 = [v22 numberFromString:v19];
    v23 = v25 > [v26 unsignedLongLongValue];
  }

  return v23;
}

@end