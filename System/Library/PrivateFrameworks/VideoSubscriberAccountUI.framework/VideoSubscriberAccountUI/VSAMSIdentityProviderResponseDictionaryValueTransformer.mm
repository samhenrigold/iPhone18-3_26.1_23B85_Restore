@interface VSAMSIdentityProviderResponseDictionaryValueTransformer
- (id)createProviderAppArtworkFromAttributes:(id)attributes;
- (id)transformedValue:(id)value;
@end

@implementation VSAMSIdentityProviderResponseDictionaryValueTransformer

- (id)createProviderAppArtworkFromAttributes:(id)attributes
{
  v3 = [attributes vs_dictionaryForKey:*MEMORY[0x277CE23D0]];
  currentDevice = [MEMORY[0x277CE2238] currentDevice];
  stringForAMSPlatformAttributes = [currentDevice stringForAMSPlatformAttributes];
  v6 = [v3 vs_dictionaryForKey:stringForAMSPlatformAttributes];

  if (!v6)
  {
    bincompatOS = [currentDevice bincompatOS];
    if (bincompatOS)
    {
      v6 = [v3 vs_dictionaryForKey:bincompatOS];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)transformedValue:(id)value
{
  v175 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v169 = valueCopy;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Handling response %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v108 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v98 = *MEMORY[0x277CE23F8];
    v6 = [valueCopy vs_arrayForKey:?];
    v97 = v6;
    if (v6)
    {
      v7 = v6;
      if ([v7 count])
      {
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        obj = v7;
        v8 = [obj countByEnumeratingWithState:&v163 objects:v174 count:16];
        if (!v8)
        {
          goto LABEL_92;
        }

        v9 = v8;
        v10 = *v164;
        v113 = *MEMORY[0x277CBE660];
        v130 = *MEMORY[0x277CE23C8];
        v129 = *MEMORY[0x277CE2398];
        v124 = *MEMORY[0x277CE23B0];
        v123 = *MEMORY[0x277CE2390];
        v122 = *MEMORY[0x277CE23F0];
        v121 = *MEMORY[0x277CE2430];
        v120 = *MEMORY[0x277CE23B8];
        v119 = *MEMORY[0x277CE23C0];
        v118 = *MEMORY[0x277CE23A8];
        v117 = *MEMORY[0x277CE23A0];
        v106 = *MEMORY[0x277CE23E0];
        v105 = *MEMORY[0x277CE23E8];
        v104 = *MEMORY[0x277CE23D8];
        v103 = *MEMORY[0x277CE2408];
        v102 = *MEMORY[0x277CE2410];
        v101 = *MEMORY[0x277CE2418];
        v100 = *MEMORY[0x277CE2400];
        v99 = *MEMORY[0x277CE2388];
        v128 = *MEMORY[0x277CE2360];
        v126 = *MEMORY[0x277CE2350];
        v127 = *MEMORY[0x277CE2358];
        v115 = v5;
        v116 = valueCopy;
        v114 = v7;
        v131 = *v164;
        while (1)
        {
          v11 = 0;
          v132 = v9;
          do
          {
            if (*v164 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v163 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v13 = MEMORY[0x277CBEAD8];
                v14 = objc_opt_class();
                v15 = NSStringFromClass(v14);
                [v13 raise:v113 format:{@"Unexpectedly, providerObject was %@, instead of NSDictionary.", v15, v97}];
              }

              v16 = v12;
              v17 = [v16 vs_stringForKey:v130];
              v18 = [v16 vs_dictionaryForKey:v129];
              v148 = v18;
              v149 = v11;
              v152 = v16;
              if (v18)
              {
                v19 = v18;
                v20 = [v19 vs_stringForKey:v124];
                if (v20)
                {
                  v21 = [MEMORY[0x277CBEBC0] URLWithString:v20];
                }

                else
                {
                  v21 = 0;
                }

                v22 = [v19 vs_stringForKey:v123];
                v135 = v22;
                if (v22)
                {
                  v140 = [MEMORY[0x277CBEBC0] URLWithString:v22];
                }

                else
                {
                  v140 = 0;
                }

                v23 = [v19 vs_stringForKey:v122];
                if (!v23)
                {
                  v23 = v17;
                }

                v24 = [v19 vs_dictionaryForKey:v121];
                v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v161[0] = MEMORY[0x277D85DD0];
                v161[1] = 3221225472;
                v161[2] = __76__VSAMSIdentityProviderResponseDictionaryValueTransformer_transformedValue___block_invoke;
                v161[3] = &unk_279E19F58;
                v139 = v25;
                v162 = v139;
                v136 = v24;
                [v24 enumerateKeysAndObjectsUsingBlock:v161];
                v144 = [v19 vs_stringForKey:v120];
                v134 = [v19 vs_numberForKey:v119];
                bOOLValue = [v134 BOOLValue];
                v141 = v21;
                v27 = v21 == 0;
                v138 = [v19 vs_arrayOfStringsForKey:v118];
                v137 = [v19 vs_arrayOfStringsForKey:v117];
                v146 = [v19 vs_stringForKey:@"minimumOSVersion"];
                if (v17)
                {
                  v151 = bOOLValue;
                  v28 = v17;
                  v29 = -[NSObject length](v28, "length") && -[NSObject length](v144, "length") && (-[NSObject containsObject:](v108, "containsObject:", v28) & 1) == 0 && [v136 count] != 0;
                  v125 = v20;
                  v142 = v17;
                  if (![v146 length])
                  {
                    if (v29)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_54;
                  }

                  currentDevice = [MEMORY[0x277CE2238] currentDevice];
                  productVersion = [currentDevice productVersion];

                  if (productVersion)
                  {
                    v32 = [v146 compare:productVersion options:64] != 1 && v29;

                    if (v32)
                    {
                      goto LABEL_39;
                    }

LABEL_54:
                    v33 = VSDefaultLogObject();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v169 = v144;
                      v170 = 2112;
                      v171 = v28;
                      v172 = 2112;
                      v173 = v152;
                      _os_log_impl(&dword_270DD4000, v33, OS_LOG_TYPE_DEFAULT, "Excluding provider %@ (%@): %@", buf, 0x20u);
                    }

                    v150 = 0;
                  }

                  else
                  {
                    v68 = VSErrorLogObject();
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
                    {
                      [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)&v159 transformedValue:v160, v68];
                    }

                    if (!v29)
                    {
                      goto LABEL_54;
                    }

LABEL_39:
                    [v108 addObject:v28];
                    v33 = objc_alloc_init(MEMORY[0x277CE2260]);
                    v34 = MEMORY[0x277CE2298];
                    v35 = [v28 copy];
                    v36 = [v34 optionalWithObject:v35];
                    [v33 setUniqueID:v36];

                    v37 = MEMORY[0x277CE2298];
                    v38 = [v23 copy];
                    v39 = [v37 optionalWithObject:v38];
                    [v33 setProviderID:v39];

                    v40 = MEMORY[0x277CE2298];
                    v41 = [v152 copy];
                    v42 = [v40 optionalWithObject:v41];
                    [v33 setProviderInfo:v42];

                    [v33 setNameForSorting:v144];
                    [v33 setAuthenticationURL:v141];
                    [v33 setRequireAuthenticationURLSystemTrust:1];
                    [v33 setRequireXHRRequestSystemTrust:1];
                    v112 = [v19 vs_dictionaryForKey:v106];
                    v111 = [v112 vs_stringForKey:v105];
                    [v33 setProviderArtworkTemplateURL:?];
                    v110 = [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)self createProviderAppArtworkFromAttributes:v19];
                    v109 = [v110 vs_stringForKey:v104];
                    [v33 setProviderAppArtworkTemplateURL:?];
                    v43 = [v19 vs_numberForKey:v103];
                    v44 = v43;
                    if (v43)
                    {
                      -[NSObject setIsSetTopBoxSupported:](v33, "setIsSetTopBoxSupported:", [v43 BOOLValue]);
                    }

                    v45 = [v19 vs_numberForKey:v102];
                    v46 = v45;
                    if (v45)
                    {
                      -[NSObject setShouldShowChannelApps:](v33, "setShouldShowChannelApps:", [v45 BOOLValue]);
                    }

                    v47 = [v19 vs_numberForKey:v101];
                    v48 = v47;
                    if (v47)
                    {
                      -[NSObject setShouldShowSubscriptionApps:](v33, "setShouldShowSubscriptionApps:", [v47 BOOLValue]);
                    }

                    v49 = [v19 vs_numberForKey:v100];
                    v50 = v49;
                    if (v49)
                    {
                      -[NSObject setIsSTBOptOutAllowed:](v33, "setIsSTBOptOutAllowed:", [v49 BOOLValue]);
                    }

                    v51 = [v19 vs_numberForKey:v99];
                    if (v51)
                    {
                      [v33 setAppPlacementPosition:v51];
                    }

                    [v33 setStorefronts:v139];
                    [v33 setAppStoreRoomURL:v140];
                    [v33 setSupportedTemplates:v138];
                    [v33 setSupportedAuthenticationSchemes:v137];
                    [v33 setProhibitedByStore:(v27 | v151 ^ 1) & 1];
                    [v115 addObject:v33];

                    v5 = v115;
                    v150 = v33;
                    valueCopy = v116;
                    v7 = v114;
                  }

                  v52 = v141;
                  v17 = v142;

                  v20 = v125;
                }

                else
                {
                  v28 = VSDefaultLogObject();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v169 = v152;
                    _os_log_impl(&dword_270DD4000, v28, OS_LOG_TYPE_DEFAULT, "No unique ID for provider: %@", buf, 0xCu);
                  }

                  v150 = 0;
                  v52 = v141;
                }

                v11 = v149;
                v16 = v152;
              }

              else
              {
                v19 = VSErrorLogObject();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)&v157 transformedValue:v158, v19];
                }

                v150 = 0;
              }

              v53 = [v16 vs_dictionaryForKey:v128];
              v54 = [v53 vs_dictionaryForKey:v127];
              v55 = [v54 vs_arrayOfDictionariesForKey:v126];
              v56 = v55;
              if (v55 && [v55 count])
              {
                v145 = v54;
                v147 = v53;
                v143 = v17;
                v57 = v56;
                v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v59 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSAppsValueTransformer"];
                v153 = 0u;
                v154 = 0u;
                v155 = 0u;
                v156 = 0u;
                v60 = v57;
                v61 = [v60 countByEnumeratingWithState:&v153 objects:v167 count:16];
                if (v61)
                {
                  v62 = v61;
                  v63 = *v154;
                  do
                  {
                    for (i = 0; i != v62; ++i)
                    {
                      if (*v154 != v63)
                      {
                        objc_enumerationMutation(v60);
                      }

                      v65 = *(*(&v153 + 1) + 8 * i);
                      v66 = [v59 transformedValue:v65];
                      if (v66)
                      {
                        [v58 addObject:v66];
                      }

                      else
                      {
                        v67 = VSErrorLogObject();
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v169 = v65;
                          _os_log_error_impl(&dword_270DD4000, v67, OS_LOG_TYPE_ERROR, "App dictionary contained data but no attributes: %@", buf, 0xCu);
                        }
                      }
                    }

                    v62 = [v60 countByEnumeratingWithState:&v153 objects:v167 count:16];
                  }

                  while (v62);
                }

                if (v150)
                {
                  [v150 setNonChannelAppDescriptions:v58];
                }

                v5 = v115;
                valueCopy = v116;
                v7 = v114;
                v11 = v149;
                v16 = v152;
                v17 = v143;
                v54 = v145;
                v53 = v147;
              }

              v10 = v131;
              v9 = v132;
              goto LABEL_77;
            }

            v16 = VSErrorLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v169 = v98;
              v170 = 2112;
              v171 = v12;
              _os_log_error_impl(&dword_270DD4000, v16, OS_LOG_TYPE_ERROR, "Unexpected value as item in %@ array: %@", buf, 0x16u);
            }

LABEL_77:

            ++v11;
          }

          while (v11 != v9);
          v69 = [obj countByEnumeratingWithState:&v163 objects:v174 count:16];
          v9 = v69;
          if (!v69)
          {
            goto LABEL_92;
          }
        }
      }

      obj = VSErrorLogObject();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)obj transformedValue:v77, v78, v79, v80, v81, v82, v83];
      }

LABEL_92:
    }

    else
    {
      v7 = VSErrorLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)v7 transformedValue:v70, v71, v72, v73, v74, v75, v76];
      }
    }
  }

  else
  {
    v108 = VSErrorLogObject();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)valueCopy transformedValue:v108];
    }
  }

  if ([v5 count])
  {
    v84 = MEMORY[0x277CE2250];
    v85 = [v5 copy];
    v86 = [v84 failableWithObject:v85];
  }

  else
  {
    v87 = VSErrorLogObject();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)v87 transformedValue:v88, v89, v90, v91, v92, v93, v94];
    }

    v85 = VSPublicError();
    v86 = [MEMORY[0x277CE2250] failableWithError:v85];
  }

  v95 = v86;

  return v95;
}

void __76__VSAMSIdentityProviderResponseDictionaryValueTransformer_transformedValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = [a2 lowercaseString];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE660];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v6 raise:v7 format:{@"Unexpectedly, value was %@, instead of NSDictionary.", v9}];
    }

    v10 = *MEMORY[0x277CE2420];
    v11 = v16;
    v12 = [v11 vs_numberForKey:v10];
    v13 = [v12 BOOLValue];

    v14 = [v11 vs_numberForKey:*MEMORY[0x277CE2428]];

    v15 = objc_alloc_init(MEMORY[0x277CE2270]);
    [v15 setStorefrontTwoCharCode:v5];
    [v15 setIsFeatured:v13];
    [v15 setSortOrdinal:v14];
    [*(a1 + 32) addObject:v15];
  }
}

- (void)transformedValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Response was not a dictionary: %@", &v2, 0xCu);
}

- (void)transformedValue:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_270DD4000, log, OS_LOG_TYPE_FAULT, "Failed to get current version. Skipping TV Provider minimumOSVersion check.", buf, 2u);
}

- (void)transformedValue:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_270DD4000, log, OS_LOG_TYPE_ERROR, "No attributes dictionary for provider", buf, 2u);
}

@end