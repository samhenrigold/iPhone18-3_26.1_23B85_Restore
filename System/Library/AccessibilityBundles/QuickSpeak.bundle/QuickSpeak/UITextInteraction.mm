@interface UITextInteraction
@end

@implementation UITextInteraction

void __74__UITextInteraction_QSExtras__updatedAccessibilityTextSpeechMenuWithMenu___block_invoke(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x29EDCA608];
  v42 = a2;
  v54 = +[AXQuickSpeak sharedInstance];
  v46 = [v54 selectedContent];
  v43 = [v46 unpredictedAmbiguousLangMaps];
  v44 = [v46 predictedSecondaryLangMaps];
  v45 = [v46 unambiguousLangMaps];
  v2 = v45;
  if ([v45 count] < 2)
  {
    if ([v45 count] != 1)
    {
      v56 = 0;
      goto LABEL_7;
    }

    v4 = MEMORY[0x29EDBA0F8];
    v3 = accessibilityQuickSpeakLocalizedString(@"quickspeak.one.nonambiguous.language");
    v5 = [v45 firstObject];
    v6 = [v5 defaultDialect];
    v7 = [v6 languageNameInNativeLocale];
    v56 = [v4 stringWithFormat:v3, v7];
  }

  else
  {
    v3 = accessibilityQuickSpeakLocalizedString(@"quickspeak.many.languages");
    v56 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v3, objc_msgSend(v45, "count")];
  }

  v2 = v45;
LABEL_7:
  v8 = v44;
  if (v44 && [v2 intersectsOrderedSet:v44])
  {
    v9 = AXLogSpeakSelection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v73 = v44;
      v74 = 2112;
      v75 = v45;
      _os_log_impl(&dword_29C1E5000, v9, OS_LOG_TYPE_INFO, "Secondary maps contained langs in non ambiguous maps. Secondary Maps: %@ Non-ambiguous Maps: %@", buf, 0x16u);
    }

    v8 = v44;
  }

  v10 = v8 == 0;
  v53 = [MEMORY[0x29EDB8DE8] array];
  v11 = [MEMORY[0x29EDB8E10] orderedSet];
  [v11 unionOrderedSet:v43];
  if (!v10)
  {
    v12 = [v46 primaryUnambiguousDialect];
    v13 = v12 == 0;

    if (v13)
    {
      v15 = [v46 primaryAmbiguousDialect];
      v16 = v15 == 0;

      if (v16)
      {
LABEL_18:
        [v11 unionOrderedSet:v44];
        goto LABEL_19;
      }

      v14 = [v46 primaryAmbiguousDialect];
    }

    else
    {
      v14 = [v46 primaryUnambiguousDialect];
    }

    v17 = v14;
    v18 = [v14 langMap];
    [v11 addObject:v18];

    goto LABEL_18;
  }

LABEL_19:
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v65 = 0u;
  obj = v11;
  v49 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v49)
  {
    v48 = *v66;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v65 + 1) + 8 * i);
        v19 = [v55 associatedAmbiguousLanguages];
        v20 = [MEMORY[0x29EDBDF80] sharedInstance];
        v21 = [v20 systemLanguageID];
        v22 = [v19 containsObject:v21];

        if ((v22 & 1) == 0)
        {
          v23 = [v55 defaultDialect];
          v70 = v23;
          v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v70 count:1];

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v51 = v24;
          v25 = [v51 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (!v25)
          {
            goto LABEL_40;
          }

          v26 = *v62;
          while (1)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v62 != v26)
              {
                objc_enumerationMutation(v51);
              }

              v28 = *(*(&v61 + 1) + 8 * j);
              v29 = [MEMORY[0x29EDBDF80] sharedInstance];
              v30 = [v29 dialectForCurrentLocale];
              v31 = [v30 langMap];
              if ([v55 isEqual:v31])
              {
                v32 = [MEMORY[0x29EDBDF80] sharedInstance];
                v33 = [v32 dialectForCurrentLocale];
                v34 = [v28 isEqual:v33];

                if (!v34)
                {
                  continue;
                }
              }

              else
              {
              }

              v35 = [v28 languageNameInNativeLocale];
              v36 = v35;
              if (v56)
              {
                v37 = MEMORY[0x29EDBA0F8];
                v38 = accessibilityQuickSpeakLocalizedString(@"quickspeak.preferred.language");
                v39 = [v37 stringWithFormat:v38, v36, v56];
              }

              else
              {
                v39 = v35;
              }

              v40 = MEMORY[0x29EDC7908];
              v57[0] = MEMORY[0x29EDCA5F8];
              v57[1] = 3221225472;
              v57[2] = __74__UITextInteraction_QSExtras__updatedAccessibilityTextSpeechMenuWithMenu___block_invoke_320;
              v57[3] = &unk_29F2F0298;
              v58 = v54;
              objc_copyWeak(&v60, (a1 + 32));
              v59 = v28;
              v41 = [v40 actionWithTitle:v39 image:0 identifier:0 handler:v57];
              [v53 addObject:v41];

              objc_destroyWeak(&v60);
            }

            v25 = [v51 countByEnumeratingWithState:&v61 objects:v69 count:16];
            if (!v25)
            {
LABEL_40:

              break;
            }
          }
        }
      }

      v49 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v49);
  }

  v42[2](v42, v53);
}

void __74__UITextInteraction_QSExtras__updatedAccessibilityTextSpeechMenuWithMenu___block_invoke_320(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 40) specificLanguageID];
  [v2 speakAction:WeakRetained withPreferredLanguage:v3];
}

@end