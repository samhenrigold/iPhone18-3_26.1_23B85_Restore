@interface WFSmartPromptStringGenerator
+ (id)contentDescriptionWithAttributionSet:(id)set contentItemCache:(id)cache;
+ (id)localizedOutputContentDescriptionWithContentCollection:(id)collection;
+ (id)localizedPromptForWorkflowName:(id)name attributionSet:(id)set contentCollection:(id)collection contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion;
+ (id)localizedSubtitleForWorkflowName:(id)name attributionSet:(id)set previousAttributions:(id)attributions contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion;
@end

@implementation WFSmartPromptStringGenerator

+ (id)localizedOutputContentDescriptionWithContentCollection:(id)collection
{
  v30 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v4 = [MEMORY[0x1E696AB50] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  items = [collectionCopy items];
  v6 = [items countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = objc_opt_class();
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [items countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __87__WFSmartPromptStringGenerator_localizedOutputContentDescriptionWithContentCollection___block_invoke;
  v23 = &unk_1E837A498;
  v11 = v4;
  v24 = v11;
  v12 = [v11 if_map:&v20];
  if ([v12 count])
  {
    v13 = MEMORY[0x1E696AD08];
    allObjects = [v12 allObjects];
    v15 = [v13 localizedStringByJoiningStrings:allObjects];
    localizedLowercaseString = [v15 localizedLowercaseString];
  }

  else
  {
    v17 = MEMORY[0x1E696AEC0];
    allObjects = WFLocalizedPluralString(@"%1$d items");
    numberOfItems = [collectionCopy numberOfItems];
    localizedLowercaseString = [v17 localizedStringWithFormat:allObjects, numberOfItems, v20, v21, v22, v23];
  }

  return localizedLowercaseString;
}

id __87__WFSmartPromptStringGenerator_localizedOutputContentDescriptionWithContentCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) countForObject:a2];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a2 localizedCountDescriptionWithValue:v3];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a2 countDescription];
    v4 = [v5 localizedStringWithFormat:v6, v3];
  }

  return v4;
}

+ (id)contentDescriptionWithAttributionSet:(id)set contentItemCache:(id)cache
{
  v91 = *MEMORY[0x1E69E9840];
  setCopy = set;
  cacheCopy = cache;
  v7 = [MEMORY[0x1E696AB50] set];
  v8 = [MEMORY[0x1E695DFA8] set];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v63 = setCopy;
  attributions = [setCopy attributions];
  v10 = [attributions countByEnumeratingWithState:&v79 objects:v90 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v80;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v80 != v12)
        {
          objc_enumerationMutation(attributions);
        }

        privateItemIdentifiers = [*(*(&v79 + 1) + 8 * i) privateItemIdentifiers];
        v15 = [privateItemIdentifiers set];
        [v8 unionSet:v15];
      }

      v11 = [attributions countByEnumeratingWithState:&v79 objects:v90 count:16];
    }

    while (v11);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v76;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v76 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [cacheCopy contentItemForUUID:*(*(&v75 + 1) + 8 * j)];
        v22 = objc_opt_class();
        if (v22)
        {
          [v7 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v18);
  }

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __86__WFSmartPromptStringGenerator_contentDescriptionWithAttributionSet_contentItemCache___block_invoke;
  v73[3] = &unk_1E837A498;
  v23 = v7;
  v74 = v23;
  v24 = [v23 if_map:v73];
  if (![v24 count])
  {
    v61 = v23;
    v62 = v24;
    allObjects = [MEMORY[0x1E696AB50] set];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    attributions2 = [v63 attributions];
    v30 = [attributions2 countByEnumeratingWithState:&v69 objects:v88 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v70;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v70 != v32)
          {
            objc_enumerationMutation(attributions2);
          }

          v34 = *(*(&v69 + 1) + 8 * k);
          origin = [v34 origin];
          if (origin)
          {
            v36 = origin;
            disclosureLevel = [v34 disclosureLevel];

            if (disclosureLevel == 1)
            {
              if ([v34 count])
              {
                v38 = 0;
                do
                {
                  origin2 = [v34 origin];
                  [allObjects addObject:origin2];

                  ++v38;
                }

                while ([v34 count] > v38);
              }
            }
          }
        }

        v31 = [attributions2 countByEnumeratingWithState:&v69 objects:v88 count:16];
      }

      while (v31);
    }

    if (![allObjects count])
    {
      localizedLowercaseString = 0;
      v23 = v61;
      v24 = v62;
      goto LABEL_57;
    }

    v60 = v16;
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    allObjects = allObjects;
    v40 = [allObjects countByEnumeratingWithState:&v65 objects:v87 count:16];
    v41 = allObjects;
    v24 = v62;
    if (v40)
    {
      v42 = v40;
      v64 = orderedSet;
      v43 = 0;
      v44 = *v66;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v66 != v44)
          {
            objc_enumerationMutation(allObjects);
          }

          v46 = *(*(&v65 + 1) + 8 * m);
          v47 = [allObjects countForObject:v46];
          localizedTitle = [v46 localizedTitle];
          if (localizedTitle)
          {
            v49 = MEMORY[0x1E696AEC0];
            if (v47 == 1)
            {
              v50 = WFLocalizedString(@"1 %1$@ item");
              v51 = [v49 localizedStringWithFormat:v50, localizedTitle];
              [v64 addObject:v51];
            }

            else
            {
              v53 = WFLocalizedString(@"%1$d %2$@ items");
              v54 = [v49 localizedStringWithFormat:v53, v47, localizedTitle];
              [v64 addObject:v54];
            }
          }

          else
          {
            v52 = getWFSecurityLogObject();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v84 = "+[WFSmartPromptStringGenerator contentDescriptionWithAttributionSet:contentItemCache:]";
              v85 = 2112;
              v86 = v46;
              _os_log_impl(&dword_1CA256000, v52, OS_LOG_TYPE_INFO, "%s Could not get localizedTitle for origin %@", buf, 0x16u);
            }

            v43 += v47;
          }
        }

        v42 = [allObjects countByEnumeratingWithState:&v65 objects:v87 count:16];
      }

      while (v42);

      v24 = v62;
      orderedSet = v64;
      if (!v43)
      {
        goto LABEL_52;
      }

      if (v43 == 1)
      {
        v41 = WFLocalizedString(@"1 item");
        [v64 addObject:v41];
      }

      else
      {
        v55 = MEMORY[0x1E696AEC0];
        v41 = WFLocalizedString(@"%1$d items");
        v56 = [v55 localizedStringWithFormat:v41, v43];
        [v64 addObject:v56];
      }
    }

LABEL_52:
    if ([orderedSet count])
    {
      v57 = MEMORY[0x1E696AD08];
      array = [orderedSet array];
      localizedLowercaseString = [v57 localizedStringByJoiningStrings:array];
    }

    else
    {
      localizedLowercaseString = 0;
    }

    v16 = v60;
    v23 = v61;
    goto LABEL_56;
  }

  v25 = MEMORY[0x1E696AD08];
  allObjects = [v24 allObjects];
  orderedSet = [v25 localizedStringByJoiningStrings:allObjects];
  localizedLowercaseString = [orderedSet localizedLowercaseString];
LABEL_56:

LABEL_57:

  return localizedLowercaseString;
}

id __86__WFSmartPromptStringGenerator_contentDescriptionWithAttributionSet_contentItemCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) countForObject:a2];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a2 localizedCountDescriptionWithValue:v3];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a2 countDescription];
    v4 = [v5 localizedStringWithFormat:v6, v3];
  }

  return v4;
}

+ (id)localizedSubtitleForWorkflowName:(id)name attributionSet:(id)set previousAttributions:(id)attributions contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion
{
  v59 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  setCopy = set;
  attributionsCopy = attributions;
  cacheCopy = cache;
  destinationCopy = destination;
  actionCopy = action;
  v21 = [self contentDescriptionWithAttributionSet:setCopy contentItemCache:cacheCopy];
  v22 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:2];
  v52 = attributionsCopy;
  if (attributionsCopy)
  {
    attributionsCopy = [self contentDescriptionWithAttributionSet:attributionsCopy contentItemCache:cacheCopy];
  }

  localizedTitle = [destinationCopy localizedTitle];
  v50 = actionCopy;
  v48 = attributionsCopy;
  v53 = nameCopy;
  v24 = [actionCopy smartPromptSubtitleWithPreviousContentDescription:attributionsCopy contentDestination:localizedTitle workflowName:nameCopy];

  if ([v24 length])
  {
    [v22 addObject:v24];
  }

  v47 = v24;
  if (!coercion)
  {
    webpagesLocation = [MEMORY[0x1E6996D78] webpagesLocation];
    if ([destinationCopy isEqual:webpagesLocation])
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  objc_opt_class();
  v27 = objc_opt_isKindOfClass();
  v28 = MEMORY[0x1E696AEC0];
  if (v27)
  {
    if (v21)
    {
      v29 = @"This might allow “%1$@” to share this content with “%2$@” and potentially other websites.";
    }

    else
    {
      v29 = @"This might allow “%1$@” to share content with “%2$@” and potentially other websites.";
    }

    v31 = WFLocalizedString(v29);
    localizedTitle2 = [destinationCopy localizedTitle];
    v33 = [v28 localizedStringWithFormat:v31, v53, localizedTitle2];
    [v22 addObject:v33];
  }

  else
  {
    if (v21)
    {
      v30 = @"This might allow “%1$@” to share this content with any website.";
    }

    else
    {
      v30 = @"This might allow “%1$@” to share content with any website.";
    }

    v31 = WFLocalizedString(v30);
    localizedTitle2 = [v28 localizedStringWithFormat:v31, v53];
    [v22 addObject:localizedTitle2];
  }

LABEL_19:
  v49 = destinationCopy;
  v34 = v21;
  v51 = cacheCopy;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v35 = setCopy;
  attributions = [setCopy attributions];
  v37 = [attributions countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v55;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v55 != v39)
        {
          objc_enumerationMutation(attributions);
        }

        disclosureWarnings = [*(*(&v54 + 1) + 8 * i) disclosureWarnings];
        v42 = [disclosureWarnings if_map:&__block_literal_global_44640];

        [v22 unionOrderedSet:v42];
      }

      v38 = [attributions countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v38);
  }

  if ([v22 count])
  {
    v43 = MEMORY[0x1E696AD08];
    array = [v22 array];
    v45 = [v43 localizedStringByJoiningStrings:array];
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

+ (id)localizedPromptForWorkflowName:(id)name attributionSet:(id)set contentCollection:(id)collection contentItemCache:(id)cache contentDestination:(id)destination action:(id)action isWebpageCoercion:(BOOL)coercion
{
  nameCopy = name;
  setCopy = set;
  cacheCopy = cache;
  destinationCopy = destination;
  actionCopy = action;
  if ([destinationCopy promptingBehaviour] == 2 && (objc_msgSend(actionCopy, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v19), v19, !isEqualToString))
  {
    v21 = 0;
  }

  else
  {
    v21 = [self contentDescriptionWithAttributionSet:setCopy contentItemCache:cacheCopy];
  }

  localizedTitle = [destinationCopy localizedTitle];
  if (!coercion)
  {
    goto LABEL_12;
  }

  webpagesLocation = [MEMORY[0x1E6996D78] webpagesLocation];
  v24 = [destinationCopy isEqual:webpagesLocation];

  if (!v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = MEMORY[0x1E696AEC0];
      if (v21)
      {
        v26 = WFLocalizedString(@"Allow “%1$@” to access %2$@ while loading web content on “%3$@”?");
        localizedTitle2 = [destinationCopy localizedTitle];
        [v27 localizedStringWithFormat:v26, nameCopy, v21, localizedTitle2];
      }

      else
      {
        v26 = WFLocalizedString(@"Allow “%1$@” to load web content on “%2$@”?");
        localizedTitle2 = [destinationCopy localizedTitle];
        [v27 localizedStringWithFormat:v26, nameCopy, localizedTitle2, v32];
      }
      v29 = ;

      goto LABEL_17;
    }

LABEL_12:
    v29 = [actionCopy smartPromptWithContentDescription:v21 contentDestination:localizedTitle workflowName:nameCopy];
    goto LABEL_18;
  }

  v25 = MEMORY[0x1E696AEC0];
  if (v21)
  {
    v26 = WFLocalizedString(@"Allow “%1$@” to access %2$@ while loading web content?");
    [v25 localizedStringWithFormat:v26, nameCopy, v21];
  }

  else
  {
    v26 = WFLocalizedString(@"Allow “%1$@” to load web content?");
    [v25 localizedStringWithFormat:v26, nameCopy, v31];
  }
  v29 = ;
LABEL_17:

LABEL_18:

  return v29;
}

@end