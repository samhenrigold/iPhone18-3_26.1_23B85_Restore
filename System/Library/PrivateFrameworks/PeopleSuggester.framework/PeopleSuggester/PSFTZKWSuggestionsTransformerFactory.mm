@interface PSFTZKWSuggestionsTransformerFactory
@end

@implementation PSFTZKWSuggestionsTransformerFactory

void __120___PSFTZKWSuggestionsTransformerFactory_formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = +[_PSConstants mobileMessagesBundleId];
  v4 = +[_PSConstants macMessagesBundleId];
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  objc_autoreleasePoolPop(v1);
  v6 = formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasExprOnceResult;
  formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v0);
}

id __77___PSFTZKWSuggestionsTransformerFactory_formatWithBundleIdsForGroupMatching___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 32) formatWithSuggestion:*(*(&v12 + 1) + 8 * i) bundleIdsForGroupMatching:*(a1 + 40) checkForMessagesGroupIdentifier:{1, v12}];
          [v4 addObjectsFromArray:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

id __60___PSFTZKWSuggestionsTransformerFactory_filterIDSReachable___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    if (*(a1 + 40) == 1)
    {
      v4 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_DEFAULT, "Bypassing the IDS reachability filter", buf, 2u);
      }

      v27 = v3;
    }

    else
    {
      v27 = objc_opt_new();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v3;
      obj = v3;
      v29 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (v29)
      {
        v28 = *v37;
        do
        {
          v5 = 0;
          do
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v31 = v5;
            v6 = *(*(&v36 + 1) + 8 * v5);
            v7 = objc_opt_new();
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v30 = v6;
            v8 = [v6 recipients];
            v9 = [v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v33;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v33 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v13 = *(*(&v32 + 1) + 8 * i);
                  if ([*(a1 + 32) isEligibleRecipient:v13])
                  {
                    [v7 addObject:v13];
                  }

                  else
                  {
                    v14 = +[_PSLogging generalChannel];
                    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                    {
                      v15 = [v13 handle];
                      *buf = 138412290;
                      v41 = v15;
                      _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "Filtering recipient %@ since not IDS eligible", buf, 0xCu);
                    }
                  }
                }

                v10 = [v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
              }

              while (v10);
            }

            if ([v7 count])
            {
              v16 = [v7 count];
              v17 = [v30 recipients];
              v18 = [v17 count];

              if (v16 == v18)
              {
                [v27 addObject:v30];
              }

              else
              {
                v19 = [_PSSuggestion alloc];
                v20 = [v30 bundleID];
                v21 = [v30 reason];
                v22 = [v30 reasonType];
                v23 = [(_PSSuggestion *)v19 initWithBundleID:v20 conversationIdentifier:0 groupName:0 recipients:v7 reason:v21 reasonType:v22];
                [v27 addObject:v23];
              }
            }

            v5 = v31 + 1;
          }

          while (v31 + 1 != v29);
          v29 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
        }

        while (v29);
      }

      v3 = v25;
    }
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  return v27;
}

id __74___PSFTZKWSuggestionsTransformerFactory_getCraftedIdentfierForSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 contact];

  if (v3)
  {
    v4 = [v2 contact];

    v5 = [v4 identifier];
    v2 = v4;
  }

  else
  {
    v5 = [v2 handle];
  }

  return v5;
}

id __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithSeedRecipients___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] && objc_msgSend(*(a1 + 32), "count"))
  {
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    v7 = *v22;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 recipients];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [v9 recipients];
          v13 = [v12 count];

          if (v13 > 1)
          {
            continue;
          }

          v14 = [v9 recipients];
          v15 = [v14 firstObject];

          v16 = *(a1 + 32);
          v17 = [v15 handle];
          LOBYTE(v16) = [v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            [v20 addObject:v9];
          }
        }

        else
        {
          v15 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v26 = v9;
            _os_log_fault_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_FAULT, "Empty recipients list in suggestion: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (!v6)
      {
LABEL_17:

        v3 = v19;
        goto LABEL_19;
      }
    }
  }

  v20 = v3;
LABEL_19:

  return v20;
}

id __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithMaxSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v70 = v3;
    obj = v3;
    v7 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v102;
      v72 = a1;
      v73 = v4;
      v71 = v5;
      v74 = *v102;
LABEL_4:
      v10 = 0;
      v75 = v8;
      while (1)
      {
        if (*v102 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v101 + 1) + 8 * v10);
        if ([v4 count] == *(a1 + 32))
        {
          goto LABEL_83;
        }

        v84 = v11;
        v12 = [v11 recipients];
        v13 = [v12 count];

        v83 = v10;
        if (v13 == 1)
        {
          break;
        }

        if (v13)
        {
          v63 = [v84 conversationIdentifier];
          if (!v63)
          {
            goto LABEL_81;
          }

          v64 = v63;
          v65 = [v84 conversationIdentifier];
          v66 = [v5 containsObject:v65];

          v15 = v84;
          if (v66)
          {
            goto LABEL_81;
          }

          v67 = [v84 conversationIdentifier];
          [v5 addObject:v67];

          v14 = [_PSFTZKWSuggestionsTransformerFactory getCraftedIdentfierForSuggestion:v84];
          if (([v5 containsObject:v14] & 1) == 0)
          {
            [v5 addObject:v14];
LABEL_80:

            [v4 addObject:v15];
            goto LABEL_81;
          }
        }

        else
        {
          v14 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v110 = v84;
            _os_log_error_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_ERROR, "No recipient filled in suggestion %@", buf, 0xCu);
          }
        }

LABEL_81:
        v10 = v83 + 1;
        if (v83 + 1 == v8)
        {
          v8 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }
      }

      v15 = v84;
      v16 = [v84 recipients];
      v17 = [v16 firstObject];

      v18 = objc_opt_new();
      v19 = v17;
      v20 = objc_opt_new();
      v21 = [v19 identifier];
      if (v21)
      {
        [v18 addObject:v21];
      }

      v77 = v21;
      v22 = [v19 handle];
      if (v22)
      {
        [v18 addObject:v22];
      }

      [v19 contact];
      v80 = v78 = v19;
      if (v80)
      {
        v23 = [v80 identifier];
        [v18 addObject:v23];

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v24 = [v80 emailAddresses];
        v25 = [v24 countByEnumeratingWithState:&v97 objects:v108 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v98;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v98 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v97 + 1) + 8 * i);
              v30 = [v29 identifier];
              [v18 addObject:v30];

              v31 = [v29 value];
              [v18 addObject:v31];
            }

            v26 = [v24 countByEnumeratingWithState:&v97 objects:v108 count:16];
          }

          while (v26);
        }

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v32 = [v80 phoneNumbers];
        v33 = [v32 countByEnumeratingWithState:&v93 objects:v107 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v94;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v94 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v93 + 1) + 8 * j);
              v38 = [v37 identifier];
              [v18 addObject:v38];

              v39 = [v37 value];
              [v20 addObject:v39];
              v40 = [v39 stringValue];

              if (v40)
              {
                v41 = [v39 stringValue];
                [v18 addObject:v41];
              }

              v42 = [v39 digits];

              if (v42)
              {
                v43 = [v39 digits];
                [v18 addObject:v43];
              }

              v44 = [v39 stringValue];

              if (v44)
              {
                v45 = [v39 stringValue];
                [v18 addObject:v45];
              }

              v46 = [v39 formattedStringValue];

              if (v46)
              {
                v47 = [v39 formattedStringValue];
                [v18 addObject:v47];
              }

              v48 = [v39 formattedInternationalStringValue];

              if (v48)
              {
                v49 = [v39 formattedInternationalStringValue];
                [v18 addObject:v49];
              }

              v50 = [v39 unformattedInternationalStringValue];

              if (v50)
              {
                v51 = [v39 unformattedInternationalStringValue];
                [v18 addObject:v51];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v93 objects:v107 count:16];
          }

          while (v34);
        }

        a1 = v72;
        v4 = v73;
        v5 = v71;
        v15 = v84;
      }

      if ([v5 intersectsSet:v18] & 1) != 0 || (objc_msgSend(v6, "intersectsSet:", v20))
      {
LABEL_74:
        [v5 unionSet:v18];
        [v6 unionSet:v20];
LABEL_75:
        v68 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v110 = v78;
          _os_log_impl(&dword_1B5ED1000, v68, OS_LOG_TYPE_DEFAULT, "Recipient already added %@", buf, 0xCu);
        }

        v9 = v74;
        v8 = v75;
        goto LABEL_81;
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v52 = v20;
      v82 = [v52 countByEnumeratingWithState:&v89 objects:v106 count:16];
      if (v82)
      {
        v79 = v52;
        v53 = 0;
        v81 = *v90;
        while (2)
        {
          for (k = 0; k != v82; ++k)
          {
            if (*v90 != v81)
            {
              objc_enumerationMutation(v79);
            }

            if (v53)
            {

              a1 = v72;
              v4 = v73;
              v5 = v71;
              goto LABEL_74;
            }

            v55 = *(*(&v89 + 1) + 8 * k);
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v56 = v6;
            v57 = [v56 countByEnumeratingWithState:&v85 objects:v105 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = v22;
              v60 = v6;
              v61 = *v86;
              while (2)
              {
                for (m = 0; m != v58; ++m)
                {
                  if (*v86 != v61)
                  {
                    objc_enumerationMutation(v56);
                  }

                  if ([v55 isLikePhoneNumber:*(*(&v85 + 1) + 8 * m)])
                  {
                    v53 = 1;
                    goto LABEL_63;
                  }
                }

                v58 = [v56 countByEnumeratingWithState:&v85 objects:v105 count:16];
                if (v58)
                {
                  continue;
                }

                break;
              }

              v53 = 0;
LABEL_63:
              v6 = v60;
              v22 = v59;
            }

            else
            {
              v53 = 0;
            }
          }

          v82 = [v79 countByEnumeratingWithState:&v89 objects:v106 count:16];
          if (v82)
          {
            continue;
          }

          break;
        }

        v52 = v79;

        v5 = v71;
        [v71 unionSet:v18];
        [v56 unionSet:v79];
        a1 = v72;
        v4 = v73;
        v15 = v84;
        if (v53)
        {
          goto LABEL_75;
        }
      }

      else
      {

        [v5 unionSet:v18];
        [v6 unionSet:v52];
      }

      v9 = v74;
      v8 = v75;
      v14 = v78;
      goto LABEL_80;
    }

LABEL_83:

    v3 = v70;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

id __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v4 = getCNContactFormatterClass_softClass_4;
    v18 = getCNContactFormatterClass_softClass_4;
    if (!getCNContactFormatterClass_softClass_4)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getCNContactFormatterClass_block_invoke_4;
      v14[3] = &unk_1E7C23BF0;
      v14[4] = &v15;
      __getCNContactFormatterClass_block_invoke_4(v14);
      v4 = v16[3];
    }

    v5 = v4;
    _Block_object_dispose(&v15, 8);
    v6 = objc_opt_new();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2;
    v11[3] = &unk_1E7C26260;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    v11[4] = v7;
    v12 = v6;
    v8 = v6;
    v9 = [v3 _pas_mappedArrayWithTransform:v11];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

_PSSuggestion *__77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 recipients];
    if ([v6 count] < 2)
    {
      v8 = 0;
    }

    else
    {
      v7 = [v3 groupName];
      if ([v7 length])
      {
        v8 = 1;
      }

      else
      {
        v17 = [v3 conversationIdentifier];
        v8 = v17 != 0;
      }
    }

    v18 = [v3 recipients];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42;
    v40[3] = &unk_1E7C26238;
    v40[4] = *(a1 + 32);
    v43 = v8;
    v44 = *(a1 + 48);
    v19 = v3;
    v41 = v19;
    v42 = *(a1 + 40);
    v20 = [v18 _pas_mappedArrayWithTransform:v40];

    if ([v20 count])
    {
      if ([v20 count] < 2)
      {
        v38 = 0;
        v39 = 0;
      }

      else
      {
        v39 = [v19 conversationIdentifier];
        v38 = [v19 groupName];
      }

      v28 = [_PSSuggestion alloc];
      v37 = [v19 bundleID];
      v29 = [v19 derivedIntentIdentifier];
      v30 = [v19 image];
      v31 = [v19 reason];
      v32 = [v19 reasonType];
      v33 = [v19 score];
      LOBYTE(v36) = [v19 familySuggestion];
      v21 = v39;
      v16 = [(_PSSuggestion *)v28 initWithBundleID:v37 conversationIdentifier:v39 groupName:v38 recipients:v20 derivedIntentIdentifier:v29 image:v30 reason:v31 reasonType:v32 score:v33 familySuggestion:v36];

      v34 = [v19 messagesGroupIdentifier];
      [(_PSSuggestion *)v16 setMessagesGroupIdentifier:v34];
    }

    else
    {
      v21 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_1(v19, v21, v22, v23, v24, v25, v26, v27);
      }

      v16 = 0;
    }
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_2(v3, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = 0;
  }

  return v16;
}

_PSRecipient *__77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 contact];
  if (v4)
  {
    v5 = v4;
LABEL_4:
    if ([v5 contactType]== 1)
    {
      v8 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42_cold_1(a1, v8, v9, v10, v11, v12, v13, v14);
      }

LABEL_8:
      v15 = 0;
      goto LABEL_15;
    }

    v16 = [v3 handle];
    if (*(*(a1 + 32) + 16))
    {
      v17 = [v3 handle];

      if (v17)
      {
        v18 = *(a1 + 32);
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = [v3 handle];
        v22 = [v19 getFaceTimeableHandleForContact:v5 interactionStore:v20 seedRecipientHandle:v21];

        v16 = v22;
      }
    }

    v23 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v3 handle];
      v39 = 138412546;
      v40 = v24;
      v41 = 2112;
      v42 = v16;
      _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "Mapped handle %@ to handle %@ and to contact", &v39, 0x16u);
    }

    v25 = [_PSRecipient alloc];
    v26 = [v5 identifier];
    v27 = [v3 senderHandle];
    v28 = [*(a1 + 48) stringFromContact:v5];
    v15 = [(_PSRecipient *)v25 initWithIdentifier:v26 senderHandle:v27 handle:v16 displayName:v28 contact:v5];

    goto LABEL_15;
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = [v3 handle];
  v5 = [v6 getContactForHandle:v7 handleType:{objc_msgSend(v3, "handleType")}];

  if (v5)
  {
    goto LABEL_4;
  }

  if ((*(a1 + 56) & 1) == 0 && (*(a1 + 57) & 1) == 0)
  {
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v3 handle];
      v39 = 138412290;
      v40 = v38;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Filtering %@ since no mapped contact found and unmapped suggestions are not allowed", &v39, 0xCu);
    }

    goto LABEL_8;
  }

  v30 = [v3 displayName];
  v31 = [v30 length];

  if (v31)
  {
    v15 = v3;
  }

  else
  {
    v32 = [_PSRecipient alloc];
    v33 = [v3 handle];
    v34 = [v3 senderHandle];
    v35 = [v3 handle];
    v36 = [v3 handle];
    v37 = [v3 contact];
    v15 = [(_PSRecipient *)v32 initWithIdentifier:v33 senderHandle:v34 handle:v35 displayName:v36 contact:v37];
  }

LABEL_15:

  return v15;
}

id __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 count])
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 experimentId];
    v7 = [*(a1 + 32) deploymentId];
    v8 = [*(a1 + 32) treatmentId];
    [v5 stringWithFormat:@"Experiment:%@/%u/%@", v6, v7, v8];
  }

  else
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      v13 = @"Default";
      goto LABEL_8;
    }

    v11 = MEMORY[0x1E696AEC0];
    v6 = [v10 rolloutId];
    v12 = [*(a1 + 40) deploymentId];
    v8 = [*(a1 + 40) factorPackId];
    [v11 stringWithFormat:@"Rollout:%@/%u/%@", v6, v12, v8];
  }
  v13 = ;

LABEL_8:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke_2;
  v16[3] = &unk_1E7C26288;
  v17 = v13;
  v14 = v13;
  v9 = [v3 _pas_mappedArrayWithTransform:v16];

LABEL_9:

  return v9;
}

id __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrialID:*(a1 + 32)];

  return v3;
}

id __63___PSFTZKWSuggestionsTransformerFactory_boostPriorityContacts___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _pas_mappedArrayWithTransform:&__block_literal_global_57];
  if ([v3 count] && objc_msgSend(v4, "count"))
  {
    v21 = v4;
    v20 = objc_opt_new();
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [v10 recipients];
          if ([v11 count] != 1 || (objc_msgSend(v10, "recipients"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "firstObject"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v21, "containsObject:", v14), v14, v13, v12, v16 = v20, (v15 & 1) == 0))
          {
            v16 = v5;
          }

          [v16 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v17 = [v20 arrayByAddingObjectsFromArray:v5];

    v3 = v19;
    v4 = v21;
  }

  else
  {
    v17 = v3;
  }

  return v17;
}

id __62___PSFTZKWSuggestionsTransformerFactory_filterBlockedContacts__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 _pas_filteredArrayWithTest:&__block_literal_global_62];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

uint64_t __62___PSFTZKWSuggestionsTransformerFactory_filterBlockedContacts__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [a2 recipients];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v14 + 1) + 8 * v6) handle];
        v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" ()-"];
        v9 = [v7 componentsSeparatedByCharactersInSet:v8];
        v10 = [v9 componentsJoinedByString:&stru_1F2D6CE98];

        v11 = +[_PSBlockedHandlesCache sharedBlockedHandlesCache];
        LOBYTE(v8) = [v11 isHandleBlocked:v10];

        if (v8)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
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

void __80___PSFTZKWSuggestionsTransformerFactory_getResultsFromTransformers_suggestions___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("ps_ft_zkw_transformer", v1);

  v3 = getResultsFromTransformers_suggestions___pasExprOnceResult;
  getResultsFromTransformers_suggestions___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

void __80___PSFTZKWSuggestionsTransformerFactory_getResultsFromTransformers_suggestions___block_invoke_71(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if (![*(*(*(a1 + 40) + 8) + 40) count])
      {
        break;
      }

      v8 = (*(v7 + 16))(v7, *(*(*(a1 + 40) + 8) + 40));
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, a2, a3, "Filtering %@ since no recipients in suggestion after contact mapping", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, a2, a3, "Filtering %@ since no recipients provided in suggestion", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke_42_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, a2, a3, "Skipping suggestion %@ since mapped contact is an organization", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end