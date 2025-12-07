@interface SPUISSectionBuilderHandler
+ (Class)sectionBuilderClassForSection:(id)section withQueryContext:(id)context;
+ (id)buildSectionsWithSections:(id)sections queryContext:(id)context searchInAppInfo:(id)info renderState:(unint64_t)state;
+ (id)cachedValueForKey:(id)key cache:(id)cache computeHandler:(id)handler;
+ (id)findDistinctPathIdentifiersForSections:(id)sections;
+ (id)makeClearProactiveCategoryButtonItemWithCategory:(int)category shouldClearWholeSection:(BOOL)section result:(id)result;
+ (void)filterResultsFromSections:(id)sections queryContext:(id)context;
+ (void)injectRecentsOptionsIntoResult:(id)result;
- (NSSet)bundleIdentifiersForHiddenSections;
- (SPSearchContactEntity)contactEntity;
- (SPSearchEntity)searchEntity;
- (id)buildSections;
- (void)insertDummySectionsIntoSections:(id)sections;
@end

@implementation SPUISSectionBuilderHandler

+ (id)cachedValueForKey:(id)key cache:(id)cache computeHandler:(id)handler
{
  keyCopy = key;
  cacheCopy = cache;
  handlerCopy = handler;
  if (keyCopy)
  {
    v10 = [cacheCopy objectForKey:keyCopy];
    if (!v10)
    {
      v10 = handlerCopy[2](handlerCopy);
      if (v10)
      {
        [cacheCopy setObject:v10 forKey:keyCopy];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)filterResultsFromSections:(id)sections queryContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  contextCopy = context;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  searchEntities = [contextCopy searchEntities];
  firstObject = [searchEntities firstObject];

  firstObject2 = [sectionsCopy firstObject];
  v13 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    metadataSpecialCasedAppEntityBundles = [self metadataSpecialCasedAppEntityBundles];
    [firstObject bundleIdentifier];
    v15 = v24 = v8;
    v16 = [metadataSpecialCasedAppEntityBundles containsObject:v15];

    v8 = v24;
    if ((v16 & 1) == 0)
    {
      appURL = [firstObject appURL];
      path = [appURL path];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      resultSet = [firstObject2 resultSet];
      v19 = [resultSet countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          v22 = 0;
          do
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(resultSet);
            }

            [v13 addObject:{*(*(&v25 + 1) + 8 * v22++), path}];
          }

          while (v20 != v22);
          v20 = [resultSet countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v20);
      }

      [firstObject2 setResults:v13];
      v8 = v24;
    }
  }
}

+ (id)buildSectionsWithSections:(id)sections queryContext:(id)context searchInAppInfo:(id)info renderState:(unint64_t)state
{
  infoCopy = info;
  contextCopy = context;
  sectionsCopy = sections;
  [self filterResultsFromSections:sectionsCopy queryContext:contextCopy];
  v13 = objc_opt_new();
  [v13 setSections:sectionsCopy];

  [v13 setQueryContext:contextCopy];
  [v13 setSearchInAppInfo:infoCopy];

  [v13 setRenderState:state];
  buildSections = [v13 buildSections];

  return buildSections;
}

+ (Class)sectionBuilderClassForSection:(id)section withQueryContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  contextCopy = context;
  if (sectionBuilderClassForSection_withQueryContext__onceToken != -1)
  {
    +[SPUISSectionBuilderHandler sectionBuilderClassForSection:withQueryContext:];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = sectionBuilderClassForSection_withQueryContext__supportedClasses;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if ([v12 supportsSection:sectionCopy queryContext:{contextCopy, v16}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  searchEntities = [contextCopy searchEntities];
  objc_msgSend_count(searchEntities);
  v12 = objc_opt_class();

LABEL_14:
  v14 = v12;

  return v12;
}

void __77__SPUISSectionBuilderHandler_sectionBuilderClassForSection_withQueryContext___block_invoke()
{
  v2[17] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v2[10] = objc_opt_class();
  v2[11] = objc_opt_class();
  v2[12] = objc_opt_class();
  v2[13] = objc_opt_class();
  v2[14] = objc_opt_class();
  v2[15] = objc_opt_class();
  v2[16] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:17];
  v1 = sectionBuilderClassForSection_withQueryContext__supportedClasses;
  sectionBuilderClassForSection_withQueryContext__supportedClasses = v0;
}

+ (id)makeClearProactiveCategoryButtonItemWithCategory:(int)category shouldClearWholeSection:(BOOL)section result:(id)result
{
  if (category == 1)
  {
    sectionCopy = section;
    result = [SPUISUtilities localizedStringForKey:@"CLEAR", section, result];
    v7 = [SPUISUtilities localizedStringForKey:@"CLEAR_ALL_RECENTS"];
    v8 = v7;
    if (sectionCopy)
    {
      v9 = v7;
    }

    else
    {
      v9 = result;
    }

    v10 = v9;
    if (sectionCopy)
    {
      v11 = objc_opt_new();
      [v11 setSymbolName:@"xmark"];
      [v11 setIsTemplate:1];
    }

    else
    {
      v11 = 0;
    }

    v13 = objc_opt_new();
    [v13 setCategory:1];
    [v13 setShouldClearWholeSection:sectionCopy];
    v12 = objc_opt_new();
    objc_msgSend_setTitle_(v12);
    [v12 setImage:v11];
    [v12 setCommand:v13];
    [v12 setIsDestructive:1];
  }

  else
  {
    v8 = 0;
    result = 0;
    v12 = 0;
  }

  return v12;
}

+ (void)injectRecentsOptionsIntoResult:(id)result
{
  v20[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if ([resultCopy shouldUseCompactDisplay] && (objc_msgSend(resultCopy, "compactCard"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    compactCard = [resultCopy compactCard];
  }

  else
  {
    compactCard = [resultCopy inlineCard];
  }

  cardSections = [compactCard cardSections];
  firstObject = [cardSections firstObject];

  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  if ([self isZKWRecentBundle:sectionBundleIdentifier])
  {
    v11 = [self makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:1 result:resultCopy];
    v12 = [self makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:0 result:resultCopy];
    previewButtonItems = [firstObject previewButtonItems];
    if (previewButtonItems)
    {
      previewButtonItems2 = [firstObject previewButtonItems];
      v15 = [previewButtonItems2 arrayByAddingObject:v11];
      [firstObject setPreviewButtonItems:v15];
    }

    else
    {
      v20[0] = v11;
      previewButtonItems2 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [firstObject setPreviewButtonItems:previewButtonItems2];
    }

    trailingSwipeButtonItems = [firstObject trailingSwipeButtonItems];
    if (trailingSwipeButtonItems)
    {
      trailingSwipeButtonItems2 = [firstObject trailingSwipeButtonItems];
      v18 = [trailingSwipeButtonItems2 arrayByAddingObject:v12];
      [firstObject setTrailingSwipeButtonItems:v18];
    }

    else
    {
      v19 = v12;
      trailingSwipeButtonItems2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [firstObject setTrailingSwipeButtonItems:trailingSwipeButtonItems2];
    }
  }
}

+ (id)findDistinctPathIdentifiersForSections:(id)sections
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v3;
}

- (void)insertDummySectionsIntoSections:(id)sections
{
  v31[3] = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  searchEntity = [(SPUISSectionBuilderHandler *)self searchEntity];
  if (([searchEntity isFolderSearch] & 1) == 0)
  {
    v6 = [MEMORY[0x277D65848] mutableSectionWithBundleId:@"com.apple.spotlight.contactHeader"];
    [sectionsCopy insertObject:v6 atIndex:0];

    lastObject = [sectionsCopy lastObject];
    bundleIdentifier = [lastObject bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.parsec.related_search"])
    {
      v9 = lastObject;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = +[SPUISUtilities isMacOS];
    if (!searchEntity && !v11)
    {
      bundleIdentifiersForHiddenSections = [(SPUISSectionBuilderHandler *)self bundleIdentifiersForHiddenSections];
      v13 = objc_msgSend_count(bundleIdentifiersForHiddenSections);

      if (v13)
      {
        v14 = objc_msgSend_count(sectionsCopy) - (v10 != 0);
        v15 = [MEMORY[0x277D65848] mutableSectionWithBundleId:@"com.apple.other:show_more"];
        [sectionsCopy insertObject:v15 atIndex:v14];
      }
    }

    v30 = v10;
    bundleIdentifier2 = [lastObject bundleIdentifier];
    v17 = [bundleIdentifier2 isEqualToString:@"com.apple.spotlight.related_search"];

    if (lastObject)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_msgSend_count(sectionsCopy);
    v31[0] = @"com.apple.MobileAddressBook.SocialMedia";
    v31[1] = @"com.apple.spotlight.contactInfo";
    v31[2] = @"com.apple.searchd.searchThroughSuggestions";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    v21 = objc_msgSend_count(v20);
    v22 = (v21 - 1);
    if (v21 - 1 >= 0)
    {
      v23 = v19 - v18;
      do
      {
        v24 = MEMORY[0x277D65848];
        v25 = [v20 objectAtIndexedSubscript:v22];
        v26 = [v24 mutableSectionWithBundleId:v25];
        [sectionsCopy insertObject:v26 atIndex:v23];

        --v22;
      }

      while (v22 != -1);
    }

    if (!+[SPUISUtilities isMacOS])
    {
      queryContext = [(SPUISSectionBuilderHandler *)self queryContext];
      if (([queryContext queryKind] - 5) >= 4)
      {
        v28 = [searchEntity isContactEntitySearch] ^ 1;
      }

      else
      {
        v28 = 0;
      }

      if ((v28 & 1) == 0 && !v30)
      {
        v29 = [MEMORY[0x277D65848] mutableSectionWithBundleId:@"com.apple.parsec.related_search"];
        [sectionsCopy addObject:v29];
      }
    }
  }
}

- (id)buildSections
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = SPUISGeneralLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  v46 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B882000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "buildSections", "", buf, 2u);
  }

  spid = v4;
  log = v6;

  v7 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  sections = [(SPUISSectionBuilderHandler *)self sections];
  v9 = [sections countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(sections);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        results = [v13 results];
        v15 = objc_msgSend_count(results);

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [sections countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v10);
  }

  queryContext = [(SPUISSectionBuilderHandler *)self queryContext];
  if ([(SPUISSectionBuilderHandler *)self renderState]!= 1)
  {
    [(SPUISSectionBuilderHandler *)self insertDummySectionsIntoSections:v7];
  }

  contactEntity = [(SPUISSectionBuilderHandler *)self contactEntity];
  v45 = contactEntity;
  if (contactEntity)
  {
    v18 = contactEntity;
    v19 = [SPUISContactResultBuilder alloc];
    contact = [v18 contact];
    v21 = [contact mutableCopy];
    v22 = v18;
    v23 = v21;
    v24 = [(SPUISContactResultBuilder *)v19 initWithResult:0 contactEntity:v22 contact:v21];

    v47 = v24;
    [(SPUISResultBuilder *)v24 setQueryContext:queryContext];
  }

  else
  {
    v47 = 0;
  }

  v49 = [MEMORY[0x277CBEB18] arrayWithCapacity:objc_msgSend_count(v7)];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v25 = v7;
  v52 = [v25 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v52)
  {
    v50 = *v54;
    obj = v25;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v54 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v53 + 1) + 8 * j);
        v28 = [objc_opt_class() sectionBuilderClassForSection:v27 withQueryContext:queryContext];
        v29 = objc_opt_new();
        [v29 setQueryContext:queryContext];
        [v29 setSection:v27];
        [v29 setRenderState:{-[SPUISSectionBuilderHandler renderState](self, "renderState")}];
        bundleIdentifier = [v27 bundleIdentifier];
        [v29 setIsTopHitSection:{objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.spotlight.tophits"}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 setContactResultBuilder:v47];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            bundleIdentifiersForHiddenSections = [(SPUISSectionBuilderHandler *)self bundleIdentifiersForHiddenSections];
            [v29 setBundleIdentifiersForHiddenSections:bundleIdentifiersForHiddenSections];

            searchInAppInfo = [(SPUISSectionBuilderHandler *)self searchInAppInfo];
            [v29 setSearchInAppInfo:searchInAppInfo];
          }
        }

        v33 = os_signpost_id_generate(log);
        v34 = log;
        v35 = v34;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 138412290;
          v62 = v28;
          _os_signpost_emit_with_name_impl(&dword_26B882000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "SPUISSectionBuilder: buildSection", "%@", buf, 0xCu);
        }

        buildSection = [v29 buildSection];
        v37 = v35;
        v38 = v37;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *buf = 138412290;
          v62 = v28;
          _os_signpost_emit_with_name_impl(&dword_26B882000, v38, OS_SIGNPOST_INTERVAL_END, v33, "SPUISSectionBuilder: buildSection", "%@", buf, 0xCu);
        }

        results2 = [buildSection results];
        v40 = objc_msgSend_count(results2);

        if (v40)
        {
          [v49 addObject:buildSection];
        }
      }

      v25 = obj;
      v52 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v52);
  }

  v41 = log;
  v42 = v41;
  if (v46 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 138412290;
    v62 = v25;
    _os_signpost_emit_with_name_impl(&dword_26B882000, v42, OS_SIGNPOST_INTERVAL_END, spid, "SPUISSectionBuilder, buildSections", "%@", buf, 0xCu);
  }

  return v49;
}

- (NSSet)bundleIdentifiersForHiddenSections
{
  v19 = *MEMORY[0x277D85DE8];
  bundleIdentifiersForHiddenSections = self->_bundleIdentifiersForHiddenSections;
  if (!bundleIdentifiersForHiddenSections)
  {
    v4 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    sections = [(SPUISSectionBuilderHandler *)self sections];
    v6 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(sections);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 isInitiallyHidden])
          {
            bundleIdentifier = [v10 bundleIdentifier];
            [(NSSet *)v4 addObject:bundleIdentifier];
          }
        }

        v7 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = self->_bundleIdentifiersForHiddenSections;
    self->_bundleIdentifiersForHiddenSections = v4;

    bundleIdentifiersForHiddenSections = self->_bundleIdentifiersForHiddenSections;
  }

  return bundleIdentifiersForHiddenSections;
}

- (SPSearchEntity)searchEntity
{
  searchEntity = self->_searchEntity;
  if (!searchEntity)
  {
    queryContext = [(SPUISSectionBuilderHandler *)self queryContext];
    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];
    v7 = self->_searchEntity;
    self->_searchEntity = firstObject;

    searchEntity = self->_searchEntity;
  }

  return searchEntity;
}

- (SPSearchContactEntity)contactEntity
{
  p_contactEntity = &self->_contactEntity;
  contactEntity = self->_contactEntity;
  if (!contactEntity)
  {
    searchEntity = [(SPUISSectionBuilderHandler *)self searchEntity];
    v6 = searchEntity;
    if (searchEntity)
    {
      firstObject = searchEntity;
    }

    else
    {
      queryContext = [(SPUISSectionBuilderHandler *)self queryContext];
      searchEntities = [queryContext searchEntities];
      firstObject = [searchEntities firstObject];
    }

    if ([firstObject isContactEntitySearch])
    {
      v10 = firstObject;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(p_contactEntity, v10);

    contactEntity = *p_contactEntity;
  }

  return contactEntity;
}

@end