@interface CESRSpeechItemRanker
+ (id)rankersForInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group sets:(id)sets;
+ (void)refreshRankedItemCachesForInstance:(id)instance speechProfileSite:(id)site;
- (BOOL)enumerateAllItemsOfSet:(id)set error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateAllRepresentativeItemsOfSet:(id)set error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block;
- (BOOL)enumerateRankedRepresentativeItemsWithError:(id *)error usingBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (CESRSpeechItemRanker)init;
- (CESRSpeechItemRanker)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group;
- (id)description;
- (unsigned)calculateItemLimit;
@end

@implementation CESRSpeechItemRanker

uint64_t __78__CESRSpeechItemRanker_AppShortcuts_enumerateRankedItemsWithError_usingBlock___block_invoke_2(void *a1)
{
  v1 = *(a1[5] + 8);
  v2 = *(v1 + 24);
  *(v1 + 24) = v2 + 1;
  if (v2 >= a1[6])
  {
    return 1;
  }

  else
  {
    return (*(a1[4] + 16))();
  }
}

uint64_t __73__CESRSpeechItemRanker_Contact_enumerateRankedItemsWithError_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 metaContent];
      v8 = [v7 sourceItemIdentifier];

      if (v8)
      {
        v9 = [*(a1 + 32) objectForKey:v8];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 ordinality];
          v12 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
          {
            v17 = MEMORY[0x277CCABB0];
            v18 = v12;
            v19 = [v17 numberWithBool:v11 < 0x15];
            v20 = 136315394;
            v21 = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]_block_invoke";
            v22 = 2112;
            v23 = v19;
            _os_log_error_impl(&dword_225EEB000, v18, OS_LOG_TYPE_ERROR, "%s Boosting contact: %@", &v20, 0x16u);
          }

          v13 = (*(*(a1 + 40) + 16))();

          goto LABEL_13;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 24);
    if (v15)
    {
      *(v14 + 24) = v15 - 1;
      v13 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v13 = 1;
    }

LABEL_13:

    goto LABEL_14;
  }

  v13 = (*(*(a1 + 40) + 16))();
LABEL_14:

  return v13;
}

uint64_t __89__CESRSpeechItemRanker_AppIntentsIndexedEntity_enumerateRankedItemsWithError_usingBlock___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 content];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 content];
    if ([CESRSpeechItemRanker_AppIntentsIndexedEntity _shouldAcceptEntity:v9 bundleId:*(a1 + 32) appEntityConfig:*(*(a1 + 40) + 56) entityTypes:*(*(*(a1 + 56) + 8) + 40) numEntitiesRejected:*(*(a1 + 64) + 8) + 24 numEmptyDisplayRepresentations:*(*(a1 + 72) + 8) + 24]&& *(*(*(a1 + 80) + 8) + 24) < *(a1 + 96))
    {
      if (*(a1 + 104))
      {
        goto LABEL_5;
      }

      if ([*(*(*(a1 + 88) + 8) + 40) count] < *(a1 + 96))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
LABEL_10:
          if ((*(*(*(a1 + 80) + 8) + 24) + [*(*(*(a1 + 88) + 8) + 40) count]) < *(a1 + 96))
          {
            [*(*(*(a1 + 88) + 8) + 40) addObject:v5];
          }

          goto LABEL_12;
        }

LABEL_5:
        if ([*(a1 + 40) _interactionStoreContainsAppEntity:v5])
        {
          ++*(*(*(a1 + 80) + 8) + 24);
          v10 = (*(*(a1 + 48) + 16))();
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }

LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

uint64_t __71__CESRSpeechItemRanker_Media_enumerateRankedItemsWithError_usingBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[4];
  if (*(*(a1[6] + 8) + 24) >= *(v5 + 48) && *(*(a1[7] + 8) + 24) >= *(v5 + 56))
  {
    v8 = 1;
    goto LABEL_10;
  }

  v6 = [v3 content];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 entityType];
    v8 = 1;
    if (v7 > 4)
    {
      if (v7 == 5)
      {
        goto LABEL_17;
      }

      if (v7 == 6)
      {
        v15 = *(a1[6] + 8);
        v16 = *(v15 + 24);
        v10 = (v15 + 24);
        v11 = v16;
        v13 = *(a1[4] + 48);
LABEL_14:
        if (v11 < v13)
        {
          *v10 = v11 + 1;
          v8 = (*(a1[5] + 16))();
        }
      }
    }

    else
    {
      if ((v7 - 1) < 2)
      {
        v9 = *(a1[7] + 8);
        v12 = *(v9 + 24);
        v10 = (v9 + 24);
        v11 = v12;
        v13 = *(a1[4] + 56);
        goto LABEL_14;
      }

      if (v7 == 3)
      {
LABEL_17:
        if ((*(*(a1[6] + 8) + 24) + [*(*(a1[8] + 8) + 40) count]) < *(a1[4] + 48))
        {
          [*(*(a1[8] + 8) + 40) addObject:v4];
        }
      }
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_10:
  return v8;
}

- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_sets;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __65__CESRSpeechItemRanker_enumerateRankedItemsWithError_usingBlock___block_invoke;
        v15[3] = &unk_27857FAC8;
        v16 = blockCopy;
        LODWORD(v11) = [(CESRSpeechItemRanker *)self enumerateAllItemsOfSet:v11 error:error usingBlock:v15];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)enumerateRankedRepresentativeItemsWithError:(id *)error usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_sets;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __79__CESRSpeechItemRanker_enumerateRankedRepresentativeItemsWithError_usingBlock___block_invoke;
        v15[3] = &unk_27857FAC8;
        v16 = blockCopy;
        LODWORD(v11) = [(CESRSpeechItemRanker *)self enumerateAllRepresentativeItemsOfSet:v11 error:error usingBlock:v15];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)enumerateAllRepresentativeItemsOfSet:(id)set error:(id *)error usingBlock:(id)block
{
  v54 = *MEMORY[0x277D85DE8];
  setCopy = set;
  blockCopy = block;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__2879;
  v44 = __Block_byref_object_dispose__2880;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  changeRegistry = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
  v11 = [setCopy descriptorWithKey:*MEMORY[0x277CF9498]];
  value = [v11 value];

  v13 = [setCopy changePublisherWithUseCase:@"SpeechProfile"];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke;
  v31[3] = &unk_27857FA78;
  v14 = changeRegistry;
  v32 = v14;
  v15 = setCopy;
  v33 = v15;
  v34 = &v40;
  v35 = &v36;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke_22;
  v26[3] = &unk_27857FAA0;
  v26[4] = self;
  v16 = blockCopy;
  v28 = v16;
  v17 = value;
  v27 = v17;
  v29 = &v40;
  v30 = &v36;
  v18 = [v13 drivableSinkWithBookmark:0 completion:v31 shouldContinue:v26];

  v19 = v41;
  if (*(v37 + 24) == 1 && !v41[5])
  {
    v21 = 1;
  }

  else
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      instance = self->_instance;
      v25 = v19[5];
      *buf = 136315906;
      v47 = "[CESRSpeechItemRanker enumerateAllRepresentativeItemsOfSet:error:usingBlock:]";
      v48 = 2112;
      v49 = instance;
      v50 = 2112;
      v51 = v15;
      v52 = 2112;
      v53 = v25;
      _os_log_error_impl(&dword_225EEB000, v20, OS_LOG_TYPE_ERROR, "%s (%@) Enumeration for set: %@ aborted: %@", buf, 0x2Au);
      v19 = v41;
    }

    v21 = 0;
    if (error)
    {
      v22 = v19[5];
      if (v22)
      {
        v21 = 0;
        *error = v22;
      }
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v21;
}

void __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 state])
  {
    *(*(a1[7] + 8) + 24) = 0;
    v7 = [v5 error];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = *(a1[6] + 8);
    obj = *(v12 + 40);
    v13 = [v10 updateBookmark:v6 forSet:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if ((v13 & 1) == 0)
    {
      v14 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1[6] + 8) + 40);
        *buf = 136315394;
        v18 = "[CESRSpeechItemRanker enumerateAllRepresentativeItemsOfSet:error:usingBlock:]_block_invoke";
        v19 = 2112;
        v20 = v15;
        _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to update bookmark, error: %@", buf, 0x16u);
      }
    }
  }
}

uint64_t __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke_22(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addedLocalInstances];
  v5 = [v4 count];
  ++*(a1[4] + 16);
  v6 = a1[6];
  if (v5)
  {
    v7 = [v4 firstObject];
    v8 = a1[5];
    v9 = *(a1[7] + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    v20 = v11;
    v12 = (*(v6 + 16))(v6, v7, v8, &v20);
    v13 = v20;
  }

  else
  {
    v7 = [v3 sharedItem];
    v14 = a1[5];
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    v10 = (v15 + 40);
    obj = v16;
    v12 = (*(v6 + 16))(v6, v7, v14, &obj);
    v13 = obj;
  }

  objc_storeStrong(v10, v13);

  if (v12)
  {
    ++*(a1[4] + 16);
    v17 = 1;
  }

  else
  {
    v17 = 0;
    *(*(a1[8] + 8) + 24) = 0;
  }

  return v17;
}

- (BOOL)enumerateAllItemsOfSet:(id)set error:(id *)error usingBlock:(id)block
{
  v54 = *MEMORY[0x277D85DE8];
  setCopy = set;
  blockCopy = block;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__2879;
  v44 = __Block_byref_object_dispose__2880;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  changeRegistry = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
  v11 = [setCopy descriptorWithKey:*MEMORY[0x277CF9498]];
  value = [v11 value];

  v13 = [setCopy changePublisherWithUseCase:@"SpeechProfile"];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke;
  v31[3] = &unk_27857FA78;
  v14 = changeRegistry;
  v32 = v14;
  v15 = setCopy;
  v33 = v15;
  v34 = &v40;
  v35 = &v36;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke_20;
  v26[3] = &unk_27857FAA0;
  v26[4] = self;
  v16 = blockCopy;
  v28 = v16;
  v17 = value;
  v27 = v17;
  v29 = &v40;
  v30 = &v36;
  v18 = [v13 drivableSinkWithBookmark:0 completion:v31 shouldContinue:v26];

  v19 = v41;
  if (*(v37 + 24) == 1 && !v41[5])
  {
    v21 = 1;
  }

  else
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      instance = self->_instance;
      v25 = v19[5];
      *buf = 136315906;
      v47 = "[CESRSpeechItemRanker enumerateAllItemsOfSet:error:usingBlock:]";
      v48 = 2112;
      v49 = instance;
      v50 = 2112;
      v51 = v15;
      v52 = 2112;
      v53 = v25;
      _os_log_error_impl(&dword_225EEB000, v20, OS_LOG_TYPE_ERROR, "%s (%@) Enumeration for set: %@ aborted: %@", buf, 0x2Au);
      v19 = v41;
    }

    v21 = 0;
    if (error)
    {
      v22 = v19[5];
      if (v22)
      {
        v21 = 0;
        *error = v22;
      }
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v21;
}

void __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 state])
  {
    *(*(a1[7] + 8) + 24) = 0;
    v7 = [v5 error];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = *(a1[6] + 8);
    obj = *(v12 + 40);
    v13 = [v10 updateBookmark:v6 forSet:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if ((v13 & 1) == 0)
    {
      v14 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1[6] + 8) + 40);
        *buf = 136315394;
        v18 = "[CESRSpeechItemRanker enumerateAllItemsOfSet:error:usingBlock:]_block_invoke";
        v19 = 2112;
        v20 = v15;
        _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to update bookmark, error: %@", buf, 0x16u);
      }
    }
  }
}

uint64_t __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke_20(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 addedLocalInstances];
  if ([v4 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v3 addedLocalInstances];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          ++*(a1[4] + 16);
          v10 = a1[6];
          v11 = *(a1[7] + 8);
          obj = *(v11 + 40);
          v12 = (*(v10 + 16))();
          objc_storeStrong((v11 + 40), obj);
          if ((v12 & 1) == 0)
          {
            *(*(a1[8] + 8) + 24) = 0;

            v13 = 0;
            goto LABEL_15;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    ++*(a1[4] + 16);
    v14 = a1[6];
    v15 = [v3 sharedItem];
    v16 = a1[5];
    v17 = *(a1[7] + 8);
    v19 = *(v17 + 40);
    LOBYTE(v14) = (*(v14 + 16))(v14, v15, v16, &v19);
    objc_storeStrong((v17 + 40), v19);

    if ((v14 & 1) == 0)
    {
      v13 = 0;
      *(*(a1[8] + 8) + 24) = 0;
      goto LABEL_15;
    }
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (unsigned)calculateItemLimit
{
  v28 = *MEMORY[0x277D85DE8];
  speechCategories = [(CESRSpeechProfileCategoryGroup *)self->_categoryGroup speechCategories];
  v3 = +[CESRSpeechProfileBuilder categoryToLimitHintMap];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = speechCategories;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    unsignedIntValue = -1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v3 objectForKey:{*(*(&v17 + 1) + 8 * i), v17}];
        v11 = v10;
        if (v10 && [v10 unsignedIntValue] < unsignedIntValue)
        {
          unsignedIntValue = [v11 unsignedIntValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    unsignedIntValue = -1;
  }

  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    allObjects = [v4 allObjects];
    v15 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 136315650;
    v22 = "[CESRSpeechItemRanker calculateItemLimit]";
    v23 = 1024;
    v24 = unsignedIntValue;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s Resolved Limit: %u from categories: %@", buf, 0x1Cu);
  }

  return unsignedIntValue;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  instance = [(CESRSpeechItemRanker *)self instance];
  sets = [(CESRSpeechItemRanker *)self sets];
  v8 = [v3 stringWithFormat:@"%@ (%@) - sets: %@", v5, instance, sets];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_23;
  }

  if (!equalCopy || ![(CESRSpeechItemRanker *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = 0;
    goto LABEL_23;
  }

  instance = [(CESRSpeechItemRanker *)self instance];
  if (instance || ([(CESRSpeechItemRanker *)v8 instance], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    instance2 = [(CESRSpeechItemRanker *)self instance];
    instance3 = [(CESRSpeechItemRanker *)v8 instance];
    if (![instance2 isEqual:instance3])
    {
      v11 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v10 = 1;
  }

  else
  {
    v16 = 0;
    v10 = 0;
  }

  sets = [(CESRSpeechItemRanker *)self sets];
  if (sets || ([(CESRSpeechItemRanker *)v8 sets], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sets2 = [(CESRSpeechItemRanker *)self sets];
    sets3 = [(CESRSpeechItemRanker *)v8 sets];
    v11 = [sets2 isEqual:sets3];

    if (sets)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_18:
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (!instance)
  {
  }

LABEL_23:
  return v11;
}

- (CESRSpeechItemRanker)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group
{
  instanceCopy = instance;
  siteCopy = site;
  groupCopy = group;
  v17.receiver = self;
  v17.super_class = CESRSpeechItemRanker;
  v12 = [(CESRSpeechItemRanker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instance, instance);
    objc_storeStrong(&v13->_speechProfileSite, site);
    objc_storeStrong(&v13->_categoryGroup, group);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sets = v13->_sets;
    v13->_sets = v14;

    v13->_enumeratedItemCount = 0;
  }

  return v13;
}

- (CESRSpeechItemRanker)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (void)refreshRankedItemCachesForInstance:(id)instance speechProfileSite:(id)site
{
  v17 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  siteCopy = site;
  v7 = [[CESRSpeechItemRanker_Media alloc] initWithInstance:instanceCopy speechProfileSite:siteCopy categoryGroup:0];

  v10 = 0;
  LOBYTE(siteCopy) = [(CESRSpeechItemRanker *)v7 refreshRankedItemCache:&v10];
  v8 = v10;
  if ((siteCopy & 1) == 0)
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v12 = "+[CESRSpeechItemRanker refreshRankedItemCachesForInstance:speechProfileSite:]";
      v13 = 2112;
      v14 = instanceCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s (%@) Ranked item cache refresh failed: %@", buf, 0x20u);
    }
  }
}

+ (id)rankersForInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group sets:(id)sets
{
  v55[4] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  siteCopy = site;
  groupCopy = group;
  setsCopy = sets;
  v13 = [[CESRSpeechItemRanker_Contact alloc] initWithInstance:instanceCopy speechProfileSite:siteCopy categoryGroup:groupCopy];
  v55[0] = v13;
  v14 = [[CESRSpeechItemRanker_AppIntentsIndexedEntity alloc] initWithInstance:instanceCopy speechProfileSite:siteCopy categoryGroup:groupCopy];
  v55[1] = v14;
  v15 = [[CESRSpeechItemRanker_Media alloc] initWithInstance:instanceCopy speechProfileSite:siteCopy categoryGroup:groupCopy];
  v55[2] = v15;
  v38 = siteCopy;
  v39 = instanceCopy;
  v37 = groupCopy;
  v16 = [[CESRSpeechItemRanker alloc] initWithInstance:instanceCopy speechProfileSite:siteCopy categoryGroup:groupCopy];
  v55[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = setsCopy;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v24 = v17;
        v25 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v45;
LABEL_8:
          v28 = 0;
          while (1)
          {
            if (*v45 != v27)
            {
              objc_enumerationMutation(v24);
            }

            if ([*(*(&v44 + 1) + 8 * v28) addSet:v23])
            {
              break;
            }

            if (v26 == ++v28)
            {
              v26 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
              if (v26)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v20);
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v17;
  v31 = [v30 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v41;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v40 + 1) + 8 * j);
        if ([v35 hasSets])
        {
          [v29 addObject:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v32);
  }

  return v29;
}

@end