@interface FCOfflineDownloadsConfiguration
+ (BOOL)_automaticDownloadsEnabledForKey:(id)key;
- (BOOL)automaticRecipeDownloadsEnabled;
- (FCOfflineDownloadsConfiguration)initWithDictionary:(id)dictionary optimized:(BOOL)optimized;
@end

@implementation FCOfflineDownloadsConfiguration

- (FCOfflineDownloadsConfiguration)initWithDictionary:(id)dictionary optimized:(BOOL)optimized
{
  optimizedCopy = optimized;
  dictionaryCopy = dictionary;
  v73.receiver = self;
  v73.super_class = FCOfflineDownloadsConfiguration;
  v7 = [(FCOfflineDownloadsConfiguration *)&v73 init];
  if (v7)
  {
    v7->_minDeviceStorage = FCAppConfigurationIntegerValue(dictionaryCopy, @"minDeviceStorage", 1000000000);
    if (optimizedCopy)
    {
      v8 = 2000000000;
    }

    else
    {
      v8 = 5000000000;
    }

    if (optimizedCopy)
    {
      v9 = 100;
    }

    else
    {
      v9 = 250;
    }

    if (optimizedCopy)
    {
      v10 = 5;
    }

    else
    {
      v10 = 10;
    }

    if (optimizedCopy)
    {
      v11 = 50;
    }

    else
    {
      v11 = 250;
    }

    if (optimizedCopy)
    {
      v12 = 10;
    }

    else
    {
      v12 = 25;
    }

    if (optimizedCopy)
    {
      v13 = 5;
    }

    else
    {
      v13 = 0x7FFFFFFFLL;
    }

    if (optimizedCopy)
    {
      v14 = 25;
    }

    else
    {
      v14 = 50;
    }

    if (optimizedCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = 5;
    }

    v69 = v15;
    if (optimizedCopy)
    {
      v16 = 10;
    }

    else
    {
      v16 = 20;
    }

    v17 = 15;
    if (optimizedCopy)
    {
      v17 = 10;
    }

    v70 = v17;
    if (optimizedCopy)
    {
      v18 = 50;
    }

    else
    {
      v18 = 100;
    }

    v19 = 200;
    if (optimizedCopy)
    {
      v19 = 50;
    }

    v71 = v18;
    v72 = v19;
    v7->_maxDownloadStorage = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxDownloadStorage", v8);
    v7->_maxArticleDownloads = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxArticleDownloads", v9);
    v7->_maxIssueDownloads = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxIssueDownloads", v10);
    v7->_maxPuzzleDownloads = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxPuzzleDownloads", v11);
    v7->_maxAudioDownloads = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxAudioDownloads", v12);
    v7->_maxRecipeDownloads = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxRecipeDownloads", v11);
    v7->_maxImagesPerArticle = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxImagesPerArticle", v13);
    v7->_useSmallestArticleThumbnails = FCAppConfigurationBoolValue(dictionaryCopy, @"useSmallestArticleThumbnails", optimizedCopy);
    v7->_useSmallestPuzzleThumbnails = FCAppConfigurationBoolValue(dictionaryCopy, @"useSmallestPuzzleThumbnails", optimizedCopy);
    v7->_useSmallestRecipeThumbnails = FCAppConfigurationBoolValue(dictionaryCopy, @"useSmallestRecipeThumbnails", optimizedCopy);
    v7->_useSmallestArticleImages = FCAppConfigurationBoolValue(dictionaryCopy, @"useSmallestArticleImages", optimizedCopy);
    v20 = [FCOfflineFeedRules alloc];
    v21 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"todayFeed", 0);
    v22 = [(FCOfflineFeedRules *)v20 initWithDictionary:v21 defaultMaxGroups:20 defaultMaxArticleDownloads:v14 defaultMaxIssueDownloads:1 defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:v69 defaultMaxRecipeDownloads:v14];
    todayFeedRules = v7->_todayFeedRules;
    v7->_todayFeedRules = v22;

    v24 = [FCOfflineFeedRules alloc];
    v25 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"puzzleHubFeed", 0);
    v26 = [(FCOfflineFeedRules *)v24 initWithDictionary:v25 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:0x7FFFFFFFLL defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0x7FFFFFFFLL defaultMaxRecipeDownloads:0x7FFFFFFFLL];
    puzzleHubFeedRules = v7->_puzzleHubFeedRules;
    v7->_puzzleHubFeedRules = v26;

    v28 = [FCOfflineFeedRules alloc];
    v29 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"puzzleFeed", 0);
    v30 = [(FCOfflineFeedRules *)v28 initWithDictionary:v29 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:0x7FFFFFFFLL defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0x7FFFFFFFLL defaultMaxRecipeDownloads:0x7FFFFFFFLL];
    puzzleTypeFeedRules = v7->_puzzleTypeFeedRules;
    v7->_puzzleTypeFeedRules = v30;

    v32 = [FCOfflineFeedRules alloc];
    v33 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"sportsFeed", 0);
    v34 = [(FCOfflineFeedRules *)v32 initWithDictionary:v33 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:v16 defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0x7FFFFFFFLL defaultMaxRecipeDownloads:0x7FFFFFFFLL];
    sportsFeedRules = v7->_sportsFeedRules;
    v7->_sportsFeedRules = v34;

    v36 = [FCOfflineFeedRules alloc];
    v37 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"magazineFeed", 0);
    v38 = [(FCOfflineFeedRules *)v36 initWithDictionary:v37 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:v16 defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0x7FFFFFFFLL defaultMaxRecipeDownloads:v16];
    magazineFeedRules = v7->_magazineFeedRules;
    v7->_magazineFeedRules = v38;

    v40 = [FCOfflineFeedRules alloc];
    v41 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"audioFeed", 0);
    v42 = [(FCOfflineFeedRules *)v40 initWithDictionary:v41 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:v70 defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:v70 defaultMaxRecipeDownloads:0x7FFFFFFFLL];
    audioFeedRules = v7->_audioFeedRules;
    v7->_audioFeedRules = v42;

    v44 = [FCOfflineFeedRules alloc];
    v45 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"savedFeed", 0);
    v46 = [(FCOfflineFeedRules *)v44 initWithDictionary:v45 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:v14 defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0 defaultMaxRecipeDownloads:0x7FFFFFFFLL];
    savedFeedRules = v7->_savedFeedRules;
    v7->_savedFeedRules = v46;

    v48 = [FCOfflineFeedRules alloc];
    v49 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"historyFeed", 0);
    v50 = [(FCOfflineFeedRules *)v48 initWithDictionary:v49 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:v14 defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0 defaultMaxRecipeDownloads:0x7FFFFFFFLL];
    historyFeedRules = v7->_historyFeedRules;
    v7->_historyFeedRules = v50;

    v52 = [FCOfflineFeedRules alloc];
    v53 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"sharedWithYouFeed", 0);
    v54 = [(FCOfflineFeedRules *)v52 initWithDictionary:v53 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:v10 defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0 defaultMaxRecipeDownloads:0x7FFFFFFFLL];
    sharedWithYouFeedRules = v7->_sharedWithYouFeedRules;
    v7->_sharedWithYouFeedRules = v54;

    v56 = [FCOfflineFeedRules alloc];
    v57 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"recipeBoxFeed", 0);
    v58 = [(FCOfflineFeedRules *)v56 initWithDictionary:v57 defaultMaxGroups:0x7FFFFFFFLL defaultMaxArticleDownloads:0x7FFFFFFFLL defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0x7FFFFFFFLL defaultMaxRecipeDownloads:v11];
    recipeBoxFeedRules = v7->_recipeBoxFeedRules;
    v7->_recipeBoxFeedRules = v58;

    v60 = [FCOfflineFeedRules alloc];
    v61 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"foodHubFeed", 0);
    v62 = [(FCOfflineFeedRules *)v60 initWithDictionary:v61 defaultMaxGroups:20 defaultMaxArticleDownloads:v14 defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0x7FFFFFFFLL defaultMaxRecipeDownloads:v71];
    foodHubFeedRules = v7->_foodHubFeedRules;
    v7->_foodHubFeedRules = v62;

    v64 = [FCOfflineFeedRules alloc];
    v65 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"recipeCatalogFeed", 0);
    v66 = [(FCOfflineFeedRules *)v64 initWithDictionary:v65 defaultMaxGroups:20 defaultMaxArticleDownloads:0x7FFFFFFFLL defaultMaxIssueDownloads:0x7FFFFFFFLL defaultMaxPuzzleDownloads:0x7FFFFFFFLL defaultMaxAudioDownloads:0x7FFFFFFFLL defaultMaxRecipeDownloads:v72];
    recipeCatalogFeedRules = v7->_recipeCatalogFeedRules;
    v7->_recipeCatalogFeedRules = v66;
  }

  return v7;
}

- (BOOL)automaticRecipeDownloadsEnabled
{
  if ([(FCOfflineDownloadsConfiguration *)self maxRecipeDownloads]< 1)
  {
    return 0;
  }

  v2 = objc_opt_class();

  return [v2 _automaticDownloadsEnabledForKey:@"automatically_download_recipes"];
}

+ (BOOL)_automaticDownloadsEnabledForKey:(id)key
{
  keyCopy = key;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 objectForKey:keyCopy];

  if (v5)
  {
    v6 = NewsCoreUserDefaults();
    v7 = [v6 BOOLForKey:keyCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end