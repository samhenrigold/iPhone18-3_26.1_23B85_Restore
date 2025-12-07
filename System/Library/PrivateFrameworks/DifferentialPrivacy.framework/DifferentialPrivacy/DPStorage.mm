@interface DPStorage
@end

@implementation DPStorage

uint64_t __31___DPStorage_removeBadObjects___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

void __29___DPStorage_errorStringFor___block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_283975F58;
  v2[1] = &unk_283975F70;
  v3[0] = @"Not an error";
  v3[1] = @"Unknown error";
  v2[2] = &unk_283975F88;
  v2[3] = &unk_283975FA0;
  v3[2] = @"Invalid parameter";
  v3[3] = @"Empty Array";
  v2[4] = &unk_283975FB8;
  v2[5] = &unk_283975FD0;
  v3[4] = @"Empty Array after removing bad objects";
  v3[5] = @"Permission denied";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = errorStringFor__errorsDict;
  errorStringFor__errorsDict = v0;
}

void __47___DPStorage_handleEmptyArrayError_completion___block_invoke(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() errorStringFor:a1[6]];
  v3 = a1[5];
  v4 = MEMORY[0x277CCA9B8];
  v5 = +[_DPStrings errorDomain];
  v6 = a1[6];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v7];
  (*(v3 + 16))(v3, 0, v8);
}

void __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() errorStringFor:5];
  v3 = MEMORY[0x277CCA9B8];
  v4 = +[_DPStrings errorDomain];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v3 errorWithDomain:v4 code:5 userInfo:v5];

  (*(*(a1 + 40) + 16))();
}

void __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() createFetchRequestFor:*(a1 + 40) entityName:*(a1 + 48) predicate:*(a1 + 56) fetchLimit:0 fetchOffset:0];
  [v2 setIncludesSubentities:0];
  [v2 setIncludesPropertyValues:0];
  [v2 setResultType:4];
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = [v3 countForFetchRequest:v2 error:&v17];
  v5 = v17;
  if (v5)
  {
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_81;
    block[3] = &unk_27858AFB8;
    v16 = *(a1 + 72);
    v15 = v5;
    dispatch_async(v6, block);

    [*(a1 + 40) reset];
    v7 = &v16;
    v8 = &v15;
  }

  else
  {
    [*(a1 + 40) reset];
    v9 = [*(a1 + 32) queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2_82;
    v10[3] = &unk_27858AFE0;
    v13[0] = *(a1 + 72);
    v13[1] = v4;
    v11 = 0;
    v12 = *(a1 + 64);
    dispatch_async(v9, v10);

    v7 = v13;
    v8 = &v11;
  }
}

void __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2_82(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() errorStringFor:5];
  v3 = MEMORY[0x277CCA9B8];
  v4 = +[_DPStrings errorDomain];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v3 errorWithDomain:v4 code:5 userInfo:v5];

  (*(*(a1 + 40) + 16))();
}

void __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() createFetchRequestFor:*(a1 + 40) entityName:*(a1 + 48) predicate:*(a1 + 56) fetchLimit:*(a1 + 80) fetchOffset:*(a1 + 88)];
  [v2 setIncludesSubentities:0];
  [v2 setPropertiesToFetch:&unk_2839762D8];
  [v2 setPropertiesToGroupBy:&unk_2839762F0];
  [v2 setResultType:2];
  v3 = *(a1 + 40);
  v27 = 0;
  v14 = [v3 executeFetchRequest:v2 error:&v27];
  v4 = v27;
  if (v4)
  {
    v5 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_90;
    block[3] = &unk_27858AFB8;
    v26 = *(a1 + 72);
    v25 = v4;
    dispatch_async(v5, block);

    [*(a1 + 40) reset];
    v6 = v26;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v14;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:@"key"];
          if (v12)
          {
            [v7 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v9);
    }

    [*(a1 + 40) reset];
    v13 = [*(a1 + 32) queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2_92;
    v15[3] = &unk_27858B030;
    v19 = *(a1 + 72);
    v16 = v7;
    v17 = 0;
    v18 = *(a1 + 64);
    v6 = v7;
    dispatch_async(v13, v15);
  }
}

void __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2_92(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() errorStringFor:5];
  v3 = MEMORY[0x277CCA9B8];
  v4 = +[_DPStrings errorDomain];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v3 errorWithDomain:v4 code:5 userInfo:v5];

  (*(*(a1 + 40) + 16))();
}

void __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v29 = [objc_opt_class() createFetchRequestFor:*(a1 + 40) entityName:*(a1 + 48) predicate:*(a1 + 56) fetchLimit:*(a1 + 80) fetchOffset:*(a1 + 88)];
  if (*(a1 + 104) == 1)
  {
    v2 = [v29 copy];
    [v2 setResultType:1];
    if (*(v1 + 80) <= 0x32uLL)
    {
      v3 = 50;
    }

    else
    {
      v3 = *(v1 + 80);
    }

    [v2 setFetchLimit:v3];
    v4 = *(v1 + 40);
    v48 = 0;
    v28 = v2;
    obj = [v4 executeFetchRequest:v2 error:&v48];
    v5 = v48;
    if (v5)
    {
      v6 = [*(v1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_94;
      block[3] = &unk_27858AFB8;
      v7 = *(a1 + 72);
      v46 = v5;
      v47 = v7;
      v8 = v5;
      dispatch_async(v6, block);

      [*(a1 + 40) reset];
      goto LABEL_23;
    }

    v9 = [objc_opt_class() shuffleOrderOfRecords:obj count:*(a1 + 80)];
    v10 = *(a1 + 80);
    if (v10 >= [v9 count])
    {
      v11 = [v9 count];
    }

    else
    {
      v11 = *(a1 + 80);
    }

    v12 = [v9 subarrayWithRange:{0, v11}];

    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(self IN %@)", v12];
    [v29 setPredicate:v13];

    v1 = a1;
  }

  v14 = *(v1 + 40);
  v44 = 0;
  obj = [v14 executeFetchRequest:v29 error:&v44];
  v28 = v44;
  if (v28)
  {
    v15 = [*(v1 + 32) queue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_99;
    v41[3] = &unk_27858AFB8;
    v43 = *(a1 + 72);
    v28 = v28;
    v42 = v28;
    dispatch_async(v15, v41);

    [*(a1 + 40) reset];
    v8 = v43;
  }

  else
  {
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = obj;
    v17 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v17)
    {
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [*(a1 + 32) converterFromEntity];
          v23 = [v20 entity];
          v24 = [v23 name];
          v25 = [v22 objectForKeyedSubscript:v24];

          v26 = [v25 createRecordFromManagedObject:v20];
          if (v26)
          {
            [v16 addObject:v26];
          }

          objc_autoreleasePoolPop(v21);
        }

        v17 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v17);
    }

    [*(a1 + 40) reset];
    v27 = [*(a1 + 32) queue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2_100;
    v32[3] = &unk_27858B030;
    v36 = *(a1 + 72);
    v33 = v16;
    v34 = 0;
    v35 = *(a1 + 64);
    v8 = v16;
    dispatch_async(v27, v32);
  }

LABEL_23:
}

void __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2_100(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __50___DPStorage_saveRecords_andFlush_withCompletion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    v7 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = [objc_opt_class() description];
        v11 = [v2 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = [v7 mutableCopy];
          [v2 setObject:v12 forKey:v10];
        }

        v13 = [v2 objectForKeyedSubscript:v10];
        [v13 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v2 allKeys];
  v14 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * j);
        v20 = [v2 objectForKeyedSubscript:v19];
        v21 = [v20 copy];

        v22 = [*(a1 + 32) converterFromClass];
        v23 = [v22 objectForKeyedSubscript:v19];

        v24 = [v23 insertRecords:v21 inManagedObjectContext:*(a1 + 40)];
        v25 = [v21 count];
        v16 += v25 - [v24 count];
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v15);
    v26 = v16 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 40) save:0];
  }

  if (*(a1 + 48))
  {
    v27 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___DPStorage_saveRecords_andFlush_withCompletion___block_invoke_2;
    block[3] = &unk_27858B0A8;
    v30 = *(a1 + 48);
    v31 = v26;
    dispatch_async(v27, block);
  }
}

void __43___DPStorage_updateRecords_withCompletion___block_invoke(id *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v57;
    v7 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v57 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = [objc_opt_class() description];
        v11 = [v2 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = [v7 mutableCopy];
          [v2 setObject:v12 forKey:v10];
        }

        v13 = [v2 objectForKeyedSubscript:v10];
        [v13 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v5);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [v2 allKeys];
  v43 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v43)
  {
    v41 = v2;
    v42 = a1;
    v14 = 0;
    v40 = *v53;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v14;
        v16 = *(*(&v52 + 1) + 8 * j);
        v17 = [v2 objectForKeyedSubscript:v16];
        v18 = [v17 copy];

        v19 = MEMORY[0x277CBEBF8];
        v20 = [MEMORY[0x277CBEBF8] mutableCopy];
        v21 = [v19 mutableCopy];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v22 = v18;
        v23 = [v22 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v49;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v49 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v48 + 1) + 8 * k);
              v28 = [v27 objectId];

              if (v28)
              {
                v29 = v21;
              }

              else
              {
                v29 = v20;
              }

              [v29 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v48 objects:v60 count:16];
          }

          while (v24);
        }

        v30 = [v42[5] converterFromClass];
        v31 = [v30 objectForKeyedSubscript:v16];

        v32 = [v31 insertRecords:v20 inManagedObjectContext:v42[6]];
        v33 = [v20 count];
        v34 = [v32 count];
        v35 = [v31 updateRecords:v21 inManagedObjectContext:v42[6]];

        v36 = [v21 count];
        v14 = v33 + v44 - v34 + v36 - [v35 count];

        v2 = v41;
      }

      v43 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v43);
    v37 = v14 == 0;
    a1 = v42;
  }

  else
  {
    v37 = 1;
  }

  [a1[6] save:0];
  if (a1[7])
  {
    v38 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43___DPStorage_updateRecords_withCompletion___block_invoke_2;
    block[3] = &unk_27858B0A8;
    v46 = a1[7];
    v47 = v37;
    dispatch_async(v38, block);
  }
}

void __43___DPStorage_deleteRecords_withCompletion___block_invoke(id *a1)
{
  v2 = [a1[4] valueForKey:@"objectId"];
  v3 = [v2 copy];

  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithObjectIDs:v3];
  [v4 setResultType:2];
  v5 = [a1[5] executeRequest:v4 error:0];
  v6 = [v5 result];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v3 count];
  [a1[5] reset];
  if (a1[7])
  {
    v9 = v7 == v8;
    v10 = [a1[6] queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43___DPStorage_deleteRecords_withCompletion___block_invoke_2;
    v11[3] = &unk_27858B0A8;
    v12 = a1[7];
    v13 = v9;
    dispatch_async(v10, v11);
  }
}

void __51___DPStorage_deleteAllRecordsByKey_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [_DPRecordQueryPredicates predicateForKey:*(a1 + 32)];
  v3 = [objc_opt_class() createFetchRequestFor:*(a1 + 48) entityName:*(a1 + 56) predicate:v2 fetchLimit:0 fetchOffset:0];
  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v3];
  [v4 setResultType:0];
  v5 = [*(a1 + 48) executeRequest:v4 error:0];
  v6 = [v5 result];
  v7 = [v6 BOOLValue];

  [*(a1 + 48) reset];
  if (*(a1 + 64))
  {
    v8 = [*(a1 + 40) queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51___DPStorage_deleteAllRecordsByKey_withCompletion___block_invoke_2;
    v9[3] = &unk_27858B0A8;
    v10 = *(a1 + 64);
    v11 = v7;
    dispatch_async(v8, v9);
  }
}

void __54___DPStorage_scheduleStorageCullingWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) coredataStorage];
  v7 = [v6 deleteVersionMismatchRecords:*(a1 + 48) entities:*(a1 + 40) limit:*(a1 + 56)];
  v8 = +[_DPLog framework];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(&dword_22622D000, v8, OS_LOG_TYPE_INFO, "Deleted %ld records with report version mismatch", &v11, 0xCu);
  }

  v9 = [v6 deleteSubmittedRecords:*(a1 + 48) entities:*(a1 + 40) limit:*(a1 + 56)];
  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_22622D000, v10, OS_LOG_TYPE_INFO, "Deleted %ld submitted records", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
}

void __51___DPStorage_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) coredataStorage];
  v7 = [v6 deleteOldObjectsToLimitTotalNumber:*(a1 + 48) entities:*(a1 + 40) limit:*(a1 + 56)];
  v8 = +[_DPLog framework];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = v7;
    _os_log_impl(&dword_22622D000, v8, OS_LOG_TYPE_INFO, "Deleted %ld records to enforce total size limit on the database", &v12, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*(a1 + 64)];
  v10 = [v6 deleteObjectsOlderThanDate:v9 entities:*(a1 + 40) limit:*(a1 + 56)];
  v11 = +[_DPLog framework];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = v10;
    _os_log_impl(&dword_22622D000, v11, OS_LOG_TYPE_INFO, "Deleted %ld old records", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
}

@end