@interface FCFeedTransformationEndOfArticle
+ (id)transformationWithConfiguration:(id)configuration context:(id)context isPaywallAvailable:(BOOL)available;
- (id)transformItems:(id)items isPaidBlock:(id)block sourceChannelIDProvider:(id)provider;
@end

@implementation FCFeedTransformationEndOfArticle

+ (id)transformationWithConfiguration:(id)configuration context:(id)context isPaywallAvailable:(BOOL)available
{
  availableCopy = available;
  contextCopy = context;
  configurationCopy = configuration;
  v9 = objc_opt_new();
  [configurationCopy endOfArticleMinPaidHeadlineRatio];
  [v9 setPaidHeadlineRatio:?];
  [v9 setMaxiumInaccessibleHeadlineCount:{objc_msgSend(configurationCopy, "endOfArticleMaxInaccessiblePaidArticleCount")}];
  endOfArticleExpireArticlesAfter = [configurationCopy endOfArticleExpireArticlesAfter];

  [v9 setExpireArticlesAfter:endOfArticleExpireArticlesAfter];
  [v9 setMinimumResultHeadlineCount:4];
  [v9 setIsPaywallAvailable:availableCopy];
  purchaseProvider = [contextCopy purchaseProvider];

  [v9 setPurchaseProvider:purchaseProvider];

  return v9;
}

- (id)transformItems:(id)items isPaidBlock:(id)block sourceChannelIDProvider:(id)provider
{
  v122 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  blockCopy = block;
  providerCopy = provider;
  v9 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = itemsCopy;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Transforming items: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v118 = 0x3032000000;
  v119 = __Block_byref_object_copy__36;
  v120 = __Block_byref_object_dispose__36;
  v71 = itemsCopy;
  v121 = [itemsCopy mutableCopy];
  v10 = [*(*(&buf + 1) + 40) count];
  if (v10 > [(FCFeedTransformationEndOfArticle *)self minimumResultHeadlineCount])
  {
    *&v112 = 0;
    *(&v112 + 1) = &v112;
    v113 = 0x3032000000;
    v114 = __Block_byref_object_copy__36;
    v115 = __Block_byref_object_dispose__36;
    v116 = 0;
    v11 = *(*(&buf + 1) + 40);
    minimumResultHeadlineCount = [(FCFeedTransformationEndOfArticle *)self minimumResultHeadlineCount];
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke;
    v107[3] = &unk_1E7C3B658;
    v107[4] = &buf;
    v107[5] = &v112;
    [v11 fc_subarrayWithCount:minimumResultHeadlineCount result:v107];
    [(FCFeedTransformationEndOfArticle *)self paidHeadlineRatio];
    if (v13 != 0.0)
    {
      minimumResultHeadlineCount2 = [(FCFeedTransformationEndOfArticle *)self minimumResultHeadlineCount];
      [(FCFeedTransformationEndOfArticle *)self paidHeadlineRatio];
      v16 = floor(v15 * minimumResultHeadlineCount2);
      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      v17 = v16;
      if (v16)
      {
        v18 = *(*(&buf + 1) + 40);
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_2;
        v105[3] = &unk_1E7C40740;
        v19 = blockCopy;
        v106 = v19;
        v20 = [v18 fc_countOfObjectsPassingTest:v105];
        v21 = v17 > v20;
        v22 = v17 - v20;
        if (v21)
        {
          v23 = objc_opt_new();
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v24 = [*(*(&v112 + 1) + 40) copy];
          v25 = [v24 countByEnumeratingWithState:&v101 objects:v111 count:16];
          if (v25)
          {
            v26 = *v102;
LABEL_12:
            v27 = 0;
            while (1)
            {
              if (*v102 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v101 + 1) + 8 * v27);
              if ((*(v19 + 2))(v19, v28))
              {
                [v23 addObject:v28];
                [*(*(&v112 + 1) + 40) removeObject:v28];
              }

              if ([v23 count] >= v22)
              {
                break;
              }

              if (v25 == ++v27)
              {
                v25 = [v24 countByEnumeratingWithState:&v101 objects:v111 count:16];
                if (v25)
                {
                  goto LABEL_12;
                }

                break;
              }
            }
          }

          v29 = objc_opt_new();
          v30 = *(*(&buf + 1) + 40);
          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_3;
          v96[3] = &unk_1E7C40768;
          v31 = v29;
          v97 = v31;
          v32 = v23;
          v98 = v32;
          p_buf = &buf;
          v99 = v19;
          [v30 enumerateObjectsWithOptions:2 usingBlock:v96];
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          obj = v31;
          v33 = [obj countByEnumeratingWithState:&v92 objects:v110 count:16];
          if (v33)
          {
            v34 = *v93;
LABEL_22:
            v35 = 0;
            while (1)
            {
              if (*v93 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v92 + 1) + 8 * v35);
              if (![v32 count])
              {
                break;
              }

              v37 = [*(*(&buf + 1) + 40) objectAtIndex:{objc_msgSend(v36, "unsignedIntegerValue")}];
              [*(*(&v112 + 1) + 40) insertObject:v37 atIndex:0];
              v38 = *(*(&buf + 1) + 40);
              unsignedIntegerValue = [v36 unsignedIntegerValue];
              firstObject = [v32 firstObject];
              [v38 replaceObjectAtIndex:unsignedIntegerValue withObject:firstObject];

              [v32 removeObjectAtIndex:0];
              if (v33 == ++v35)
              {
                v33 = [obj countByEnumeratingWithState:&v92 objects:v110 count:16];
                if (v33)
                {
                  goto LABEL_22;
                }

                break;
              }
            }
          }
        }
      }
    }

    if ([(FCFeedTransformationEndOfArticle *)self isPaywallAvailable])
    {
      maxiumInaccessibleHeadlineCount = [(FCFeedTransformationEndOfArticle *)self maxiumInaccessibleHeadlineCount];
    }

    else
    {
      maxiumInaccessibleHeadlineCount = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_4;
    aBlock[3] = &unk_1E7C40790;
    aBlock[4] = self;
    v90 = blockCopy;
    v91 = providerCopy;
    v42 = _Block_copy(aBlock);
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_5;
    v87[3] = &unk_1E7C407B8;
    v43 = v42;
    v88 = v43;
    obja = _Block_copy(v87);
    v44 = [*(*(&buf + 1) + 40) fc_countOfObjectsPassingTest:obja];
    v45 = v44 - maxiumInaccessibleHeadlineCount;
    if (v44 > maxiumInaccessibleHeadlineCount)
    {
      v46 = objc_opt_new();
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v47 = *(*(&v112 + 1) + 40);
      v48 = [v47 countByEnumeratingWithState:&v83 objects:v109 count:16];
      if (v48)
      {
        v49 = *v84;
LABEL_36:
        v50 = 0;
        while (1)
        {
          if (*v84 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v83 + 1) + 8 * v50);
          if ((*(v43 + 2))(v43, v51))
          {
            [v46 addObject:v51];
          }

          if ([v46 count] >= v45)
          {
            break;
          }

          if (v48 == ++v50)
          {
            v48 = [v47 countByEnumeratingWithState:&v83 objects:v109 count:16];
            if (v48)
            {
              goto LABEL_36;
            }

            break;
          }
        }
      }

      v52 = objc_opt_new();
      v53 = *(*(&buf + 1) + 40);
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_6;
      v78[3] = &unk_1E7C407E0;
      v54 = v52;
      v79 = v54;
      v82 = v45;
      v80 = obja;
      v81 = &buf;
      [v53 enumerateObjectsWithOptions:2 usingBlock:v78];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v55 = v54;
      v56 = [v55 countByEnumeratingWithState:&v74 objects:v108 count:16];
      if (v56)
      {
        v57 = *v75;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v75 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = *(*(&v74 + 1) + 8 * i);
            if ([v46 count])
            {
              v60 = *(*(&buf + 1) + 40);
              unsignedIntegerValue2 = [v59 unsignedIntegerValue];
              firstObject2 = [v46 firstObject];
              [v60 replaceObjectAtIndex:unsignedIntegerValue2 withObject:firstObject2];

              unsignedIntegerValue3 = 0;
              v64 = v46;
            }

            else
            {
              if ([(FCFeedTransformationEndOfArticle *)self isPaywallAvailable])
              {
                goto LABEL_55;
              }

              v64 = *(*(&buf + 1) + 40);
              unsignedIntegerValue3 = [v59 unsignedIntegerValue];
            }

            [v64 removeObjectAtIndex:unsignedIntegerValue3];
          }

          v56 = [v55 countByEnumeratingWithState:&v74 objects:v108 count:16];
        }

        while (v56);
      }

LABEL_55:
    }

    _Block_object_dispose(&v112, 8);
  }

  v65 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(*(&buf + 1) + 40);
    LODWORD(v112) = 138412290;
    *(&v112 + 4) = v66;
    _os_log_impl(&dword_1B63EF000, v65, OS_LOG_TYPE_DEFAULT, "Transformed items: %@", &v112, 0xCu);
  }

  v67 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v67;
}

void __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 mutableCopy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 mutableCopy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) count];
  if (v7 >= [*(a1 + 40) count])
  {
    *a4 = 1;
  }

  else
  {
    v10 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a3];
    if (((*(*(a1 + 48) + 16))() & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v8 addObject:v9];
    }
  }
}

uint64_t __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = [*(a1 + 32) purchaseProvider];
    v5 = (*(*(a1 + 48) + 16))();
    v6 = [v4 purchasedTagIDs];
    v7 = [v6 containsObject:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __87__FCFeedTransformationEndOfArticle_transformItems_isPaidBlock_sourceChannelIDProvider___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) count] >= *(a1 + 56))
  {
    *a4 = 1;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:a3];
    LODWORD(v7) = (*(v7 + 16))(v7, v8);

    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v9 addObject:v10];
    }
  }
}

id __55__FCFeedTransformationEndOfArticle_transformHeadlines___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 sourceChannel];
  v3 = [v2 identifier];

  return v3;
}

@end