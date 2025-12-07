@interface ATXFaceSuggestionAssetParameters
+ (id)loadAssetParametersDictionaryFromPath:(id)path;
+ (id)posterDescriptorFromKey:(id)key withDescriptorCache:(id)cache;
- (ATXFaceSuggestionAssetParameters)init;
- (NSArray)collectionsSectionDescriptors;
- (NSArray)colorSectionDescriptors;
- (NSArray)dayZeroFeaturedDescriptors;
- (NSArray)descriptorsToRemoveFromCollections;
- (NSArray)emojiSectionDescriptors;
- (NSArray)heroSectionOrder;
- (NSArray)kaleidoscopeSectionDescriptors;
- (NSArray)osVersionSectionDescriptors;
- (NSArray)prideSectionDescriptors;
- (NSArray)sectionOrder;
- (NSArray)weatherAndAstronomySectionDescriptors;
- (NSDictionary)allowedDescriptorsForRegions;
- (NSDictionary)globalPopularityScores;
- (NSDictionary)hiddenRegions;
- (NSDictionary)topLevelDictionary;
- (NSDictionary)unpromotableRegions;
- (NSDictionary)uprankedDateIntervals;
- (NSSet)extensionBundleIdsEligibleForComplicationsInFaceGallery;
- (id)_currentCountryCode;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)dictionaryStringToSetFromObject:(id)object;
@end

@implementation ATXFaceSuggestionAssetParameters

- (ATXFaceSuggestionAssetParameters)init
{
  v10.receiver = self;
  v10.super_class = ATXFaceSuggestionAssetParameters;
  v2 = [(ATXFaceSuggestionAssetParameters *)&v10 init];
  if (v2)
  {
    v3 = +[ATXPosterDescriptorCache sharedInstance];
    descriptorCache = v2->_descriptorCache;
    v2->_descriptorCache = v3;

    v5 = [MEMORY[0x277CEB3C0] pathForResource:@"FaceSuggestionAssetParameters" ofType:@"json" isDirectory:0];
    path = v2->_path;
    v2->_path = v5;

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v2->_locale;
    v2->_locale = autoupdatingCurrentLocale;
  }

  return v2;
}

- (NSArray)sectionOrder
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"SectionOrder"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_210];

  return v3;
}

id __48__ATXFaceSuggestionAssetParameters_sectionOrder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__ATXFaceSuggestionAssetParameters_sectionOrder__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)heroSectionOrder
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"HeroSectionOrder"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_93];

  return v3;
}

id __52__ATXFaceSuggestionAssetParameters_heroSectionOrder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__ATXFaceSuggestionAssetParameters_heroSectionOrder__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)weatherAndAstronomySectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"WeatherAndAstronomySectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_95_1];

  return v3;
}

id __73__ATXFaceSuggestionAssetParameters_weatherAndAstronomySectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__ATXFaceSuggestionAssetParameters_weatherAndAstronomySectionDescriptors__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)kaleidoscopeSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"KaleidoscopeSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_97];

  return v3;
}

id __66__ATXFaceSuggestionAssetParameters_kaleidoscopeSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__ATXFaceSuggestionAssetParameters_kaleidoscopeSectionDescriptors__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)emojiSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"EmojiSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_99];

  return v3;
}

id __59__ATXFaceSuggestionAssetParameters_emojiSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ATXFaceSuggestionAssetParameters_emojiSectionDescriptors__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)prideSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"PrideSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_125];

  return v3;
}

id __59__ATXFaceSuggestionAssetParameters_prideSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ATXFaceSuggestionAssetParameters_prideSectionDescriptors__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)osVersionSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"OSVersionSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_127_0];

  return v3;
}

id __63__ATXFaceSuggestionAssetParameters_osVersionSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__ATXFaceSuggestionAssetParameters_osVersionSectionDescriptors__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)collectionsSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"CollectionsSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_129];

  return v3;
}

id __65__ATXFaceSuggestionAssetParameters_collectionsSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__ATXFaceSuggestionAssetParameters_collectionsSectionDescriptors__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)colorSectionDescriptors
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"ColorSectionDescriptors"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_131];

  return v3;
}

id __59__ATXFaceSuggestionAssetParameters_colorSectionDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ATXFaceSuggestionAssetParameters_colorSectionDescriptors__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)descriptorsToRemoveFromCollections
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"DescriptorsToRemoveFromCollections"];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_133];

  return v3;
}

id __70__ATXFaceSuggestionAssetParameters_descriptorsToRemoveFromCollections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__ATXFaceSuggestionAssetParameters_descriptorsToRemoveFromCollections__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSArray)dayZeroFeaturedDescriptors
{
  _currentCountryCode = [(ATXFaceSuggestionAssetParameters *)self _currentCountryCode];
  unpromotableRegions = [(ATXFaceSuggestionAssetParameters *)self unpromotableRegions];
  hiddenRegions = [(ATXFaceSuggestionAssetParameters *)self hiddenRegions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke;
  v11[3] = &unk_2785A05F0;
  v12 = _currentCountryCode;
  v13 = unpromotableRegions;
  v14 = hiddenRegions;
  selfCopy = self;
  v6 = hiddenRegions;
  v7 = unpromotableRegions;
  v8 = _currentCountryCode;
  v9 = [&unk_283A58B08 _pas_mappedArrayWithTransform:v11];

  return v9;
}

id __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = [v3 componentsSeparatedByString:@"/"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_158;
    v11[3] = &unk_2785A05C8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v6 = [v5 _pas_filteredArrayWithTest:v11];

    v7 = [v6 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v6, "count"))}];
    v8 = [ATXFaceSuggestionAssetParameters posterDescriptorFromKey:v7 withDescriptorCache:*(*(a1 + 56) + 8)];

    v9 = v12;
  }

  else
  {
    v9 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_cold_1();
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_158(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 componentsSeparatedByString:@":"];
  v4 = [v3 firstObject];

  if (v4)
  {
    if (*(a1 + 32))
    {
      v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
      if ([v5 containsObject:*(a1 + 32)])
      {

LABEL_6:
        v9 = __atxlog_handle_lock_screen(v6);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v13 = 136315650;
          v14 = "[ATXFaceSuggestionAssetParameters dayZeroFeaturedDescriptors]_block_invoke";
          v15 = 2112;
          v16 = v10;
          v17 = 2112;
          v18 = v4;
          _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: not showing hidden or unpromotable day zero extensionBundleId in restricted country code %@: %@", &v13, 0x20u);
        }

        goto LABEL_9;
      }

      v7 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v8 = [v7 containsObject:*(a1 + 32)];

      if (v8)
      {
        goto LABEL_6;
      }
    }

    v11 = 1;
    goto LABEL_11;
  }

LABEL_9:
  v11 = 0;
LABEL_11:

  return v11;
}

- (NSSet)extensionBundleIdsEligibleForComplicationsInFaceGallery
{
  v2 = [(ATXFaceSuggestionAssetParameters *)self arrayForKey:@"ExtensionBundleIdsEligibleForComplicationsInFaceGallery"];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_167_0];
    v5 = [v3 initWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __91__ATXFaceSuggestionAssetParameters_extensionBundleIdsEligibleForComplicationsInFaceGallery__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __91__ATXFaceSuggestionAssetParameters_extensionBundleIdsEligibleForComplicationsInFaceGallery__block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (NSDictionary)uprankedDateIntervals
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"UprankedDateIntervals"];
  v3 = [v2 mutableCopy];
  [v3 addEntriesFromDictionary:&unk_283A58F10];
  v4 = [v3 copy];

  if (v4)
  {
    v47 = v3;
    v50 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v46 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0x277CBE000uLL;
      v9 = *v63;
      v48 = *v63;
      v49 = v5;
      do
      {
        v10 = 0;
        v51 = v7;
        do
        {
          if (*v63 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v62 + 1) + 8 * v10);
          v12 = [v5 objectForKeyedSubscript:{v11, v46}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = [v5 objectForKeyedSubscript:v11];
            _currentCountryCode = [(ATXFaceSuggestionAssetParameters *)self _currentCountryCode];
            v17 = _currentCountryCode;
            if (_currentCountryCode)
            {
              v18 = _currentCountryCode;
            }

            else
            {
              v18 = @"default";
            }

            v19 = v18;

            v20 = [v15 objectForKeyedSubscript:v19];
            if (v20)
            {
              v21 = v19;
            }

            else
            {

              v21 = @"default";
            }

            v55 = v21;
            v22 = [v15 objectForKeyedSubscript:?];

            if (v22)
            {
              v54 = v10;
              objc_opt_class();
              v23 = objc_opt_isKindOfClass();
              if (v23)
              {
                v53 = v15;
                v57 = objc_opt_new();
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v52 = v22;
                v24 = v22;
                v25 = [v24 countByEnumeratingWithState:&v58 objects:v72 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v59;
                  do
                  {
                    for (i = 0; i != v26; ++i)
                    {
                      if (*v59 != v27)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v29 = *(*(&v58 + 1) + 8 * i);
                      objc_opt_class();
                      v30 = objc_opt_isKindOfClass();
                      if (v30)
                      {
                        v31 = v8;
                        v32 = v11;
                        v33 = v29;
                        v34 = [(__CFString *)v33 objectForKeyedSubscript:@"start"];
                        v35 = dateFromDict(v34);

                        if (v35)
                        {
                          v36 = [(__CFString *)v33 objectForKeyedSubscript:@"end"];
                          v37 = dateFromDict(v36);

                          if (v37 && ([v35 isAfterDate:v37] & 1) == 0)
                          {
                            v38 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v35 endDate:v37];
                          }

                          else
                          {
                            v38 = 0;
                          }
                        }

                        else
                        {
                          v38 = 0;
                        }

                        if (v38)
                        {
                          [v57 addObject:v38];
                          v11 = v32;
                          v8 = v31;
                        }

                        else
                        {
                          v40 = __atxlog_handle_lock_screen(v39);
                          v8 = v31;
                          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                          {
                            locale = self->_locale;
                            *buf = 136315650;
                            v67 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
                            v68 = 2112;
                            v69 = v33;
                            v70 = 2112;
                            v71 = locale;
                            _os_log_error_impl(&dword_2263AA000, v40, OS_LOG_TYPE_ERROR, "%s: date interval dict didn't produce a valid interval: %@, current locale: %@", buf, 0x20u);
                          }

                          v11 = v32;
                        }
                      }

                      else
                      {
                        v38 = __atxlog_handle_lock_screen(v30);
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v67 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
                          v68 = 2112;
                          v69 = v29;
                          _os_log_error_impl(&dword_2263AA000, v38, OS_LOG_TYPE_ERROR, "%s: array element %@ is not a dictionary", buf, 0x16u);
                        }
                      }
                    }

                    v26 = [v24 countByEnumeratingWithState:&v58 objects:v72 count:16];
                  }

                  while (v26);
                }

                v42 = v57;
                v43 = [v57 copy];
                [v50 setObject:v43 forKeyedSubscript:v11];

                v9 = v48;
                v5 = v49;
                v7 = v51;
                v22 = v52;
                v15 = v53;
              }

              else
              {
                v42 = __atxlog_handle_lock_screen(v23);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v67 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
                  v68 = 2112;
                  v69 = v55;
                  _os_log_error_impl(&dword_2263AA000, v42, OS_LOG_TYPE_ERROR, "%s: value of key %@ is not an array", buf, 0x16u);
                }
              }

              v10 = v54;
            }
          }

          else
          {
            v15 = __atxlog_handle_lock_screen(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v67 = "[ATXFaceSuggestionAssetParameters uprankedDateIntervals]";
              v68 = 2112;
              v69 = v11;
              _os_log_error_impl(&dword_2263AA000, v15, OS_LOG_TYPE_ERROR, "%s: value of key %@ not a dictionary", buf, 0x16u);
            }
          }

          ++v10;
        }

        while (v10 != v7);
        v7 = [v5 countByEnumeratingWithState:&v62 objects:v73 count:16];
      }

      while (v7);
    }

    v44 = [v50 copy];
    v4 = v46;
    v3 = v47;
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (NSDictionary)globalPopularityScores
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"GlobalPopularityScores"];
  if (v3)
  {
    v18 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [ATXFaceSuggestionAssetParameters posterDescriptorFromKey:v9 withDescriptorCache:self->_descriptorCache];
          if (v10)
          {
            v11 = [v4 objectForKeyedSubscript:v9];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v14 = [v4 objectForKeyedSubscript:v9];
              [v18 setObject:v14 forKeyedSubscript:v10];
            }

            else
            {
              v14 = __atxlog_handle_lock_screen(v13);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v24 = "[ATXFaceSuggestionAssetParameters globalPopularityScores]";
                v25 = 2112;
                v26 = v9;
                _os_log_error_impl(&dword_2263AA000, v14, OS_LOG_TYPE_ERROR, "%s: value is not NSNumber for key: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v14 = __atxlog_handle_lock_screen(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v24 = "[ATXFaceSuggestionAssetParameters globalPopularityScores]";
              v25 = 2112;
              v26 = v9;
              _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: no descriptor found for key: %@", buf, 0x16u);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v6);
    }

    v15 = [v18 copy];
    v3 = v17;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSDictionary)unpromotableRegions
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"UnpromotableRegions"];
  if (v2)
  {
    v3 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = v5;
    v7 = *v24;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v15 = __atxlog_handle_lock_screen(isKindOfClass);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 136315394;
          v28 = "[ATXFaceSuggestionAssetParameters unpromotableRegions]";
          v29 = 2112;
          v30 = v9;
          v17 = v15;
          v18 = "%s: key is not a string: %@";
          goto LABEL_16;
        }

        v11 = [v4 objectForKeyedSubscript:v9];
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();

        if (v12)
        {
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          v15 = [v4 objectForKeyedSubscript:v9];
          v16 = [v14 initWithArray:v15];
          [v3 setObject:v16 forKeyedSubscript:v9];

          goto LABEL_13;
        }

        v15 = __atxlog_handle_lock_screen(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v28 = "[ATXFaceSuggestionAssetParameters unpromotableRegions]";
          v29 = 2112;
          v30 = v9;
          v17 = v15;
          v18 = "%s: value is not an array for key: %@";
LABEL_16:
          _os_log_error_impl(&dword_2263AA000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
        }

LABEL_13:

        ++v8;
      }

      while (v6 != v8);
      v19 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v6 = v19;
      if (!v19)
      {
LABEL_18:

        v20 = [v3 copy];
        v2 = v22;
        goto LABEL_20;
      }
    }
  }

  v20 = 0;
LABEL_20:

  return v20;
}

- (NSDictionary)hiddenRegions
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"HiddenRegions"];
  if (v2)
  {
    v3 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = v5;
    v7 = *v24;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v15 = __atxlog_handle_lock_screen(isKindOfClass);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 136315394;
          v28 = "[ATXFaceSuggestionAssetParameters hiddenRegions]";
          v29 = 2112;
          v30 = v9;
          v17 = v15;
          v18 = "%s: key is not a string: %@";
          goto LABEL_16;
        }

        v11 = [v4 objectForKeyedSubscript:v9];
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();

        if (v12)
        {
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          v15 = [v4 objectForKeyedSubscript:v9];
          v16 = [v14 initWithArray:v15];
          [v3 setObject:v16 forKeyedSubscript:v9];

          goto LABEL_13;
        }

        v15 = __atxlog_handle_lock_screen(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v28 = "[ATXFaceSuggestionAssetParameters hiddenRegions]";
          v29 = 2112;
          v30 = v9;
          v17 = v15;
          v18 = "%s: value is not an array for key: %@";
LABEL_16:
          _os_log_error_impl(&dword_2263AA000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
        }

LABEL_13:

        ++v8;
      }

      while (v6 != v8);
      v19 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v6 = v19;
      if (!v19)
      {
LABEL_18:

        v20 = [v3 copy];
        v2 = v22;
        goto LABEL_20;
      }
    }
  }

  v20 = 0;
LABEL_20:

  return v20;
}

- (NSDictionary)allowedDescriptorsForRegions
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(ATXFaceSuggestionAssetParameters *)self dictionaryForKey:@"AllowedDescriptorsForRegions"];
  if (v3)
  {
    v4 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v12 = [v5 objectForKeyedSubscript:v10];
            v13 = [(ATXFaceSuggestionAssetParameters *)self dictionaryStringToSetFromObject:v12];

            if (v13)
            {
              [v4 setObject:v13 forKeyedSubscript:v10];
            }

            else
            {
              v15 = __atxlog_handle_lock_screen(v14);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v24 = "[ATXFaceSuggestionAssetParameters allowedDescriptorsForRegions]";
                v25 = 2112;
                v26 = v10;
                _os_log_fault_impl(&dword_2263AA000, v15, OS_LOG_TYPE_FAULT, "%s: dictionary is nil. key: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v13 = __atxlog_handle_lock_screen(isKindOfClass);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v24 = "[ATXFaceSuggestionAssetParameters allowedDescriptorsForRegions]";
              v25 = 2112;
              v26 = v10;
              _os_log_fault_impl(&dword_2263AA000, v13, OS_LOG_TYPE_FAULT, "%s: key is not a string: %@", buf, 0x16u);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v7);
    }

    v16 = [v4 copy];
    v3 = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)dictionaryStringToSetFromObject:(id)object
{
  v35 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v25 = objectCopy;
    v5 = objectCopy;
    v6 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    v10 = *v27;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        objc_opt_class();
        v13 = objc_opt_isKindOfClass();
        if ((v13 & 1) == 0)
        {
          v18 = __atxlog_handle_lock_screen(v13);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_13;
          }

          *buf = 136315394;
          v31 = "[ATXFaceSuggestionAssetParameters dictionaryStringToSetFromObject:]";
          v32 = 2112;
          v33 = v12;
          v20 = v18;
          v21 = "%s: key is not a string: %@";
          goto LABEL_16;
        }

        v14 = [v7 objectForKeyedSubscript:v12];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v17 = objc_alloc(MEMORY[0x277CBEB98]);
          v18 = [v7 objectForKeyedSubscript:v12];
          v19 = [v17 initWithArray:v18];
          [v6 setObject:v19 forKeyedSubscript:v12];

          goto LABEL_13;
        }

        v18 = __atxlog_handle_lock_screen(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v31 = "[ATXFaceSuggestionAssetParameters dictionaryStringToSetFromObject:]";
          v32 = 2112;
          v33 = v12;
          v20 = v18;
          v21 = "%s: value is not an array for key: %@";
LABEL_16:
          _os_log_fault_impl(&dword_2263AA000, v20, OS_LOG_TYPE_FAULT, v21, buf, 0x16u);
        }

LABEL_13:

        ++v11;
      }

      while (v9 != v11);
      v22 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v9 = v22;
      if (!v22)
      {
LABEL_18:

        v23 = [v6 copy];
        objectCopy = v25;
        goto LABEL_22;
      }
    }
  }

  v7 = __atxlog_handle_lock_screen(isKindOfClass);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(ATXFaceSuggestionAssetParameters *)objectCopy dictionaryStringToSetFromObject:v7];
  }

  v23 = 0;
LABEL_22:

  return v23;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  topLevelDictionary = [(ATXFaceSuggestionAssetParameters *)self topLevelDictionary];
  v6 = [topLevelDictionary objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v9 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceSuggestionAssetParameters *)keyCopy dictionaryForKey:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  topLevelDictionary = [(ATXFaceSuggestionAssetParameters *)self topLevelDictionary];
  v6 = [topLevelDictionary objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v9 = __atxlog_handle_lock_screen(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceSuggestionAssetParameters *)keyCopy arrayForKey:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (NSDictionary)topLevelDictionary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  topLevelDictionary = selfCopy->_topLevelDictionary;
  if (topLevelDictionary)
  {
    v4 = [(NSDictionary *)topLevelDictionary copy];
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  if (selfCopy->_path)
  {
    v5 = [ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:?];
    v6 = selfCopy->_topLevelDictionary;
    selfCopy->_topLevelDictionary = v5;

    v4 = [(NSDictionary *)selfCopy->_topLevelDictionary copy];
    goto LABEL_5;
  }

  v9 = __atxlog_handle_lock_screen(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ATXFaceSuggestionAssetParameters topLevelDictionary];
  }

  v7 = 0;
LABEL_6:
  objc_sync_exit(selfCopy);

  return v7;
}

+ (id)loadAssetParametersDictionaryFromPath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:0 error:&v15];
  v5 = v15;
  v6 = v5;
  if (v4)
  {
    v14 = v5;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v14];
    v8 = v14;

    if (v7)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v7 = v7;
        v11 = v7;
        goto LABEL_13;
      }

      v12 = __atxlog_handle_lock_screen(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:];
      }
    }

    else
    {
      v12 = __atxlog_handle_lock_screen(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:];
      }
    }

    v11 = 0;
  }

  else
  {
    v7 = __atxlog_handle_lock_screen(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ATXFaceSuggestionAssetParameters loadAssetParametersDictionaryFromPath:];
    }

    v11 = 0;
    v8 = v6;
  }

LABEL_13:

  return v11;
}

+ (id)posterDescriptorFromKey:(id)key withDescriptorCache:(id)cache
{
  keyCopy = key;
  cacheCopy = cache;
  if ([keyCopy isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"])
  {
    descriptors = [cacheCopy descriptors];
    v8 = [descriptors objectForKeyedSubscript:@"com.apple.WallpaperKit.CollectionsPoster"];
    firstObject = [v8 firstObject];
  }

  else
  {
    descriptors = [keyCopy componentsSeparatedByString:@":"];
    v10 = [descriptors count];
    if (v10 > 1)
    {
      v8 = [descriptors objectAtIndexedSubscript:0];
      v11 = [descriptors objectAtIndexedSubscript:1];
      descriptors2 = [cacheCopy descriptors];
      v13 = [descriptors2 objectForKeyedSubscript:v8];

      if (v13)
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke;
        v22[3] = &unk_2785A0618;
        v15 = v11;
        v23 = v15;
        v16 = [v13 bs_firstObjectPassingTest:v22];
        v17 = v16;
        if (v16)
        {
          firstObject = v16;
        }

        else
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke_2;
          v20[3] = &unk_2785A0618;
          v21 = v15;
          firstObject = [v13 bs_firstObjectPassingTest:v20];
        }

        v18 = v23;
      }

      else
      {
        v18 = __atxlog_handle_lock_screen(v14);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[ATXFaceSuggestionAssetParameters posterDescriptorFromKey:withDescriptorCache:];
        }

        firstObject = 0;
      }
    }

    else
    {
      v8 = __atxlog_handle_lock_screen(v10);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[ATXFaceSuggestionAssetParameters posterDescriptorFromKey:withDescriptorCache:];
      }

      firstObject = 0;
    }
  }

  return firstObject;
}

uint64_t __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 coreIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __80__ATXFaceSuggestionAssetParameters_posterDescriptorFromKey_withDescriptorCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 coreIdentifier];
  v4 = [v3 containsString:*(a1 + 32)];

  return v4;
}

- (id)_currentCountryCode
{
  v9 = *MEMORY[0x277D85DE8];
  countryCode = [(NSLocale *)self->_locale countryCode];
  v3 = __atxlog_handle_lock_screen(countryCode);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ATXFaceSuggestionAssetParameters _currentCountryCode]";
    v7 = 2112;
    v8 = countryCode;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: using country code: %@", &v5, 0x16u);
  }

  return countryCode;
}

void __48__ATXFaceSuggestionAssetParameters_sectionOrder__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __52__ATXFaceSuggestionAssetParameters_heroSectionOrder__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __73__ATXFaceSuggestionAssetParameters_weatherAndAstronomySectionDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __66__ATXFaceSuggestionAssetParameters_kaleidoscopeSectionDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __59__ATXFaceSuggestionAssetParameters_emojiSectionDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __59__ATXFaceSuggestionAssetParameters_prideSectionDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __63__ATXFaceSuggestionAssetParameters_osVersionSectionDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __65__ATXFaceSuggestionAssetParameters_collectionsSectionDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __59__ATXFaceSuggestionAssetParameters_colorSectionDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __70__ATXFaceSuggestionAssetParameters_descriptorsToRemoveFromCollections__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __62__ATXFaceSuggestionAssetParameters_dayZeroFeaturedDescriptors__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

void __91__ATXFaceSuggestionAssetParameters_extensionBundleIdsEligibleForComplicationsInFaceGallery__block_invoke_cold_1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_2_10(&dword_2263AA000, v0, v1, "%s: item '%@' is not a string in array with key %@", v2, v3, v4, v5, v6);
}

- (void)dictionaryStringToSetFromObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_13();
  v4 = v3;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%s: object is not a dictionary: %@", v5, 0x16u);
}

- (void)dictionaryForKey:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 topLevelDictionary];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, a3, v5, "%s: did not find dictionary with key %@ in top level dictionary: %@", v6);
}

- (void)arrayForKey:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 topLevelDictionary];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, a3, v5, "%s: did not find array with key %@ in top level dictionary: %@", v6);
}

+ (void)loadAssetParametersDictionaryFromPath:.cold.1()
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)loadAssetParametersDictionaryFromPath:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_28();
  v3 = v0;
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, v1, v1, "%s: could not parse JSON from contents of path: %@; error: %@", v2);
}

+ (void)loadAssetParametersDictionaryFromPath:.cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_28();
  v3 = v0;
  OUTLINED_FUNCTION_4_5(&dword_2263AA000, v1, v1, "%s: could not load data from path: %@; error: %@", v2);
}

+ (void)posterDescriptorFromKey:withDescriptorCache:.cold.1()
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end