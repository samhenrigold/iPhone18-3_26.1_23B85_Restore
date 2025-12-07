@interface HDHealthRecordClinicalItem
- (HDHealthRecordClinicalItem)initWithRepresentedResource:(id)resource clinicalType:(id)type rulesVersion:(id)version;
- (id)_medicalRecordPropertyArrayFromKey:(id)key expectedClass:(Class)class error:(id *)error;
- (id)_medicalRecordPropertyFromKey:(id)key expectedClass:(Class)class error:(id *)error;
- (id)correspondingClinicalTypeWithError:(id *)error;
- (id)medicalRecordPropertyValueForKey:(id)key expectedClass:(Class)class isArray:(BOOL)array error:(id *)error;
- (void)assignExtractedMedicalRecord:(id)record;
@end

@implementation HDHealthRecordClinicalItem

- (HDHealthRecordClinicalItem)initWithRepresentedResource:(id)resource clinicalType:(id)type rulesVersion:(id)version
{
  resourceCopy = resource;
  typeCopy = type;
  versionCopy = version;
  v27.receiver = self;
  v27.super_class = HDHealthRecordClinicalItem;
  v12 = [(HDHealthRecordClinicalItem *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_representedResource, resource);
    jSONObject = [resourceCopy JSONObject];
    v15 = [jSONObject copy];
    originalAttributes = v13->_originalAttributes;
    v13->_originalAttributes = v15;

    v17 = [typeCopy copy];
    clinicalType = v13->_clinicalType;
    v13->_clinicalType = v17;

    v19 = [versionCopy copy];
    rulesVersion = v13->_rulesVersion;
    v13->_rulesVersion = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    medicalRecordProperties = v13->_medicalRecordProperties;
    v13->_medicalRecordProperties = v21;

    country = [resourceCopy country];
    v24 = [country copy];
    country = v13->_country;
    v13->_country = v24;
  }

  return v13;
}

- (id)correspondingClinicalTypeWithError:(id *)error
{
  if (!self->_extractedMedicalRecord)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"can only determine corresponding clinical types after medical record extraction has produced a medical record"];
    v5 = 0;
    goto LABEL_21;
  }

  type = [(HDHealthRecordClinicalType *)self->_clinicalType type];
  v5 = 0;
  if (type <= 4)
  {
    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_21;
        }

        clinicalNoteRecordType = [MEMORY[0x277CCD118] clinicalNoteRecordType];
      }

      else
      {
        clinicalNoteRecordType = [MEMORY[0x277CCD118] allergyRecordType];
      }
    }

    else if (type == 2)
    {
      clinicalNoteRecordType = [MEMORY[0x277CCD118] conditionRecordType];
    }

    else
    {
      if (type == 3)
      {
        [MEMORY[0x277CCD118] coverageRecordType];
      }

      else
      {
        [MEMORY[0x277CCD118] immunizationRecordType];
      }
      clinicalNoteRecordType = ;
    }

    goto LABEL_20;
  }

  if ((type - 5) < 3)
  {
    clinicalNoteRecordType = [MEMORY[0x277CCD118] medicationRecordType];
LABEL_20:
    v5 = clinicalNoteRecordType;
    goto LABEL_21;
  }

  if (type != 8)
  {
    if (type != 11)
    {
      goto LABEL_21;
    }

    clinicalNoteRecordType = [MEMORY[0x277CCD118] procedureRecordType];
    goto LABEL_20;
  }

  objc_opt_class();
  v8 = HKSafeObject();
  v9 = 0;
  v10 = v9;
  if (!v8)
  {
    v12 = v9;
    if (v12)
    {
      if (error)
      {
        v16 = v12;
        v5 = 0;
        *error = v12;
        goto LABEL_34;
      }

      _HKLogDroppedError();
    }

LABEL_33:
    v5 = 0;
    goto LABEL_34;
  }

  category = [v8 category];
  v12 = HKDiagnosticTestResultCategoryFromNSString();

  if (!v12 || (HKClinicalTypeForDiagnosticTestResultCategory(), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = MEMORY[0x277CCA9B8];
    category2 = [v8 category];
    [v14 hk_assignError:error code:3 format:{@"unsupported Observation category: %@", category2}];

    goto LABEL_33;
  }

  v5 = v13;
LABEL_34:

LABEL_21:

  return v5;
}

- (void)assignExtractedMedicalRecord:(id)record
{
  recordCopy = record;
  if (self->_extractedMedicalRecord)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [(HDHealthRecordClinicalItem *)v5 assignExtractedMedicalRecord:?];
    }
  }

  [(HDHealthRecordClinicalItem *)self setExtractedMedicalRecord:recordCopy];
}

- (id)_medicalRecordPropertyFromKey:(id)key expectedClass:(Class)class error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSMutableDictionary *)self->_medicalRecordProperties objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_10;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected %@ but found %@", class, objc_opt_class()];
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v19[0] = @"propertyName";
    v19[1] = v13;
    v20[0] = keyCopy;
    v20[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v15 = [v12 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:202 userInfo:v14];

    v16 = v15;
    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)_medicalRecordPropertyArrayFromKey:(id)key expectedClass:(Class)class error:(id *)error
{
  v38[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSMutableDictionary *)self->_medicalRecordProperties objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if ([v10 count])
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v31;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v31 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"array contents expected %@ but found %@", class, objc_opt_class(), v30];
                v23 = MEMORY[0x277CCA9B8];
                v24 = *MEMORY[0x277CCA450];
                v34[0] = @"propertyName";
                v34[1] = v24;
                v35[0] = keyCopy;
                v35[1] = v22;
                v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
                v26 = [v23 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:203 userInfo:v25];

                v27 = v26;
                if (v27)
                {
                  if (error)
                  {
                    v28 = v27;
                    *error = v27;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                goto LABEL_25;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v16 = v11;
      }

      else
      {
        v16 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected array but found %@", objc_opt_class()];
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v37[0] = @"propertyName";
      v37[1] = v18;
      v38[0] = keyCopy;
      v38[1] = v10;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      v20 = [v17 errorWithDomain:@"HDHealthRecordsServiceErrorDomain" code:202 userInfo:v19];

      v11 = v20;
      if (v11)
      {
        if (error)
        {
          v21 = v11;
          *error = v11;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

LABEL_25:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)medicalRecordPropertyValueForKey:(id)key expectedClass:(Class)class isArray:(BOOL)array error:(id *)error
{
  if (array)
  {
    [(HDHealthRecordClinicalItem *)self _medicalRecordPropertyArrayFromKey:key expectedClass:class error:error];
  }

  else
  {
    [(HDHealthRecordClinicalItem *)self _medicalRecordPropertyFromKey:key expectedClass:class error:error];
  }
  v6 = ;

  return v6;
}

@end