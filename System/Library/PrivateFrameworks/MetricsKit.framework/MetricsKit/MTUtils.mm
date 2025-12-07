@interface MTUtils
- (id)applyFieldsMap:(id)map sectionName:(id)name;
@end

@implementation MTUtils

- (id)applyFieldsMap:(id)map sectionName:(id)name
{
  mapCopy = map;
  nameCopy = name;
  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  sources = [config sources];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__MTUtils_applyFieldsMap_sectionName___block_invoke;
  v15[3] = &unk_2798CD458;
  v15[4] = self;
  v16 = mapCopy;
  v17 = nameCopy;
  v11 = nameCopy;
  v12 = mapCopy;
  v13 = [sources thenWithBlock:v15];

  return v13;
}

id __38__MTUtils_applyFieldsMap_sectionName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"fieldsMap" sources:v3];

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v21 = 0;
  v9 = [MTEventFieldsUtil applyFieldsMap:v6 data:v7 sectionName:v8 error:&v21];
  v10 = v21;
  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [*(a1 + 32) metricsKit];
      v12 = [v11 config];
      v13 = [@"treatmentProfiles." stringByAppendingString:*(a1 + 48)];
      v14 = [v12 configValueForKeyPath:v13 sources:v3];

      if (v14)
      {
        v15 = [MTTreatmentProfile treatmentProfileWithConfigData:v14];
        v16 = v15;
        if (v15)
        {
          v9 = [v15 performTreatments:*(a1 + 40)];

          v10 = 0;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  if (v10)
  {
    v17 = [MTPromise promiseWithError:v10];
  }

  else
  {
    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = MEMORY[0x277CBEC10];
    }

    v17 = [MTPromise promiseWithResult:v18];
  }

  v19 = v17;

  return v19;
}

@end