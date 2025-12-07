@interface DictationFooterView
+ (id)dictationAutoPunctuationText;
- (DictationFooterView)initWithSpecifier:(id)specifier;
- (id)explanationSuffixTextWithOfflineDictationStatus:(id)status privacyLinkText:(id)text lowStorage:(BOOL)storage;
- (id)offlineExplanationSuffixTextWithOfflineDictationStatus:(id)status privacyLinkText:(id)text;
@end

@implementation DictationFooterView

- (DictationFooterView)initWithSpecifier:(id)specifier
{
  v23.receiver = self;
  v23.super_class = DictationFooterView;
  v4 = [(PSFooterMultiHyperlinkView *)&v23 initWithSpecifier:?];
  if (v4)
  {
    target = [specifier target];
    v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_ABOUT_LINK", &stru_28679E3A8, @"Keyboard"}];
    v7 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_MANAGE_STORAGE_LINK", &stru_28679E3A8, @"Keyboard"}];
    v8 = +[DictationFooterView dictationAutoPunctuationText];
    v9 = v6;
    if ([v8 length])
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v6];
    }

    [(PSFooterMultiHyperlinkView *)v4 setText:v9];
    v10 = [target lowStorageOnDeviceAssetStringWithLinkString:v7];
    v11 = AFDeviceHighestLanguageModelCapabilityIdentifier();
    offlineStatusForLanguage = [target offlineStatusForLanguage];
    if (v11 == 10)
    {
      v13 = [(DictationFooterView *)v4 explanationSuffixTextWithOfflineDictationStatus:offlineStatusForLanguage privacyLinkText:v9 lowStorage:v10 != 0];
    }

    else
    {
      v13 = [(DictationFooterView *)v4 offlineExplanationSuffixTextWithOfflineDictationStatus:offlineStatusForLanguage privacyLinkText:v9];
    }

    v14 = v13;
    if (v13)
    {
      [(PSFooterMultiHyperlinkView *)v4 setText:v13];
    }

    text = [(PSFooterMultiHyperlinkView *)v4 text];
    if (v10)
    {
      [(PSFooterMultiHyperlinkView *)v4 setText:[(NSString *)text stringByAppendingFormat:@"\n\n%@", v10]];
      text2 = [(PSFooterMultiHyperlinkView *)v4 text];
      [specifier setProperty:text2 forKey:*MEMORY[0x277D3FF88]];
      v17 = [(NSString *)[(PSFooterMultiHyperlinkView *)v4 text] rangeOfString:v6];
      [specifier addFooterHyperlinkWithRange:v17 target:v18 action:{target, sel_presentPrivacySheet_}];
      v19 = &selRef_launchManageStorage_;
    }

    else
    {
      [specifier setProperty:text forKey:*MEMORY[0x277D3FF88]];
      v19 = &selRef_presentPrivacySheet_;
      v7 = v6;
    }

    v20 = [(NSString *)[(PSFooterMultiHyperlinkView *)v4 text] rangeOfString:v7];
    [specifier addFooterHyperlinkWithRange:v20 target:v21 action:{target, *v19}];
    [(PSFooterMultiHyperlinkView *)v4 refreshContentsWithSpecifier:specifier];
  }

  return v4;
}

- (id)offlineExplanationSuffixTextWithOfflineDictationStatus:(id)status privacyLinkText:(id)text
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEB58] set];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__DictationFooterView_offlineExplanationSuffixTextWithOfflineDictationStatus_privacyLinkText___block_invoke;
  v14[3] = &unk_2797F9CA8;
  v14[4] = &v19;
  v14[5] = &v15;
  [status enumerateKeysAndObjectsUsingBlock:v14];
  if ([v20[5] count])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if ([v20[5] count] < 2)
    {
      v8 = @"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE";
    }

    else
    {
      v8 = [@"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE" stringByAppendingString:@"S"];
    }

    v11 = [v7 localizedStringForKey:v8 value:&stru_28679E3A8 table:@"Keyboard"];
    v10 = [v6 stringWithFormat:v11, +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", objc_msgSend(v20[5], "allObjects"), 1, 0)];
  }

  else
  {
    if (*(v16 + 24) != 1)
    {
LABEL_10:
      text = 0;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Keyboard"];
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  text = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, text];
LABEL_11:
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return text;
}

void *__94__DictationFooterView_offlineExplanationSuffixTextWithOfflineDictationStatus_privacyLinkText___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = AFOfflineDictationStatusStringIsInstalled();
  if (result)
  {
    v6 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    v7 = [a2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    result = [v6 containsObject:v7];
    if (result)
    {
      result = [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)explanationSuffixTextWithOfflineDictationStatus:(id)status privacyLinkText:(id)text lowStorage:(BOOL)storage
{
  v31[1] = *MEMORY[0x277D85DE8];
  v8 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  if ([v8 count] == 1 && (v9 = objc_msgSend(MEMORY[0x277D6F380], "sharedInputModeController"), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v10 = [v9 defaultDictationLanguagesForKeyboardLanguage:{objc_msgSend(v8, "firstObject")}];
    if (!v10)
    {
      v31[0] = [v8 firstObject];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    }
  }

  else
  {
    v10 = v8;
  }

  if ([v10 count] == 1 && DictationIsEnabled() && objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "enabledDictationLanguages"), "containsObject:", objc_msgSend(v10, "firstObject")))
  {
    v11 = [objc_msgSend(v10 "firstObject")];
    v12 = MEMORY[0x259C42620]();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    [status objectForKeyedSubscript:v13];
    if (AFOfflineDictationStatusStringIsHighQualityModelSupported())
    {
      IsInstalled = AFOfflineDictationStatusStringIsInstalled();
      IsInstalling = AFOfflineDictationStatusStringIsInstalling();
      v16 = AFOfflineDictationStatusStringIsOnDeviceSearchSupported();
      if (IsInstalled)
      {
        if (v16)
        {
          v17 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES_NO_SEARCH";
        }

        else
        {
          v17 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES";
        }

        v18 = MEMORY[0x277CCACA8];
        v19 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_PRIVATE_PROCESSING", &stru_28679E3A8, @"Keyboard"}];
        textCopy3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v17, &stru_28679E3A8, @"Keyboard"}];
        textCopy = text;
        v28 = v19;
        v20 = @"%@ %@ %@";
        goto LABEL_28;
      }

      v18 = MEMORY[0x277CCACA8];
      v23 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_28679E3A8, @"Keyboard"}];
      v24 = v23;
      if (IsInstalling)
      {
        if (!storage)
        {
          v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v26 = @"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING";
LABEL_27:
          textCopy3 = text;
          textCopy = [v25 localizedStringForKey:v26 value:&stru_28679E3A8 table:@"Keyboard"];
          v28 = v24;
          v20 = @"%@ %@\n\n%@";
          goto LABEL_28;
        }
      }

      else if (!storage)
      {
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = SFLocalizableWAPIStringKeyForKey();
        v25 = v27;
        goto LABEL_27;
      }

      v28 = v23;
      textCopy3 = text;
      v20 = @"%@ %@";
LABEL_28:
      textCopy = [v18 stringWithFormat:v20, v28, textCopy3, textCopy];
      return textCopy;
    }

    textCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER", &stru_28679E3A8, @"Keyboard", text, textCopy];
  }

  else
  {
    textCopy = 0;
  }

  return textCopy;
}

+ (id)dictationAutoPunctuationText
{
  v39 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CEF368] sharedPreferences];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CCA940] set];
  array2 = [MEMORY[0x277CBEB18] array];
  v5 = [objc_msgSend(objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  array3 = [MEMORY[0x277CBEA60] array];
  v7 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  if ((DictationIsEnabled() & (v7 != 0)) != 0)
  {
    array3 = v7;
  }

  if (v5 && [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")] && (objc_msgSend(array3, "containsObject:", v5) & 1) == 0)
  {
    array3 = [array3 arrayByAddingObject:v5];
  }

  v28 = array;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [array3 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v27 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(array3);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        [v3 addObject:TIInputModeGetBaseLanguage()];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        v14 = MEMORY[0x259C42620]();
        if (v14)
        {
          v13 = v14;
        }

        if ([objc_msgSend(objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")])
        {
          [v28 addObject:v12];
        }

        else
        {
          v27 = 0;
        }
      }

      v9 = [array3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  else
  {
    v27 = 1;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v3 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v3);
        }

        v20 = *(*(&v29 + 1) + 8 * j);
        if ([v3 countForObject:v20] >= 2)
        {
          [array2 addObject:v20];
        }
      }

      v17 = [v3 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  v21 = [v28 count];
  v22 = (v21 == 0) | v27;
  if (v21)
  {
    v23 = &stru_28679E3A8;
  }

  else
  {
    v23 = 0;
  }

  if ((v22 & 1) == 0)
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if ([v28 count] < 2)
    {
      v26 = @"DICTATION_AUTO_PUNCTUATION_EXPLANATION_SUFFIX_WITH_LANGUAGE";
    }

    else
    {
      v26 = [@"DICTATION_AUTO_PUNCTUATION_EXPLANATION_SUFFIX_WITH_LANGUAGE" stringByAppendingString:@"S"];
    }

    v23 = [v24 stringWithFormat:objc_msgSend(v25, "localizedStringForKey:value:table:", v26, &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v28, 1, array2)];
  }

  return v23;
}

@end