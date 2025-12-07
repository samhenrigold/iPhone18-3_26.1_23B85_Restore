@interface CSEventJournalStats
+ (BOOL)enumerateEventsWithJournalPath:(id)path protectionClasses:(id)classes itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block;
+ (BOOL)enumerateEventsWithProtectionClasses:(id)classes itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block;
+ (BOOL)enumerateEventsWithProtectionClasses:(id)classes updaters:(id)updaters itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block;
+ (id)generateStats;
@end

@implementation CSEventJournalStats

+ (id)generateStats
{
  v47 = *MEMORY[0x277D85DE8];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = [&unk_2846E7F50 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v23)
  {
    v21 = *v42;
    do
    {
      v2 = 0;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(&unk_2846E7F50);
        }

        v24 = v2;
        v26 = *(*(&v41 + 1) + 8 * v2);
        v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v3 = 0;
        do
        {
          v28 = protectionClassWithType(v3);
          v4 = eventsPath();
          v29 = v3;
          v5 = [v4 stringByAppendingFormat:@"/%@/%s", v26, getCSIndexTypeShortNameCString(v3)];

          v27 = v5;
          v6 = [[SKGJournalReader alloc] initWithResourceDirectoryPath:v5];
          v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          obj = [(SKGJournalReader *)v6 eventJournalPaths];
          v8 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v38;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v38 != v10)
                {
                  objc_enumerationMutation(obj);
                }

                v12 = *(*(&v37 + 1) + 8 * i);
                v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v35[0] = MEMORY[0x277D85DD0];
                v35[1] = 3221225472;
                v35[2] = __36__CSEventJournalStats_generateStats__block_invoke;
                v35[3] = &unk_27893CD40;
                v36 = v13;
                v33[0] = MEMORY[0x277D85DD0];
                v33[1] = 3221225472;
                v33[2] = __36__CSEventJournalStats_generateStats__block_invoke_2;
                v33[3] = &unk_27893CD40;
                v34 = v36;
                v31[0] = MEMORY[0x277D85DD0];
                v31[1] = 3221225472;
                v31[2] = __36__CSEventJournalStats_generateStats__block_invoke_3;
                v31[3] = &unk_27893CD68;
                v32 = v34;
                v14 = v34;
                [(SKGJournalReader *)v6 enumerateItemsOfJournalAtPath:v12 itemAdds:v35 itemUpdates:v33 itemDeletes:v31 cancelBlock:0];
                v15 = objc_alloc(MEMORY[0x277CCACA8]);
                v16 = eventsPath();
                v17 = [v15 initWithFormat:@"%@%@", @"file:///private", v16];

                absoluteString = [v12 absoluteString];
                v19 = [absoluteString stringByReplacingOccurrencesOfString:v17 withString:&stru_2846CE8D8];

                [v7 setObject:v14 forKeyedSubscript:v19];
              }

              v9 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v9);
          }

          [v25 setObject:v7 forKeyedSubscript:v28];
          v3 = v29 + 1;
        }

        while (v29 != 7);
        [v22 setObject:v25 forKeyedSubscript:v26];

        v2 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [&unk_2846E7F50 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v23);
  }

  return v22;
}

+ (BOOL)enumerateEventsWithJournalPath:(id)path protectionClasses:(id)classes itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block
{
  v97[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  classesCopy = classes;
  addsCopy = adds;
  updatesCopy = updates;
  deletesCopy = deletes;
  blockCopy = block;
  v15 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [defaultManager isReadableFileAtPath:pathCopy];

  if (v17)
  {
    v58 = v15;
    v59 = v17;
    v61 = pathCopy;
    v18 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v97[0] = *MEMORY[0x277CBE8E8];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:1];
    v57 = v18;
    v21 = [defaultManager2 enumeratorAtURL:v18 includingPropertiesForKeys:v20 options:4 errorHandler:&__block_literal_global_2];

    v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v60 = classesCopy;
    v22 = classesCopy;
    v23 = [v22 countByEnumeratingWithState:&v90 objects:v96 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v91;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v91 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v90 + 1) + 8 * i);
          v28 = indexTypeWithProtectionClass(v27);
          if ([v27 isEqualToString:@"MobileMailIndex"])
          {
            v29 = 6;
          }

          else
          {
            v29 = v28;
          }

          if (v29 <= 7)
          {
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:getCSIndexTypeShortNameCString(v29)];
            [v67 setValue:v27 forKey:v30];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v90 objects:v96 count:16];
      }

      while (v24);
    }

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v32 = v21;
    v33 = [v32 countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v87;
      v36 = 1;
      v62 = v32;
      v63 = v31;
      v64 = *v87;
      do
      {
        v37 = 0;
        v65 = v34;
        do
        {
          if (*v87 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v86 + 1) + 8 * v37);
          path = [v38 path];
          v40 = [v31 containsObject:path];

          if (v40)
          {
            v41 = v38;
          }

          else
          {
            lastPathComponent = [v38 lastPathComponent];
            v43 = [v67 valueForKey:lastPathComponent];

            v66 = v38;
            if (v43)
            {
              v44 = [SKGJournalReader alloc];
              path2 = [v38 path];
              v46 = [(SKGJournalReader *)v44 initWithResourceDirectoryPath:path2];

              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              obj = [(SKGJournalReader *)v46 eventJournalPaths];
              v47 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v83;
                while (2)
                {
                  for (j = 0; j != v48; ++j)
                  {
                    if (*v83 != v49)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v51 = *(*(&v82 + 1) + 8 * j);
                    v52 = objc_autoreleasePoolPush();
                    v79[0] = MEMORY[0x277D85DD0];
                    v79[1] = 3221225472;
                    v79[2] = __117__CSEventJournalStats_enumerateEventsWithJournalPath_protectionClasses_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_2;
                    v79[3] = &unk_27893CDB0;
                    v81 = addsCopy;
                    v53 = v43;
                    v80 = v53;
                    v76[0] = MEMORY[0x277D85DD0];
                    v76[1] = 3221225472;
                    v76[2] = __117__CSEventJournalStats_enumerateEventsWithJournalPath_protectionClasses_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_3;
                    v76[3] = &unk_27893CDB0;
                    v78 = updatesCopy;
                    v54 = v53;
                    v77 = v54;
                    v73[0] = MEMORY[0x277D85DD0];
                    v73[1] = 3221225472;
                    v73[2] = __117__CSEventJournalStats_enumerateEventsWithJournalPath_protectionClasses_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_4;
                    v73[3] = &unk_27893CDD8;
                    v75 = deletesCopy;
                    v74 = v54;
                    LODWORD(v51) = [(SKGJournalReader *)v46 enumerateItemsOfJournalAtPath:v51 itemAdds:v79 itemUpdates:v76 itemDeletes:v73 cancelBlock:blockCopy];

                    objc_autoreleasePoolPop(v52);
                    if (!v51)
                    {
                      v36 = 0;
                      goto LABEL_32;
                    }
                  }

                  v48 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
                  if (v48)
                  {
                    continue;
                  }

                  break;
                }

                v36 = 1;
LABEL_32:
                v32 = v62;
                v31 = v63;
              }

              v35 = v64;
              v34 = v65;
            }

            v41 = v66;
          }

          path3 = [v41 path];
          [v31 addObject:path3];

          ++v37;
        }

        while (v37 != v34);
        v34 = [v32 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v34);
    }

    else
    {
      v36 = 1;
    }

    classesCopy = v60;
    pathCopy = v61;
    LOBYTE(v17) = v59;
    v15 = v58;
  }

  else
  {
    v36 = 1;
  }

  objc_autoreleasePoolPop(v15);

  return v36 & 1 | ((v17 & 1) == 0);
}

+ (BOOL)enumerateEventsWithProtectionClasses:(id)classes itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block
{
  blockCopy = block;
  deletesCopy = deletes;
  updatesCopy = updates;
  addsCopy = adds;
  classesCopy = classes;
  v16 = objc_opt_class();
  v17 = eventsPath();
  LOBYTE(v16) = [v16 enumerateEventsWithJournalPath:v17 protectionClasses:classesCopy itemAdds:addsCopy itemUpdates:updatesCopy itemDeletes:deletesCopy cancelBlock:blockCopy];

  return v16;
}

+ (BOOL)enumerateEventsWithProtectionClasses:(id)classes updaters:(id)updaters itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  updatersCopy = updaters;
  addsCopy = adds;
  updatesCopy = updates;
  deletesCopy = deletes;
  blockCopy = block;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = updatersCopy;
  v18 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        v23 = eventsPath();
        v24 = [v23 stringByAppendingFormat:@"/%@", v22];

        LODWORD(v23) = [objc_opt_class() enumerateEventsWithJournalPath:v24 protectionClasses:classesCopy itemAdds:addsCopy itemUpdates:updatesCopy itemDeletes:deletesCopy cancelBlock:blockCopy];
        if (!v23)
        {
          v25 = 0;
          v26 = 0;
          goto LABEL_13;
        }
      }

      v19 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = 1;
LABEL_13:

  return v25 & v26;
}

@end