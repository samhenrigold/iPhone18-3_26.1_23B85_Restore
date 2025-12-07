@interface SLCoreSpotlightUtilities
+ (id)CSQueryStringForAutodonatingChatsWithDecay:(BOOL)decay;
+ (id)CSQueryStringForSLHighlightsForContentType:(unsigned __int8)type forChatIdentifiers:(id)identifiers;
+ (id)CSSearchQueryContextForAutodonatingChats;
+ (id)CSSearchQueryContextForSLHighlightsForContentType:(unsigned __int8)type;
+ (id)fetchCSSearchableItemForUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type withRequiredAttributes:(id)attributes error:(id *)error;
+ (id)requiredSpotlightAttributeKeysForFiles;
+ (id)requiredSpotlightAttributeKeysForLinks;
@end

@implementation SLCoreSpotlightUtilities

+ (id)fetchCSSearchableItemForUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type withRequiredAttributes:(id)attributes error:(id *)error
{
  typeCopy = type;
  v61[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  attributesCopy = attributes;
  if (identifierCopy)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__3;
    v53 = __Block_byref_object_dispose__3;
    v54 = 0;
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    v59 = identifierCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke;
    v45[3] = &unk_278926428;
    v48 = &v49;
    v14 = identifierCopy;
    v46 = v14;
    v15 = v11;
    v47 = v15;
    [defaultSearchableIndex slowFetchAttributes:attributesCopy protectionClass:0 bundleID:@"com.apple.MobileSMS" identifiers:v13 completionHandler:v45];

    v16 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(v15, v16))
    {
      v57[0] = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [mainBundle localizedStringForKey:@"SocialLayer CSSearchableItem fetch failed." value:&stru_28468DAB8 table:0];
      v58[0] = v18;
      v57[1] = *MEMORY[0x277CCA470];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [mainBundle2 localizedStringForKey:@"Timed out while fetching CSSearchableItem." value:&stru_28468DAB8 table:0];
      v58[1] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

      if (error)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" code:2 userInfo:v21];
LABEL_15:
        v28 = 0;
        *error = v22;
LABEL_20:

        _Block_object_dispose(&v49, 8);
        goto LABEL_21;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = [v50[5] count];
        if (v29 == [attributesCopy count])
        {
          v30 = objc_alloc_init(MEMORY[0x277CC34B8]);
          v38 = MEMORY[0x277D85DD0];
          v39 = 3221225472;
          v40 = __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_25;
          v41 = &unk_278926450;
          v44 = &v49;
          v21 = v30;
          v42 = v21;
          v31 = v14;
          v43 = v31;
          [attributesCopy enumerateObjectsUsingBlock:&v38];
          if (typeCopy)
          {
            if (typeCopy == 1)
            {
              domainIdentifier = @"attachmentDomain";
            }

            else
            {
              domainIdentifier = 0;
            }
          }

          else
          {
            domainIdentifier = [v21 domainIdentifier];
          }

          v28 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v31 domainIdentifier:domainIdentifier attributeSet:v21];

          goto LABEL_20;
        }
      }

      v55[0] = *MEMORY[0x277CCA450];
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v34 = [mainBundle3 localizedStringForKey:@"SocialLayer CSSearchableItem fetch failed." value:&stru_28468DAB8 table:0];
      v56[0] = v34;
      v55[1] = *MEMORY[0x277CCA470];
      mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = [mainBundle4 localizedStringForKey:@"Failed to fetch one or more required attributes." value:&stru_28468DAB8 table:0];
      v56[1] = v36;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];

      if (error)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" code:3 userInfo:v21];
        goto LABEL_15;
      }
    }

    v28 = 0;
    goto LABEL_20;
  }

  v60[0] = *MEMORY[0x277CCA450];
  mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
  v24 = [mainBundle5 localizedStringForKey:@"SocialLayer CSSearchableItem fetch failed." value:&stru_28468DAB8 table:0];
  v61[0] = v24;
  v60[1] = *MEMORY[0x277CCA470];
  mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle6 localizedStringForKey:@"Provided a nil unique identifier." value:&stru_28468DAB8 table:0];
  v61[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" code:1 userInfo:v27];
  }

  v28 = 0;
LABEL_21:

  return v28;
}

void __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = [v3 firstObject];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = SLFrameworkLogHandle(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_25(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndex:a3];
  v7 = [MEMORY[0x277CBEB68] null];

  if (v6 == v7)
  {
    v9 = SLFrameworkLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __113__SLCoreSpotlightUtilities_fetchCSSearchableItemForUniqueIdentifier_forContentType_withRequiredAttributes_error___block_invoke_25_cold_1();
    }
  }

  else
  {
    if (![v5 hasPrefix:@"com_"])
    {
      [*(a1 + 32) setAttribute:v6 forKey:v5];
      goto LABEL_8;
    }

    v9 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:v5];
    [*(a1 + 32) setValue:v6 forCustomKey:v9];
  }

LABEL_8:
}

+ (id)CSSearchQueryContextForAutodonatingChats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v5[0] = *MEMORY[0x277CC23A8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 setFetchAttributes:v3];

  return v2;
}

+ (id)CSQueryStringForAutodonatingChatsWithDecay:(BOOL)decay
{
  v3 = MEMORY[0x277CCACA8];
  if (decay)
  {
    [MEMORY[0x277D3A4C8] decayInterval];
    v5 = [v3 stringWithFormat:@"kMDItemLastUsedDate>=$time.now(-%.f)", v4];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@", @"com_apple_mobilesms_isChatAutoDonating=1", v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"com_apple_mobilesms_isChatAutoDonating=1"];
  }

  return v6;
}

+ (id)CSSearchQueryContextForSLHighlightsForContentType:(unsigned __int8)type
{
  typeCopy = type;
  v4 = objc_opt_new();
  v5 = v4;
  if (typeCopy == 1)
  {
    requiredSpotlightAttributeKeysForFiles = [objc_opt_class() requiredSpotlightAttributeKeysForFiles];
    goto LABEL_5;
  }

  if (!typeCopy)
  {
    requiredSpotlightAttributeKeysForFiles = [objc_opt_class() requiredSpotlightAttributeKeysForLinks];
LABEL_5:
    v7 = requiredSpotlightAttributeKeysForFiles;
    allObjects = [requiredSpotlightAttributeKeysForFiles allObjects];
    [v5 setFetchAttributes:allObjects];

    goto LABEL_7;
  }

  [v4 setFetchAttributes:0];
LABEL_7:

  return v5;
}

+ (id)CSQueryStringForSLHighlightsForContentType:(unsigned __int8)type forChatIdentifiers:(id)identifiers
{
  typeCopy = type;
  identifiersCopy = identifiers;
  if (!typeCopy)
  {
    v7 = 0;
    v6 = @"URL=*";
    v8 = @"lnk";
    goto LABEL_5;
  }

  if (typeCopy == 1)
  {
    v6 = 0;
    v7 = 1;
    v8 = @"at";
LABEL_5:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", *MEMORY[0x277CC2DB8], v8];
    goto LABEL_7;
  }

  v9 = 0;
  v6 = 0;
  v7 = 1;
LABEL_7:
  v10 = @"InRange(com_apple_mobilesms_isHighlightedContent, 1, 2)";
  if (!identifiersCopy)
  {
    v10 = @"com_apple_mobilesms_isHighlightedContent=2";
  }

  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@", v9, v10, v13];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ && %@ && %@", v9, v6, v10];
  }
  v11 = ;

  return v11;
}

+ (id)requiredSpotlightAttributeKeysForFiles
{
  v20[31] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CC2E48];
  v20[0] = *MEMORY[0x277CC2500];
  v20[1] = v3;
  v4 = *MEMORY[0x277CC2640];
  v20[2] = *MEMORY[0x277CC3208];
  v20[3] = v4;
  v5 = *MEMORY[0x277CC24E0];
  v20[4] = *MEMORY[0x277CC24A8];
  v20[5] = v5;
  v6 = *MEMORY[0x277CC24C0];
  v20[6] = *MEMORY[0x277CC24B0];
  v20[7] = v6;
  v7 = *MEMORY[0x277CC3010];
  v20[8] = *MEMORY[0x277CC23A0];
  v20[9] = v7;
  v8 = *MEMORY[0x277CC2688];
  v20[10] = *MEMORY[0x277CC2760];
  v20[11] = v8;
  v9 = *MEMORY[0x277CC23A8];
  v20[12] = *MEMORY[0x277CC2678];
  v20[13] = v9;
  v10 = *MEMORY[0x277CC2CA0];
  v20[14] = *MEMORY[0x277CC2B58];
  v20[15] = v10;
  v11 = *MEMORY[0x277CC2B78];
  v20[16] = *MEMORY[0x277CC3190];
  v20[17] = v11;
  v12 = *MEMORY[0x277CC3240];
  v20[18] = *MEMORY[0x277CC2E50];
  v20[19] = v12;
  v13 = *MEMORY[0x277CC2B20];
  v20[20] = *MEMORY[0x277CC2CA8];
  v20[21] = v13;
  v14 = *MEMORY[0x277CC2B28];
  v20[22] = *MEMORY[0x277CC2B38];
  v20[23] = v14;
  v15 = *MEMORY[0x277CC2FC0];
  v20[24] = *MEMORY[0x277CC2408];
  v20[25] = v15;
  v16 = *MEMORY[0x277CC2DB8];
  v20[26] = *MEMORY[0x277CC3028];
  v20[27] = v16;
  v20[28] = *MEMORY[0x277CC2C70];
  v20[29] = @"com_apple_mobilesms_groupPhotoPath";
  v20[30] = @"com_apple_mobilesms_highlightedContentServerDate";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:31];
  v18 = [v2 setWithArray:v17];

  return v18;
}

+ (id)requiredSpotlightAttributeKeysForLinks
{
  v16[23] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CC2E48];
  v16[0] = *MEMORY[0x277CC2500];
  v16[1] = v3;
  v4 = *MEMORY[0x277CC2770];
  v16[2] = *MEMORY[0x277CC3208];
  v16[3] = v4;
  v5 = *MEMORY[0x277CC2640];
  v16[4] = *MEMORY[0x277CC31F8];
  v16[5] = v5;
  v6 = *MEMORY[0x277CC24E0];
  v16[6] = *MEMORY[0x277CC24A8];
  v16[7] = v6;
  v7 = *MEMORY[0x277CC24C0];
  v16[8] = *MEMORY[0x277CC24B0];
  v16[9] = v7;
  v8 = *MEMORY[0x277CC3010];
  v16[10] = *MEMORY[0x277CC23A0];
  v16[11] = v8;
  v9 = *MEMORY[0x277CC2CA0];
  v16[12] = *MEMORY[0x277CC2760];
  v16[13] = v9;
  v10 = *MEMORY[0x277CC2B78];
  v16[14] = *MEMORY[0x277CC3190];
  v16[15] = v10;
  v11 = *MEMORY[0x277CC2FC0];
  v16[16] = *MEMORY[0x277CC2408];
  v16[17] = v11;
  v12 = *MEMORY[0x277CC2DB8];
  v16[18] = *MEMORY[0x277CC3028];
  v16[19] = v12;
  v16[20] = *MEMORY[0x277CC2C70];
  v16[21] = @"com_apple_mobilesms_groupPhotoPath";
  v16[22] = @"com_apple_mobilesms_highlightedContentServerDate";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:23];
  v14 = [v2 setWithArray:v13];

  return v14;
}

@end