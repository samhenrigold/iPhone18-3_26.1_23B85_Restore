@interface HDHealthRecordConstructMedicalRecordsTask
+ (BOOL)_extractKeyPathsWithClinicalItem:(id)item ruleset:(id)ruleset;
+ (BOOL)_unresolvableReferencesPresentInClinicalItem:(id)item;
+ (BOOL)_unsupportedModifierExtensionsPresentInClinicalItem:(id)item;
- (BOOL)_collectMedicalRecordPropertiesWithError:(id *)error;
- (HDHealthRecordConstructMedicalRecordsTask)initWithProcessingContext:(id)context;
- (id)_medicalRecordWithClinicalItem:(id)item clinicalType:(int64_t)type ruleset:(id)ruleset error:(id *)error;
- (id)_unknownMedicalRecordWithClinicalItem:(id)item ruleset:(id)ruleset error:(id *)error;
@end

@implementation HDHealthRecordConstructMedicalRecordsTask

- (HDHealthRecordConstructMedicalRecordsTask)initWithProcessingContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HDHealthRecordConstructMedicalRecordsTask;
  v6 = [(HDHealthRecordConstructMedicalRecordsTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingContext, context);
  }

  return v7;
}

- (BOOL)_collectMedicalRecordPropertiesWithError:(id *)error
{
  extractionRuleset = [(HDHealthRecordProcessingContext *)self->_processingContext extractionRuleset];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__HDHealthRecordConstructMedicalRecordsTask__collectMedicalRecordPropertiesWithError___block_invoke;
  v12[3] = &unk_2796E2B48;
  v12[4] = self;
  v6 = extractionRuleset;
  v13 = v6;
  v14 = &v16;
  v15 = &v22;
  [HDHealthRecordClinicalType enumerateClinicalTypesUsingBlock:v12];
  v7 = *(v23 + 24);
  if ((v7 & 1) == 0)
  {
    v8 = v17[5];
    v9 = v8;
    if (v8)
    {
      if (error)
      {
        v10 = v8;
        *error = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v7;
}

void __86__HDHealthRecordConstructMedicalRecordsTask__collectMedicalRecordPropertiesWithError___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [*(a1[4] + 8) extractedClinicalItemsForClinicalType:a2];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = *v26;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v25 + 1) + 8 * i);
      if ([objc_opt_class() _extractKeyPathsWithClinicalItem:v10 ruleset:a1[5]])
      {
        v11 = a1[4];
        v12 = a1[5];
        v13 = *(a1[6] + 8);
        obj = 0;
        v14 = [v11 _medicalRecordWithClinicalItem:v10 clinicalType:a2 ruleset:v12 error:&obj];
        objc_storeStrong((v13 + 40), obj);
        if (([v14 enteredInError] & 1) == 0 && ((objc_msgSend(objc_opt_class(), "_unsupportedModifierExtensionsPresentInClinicalItem:", v10) & 1) != 0 || objc_msgSend(objc_opt_class(), "_unresolvableReferencesPresentInClinicalItem:", v10)))
        {
        }

        else if (v14)
        {
          goto LABEL_14;
        }
      }

      v15 = a1[4];
      v16 = a1[5];
      v17 = *(a1[6] + 8);
      v23 = 0;
      v14 = [v15 _unknownMedicalRecordWithClinicalItem:v10 ruleset:v16 error:&v23];
      objc_storeStrong((v17 + 40), v23);
      if (!v14)
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a3 = 1;
        goto LABEL_20;
      }

LABEL_14:
      [v10 assignExtractedMedicalRecord:v14];
      v18 = *(a1[4] + 8);
      v19 = [v10 representedResource];
      v20 = *(a1[6] + 8);
      v22 = *(v20 + 40);
      LOBYTE(v18) = [v18 didProcessMedicalRecord:v14 forResource:v19 error:&v22];
      objc_storeStrong((v20 + 40), v22);

      if ((v18 & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a3 = 1;

        goto LABEL_20;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_20:
}

+ (BOOL)_unsupportedModifierExtensionsPresentInClinicalItem:(id)item
{
  v40 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  representedResource = [itemCopy representedResource];

  if (representedResource)
  {
    v6 = [HDFHIRExtensionProcessor alloc];
    representedResource2 = [itemCopy representedResource];
    v8 = [(HDFHIRExtensionProcessor *)v6 initWithResource:representedResource2];

    v38 = 0;
    v9 = [(HDFHIRExtensionProcessor *)v8 findUnsupportedModifierExtensions:&v38];
    v10 = v38;
    if (v9)
    {
      if ([v9 count])
      {
        v29 = *MEMORY[0x277D122E8];
        v11 = [itemCopy medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
        v12 = v11;
        v32 = itemCopy;
        v31 = v10;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = objc_alloc_init(MEMORY[0x277D12388]);
        }

        v17 = v13;

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v30 = v9;
        obj = v9;
        v18 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v35;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v34 + 1) + 8 * i);
              keyPath = [v22 keyPath];
              extensionElement = [v22 extensionElement];
              v25 = [extensionElement URI];
              v26 = [keyPath stringByAppendingFormat:@".%@", v25];

              v27 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:2 propertyName:0 resourceKeyPath:v26];
              [v17 addFailureRecord:v27];
            }

            v19 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v19);
        }

        itemCopy = v32;
        [v32 setMedicalRecordPropertyValue:v17 forKey:v29];

        v15 = 1;
        v10 = v31;
        v9 = v30;
        goto LABEL_21;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [(HDHealthRecordConstructMedicalRecordsTask *)v16 _unsupportedModifierExtensionsPresentInClinicalItem:self];
      }
    }

    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    [(HDHealthRecordConstructMedicalRecordsTask *)v14 _unsupportedModifierExtensionsPresentInClinicalItem:self];
  }

  v15 = 0;
LABEL_22:

  return v15;
}

+ (BOOL)_unresolvableReferencesPresentInClinicalItem:(id)item
{
  itemCopy = item;
  representedResource = [itemCopy representedResource];

  if (!representedResource)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [(HDHealthRecordConstructMedicalRecordsTask *)v14 _unsupportedModifierExtensionsPresentInClinicalItem:self];
    }

    goto LABEL_8;
  }

  representedResource2 = [itemCopy representedResource];
  extractionHints = [representedResource2 extractionHints];

  if ((extractionHints & 2) == 0)
  {
    representedResource3 = [itemCopy representedResource];
    extractionHints2 = [representedResource3 extractionHints];

    if ((extractionHints2 & 1) == 0)
    {
LABEL_8:
      v15 = 0;
      goto LABEL_11;
    }
  }

  v10 = *MEMORY[0x277D122E8];
  v11 = [itemCopy medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277D12388]);
  }

  v16 = v13;

  v17 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:7 propertyName:0 resourceKeyPath:0];
  [v16 addFailureRecord:v17];
  [itemCopy setMedicalRecordPropertyValue:v16 forKey:v10];

  v15 = 1;
LABEL_11:

  return v15;
}

+ (BOOL)_extractKeyPathsWithClinicalItem:(id)item ruleset:(id)ruleset
{
  v70 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  rulesetCopy = ruleset;
  v6 = [rulesetCopy rulesetForClinicalType:{objc_msgSend(itemCopy, "type")}];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D12388]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    medicalRecordProperties = [v6 medicalRecordProperties];
    allKeys = [medicalRecordProperties allKeys];

    obj = allKeys;
    v51 = [allKeys countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v51)
    {
      v50 = *v63;
      v49 = v6;
      v55 = v7;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v63 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v62 + 1) + 8 * i);
          medicalRecordProperties2 = [v6 medicalRecordProperties];
          v56 = v11;
          v13 = [medicalRecordProperties2 objectForKeyedSubscript:v11];

          if (v13)
          {
            v53 = i;
            v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v52 = v13;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v58 objects:v68 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v59;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v59 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v58 + 1) + 8 * j);
                  v20 = objc_autoreleasePoolPush();
                  v57 = 0;
                  v21 = [itemCopy candidateValueForKeyPath:v19 error:&v57];
                  v22 = v57;
                  v23 = v22;
                  if (v21)
                  {
                    v24 = 1;
                  }

                  else
                  {
                    v24 = v22 == 0;
                  }

                  if (v24)
                  {
                    if (v21)
                    {
                      [v54 addObject:v21];
                    }
                  }

                  else
                  {
                    v25 = itemCopy;
                    _HKInitializeLogging();
                    v26 = *MEMORY[0x277CCC2C0];
                    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v67 = v23;
                      _os_log_error_impl(&dword_251CC8000, v26, OS_LOG_TYPE_ERROR, "ConstructMedicalRecordsTask keypath extraction error %{public}@", buf, 0xCu);
                    }

                    v28 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:4 propertyName:v56 resourceKeyPath:v19];
                    [v55 addFailureRecord:v28];

                    itemCopy = v25;
                  }

                  objc_autoreleasePoolPop(v20);
                }

                v16 = [v14 countByEnumeratingWithState:&v58 objects:v68 count:16];
              }

              while (v16);
            }

            v7 = v55;
            if ([v54 count] >= 2)
            {
              v29 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:5 propertyName:v56 resourceKeyPath:0];
              [v55 addFailureRecord:v29];
            }

            failureRecords = [v55 failureRecords];
            v31 = [failureRecords count];

            v6 = v49;
            if (!v31)
            {
              firstObject = [v54 firstObject];
              [itemCopy setMedicalRecordPropertyValue:firstObject forKey:v56];
            }

            v13 = v52;
            i = v53;
          }
        }

        v51 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v51);
    }

    failureRecords2 = [v7 failureRecords];
    v34 = [failureRecords2 count];
    v35 = v34 == 0;

    if (v34)
    {
      v36 = *MEMORY[0x277D122E8];
      v37 = [itemCopy medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];

      if (v37)
      {
        [(HDHealthRecordConstructMedicalRecordsTask *)self _extractKeyPathsWithClinicalItem:itemCopy ruleset:v36, a2];
      }

      [itemCopy setMedicalRecordPropertyValue:v7 forKey:v36];
    }
  }

  else
  {
    v38 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:3 propertyName:0 resourceKeyPath:0];
    v39 = *MEMORY[0x277D122E8];
    v40 = [itemCopy medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = objc_alloc_init(MEMORY[0x277D12388]);
    }

    v43 = v42;

    [v43 addFailureRecord:v38];
    [itemCopy setMedicalRecordPropertyValue:v43 forKey:v39];

    v35 = 0;
  }

  return v35;
}

- (id)_unknownMedicalRecordWithClinicalItem:(id)item ruleset:(id)ruleset error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  rulesetCopy = ruleset;
  v8 = [itemCopy medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
  v40 = rulesetCopy;
  [rulesetCopy rulesetForClinicalType:{objc_msgSend(itemCopy, "type")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = v47 = 0u;
  displayNameKeyPaths = [v38 displayNameKeyPaths];
  v10 = [displayNameKeyPaths countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(displayNameKeyPaths);
        }

        v14 = *(*(&v44 + 1) + 8 * v13);
        v43 = 0;
        v15 = [itemCopy candidateValueForKeyPath:v14 error:&v43];
        v16 = v43;
        v17 = v16;
        if (v15)
        {
          v18 = 1;
        }

        else
        {
          v18 = v16 == 0;
        }

        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            if (v15)
            {
              [itemCopy setMedicalRecordPropertyValue:v15 forKey:@"displayName"];
            }

            goto LABEL_23;
          }
        }

        else
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v49 = v17;
            _os_log_error_impl(&dword_251CC8000, v19, OS_LOG_TYPE_ERROR, "ConstructMedicalRecordsTask unknown medical record display name extraction error %{public}@", buf, 0xCu);
          }

          v21 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:4 propertyName:@"displayName" resourceKeyPath:v14];
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277D12388]);
          }

          [v8 addFailureRecord:v21];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [displayNameKeyPaths countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_23:
  v42 = 0;
  v22 = [itemCopy medicalRecordPropertyValueForKey:@"enteredInError" expectedClass:objc_opt_class() isArray:0 error:&v42];
  v23 = v42;
  v24 = v23;
  if (!v22)
  {
    if (v23)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HDHealthRecordConstructMedicalRecordsTask _unknownMedicalRecordWithClinicalItem:ruleset:error:];
      }
    }

    representedResource = [itemCopy representedResource];
    jSONObject = [representedResource JSONObject];

    v41 = v24;
    v27 = [HDHealthRecordsExtractionUtilities wasEnteredInError:jSONObject error:&v41];
    v28 = v41;

    if (!v27)
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HDHealthRecordConstructMedicalRecordsTask _unknownMedicalRecordWithClinicalItem:v29 ruleset:self error:jSONObject];
      }

      v27 = &unk_28641A290;
    }

    [itemCopy setMedicalRecordPropertyValue:v27 forKey:@"enteredInError"];

    v24 = v28;
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v8)
  {
    v31 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v8 encodeWithCoder:v31];
    encodedData = [v31 encodedData];
    if (encodedData)
    {
      [v30 setObject:encodedData forKeyedSubscript:*MEMORY[0x277CCDFF0]];
    }
  }

  if ([v30 count])
  {
    v33 = v30;
  }

  else
  {
    v33 = 0;
  }

  [itemCopy assignMedicalRecordMetadata:v33];
  _HKInitializeLogging();
  v34 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    [HDHealthRecordConstructMedicalRecordsTask _unknownMedicalRecordWithClinicalItem:v34 ruleset:itemCopy error:?];
  }

  v35 = [MEMORY[0x277CCDAC8] medicalRecordFromClinicalItem:itemCopy error:error];

  return v35;
}

- (id)_medicalRecordWithClinicalItem:(id)item clinicalType:(int64_t)type ruleset:(id)ruleset error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  rulesetCopy = ruleset;
  v46 = 0;
  v11 = [objc_msgSend(itemCopy "medicalRecordClass")];
  v12 = v46;
  if (v11)
  {
    v13 = v11;
    goto LABEL_26;
  }

  v39 = rulesetCopy;
  v35 = *MEMORY[0x277D122E8];
  v14 = [itemCopy medicalRecordPropertyValueForKey:*MEMORY[0x277D122E8] expectedClass:objc_opt_class() isArray:0 error:0];
  v15 = v14;
  v40 = itemCopy;
  selfCopy = self;
  errorCopy = error;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277D12388]);
  }

  v17 = v16;

  v36 = v12;
  userInfo = [v12 userInfo];
  v19 = [userInfo objectForKeyedSubscript:@"conversionErrors"];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        userInfo2 = [v24 userInfo];
        v26 = [userInfo2 objectForKeyedSubscript:@"propertyName"];

        v27 = @"UnknownPropertyName";
        if (v26)
        {
          v27 = v26;
        }

        v28 = v27;

        domain = [v24 domain];
        v30 = [domain isEqualToString:@"HDHealthRecordsServiceErrorDomain"];

        if (v30)
        {
          if ([v24 code] == 204)
          {
            v31 = 6;
            goto LABEL_23;
          }

          if ([v24 code] == 202)
          {
            v31 = 8;
            goto LABEL_23;
          }

          if ([v24 code] == 203)
          {
            v31 = 9;
            goto LABEL_23;
          }

          _HKInitializeLogging();
          v32 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v48 = v24;
            _os_log_error_impl(&dword_251CC8000, v32, OS_LOG_TYPE_ERROR, "ConstructMedicalRecordsTask medical record creation, unexpected error %{public}@", buf, 0xCu);
          }
        }

        v31 = 1;
LABEL_23:
        v33 = [MEMORY[0x277D12390] extractionFailureRecordWithCode:v31 propertyName:v28 resourceKeyPath:0];
        [v17 addFailureRecord:v33];
      }

      v21 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v21);
  }

  itemCopy = v40;
  [v40 setMedicalRecordPropertyValue:v17 forKey:v35];
  rulesetCopy = v39;
  v13 = [(HDHealthRecordConstructMedicalRecordsTask *)selfCopy _unknownMedicalRecordWithClinicalItem:v40 ruleset:v39 error:errorCopy];

  v12 = v36;
  v11 = 0;
LABEL_26:

  return v13;
}

@end