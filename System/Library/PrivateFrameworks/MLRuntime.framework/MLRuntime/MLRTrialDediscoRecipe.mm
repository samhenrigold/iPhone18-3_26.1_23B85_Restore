@interface MLRTrialDediscoRecipe
- (MLRTrialDediscoRecipe)initWithAssetURL:(id)l configOverride:(id)override error:(id *)error;
- (id)description;
- (id)mlrDediscoMetadata;
@end

@implementation MLRTrialDediscoRecipe

- (MLRTrialDediscoRecipe)initWithAssetURL:(id)l configOverride:(id)override error:(id *)error
{
  v74[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  overrideCopy = override;
  if (!(lCopy | overrideCopy))
  {
    v55 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"assetURL and configOverride cannot be both nil" userInfo:0];
    objc_exception_throw(v55);
  }

  v10 = overrideCopy;
  v64.receiver = self;
  v64.super_class = MLRTrialDediscoRecipe;
  v11 = [(MLRTrialDediscoRecipe *)&v64 init];
  if (v11)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (lCopy)
    {
      errorCopy = error;
      v63 = 0;
      v13 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:8 error:&v63];
      v14 = v63;
      if (v13)
      {
        v62 = v14;
        v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v62];
        v16 = v62;

        if (v15)
        {
          v58 = v16;
          v17 = [v15 objectForKeyedSubscript:@"dediscoConfig"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v19 = [v15 objectForKeyedSubscript:@"dediscoConfig"];
            v20 = [v19 mutableCopy];

            dictionary = v20;
            v21 = v58;
            error = errorCopy;
            if (!v10)
            {
LABEL_12:
              v23 = [dictionary objectForKeyedSubscript:@"encodingSchema"];
              encodingSchema = v11->_encodingSchema;
              v11->_encodingSchema = v23;

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = [dictionary objectForKeyedSubscript:@"baseKey"];
                baseKeyFormat = v11->_baseKeyFormat;
                v11->_baseKeyFormat = v25;

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v27 = [dictionary objectForKeyedSubscript:@"DifferentialPrivacyParameters"];
                  dpConfig = v11->_dpConfig;
                  v11->_dpConfig = v27;

                  v29 = [dictionary objectForKeyedSubscript:@"DediscoTaskConfig"];
                  dediscoTaskConfig = v11->_dediscoTaskConfig;
                  v11->_dediscoTaskConfig = v29;

                  v22 = v11;
                  v31 = v21;
LABEL_29:

                  goto LABEL_30;
                }

                v61 = dictionary;
                v32 = MEMORY[0x277CCA9B8];
                v33 = v21;
                v34 = *MEMORY[0x277D05640];
                v65 = *MEMORY[0x277CCA450];
                v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@ is of wrong type, value=%@", @"baseKey", v11->_baseKeyFormat];
                v66 = v35;
                v36 = MEMORY[0x277CBEAC0];
                v37 = &v66;
                v38 = &v65;
              }

              else
              {
                v61 = dictionary;
                v32 = MEMORY[0x277CCA9B8];
                v33 = v21;
                v34 = *MEMORY[0x277D05640];
                v67 = *MEMORY[0x277CCA450];
                v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@ is of wrong type, value=%@", @"encodingSchema", v11->_encodingSchema];
                v68 = v35;
                v36 = MEMORY[0x277CBEAC0];
                v37 = &v68;
                v38 = &v67;
              }

              v47 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
              v31 = [v32 errorWithDomain:v34 code:5007 userInfo:v47];

              if (error)
              {
                v48 = v31;
                v22 = 0;
                *error = v31;
              }

              else
              {
                v22 = 0;
              }

              dictionary = v61;
              goto LABEL_29;
            }

LABEL_11:
            [dictionary addEntriesFromDictionary:v10];
            goto LABEL_12;
          }

          v57 = MEMORY[0x277CCA9B8];
          v56 = *MEMORY[0x277D05640];
          v69 = *MEMORY[0x277CCA450];
          v49 = MEMORY[0x277CCACA8];
          v50 = [v15 objectForKeyedSubscript:@"dediscoConfig"];
          v51 = [v49 stringWithFormat:@"key=%@ is of wrong type, value=%@", @"dediscoConfig", v50];
          v70 = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v31 = [v57 errorWithDomain:v56 code:5007 userInfo:v52];
        }

        else
        {
          v59 = MEMORY[0x277CCA9B8];
          v44 = *MEMORY[0x277D05640];
          v71[0] = *MEMORY[0x277CCA450];
          lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to decode recipe from path=%@", lCopy];
          v71[1] = *MEMORY[0x277CCA7E8];
          v72[0] = lCopy;
          v72[1] = v16;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
          v31 = [v59 errorWithDomain:v44 code:5007 userInfo:v46];
        }

        if (errorCopy)
        {
          v53 = v31;
          *errorCopy = v31;
        }
      }

      else
      {
        v39 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277D05640];
        v73[0] = *MEMORY[0x277CCA450];
        lCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to read recipe with path=%@", lCopy];
        v73[1] = *MEMORY[0x277CCA7E8];
        v74[0] = lCopy2;
        v74[1] = v14;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
        v31 = [v39 errorWithDomain:v40 code:5007 userInfo:v42];

        if (errorCopy)
        {
          v43 = v31;
          v22 = 0;
          *errorCopy = v31;
          goto LABEL_29;
        }
      }

      v22 = 0;
      goto LABEL_29;
    }

    v21 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v22 = 0;
LABEL_30:

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  baseKeyFormat = [(MLRTrialDediscoRecipe *)self baseKeyFormat];
  encodingSchema = [(MLRTrialDediscoRecipe *)self encodingSchema];
  dpConfig = [(MLRTrialDediscoRecipe *)self dpConfig];
  dediscoTaskConfig = [(MLRTrialDediscoRecipe *)self dediscoTaskConfig];
  v10 = [v3 stringWithFormat:@"%@\n(%@, %@, %@, %@)\n", v5, baseKeyFormat, encodingSchema, dpConfig, dediscoTaskConfig];

  return v10;
}

- (id)mlrDediscoMetadata
{
  dpConfig = [(MLRTrialDediscoRecipe *)self dpConfig];

  if (dpConfig)
  {
    dediscoTaskConfig = [(MLRTrialDediscoRecipe *)self dediscoTaskConfig];

    if (dediscoTaskConfig)
    {
      v5 = MEMORY[0x277CBEB38];
      dpConfig2 = [(MLRTrialDediscoRecipe *)self dpConfig];
      dpConfig = [v5 dictionaryWithDictionary:dpConfig2];

      dediscoTaskConfig2 = [(MLRTrialDediscoRecipe *)self dediscoTaskConfig];
      [dpConfig setObject:dediscoTaskConfig2 forKeyedSubscript:@"DediscoTaskConfig"];
    }

    else
    {
      dpConfig = [(MLRTrialDediscoRecipe *)self dpConfig];
    }
  }

  return dpConfig;
}

@end