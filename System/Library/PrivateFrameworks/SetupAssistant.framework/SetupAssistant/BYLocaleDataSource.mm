@interface BYLocaleDataSource
+ (id)newWithLanguage:(id)language;
- (id)otherLocaleAtIndex:(unint64_t)index;
- (id)recommendedLocaleAtIndex:(unint64_t)index;
- (unint64_t)numberOfOtherLocales;
- (unint64_t)numberOfRecommendedLocales;
- (void)reloadData;
- (void)setLanguage:(id)language;
@end

@implementation BYLocaleDataSource

+ (id)newWithLanguage:(id)language
{
  languageCopy = language;
  v4 = objc_opt_new();
  [v4 setLanguage:languageCopy];

  return v4;
}

- (void)reloadData
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = +[BYLocationController sharedBuddyLocationController];
  guessedCountries = [v3 guessedCountries];

  language = [(BYLocaleDataSource *)self language];
  if (!language || (v6 = language, v7 = [guessedCountries count], v6, v7))
  {
LABEL_7:
    v43 = 0;
    goto LABEL_8;
  }

  v8 = +[BYLocationController sharedBuddyLocationController];
  guessedCountries2 = [v8 guessedCountries];

  if (guessedCountries2)
  {
    v11 = _BYLoggingFacility(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "No guessed region found and forcing guessed country from location.", buf, 2u);
    }

    goto LABEL_7;
  }

  v38 = MEMORY[0x1E695DF58];
  language2 = [(BYLocaleDataSource *)self language];
  v40 = [v38 baseLanguageFromLanguage:language2];

  v43 = [MEMORY[0x1E695DF58] exemplarRegionForLanguage:v40];

LABEL_8:
  v12 = _BYLoggingFacility(language);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v50 = v43;
    v51 = 2114;
    v52 = guessedCountries;
    _os_log_impl(&dword_1B862F000, v12, OS_LOG_TYPE_DEFAULT, "Setup Assistant Locale: initializing with exemplar region %{public}@ countries = %{public}@", buf, 0x16u);
  }

  v41 = guessedCountries;

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [(BYLocaleDataSource *)self setSuggestedCountries:array2];

  array3 = [MEMORY[0x1E695DF70] array];
  [(BYLocaleDataSource *)self setMoreCountries:array3];

  [(BYLocaleDataSource *)self setHasRecommendedLocaleFromLanguage:0];
  supportedRegions = [MEMORY[0x1E695DF58] supportedRegions];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = [supportedRegions countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(supportedRegions);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        v22 = MEMORY[0x1E695DF58];
        language3 = [(BYLocaleDataSource *)self language];
        v24 = [v22 localeWithLocaleIdentifier:language3];
        v25 = [v24 localizedStringForRegion:v21 context:3 short:0];

        v26 = [v25 isEqualToString:v21];
        if (v26)
        {
          v27 = _BYLoggingFacility(v26);
          if (os_log_type_enabled(&v27->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v50 = v21;
            _os_log_impl(&dword_1B862F000, &v27->super, OS_LOG_TYPE_DEFAULT, "Missing localization for country code: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          if (![v25 length])
          {
            goto LABEL_25;
          }

          v27 = objc_alloc_init(BYLocaleCountry);
          [(BYLocaleCountry *)v27 setName:v25];
          [(BYLocaleCountry *)v27 setCode:v21];
          if (([array containsObject:v27] & 1) == 0)
          {
            [array addObject:v27];
            if (([v41 containsObject:v21] & 1) != 0 || objc_msgSend(v43, "isEqualToString:", v21))
            {
              suggestedCountries = [(BYLocaleDataSource *)self suggestedCountries];
              [suggestedCountries addObject:v27];

              if ([v43 isEqualToString:v21])
              {
                [(BYLocaleDataSource *)self setHasRecommendedLocaleFromLanguage:1];
              }
            }
          }
        }

LABEL_25:
      }

      v18 = [supportedRegions countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v18);
  }

  [(BYLocaleDataSource *)self setMoreCountries:array, v41];
  moreCountries = [(BYLocaleDataSource *)self moreCountries];
  suggestedCountries2 = [(BYLocaleDataSource *)self suggestedCountries];
  [moreCountries removeObjectsInArray:suggestedCountries2];

  language4 = [(BYLocaleDataSource *)self language];
  if ([language4 length])
  {
    v32 = MEMORY[0x1E695DF58];
    language5 = [(BYLocaleDataSource *)self language];
    v34 = [v32 localeWithLocaleIdentifier:language5];
  }

  else
  {
    v34 = 0;
  }

  v35 = [BYLocaleCountry comparatorForLocale:v34];
  moreCountries2 = [(BYLocaleDataSource *)self moreCountries];
  [moreCountries2 sortUsingComparator:v35];

  suggestedCountries3 = [(BYLocaleDataSource *)self suggestedCountries];
  [suggestedCountries3 sortUsingComparator:v35];
}

- (unint64_t)numberOfRecommendedLocales
{
  suggestedCountries = [(BYLocaleDataSource *)self suggestedCountries];
  v3 = [suggestedCountries count];

  return v3;
}

- (unint64_t)numberOfOtherLocales
{
  moreCountries = [(BYLocaleDataSource *)self moreCountries];
  v3 = [moreCountries count];

  return v3;
}

- (id)recommendedLocaleAtIndex:(unint64_t)index
{
  suggestedCountries = [(BYLocaleDataSource *)self suggestedCountries];
  v5 = [suggestedCountries objectAtIndexedSubscript:index];

  return v5;
}

- (id)otherLocaleAtIndex:(unint64_t)index
{
  moreCountries = [(BYLocaleDataSource *)self moreCountries];
  v5 = [moreCountries objectAtIndexedSubscript:index];

  return v5;
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    if (![(NSString *)self->_language isEqualToString:languageCopy])
    {
      v5 = [v7 copy];
      language = self->_language;
      self->_language = v5;

      [(BYLocaleDataSource *)self reloadData];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

@end