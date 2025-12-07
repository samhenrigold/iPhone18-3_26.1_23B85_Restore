void sub_223C7A6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223C7A994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223C7B270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_223C7C3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223C7C640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id VOSVoiceOverBundle()
{
  v0 = VOSVoiceOverBundle__votBundle;
  if (!VOSVoiceOverBundle__votBundle)
  {
    v1 = [&stru_283729578 stringByAppendingString:@"/System/Library/CoreServices/VoiceOverTouch.app"];
    v2 = [MEMORY[0x277CCA8D8] bundleWithPath:v1];
    v3 = VOSVoiceOverBundle__votBundle;
    VOSVoiceOverBundle__votBundle = v2;

    v0 = VOSVoiceOverBundle__votBundle;
  }

  return v0;
}

id _AXUISettingsAccessibilityBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = AXSystemRootDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"/System/Library/PreferenceBundles/AccessibilitySettings.bundle"];
  v3 = [v0 bundleWithPath:v2];

  return v3;
}

id AXVoiceOverSettingsTypingFeedbackLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = _AXUISettingsAccessibilityBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"VoiceOverTypingFeedback"];

  return v3;
}

id AXSettingsLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = _AXUISettingsAccessibilityBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Accessibility"];

  return v3;
}

id AXVoiceOverSettingsLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = _AXUISettingsAccessibilityBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"VoiceOverSettings"];

  return v3;
}

id AXVoiceOverBrailleOptionsLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = _AXUISettingsAccessibilityBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"VoiceOverBrailleOptions"];

  return v3;
}

id AXVoiceOverLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = VOSVoiceOverBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"VOTLocalizedStrings"];

  return v3;
}

uint64_t VOSProcessAllowsScreenRecognition(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (VOSProcessAllowsScreenRecognition_onceToken != -1)
  {
    VOSProcessAllowsScreenRecognition_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [VOSProcessAllowsScreenRecognition_UnsupportedApps containsObject:v2] ^ 1;
LABEL_6:

  return v3;
}

void __VOSProcessAllowsScreenRecognition_block_invoke()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CE6918];
  v6[0] = *MEMORY[0x277CE6928];
  v6[1] = v1;
  v2 = *MEMORY[0x277CE6818];
  v6[2] = *MEMORY[0x277CE6920];
  v6[3] = v2;
  v6[4] = *MEMORY[0x277CE68C0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = VOSProcessAllowsScreenRecognition_UnsupportedApps;
  VOSProcessAllowsScreenRecognition_UnsupportedApps = v4;
}

id VOSVoiceOverServicesBundle(uint64_t a1)
{
  if (VOSVoiceOverServicesBundle_onceToken != -1)
  {
    VOSVoiceOverServicesBundle_cold_1();
  }

  v2 = VOSVoiceOverServicesBundle__Bundle;

  return v2;
}

uint64_t __VOSVoiceOverServicesBundle_block_invoke()
{
  VOSVoiceOverServicesBundle__Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t VOSSingleHandBSIEnabled()
{
  result = AXDeviceIsPhone();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

id VOSBrailleTableForRotorItem(void *a1)
{
  v1 = MEMORY[0x277CE7DA0];
  v2 = a1;
  v3 = [v1 sharedInstance];
  v4 = [v3 userLocale];

  v5 = [v2 objectForKeyedSubscript:@"Default"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v2 objectForKeyedSubscript:@"LanguageDefaults"];

    v8 = [v4 localeIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    v2 = v7;
  }

  else
  {
    v9 = [v2 objectForKeyedSubscript:@"RotorItem"];
  }

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CF3350] defaultTableForLocale:v4];
  }

  v11 = v10;

  return v11;
}

id VOSDefaultBrailleTable()
{
  v0 = [MEMORY[0x277CE7E20] sharedInstance];
  v1 = [v0 voiceOverBrailleLanguageRotorItems];

  if ([v1 count])
  {
    v2 = 0;
    while (1)
    {
      v3 = [v1 objectAtIndex:v2];
      v4 = [v3 objectForKeyedSubscript:@"Default"];
      v5 = [v4 BOOLValue];

      if (v5)
      {
        break;
      }

      if (++v2 >= [v1 count])
      {
        goto LABEL_5;
      }
    }

    v7 = VOSBrailleTableForRotorItem(v3);
  }

  else
  {
LABEL_5:
    v6 = [MEMORY[0x277CE7DA0] sharedInstance];
    v3 = [v6 userLocale];

    v7 = [MEMORY[0x277CF3350] defaultTableForLocale:v3];
  }

  v8 = v7;

  return v8;
}

void VOSRepairBrailleTableSettings()
{
  v0 = [MEMORY[0x277CE7E20] sharedInstance];
  v1 = [v0 voiceOverTouchBrailleDisplayOutputTableIdentifier];
  v2 = [v1 hasPrefix:@"com."];

  if ((v2 & 1) == 0)
  {
    v3 = VOSDefaultBrailleTable();
    v4 = [v3 identifier];
    v5 = [MEMORY[0x277CE7E20] sharedInstance];
    [v5 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v4];
  }

  v6 = [MEMORY[0x277CE7E20] sharedInstance];
  v7 = [v6 voiceOverTouchBrailleDisplayInputTableIdentifier];
  v8 = [v7 hasPrefix:@"com."];

  if ((v8 & 1) == 0)
  {
    v9 = VOSDefaultBrailleTable();
    v10 = [v9 identifier];
    v11 = [MEMORY[0x277CE7E20] sharedInstance];
    [v11 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v10];
  }

  v12 = [MEMORY[0x277CE7E20] sharedInstance];
  v13 = [v12 voiceOverTouchBrailleGesturesInputTableIdentifier];
  v14 = [v13 hasPrefix:@"com."];

  if ((v14 & 1) == 0)
  {
    v17 = VOSFirstGesturesCompatibleBrailleTable();
    v15 = [v17 identifier];
    v16 = [MEMORY[0x277CE7E20] sharedInstance];
    [v16 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v15];
  }
}

id VOSFirstGesturesCompatibleBrailleTable()
{
  v0 = [MEMORY[0x277CE7E20] sharedInstance];
  v1 = [v0 voiceOverBrailleLanguageRotorItems];

  v2 = [v1 ax_filteredArrayUsingBlock:&__block_literal_global_331];

  if ([v2 count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v2 objectAtIndex:v3];
      v5 = VOSBrailleTableForRotorItem(v4);

      if (!_os_feature_enabled_impl() || AXDeviceIsPad())
      {
        break;
      }

      v6 = [v5 supportsTranslationMode8Dot];

      if (!v6)
      {
        goto LABEL_9;
      }

      if (++v3 >= [v2 count])
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v8 = [v2 objectAtIndex:v3];
    v7 = VOSBrailleTableForRotorItem(v8);
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

BOOL __VOSFirstGesturesCompatibleBrailleTable_block_invoke(uint64_t a1, void *a2)
{
  v2 = VOSBrailleTableForRotorItem(a2);
  v3 = [v2 replacements];
  v4 = [v3 count] == 0;

  return v4;
}

id _VOSCrystalReplacementForTableIdentifier(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:v3];
    v5 = [v4 replacements];
    if ([v5 count])
    {
      if ((a2 - 1) > 2)
      {
        v6 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v6 = *(&off_2784F3588 + a2 - 1);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = v5;
      v19 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v19)
      {
        v10 = *v25;
        v18 = *v25;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            v20 = 0u;
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v13 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:{16, v18}];
            if (v13)
            {
              v14 = v13;
              v15 = *v21;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v21 != v15)
                  {
                    objc_enumerationMutation(v6);
                  }

                  if ([v12 hasSuffix:*(*(&v20 + 1) + 8 * j)])
                  {
                    v7 = v12;

                    goto LABEL_26;
                  }
                }

                v14 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v10 = v18;
          }

          v19 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v19);
      }

      v8 = [v9 firstObject];
    }

    else
    {
      v8 = v3;
    }

    v7 = v8;
LABEL_26:
  }

  else
  {
    v4 = VOSDefaultBrailleTable();
    v7 = [v4 identifier];
  }

  return v7;
}

uint64_t _VOSHasReplaceableTableInRotorItems()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CE7E20] sharedInstance];
  v1 = [v0 voiceOverBrailleLanguageRotorItems];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = VOSBrailleTableForRotorItem(*(*(&v10 + 1) + 8 * i));
        v7 = [v6 replacements];
        v8 = [v7 count];

        if (v8)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void VOSCrystalMigrateBrailleTableReplacements()
{
  v97 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v1 = [v0 objectForKey:@"_AccessibilityMigration__BrailleTableReplacements_18"];
    v2 = [v1 BOOLValue];

    if ((_VOSHasReplaceableTableInRotorItems() & 1) != 0 || !v2)
    {
      v3 = [MEMORY[0x277CE7E20] sharedInstance];
      v4 = [v3 voiceOverBrailleTableIdentifier];

      if (!v4)
      {
        v5 = VOSDefaultBrailleTable();
        v4 = [v5 identifier];
      }

      v6 = [MEMORY[0x277CE7DA0] sharedInstance];
      v7 = [v6 userLocale];

      v8 = [MEMORY[0x277CE7E20] sharedInstance];
      v9 = [v8 voiceOverBrailleLanguageRotorItems];

      v10 = objc_opt_new();
      v11 = objc_opt_new();
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v9;
      v76 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
      if (v76)
      {
        v75 = *v84;
        v71 = v7;
        do
        {
          for (i = 0; i != v76; ++i)
          {
            if (*v84 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v83 + 1) + 8 * i);
            v14 = [v13 objectForKeyedSubscript:@"Default"];
            v15 = [v14 BOOLValue];

            if (v15)
            {
              v16 = [v13 objectForKeyedSubscript:@"LanguageDefaults"];
              v17 = [v7 localeIdentifier];
              v18 = [v16 objectForKeyedSubscript:v17];

              v74 = v18;
              if (v18)
              {
                v19 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:v18];
              }

              else
              {
                v19 = [MEMORY[0x277CF3350] defaultTableForLocale:?];
              }

              v22 = v19;
              v78 = i;
              v31 = [v19 replacements];
              v32 = [v31 count];

              if (v32)
              {
                v33 = [v22 replacements];
                v34 = [v33 firstObject];

                [v11 addObject:v34];
                v35 = [v13 mutableCopy];
                v36 = [v7 localeIdentifier];
                v94 = v36;
                v95 = v34;
                [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                v38 = v37 = v22;
                [v35 setObject:v38 forKeyedSubscript:@"LanguageDefaults"];

                [v10 addObject:v35];
                v39 = [v37 replacements];
                v40 = [v39 count];

                if (v40 >= 2)
                {
                  v41 = 1;
                  do
                  {
                    v42 = [v37 replacements];
                    v43 = [v42 objectAtIndex:v41];

                    if (([v11 containsObject:v43] & 1) == 0)
                    {
                      v92[0] = @"Enabled";
                      v92[1] = @"RotorItem";
                      v93[0] = MEMORY[0x277CBEC38];
                      v93[1] = v43;
                      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
                      [v10 addObject:v44];

                      [v11 addObject:v43];
                    }

                    ++v41;
                    v45 = [v37 replacements];
                    v46 = [v45 count];
                  }

                  while (v41 < v46);
                }

                i = v78;
                v7 = v71;
                v22 = v37;
LABEL_37:
              }

              else
              {
                v90[0] = @"Default";
                v90[1] = @"Enabled";
                v91[0] = MEMORY[0x277CBEC38];
                v91[1] = MEMORY[0x277CBEC38];
                v90[2] = @"LanguageDefaults";
                v49 = [v7 localeIdentifier];
                v88 = v49;
                v50 = [v22 identifier];
                v89 = v50;
                v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                v91[2] = v51;
                v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];
                [v10 addObject:v52];

                i = v78;
                if (v22)
                {
                  v34 = [v22 identifier];
                  [v11 addObject:v34];
                  goto LABEL_37;
                }
              }

              goto LABEL_39;
            }

            v20 = objc_alloc(MEMORY[0x277CF3340]);
            v21 = [v13 objectForKeyedSubscript:@"RotorItem"];
            v22 = [v20 initWithIdentifier:v21];

            v23 = [v22 replacements];
            v24 = [v23 count];

            if (v24)
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v16 = [v22 replacements];
              v25 = [v16 countByEnumeratingWithState:&v79 objects:v87 count:16];
              if (v25)
              {
                v26 = v25;
                v73 = v22;
                v77 = i;
                v27 = *v80;
                do
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v80 != v27)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v29 = *(*(&v79 + 1) + 8 * j);
                    if (([v11 containsObject:v29] & 1) == 0)
                    {
                      v30 = [v13 mutableCopy];
                      [v30 setObject:v29 forKeyedSubscript:@"RotorItem"];
                      [v10 addObject:v30];
                      [v11 addObject:v29];
                    }
                  }

                  v26 = [v16 countByEnumeratingWithState:&v79 objects:v87 count:16];
                }

                while (v26);
                v7 = v71;
                i = v77;
                v22 = v73;
              }
            }

            else
            {
              v47 = [v22 identifier];
              v48 = [v11 containsObject:v47];

              if (v48)
              {
                goto LABEL_40;
              }

              [v10 addObject:v13];
              v16 = [v22 identifier];
              [v11 addObject:v16];
            }

LABEL_39:

LABEL_40:
          }

          v76 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
        }

        while (v76);
      }

      v53 = v7;

      v54 = [MEMORY[0x277CE7E20] sharedInstance];
      [v54 setVoiceOverBrailleLanguageRotorItems:v10];

      v55 = [MEMORY[0x277CE7E20] sharedInstance];
      v56 = v70;
      v57 = _VOSCrystalReplacementForTableIdentifier(v70, [v55 voiceOverTouchBrailleDisplayOutputMode]);

      v58 = [MEMORY[0x277CE7E20] sharedInstance];
      v59 = _VOSCrystalReplacementForTableIdentifier(v70, [v58 voiceOverTouchBrailleDisplayInputMode]);

      v60 = [MEMORY[0x277CE7E20] sharedInstance];
      v61 = _VOSCrystalReplacementForTableIdentifier(v70, [v60 voiceOverTouchBrailleGesturesInputMode]);

      v62 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:v61];
      v63 = [MEMORY[0x277CE7E20] sharedInstance];
      [v63 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v57];

      v64 = [MEMORY[0x277CE7E20] sharedInstance];
      [v64 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v59];

      v65 = [MEMORY[0x277CE7E20] sharedInstance];
      [v65 setVoiceOverTouchBrailleDisplaySyncInputOutputTables:0];

      if ([v62 supportsTranslationMode8Dot] && (AXDeviceIsPad() & 1) == 0)
      {
        v66 = VOSFirstGesturesCompatibleBrailleTable();
        v67 = [v66 identifier];
        v68 = [MEMORY[0x277CE7E20] sharedInstance];
        [v68 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v67];

        v56 = v70;
      }

      else
      {
        v66 = [MEMORY[0x277CE7E20] sharedInstance];
        [v66 setVoiceOverTouchBrailleGesturesInputTableIdentifier:v61];
      }

      v69 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v69 setObject:MEMORY[0x277CBEC38] forKey:@"_AccessibilityMigration__BrailleTableReplacements_18"];
    }
  }
}

id VOSLocString(void *a1)
{
  v1 = a1;
  v2 = VOSVoiceOverServicesBundle(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"VoiceOverServices"];

  return v3;
}

id soft_AXUILocalizedStringForKey(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getAXUILocalizedStringForKeySymbolLoc_ptr;
  v11 = getAXUILocalizedStringForKeySymbolLoc_ptr;
  if (!getAXUILocalizedStringForKeySymbolLoc_ptr)
  {
    v3 = AccessibilityUIUtilitiesLibrary();
    v9[3] = dlsym(v3, "AXUILocalizedStringForKey");
    getAXUILocalizedStringForKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    soft_AXUILocalizedStringForKey_cold_1();
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = v2(v1);

  return v4;
}

void *__getAXUILocalizedStringForKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUILocalizedStringForKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUILocalizedStringForKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUIUtilitiesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2784F3730;
    v5 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXLocalizedTimeSummarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXLocalizedTimeSummary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXLocalizedTimeSummarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_223C9AFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUIAlertControllerClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIAlertController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIAlertControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIAlertControllerClass_block_invoke_cold_1();
    UIKitLibrary();
  }
}

void UIKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __UIKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2784F38C0;
    v3 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

VOSOutputEventDispatcher *__getUIAlertActionClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIAlertAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIAlertActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIAlertActionClass_block_invoke_cold_1();
    return +[(VOSOutputEventDispatcher *)v3];
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id getUIAlertActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIAlertActionClass_softClass_0;
  v7 = getUIAlertActionClass_softClass_0;
  if (!getUIAlertActionClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIAlertActionClass_block_invoke_0;
    v3[3] = &unk_2784F3710;
    v3[4] = &v4;
    __getUIAlertActionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_223CA0DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIDeviceClass_block_invoke(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIDeviceClass_block_invoke_cold_1();
  }

  getUIDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UIKitLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __UIKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2784F3A28;
    v3 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getUIAlertControllerClass_block_invoke_0(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIAlertController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIAlertControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIAlertControllerClass_block_invoke_cold_1();
    return __getUIAlertActionClass_block_invoke_0(v3);
  }

  return result;
}

VOSOutputEventCategory *__getUIAlertActionClass_block_invoke_0(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIAlertAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIAlertActionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIAlertActionClass_block_invoke_cold_1();
    return +[(VOSOutputEventCategory *)v3];
  }

  return result;
}

void soft_AXUILocalizedStringForKey_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[VOSSettingsHelper percentageFormatter];
}