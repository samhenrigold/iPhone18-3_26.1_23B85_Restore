@interface MTTreatmentProfile
+ (id)treatmentProfileWithConfigData:(id)data;
- (MTTreatmentProfile)initWithConfigDictionary:(id)dictionary;
- (id)performTreatments:(id)treatments;
@end

@implementation MTTreatmentProfile

+ (id)treatmentProfileWithConfigData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
    if (treatmentProfileWithConfigData__onceToken != -1)
    {
      +[MTTreatmentProfile treatmentProfileWithConfigData:];
    }

    v5 = treatmentProfileWithConfigData__treatmentProfileCache;
    objc_sync_enter(v5);
    v6 = [treatmentProfileWithConfigData__treatmentProfileCache objectForKeyedSubscript:v4];
    if (!v6)
    {
      v6 = [[MTTreatmentProfile alloc] initWithConfigDictionary:v4];
      [treatmentProfileWithConfigData__treatmentProfileCache setObject:v6 forKeyedSubscript:v4];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __53__MTTreatmentProfile_treatmentProfileWithConfigData___block_invoke()
{
  treatmentProfileWithConfigData__treatmentProfileCache = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

- (MTTreatmentProfile)initWithConfigDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = MTTreatmentProfile;
  v5 = [(MTTreatmentProfile *)&v27 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = [v6 intValue];
    if (isKindOfClass > 1)
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"treatments"];
      if (v10)
      {
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();
        if ((v11 & 1) == 0)
        {
          v21 = MTMetricsKitOSLog(v11);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_258F4B000, v21, OS_LOG_TYPE_ERROR, "MetricsKit: Treatment profile doesn't have valid treatments configuration", buf, 2u);
          }

          goto LABEL_7;
        }
      }

      v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          v17 = 0;
          do
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [MTTreatment treatmentWithConfigData:*(*(&v22 + 1) + 8 * v17), v22];
            [v12 addObject:v18];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v15);
      }

      v19 = [v12 copy];
      [(MTTreatmentProfile *)v5 setTreatments:v19];

LABEL_18:
      v9 = v5;
      goto LABEL_19;
    }
  }

  v8 = MTMetricsKitOSLog(isKindOfClass);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Treatment profile configuration is empty or the format version is not supported", buf, 2u);
  }

LABEL_7:
  v9 = 0;
LABEL_19:

  return v9;
}

- (id)performTreatments:(id)treatments
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  treatmentsCopy = treatments;
  v14 = treatmentsCopy;
  treatments = [(MTTreatmentProfile *)self treatments];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MTTreatmentProfile_performTreatments___block_invoke;
  v8[3] = &unk_2798CE938;
  v8[4] = &v9;
  [treatments enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __40__MTTreatmentProfile_performTreatments___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(*(result + 32) + 8) + 40);
  if (v4)
  {
    v5 = result;
    *(*(*(v5 + 32) + 8) + 40) = [a2 performTreatment:{v4, a4}];

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

@end