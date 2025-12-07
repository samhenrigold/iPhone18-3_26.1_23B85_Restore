@interface IMDDeletePartsHelper
+ (BOOL)_convertDeletedPartsDict:(id)dict toIndexSet:(id *)set toMap:(id *)map;
+ (id)_makeDeletePartsDictFor:(id)for withIndexes:(id)indexes withIndexToRangeMap:(id)map deleteDate:(id)date;
+ (unint64_t)_unsignedIntegerFromString:(id)string;
@end

@implementation IMDDeletePartsHelper

+ (id)_makeDeletePartsDictFor:(id)for withIndexes:(id)indexes withIndexToRangeMap:(id)map deleteDate:(id)date
{
  v38[4] = *MEMORY[0x277D85DE8];
  forCopy = for;
  indexesCopy = indexes;
  mapCopy = map;
  dateCopy = date;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22B628224;
  v27[3] = &unk_2787068E0;
  v29 = &v30;
  v14 = v13;
  v28 = v14;
  [indexesCopy enumerateIndexesUsingBlock:v27];
  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_22B6282A8;
  v25 = &unk_278706908;
  v16 = v15;
  v26 = v16;
  [mapCopy enumerateKeysAndObjectsUsingBlock:&v22];
  v37[0] = @"messageGuid";
  v37[1] = @"indexes";
  v38[0] = forCopy;
  v38[1] = v14;
  v38[2] = v16;
  v37[2] = @"indexToRange";
  v37[3] = @"deleteSubject";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{*(v31 + 24), v22, v23, v24, v25}];
  v38[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];

  v34 = v18;
  v35[0] = @"parts";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v36[0] = v19;
  v36[1] = MEMORY[0x277CBEC28];
  v35[1] = @"isPermanentDelete";
  v35[2] = @"recoverableDeleteDate";
  v36[2] = dateCopy;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

  _Block_object_dispose(&v30, 8);

  return v20;
}

+ (unint64_t)_unsignedIntegerFromString:(id)string
{
  v3 = [MEMORY[0x277CCAC80] scannerWithString:string];
  v6 = 0;
  [v3 scanUnsignedLongLong:&v6];
  v4 = v6;

  return v4;
}

+ (BOOL)_convertDeletedPartsDict:(id)dict toIndexSet:(id *)set toMap:(id *)map
{
  v39 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v9 = [dictCopy objectForKey:@"indexes"];
  v10 = [dictCopy objectForKey:@"indexToRange"];
  v11 = v10;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v37 = v13;
  if (v12)
  {
    v23 = 0;
  }

  else
  {
    if (set)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
      mapCopy = map;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = v9;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v16)
      {
        v17 = *v31;
        do
        {
          v18 = 0;
          do
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [v14 addIndex:{objc_msgSend(self, "_unsignedIntegerFromString:", *(*(&v30 + 1) + 8 * v18++), mapCopy)}];
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v16);
      }

      map = mapCopy;
      v19 = v14;
      *set = v14;
    }

    if (map)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_22B628780;
      v26[3] = &unk_278706930;
      v28 = &v34;
      selfCopy = self;
      v21 = v20;
      v27 = v21;
      [v11 enumerateKeysAndObjectsUsingBlock:v26];
      if (*(v35 + 24) == 1)
      {
        v22 = v21;
        *map = v21;
      }
    }

    v23 = *(v35 + 24);
  }

  _Block_object_dispose(&v34, 8);

  return v23 & 1;
}

@end