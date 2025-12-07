@interface KSUserWordsSynchroniser
@end

@implementation KSUserWordsSynchroniser

void __42___KSUserWordsSynchroniser_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_synchroniser;
  sharedInstance_synchroniser = v1;
}

void __68___KSUserWordsSynchroniser_initForTestingWithManager_enablePushing___block_invoke(uint64_t a1)
{
  v2 = [_KSSystemTask alloc];
  v3 = _KSGetSetting(ksDefaultPushTime, &unk_28679DA60);
  v4 = [v3 intValue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68___KSUserWordsSynchroniser_initForTestingWithManager_enablePushing___block_invoke_59;
  v9[3] = &unk_2797F7510;
  v10 = *(a1 + 32);
  v5 = [(_KSSystemTask *)v2 initWithName:@"com.apple.keyboardServices.userWords.pusher" isPeriodic:1 period:v4 handler:v9];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  if (*(*(a1 + 32) + 40) == 1)
  {
    v8 = +[_KSTaskScheduler sharedInstance];
    [v8 registerTask:*(*(a1 + 32) + 32)];
  }
}

void __68___KSUserWordsSynchroniser_initForTestingWithManager_enablePushing___block_invoke_59(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 checkForDownload:0 uploads:0 allLanguages:0];
  v3[2]();
}

void __45___KSUserWordsSynchroniser_accountDidChange___block_invoke(void *a1)
{
  v1 = a1;
  *(a1[4] + 40) = 0;
  if (*(a1 + 48) == 1)
  {
    v2 = KSCategory(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_1();
    }

    a1 = [v1[4] disable];
  }

  if (v1[5] == 1)
  {
    if (*(v1 + 49))
    {
      if (*(v1 + 50))
      {
        [v1[4] checkConfiguration];
        *(v1[4] + 40) = 1;
        if (*(v1[4] + 32))
        {
          if (*(v1 + 48) == 1)
          {
            v3 = +[_KSTaskScheduler sharedInstance];
            [v3 registerTask:*(v1[4] + 32)];
          }
        }

        return;
      }

      v4 = KSCategory(a1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_4();
      }
    }

    else
    {
      v4 = KSCategory(a1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_3();
      }
    }
  }

  else
  {
    v4 = KSCategory(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_2();
    }
  }

  if ([*(v1[4] + 24) checkIfExists])
  {
    [v1[4] disable];
  }
}

void __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke_2;
  v7[3] = &unk_2797F66D8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke_2(uint64_t a1)
{
  v2 = KSCategory(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke_2_cold_1();
  }

  *(*(a1 + 32) + 57) = 0;
  *(*(a1 + 32) + 58) = 1;
  [*(a1 + 32) checkConfiguration];
  return (*(*(a1 + 40) + 16))();
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_3;
  v6[3] = &unk_2797F76B0;
  v7 = v3;
  v5 = v3;
  [v4 modifyInformationWithOperations:v6];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_4(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if ([*(a1[6] + 3) checkIfExists])
  {
    if (!v3)
    {
      v4 = [a1[6] information];
      v3 = [v4 objectForKey:@"Languages"];

      if (!v2)
      {
        v3 = v3;
        v2 = v3;
      }
    }

    [a1[6] checkProgress:0 withInfo:MEMORY[0x277CBEC38]];
    if ([a1[7] count])
    {
      v5 = 0;
    }

    else
    {
      (*(a1[8] + 2))();
      v5 = 1;
    }

    v6 = [objc_opt_class() infoClass];
    v7 = a1[6];
    v8 = a1[7];
    v9 = v2;
    v10 = v8;
    v11 = v10;
    v12 = v10;
    if (v9 && (v12 = v9, v10))
    {
      v13 = [v9 arrayByAddingObjectsFromArray:v10];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;

    v15 = [v7 generateRecordListForLanguages:v14];

    v16 = a1[6];
    v17 = [v15 allKeys];
    v18 = +[_KSUserWordsInfo keyNamesExcludingData];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5;
    v22[3] = &unk_2797F77A0;
    v19 = a1[6];
    v20 = a1[7];
    v23 = v15;
    v24 = v19;
    v29 = v6;
    v25 = v20;
    v2 = v9;
    v26 = v2;
    v30 = v5;
    v28 = a1[8];
    v3 = v3;
    v27 = v3;
    v21 = v15;
    [v16 readFilesWithRecordIDs:v17 forColumns:v18 priority:v5 withCompletionHandler:v22];
  }

  else
  {
    [a1[6] checkProgress:0 withInfo:MEMORY[0x277CBEC28]];
  }
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = KSCategory(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5_cold_1();
    }
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v93;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v93 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(a1 + 32) objectForKeyedSubscript:*(*(&v92 + 1) + 8 * i)];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v12);
  }

  v16 = *(a1 + 40);
  v68 = v9;
  v69 = v7;
  if (v7)
  {
    v103[0] = @"Error";
    v103[1] = @"Languages";
    v104[0] = v7;
    v104[1] = v9;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v104;
    v19 = v103;
    v20 = 2;
  }

  else
  {
    v101 = @"Languages";
    v102 = v9;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v102;
    v19 = &v101;
    v20 = 1;
  }

  v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  [v16 checkProgress:1 withInfo:v21];

  v22 = MEMORY[0x277CBEB18];
  v23 = [*(a1 + 32) allKeys];
  v24 = [v22 arrayWithArray:v23];

  v25 = [v10 allKeys];
  v71 = v24;
  [v24 removeObjectsInArray:v25];

  v73 = [MEMORY[0x277CBEB18] array];
  v72 = [MEMORY[0x277CBEB38] dictionary];
  v70 = [MEMORY[0x277CBEB38] dictionary];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v26 = v10;
  v76 = [v26 countByEnumeratingWithState:&v88 objects:v100 count:16];
  if (v76)
  {
    v74 = v26;
    v75 = *v89;
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v89 != v75)
        {
          objc_enumerationMutation(v26);
        }

        v28 = *(*(&v88 + 1) + 8 * j);
        v29 = *(a1 + 80);
        v30 = [v26 objectForKeyedSubscript:v28];
        v31 = [v29 infoWithRecord:v30];

        v32 = *(a1 + 80);
        v33 = [*(a1 + 32) objectForKeyedSubscript:v28];
        v34 = [v32 filesForLanguage:v33];

        v35 = [*(a1 + 80) infoWithFiles:v34];
        v36 = v35;
        if (v34)
        {
          v37 = v35 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          if ([v35 isBetterThan:v31])
          {
            v45 = *(a1 + 56);
            v46 = [*(a1 + 32) objectForKeyedSubscript:v28];
            LODWORD(v45) = [v45 containsObject:v46];

            if (v45)
            {
              [v71 addObject:v28];
              [v72 setObject:v36 forKey:v71];
              [v70 setObject:v34 forKey:v71];
              v47 = @"Ours is better";
LABEL_38:
              v52 = [(__CFString *)v47 stringByAppendingFormat:@" (ours = %@ theirs = %@)", v36, v31];;

              v53 = *(a1 + 40);
              v96[0] = @"RecordID";
              v54 = [v28 recordName];
              v97[0] = v54;
              v96[1] = @"Language";
              v55 = [*(a1 + 32) objectForKeyedSubscript:v28];
              v56 = v55;
              v57 = @"LANGUAGE MISSING";
              if (v55)
              {
                v57 = v55;
              }

              v96[2] = @"Disposition";
              v97[1] = v57;
              v97[2] = v52;
              v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
              [v53 checkProgress:2 withInfo:v58];

              v26 = v74;
              goto LABEL_41;
            }

            v50 = @"Ours is better";
            v51 = @" [upload disabled]";
          }

          else
          {
            v47 = @"Equal!";
            if (![v31 isBetterThan:v36])
            {
              goto LABEL_38;
            }

            v48 = *(a1 + 48);
            v49 = [*(a1 + 32) objectForKeyedSubscript:v28];
            LODWORD(v48) = [v48 containsObject:v49];

            if (v48)
            {
              [v73 addObject:v28];
              [v72 setObject:v36 forKey:v73];
              v47 = @"Server is better";
              goto LABEL_38;
            }

            v50 = @"Server is better";
            v51 = @" [download disabled]";
          }

          v47 = [(__CFString *)v50 stringByAppendingString:v51];
          goto LABEL_38;
        }

        v98[0] = @"Language";
        v38 = *(a1 + 40);
        v39 = [*(a1 + 32) objectForKeyedSubscript:v28];
        v40 = v39;
        v41 = @"LANGUAGE MISSING";
        if (v39)
        {
          v41 = v39;
        }

        v98[1] = @"Disposition";
        v99[0] = v41;
        v99[1] = @"No local copy";
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
        [v38 checkProgress:2 withInfo:v42];

        v43 = *(a1 + 48);
        v44 = [*(a1 + 32) objectForKeyedSubscript:v28];
        LODWORD(v43) = [v43 containsObject:v44];

        if (v43)
        {
          [v73 addObject:v28];
        }

LABEL_41:
      }

      v76 = [v26 countByEnumeratingWithState:&v88 objects:v100 count:16];
    }

    while (v76);
  }

  v59 = *(*(a1 + 40) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_131;
  block[3] = &unk_2797F7778;
  v78 = v71;
  v79 = v72;
  v60 = *(a1 + 80);
  v80 = v70;
  v86 = v60;
  v61 = *(a1 + 32);
  v62 = *(a1 + 40);
  v81 = v61;
  v82 = v62;
  v63 = *(a1 + 88);
  v83 = v73;
  v87 = v63;
  v85 = *(a1 + 72);
  v84 = *(a1 + 64);
  v64 = v73;
  v65 = v70;
  v66 = v72;
  v67 = v71;
  dispatch_async(v59, block);
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_131(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  group = dispatch_group_create();
  v40 = [MEMORY[0x277CBEB38] dictionary];
  v43 = [MEMORY[0x277CBEB18] array];
  v42 = [MEMORY[0x277CBEB18] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  v46 = *v61;
  do
  {
    v4 = 0;
    v44 = v3;
    do
    {
      if (*v61 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v60 + 1) + 8 * v4);
      v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"UserWordFile" recordID:v5];
      v7 = [*(a1 + 40) objectForKey:v5];
      v8 = [*(a1 + 48) objectForKey:v5];
      if (v8)
      {
        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v21 = *(a1 + 96);
        [*(a1 + 56) objectForKeyedSubscript:v5];
        v23 = v22 = v6;
        v8 = [v21 filesForLanguage:v23];

        v6 = v22;
        if (v7)
        {
          goto LABEL_8;
        }
      }

      v7 = [*(a1 + 96) infoWithFiles:v8];
LABEL_8:
      if (v8)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v65[0] = @"Language";
        v10 = v6;
        v11 = *(a1 + 64);
        v12 = [*(a1 + 56) objectForKeyedSubscript:v5];
        v15 = v12;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = @"LANGUAGE MISSING";
        }

        v65[1] = @"Disposition";
        v66[0] = v13;
        v66[1] = @"No local copy for initial push";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v14 = v11;
        v19 = v10;
        [v14 checkProgress:2 withInfo:v20];
      }

      else
      {
        v15 = [v8 serialiseToTemporaryFile];
        [v7 saveToRecord:v6];
        v16 = v6;
        v17 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v15];
        v18 = [*(a1 + 96) keyForData];
        [v16 setObject:v17 forKeyedSubscript:v18];

        v3 = v44;
        v19 = v16;
        [v43 addObject:v16];
        v20 = [*(a1 + 56) objectForKeyedSubscript:v5];
        [v42 addObject:v20];
      }

      ++v4;
    }

    while (v3 != v4);
    v24 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    v3 = v24;
  }

  while (v24);
LABEL_22:

  if ([v43 count])
  {
    v25 = group;
    dispatch_group_enter(group);
    [*(a1 + 64) checkProgress:3 withInfo:v42];
    v26 = *(a1 + 64);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137;
    v57[3] = &unk_2797F7700;
    v27 = v40;
    v58 = v40;
    v59 = group;
    [v26 overwriteFilesWithRecords:v43 withCompletionHandler:v57];
  }

  else
  {
    v27 = v40;
    [v40 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"push"];
    v25 = group;
  }

  if ([*(a1 + 72) count])
  {
    dispatch_group_enter(v25);
    v28 = *(a1 + 64);
    v29 = *(a1 + 72);
    v30 = [*(a1 + 96) keyForData];
    v64 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    v32 = *(a1 + 104);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142;
    v49[3] = &unk_2797F7750;
    v33 = *(a1 + 56);
    v56 = *(a1 + 96);
    v34 = *(a1 + 40);
    *&v35 = *(a1 + 48);
    *(&v35 + 1) = *(a1 + 64);
    *&v36 = v33;
    *(&v36 + 1) = v34;
    v27 = v40;
    v25 = group;
    v50 = v36;
    v51 = v35;
    v52 = v40;
    v55 = *(a1 + 88);
    v53 = *(a1 + 80);
    v54 = group;
    [v28 readFilesWithRecordIDs:v29 forColumns:v31 priority:v32 withCompletionHandler:v49];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
    [v27 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"pull"];
  }

  v37 = *(a1 + 64);
  v38 = *(v37 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_3_151;
  block[3] = &unk_2797F71B8;
  block[4] = v37;
  v48 = v27;
  v39 = v27;
  dispatch_group_notify(v25, v38, block);
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC38];
  }

  v6 = [*(a1 + 32) setObject:v5 forKeyedSubscript:@"push"];
  if (v4)
  {
    v7 = KSCategory(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142(id *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v36 = v6;
  if (v6)
  {
    v7 = KSCategory(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_1();
    }
  }

  v37 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v47 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v8)
  {
    v10 = *v48;
    *&v9 = 136316162;
    v35 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = [a1[4] objectForKeyedSubscript:{v12, v35}];
        v14 = v13 == 0;

        if (!v14)
        {
          v16 = [obj objectForKeyedSubscript:v12];
          if (v16)
          {
            v17 = [a1[12] keyForData];
            v18 = [v16 objectForKeyedSubscript:v17];

            if (v18)
            {
              v20 = [v18 fileURL];
              v21 = [_KSFileEntry entryWithSerialisedDataAtURL:v20];

              if (v21)
              {
                v22 = [a1[5] objectForKey:v12];
                if (v22)
                {
                  goto LABEL_18;
                }

                v23 = [a1[6] objectForKey:v12];
                if (!v23)
                {
                  v24 = a1[12];
                  v25 = [a1[4] objectForKeyedSubscript:v12];
                  v23 = [v24 filesForLanguage:v25];
                }

                v22 = [a1[12] infoWithFiles:v23];

                if (v22)
                {
LABEL_18:
                  v26 = [a1[12] infoWithFiles:v21];
                  v27 = v26;
                  if (!v26 || (v28 = [v26 isBetterThan:v22], (v28 & 1) != 0))
                  {

                    goto LABEL_21;
                  }

                  v32 = KSCategory(v28);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_2(v51, &v52, v32);
                  }
                }

                else
                {
LABEL_21:
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_144;
                  block[3] = &unk_2797F7728;
                  block[4] = a1[7];
                  v44 = a1[4];
                  v45 = v12;
                  v46 = v21;
                  dispatch_async(MEMORY[0x277D85CD0], block);
                  v29 = [a1[4] objectForKeyedSubscript:v12];
                  [v37 addObject:v29];
                }
              }
            }

            else
            {
              v31 = KSCategory(v19);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v33 = [a1[4] objectForKeyedSubscript:v12];
                *buf = 136315650;
                v54 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
                v55 = 2112;
                v56 = v12;
                v57 = 2112;
                v58 = v33;
                _os_log_error_impl(&dword_2557E2000, v31, OS_LOG_TYPE_ERROR, "%s  No CKAsset associated with record (%@/%@)", buf, 0x20u);
              }
            }
          }

          else
          {
            v18 = KSCategory(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v30 = [a1[4] objectForKeyedSubscript:v12];
              *buf = 136315650;
              v54 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
              v55 = 2112;
              v56 = v12;
              v57 = 2112;
              v58 = v30;
              _os_log_error_impl(&dword_2557E2000, v18, OS_LOG_TYPE_ERROR, "%s  Results inconsistency error - no record for %@ (%@)", buf, 0x20u);
            }
          }

          goto LABEL_34;
        }

        v16 = KSCategory(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v54 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
          v55 = 2112;
          v56 = v12;
          _os_log_error_impl(&dword_2557E2000, v16, OS_LOG_TYPE_ERROR, "%s  Unexpected result - record ID %@ not in request map", buf, 0x16u);
        }

LABEL_34:
      }

      v8 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v8);
  }

  [a1[7] checkProgress:4 withInfo:v37];
  [a1[8] setObject:v37 forKeyedSubscript:@"pull"];
  v34 = *(a1[7] + 1);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_148;
  v39[3] = &unk_2797F6520;
  v42 = a1[11];
  v40 = a1[9];
  v41 = a1[10];
  dispatch_async(v34, v39);
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_144(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v6[0] = @"_KSUserWordsWereDownloadedLanguageKey";
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v6[1] = @"_KSUserWordsWereDownloadedFilesKey";
  v7[0] = v4;
  v7[1] = *(a1 + 56);
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 postNotificationName:@"_KSUserWordsWereDownloadedNotification" object:v3 userInfo:v5];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_148(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __40___KSUserWordsSynchroniser_keyboardUsed__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 24) checkIfExists])
  {
    v2 = [MEMORY[0x277CBEAA8] date];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = 0;
    v3 = *(a1 + 32);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __40___KSUserWordsSynchroniser_keyboardUsed__block_invoke_154;
    v11 = &unk_2797F77F0;
    v4 = v2;
    v12 = v4;
    v13 = &v14;
    v5 = [v3 modifyInformationWithOperations:&v8];
    if (v15[5])
    {
      v6 = KSCategory(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = v15[5];
        *buf = 136315394;
        v21 = "[_KSUserWordsSynchroniser keyboardUsed]_block_invoke";
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  Re-setting languages for massive inactivity: %@", buf, 0x16u);
      }

      [*(a1 + 32) checkForDownload:v15[5] uploads:v15[5] allLanguages:{v15[5], v8, v9, v10, v11}];
    }

    _Block_object_dispose(&v14, 8);
  }
}

uint64_t __40___KSUserWordsSynchroniser_keyboardUsed__block_invoke_154(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKey:@"LastUsed"];
  if (v5)
  {
    [*(a1 + 32) timeIntervalSinceDate:v5];
    v7 = v6;
    v8 = _KSGetSetting(ksDefaultPullTime, &unk_28679DA78);
    [v8 floatValue];
    v10 = v9;

    if (v7 > v10)
    {
      v11 = [v4 objectForKey:@"Languages"];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      [v4 removeObjectForKey:@"Languages"];
    }
  }

  [v4 setObject:*(a1 + 32) forKey:@"LastUsed"];

  return 1;
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2;
  block[3] = &unk_2797F67C8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2(void *a1)
{
  *(a1[4] + 56) = 0;
  *(a1[4] + 58) = 0;
  return (*(a1[6] + 16))(a1[6], a1[5]);
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = KSCategory(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3_cold_1(a2, v5, v6);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_158;
  v10[3] = &unk_2797F66D8;
  v10[4] = v8;
  v11 = v7;
  dispatch_async(v9, v10);
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_158(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 57) = 1;
  if (*(*(a1 + 32) + 58))
  {
    v2 = 10000000000;
  }

  else
  {
    v2 = 3600000000000;
  }

  v3 = dispatch_time(0, v2);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2_159;
  v7[3] = &unk_2797F66D8;
  v7[4] = v5;
  v8 = v4;
  dispatch_after(v3, v6, v7);
  *(*(a1 + 32) + 58) = 0;
}

void *__61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2_159(void *result)
{
  v1 = *(result + 4);
  if (*(v1 + 57) == 1)
  {
    *(v1 + 57) = 0;
    return [*(result + 4) generateKeyWithCompletionHandler:*(result + 5)];
  }

  return result;
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3_161(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KSCategory(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke_3";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2557E2000, v4, OS_LOG_TYPE_INFO, "%s  Key save state: %@", buf, 0x16u);
  }

  if (!v3)
  {
    v10 = *(*(a1 + 48) + 16);
LABEL_10:
    v10();
    goto LABEL_19;
  }

  v5 = [v3 domain];
  v6 = *MEMORY[0x277CBBF50];
  if ([v5 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v7 = [v3 code];

    if (v7 == 5006)
    {
      v9 = KSCategory(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v20 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke";
        _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  Account not supported", buf, 0xCu);
      }

      v10 = *(*(a1 + 48) + 16);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v11 = [v3 domain];
  if (![v11 isEqualToString:v6])
  {

    goto LABEL_18;
  }

  v12 = [v3 code];

  if (v12 != 14)
  {
LABEL_18:
    (*(*(a1 + 56) + 16))();
    goto LABEL_19;
  }

  v14 = KSCategory(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  Record changed - key exists. Loading from server...", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_162;
  v16[3] = &unk_2797F7868;
  v15 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  [v15 loadKeyWithCompletion:v16];

LABEL_19:
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = KSCategory(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  Key load state: %@", &v8, 0x16u);
  }

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id *__46___KSUserWordsSynchroniser_checkConfiguration__block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] firstTimeDownloadWithKey:a2];
  }

  return result;
}

void __46___KSUserWordsSynchroniser_checkConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46___KSUserWordsSynchroniser_checkConfiguration__block_invoke_3;
    v6[3] = &unk_2797F76B0;
    v7 = v3;
    [v5 modifyInformationWithOperations:v6];
  }
}

void __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2;
  v3[3] = &unk_2797F76B0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 modifyInformationWithOperations:v3];
  [*(a1 + 32) checkForDownload:*(*(a1 + 32) + 48) uploads:*(*(a1 + 32) + 48) allLanguages:*(*(a1 + 32) + 48)];
}

uint64_t __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = KSCategory(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2_cold_1(a1, v6);
    }
  }

  else
  {
    [v5 setObject:*(a1 + 32) forKey:@"Key"];
  }

  return a2 ^ 1u;
}

void __54___KSUserWordsSynchroniser_deltaDownloadForLanguages___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  if ([*(*(a1 + 32) + 24) checkIfExists])
  {
    v7 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 40)];
    v2 = [*(a1 + 32) information];
    v3 = [v2 objectForKey:@"Languages"];

    if (v3)
    {
      v4 = [MEMORY[0x277CBEB98] setWithArray:v3];
      [v7 minusSet:v4];
    }

    if ([v7 count])
    {
      v5 = *(a1 + 32);
      v6 = [v7 allObjects];
      [v5 checkForDownload:v6 uploads:0 allLanguages:*(a1 + 40)];
    }
  }
}

void __59___KSUserWordsSynchroniser_generateRecordListForLanguages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = KSCategory(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[_KSUserWordsSynchroniser generateRecordListForLanguages:]_block_invoke_2";
      v20 = 2112;
      v21 = v5;
      v9 = "%s  Failed to load remote key, error: %@";
      v10 = v8;
      v11 = 22;
LABEL_7:
      _os_log_impl(&dword_2557E2000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
    }
  }

  else
  {
    v12 = [*(a1 + 32) isEqualToData:v6];
    v13 = v12;
    v8 = KSCategory(v12);
    v14 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v14)
      {
        *buf = 136315138;
        v19 = "[_KSUserWordsSynchroniser generateRecordListForLanguages:]_block_invoke";
        v9 = "%s  Local key is up to date";
        v10 = v8;
        v11 = 12;
        goto LABEL_7;
      }
    }

    else
    {
      if (v14)
      {
        *buf = 136315138;
        v19 = "[_KSUserWordsSynchroniser generateRecordListForLanguages:]_block_invoke";
        _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  Local key is outdated; replacing it with the current remote key", buf, 0xCu);
      }

      v15 = *(a1 + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59___KSUserWordsSynchroniser_generateRecordListForLanguages___block_invoke_167;
      v16[3] = &unk_2797F76B0;
      v17 = v7;
      [v15 modifyInformationWithOperations:v16];
      v8 = v17;
    }
  }
}

void __40___KSUserWordsSynchroniser_checkErrors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = KSCategory(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40___KSUserWordsSynchroniser_checkErrors___block_invoke_cold_1(a1, v4, v5);
    }

    [*(*(a1 + 32) + 24) reset];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40___KSUserWordsSynchroniser_checkErrors___block_invoke_2;
    block[3] = &unk_2797F6310;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

uint64_t __40___KSUserWordsSynchroniser_checkErrors___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 57) = 0;
  [*(a1 + 32) modifyInformationWithOperations:&__block_literal_global_176];
  v2 = *(a1 + 32);

  return [v2 checkConfiguration];
}

void __93___KSUserWordsSynchroniser_readFilesWithRecordIDs_forColumns_priority_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) checkErrors:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __76___KSUserWordsSynchroniser_overwriteFilesWithRecords_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) checkErrors:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __50___KSUserWordsSynchroniser_loadKeyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) checkErrors:v5];
  }

  v6 = [v5 domain];
  if ([v6 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v7 = [v5 code];

    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v6 = [v5 userInfo];
    v8 = [v6 objectForKey:*MEMORY[0x277CBBFB0]];
    v9 = [v8 allValues];
    v10 = [v9 lastObject];

    v5 = v10;
  }

LABEL_7:
  v11 = *(a1 + 48);
  v12 = [v15 objectForKey:*(a1 + 40)];
  v13 = [v12 encryptedValueStore];
  v14 = [v13 objectForKey:@"keybytes"];
  (*(v11 + 16))(v11, v5, v14);
}

void __51___KSUserWordsSynchroniser_saveKey_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 32) checkErrors:v8];
  }

  v9 = [v8 domain];
  if ([v9 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v10 = [v8 code];

    if (v10 != 2)
    {
      goto LABEL_7;
    }

    v9 = [v8 userInfo];
    v11 = [v9 objectForKey:*MEMORY[0x277CBBFB0]];
    v12 = [v11 allValues];
    v13 = [v12 lastObject];

    v8 = v13;
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
}

void __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 recordType];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *(a1 + 32);
    v8 = [v9 recordType];
    [v7 setObject:v6 forKey:v8];
  }

  [v6 addObject:v9];
}

uint64_t __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKey:@"Error"];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  The server claimed it had better data, but it did not", buf, 0xCu);
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke_3";
  *&v3[12] = 2080;
  *&v3[14] = a1;
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_3_0(&dword_2557E2000, a2, a3, "%s  Failed to %s (%@), trying again later", *v3, *&v3[8], *&v3[16], a2);
}

void __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 objectForKey:@"Key"];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __40___KSUserWordsSynchroniser_checkErrors___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = @"YES";
  *&v4[4] = "[_KSUserWordsSynchroniser checkErrors:]_block_invoke";
  *v4 = 136315650;
  *&v4[12] = 2112;
  if (!*(a1 + 40))
  {
    v3 = @"NO";
  }

  *&v4[14] = v3;
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_3_0(&dword_2557E2000, a2, a3, "%s  Failed to reset zone (delete=%@; error=%@)", *v4, *&v4[8], *&v4[16], a2);
}

@end