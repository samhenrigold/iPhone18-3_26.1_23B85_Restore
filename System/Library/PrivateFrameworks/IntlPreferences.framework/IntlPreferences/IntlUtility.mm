@interface IntlUtility
+ (BOOL)canCapitalizeAutonymForLanguage:(id)language;
+ (BOOL)forceCapitalizationInLanguageLists;
+ (BOOL)isChineseLikeLunarCalendar:(id)calendar;
+ (BOOL)isLunarCalendarDefaultOn;
+ (BOOL)isLunarCalendarDefaultOnForLanguage:(id)language locale:(id)locale;
+ (BOOL)isYearlessDate:(id)date forCalendar:(id)calendar;
+ (BOOL)upgradeAppleLanguagesFrom:(id)from to:(id)to;
+ (id)_dataForLunarCalendar:(id)calendar;
+ (id)_getXPCConnectionForLocalizationSwitcher;
+ (id)_lunarCalendarData;
+ (id)_lunarCalendars;
+ (id)_preferredLanguagesForBundleID:(id)d;
+ (id)_preferredLanguagesForBundleID:(id)d withBundleRecord:(id)record;
+ (id)_proposedOverrideLanguageFromLanguage:(id)language forLocalizations:(id)localizations preferredLanguages:(id)languages regionCode:(id)code;
+ (id)_sortedCalendarIdentifiersFrom:(id)from;
+ (id)_supportedCalendarsOnEmbeddedSystems;
+ (id)alternateContinentOfRegion:(id)region;
+ (id)capitalizeFirstWordOfName:(id)name accordingToLanguage:(id)language;
+ (id)defaultCalendarForLocaleID:(id)d;
+ (id)displayNameForNumberingSystemWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier short:(BOOL)short;
+ (id)filterLanguageList:(id)list forRegion:(id)region fromLanguages:(id)languages;
+ (id)localeForCalendarID:(id)d;
+ (id)localeForCalendarID:(id)d andLocale:(id)locale;
+ (id)localeForCalendarID:(id)d andLocale:(id)locale preferredLanguages:(id)languages;
+ (id)lunarCalendarsForLocaleID:(id)d;
+ (id)normalizedLanguageIDFromString:(id)string;
+ (id)numberingSystemForLocaleID:(id)d;
+ (id)numberingSystemsForLocaleID:(id)d;
+ (id)numberingSystemsFromArray:(id)array forLocaleID:(id)d;
+ (id)parentLocaleIdentifierForIdentifier:(id)identifier;
+ (id)perAppLanguageSelectionBundleIdentifiers;
+ (id)preferredLanguageForBundleID:(id)d;
+ (id)preferredLanguagesForBundleIDs:(id)ds;
+ (id)preferredLanguagesFromLanguages:(id)languages byAddingFallbacksForRegion:(id)region;
+ (id)preferredLunarCalendarForLocaleID:(id)d;
+ (id)sharedIntlUtility;
+ (id)stdLanguageIDs;
+ (int)UDisplayContextForIUDisplayNameContext:(unint64_t)context;
+ (int64_t)formattingContextFromIUDisplayNameContext:(unint64_t)context;
+ (int64_t)yearlessYearForMonth:(int64_t)month withCalendar:(id)calendar;
+ (void)_setPreferredLanguage:(id)language forBundleID:(id)d;
+ (void)checkForDiscoveredLanguages:(id)languages;
+ (void)enumeratePreferredCalendarsForLocaleID:(id)d usingBlock:(id)block;
+ (void)preferredLanguagesForBundleID:(id)d reply:(id)reply;
+ (void)preferredLanguagesForBundleIDs:(id)ds reply:(id)reply;
+ (void)setPreferredLanguage:(id)language forBundleID:(id)d;
+ (void)setPreferredLanguage:(id)language forBundleID:(id)d andRelaunchWithCompletion:(id)completion;
+ (void)setYearlessYear:(id)year forCalendar:(id)calendar;
+ (void)subscribeToAppLanguageChanges:(id)changes;
+ (void)unsubscribeFromAppLanguageChanges;
- (BOOL)canRenderLanguage:(id)language;
- (id)ICUdisplayNameForLanguage:(id)language capitalization:(ULocaleDisplayNames *)capitalization;
- (id)displayNameForDialect:(id)dialect context:(unint64_t)context displayLanguage:(id)language;
- (id)displayNameForLanguage:(id)language context:(unint64_t)context displayLanguage:(id)displayLanguage;
- (id)displayNameForLocale:(id)locale displayLanguage:(id)language capitalization:(unint64_t)capitalization short:(BOOL)short;
- (id)displayNameForRegion:(id)region displayLanguage:(id)language capitalization:(unint64_t)capitalization short:(BOOL)short;
- (id)languageList;
- (id)localizedNameForScript:(signed __int16)script;
@end

@implementation IntlUtility

+ (id)sharedIntlUtility
{
  if (sharedIntlUtility_onceToken != -1)
  {
    +[IntlUtility sharedIntlUtility];
  }

  v3 = sharedIntlUtility_sIntlUtility;

  return v3;
}

- (id)languageList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__IntlUtility_languageList__block_invoke;
  block[3] = &unk_2787A8F28;
  block[4] = self;
  if (languageList___onceToken != -1)
  {
    dispatch_once(&languageList___onceToken, block);
  }

  return languageList___languageToNativeNameMap;
}

uint64_t __32__IntlUtility_sharedIntlUtility__block_invoke()
{
  sharedIntlUtility_sIntlUtility = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)stdLanguageIDs
{
  if (stdLanguageIDs_onceToken != -1)
  {
    +[IntlUtility stdLanguageIDs];
  }

  v3 = stdLanguageIDs_sStdLanguageIDs;

  return v3;
}

void __29__IntlUtility_stdLanguageIDs__block_invoke()
{
  v2 = [MEMORY[0x277CBEAF8] supportedLanguages];
  v0 = [v2 allObjects];
  v1 = stdLanguageIDs_sStdLanguageIDs;
  stdLanguageIDs_sStdLanguageIDs = v0;
}

+ (id)normalizedLanguageIDFromString:(id)string
{
  stringCopy = string;
  if (stringCopy && ([objc_opt_class() stdLanguageIDs], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", stringCopy), v5, !v6) && (objc_msgSend(MEMORY[0x277CBEAF8], "canonicalLanguageIdentifierFromString:", stringCopy), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    block = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __46__IntlUtility_normalizedLanguageIDFromString___block_invoke;
    v24 = &__block_descriptor_40_e5_v8__0l;
    selfCopy = self;
    if (normalizedLanguageIDFromString____onceTokenForSpecialIDReplacements != -1)
    {
      dispatch_once(&normalizedLanguageIDFromString____onceTokenForSpecialIDReplacements, &block);
    }

    if (normalizedLanguageIDFromString__sSpecialIDReplacements && ([normalizedLanguageIDFromString__sSpecialIDReplacements objectForKey:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
    }

    else
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __46__IntlUtility_normalizedLanguageIDFromString___block_invoke_2;
      v19 = &__block_descriptor_40_e5_v8__0l;
      selfCopy2 = self;
      if (normalizedLanguageIDFromString____onceTokenForCanonicalLanguageIDs != -1)
      {
        dispatch_once(&normalizedLanguageIDFromString____onceTokenForCanonicalLanguageIDs, &v16);
      }

      v12 = [normalizedLanguageIDFromString__sCanonicalLanguageIDs indexOfObject:{v8, v16, v17, v18, v19, selfCopy2, block, v22, v23, v24, selfCopy}];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v12;
        stdLanguageIDs = [objc_opt_class() stdLanguageIDs];
        v15 = [stdLanguageIDs objectAtIndex:v13];

        v8 = v15;
      }

      v10 = v8;
      v8 = v10;
    }
  }

  else
  {
    v10 = stringCopy;
  }

  return v10;
}

void __46__IntlUtility_normalizedLanguageIDFromString___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v5 URLForResource:@"LanguageCodeExceptions" withExtension:@"plist"];
  v3 = [v1 dictionaryWithContentsOfURL:v2];
  v4 = normalizedLanguageIDFromString__sSpecialIDReplacements;
  normalizedLanguageIDFromString__sSpecialIDReplacements = v3;
}

void __46__IntlUtility_normalizedLanguageIDFromString___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB18];
  v2 = [objc_opt_class() stdLanguageIDs];
  v3 = [v1 arrayWithCapacity:{objc_msgSend(v2, "count")}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [objc_opt_class() stdLanguageIDs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v12 + 1) + 8 * v8)];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  v11 = normalizedLanguageIDFromString__sCanonicalLanguageIDs;
  normalizedLanguageIDFromString__sCanonicalLanguageIDs = v10;
}

+ (id)capitalizeFirstWordOfName:(id)name accordingToLanguage:(id)language
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:language];
  v7 = [nameCopy length];
  if (v7 >= 0x80)
  {
    v8 = 128;
  }

  else
  {
    v8 = v7;
  }

  [nameCopy getCharacters:v16 range:{0, v8}];
  [v6 UTF8String];
  ubrk_open();
  ubrk_first();
  v9 = ubrk_next();
  ubrk_close();
  v10 = [nameCopy substringToIndex:v9];
  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v6];
  v12 = [v10 capitalizedStringWithLocale:v11];

  v13 = [nameCopy substringFromIndex:v9];
  v14 = [v12 stringByAppendingString:v13];

  return v14;
}

+ (id)alternateContinentOfRegion:(id)region
{
  v3 = alternateContinentOfRegion__onceToken;
  regionCopy = region;
  if (v3 != -1)
  {
    +[IntlUtility alternateContinentOfRegion:];
  }

  v5 = [alternateContinentOfRegion__sAltContinentsForRegion objectForKeyedSubscript:regionCopy];

  return v5;
}

uint64_t __42__IntlUtility_alternateContinentOfRegion___block_invoke()
{
  alternateContinentOfRegion__sAltContinentsForRegion = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"AM", @"150", @"CY", @"142", @"EG", @"150", @"GE", @"150", @"GL", @"150", @"TR", @"142", @"RU", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (void)enumeratePreferredCalendarsForLocaleID:(id)d usingBlock:(id)block
{
  blockCopy = block;
  v6 = blockCopy;
  if (d && blockCopy)
  {
    v10 = 0;
    [d UTF8String];
    ucal_getKeywordValuesForLocale();
    v9 = 0;
    do
    {
      v7 = uenum_next();
      if (!v7)
      {
        break;
      }

      if (v10 > 0)
      {
        break;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      (v6)[2](v6, v8, &v9);
    }

    while (v9 != 1);
    uenum_close();
  }
}

+ (id)defaultCalendarForLocaleID:(id)d
{
  [d UTF8String];
  uloc_getBaseName();
  ucal_open();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:ucal_getType()];
  ucal_close();
  if (!v4)
  {
    v4 = *MEMORY[0x277CBE5C0];
  }

  return v4;
}

+ (id)_lunarCalendarData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__IntlUtility__lunarCalendarData__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_lunarCalendarData___onceToken != -1)
  {
    dispatch_once(&_lunarCalendarData___onceToken, block);
  }

  v2 = _lunarCalendarData___lunarCalendarData;

  return v2;
}

void __33__IntlUtility__lunarCalendarData__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"LunarCalendars" withExtension:@"plist"];
  v4 = [v1 dictionaryWithContentsOfURL:v3];
  v5 = _lunarCalendarData___lunarCalendarData;
  _lunarCalendarData___lunarCalendarData = v4;

  if (!_lunarCalendarData___lunarCalendarData && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __33__IntlUtility__lunarCalendarData__block_invoke_cold_1();
  }
}

+ (id)_dataForLunarCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = *MEMORY[0x277CBE5E0];
  v6 = [calendarCopy hasPrefix:*MEMORY[0x277CBE5E0]];
  _lunarCalendarData = [self _lunarCalendarData];
  v8 = _lunarCalendarData;
  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = calendarCopy;
  }

  v10 = [_lunarCalendarData objectForKey:v9];

  return v10;
}

+ (id)_lunarCalendars
{
  if (_os_feature_enabled_impl())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__IntlUtility__lunarCalendars__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (_lunarCalendars___onceToken != -1)
    {
      dispatch_once(&_lunarCalendars___onceToken, block);
    }

    v3 = _lunarCalendars___lunarCalendars;
  }

  else
  {
    v3 = &unk_2841A2518;
  }

  return v3;
}

void __30__IntlUtility__lunarCalendars__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _lunarCalendarData];
  v1 = [v4 allKeys];
  v2 = [v1 sortedArrayUsingSelector:sel_compare_];
  v3 = _lunarCalendars___lunarCalendars;
  _lunarCalendars___lunarCalendars = v2;
}

+ (id)_sortedCalendarIdentifiersFrom:(id)from
{
  v3 = MEMORY[0x277CBEAF8];
  fromCopy = from;
  currentLocale = [v3 currentLocale];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__IntlUtility__sortedCalendarIdentifiersFrom___block_invoke;
  v9[3] = &unk_2787A91B8;
  v10 = currentLocale;
  v6 = currentLocale;
  v7 = [fromCopy sortedArrayUsingComparator:v9];

  return v7;
}

uint64_t __46__IntlUtility__sortedCalendarIdentifiersFrom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) localizedStringForCalendarIdentifier:v5];
  if (!v7)
  {
    v7 = v5;
  }

  v8 = [*(a1 + 32) localizedStringForCalendarIdentifier:v6];
  if (!v8)
  {
    v8 = v6;
  }

  v9 = [v7 localizedStandardCompare:v8];

  return v9;
}

+ (id)lunarCalendarsForLocaleID:(id)d
{
  dCopy = d;
  _lunarCalendars = [self _lunarCalendars];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = *MEMORY[0x277CBE5E8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__IntlUtility_lunarCalendarsForLocaleID___block_invoke;
  v10[3] = &unk_2787A91E0;
  v10[4] = &v11;
  [IntlUtility enumeratePreferredCalendarsForLocaleID:dCopy usingBlock:v10];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(_lunarCalendars, "count")}];
  [v6 setArray:_lunarCalendars];
  v7 = [v6 indexOfObject:*MEMORY[0x277CBE5E0]];
  [v6 replaceObjectAtIndex:v7 withObject:v12[5]];
  v8 = [self _sortedCalendarIdentifiersFrom:v6];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __41__IntlUtility_lunarCalendarsForLocaleID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *MEMORY[0x277CBE5E0];
  v8 = v6;
  if ([v6 hasPrefix:*MEMORY[0x277CBE5E0]] && (objc_msgSend(v8, "isEqualToString:", v7) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)preferredLunarCalendarForLocaleID:(id)d
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v4 = [IntlUtility lunarCalendarsForLocaleID:dCopy];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__IntlUtility_preferredLunarCalendarForLocaleID___block_invoke;
  v15 = &unk_2787A9208;
  v5 = v4;
  v16 = v5;
  v17 = &v18;
  [IntlUtility enumeratePreferredCalendarsForLocaleID:dCopy usingBlock:&v12];
  v6 = v19[5];
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:{dCopy, v12, v13, v14, v15}];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
    if (_isChineseLanguageCode(v8))
    {
      v9 = MEMORY[0x277CBE590];
    }

    else if ([v8 isEqualToString:@"ar"])
    {
      v9 = MEMORY[0x277CBE5E8];
    }

    else if ([v8 isEqualToString:@"he"])
    {
      v9 = MEMORY[0x277CBE5C8];
    }

    else if ([v8 isEqualToString:@"vi"])
    {
      v9 = MEMORY[0x277CBE618];
    }

    else
    {
      if (![v8 isEqualToString:@"ko"])
      {
LABEL_13:

        v6 = v19[5];
        goto LABEL_14;
      }

      v9 = MEMORY[0x277CBE5A0];
    }

    objc_storeStrong(v19 + 5, *v9);
    goto LABEL_13;
  }

LABEL_14:
  v10 = v6;

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __49__IntlUtility_preferredLunarCalendarForLocaleID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)localeForCalendarID:(id)d
{
  v3 = MEMORY[0x277CBEAF8];
  dCopy = d;
  currentLocale = [v3 currentLocale];
  v6 = [IntlUtility localeForCalendarID:dCopy andLocale:currentLocale];

  return v6;
}

+ (id)localeForCalendarID:(id)d andLocale:(id)locale
{
  v5 = MEMORY[0x277CBEAF8];
  localeCopy = locale;
  dCopy = d;
  preferredLanguages = [v5 preferredLanguages];
  v9 = [IntlUtility localeForCalendarID:dCopy andLocale:localeCopy preferredLanguages:preferredLanguages];

  return v9;
}

+ (id)localeForCalendarID:(id)d andLocale:(id)locale preferredLanguages:(id)languages
{
  v41[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  languagesCopy = languages;
  v10 = MEMORY[0x277CBEB38];
  v11 = MEMORY[0x277CBEAF8];
  localeIdentifier = [locale localeIdentifier];
  v13 = [v11 componentsFromLocaleIdentifier:localeIdentifier];
  v14 = [v10 dictionaryWithDictionary:v13];

  v15 = [self _dataForLunarCalendar:dCopy];
  v16 = [v15 objectForKey:@"preferredLanguages"];
  if ([v16 count])
  {
    v17 = [MEMORY[0x277CBEAF8] mostPreferredLanguageOf:v16 withPreferredLanguages:languagesCopy forUsage:1 options:0];
    if (v17 || ([v15 objectForKey:@"restrictToPreferredLanguages"], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, v23) && (objc_msgSend(v16, "firstObject"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v17;
      v19 = *MEMORY[0x277CBE6F8];
      v41[0] = *MEMORY[0x277CBE6C8];
      v41[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
      [v14 removeObjectsForKeys:v20];

      v21 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v18];
      [v14 addEntriesFromDictionary:v21];
    }
  }

  v24 = [v15 objectForKey:@"numberingSystems"];
  v25 = MEMORY[0x277CBEAF8];
  v26 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v14];
  v27 = [v25 localeWithLocaleIdentifier:v26];
  languageIdentifier = [v27 languageIdentifier];

  v29 = [v24 objectForKeyedSubscript:languageIdentifier];
  if (![v29 length])
  {
    v30 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:languageIdentifier];
    [v24 objectForKeyedSubscript:v30];
    v32 = v31 = dCopy;

    v29 = v32;
    dCopy = v31;
  }

  v33 = v15;
  v40 = languagesCopy;
  if ([v29 length])
  {
    [v14 setObject:v29 forKeyedSubscript:@"numbers"];
  }

  [v14 setObject:dCopy forKeyedSubscript:@"calendar"];
  v34 = MEMORY[0x277CBEAF8];
  [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v14];
  v36 = v35 = dCopy;
  v37 = [v34 canonicalLocaleIdentifierFromString:v36];

  v38 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v37];

  return v38;
}

+ (BOOL)isLunarCalendarDefaultOn
{
  v3 = MEMORY[0x277CBEAF8];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  v6 = [v3 canonicalLanguageIdentifierFromString:firstObject];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  LOBYTE(self) = [self isLunarCalendarDefaultOnForLanguage:v6 locale:currentLocale];

  return self;
}

+ (BOOL)isLunarCalendarDefaultOnForLanguage:(id)language locale:(id)locale
{
  localeCopy = locale;
  v7 = *MEMORY[0x277CBE690];
  languageCopy = language;
  v9 = [localeCopy objectForKey:v7];
  v10 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:languageCopy];

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  v12 = (_isChineseLanguageCode(v11) & 1) != 0 || [v11 isEqualToString:@"vi"];
  if (([v11 isEqualToString:@"he"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"IL") && !objc_msgSend(v11, "isEqualToString:", @"ar"))
  {
    if ([v11 isEqualToString:@"ar"])
    {
      [&unk_2841A2530 containsObject:v9];
    }
  }

  else if ([v11 isEqualToString:@"ar"])
  {
    if (((v12 | [&unk_2841A2530 containsObject:v9]) & 1) == 0)
    {
LABEL_12:
      LOBYTE(v13) = 0;
      goto LABEL_20;
    }
  }

  else if (!v12)
  {
    goto LABEL_12;
  }

  localeIdentifier = [localeCopy localeIdentifier];
  v15 = [self preferredLunarCalendarForLocaleID:localeIdentifier];

  localeIdentifier2 = [localeCopy localeIdentifier];
  v17 = [self defaultCalendarForLocaleID:localeIdentifier2];

  supportedCalendars = [self supportedCalendars];
  LOBYTE(localeIdentifier2) = [supportedCalendars containsObject:v17];

  if ((localeIdentifier2 & 1) == 0)
  {
    v19 = *MEMORY[0x277CBE5C0];

    v17 = v19;
  }

  if (v15)
  {
    v13 = [v17 isEqualToString:v15] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 1;
  }

LABEL_20:
  return v13;
}

+ (BOOL)isChineseLikeLunarCalendar:(id)calendar
{
  calendarIdentifier = [calendar calendarIdentifier];
  if ([calendarIdentifier isEqualToString:*MEMORY[0x277CBE590]] & 1) != 0 || (objc_msgSend(calendarIdentifier, "isEqualToString:", *MEMORY[0x277CBE5A0]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE618]];
  }

  return v4;
}

+ (int64_t)yearlessYearForMonth:(int64_t)month withCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  if ([calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C8]])
  {
    v8 = 6;
  }

  else if ([calendarIdentifier hasPrefix:@"islamic"])
  {
    v8 = 7;
  }

  else if ([self isChineseLikeLunarCalendar:calendarCopy])
  {
    v8 = chineseLeapMonthExtendedYears[month];
  }

  else
  {
    v8 = 1604;
  }

  return v8;
}

+ (BOOL)isYearlessDate:(id)date forCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  if ([dateCopy year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    if (!calendarCopy)
    {
      calendarCopy = [dateCopy calendar];
    }

    v9 = +[IntlUtility yearlessYearForMonth:withCalendar:](IntlUtility, "yearlessYearForMonth:withCalendar:", [dateCopy month], calendarCopy);
    if ([self isChineseLikeLunarCalendar:calendarCopy])
    {
      v10 = [dateCopy era];
      year = [dateCopy year] + 60 * v10 - 61;
    }

    else
    {
      year = [dateCopy year];
    }

    v8 = v9 == year;
  }

  return v8;
}

+ (void)setYearlessYear:(id)year forCalendar:(id)calendar
{
  yearCopy = year;
  calendarCopy = calendar;
  if (!calendarCopy)
  {
    calendarCopy = [yearCopy calendar];
  }

  v7 = +[IntlUtility yearlessYearForMonth:withCalendar:](IntlUtility, "yearlessYearForMonth:withCalendar:", [yearCopy month], calendarCopy);
  if ([self isChineseLikeLunarCalendar:calendarCopy])
  {
    [yearCopy setEra:v7 / 60 + 1];
    v7 = v7 % 60 + 1;
  }

  [yearCopy setYear:v7];
}

+ (id)numberingSystemForLocaleID:(id)d
{
  v3 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:d];
  v4 = [v3 mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"numbers"];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    [v4 setObject:@"default" forKeyedSubscript:@"numbers"];
    v7 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
    [v7 UTF8String];
    v8 = unumsys_open();
    v6 = 0;
    if (v8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:MEMORY[0x2318E0750](v8)];
      unumsys_close();
    }
  }

  return v6;
}

+ (id)numberingSystemsFromArray:(id)array forLocaleID:(id)d
{
  arrayCopy = array;
  v7 = [self numberingSystemsForLocaleID:d];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__IntlUtility_numberingSystemsFromArray_forLocaleID___block_invoke;
  v12[3] = &unk_2787A9230;
  v13 = arrayCopy;
  v8 = arrayCopy;
  v9 = [v7 indexesOfObjectsPassingTest:v12];
  v10 = [v7 objectsAtIndexes:v9];

  return v10;
}

+ (id)numberingSystemsForLocaleID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v20 = dCopy;
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:dCopy];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"numbers"];
  if ([v7 length] && (objc_msgSend(array, "containsObject:", v7) & 1) == 0)
  {
    [array addObject:v7];
  }

  v19 = v7;
  v18 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v21 = 0u;
  v22 = 0u;
  if ([&unk_2841A2548 containsObject:?])
  {
    v8 = &unk_2841A2560;
  }

  else
  {
    v8 = &unk_2841A2578;
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 setObject:*(*(&v21 + 1) + 8 * i) forKeyedSubscript:@"numbers"];
        v13 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v6];
        [v13 UTF8String];
        v14 = unumsys_open();

        if (v14)
        {
          if (!MEMORY[0x2318E0770](v14) && MEMORY[0x2318E0760](v14) == 10)
          {
            v15 = MEMORY[0x2318E0750](v14);
            if (v15)
            {
              v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
              if (([array containsObject:v16] & 1) == 0)
              {
                [array addObject:v16];
              }
            }
          }

          unumsys_close();
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if (([array containsObject:@"latn"] & 1) == 0)
  {
    [array addObject:@"latn"];
  }

  return array;
}

+ (id)displayNameForNumberingSystemWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier short:(BOOL)short
{
  shortCopy = short;
  v7 = MEMORY[0x277CBEAF8];
  identifierCopy = identifier;
  v9 = [v7 componentsFromLocaleIdentifier:localeIdentifier];
  v10 = [v9 mutableCopy];

  [v10 setObject:identifierCopy forKeyedSubscript:@"numbers"];
  v11 = objc_opt_new();
  v12 = MEMORY[0x277CBEAF8];
  v13 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v10];
  v14 = [v12 localeWithLocaleIdentifier:v13];
  [v11 setLocale:v14];

  if (shortCopy)
  {
    v15 = &unk_2841A2488;
  }

  else
  {
    v15 = &unk_2841A24A0;
  }

  v16 = [v11 stringFromNumber:v15];

  return v16;
}

void __27__IntlUtility_languageList__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEAF8] supportedLanguages];
  v2 = [v1 allObjects];

  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v9, v14}];
        v11 = [v10 localizedStringForLanguage:v9 context:3];

        if ([v11 length])
        {
          v12 = [objc_opt_class() capitalizeFirstWordOfName:v11 accordingToLanguage:v9];
          [v3 setObject:v12 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = languageList___languageToNativeNameMap;
  languageList___languageToNativeNameMap = v3;
}

+ (BOOL)forceCapitalizationInLanguageLists
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__IntlUtility_forceCapitalizationInLanguageLists__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (forceCapitalizationInLanguageLists___onceToken != -1)
  {
    dispatch_once(&forceCapitalizationInLanguageLists___onceToken, block);
  }

  return forceCapitalizationInLanguageLists___capitalize;
}

void __49__IntlUtility_forceCapitalizationInLanguageLists__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v1 localizedStringForKey:@"ForceCapitalizationInLanguageLists" value:@"0" table:0];

  if ([v12 length])
  {
    v2 = [v12 isEqualToString:@"0"];
    forceCapitalizationInLanguageLists___capitalize = v2 ^ 1;
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    forceCapitalizationInLanguageLists___capitalize = 0;
  }

  v3 = MEMORY[0x277CBEAF8];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 preferredLocalizations];
  v6 = [v5 firstObject];
  v7 = [v3 canonicalLanguageIdentifierFromString:v6];

  if ([v7 length])
  {
    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v7];
    v9 = [v8 localizedStringForLanguage:v7 context:3];

    if ([v9 length])
    {
      v10 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      v11 = [v9 rangeOfCharacterFromSet:v10];

      forceCapitalizationInLanguageLists___capitalize = v11 == 0;
    }
  }

LABEL_10:
}

+ (BOOL)canCapitalizeAutonymForLanguage:(id)language
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:language];
  languageCode = [v3 languageCode];
  v5 = [languageCode isEqualToString:@"lut"];

  return v5 ^ 1;
}

- (id)displayNameForDialect:(id)dialect context:(unint64_t)context displayLanguage:(id)language
{
  languageCopy = language;
  dialectCopy = dialect;
  v10 = [objc_opt_class() normalizedLanguageIDFromString:dialectCopy];
  [IntlUtility UDisplayContextForIUDisplayNameContext:context];
  [languageCopy UTF8String];

  v11 = [(IntlUtility *)self ICUdisplayNameForLanguage:v10 capitalization:uldn_openForContext()];
  uldn_close();
  if ([v11 isEqualToString:v10])
  {
    v12 = dialectCopy;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;

  return v13;
}

- (id)ICUdisplayNameForLanguage:(id)language capitalization:(ULocaleDisplayNames *)capitalization
{
  v9 = *MEMORY[0x277D85DE8];
  if (capitalization)
  {
    [language UTF8String];
    v4 = uldn_localeDisplayName();
    if (v4 >= 128)
    {
      v6 = 128;
    }

    else
    {
      v6 = v4;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithCharacters:v8 length:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)displayNameForLocale:(id)locale displayLanguage:(id)language capitalization:(unint64_t)capitalization short:(BOOL)short
{
  shortCopy = short;
  v29 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  languageCopy = language;
  if (!languageCopy)
  {
    v11 = MEMORY[0x277CBEAF8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    preferredLocalizations = [v12 preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    languageCopy = [v11 canonicalLanguageIdentifierFromString:firstObject];
  }

  v26 = 0;
  v15 = [IntlUtility UDisplayContextForIUDisplayNameContext:capitalization];
  if (shortCopy)
  {
    v16 = 513;
  }

  else
  {
    v16 = 512;
  }

  v27 = v15;
  v28 = v16;
  v25 = 0;
  [languageCopy UTF8String];
  uldn_openForContext();
  [localeCopy UTF8String];
  v17 = uldn_localeDisplayName();
  if (v17 >= 150)
  {
    v17 = 0;
    v25 = 15;
  }

  v18 = &v24 - ((2 * (v17 + 1) + 15) & 0x3FFFFFFF0);
  [localeCopy UTF8String];
  v19 = uldn_localeDisplayName();
  uldn_close();
  if (v25 <= 0)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithCharacters:v18 length:v19];
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = localeCopy;
  }

  v22 = v21;

  return v22;
}

+ (int)UDisplayContextForIUDisplayNameContext:(unint64_t)context
{
  if (context - 1 >= 3)
  {
    return 256;
  }

  else
  {
    return context + 256;
  }
}

+ (id)filterLanguageList:(id)list forRegion:(id)region fromLanguages:(id)languages
{
  v26 = *MEMORY[0x277D85DE8];
  listCopy = list;
  regionCopy = region;
  languagesCopy = languages;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = listCopy;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        regionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v13, regionCopy];
        v15 = [IntlUtility normalizedLanguageIDFromString:regionCopy];

        do
        {
          if ([languagesCopy containsObject:v15])
          {
            v13 = v15;
            v16 = v15;
            goto LABEL_12;
          }

          v16 = [IntlUtility parentLocaleIdentifierForIdentifier:v15];

          v15 = v16;
        }

        while (![v16 isEqualToString:@"root"]);
        if (![languagesCopy containsObject:v13])
        {
          goto LABEL_13;
        }

LABEL_12:
        [array addObject:v13];
LABEL_13:
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return array;
}

+ (id)preferredLanguagesFromLanguages:(id)languages byAddingFallbacksForRegion:(id)region
{
  v27 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  regionCopy = region;
  v7 = [languagesCopy mutableCopy];
  v8 = MEMORY[0x277CBEAF8];
  v9 = [IntlUtility preferredLanguagesForRegionWithoutFiltering:regionCopy];
  firstObject = [v9 firstObject];
  v11 = [v8 baseLanguageFromLanguage:firstObject];

  if ([&unk_2841A2590 containsObject:v11])
  {
    v20 = regionCopy;
    v21 = v7;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = languagesCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:{*(*(&v22 + 1) + 8 * i), v20}];
          v18 = [&unk_2841A2590 containsObject:v17];

          if (v18)
          {
            regionCopy = v20;
            v7 = v21;
            goto LABEL_14;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    regionCopy = v20;
    v12 = [MEMORY[0x277CBEAF8] languageFromLanguage:v11 byReplacingRegion:v20];
    if ([v12 length])
    {
      v7 = v21;
      if ([v21 count])
      {
        [v21 addObject:v12];
      }
    }

    else
    {
      v7 = v21;
    }

LABEL_14:
  }

  return v7;
}

+ (id)parentLocaleIdentifierForIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [identifierCopy UTF8String];
  ualoc_getAppleParent();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  if ([(__CFString *)v5 isEqualToString:identifierCopy])
  {

    v5 = @"root";
  }

  return v5;
}

- (BOOL)canRenderLanguage:(id)language
{
  languageCopy = language;
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 12.0, 0);
  if (UIFontForLanguage)
  {
    v5 = UIFontForLanguage;
    v6 = [objc_opt_class() normalizedLanguageIDFromString:languageCopy];
    v7 = [MEMORY[0x277CBEAF8] exemplarForLanguage:v6];
    v8 = v7;
    if (v7 && (v15.length = CFStringGetLength(v7), v15.location = 0, (v9 = CTFontCreateForString(v5, v8, v15)) != 0))
    {
      v10 = v9;
      v11 = CTFontCopyName(v9, *MEMORY[0x277CC4930]);
      if (v11)
      {
        v12 = v11;
        v13 = CFEqual(v11, @"LastResort") == 0;
        CFRelease(v12);
      }

      else
      {
        v13 = 1;
      }

      CFRelease(v10);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)localizedNameForScript:(signed __int16)script
{
  script = [MEMORY[0x277CCACA8] stringWithFormat:@"Script-%d", script];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:script value:&stru_28419F558 table:0];

  return v5;
}

+ (id)_supportedCalendarsOnEmbeddedSystems
{
  v5[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE600];
  v5[0] = *MEMORY[0x277CBE5C0];
  v5[1] = v2;
  v5[2] = *MEMORY[0x277CBE588];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

+ (BOOL)upgradeAppleLanguagesFrom:(id)from to:(id)to
{
  v4 = [(ISMigrator *)ISRootMigrator migratorFromVersion:from toVersion:to];
  performMigration = [v4 performMigration];

  return performMigration;
}

- (id)displayNameForLanguage:(id)language context:(unint64_t)context displayLanguage:(id)displayLanguage
{
  v7 = MEMORY[0x277CBEAF8];
  languageCopy = language;
  v9 = [v7 localeWithLocaleIdentifier:displayLanguage];
  v10 = [v9 localizedStringForLanguage:languageCopy context:{objc_msgSend(objc_opt_class(), "formattingContextFromIUDisplayNameContext:", context)}];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = languageCopy;
  }

  v13 = v12;

  return v12;
}

- (id)displayNameForRegion:(id)region displayLanguage:(id)language capitalization:(unint64_t)capitalization short:(BOOL)short
{
  shortCopy = short;
  v9 = MEMORY[0x277CBEAF8];
  languageCopy = language;
  regionCopy = region;
  v12 = [v9 displayNameForRegion:regionCopy displayLanguage:languageCopy context:objc_msgSend(objc_opt_class() short:{"formattingContextFromIUDisplayNameContext:", capitalization), shortCopy}];

  return v12;
}

+ (int64_t)formattingContextFromIUDisplayNameContext:(unint64_t)context
{
  if (context - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return 6 - context;
  }
}

+ (id)preferredLanguageForBundleID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
  v6 = [v5 URL];
  if (v6)
  {
    _globalPreferredLanguages = [self _preferredLanguagesForBundleID:dCopy withBundleRecord:v5];
    if (!_globalPreferredLanguages)
    {
      _globalPreferredLanguages = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
    }

    v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v6];
    v9 = MEMORY[0x277CCA8D8];
    normalizedLocalizations = [v8 normalizedLocalizations];
    v11 = [v9 preferredLocalizationsFromArray:normalizedLocalizations forPreferences:_globalPreferredLanguages];

    firstObject = [v11 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)_proposedOverrideLanguageFromLanguage:(id)language forLocalizations:(id)localizations preferredLanguages:(id)languages regionCode:(id)code
{
  v59 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  localizationsCopy = localizations;
  languagesCopy = languages;
  codeCopy = code;
  if ([languageCopy length] && objc_msgSend(localizationsCopy, "count") && objc_msgSend(languagesCopy, "count") && objc_msgSend(codeCopy, "length") && (objc_msgSend(localizationsCopy, "containsObject:", languageCopy) & 1) != 0)
  {
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __100__IntlUtility__proposedOverrideLanguageFromLanguage_forLocalizations_preferredLanguages_regionCode___block_invoke;
    v54[3] = &unk_2787A9258;
    v55 = localizationsCopy;
    v13 = languageCopy;
    v56 = v13;
    v47 = MEMORY[0x2318E03E0](v54);
    v45 = v13;
    v42 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v13];
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(languagesCopy, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = languagesCopy;
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:*(*(&v50 + 1) + 8 * i)];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v17);
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __100__IntlUtility__proposedOverrideLanguageFromLanguage_forLocalizations_preferredLanguages_regionCode___block_invoke_2;
    v48[3] = &unk_2787A9280;
    v21 = v42;
    v49 = v21;
    v22 = [v14 indexesOfObjectsPassingTest:v48];
    if ([v22 count] && (v23 = objc_msgSend(v22, "firstIndex"), v23 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v28 = v23;
      v41 = languagesCopy;
      v43 = v21;
      while (1)
      {
        v29 = v22;
        v30 = [v15 mutableCopy];
        [v30 removeObjectAtIndex:v28];
        v31 = [v15 objectAtIndexedSubscript:v28];
        [v30 insertObject:v31 atIndex:0];

        if ((v47)[2](v47, v30))
        {
          break;
        }

        v22 = v29;
        v28 = [v29 indexGreaterThanIndex:v28];

        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0;
          v21 = v43;
          v25 = v45;
          goto LABEL_25;
        }
      }

      v24 = [v15 objectAtIndexedSubscript:v28];

      v21 = v43;
      v25 = v45;
      v22 = v29;
LABEL_25:
      languagesCopy = v41;
    }

    else
    {
      v24 = 0;
      v25 = v45;
    }

    if (![v24 length])
    {
      v44 = v21;
      v46 = v22;
      v32 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v25];
      countryCode = [v32 countryCode];
      v41 = [countryCode length];

      if (v41)
      {
        v22 = v46;
      }

      else
      {
        v41 = [MEMORY[0x277CBEAF8] languageFromLanguage:v25 byReplacingRegion:codeCopy];
        v57 = v41;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v35 = [v34 arrayByAddingObjectsFromArray:v15];
        v36 = (v47)[2](v47, v35);

        if (v36)
        {
          v37 = v41;

          v24 = v37;
        }

        v22 = v46;
      }

      v21 = v44;
    }

    if (![v24 length])
    {
      v38 = languagesCopy;
      v39 = v22;
      v40 = v25;

      v24 = v40;
      v22 = v39;
      languagesCopy = v38;
    }

    v26 = v24;
  }

  else
  {
    v26 = languageCopy;
  }

  return v26;
}

uint64_t __100__IntlUtility__proposedOverrideLanguageFromLanguage_forLocalizations_preferredLanguages_regionCode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:*(a1 + 32) forPreferences:a2];
  v4 = [v3 firstObject];
  v5 = [v4 isEqualToString:*(a1 + 40)];

  return v5;
}

+ (id)_preferredLanguagesForBundleID:(id)d
{
  v4 = MEMORY[0x277CC1E70];
  dCopy = d;
  v6 = [[v4 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
  v7 = [self _preferredLanguagesForBundleID:dCopy withAppRecord:v6];

  return v7;
}

+ (id)_preferredLanguagesForBundleID:(id)d withBundleRecord:(id)record
{
  dCopy = d;
  dataContainerURL = [record dataContainerURL];
  path = [dataContainerURL path];

  v8 = _CFPreferencesCopyValueWithContainer();
  if ((_NSIsNSArray() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (void)checkForDiscoveredLanguages:(id)languages
{
  languagesCopy = languages;
  _getXPCConnectionForLocalizationSwitcher = [self _getXPCConnectionForLocalizationSwitcher];
  remoteObjectProxy = [_getXPCConnectionForLocalizationSwitcher remoteObjectProxy];
  if (remoteObjectProxy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__IntlUtility_checkForDiscoveredLanguages___block_invoke;
    v7[3] = &unk_2787A92A8;
    v8 = languagesCopy;
    [remoteObjectProxy checkForDiscoveredLanguages:v7];
  }
}

uint64_t __43__IntlUtility_checkForDiscoveredLanguages___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)preferredLanguagesForBundleID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  _getXPCConnectionForLocalizationSwitcher = [self _getXPCConnectionForLocalizationSwitcher];
  remoteObjectProxy = [_getXPCConnectionForLocalizationSwitcher remoteObjectProxy];
  if (remoteObjectProxy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__IntlUtility_preferredLanguagesForBundleID_reply___block_invoke;
    v10[3] = &unk_2787A92D0;
    v11 = replyCopy;
    [remoteObjectProxy preferredLanguagesForBundleID:dCopy reply:v10];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0);
  }
}

+ (void)preferredLanguagesForBundleIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
  _getXPCConnectionForLocalizationSwitcher = [self _getXPCConnectionForLocalizationSwitcher];
  remoteObjectProxy = [_getXPCConnectionForLocalizationSwitcher remoteObjectProxy];
  if (remoteObjectProxy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__IntlUtility_preferredLanguagesForBundleIDs_reply___block_invoke;
    v10[3] = &unk_2787A92A8;
    v11 = replyCopy;
    [remoteObjectProxy preferredLanguagesForBundleIDs:dsCopy reply:v10];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0);
  }
}

+ (id)preferredLanguagesForBundleIDs:(id)ds
{
  dsCopy = ds;
  _getXPCConnectionForLocalizationSwitcher = [self _getXPCConnectionForLocalizationSwitcher];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__IntlUtility_preferredLanguagesForBundleIDs___block_invoke;
  v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v17[4] = self;
  v6 = [_getXPCConnectionForLocalizationSwitcher synchronousRemoteObjectProxyWithErrorHandler:v17];
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__IntlUtility_preferredLanguagesForBundleIDs___block_invoke_241;
    v10[3] = &unk_2787A9318;
    v10[4] = &v11;
    [v6 preferredLanguagesForBundleIDs:dsCopy reply:v10];
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __46__IntlUtility_preferredLanguagesForBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a2;
    v4 = objc_opt_class();

    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v3;
    v5 = v4;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error obtaining remote object proxy, %{public}@", &v6, 0x16u);
  }
}

+ (void)_setPreferredLanguage:(id)language forBundleID:(id)d
{
  languageCopy = language;
  dCopy = d;
  v8 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:dCopy];
  bundleURL = [v8 bundleURL];
  if (bundleURL)
  {
    v50 = bundleURL;
    v10 = [MEMORY[0x277CCA8D8] bundleWithURL:bundleURL];
    v11 = v10;
    v52 = languageCopy;
    selfCopy = self;
    if (languageCopy)
    {
      normalizedLocalizations = [v10 normalizedLocalizations];
      preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      countryCode = [currentLocale countryCode];
      [self _proposedOverrideLanguageFromLanguage:languageCopy forLocalizations:normalizedLocalizations preferredLanguages:preferredLanguages regionCode:countryCode];
      v16 = v11;
      v18 = v17 = v8;

      languageCopy = [MEMORY[0x277CBEB40] orderedSetWithObject:v18];
      preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
      [languageCopy addObjectsFromArray:preferredLanguages2];

      v8 = v17;
      v11 = v16;
    }

    v20 = MEMORY[0x277CCA8D8];
    normalizedLocalizations2 = [v11 normalizedLocalizations];
    array = [languageCopy array];
    v23 = [v20 preferredLocalizationsFromArray:normalizedLocalizations2 forPreferences:array];
    firstObject = [v23 firstObject];

    v25 = MEMORY[0x277CCA8D8];
    normalizedLocalizations3 = [v11 normalizedLocalizations];
    _globalPreferredLanguages = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
    v28 = [v25 preferredLocalizationsFromArray:normalizedLocalizations3 forPreferences:_globalPreferredLanguages];
    firstObject2 = [v28 firstObject];

    v47 = firstObject2;
    v48 = firstObject;
    v30 = [firstObject isEqualToString:firstObject2];
    if (v30)
    {
      array2 = 0;
    }

    else
    {
      array2 = [languageCopy array];
    }

    v51 = v8;
    dataContainerURL = [v8 dataContainerURL];
    path = [dataContainerURL path];

    _CFPreferencesSetValueWithContainer();
    bundleIdentifier = [v11 bundleIdentifier];
    v35 = [bundleIdentifier hasPrefix:@"com.apple."];

    if (v35 && path)
    {
      _CFPreferencesSetValueWithContainer();
    }

    mEMORY[0x277CEAF78] = [MEMORY[0x277CEAF78] sharedDeviceConnection];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke;
    v53[3] = &unk_2787A9340;
    v56 = selfCopy;
    v37 = array2;
    v54 = v37;
    v38 = languageCopy;
    v55 = v38;
    [mEMORY[0x277CEAF78] fetchWatchAppBundleIDForCompanionAppBundleID:dCopy completion:v53];

    perAppLanguageSelectionBundleIdentifiers = [selfCopy perAppLanguageSelectionBundleIdentifiers];
    v40 = [MEMORY[0x277CBEB40] orderedSetWithArray:perAppLanguageSelectionBundleIdentifiers];
    v41 = v40;
    v42 = v30 ^ 1;
    if (!v52)
    {
      v42 = 0;
    }

    if (v42)
    {
      [v40 addObject:dCopy];
    }

    else
    {
      [v40 removeObject:dCopy];
    }

    array3 = [v41 array];
    v44 = [array3 isEqualToArray:perAppLanguageSelectionBundleIdentifiers];

    if ((v44 & 1) == 0)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      array4 = [v41 array];
      [standardUserDefaults setObject:array4 forKey:@"ApplePerAppLanguageSelectionBundleIdentifiers" inDomain:*MEMORY[0x277CCA208]];
    }

    v8 = v51;
    languageCopy = v52;
    bundleURL = v50;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [IntlUtility _setPreferredLanguage:dCopy forBundleID:?];
  }
}

void __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v6;
      v7 = *&buf[4];
      _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error obtaining watch app bundle ID, %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v8 = getNRPairedDeviceRegistryClass_softClass_0;
    v21 = getNRPairedDeviceRegistryClass_softClass_0;
    if (!getNRPairedDeviceRegistryClass_softClass_0)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNRPairedDeviceRegistryClass_block_invoke_0;
      v25 = &unk_2787A8FA0;
      v26 = &v18;
      __getNRPairedDeviceRegistryClass_block_invoke_0(buf);
      v8 = v19[3];
    }

    v9 = v8;
    _Block_object_dispose(&v18, 8);
    v10 = [v8 sharedInstance];
    v11 = [v10 getActivePairedDevice];

    v12 = [MEMORY[0x277CEAF78] sharedDeviceConnection];
    v22 = @"AppleLanguages";
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(a1 + 32);
    }

    else
    {
      v14 = [*(a1 + 40) array];
    }

    v15 = v13 == 0;
    v23 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke_248;
    v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v17[4] = *(a1 + 48);
    [v12 updatePreferencesForApplicationWithIdentifier:v5 preferences:v16 writingToPreferencesLocation:1 forPairedDevice:v11 options:1 completion:v17];

    if (v15)
    {
    }
  }
}

void __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke_248(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a2;
    v4 = objc_opt_class();

    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v3;
    v5 = v4;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error updating preferences for watch app, %{public}@", &v6, 0x16u);
  }
}

+ (void)setPreferredLanguage:(id)language forBundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [self _setPreferredLanguage:language forBundleID:dCopy];
  v7 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:dCopy];
  v8 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Terminating app on per-app language change"];
  [v8 setMaximumTerminationResistance:40];
  v9 = [objc_alloc(MEMORY[0x277D47020]) initWithPredicate:v7 context:v8];
  v16 = 0;
  v10 = [v9 acquireWithError:&v16];
  v11 = v16;
  if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    *buf = 138543618;
    v18 = v12;
    v19 = 2114;
    v20 = dCopy;
    v13 = v12;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error obtaining termination assertion on %{public}@", buf, 0x16u);
  }

  [v9 invalidate];
  _getXPCConnectionForLocalizationSwitcher = [self _getXPCConnectionForLocalizationSwitcher];
  remoteObjectProxy = [_getXPCConnectionForLocalizationSwitcher remoteObjectProxy];
  [remoteObjectProxy notifyPreferredLanguageChangedForBundleID:dCopy];
}

+ (void)setPreferredLanguage:(id)language forBundleID:(id)d andRelaunchWithCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  languageCopy = language;
  [self _setPreferredLanguage:languageCopy forBundleID:dCopy];
  _getXPCConnectionForLocalizationSwitcher = [self _getXPCConnectionForLocalizationSwitcher];
  remoteObjectProxy = [_getXPCConnectionForLocalizationSwitcher remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__IntlUtility_setPreferredLanguage_forBundleID_andRelaunchWithCompletion___block_invoke;
  v14[3] = &unk_2787A9368;
  v15 = completionCopy;
  v13 = completionCopy;
  [remoteObjectProxy setPreferredLanguage:languageCopy forBundleID:dCopy andRelaunchWithReply:v14];
}

uint64_t __74__IntlUtility_setPreferredLanguage_forBundleID_andRelaunchWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)_getXPCConnectionForLocalizationSwitcher
{
  if (_getXPCConnectionForLocalizationSwitcher_onceToken != -1)
  {
    +[IntlUtility _getXPCConnectionForLocalizationSwitcher];
  }

  v3 = _getXPCConnectionForLocalizationSwitcher__connectionToService;

  return v3;
}

uint64_t __55__IntlUtility__getXPCConnectionForLocalizationSwitcher__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.localizationswitcherd" options:4096];
  v1 = _getXPCConnectionForLocalizationSwitcher__connectionToService;
  _getXPCConnectionForLocalizationSwitcher__connectionToService = v0;

  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841A8A78];
  [_getXPCConnectionForLocalizationSwitcher__connectionToService setRemoteObjectInterface:v2];

  v3 = _getXPCConnectionForLocalizationSwitcher__connectionToService;

  return [v3 resume];
}

+ (id)perAppLanguageSelectionBundleIdentifiers
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"ApplePerAppLanguageSelectionBundleIdentifiers" inDomain:*MEMORY[0x277CCA208]];

  return v3;
}

+ (void)subscribeToAppLanguageChanges:(id)changes
{
  v10 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __45__IntlUtility_subscribeToAppLanguageChanges___block_invoke;
  handler[3] = &unk_2787A9390;
  v7 = changesCopy;
  v4 = changesCopy;
  xpc_set_event_stream_handler("com.apple.IntlPreferences.events", 0, handler);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "per_app_language_changed";
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC event [%{public}s] registered.", buf, 0xCu);
  }
}

void __45__IntlUtility_subscribeToAppLanguageChanges___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
  v5 = xpc_dictionary_get_string(v3, "bundleID");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = string;
    v10 = 2082;
    v11 = v5;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC event [%{public}s] received with bundle ID = [%{public}s]", &v8, 0x16u);
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    reply = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    (*(v6 + 16))(v6, reply);
  }

  else
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }
  }
}

+ (void)unsubscribeFromAppLanguageChanges
{
  v4 = *MEMORY[0x277D85DE8];
  xpc_set_event();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "per_app_language_changed";
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC event [%{public}s] unregistered.", &v2, 0xCu);
  }
}

+ (void)_setPreferredLanguage:(uint64_t)a1 forBundleID:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138477827;
  v2 = a1;
  _os_log_error_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "App bundle for ID %{private}@ doesn't exist, exiting", &v1, 0xCu);
}

@end