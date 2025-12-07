@interface PSFamilyRecommender
@end

@implementation PSFamilyRecommender

uint64_t __48___PSFamilyRecommender_indexToInsertDate_array___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timeIntervalSinceDate:v5];
  if (v6 >= 0.0)
  {
    [v4 timeIntervalSinceDate:v5];
    v7 = v8 > 0.0;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __37___PSFamilyRecommender_currentFamily__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v38 = a3;
  if (v38)
  {
    v4 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37___PSFamilyRecommender_currentFamily__block_invoke_cold_1();
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [v40 members];
  v43 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v43)
  {
    v42 = *v53;
    do
    {
      v5 = 0;
      do
      {
        if (*v53 != v42)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v44 = v5;
        v7 = *(*(&v52 + 1) + 8 * v5);
        v45 = [v7 dictionary];
        v46 = [v45 objectForKeyedSubscript:@"member-phone-numbers"];
        if ([v46 length] >= 2)
        {
          v8 = [v46 componentsSeparatedByString:{@", "}];
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v48 objects:v65 count:16];
          if (v10)
          {
            v11 = *v49;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v49 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v48 + 1) + 8 * i);
                v14 = [*(a1 + 32) contactStore];
                CNContactClass_1 = getCNContactClass_1();
                v61 = 0;
                v62 = &v61;
                v63 = 0x2050000000;
                v16 = getCNPhoneNumberClass_softClass_0;
                v64 = getCNPhoneNumberClass_softClass_0;
                if (!getCNPhoneNumberClass_softClass_0)
                {
                  v56 = MEMORY[0x1E69E9820];
                  v57 = 3221225472;
                  v58 = __getCNPhoneNumberClass_block_invoke_0;
                  v59 = &unk_1E7C23BF0;
                  v60 = &v61;
                  ContactsLibraryCore_1(0);
                  Class = objc_getClass("CNPhoneNumber");
                  *(v60[1] + 24) = Class;
                  getCNPhoneNumberClass_softClass_0 = *(v60[1] + 24);
                  v16 = v62[3];
                }

                v18 = v16;
                _Block_object_dispose(&v61, 8);
                v19 = [v16 phoneNumberWithStringValue:v13];
                v20 = [CNContactClass_1 predicateForContactsMatchingPhoneNumber:v19];
                v21 = [*(a1 + 32) contactKeysToFetch];
                v22 = [v14 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:0];
                v23 = [v22 firstObject];

                if (v23)
                {
                  [*(*(*(a1 + 48) + 8) + 40) addObject:v23];

                  goto LABEL_29;
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v48 objects:v65 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

LABEL_29:

          goto LABEL_30;
        }

        v24 = [v7 appleID];

        if (v24 && ([*(a1 + 32) contactStore], v25 = objc_claimAutoreleasedReturnValue(), v26 = getCNContactClass_1(), objc_msgSend(v7, "appleID"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "predicateForContactsMatchingEmailAddress:", v27), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "contactKeysToFetch"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "unifiedContactsMatchingPredicate:keysToFetch:error:", v28, v29, 0), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v30, v29, v28, v27, v25, v9) || (objc_msgSend(v7, "inviteEmail"), v31 = objc_claimAutoreleasedReturnValue(), v31, v31) && (objc_msgSend(*(a1 + 32), "contactStore"), v32 = objc_claimAutoreleasedReturnValue(), v33 = getCNContactClass_1(), objc_msgSend(v7, "inviteEmail"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "predicateForContactsMatchingEmailAddress:", v34), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "contactKeysToFetch"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "unifiedContactsMatchingPredicate:keysToFetch:error:", v35, v36, 0), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v37, v36, v35, v34, v32, v9))
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
LABEL_30:
        }

        v5 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v43);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) identifier];
    v5 = [v3 identifier];
    if ([v4 isEqualToString:v5])
    {
      v6 = 0;
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = [v3 identifier];
      if ([v7 containsObject:v8])
      {
        v6 = 0;
      }

      else
      {
        v9 = *(a1 + 48);
        v10 = [v3 identifier];
        v6 = [v9 containsObject:v10] ^ 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(a1 + 32) recipientFromFamilyContactId:*(*(&v14 + 1) + 8 * v10) familySuggestions:0 me:*(a1 + 40) currentFamilyIds:*(a1 + 48)];
        if ((*(*(a1 + 72) + 16))())
        {
          [*(a1 + 56) addObject:v11];
          v12 = *(a1 + 64);
          v13 = [v11 identifier];
          [v12 addObject:v13];

          v6[2](v6, v11);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

void __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_379(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPhotosInference:1];
  [v2 setFamilyHeuristic:0];
}

void __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_382(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPhotosInference:1];
  [v2 setFamilyHeuristic:0];
}

uint64_t __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_403(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __55___PSFamilyRecommender_contactIdsFromEmergencyContacts__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55___PSFamilyRecommender_contactIdsFromEmergencyContacts__block_invoke_cold_1(a1 + 40, v5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __55___PSFamilyRecommender_contactIdsFromEmergencyContacts__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Fetched emergency contacts %@", &v3, 0xCu);
}

@end