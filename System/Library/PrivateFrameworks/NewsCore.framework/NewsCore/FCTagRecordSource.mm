@interface FCTagRecordSource
- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l desiredTagRecordFieldOptions:(unint64_t)options;
- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d;
- (id)alwaysLocalizedKeys;
- (id)experimentalizableKeys;
- (id)localizableExperimentalizableKeys;
- (id)localizableKeys;
- (id)localizableLanguageSpecificKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
- (id)saveTagRecords:(id)records;
@end

@implementation FCTagRecordSource

- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  directoryCopy = directory;
  monitorCopy = monitor;
  taskableCopy = taskable;
  postfixCopy = postfix;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v27 = "[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]";
    v28 = 2080;
    v29 = "FCTagRecordSource.m";
    v30 = 1024;
    v31 = 183;
    v32 = 2114;
    v33 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21 = MEMORY[0x1E695DF30];
  v22 = *MEMORY[0x1E695D930];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]"];
  v24 = [v21 exceptionWithName:v22 reason:v23 userInfo:0];
  v25 = v24;

  objc_exception_throw(v24);
}

- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l desiredTagRecordFieldOptions:(unint64_t)options
{
  v34 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  directoryCopy = directory;
  monitorCopy = monitor;
  taskableCopy = taskable;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDatabase"];
    *buf = 136315906;
    v27 = "[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:desiredTagRecordFieldOptions:]";
    v28 = 2080;
    v29 = "FCTagRecordSource.m";
    v30 = 1024;
    v31 = 193;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (directoryCopy)
    {
      goto LABEL_6;
    }
  }

  else if (directoryCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDirectory"];
    *buf = 136315906;
    v27 = "[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:desiredTagRecordFieldOptions:]";
    v28 = 2080;
    v29 = "FCTagRecordSource.m";
    v30 = 1024;
    v31 = 194;
    v32 = 2114;
    v33 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v25.receiver = self;
  v25.super_class = FCTagRecordSource;
  v18 = [(FCRecordSource *)&v25 initWithContentDatabase:databaseCopy contentDirectory:directoryCopy appActivityMonitor:monitorCopy backgroundTaskable:taskableCopy defaultTTL:0 experimentalizableFieldsPostfix:0 activeTreatmentID:l];
  v19 = v18;
  if (v18)
  {
    v18->_desiredFieldOptions = options;
    v20 = FCTagRecordSourceDesiredKeysFromDesiredFieldOptions(options);
    nonLocalizableKeys = v19->_nonLocalizableKeys;
    v19->_nonLocalizableKeys = v20;
  }

  return v19;
}

- (id)experimentalizableKeys
{
  if (qword_1EDB26950 != -1)
  {
    dispatch_once(&qword_1EDB26950, &__block_literal_global_19_0);
  }

  v3 = _MergedGlobals_10;

  return v3;
}

uint64_t __43__FCTagRecordSource_experimentalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"activeExperimentID", @"publisherSpecifiedArticleIDs", 0}];
  v1 = _MergedGlobals_10;
  _MergedGlobals_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)localizableExperimentalizableKeys
{
  if (qword_1EDB26960 != -1)
  {
    dispatch_once(&qword_1EDB26960, &__block_literal_global_23);
  }

  v3 = qword_1EDB26958;

  return v3;
}

uint64_t __54__FCTagRecordSource_localizableExperimentalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"groupingAvailability", @"superfeedConfigResourceID", 0}];
  v1 = qword_1EDB26958;
  qword_1EDB26958 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)localizableKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FCTagRecordSource_localizableKeys__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  if (qword_1EDB26970 != -1)
  {
    dispatch_once(&qword_1EDB26970, block);
  }

  return qword_1EDB26968;
}

void __36__FCTagRecordSource_localizableKeys__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__FCTagRecordSource_localizableKeys__block_invoke_2;
  v3[3] = &unk_1E7C36D40;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DEC8] fc_array:v3];
  v2 = qword_1EDB26968;
  qword_1EDB26968 = v1;
}

void __36__FCTagRecordSource_localizableKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v5[12] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) desiredFieldOptions] & 2) != 0)
  {
    [v3 addObject:@"name"];
  }

  v5[0] = @"publisherPaidOfferableConfig";
  v5[1] = @"publisherPaidDescriptionStrings";
  v5[2] = @"isHidden";
  v5[3] = @"paidBundleSubscriptionButtonConfig";
  v5[4] = @"articleRecirculationConfiguration";
  v5[5] = @"superfeedConfigResourceID";
  v5[6] = @"sportsRecommendationMappings";
  v5[7] = @"isSportsRecommendable";
  v5[8] = @"highlightsArticleListID";
  v5[9] = @"sportsData";
  v5[10] = @"subscriptionRate";
  v5[11] = @"groupingAvailability";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:12];
  [v3 addObjectsFromArray:v4];
}

- (id)alwaysLocalizedKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  if (qword_1EDB26980 != -1)
  {
    dispatch_once(&qword_1EDB26980, block);
  }

  return qword_1EDB26978;
}

void __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke_2;
  v3[3] = &unk_1E7C36D40;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DEC8] fc_array:v3];
  v2 = qword_1EDB26978;
  qword_1EDB26978 = v1;
}

void __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) desiredFieldOptions] & 0x200) != 0)
  {
    [v3 addObject:@"stocksFeedConfiguration"];
  }

  v5[0] = @"feedConfiguration";
  v5[1] = @"propertyFlagsLocalized";
  v5[2] = @"sectionFeedConfiguration";
  v5[3] = @"foodGroupingAvailability";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  [v3 addObjectsFromArray:v4];
}

- (id)localizableLanguageSpecificKeys
{
  if (qword_1EDB26990 != -1)
  {
    dispatch_once(&qword_1EDB26990, &__block_literal_global_28_0);
  }

  v3 = qword_1EDB26988;

  return v3;
}

uint64_t __52__FCTagRecordSource_localizableLanguageSpecificKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"name", 0}];
  v1 = qword_1EDB26988;
  qword_1EDB26988 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v264 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  baseCopy = base;
  v247 = objc_alloc_init(MEMORY[0x1E69B7000]);
  v249 = baseCopy;
  [v247 setBase:baseCopy];
  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v9 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"name"];
  v233 = [recordCopy objectForKey:v9];

  v10 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"nameCompact"];
  v11 = [recordCopy objectForKey:v10];

  v12 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"feedConfiguration"];
  v244 = [recordCopy objectForKey:v12];

  v13 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v243 = [recordCopy objectForKey:v13];

  v14 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v242 = [recordCopy objectForKey:v14];

  v15 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v241 = [recordCopy objectForKey:v15];

  v16 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v240 = [recordCopy objectForKey:v16];

  v17 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v239 = [recordCopy objectForKey:v17];

  v238 = [FCRecordSource resolveLocalizableExperimentalizableFieldforKey:"resolveLocalizableExperimentalizableFieldforKey:inRecord:activeExperimentIDKey:" inRecord:? activeExperimentIDKey:?];
  v18 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v237 = [recordCopy objectForKey:v18];

  v19 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v236 = [recordCopy objectForKey:v19];

  v20 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v231 = [recordCopy objectForKey:v20];

  v245 = localizedKeysByOriginalKey;
  v21 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v235 = [recordCopy objectForKey:v21];

  experimentalizedKeysByOriginalKey = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v23 = [experimentalizedKeysByOriginalKey objectForKeyedSubscript:@"activeExperimentID"];
  v24 = [recordCopy objectForKey:v23];

  v230 = experimentalizedKeysByOriginalKey;
  v25 = [experimentalizedKeysByOriginalKey objectForKeyedSubscript:@"publisherSpecifiedArticleIDs"];
  v26 = [recordCopy objectForKey:v25];

  v27 = [recordCopy objectForKey:@"publisherSpecifiedArticleIDs"];
  v228 = v26;
  v229 = v24;
  v227 = v27;
  selfCopy = self;
  if ([v26 count])
  {
    activeTreatmentID = [(FCRecordSource *)self activeTreatmentID];
    if ([v24 isEqualToString:activeTreatmentID])
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29;
  }

  else
  {
    v30 = v27;
  }

  v226 = v30;
  v31 = [v30 mutableCopy];
  [v247 setPublisherSpecifiedArticleIDs:v31];

  v32 = [recordCopy objectForKey:@"publisherSpecifiedArticles"];
  [v247 setPublisherSpecifiedArticlesJson:v32];

  objc_opt_class();
  v33 = [recordCopy objectForKey:@"publisherSpecifiedArticleIDsModifiedDate"];
  if (v33)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  pbDate = [v35 pbDate];
  [v247 setPublisherSpecifiedArticleIDsModifiedDate:pbDate];

  localizedLanguageSpecificKeysByOriginalKey = [(FCRecordSource *)self localizedLanguageSpecificKeysByOriginalKey];
  v37 = [localizedLanguageSpecificKeysByOriginalKey objectForKeyedSubscript:@"name"];
  v38 = [recordCopy objectForKey:v37];

  v39 = [recordCopy objectForKey:@"hideAccessoryText"];
  [v247 setHideAccessoryText:{objc_msgSend(v39, "BOOLValue")}];

  v224 = v38;
  if ([v38 length] || (v38 = v233, objc_msgSend(v233, "length")))
  {
    [v247 setName:v38];
  }

  else
  {
    v219 = [recordCopy objectForKey:@"name"];
    [v247 setName:v219];
  }

  if ([v11 length])
  {
    v40 = v247;
    [v247 setNameCompact:v11];
  }

  else
  {
    v41 = [recordCopy objectForKey:@"nameCompact"];
    v40 = v247;
    [v247 setNameCompact:v41];
  }

  v42 = [recordCopy objectForKey:@"type"];
  [v40 setType:PBTagTypeFromString(v42)];

  v43 = [recordCopy objectForKey:@"primaryAudience"];
  [v40 setPrimaryAudience:v43];

  v44 = [recordCopy objectForKey:@"primaryAudience"];
  [v40 setIsExplicitContent:{objc_msgSend(v44, "isEqualToString:", @"MATURE"}];

  v45 = [recordCopy objectForKey:@"contentProvider"];
  [v40 setContentProvider:{objc_msgSend(v45, "unsignedLongLongValue")}];

  v46 = [recordCopy objectForKey:@"isPublic"];
  [v40 setIsPublic:{objc_msgSend(v46, "BOOLValue")}];

  v47 = [recordCopy objectForKey:@"isDeprecated"];
  [v40 setIsDeprecated:{objc_msgSend(v47, "BOOLValue")}];

  v48 = [recordCopy objectForKey:@"replacementID"];
  [v40 setReplacementID:v48];

  v49 = [recordCopy objectForKey:@"parent"];
  recordID = [v49 recordID];
  recordName = [recordID recordName];
  [v40 setParentID:recordName];

  v52 = [recordCopy objectForKey:@"defaultSectionTagID"];
  [v40 setChannelDefaultSectionID:v52];

  v53 = [recordCopy objectForKey:@"sectionTagIDs"];
  v54 = [v53 mutableCopy];
  [v40 setChannelSectionIDs:v54];

  v55 = 0x1E696A000uLL;
  objc_opt_class();
  v56 = [recordCopy objectForKey:@"logoImage"];
  if (v56)
  {
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  [v247 setLogoURL:v58];

  v59 = [recordCopy objectForKey:@"iAdCategories"];
  v60 = [v59 mutableCopy];
  [v247 setIAdCategories:v60];

  v61 = [recordCopy objectForKey:@"iAdKeywords"];
  v62 = [v61 mutableCopy];
  [v247 setIAdKeywords:v62];

  v63 = [recordCopy objectForKey:@"blockedStorefrontIDs"];
  v64 = [v63 mutableCopy];
  [v247 setBlockedStorefrontIDs:v64];

  v65 = [recordCopy objectForKey:@"allowedStorefrontIDs"];
  v66 = [v65 mutableCopy];
  [v247 setAllowedStorefrontIDs:v66];

  v67 = [v244 length];
  v68 = MEMORY[0x1E69B6E28];
  if (v67)
  {
    v69 = [MEMORY[0x1E69B6E28] feedConfigurationFromJSON:v244];
    [v247 setFeedConfiguration:v69];
  }

  else
  {
    v69 = [recordCopy objectForKey:@"feedConfiguration"];
    v70 = [v68 feedConfigurationFromJSON:v69];
    [v247 setFeedConfiguration:v70];
  }

  v71 = v247;

  objc_opt_class();
  v72 = [recordCopy objectForKey:@"nameImage"];
  if (v72)
  {
    if (objc_opt_isKindOfClass())
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = 0;
  }

  v74 = v73;
  [v247 setNameImageURL:v74];

  objc_opt_class();
  v75 = [recordCopy objectForKey:@"nameImageCompact"];
  if (v75)
  {
    if (objc_opt_isKindOfClass())
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    v76 = 0;
  }

  v77 = v76;
  [v247 setNameImageCompactURL:v77];

  objc_opt_class();
  v78 = [recordCopy objectForKey:@"nameImageForDarkBackground"];
  if (v78)
  {
    if (objc_opt_isKindOfClass())
    {
      v79 = v78;
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    v79 = 0;
  }

  v80 = v79;
  [v247 setNameImageForDarkBackgroundURL:v80];

  objc_opt_class();
  v81 = [recordCopy objectForKey:@"nameImageMask"];
  if (v81)
  {
    if (objc_opt_isKindOfClass())
    {
      v82 = v81;
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v82 = 0;
  }

  v83 = v82;
  [v247 setNameImageMaskURL:v83];

  v84 = [recordCopy objectForKey:@"nameImageMetadata"];
  [v247 setNameImageMetadata:v84];

  v85 = [recordCopy objectForKey:@"nameImageCompactMetadata"];
  [v247 setNameImageCompactMetadata:v85];

  v86 = [recordCopy objectForKey:@"nameImageMaskWidgetSmall"];
  [v247 setNameImageMaskWidgetLQURL:v86];

  v87 = [recordCopy objectForKey:@"nameImageMaskWidgetLarge"];
  [v247 setNameImageMaskWidgetHQURL:v87];

  v88 = [recordCopy objectForKey:@"nameImageLarge"];
  [v247 setNameImageLargeURL:v88];

  v89 = [recordCopy objectForKey:@"nameImageLargeMask"];
  [v247 setNameImageLargeMaskURL:v89];

  v90 = [recordCopy objectForKey:@"navigationChromeBackgroundImage"];
  [v247 setNavigationChromeBackgroundImageURL:v90];

  v91 = [recordCopy objectForKey:@"navigationChromeBackgroundDarkModeImage"];
  [v247 setDarkStyleNavigationChromeBackgroundImageURL:v91];

  v92 = [recordCopy objectForKey:@"navigationChromeBackgroundImageCompact"];
  [v247 setNavigationChromeBackgroundImageCompactURL:v92];

  v93 = [recordCopy objectForKey:@"navigationChromeBackgroundDarkModeImageCompact"];
  [v247 setDarkStyleNavigationChromeBackgroundImageCompactURL:v93];

  v94 = [recordCopy objectForKey:@"navigationChromeBackgroundImageLarge"];
  [v247 setNavigationChromeBackgroundImageLargeURL:v94];

  v95 = [recordCopy objectForKey:@"navigationChromeBackgroundDarkModeImageLarge"];
  [v247 setDarkStyleNavigationChromeBackgroundImageLargeURL:v95];

  objc_opt_class();
  v96 = [recordCopy objectForKey:@"coverImage"];
  if (v96)
  {
    if (objc_opt_isKindOfClass())
    {
      v97 = v96;
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    v97 = 0;
  }

  v98 = v97;
  [v247 setCoverImageURL:v98];

  objc_opt_class();
  v99 = [recordCopy objectForKey:@"feedNavImage"];
  if (v99)
  {
    if (objc_opt_isKindOfClass())
    {
      v100 = v99;
    }

    else
    {
      v100 = 0;
    }
  }

  else
  {
    v100 = 0;
  }

  v101 = v100;
  [v247 setFeedNavImageURL:v101];

  objc_opt_class();
  v102 = [recordCopy objectForKey:@"feedNavImageHQ"];
  if (v102)
  {
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }
  }

  else
  {
    v103 = 0;
  }

  v104 = v103;
  [v247 setFeedNavImageHQURL:v104];

  objc_opt_class();
  v105 = [recordCopy objectForKey:@"language"];
  if (v105)
  {
    if (objc_opt_isKindOfClass())
    {
      v106 = v105;
    }

    else
    {
      v106 = 0;
    }
  }

  else
  {
    v106 = 0;
  }

  v107 = v106;
  [v247 setLanguage:v107];

  objc_opt_class();
  v108 = [recordCopy objectForKey:@"magazineGenre"];
  if (v108)
  {
    if (objc_opt_isKindOfClass())
    {
      v109 = v108;
    }

    else
    {
      v109 = 0;
    }
  }

  else
  {
    v109 = 0;
  }

  v110 = v109;
  [v247 setMagazineGenre:v110];

  v111 = [recordCopy objectForKey:@"template"];
  [v247 setTemplateJson:v111];

  v112 = [recordCopy objectForKey:@"score"];
  [v247 setScore:{objc_msgSend(v112, "unsignedLongLongValue")}];

  v113 = [recordCopy objectForKey:@"minNewsVersion"];
  [v247 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v113)}];

  v114 = [recordCopy objectForKey:@"isNotificationEnabled"];
  [v247 setIsNotificationEnabled:{objc_msgSend(v114, "BOOLValue")}];

  objc_opt_class();
  v115 = [recordCopy objectForKey:@"subtitle"];
  if (v115)
  {
    if (objc_opt_isKindOfClass())
    {
      v116 = v115;
    }

    else
    {
      v116 = 0;
    }
  }

  else
  {
    v116 = 0;
  }

  v117 = v116;
  [v247 setSubtitle:v117];

  v118 = [recordCopy objectForKey:@"latestIssueIDs"];
  [v247 setLatestIssueIDs:v118];

  v119 = [recordCopy objectForKey:@"recentIssueIDs"];
  [v247 setRecentIssueIDs:v119];

  v120 = [v245 objectForKeyedSubscript:@"highlightsArticleListID"];
  v121 = [recordCopy objectForKey:v120];
  [v247 setHighlightsArticleListID:v121];

  v122 = [recordCopy objectForKey:@"archiveIssueListID"];
  [v247 setArchiveIssueListID:v122];

  if (v235)
  {
    [v235 doubleValue];
    [v247 setSubscriptionRate:?];
  }

  else
  {
    v123 = [recordCopy objectForKey:@"subscriptionRate"];
    [v123 doubleValue];
    [v247 setSubscriptionRate:?];
  }

  v124 = [recordCopy objectForKey:@"adTargetingKeywords"];
  v125 = [v124 mutableCopy];
  [v247 setAdTargetingKeywords:v125];

  if ([v241 length])
  {
    v126 = v241;
  }

  else
  {
    v126 = [recordCopy objectForKey:@"sectionFeedConfiguration"];
  }

  v223 = v126;
  v127 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:v126];
  v128 = [v127 objectForKey:@"sectionFeedConfigurations"];

  v246 = recordCopy;
  v232 = v11;
  v250 = v128;
  if (v128)
  {
    array = [MEMORY[0x1E695DF70] array];
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    channelSectionIDs = [v247 channelSectionIDs];
    v131 = [channelSectionIDs countByEnumeratingWithState:&v251 objects:v263 count:16];
    if (v131)
    {
      v132 = v131;
      v133 = *v252;
      do
      {
        for (i = 0; i != v132; ++i)
        {
          if (*v252 != v133)
          {
            objc_enumerationMutation(channelSectionIDs);
          }

          v135 = *(*(&v251 + 1) + 8 * i);
          v136 = MEMORY[0x1E69B6E28];
          v137 = [v250 objectForKeyedSubscript:v135];
          v138 = [v136 feedConfigurationFromDict:v137];

          if (v138)
          {
            [array addObject:v138];
          }

          else
          {
            v139 = FCRecordSourceLog;
            if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_ERROR))
            {
              v140 = v139;
              identifier = [v249 identifier];
              *buf = 138412546;
              v256 = identifier;
              v257 = 2112;
              v258 = v135;
              _os_log_error_impl(&dword_1B63EF000, v140, OS_LOG_TYPE_ERROR, "channel %@ is missing a feed configuration for section %@", buf, 0x16u);
            }
          }
        }

        v132 = [channelSectionIDs countByEnumeratingWithState:&v251 objects:v263 count:16];
      }

      while (v132);
    }

    v71 = v247;
    [v247 setChannelSectionFeedConfigurations:array];

    v55 = 0x1E696A000;
  }

  else
  {
    channelSectionIDs2 = [v247 channelSectionIDs];
    v143 = [channelSectionIDs2 count];

    if (v143)
    {
      v144 = FCRecordSourceLog;
      if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_ERROR))
      {
        v221 = v144;
        identifier2 = [v249 identifier];
        *buf = 138412290;
        v256 = identifier2;
        _os_log_error_impl(&dword_1B63EF000, v221, OS_LOG_TYPE_ERROR, "channel %@ is missing section feed configurations", buf, 0xCu);
      }
    }
  }

  if ([v240 length])
  {
    [v71 setStocksFeedConfigurationJson:v240];
  }

  else
  {
    v145 = [recordCopy objectForKey:@"stocksFeedConfiguration"];
    [v71 setStocksFeedConfigurationJson:v145];
  }

  objc_opt_class();
  v146 = [recordCopy objectForKey:@"publisherPaidAuthorizationURL"];
  if (v146)
  {
    if (objc_opt_isKindOfClass())
    {
      v147 = v146;
    }

    else
    {
      v147 = 0;
    }
  }

  else
  {
    v147 = 0;
  }

  v148 = v147;
  [v71 setPublisherPaidAuthorizationURL:v148];

  objc_opt_class();
  v149 = [recordCopy objectForKey:@"publisherPaidVerificationURL"];
  if (v149)
  {
    if (objc_opt_isKindOfClass())
    {
      v150 = v149;
    }

    else
    {
      v150 = 0;
    }
  }

  else
  {
    v150 = 0;
  }

  v151 = v150;
  [v71 setPublisherPaidVerificationURL:v151];

  objc_opt_class();
  v152 = [recordCopy objectForKey:@"publisherPaidWebAccessURL"];
  if (v152)
  {
    if (objc_opt_isKindOfClass())
    {
      v153 = v152;
    }

    else
    {
      v153 = 0;
    }
  }

  else
  {
    v153 = 0;
  }

  v154 = v153;
  [v71 setPublisherPaidWebaccessURL:v154];

  v155 = [v243 length];
  v156 = MEMORY[0x1E69B6F58];
  if (v155)
  {
    v157 = [MEMORY[0x1E69B6F58] purchaseOfferableConfigurationsFromJSON:v243];
    [v71 setPurchaseOfferableConfigurations:v157];
  }

  else
  {
    v157 = [recordCopy objectForKey:@"publisherPaidOfferableConfig"];
    v158 = [v156 purchaseOfferableConfigurationsFromJSON:v157];
    [v71 setPurchaseOfferableConfigurations:v158];
  }

  v159 = [v242 length];
  v160 = MEMORY[0x1E69B6F40];
  if (v159)
  {
    v161 = [MEMORY[0x1E69B6F40] publisherPaidDescriptionStringsFromJSON:v242];
    [v71 setPublisherPaidDescriptionStrings:v161];
  }

  else
  {
    v161 = [recordCopy objectForKey:@"publisherPaidDescriptionStrings"];
    v162 = [v160 publisherPaidDescriptionStringsFromJSON:v161];
    [v71 setPublisherPaidDescriptionStrings:v162];
  }

  v163 = [recordCopy objectForKey:@"publisherPaidFeldsparablePurchaseIDs"];
  v164 = [v163 mutableCopy];
  [v71 setPublisherPaidFeldsparablePurchaseIDs:v164];

  v165 = [recordCopy objectForKey:@"publisherPaidBundlePurchaseIDs"];
  v166 = [v165 mutableCopy];
  [v71 setPublisherPaidBundlePurchaseIDs:v166];

  v167 = [recordCopy objectForKey:@"publisherPaidLeakyPaywallOptOut"];
  [v71 setPublisherPaidLeakyPaywallOptOut:{objc_msgSend(v167, "BOOLValue")}];

  publisherPaidWebaccessURL = [v71 publisherPaidWebaccessURL];
  [v71 setPublisherPaidWebOptIn:{objc_msgSend(publisherPaidWebaccessURL, "length") != 0}];

  v169 = v55;
  objc_opt_class();
  v170 = [v245 objectForKeyedSubscript:@"paidBundleSubscriptionButtonConfig"];
  v171 = [recordCopy objectForKey:v170];
  if (v171)
  {
    if (objc_opt_isKindOfClass())
    {
      v172 = v171;
    }

    else
    {
      v172 = 0;
    }
  }

  else
  {
    v172 = 0;
  }

  v173 = v172;

  v174 = v169;
  objc_opt_class();
  v175 = [recordCopy objectForKey:@"paidBundleSubscriptionButtonConfig"];
  if (v175)
  {
    if (objc_opt_isKindOfClass())
    {
      v176 = v175;
    }

    else
    {
      v176 = 0;
    }
  }

  else
  {
    v176 = 0;
  }

  v177 = v176;

  v178 = [v173 length];
  v179 = v173;
  if (!v178)
  {
    if ([v177 length])
    {
      v179 = v177;
    }

    else
    {
      v179 = 0;
    }
  }

  v248 = v177;
  [v71 setPaidBundlePaywallConfigurationJson:v179];
  allowedStorefrontIDs = [v71 allowedStorefrontIDs];
  [allowedStorefrontIDs removeObject:&stru_1F2DC7DC0];

  v181 = [recordCopy objectForKey:@"nameImageScaleFactor"];
  [v181 doubleValue];
  [v71 setNameImageScaleFactor:?];

  v182 = [recordCopy objectForKey:@"nameImageBaselineShift"];
  [v71 setNameImageBaselineShift:{objc_msgSend(v182, "integerValue")}];

  v183 = [(FCRecordSource *)selfCopy resolveLocalizableExperimentalizableFieldforKey:@"groupingAvailability" inRecord:recordCopy activeExperimentIDKey:@"activeExperimentID"];
  v184 = v183;
  if (v183)
  {
    integerValue = [v183 integerValue];
    if (integerValue < 4)
    {
      v186 = integerValue;
      goto LABEL_142;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v184 = [objc_alloc(*(v174 + 3776)) initWithFormat:@"Encountered an unknown grouping availability value %@", v184];
      *buf = 136315906;
      v256 = "[FCTagRecordSource recordFromCKRecord:base:]";
      v257 = 2080;
      v258 = "FCTagRecordSource.m";
      v259 = 1024;
      v260 = 489;
      v261 = 2114;
      v262 = v184;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v186 = 0;
LABEL_142:
  [v71 setGroupingAvailability:v186];
  if (v239)
  {
    [v71 setIsHidden:{objc_msgSend(v239, "BOOLValue")}];
  }

  else
  {
    v187 = [recordCopy objectForKey:@"isHidden"];
    [v71 setIsHidden:{objc_msgSend(v187, "BOOLValue")}];
  }

  v188 = [recordCopy objectForKey:@"behaviorFlags"];
  [v71 setBehaviorFlags:{objc_msgSend(v188, "unsignedLongLongValue")}];

  v189 = [recordCopy objectForKey:@"propertyFlags"];
  [v71 setPropertyFlags:{objc_msgSend(v189, "unsignedLongLongValue")}];

  v190 = [v245 objectForKeyedSubscript:@"propertyFlagsLocalized"];
  v191 = [recordCopy objectForKey:v190];
  [v71 setPropertyFlagsLocalized:{objc_msgSend(v191, "unsignedLongLongValue")}];

  objc_opt_class();
  v192 = [v245 objectForKeyedSubscript:@"articleRecirculationConfiguration"];
  v193 = [recordCopy objectForKey:v192];
  if (v193)
  {
    if (objc_opt_isKindOfClass())
    {
      v194 = v193;
    }

    else
    {
      v194 = 0;
    }
  }

  else
  {
    v194 = 0;
  }

  v195 = v194;

  objc_opt_class();
  v196 = [v246 objectForKey:@"articleRecirculationConfiguration"];
  if (v196)
  {
    if (objc_opt_isKindOfClass())
    {
      v197 = v196;
    }

    else
    {
      v197 = 0;
    }
  }

  else
  {
    v197 = 0;
  }

  v198 = v197;

  if (v195)
  {
    v199 = v195;
  }

  else
  {
    v199 = v198;
  }

  [v71 setArticleRecirculationConfiguration:v199];
  v200 = [v246 objectForKey:@"superGroupKnobs"];
  v201 = [v200 mutableCopy];
  [v71 setSupergroupKnobsJson:v201];

  v202 = [v246 objectForKey:@"superGroupConfig"];
  v203 = [v202 mutableCopy];
  [v71 setSupergroupConfigJson:v203];

  if (v238)
  {
    [v71 setSuperfeedConfigResourceID:?];
  }

  else
  {
    v204 = [v246 objectForKey:@"superfeedConfigResourceID"];
    [v71 setSuperfeedConfigResourceID:v204];
  }

  if (v237)
  {
    [v71 setSportsRecommendationMappingsJson:?];
  }

  else
  {
    v205 = [v246 objectForKey:@"sportsRecommendationMappings"];
    [v71 setSportsRecommendationMappingsJson:v205];
  }

  v206 = v236;
  if (!v236)
  {
    v206 = [v246 objectForKey:@"isSportsRecommendable"];
  }

  [v71 setIsSportsRecommendable:{objc_msgSend(v206, "BOOLValue")}];
  if (!v236)
  {
  }

  if (v231)
  {
    [v71 setSportsData:v231];
    v207 = v246;
  }

  else
  {
    v207 = v246;
    v208 = [v246 objectForKey:@"sportsData"];
    [v71 setSportsData:v208];
  }

  v209 = [v207 objectForKey:@"sportsTheme"];
  [v71 setSportsTheme:v209];

  v210 = [v207 objectForKey:@"sportsLogoImage"];
  [v71 setSportsLogoImageURL:v210];

  v211 = [v207 objectForKey:@"sportsLogoImageCompact"];
  [v71 setSportsLogoImageCompactURL:v211];

  v212 = [v207 objectForKey:@"sportsLogoImageLarge"];
  [v71 setSportsLogoImageLargeURL:v212];

  v213 = [v207 objectForKey:@"sportsLogoAltImage"];
  [v71 setSportsLogoAltImageURL:v213];

  v214 = [v207 objectForKey:@"sportsLogoAltImageCompact"];
  [v71 setSportsLogoAltImageCompactURL:v214];

  v215 = [v207 objectForKey:@"sportsLogoAltImageLarge"];
  [v71 setSportsLogoAltImageLargeURL:v215];

  v216 = [v245 objectForKeyedSubscript:@"foodGroupingAvailability"];
  v217 = [v207 objectForKey:v216];
  [v71 setFoodGroupingAvailability:{objc_msgSend(v217, "unsignedLongLongValue")}];

  return v71;
}

- (id)saveTagRecords:(id)records
{
  v5.receiver = self;
  v5.super_class = FCTagRecordSource;
  v3 = [(FCRecordSource *)&v5 saveRecords:records];

  return v3;
}

@end