id _MSS_resolvedSpecifiers(void *a1)
{
  v95[9] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB18];
  v3 = [v1 allSpecifiers];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v5 = [v1 allSpecifiers];
  v56 = [v5 countByEnumeratingWithState:&v85 objects:v94 count:16];
  if (v56)
  {
    v48 = v78;
    v55 = *v86;
    v64 = *MEMORY[0x277D400A0];
    v51 = *MEMORY[0x277D40198];
    v52 = *MEMORY[0x277D40190];
    v49 = v5;
    v50 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v86 != v55)
        {
          objc_enumerationMutation(v5);
        }

        v57 = v6;
        v7 = *(*(&v85 + 1) + 8 * v6);
        v8 = [v7 properties];
        hasMusicRequiredCapabilities_specifier = _MSS_hasMusicRequiredCapabilities_specifier(v1, v8, v7);

        if (hasMusicRequiredCapabilities_specifier)
        {
          v10 = [v7 music_copy];
          [v4 addObject:v10];
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v95[0] = @"musicDynamicFooterText";
          v95[1] = @"musicDynamicIconImage";
          v95[2] = @"musicDynamicLabel";
          v95[3] = @"musicDynamicFooterHyperlinkViewText";
          v95[4] = @"musicDynamicFooterHyperlinkViewLinkAction";
          v95[5] = @"musicDynamicFooterHyperlinkViewLinkText";
          v95[6] = @"musicDynamicEnabled";
          v95[7] = @"musicFooterHyperlinkViewText";
          v95[8] = @"musicFooterHyperlinkViewLinkText";
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:9];
          v12 = [v11 countByEnumeratingWithState:&v81 objects:v93 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v82;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v82 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v81 + 1) + 8 * i);
                v17 = [v10 objectForKeyedSubscript:v16];
                if (v17)
                {
                  _MSS_setValue_forSpecifier_key(v1, v17, v10, v16);
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v81 objects:v93 count:16];
            }

            while (v13);
          }

          v18 = [v10 propertyForKey:@"musicOverrides"];
          if (v18)
          {
            if (_NSIsNSDictionary())
            {
              v77[0] = MEMORY[0x277D85DD0];
              v77[1] = 3221225472;
              v78[0] = ___MSS_resolvedSpecifiers_block_invoke;
              v78[1] = &unk_279926308;
              v79 = v1;
              v80 = v10;
              [v18 enumerateKeysAndObjectsUsingBlock:v77];

              v19 = v79;
              goto LABEL_44;
            }

            if (_NSIsNSArray())
            {
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              obj = v18;
              v60 = [obj countByEnumeratingWithState:&v73 objects:v92 count:16];
              if (!v60)
              {
                goto LABEL_43;
              }

              v53 = v18;
              v59 = *v74;
              while (1)
              {
                v20 = 0;
                do
                {
                  if (*v74 != v59)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v62 = v20;
                  v21 = *(*(&v73 + 1) + 8 * v20);
                  v22 = [v21 objectForKeyedSubscript:@"property"];
                  v23 = [v21 objectForKeyedSubscript:@"values"];
                  if (!v23)
                  {
                    v91 = v21;
                    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
                  }

                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v24 = v23;
                  v25 = [v24 countByEnumeratingWithState:&v69 objects:v90 count:16];
                  if (v25)
                  {
                    v26 = v25;
                    v27 = *v70;
                    do
                    {
                      for (j = 0; j != v26; ++j)
                      {
                        if (*v70 != v27)
                        {
                          objc_enumerationMutation(v24);
                        }

                        v29 = *(*(&v69 + 1) + 8 * j);
                        v30 = [v29 objectForKeyedSubscript:@"value"];
                        v31 = [v29 objectForKeyedSubscript:@"requirements"];
                        v32 = [v31 objectForKeyedSubscript:v64];
                        v33 = _MSS_hasMusicRequiredCapabilities_specifier(v1, v31, v10);
                        if (!v32)
                        {
                          if (!v33)
                          {
                            goto LABEL_38;
                          }

LABEL_37:
                          _MSS_setValue_forSpecifier_key(v1, v30, v10, v22);
                          goto LABEL_38;
                        }

                        if (v33 && (SystemHasCapabilities() & 1) != 0)
                        {
                          goto LABEL_37;
                        }

LABEL_38:
                      }

                      v26 = [v24 countByEnumeratingWithState:&v69 objects:v90 count:16];
                    }

                    while (v26);
                  }

                  v20 = v62 + 1;
                }

                while (v62 + 1 != v60);
                v60 = [obj countByEnumeratingWithState:&v73 objects:v92 count:16];
                if (!v60)
                {
                  v5 = v49;
                  v4 = v50;
                  v18 = v53;
LABEL_43:
                  v19 = obj;
LABEL_44:

                  break;
                }
              }
            }

            v34 = [v10 propertyForKey:v52];
            v35 = [v10 propertyForKey:v51];
            v36 = v35;
            if (v34 && v35)
            {
              v61 = v35;
              v54 = v18;
              v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34, "count")}];
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v63 = v34;
              v38 = v34;
              v39 = [v38 countByEnumeratingWithState:&v65 objects:v89 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v66;
                do
                {
                  for (k = 0; k != v40; ++k)
                  {
                    if (*v66 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v65 + 1) + 8 * k);
                    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v45 = [v1 stringsTable];
                    v46 = [v44 localizedStringForKey:v43 value:&stru_286C31160 table:v45];
                    [v37 addObject:v46];
                  }

                  v40 = [v38 countByEnumeratingWithState:&v65 objects:v89 count:16];
                }

                while (v40);
              }

              v36 = v61;
              [v10 setValues:v61 titles:v37];

              v5 = v49;
              v4 = v50;
              v18 = v54;
              v34 = v63;
            }
          }
        }

        v6 = v57 + 1;
      }

      while (v57 + 1 != v56);
      v56 = [v5 countByEnumeratingWithState:&v85 objects:v94 count:16];
    }

    while (v56);
  }

  return v4;
}

uint64_t _MSS_hasMusicRequiredCapabilities_specifier(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 objectForKey:@"musicRequiredCapabilities"];
  if (v8)
  {
    hasMusicRequiredCapabilities_specifier = _MSS__hasMusicRequiredCapabilities_specifier(v5, v8, v7);
  }

  else
  {
    hasMusicRequiredCapabilities_specifier = 1;
  }

  v10 = [v6 objectForKey:@"musicRequiredCapabilitiesNot"];
  v11 = (v10 == 0) & hasMusicRequiredCapabilities_specifier;
  if (v10 && hasMusicRequiredCapabilities_specifier)
  {
    v11 = _MSS__hasMusicRequiredCapabilities_specifier(v5, v10, v7) ^ 1;
  }

  v12 = [v6 objectForKey:@"musicRequiredCapabilitiesOr"];
  v13 = v12;
  v29 = v10;
  if (v12)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      LOBYTE(v16) = 0;
      v17 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v13);
          }

          if (v16)
          {
            v16 = 1;
          }

          else
          {
            v16 = _MSS__hasMusicRequiredCapabilities_specifier(v5, *(*(&v34 + 1) + 8 * i), v7);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v11 = v11 & v16;
  }

  v19 = [v6 objectForKey:@"musicRequiredCapabilitiesNotOr"];
  v20 = v19;
  if (v19)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v28 = v8;
      LOBYTE(v23) = 0;
      v24 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v20);
          }

          if (v23)
          {
            v23 = 1;
          }

          else
          {
            v23 = _MSS__hasMusicRequiredCapabilities_specifier(v5, *(*(&v30 + 1) + 8 * j), v7);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v22);
      v26 = v23 ^ 1;
      v8 = v28;
    }

    else
    {
      v26 = 1;
    }

    v11 = v11 & v26;
  }

  return v11;
}

void _MSS_setValue_forSpecifier_key(void *a1, void *a2, void *a3, void *a4)
{
  v43 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:*MEMORY[0x277D40170]])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v43 stringsTable];
    v12 = [(__CFString *)v10 localizedStringForKey:v7 value:&stru_286C31160 table:v11];
    [v8 setName:v12];
    goto LABEL_3;
  }

  v13 = *MEMORY[0x277D3FF88];
  if ([v9 isEqualToString:*MEMORY[0x277D3FF88]])
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v43 stringsTable];
    v10 = [v14 localizedStringForKey:v7 value:&stru_286C31160 table:v15];

    v16 = v10;
LABEL_7:
    if (![(__CFString *)v16 length])
    {

      v10 = @" ";
    }

    v17 = v8;
    v18 = v10;
    v19 = v13;
    goto LABEL_10;
  }

  v20 = *MEMORY[0x277D3FF38];
  if ([v9 isEqualToString:*MEMORY[0x277D3FF38]])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "BOOLValue")}];
    [v8 setObject:v21 forKeyedSubscript:v20];
LABEL_17:

    goto LABEL_12;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterText"])
  {
    v22 = NSSelectorFromString(v7);
    v16 = MusicSettingsPerformSelector2(v22, v43, v8, 0);
    v10 = v16;
    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"musicDynamicIconImage"])
  {
    v23 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v23, v43, v8, 0);
    v19 = *MEMORY[0x277D3FFC0];
    if (v10)
    {
      v17 = v8;
      v18 = v10;
LABEL_10:
      [v17 setObject:v18 forKeyedSubscript:v19];
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  if ([v9 isEqualToString:@"musicDynamicLabel"])
  {
    v24 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v24, v43, v8, 0);
    [v8 setName:v10];
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterHyperlinkViewText"])
  {
    v25 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v25, v43, v8, 0);
    v19 = *MEMORY[0x277D3FF70];
    if (!v10)
    {
LABEL_28:
      v26 = v8;
LABEL_29:
      v27 = v19;
      goto LABEL_30;
    }

    v26 = v8;
LABEL_33:
    [v26 setProperty:v10 forKey:v19];
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"musicFooterHyperlinkViewText"])
  {
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v43 stringsTable];
    v10 = [v28 localizedStringForKey:v7 value:&stru_286C31160 table:v29];

    v19 = *MEMORY[0x277D3FF70];
    v26 = v8;
    if (!v10)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterHyperlinkViewLinkText"])
  {
    v30 = NSSelectorFromString(v7);
    v10 = MusicSettingsPerformSelector2(v30, v43, v8, 0);
    goto LABEL_38;
  }

  if ([v9 isEqualToString:@"musicFooterHyperlinkViewLinkText"])
  {
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v43 stringsTable];
    v10 = [v31 localizedStringForKey:v7 value:&stru_286C31160 table:v32];

LABEL_38:
    v33 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FF70]];
    v11 = v33;
    if (!v10 || !v33)
    {
      [v8 removePropertyForKey:*MEMORY[0x277D3FF58]];
      goto LABEL_4;
    }

    v45.location = [v33 rangeOfString:v10];
    v12 = NSStringFromRange(v45);
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF58]];
LABEL_3:

LABEL_4:
LABEL_11:

    goto LABEL_12;
  }

  if ([v9 isEqualToString:@"musicDynamicFooterHyperlinkViewLinkAction"])
  {
    v34 = NSSelectorFromString(v7);
    v35 = MusicSettingsPerformSelector2(v34, v43, v8, 0);
    v10 = v35;
    if (v35)
    {
      v36 = MEMORY[0x277CCAE60];
      v37 = [(__CFString *)v35 target];
      v38 = [v36 valueWithNonretainedObject:v37];
      [v8 setObject:v38 forKeyedSubscript:*MEMORY[0x277D3FF68]];

      v11 = [(__CFString *)v10 selectorString];
      [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF50]];
      goto LABEL_4;
    }

    [v8 removePropertyForKey:*MEMORY[0x277D3FF68]];
    v27 = *MEMORY[0x277D3FF50];
    v26 = v8;
LABEL_30:
    [v26 removePropertyForKey:v27];
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"musicDynamicEnabled"])
  {
    v39 = NSSelectorFromString(v7);
    v21 = MusicSettingsPerformSelector2(v39, v43, v8, 0);
    v40 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v21, "BOOLValue")}];
    [v8 setObject:v40 forKeyedSubscript:v20];
LABEL_49:

    goto LABEL_17;
  }

  v41 = *MEMORY[0x277D40118];
  if ([v9 isEqualToString:*MEMORY[0x277D40118]])
  {
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v43 stringsTable];
    v42 = [v21 localizedStringForKey:v7 value:&stru_286C31160 table:v40];
    [v8 setObject:v42 forKeyedSubscript:v41];

    goto LABEL_49;
  }

  [v8 setObject:v7 forKeyedSubscript:v9];
LABEL_12:
}

void sub_25ADC3514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _MSS__hasMusicRequiredCapabilities_specifier(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = v28;
          if (*(v28 + 24) == 1)
          {
            hasMusicRequiredCapabilities_specifier = _MSS__hasMusicRequiredCapabilities_specifier(v5, *(*(&v23 + 1) + 8 * i), v7);
            v12 = v28;
          }

          else
          {
            hasMusicRequiredCapabilities_specifier = 0;
          }

          *(v12 + 24) = hasMusicRequiredCapabilities_specifier;
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v9);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = ___MSS__hasMusicRequiredCapabilities_specifier_block_invoke;
      v19[3] = &unk_279926398;
      v20 = v5;
      v21 = v7;
      v22 = &v27;
      [v6 enumerateKeysAndObjectsUsingBlock:v19];

      v8 = v20;
    }

    else
    {
      v14 = _MSS_valueForRequirementKey_specifier(v5, v6, v7);
      v8 = v14;
      v15 = v28;
      if (*(v28 + 24) == 1)
      {
        v16 = [v14 isEqual:MEMORY[0x277CBEC38]];
        v15 = v28;
      }

      else
      {
        v16 = 0;
      }

      *(v15 + 24) = v16;
    }
  }

  v17 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v17 & 1;
}

void sub_25ADC38AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MSS_valueForRequirementKey_specifier(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 valueForMusicCapability:v6];
  if (v8)
  {
    goto LABEL_2;
  }

  v11 = [v5 allSpecifiers];
  v12 = [v11 specifierForID:v6];

  if (!v12 || ([v12 music_getValue], v9 = objc_claimAutoreleasedReturnValue(), v12, !v9))
  {
    v13 = NSSelectorFromString(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = MusicSettingsPerformSelector2(v13, v5, v7, 0);
      if (v8)
      {
LABEL_2:
        v9 = v8;
        goto LABEL_3;
      }
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id _MSS_valueForRequirementKey_specifier(__strong id<MusicSettingsSupportController>, NSString *__strong, PSSpecifier *__strong)"}];
    [v14 handleFailureInFunction:v15 file:@"MusicSettingsSupportController.m" lineNumber:291 description:{@"No matching capability: %@", v6}];

    v9 = 0;
  }

LABEL_3:

  return v9;
}

id MusicSettingsPerformSelector2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v7 methodForSelector:a1];
    v11 = [v7 methodSignatureForSelector:a1];
    v12 = *[v11 methodReturnType];

    if (v9)
    {
      if (v12 == 64)
      {
        v13 = v10(v7, a1, v8, v9);
LABEL_14:
        v15 = v13;
LABEL_16:
        if (v12 == 64)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v14 = v16;

        goto LABEL_20;
      }

      v10(v7, a1, v8, v9);
    }

    else if (v8)
    {
      if (v12 == 64)
      {
        v13 = (v10)(v7, a1, v8);
        goto LABEL_14;
      }

      (v10)(v7, a1, v8);
    }

    else
    {
      if (v12 == 64)
      {
        v13 = (v10)(v7, a1);
        goto LABEL_14;
      }

      (v10)(v7, a1);
    }

    v15 = 0;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

void sub_25ADC43A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}