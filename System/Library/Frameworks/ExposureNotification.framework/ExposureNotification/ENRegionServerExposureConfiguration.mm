@interface ENRegionServerExposureConfiguration
- (ENRegionServerExposureConfiguration)initWithCoder:(id)coder;
- (ENRegionServerExposureConfiguration)initWithServerResponseDictionary:(id)dictionary;
- (id)classificationCriteriaForName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegionServerExposureConfiguration

- (ENRegionServerExposureConfiguration)initWithServerResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = 0;
    goto LABEL_25;
  }

  v5 = [dictionaryCopy objectForKeyedSubscript:@"config"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52.receiver = self;
    v52.super_class = ENRegionServerExposureConfiguration;
    v6 = [(ENRegionServerExposureConfiguration *)&v52 init];
    if (v6)
    {
      v47 = v6;
      v51 = 0;
      CFStringGetTypeID();
      v48 = dictionaryCopy;
      v46 = CFDictionaryGetTypedValue();
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = 12;
      v9 = &qword_278A4B480;
      do
      {
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = NSDictionaryGetNSNumber();
        [v7 setObject:v12 forKeyedSubscript:v11];
        v9 += 3;

        --v8;
      }

      while (v8);
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      Int64 = CFDictionaryGetInt64();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __72__ENRegionServerExposureConfiguration_initWithServerResponseDictionary___block_invoke;
      v50[3] = &unk_278A4B598;
      v50[4] = v13;
      v50[5] = Int64;
      v15 = MEMORY[0x2383EE560](v50);
      v16 = 0;
      for (i = -14; i != 15; ++i)
      {
        v15[2](v15, i, v16);
        v16 += 2;
      }

      v15[2](v15, 0x7FFFFFFFFFFFFFFFLL, 58);
      v45 = v13;
      v18 = [v13 copy];
      v19 = v7;
      [v7 setObject:v18 forKeyedSubscript:@"infectiousnessForDaysSinceOnsetOfSymptoms"];

      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = &byte_278A4B5C0;
      v22 = 3;
      do
      {
        v23 = *(v21 - 1);
        v24 = *v21;
        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (v51)
        {
          [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithUnsignedChar:Int64Ranged];
        }
        v26 = ;
        [v20 addObject:v26];
        v21 += 16;

        --v22;
      }

      while (v22);
      v27 = [v20 copy];
      [v7 setObject:v27 forKeyedSubscript:@"attenuationDurationThresholds"];

      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v29 = 1;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v49 = 0;
        v31 = [ENRegionServerExposureClassificationCriteria getCriteria:&v49 fromDictionary:v5 index:v29];
        v32 = v49;
        objc_autoreleasePoolPop(v30);
        if (!v31)
        {

          v43 = 0;
          v34 = v46;
          self = v47;
          goto LABEL_23;
        }

        if (v32)
        {
          [v28 addObject:v32];
        }

        v33 = v29++;
      }

      while (v33 <= 3);
      v34 = v46;
      v35 = [v46 copy];
      self = v47;
      appBundleIdentifier = v47->_appBundleIdentifier;
      v47->_appBundleIdentifier = v35;

      v37 = [v28 copy];
      classificationCriteria = v47->_classificationCriteria;
      v47->_classificationCriteria = v37;

      v39 = [v19 copy];
      exposureConfigurationValues = v47->_exposureConfigurationValues;
      v47->_exposureConfigurationValues = v39;

      v47->_enableRecursiveReportType = CFDictionaryGetInt64() != 0;
      v41 = 86400 * CFDictionaryGetInt64Ranged();
      if (v51)
      {
        v42 = 604800;
      }

      else
      {
        v42 = v41;
      }

      v47->_privacyParameterInputCandenceInterval = v42;
      v47->_matchingRestrictedToRegion = CFDictionaryGetInt64() != 0;
      v43 = v47;
LABEL_23:

      dictionaryCopy = v48;
      goto LABEL_24;
    }

    self = 0;
  }

  v43 = 0;
LABEL_24:

LABEL_25:
  return v43;
}

void __72__ENRegionServerExposureConfiguration_initWithServerResponseDictionary___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (((*(a1 + 40) >> a3) & 3) - 1 <= 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

- (id)classificationCriteriaForName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  classificationCriteria = [(ENRegionServerExposureConfiguration *)self classificationCriteria];
  v6 = [classificationCriteria countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(classificationCriteria);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        classificationName = [v9 classificationName];
        v11 = [classificationName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [classificationCriteria countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (ENRegionServerExposureConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (![coderCopy containsValueForKey:@"cfgv"])
  {
    v10 = MEMORY[0x277CBEC10];
LABEL_5:
    if ([coderCopy containsValueForKey:@"clsf"])
    {
      v12 = objc_alloc(MEMORY[0x277CBEB98]);
      v13 = objc_opt_class();
      selfCopy = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:selfCopy forKey:@"clsf"];

      if (!selfCopy)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    v19.receiver = self;
    v19.super_class = ENRegionServerExposureConfiguration;
    self = [(ENRegionServerExposureConfiguration *)&v19 init];
    if (self)
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
      appBundleIdentifier = self->_appBundleIdentifier;
      self->_appBundleIdentifier = v15;

      objc_storeStrong(&self->_classificationCriteria, v14);
      objc_storeStrong(&self->_exposureConfigurationValues, v10);
      self->_enableRecursiveReportType = [coderCopy decodeBoolForKey:@"enableRecursiveType"];
      [coderCopy decodeDoubleForKey:@"privacyParameterInputCandence"];
      self->_privacyParameterInputCandenceInterval = v17;
      self->_matchingRestrictedToRegion = [coderCopy decodeBoolForKey:@"isMatchingRestrictedRegion"];
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    goto LABEL_12;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 initWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"cfgv"];

  if (v10)
  {
    goto LABEL_5;
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  appBundleIdentifier = self->_appBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleId"];
  [coderCopy encodeObject:self->_classificationCriteria forKey:@"clsf"];
  [coderCopy encodeObject:self->_exposureConfigurationValues forKey:@"cfgv"];
  [coderCopy encodeBool:self->_enableRecursiveReportType forKey:@"enableRecursiveType"];
  [coderCopy encodeDouble:@"privacyParameterInputCandence" forKey:self->_privacyParameterInputCandenceInterval];
  [coderCopy encodeBool:self->_matchingRestrictedToRegion forKey:@"isMatchingRestrictedRegion"];
}

@end