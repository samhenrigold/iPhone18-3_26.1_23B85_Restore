@interface STRegionRatings
+ (STRegionRatings)sharedRatings;
+ (void)loadRegionRatingsWithOptions:(id)options completionHandler:(id)handler;
+ (void)loadRegionRatingsWithOptions:(id)options storefrontClient:(id)client managementState:(id)state completionHandler:(id)handler;
- (NSString)preferredRegion;
- (STRegionRatings)initWithStorefrontClient:(id)client;
- (id)_localizedLabelForRegion:(id)region rating:(id)rating;
- (id)_localizedRatingsForRegion:(id)region type:(id)type includeAllContentKey:(BOOL)key;
- (id)_overrideValueForString:(id)string;
- (id)getClosestRestrictionMatch:(id)match within:(id)within forPayloadKey:(id)key;
- (id)getRatingSystemTypeFrom:(id)from;
- (id)localizedStringForAppRatingLabel:(id)label;
- (id)ratingValuesByRatingSystemType;
- (void)_loadRegionRatingsDataForStorefront:(id)storefront includeUnrated:(BOOL)unrated managementState:(id)state completionHandler:(id)handler;
- (void)_loadRegionRatingsDataWithOptions:(id)options managementState:(id)state completionHandler:(id)handler;
@end

@implementation STRegionRatings

+ (void)loadRegionRatingsWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  v9 = objc_opt_new();
  v8 = objc_opt_new();
  [self loadRegionRatingsWithOptions:optionsCopy storefrontClient:v9 managementState:v8 completionHandler:handlerCopy];
}

+ (void)loadRegionRatingsWithOptions:(id)options storefrontClient:(id)client managementState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  clientCopy = client;
  optionsCopy = options;
  v13 = [[STRegionRatings alloc] initWithStorefrontClient:clientCopy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__STRegionRatings_loadRegionRatingsWithOptions_storefrontClient_managementState_completionHandler___block_invoke;
  v16[3] = &unk_1E7CE7760;
  v17 = v13;
  v18 = handlerCopy;
  v14 = v13;
  v15 = handlerCopy;
  [(STRegionRatings *)v14 _loadRegionRatingsDataWithOptions:optionsCopy managementState:stateCopy completionHandler:v16];
}

uint64_t __99__STRegionRatings_loadRegionRatingsWithOptions_storefrontClient_managementState_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

+ (STRegionRatings)sharedRatings
{
  if (sharedRatings_onceToken != -1)
  {
    +[STRegionRatings sharedRatings];
  }

  v3 = sharedRatings_sharedRatings;

  return v3;
}

void __32__STRegionRatings_sharedRatings__block_invoke()
{
  v0 = [STRegionRatings alloc];
  v3 = objc_opt_new();
  v1 = [(STRegionRatings *)v0 initWithStorefrontClient:v3];
  v2 = sharedRatings_sharedRatings;
  sharedRatings_sharedRatings = v1;
}

- (STRegionRatings)initWithStorefrontClient:(id)client
{
  clientCopy = client;
  v8.receiver = self;
  v8.super_class = STRegionRatings;
  v5 = [(STRegionRatings *)&v8 init];
  storefrontClient = v5->_storefrontClient;
  v5->_storefrontClient = clientCopy;

  return v5;
}

- (void)_loadRegionRatingsDataWithOptions:(id)options managementState:(id)state completionHandler:(id)handler
{
  optionsCopy = options;
  stateCopy = state;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    storefrontClient = [(STRegionRatings *)self storefrontClient];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke;
    v13[3] = &unk_1E7CE8160;
    v13[4] = self;
    v14 = optionsCopy;
    v15 = stateCopy;
    v16 = handlerCopy;
    [storefrontClient fetchStorefrontWithOptions:v14 completionHandler:v13];
  }

  else
  {
    preferredRegion = [(STRegionRatings *)self preferredRegion];
    -[STRegionRatings _loadRegionRatingsDataForStorefront:includeUnrated:managementState:completionHandler:](self, "_loadRegionRatingsDataForStorefront:includeUnrated:managementState:completionHandler:", preferredRegion, [optionsCopy unrated], stateCopy, handlerCopy);
  }
}

void __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) unrated];
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE8138;
    v11[4] = *(a1 + 32);
    v12 = v5;
    v13 = *(a1 + 56);
    [v7 _loadRegionRatingsDataForStorefront:v12 includeUnrated:v8 managementState:v9 completionHandler:v11];
  }

  else
  {
    v10 = +[STLog regionRating];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_cold_1(v6, v10);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) setStorefront:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_loadRegionRatingsDataForStorefront:(id)storefront includeUnrated:(BOOL)unrated managementState:(id)state completionHandler:(id)handler
{
  unratedCopy = unrated;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke;
  v12[3] = &unk_1E7CE7918;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [state loadRegionRatingsDataForStorefront:storefront includeUnrated:unratedCopy completionHandler:v12];
}

void __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7CE6A40;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = +[STLog regionRating];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B831F000, v4, OS_LOG_TYPE_DEFAULT, "STRegionRatings loadRegionRatingsDataWithCompletionHandler received ratings data: %@", &v7, 0xCu);
    }

    [*(a1 + 40) setRegionRatingsData:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2_cold_1(a1, v4);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (NSString)preferredRegion
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [currentLocale countryCode];
  lowercaseString = [countryCode lowercaseString];

  if ([lowercaseString length])
  {
    v5 = lowercaseString;
  }

  else
  {
    v6 = +[STLog regionRating];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(STRegionRatings *)v6 preferredRegion];
    }

    v5 = @"us";
  }

  return v5;
}

- (id)ratingValuesByRatingSystemType
{
  regionRatingsData = [(STRegionRatings *)self regionRatingsData];
  allValues = [regionRatingsData allValues];
  firstObject = [allValues firstObject];

  return firstObject;
}

- (id)_overrideValueForString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:stringCopy value:@"xx" table:@"RatingProviders"];

  if (v5 == @"xx")
  {
    v13 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(\\d+)" options:0 error:0];
    v7 = [v6 firstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    v8 = v7;
    if (v7)
    {
      range = [v7 range];
      v11 = [stringCopy substringWithRange:{range, v10}];
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v13 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%ld" error:0, integerValue];
  }

  return v13;
}

- (id)_localizedLabelForRegion:(id)region rating:(id)rating
{
  v6 = MEMORY[0x1E696AEC0];
  ratingCopy = rating;
  ratingCopy = [v6 stringWithFormat:@"%@_%@", region, ratingCopy];
  v9 = [(STRegionRatings *)self _overrideValueForString:ratingCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = ratingCopy;
  }

  v12 = v11;

  return v11;
}

- (id)_localizedRatingsForRegion:(id)region type:(id)type includeAllContentKey:(BOOL)key
{
  keyCopy = key;
  v39 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  typeCopy = type;
  if (_os_feature_enabled_impl())
  {
    ratingValuesByRatingSystemType = [(STRegionRatings *)self ratingValuesByRatingSystemType];
    v11 = [ratingValuesByRatingSystemType objectForKeyedSubscript:typeCopy];
  }

  else
  {
    ratingValuesByRatingSystemType = [(STRegionRatings *)self regionRatingsData];
    v12 = [ratingValuesByRatingSystemType objectForKeyedSubscript:regionCopy];
    v11 = [v12 objectForKeyedSubscript:typeCopy];
  }

  if (v11)
  {
    v13 = [v11 valueForKey:@"rank"];
    if (_os_feature_enabled_impl())
    {
      v14 = [v11 valueForKey:@"rating"];
    }

    else
    {
      v32 = keyCopy;
      v33 = typeCopy;
      v31 = v13;
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:@"rating"];
            v22 = [(STRegionRatings *)self _localizedLabelForRegion:regionCopy rating:v21];
            [v14 addObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v18);
      }

      typeCopy = v33;
      keyCopy = v32;
      v13 = v31;
    }

    v15 = [MEMORY[0x1E695DF90] dictionaryWithObjects:v14 forKeys:v13];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  }

  v23 = [v15 objectForKeyedSubscript:&unk_1F3059BE8];

  if (v23)
  {
    if (!keyCopy)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"DontAllow" value:@"xx" table:@"RatingProviders"];
    [v15 setObject:v25 forKeyedSubscript:&unk_1F3059BE8];

    if (!keyCopy)
    {
      goto LABEL_23;
    }
  }

  v26 = [v15 objectForKeyedSubscript:&unk_1F3059C00];

  if (!v26)
  {
    v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"AllowAll" value:@"xx" table:@"RatingProviders"];
    [v15 setObject:v28 forKeyedSubscript:&unk_1F3059C00];
  }

LABEL_23:
  v29 = [v15 copy];

  return v29;
}

- (id)localizedStringForAppRatingLabel:(id)label
{
  labelCopy = label;
  if (_os_feature_enabled_impl())
  {
    v5 = labelCopy;
  }

  else
  {
    v5 = [(STRegionRatings *)self _localizedLabelForRegion:@"us" rating:labelCopy];
  }

  v6 = v5;

  return v6;
}

- (id)getRatingSystemTypeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (getRatingSystemTypeFrom__onceToken[0] != -1)
  {
    [STRegionRatings getRatingSystemTypeFrom:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = fromCopy;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [getRatingSystemTypeFrom__typeValues objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

void __43__STRegionRatings_getRatingSystemTypeFrom___block_invoke()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"movies";
  v2[1] = @"movie-bundles";
  v3[0] = @"ratingMovies";
  v3[1] = @"ratingMovies";
  v2[2] = @"tv-seasons";
  v2[3] = @"tv-episodes";
  v3[2] = @"ratingTVShows";
  v3[3] = @"ratingTVShows";
  v2[4] = @"apps";
  v2[5] = @"in-apps";
  v3[4] = @"ratingApps";
  v3[5] = @"ratingApps";
  v2[6] = @"app-bundles";
  v3[6] = @"ratingApps";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = getRatingSystemTypeFrom__typeValues;
  getRatingSystemTypeFrom__typeValues = v0;
}

- (id)getClosestRestrictionMatch:(id)match within:(id)within forPayloadKey:(id)key
{
  matchCopy = match;
  withinCopy = within;
  keyCopy = key;
  integerValue = [matchCopy integerValue];
  v11 = [keyCopy componentsSeparatedByString:@"."];

  lastObject = [v11 lastObject];

  v13 = [lastObject isEqualToString:@"ratingApps"];
  v14 = _os_feature_enabled_impl();
  if (v13)
  {
    if (v13 & v14)
    {
      goto LABEL_7;
    }

    v15 = &unk_1F3059BD0;
  }

  else
  {
    v15 = &unk_1F3059C00;
  }

  if ([matchCopy isEqual:v15])
  {
    v16 = matchCopy;
    v17 = withinCopy;
    goto LABEL_12;
  }

LABEL_7:
  v17 = [withinCopy sortedArrayUsingComparator:&__block_literal_global_89];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__STRegionRatings_getClosestRestrictionMatch_within_forPayloadKey___block_invoke_2;
  v22[3] = &__block_descriptor_40_e25_B32__0__NSNumber_8Q16_B24l;
  v22[4] = integerValue;
  v18 = [v17 indexOfObjectPassingTest:v22];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = +[STLog regionRating];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1B831F000, v19, OS_LOG_TYPE_DEFAULT, "No matching restriction value was found, so conservatively returning Don't Allow", v21, 2u);
    }

    v16 = &unk_1F3059BE8;
  }

  else
  {
    v16 = [v17 objectAtIndexedSubscript:v18];
  }

LABEL_12:

  return v16;
}

uint64_t __67__STRegionRatings_getClosestRestrictionMatch_within_forPayloadKey___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if ([a2 integerValue] <= *(a1 + 32))
  {
    v5 = 1;
    *a4 = 1;
  }

  else
  {
    v5 = *a4;
  }

  return v5 & 1;
}

void __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "When loading region ratings, failed to fetch storefront: %{public}@", &v2, 0xCu);
}

void __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "STRegionRatings loadRegionRatingsDataWithCompletionHandler received error: %@", &v3, 0xCu);
}

@end