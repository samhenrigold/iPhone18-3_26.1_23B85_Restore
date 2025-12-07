@interface NSBundle(AFUIExtras)
+ (id)_processLocalizedString:()AFUIExtras;
- (id)_preferredEnglishLocalizationBundle;
@end

@implementation NSBundle(AFUIExtras)

- (id)_preferredEnglishLocalizationBundle
{
  v2 = MEMORY[0x1E696AAE8];
  localizations = [self localizations];
  v4 = [v2 preferredLocalizationsFromArray:localizations forPreferences:&unk_1F4EA22D8];
  firstObject = [v4 firstObject];

  v6 = [self pathForResource:firstObject ofType:@"lproj"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithPath:v6];

  return v7;
}

+ (id)_processLocalizedString:()AFUIExtras
{
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = 0;
    v18 = 0;
    [mainBundle _searchForLocalizedString:v3 foundKey:&v18 foundTable:&v17];
    v6 = v18;
    v7 = v17;

    if (!v6 || !v7 || ([MEMORY[0x1E696AAE8] mainBundle], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_preferredEnglishLocalizationBundle"), v9 = objc_claimAutoreleasedReturnValue(), v8, objc_msgSend(v9, "localizedStringForKey:value:table:", v6, v3, v7), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
    {
      v10 = v3;
    }

    v11 = [v10 length];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__NSBundle_AFUIExtras___processLocalizedString___block_invoke;
    v15[3] = &unk_1E84245F8;
    v12 = array;
    v16 = v12;
    [v10 enumerateSubstringsInRange:0 options:v11 usingBlock:{3, v15}];
    lowercaseString = [v10 lowercaseString];
    [v12 addObject:lowercaseString];
  }

  return array;
}

@end