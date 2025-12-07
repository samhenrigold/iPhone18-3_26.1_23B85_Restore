@interface WFiTunesSoftwareObject
+ (id)JSONKeyPathsByPropertyKey;
+ (id)allowedSecureCodingClassesByPropertyKey;
+ (id)iPadScreenshotURLsJSONTransformer;
+ (id)screenshotURLsJSONTransformer;
@end

@implementation WFiTunesSoftwareObject

+ (id)iPadScreenshotURLsJSONTransformer
{
  mtl_URLValueTransformer = [MEMORY[0x1E696B0A0] mtl_URLValueTransformer];
  v3 = [(NSValueTransformer *)MTLValueTransformer mtl_arrayMappingTransformerWithTransformer:mtl_URLValueTransformer];

  return v3;
}

+ (id)screenshotURLsJSONTransformer
{
  mtl_URLValueTransformer = [MEMORY[0x1E696B0A0] mtl_URLValueTransformer];
  v3 = [(NSValueTransformer *)MTLValueTransformer mtl_arrayMappingTransformerWithTransformer:mtl_URLValueTransformer];

  return v3;
}

uint64_t __59__WFiTunesSoftwareObject_supportsGameCenterJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 containsObject:@"gameCenter"];

  return [v2 numberWithBool:v3];
}

uint64_t __52__WFiTunesSoftwareObject_isUniversalJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 containsObject:@"iosUniversal"];

  return [v2 numberWithBool:v3];
}

+ (id)JSONKeyPathsByPropertyKey
{
  v8[30] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFiTunesSoftwareObject;
  v2 = objc_msgSendSuper2(&v6, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v7[0] = @"identifier";
  v7[1] = @"name";
  v8[0] = @"trackId";
  v8[1] = @"trackName";
  v7[2] = @"censoredName";
  v7[3] = @"kind";
  v8[2] = @"trackCensoredName";
  v8[3] = @"kind";
  v7[4] = @"viewURL";
  v7[5] = @"bundleIdentifier";
  v8[4] = @"trackViewUrl";
  v8[5] = @"bundleId";
  v7[6] = @"lastUpdated";
  v7[7] = @"category";
  v8[6] = @"currentVersionReleaseDate";
  v8[7] = @"primaryGenreName";
  v7[8] = @"version";
  v7[9] = @"price";
  v8[8] = @"version";
  v8[9] = @"price";
  v7[10] = @"currencyCode";
  v7[11] = @"artistID";
  v8[10] = @"currency";
  v8[11] = @"artistId";
  v7[12] = @"artistName";
  v7[13] = @"releaseDate";
  v8[12] = @"artistName";
  v8[13] = @"releaseDate";
  v7[14] = @"formattedPrice";
  v7[15] = @"descriptionText";
  v8[14] = @"formattedPrice";
  v8[15] = @"description";
  v7[16] = @"releaseNotes";
  v7[17] = @"contentRating";
  v8[16] = @"releaseNotes";
  v8[17] = @"trackContentRating";
  v7[18] = @"minimumOSVersion";
  v7[19] = @"fileSize";
  v8[18] = @"minimumOsVersion";
  v8[19] = @"fileSizeBytes";
  v7[20] = @"averageRating";
  v7[21] = @"numberOfRatings";
  v8[20] = @"averageUserRating";
  v8[21] = @"userRatingCount";
  v7[22] = @"averageRatingLatestVersion";
  v7[23] = @"numberOfRatingsLatestVersion";
  v8[22] = @"averageUserRatingForCurrentVersion";
  v8[23] = @"userRatingCountForCurrentVersion";
  v7[24] = @"isUniversal";
  v7[25] = @"supportsGameCenter";
  v8[24] = @"features";
  v8[25] = @"features";
  v7[26] = @"supportedLanguages";
  v7[27] = @"supportedDevices";
  v8[26] = @"languageCodesISO2A";
  v8[27] = @"supportedDevices";
  v7[28] = @"screenshotURLs";
  v7[29] = @"iPadScreenshotURLs";
  v8[28] = @"screenshotUrls";
  v8[29] = @"ipadScreenshotUrls";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:30];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v13[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___WFiTunesSoftwareObject;
  v2 = objc_msgSendSuper2(&v9, sel_allowedSecureCodingClassesByPropertyKey);
  v3 = [v2 mutableCopy];

  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v3 setObject:v4 forKey:@"screenshotURLs"];

  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v3 setObject:v5 forKey:@"iPadScreenshotURLs"];

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v3 setObject:v6 forKey:@"supportedLanguages"];

  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v3 setObject:v7 forKey:@"supportedDevices"];

  return v3;
}

@end