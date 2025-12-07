@interface NNCComplicationDataSource
+ (id)_oneLineHeadlineTextProviderForResult:(id)result;
+ (id)_templateForFamily:(int64_t)family newsStoryResult:(id)result compact:(BOOL)compact;
+ (id)fullColorImageProviderWithName:(id)name;
+ (id)imageProviderWithForegroundName:(id)name compact:(BOOL)compact;
+ (id)staticTemplateForFamily:(int64_t)family compact:(BOOL)compact;
@end

@implementation NNCComplicationDataSource

+ (id)staticTemplateForFamily:(int64_t)family compact:(BOOL)compact
{
  compactCopy = compact;
  v7 = objc_alloc_init(NNCLastNewsStoryResult);
  v8 = NSSNewsWidgetMessageForStaticNewsSection();
  [(NNCLastNewsStoryResult *)v7 setSourceName:v8];

  v9 = NSSNewsWidgetMessageForStaticNewsHeadlineTitle();
  [(NNCLastNewsStoryResult *)v7 setHeadlineTitle:v9];

  [(NNCLastNewsStoryResult *)v7 setHeadlineIndex:0];
  [(NNCLastNewsStoryResult *)v7 setTotalHeadlineCount:0];
  [(NNCLastNewsStoryResult *)v7 setFamily:family];
  v10 = [self _templateForFamily:family newsStoryResult:v7 compact:compactCopy];

  return v10;
}

+ (id)_oneLineHeadlineTextProviderForResult:(id)result
{
  if (result)
  {
    headlineTitle = [result headlineTitle];
    v5 = headlineTitle;
    if (headlineTitle)
    {
      _noNewStoriesShortString = headlineTitle;
    }

    else
    {
      _noNewStoriesShortString = [self _noNewStoriesShortString];
    }

    _loadingStoriesShortString = _noNewStoriesShortString;

    v9 = MEMORY[0x277CBBB90];
  }

  else
  {
    v7 = MEMORY[0x277CBBB90];
    _loadingStoriesShortString = [self _loadingStoriesShortString];
    v9 = v7;
  }

  v10 = [v9 textProviderWithText:_loadingStoriesShortString];

  return v10;
}

+ (id)_templateForFamily:(int64_t)family newsStoryResult:(id)result compact:(BOOL)compact
{
  compactCopy = compact;
  v69[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v9 = getNTKComplicationFamilyUtilitarianLargeNarrowSymbolLoc_ptr;
  v63 = getNTKComplicationFamilyUtilitarianLargeNarrowSymbolLoc_ptr;
  if (!getNTKComplicationFamilyUtilitarianLargeNarrowSymbolLoc_ptr)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __getNTKComplicationFamilyUtilitarianLargeNarrowSymbolLoc_block_invoke;
    v59[3] = &unk_2799800D8;
    v59[4] = &v60;
    __getNTKComplicationFamilyUtilitarianLargeNarrowSymbolLoc_block_invoke(v59);
    v9 = v61[3];
  }

  _Block_object_dispose(&v60, 8);
  if (!v9)
  {
    +[NNCComplicationDataSource _templateForFamily:newsStoryResult:compact:];
  }

  if (*v9 == family)
  {
    familyCopy = 3;
  }

  else
  {
    familyCopy = family;
  }

  if (familyCopy == *MEMORY[0x277CBB670])
  {
    v11 = [objc_opt_class() imageProviderWithForegroundName:@"victory" compact:compactCopy];
    v12 = objc_opt_new();
    [v12 setImageProvider:v11];
  }

  else
  {
    v12 = 0;
  }

  if (familyCopy > 6)
  {
    if (familyCopy <= 9)
    {
      if (familyCopy == 7)
      {
        v14 = objc_opt_new();
        v24 = [objc_opt_class() imageProviderWithForegroundName:@"extralarge-simple" compact:compactCopy];
        [v14 setImageProvider:v24];
      }

      else
      {
        if (familyCopy == 8)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBB8B0]);
          v40 = [self fullColorImageProviderWithName:@"circularsmall-simple"];
          [v14 setImageProvider:v40];

          v68 = @"NTKRichComplicationViewBackgroundColorKey";
          newsTintColor = [self newsTintColor];
          v41 = [newsTintColor colorWithAlphaComponent:0.2];
          v69[0] = v41;
          v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
          [v14 setMetadata:v42];
        }

        else
        {
          v14 = objc_alloc_init(MEMORY[0x277CBB818]);
          v15 = [objc_opt_class() _oneLineHeadlineTextProviderForResult:resultCopy];
          [v14 setTextProvider:v15];

          newsTintColor = [self _templateForFamily:10 newsStoryResult:resultCopy compact:compactCopy];
          [v14 setCircularTemplate:newsTintColor];
        }
      }

      goto LABEL_47;
    }

    if (familyCopy == 10)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBB848]);
      v27 = [self fullColorImageProviderWithName:@"circularsmall-simple"];
      [v14 setImageProvider:v27];

      v66 = @"NTKRichComplicationViewBackgroundColorKey";
      newsTintColor2 = [self newsTintColor];
      v29 = [newsTintColor2 colorWithAlphaComponent:0.2];
      v67 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      [v14 setMetadata:v30];

      goto LABEL_47;
    }

    if (familyCopy != 11)
    {
      if (familyCopy == 12)
      {
        v14 = objc_opt_new();
        v19 = [self fullColorImageProviderWithName:@"graphiclarge"];
        [v14 setImageProvider:v19];

        v64 = @"NTKRichComplicationViewBackgroundColorKey";
        newsTintColor3 = [self newsTintColor];
        v21 = [newsTintColor3 colorWithAlphaComponent:0.2];
        v65 = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        [v14 setMetadata:v22];

        goto LABEL_47;
      }

      goto LABEL_41;
    }

    v14 = objc_opt_new();
    v31 = [objc_opt_class() fullColorImageProviderWithName:@"modularlarge-standardbody"];
    [v14 setHeaderImageProvider:v31];
    if (resultCopy)
    {
      headlineTitle = [resultCopy headlineTitle];
      v45 = headlineTitle == 0;

      v34 = MEMORY[0x277CBBB90];
      if (!v45)
      {
        sourceName = [resultCopy sourceName];
        v36 = [v34 textProviderWithText:sourceName];

        newsTintColor4 = [self newsTintColor];
        [v36 setTintColor:newsTintColor4];

        [v14 setHeaderTextProvider:v36];
        v48 = MEMORY[0x277CBBB90];
        headlineTitle2 = [resultCopy headlineTitle];
        v49 = [v48 textProviderWithText:headlineTitle2];
        [v14 setBody1TextProvider:v49];

        goto LABEL_46;
      }

LABEL_45:
      _complicationTitle = [self _complicationTitle];
      v36 = [v34 textProviderWithText:_complicationTitle];

      [v14 setHeaderTextProvider:v36];
      v55 = MEMORY[0x277CBBB90];
      _noNewStoriesLargeString = [self _noNewStoriesLargeString];
      headlineTitle2 = [v55 textProviderWithText:_noNewStoriesLargeString];

      [v14 setBody1TextProvider:headlineTitle2];
      goto LABEL_46;
    }

LABEL_44:
    v50 = MEMORY[0x277CBBB90];
    _complicationTitle2 = [self _complicationTitle];
    v36 = [v50 textProviderWithText:_complicationTitle2];

    [v14 setHeaderTextProvider:v36];
    v52 = MEMORY[0x277CBBB90];
    headlineTitle2 = [self _loadingStoriesLargeString];
    v53 = [v52 textProviderWithText:headlineTitle2];
    [v14 setBody1TextProvider:v53];

    goto LABEL_46;
  }

  if (familyCopy > 2)
  {
    switch(familyCopy)
    {
      case 3:
        v14 = objc_opt_new();
        v25 = [objc_opt_class() imageProviderWithForegroundName:@"utilitarianlarge-flat" compact:1];
        [v14 setImageProvider:v25];
        v26 = [objc_opt_class() _oneLineHeadlineTextProviderForResult:resultCopy];
        [v14 setTextProvider:v26];

        goto LABEL_47;
      case 4:
        v43 = [objc_opt_class() imageProviderWithForegroundName:@"circularsmall-simple" compact:compactCopy];
        v14 = objc_opt_new();
        [v14 setImageProvider:v43];

        goto LABEL_47;
      case 6:
        v14 = objc_opt_new();
        v17 = [objc_opt_class() imageProviderWithForegroundName:@"utilitariansmall-flat" compact:compactCopy];
        [v14 setImageProvider:v17];
        v18 = [MEMORY[0x277CBBB90] textProviderWithText:&stru_286D8A910];
        [v14 setTextProvider:v18];

        goto LABEL_47;
    }

    goto LABEL_41;
  }

  switch(familyCopy)
  {
    case 0:
      v23 = [objc_opt_class() imageProviderWithForegroundName:@"modularsmall-simple" compact:compactCopy];
      v14 = objc_opt_new();
      [v14 setImageProvider:v23];

      goto LABEL_47;
    case 1:
      v14 = objc_opt_new();
      v31 = [objc_opt_class() imageProviderWithForegroundName:@"modularlarge-standardbody" compact:compactCopy];
      [v14 setHeaderImageProvider:v31];
      if (resultCopy)
      {
        headlineTitle3 = [resultCopy headlineTitle];
        v33 = headlineTitle3 == 0;

        v34 = MEMORY[0x277CBBB90];
        if (!v33)
        {
          sourceName2 = [resultCopy sourceName];
          v36 = [v34 textProviderWithText:sourceName2];

          [v14 setHeaderTextProvider:v36];
          v37 = MEMORY[0x277CBBB90];
          headlineTitle2 = [resultCopy headlineTitle];
          v39 = [v37 textProviderWithText:headlineTitle2];
          [v14 setBody1TextProvider:v39];

LABEL_46:
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    case 2:
      v13 = [objc_opt_class() imageProviderWithForegroundName:@"utilitariansmall-square" compact:compactCopy];
      v14 = objc_opt_new();
      [v14 setImageProvider:v13];

      goto LABEL_47;
  }

LABEL_41:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NNCComplicationDataSource _templateForFamily:familyCopy newsStoryResult:? compact:?];
  }

  v14 = v12;
LABEL_47:
  newsTintColor5 = [objc_opt_class() newsTintColor];
  [v14 setTintColor:newsTintColor5];

  return v14;
}

+ (id)imageProviderWithForegroundName:(id)name compact:(BOOL)compact
{
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"complication-%@", compact, name];
  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v6 imageNamed:name inBundle:v7 compatibleWithTraitCollection:0];

  if (v8)
  {
    v9 = [MEMORY[0x277CBBB38] imageProviderWithOnePieceImage:v8];
    newsTintColor = [self newsTintColor];
    [v9 setTintColor:newsTintColor];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fullColorImageProviderWithName:(id)name
{
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"complication-%@", nameCopy];
  v7 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:nameCopy inBundle:v8 compatibleWithTraitCollection:0];

  if (v9)
  {
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    [v9 scale];
    [preferredFormat setScale:?];
    [preferredFormat setPreferredRange:2];
    [v9 size];
    v12 = v11;
    v14 = v13;
    v15 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:preferredFormat format:{v11, v13}];
    newsTintColor = [self newsTintColor];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__NNCComplicationDataSource_fullColorImageProviderWithName___block_invoke;
    v21[3] = &unk_2799800B0;
    v22 = newsTintColor;
    v24 = v12;
    v25 = v14;
    v23 = v9;
    v17 = newsTintColor;
    v18 = [v15 imageWithActions:v21];
    v19 = [MEMORY[0x277CBBB18] providerWithFullColorImage:v18 monochromeFilterType:1];
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v19;
}

uint64_t __60__NNCComplicationDataSource_fullColorImageProviderWithName___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFill];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = v2;
  v7.size.height = v3;
  UIRectFill(v7);
  v4 = *(a1 + 40);

  return [v4 drawInRect:22 blendMode:0.0 alpha:{0.0, v2, v3, 1.0}];
}

+ (void)_templateForFamily:(uint64_t)a1 newsStoryResult:compact:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "+[NNCComplicationDataSource _templateForFamily:newsStoryResult:compact:]";
  v3 = 2048;
  v4 = a1;
  _os_log_error_impl(&dword_25BF04000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s Unsupported family: %ld", &v1, 0x16u);
}

+ (void)_templateForFamily:newsStoryResult:compact:.cold.2()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  NSSNewsWidgetMessageForStaticNewsHeadlineTitle();
}

@end