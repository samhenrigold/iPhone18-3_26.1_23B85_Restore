@interface HDHealthRecordRuleset
+ (id)rulesetFromDictionary:(id)dictionary rulesetVersion:(id)version error:(id *)error;
- (HRSSupportedFHIRRelease)releaseSupport;
- (id)initForFHIRRelease:(id)release rulesetVersion:(id)version;
- (id)rulesetForClinicalType:(int64_t)type;
- (id)rulesetForFHIRResourceObject:(id)object;
- (id)rulesetForFHIRResourceType:(id)type;
@end

@implementation HDHealthRecordRuleset

- (id)initForFHIRRelease:(id)release rulesetVersion:(id)version
{
  releaseCopy = release;
  versionCopy = version;
  v14.receiver = self;
  v14.super_class = HDHealthRecordRuleset;
  v9 = [(HDHealthRecordRuleset *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_FHIRRelease, release);
    v11 = [versionCopy copy];
    rulesetVersion = v10->_rulesetVersion;
    v10->_rulesetVersion = v11;
  }

  return v10;
}

+ (id)rulesetFromDictionary:(id)dictionary rulesetVersion:(id)version error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  versionCopy = version;
  if (!dictionaryCopy)
  {
    [HDHealthRecordRuleset rulesetFromDictionary:a2 rulesetVersion:self error:?];
  }

  v52 = 0;
  v11 = [dictionaryCopy hk_safeStringForKeyPath:@"release" error:&v52];
  v12 = v52;
  if (v11)
  {
    v13 = HKFHIRReleaseFromNSString();
    if (v13 == *MEMORY[0x277CCBDD8])
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Ruleset specifies an unsupported release: %@", v11}];
      v32 = 0;
    }

    else
    {
      v14 = [[HDHealthRecordRuleset alloc] initForFHIRRelease:v13 rulesetVersion:versionCopy];

      v51 = 0;
      v15 = [dictionaryCopy hk_safeValueForKeyPath:@"resources" class:objc_opt_class() error:&v51];
      v12 = v51;
      if (v15)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = [v15 allKeys];
        v16 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v16)
        {
          v17 = v16;
          errorCopy = error;
          v36 = v14;
          v18 = *v48;
          v42 = v15;
          v19 = dictionary;
          v39 = versionCopy;
          v40 = dictionaryCopy;
          v37 = v13;
          v38 = v11;
LABEL_8:
          v20 = 0;
          while (1)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v47 + 1) + 8 * v20);
            v22 = objc_opt_class();
            v46 = v12;
            v23 = [v15 hk_safeValueForKeyPath:v21 class:v22 error:&v46];
            v24 = v46;

            if (!v23)
            {
              break;
            }

            v45 = v24;
            v25 = [HDHealthRecordRulesetResource resourceFromDictionary:v23 resourceName:v21 error:&v45];
            v12 = v45;

            if (!v25)
            {
              [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:100 description:@"Ruleset couldn't create rule from resource" underlyingError:v12];

              v24 = v12;
              goto LABEL_28;
            }

            resourceType = [v25 resourceType];
            array = [v19 objectForKeyedSubscript:resourceType];
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              [v19 setObject:array forKeyedSubscript:resourceType];
            }

            condition = [v25 condition];

            if (condition)
            {
              [array insertObject:v25 atIndex:0];
            }

            else
            {
              [array addObject:v25];
            }

            v29 = MEMORY[0x277CCABB0];
            clinicalType = [v25 clinicalType];
            v31 = [v29 numberWithInteger:{objc_msgSend(clinicalType, "type")}];
            [dictionary2 setObject:v25 forKeyedSubscript:v31];

            ++v20;
            v15 = v42;
            v19 = dictionary;
            if (v17 == v20)
            {
              v17 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
              versionCopy = v39;
              dictionaryCopy = v40;
              v13 = v37;
              v11 = v38;
              v14 = v36;
              if (v17)
              {
                goto LABEL_8;
              }

              goto LABEL_25;
            }
          }

          [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:100 description:@"Ruleset couldn't load resources" underlyingError:v24];
LABEL_28:

          v32 = 0;
          v12 = v24;
          versionCopy = v39;
          dictionaryCopy = v40;
          v13 = v37;
          v11 = v38;
          v14 = v36;
          v33 = dictionary2;
          goto LABEL_29;
        }

        v19 = dictionary;
LABEL_25:

        [v14 setRulesByResourceType:v19];
        v33 = dictionary2;
        [v14 setRulesByClinicalType:dictionary2];
        v32 = v14;
LABEL_29:
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Ruleset couldn't find resources" underlyingError:v12];
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (HRSSupportedFHIRRelease)releaseSupport
{
  v3 = objc_alloc(MEMORY[0x277D124C0]);
  FHIRRelease = self->_FHIRRelease;
  v5 = MEMORY[0x277CBEB98];
  allKeys = [(NSDictionary *)self->_rulesByResourceType allKeys];
  v7 = [v5 setWithArray:allKeys];
  v8 = [v3 initWithFHIRRelease:FHIRRelease resourceTypes:v7];

  return v8;
}

- (id)rulesetForClinicalType:(int64_t)type
{
  rulesByClinicalType = self->_rulesByClinicalType;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v5 = [(NSDictionary *)rulesByClinicalType objectForKeyedSubscript:v4];

  return v5;
}

- (id)rulesetForFHIRResourceType:(id)type
{
  v3 = [(NSDictionary *)self->_rulesByResourceType objectForKeyedSubscript:type];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (id)rulesetForFHIRResourceObject:(id)object
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifier = [objectCopy identifier];
  resourceType = [identifier resourceType];

  [(NSDictionary *)self->_rulesByResourceType objectForKeyedSubscript:resourceType];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 evaluateWithObject:{objectCopy, v16}])
        {
          v14 = v12;

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    [(HDHealthRecordRuleset *)v13 rulesetForFHIRResourceObject:objectCopy];
  }

  v14 = 0;
LABEL_13:

  return v14;
}

@end