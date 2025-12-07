@interface SPUISPhotosSectionBuilder
+ (id)supportedBundleIds;
+ (unint64_t)maxVisibleColumnsInPhotosSection;
- (id)buildBridgedResult;
- (id)buildButtonItem;
- (id)buildCardSections;
- (id)buildCollectionStyle;
@end

@implementation SPUISPhotosSectionBuilder

+ (id)supportedBundleIds
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (SSSpotlightUIPlusEnabled())
  {
    v2 = 0;
  }

  else
  {
    v4[0] = @"com.apple.searchd.syndicatedPhotos";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  return v2;
}

+ (unint64_t)maxVisibleColumnsInPhotosSection
{
  if (maxVisibleColumnsInPhotosSection_onceToken != -1)
  {
    +[SPUISPhotosSectionBuilder maxVisibleColumnsInPhotosSection];
  }

  return maxVisibleColumnsInPhotosSection_numPhotoColumns;
}

BOOL __61__SPUISPhotosSectionBuilder_maxVisibleColumnsInPhotosSection__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  result = +[SPUISUtilities isMacOS];
  v3 = 5;
  if (result)
  {
    v3 = 8;
  }

  if (v1 == 3)
  {
    v3 = 7;
  }

  maxVisibleColumnsInPhotosSection_numPhotoColumns = v3;
  return result;
}

- (id)buildBridgedResult
{
  v4.receiver = self;
  v4.super_class = SPUISPhotosSectionBuilder;
  buildBridgedResult = [(SPUISSectionBuilder *)&v4 buildBridgedResult];
  [buildBridgedResult setType:3];

  return buildBridgedResult;
}

- (id)buildCollectionStyle
{
  section = [(SPUISSectionBuilder *)self section];
  if ([(SPUISPhotosSectionBuilder *)self useHorizontallyScrollingCardSectionUI])
  {
    v4 = objc_opt_new();
    results = [section results];
    v6 = objc_msgSend_count(results);
    if (v6 < 2 * [objc_opt_class() maxVisibleColumnsInPhotosSection])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [v4 setNumberOfRows:v7];
  }

  else
  {
    v4 = objc_opt_new();
  }

  [v4 setInitiallyVisibleCardSectionCount:{objc_msgSend(section, "maxInitiallyVisibleResults")}];

  return v4;
}

- (id)buildCardSections
{
  v32 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = SPUISPhotosSectionBuilder;
  buildCardSections = [(SPUISSectionBuilder *)&v28 buildCardSections];
  string = [MEMORY[0x277CCAB68] string];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = buildCardSections;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          thumbnail = [v9 thumbnail];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            thumbnail2 = [v9 thumbnail];
            photoIdentifier = [thumbnail2 photoIdentifier];
            v14 = [photoIdentifier length];

            if (v14)
            {
              photoIdentifier2 = [thumbnail2 photoIdentifier];
              [v9 setCardSectionId:photoIdentifier2];

              photoIdentifier3 = [thumbnail2 photoIdentifier];
              [string appendString:photoIdentifier3];

              [string appendString:@" "];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = logForCSLogCategoryPhotosQU();
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    uTF8String = [string UTF8String];
    *buf = 136315138;
    v30 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_26B882000, v20, OS_SIGNPOST_EVENT, v18, "ResultPhotos", "%{name=photoIdentifiers}s", buf, 0xCu);
  }

  return v3;
}

- (id)buildButtonItem
{
  queryContext = [(SPUISSectionBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  firstObject = [searchEntities firstObject];

  searchString = [queryContext searchString];
  if ([firstObject isContactEntitySearch])
  {
    tokenText = [firstObject tokenText];
  }

  else
  {
    if (!firstObject)
    {
      goto LABEL_6;
    }

    tokenText = [firstObject searchString];
  }

  v7 = tokenText;

  searchString = v7;
LABEL_6:
  v8 = objc_opt_new();
  [v8 setSymbolName:@"chevron.forward"];
  v9 = objc_opt_new();
  v10 = [SPUISUtilities localizedStringForKey:@"SHOW_MORE"];
  objc_msgSend_setTitle_(v9);

  [v9 setImage:v8];
  if (searchString)
  {
    v11 = searchString;
  }

  else
  {
    v11 = &stru_287C50EE8;
  }

  v12 = [MEMORY[0x277D65890] searchEntityWithPhotosSearchString:v11 fromSuggestion:0];
  command = [v12 command];
  [v9 setCommand:command];

  return v9;
}

@end