@interface INStringLocalizer
+ (id)localizerForLanguage:(id)language;
+ (id)siriLocalizer;
- (BOOL)matchesBundleLocalizations:(__CFBundle *)localizations;
- (INStringLocalizer)initWithLanguageCode:(id)code;
- (NSLocale)locale;
- (__CFBundle)bundleWithIdentifier:(id)identifier fileURL:(id)l;
- (id)localizationsForBundle:(__CFBundle *)bundle;
- (id)preferredLocalizationsForBundle:(__CFBundle *)bundle;
@end

@implementation INStringLocalizer

- (BOOL)matchesBundleLocalizations:(__CFBundle *)localizations
{
  v5 = self->_languageCode;
  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__INStringLocalizer_matchesBundleLocalizations___block_invoke;
    v14[3] = &unk_1E72882F8;
    v14[4] = self;
    v6 = MEMORY[0x193AD7780](v14);
    v7 = [(INStringLocalizer *)self localizationsForBundle:localizations];
    if ([v7 containsObject:v5])
    {
      v8 = 1;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
      languageCode = [v9 languageCode];
      if ([v7 containsObject:languageCode])
      {
        v8 = 1;
      }

      else
      {
        v11 = +[INStringLocalizer alternativeLocales];
        v12 = [v11 objectForKey:v5];
        v8 = [v7 containsObject:v12];
      }
    }

    v6[2](v6);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)preferredLocalizationsForBundle:(__CFBundle *)bundle
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (bundle)
  {
    os_unfair_lock_lock(&self->_lock);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__INStringLocalizer_preferredLocalizationsForBundle___block_invoke;
    v17[3] = &unk_1E72882F8;
    v17[4] = self;
    v5 = MEMORY[0x193AD7780](v17);
    v6 = [(NSMapTable *)self->_preferredBundleLocalizations objectForKey:bundle];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [(INStringLocalizer *)self localizationsForBundle:bundle];
      v9 = self->_preferredLanguages;
      if (self->_languageCode && ([v8 containsObject:?] & 1) == 0)
      {
        v10 = +[INStringLocalizer alternativeLocales];
        v11 = [v10 objectForKey:self->_languageCode];

        if (v11)
        {
          v18[0] = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
          preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
          v14 = [v12 arrayByAddingObjectsFromArray:preferredLanguages];

          v9 = v14;
        }
      }

      v15 = CFBundleCopyLocalizationsForPreferences(v8, v9);
      [(NSMapTable *)self->_preferredBundleLocalizations setObject:v15 forKey:bundle];
      v7 = v15;
    }

    v5[2](v5);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)localizationsForBundle:(__CFBundle *)bundle
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (bundle)
  {
    v5 = [(NSMapTable *)self->_bundleLocalizations objectForKey:bundle];
    if (!v5)
    {
      v5 = CFBundleCopyBundleLocalizations(bundle);
      [(NSMapTable *)self->_bundleLocalizations setObject:v5 forKey:bundle];
    }

    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (__CFBundle)bundleWithIdentifier:(id)identifier fileURL:(id)l
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __50__INStringLocalizer_bundleWithIdentifier_fileURL___block_invoke;
  v22[3] = &unk_1E72882F8;
  v22[4] = self;
  v8 = MEMORY[0x193AD7780](v22);
  v9 = [(NSMapTable *)self->_bundlesByIdentifier objectForKey:identifierCopy];
  if (!v9)
  {
    v9 = [(NSMapTable *)self->_bundlesByURL objectForKey:lCopy];
    if (!v9)
    {
      if ([(__CFString *)identifierCopy isEqualToString:@"com.apple.Intents"])
      {
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        bundleURL = [v10 bundleURL];

        lCopy = bundleURL;
      }

      v12 = [(__CFURL *)lCopy isFileURL]^ 1;
      if (!identifierCopy)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        Unique = _CFBundleCreateUnique();
        v9 = Unique;
        if (Unique)
        {
          if (([(__CFString *)CFBundleGetIdentifier(Unique) isEqualToString:identifierCopy]& 1) != 0)
          {
LABEL_31:
            [(NSMapTable *)self->_bundlesByIdentifier setObject:v9 forKey:identifierCopy];
            [(NSMapTable *)self->_bundlesByURL setObject:v9 forKey:lCopy];
            CFAutorelease(v9);
            goto LABEL_32;
          }

          CFRelease(v9);
        }
      }

      if ([(__CFURL *)lCopy isFileURL])
      {
        v14 = _CFBundleCreateUnique();
        v9 = v14;
        if (v14)
        {
          goto LABEL_13;
        }
      }

      if (!identifierCopy)
      {
        v9 = 0;
        goto LABEL_32;
      }

      v15 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:identifierCopy];
      bundleURL2 = [v15 bundleURL];
      if ([(__CFURL *)bundleURL2 isFileURL])
      {
        v9 = _CFBundleCreateUnique();
        if (v9)
        {

          lCopy = bundleURL2;
          goto LABEL_30;
        }
      }

      v17 = _INVCIntentDefinitionManagerClass();
      if (objc_opt_respondsToSelector())
      {
        v18 = [v17 intentDefinitionBundleURLForBundleID:identifierCopy];

        lCopy = v18;
      }

      if (lCopy)
      {
        v9 = [(NSMapTable *)self->_bundlesByURL objectForKey:lCopy];
        if (v9)
        {
          goto LABEL_32;
        }

        v14 = _CFBundleCreateUnique();
        v9 = v14;
        if (v14)
        {
LABEL_13:
          CFBundleGetIdentifier(v14);
          identifierCopy = v15 = identifierCopy;
LABEL_30:

          goto LABEL_31;
        }
      }

      if (([(__CFString *)identifierCopy isEqualToString:@"com.apple.siri.IntentsTests"]& 1) == 0)
      {
        v19 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "[INStringLocalizer bundleWithIdentifier:fileURL:]";
          v25 = 2114;
          v26 = identifierCopy;
          _os_log_error_impl(&dword_18E991000, v19, OS_LOG_TYPE_ERROR, "%s This should not happen! Unable to get a bundle for %{public}@", buf, 0x16u);
        }
      }

      BundleWithIdentifier = CFBundleGetBundleWithIdentifier(identifierCopy);
      v9 = BundleWithIdentifier;
      if (BundleWithIdentifier)
      {
        CFRetain(BundleWithIdentifier);
        v15 = lCopy;
        lCopy = CFBundleCopyBundleURL(v9);
        goto LABEL_30;
      }
    }
  }

LABEL_32:
  v8[2](v8);

  return v9;
}

- (NSLocale)locale
{
  if (self->_languageCode)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  }

  else
  {
    [MEMORY[0x1E695DF58] currentLocale];
  }
  v2 = ;

  return v2;
}

- (INStringLocalizer)initWithLanguageCode:(id)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v22.receiver = self;
  v22.super_class = INStringLocalizer;
  v5 = [(INStringLocalizer *)&v22 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    languageCode = v5->_languageCode;
    v5->_languageCode = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    bundlesByIdentifier = v5->_bundlesByIdentifier;
    v5->_bundlesByIdentifier = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    bundlesByURL = v5->_bundlesByURL;
    v5->_bundlesByURL = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    bundleLocalizations = v5->_bundleLocalizations;
    v5->_bundleLocalizations = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    preferredBundleLocalizations = v5->_preferredBundleLocalizations;
    v5->_preferredBundleLocalizations = strongToStrongObjectsMapTable4;

    if (codeCopy)
    {
      v23[0] = codeCopy;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      v18 = [v16 arrayByAddingObjectsFromArray:preferredLanguages];
      preferredLanguages = v5->_preferredLanguages;
      v5->_preferredLanguages = v18;
    }

    v20 = v5;
  }

  return v5;
}

+ (id)localizerForLanguage:(id)language
{
  languageCopy = language;
  v5 = [[self alloc] initWithLanguageCode:languageCopy];

  return v5;
}

+ (id)siriLocalizer
{
  v3 = +[INPreferences siriLanguageCode];
  v4 = [self localizerForLanguage:v3];

  return v4;
}

@end