@interface MSDStoreContactsModel
+ (MSDStoreContactsModel)sharedInstance;
- (MSDStoreContactsModel)init;
- (id)contactNumberForCountryCode:(id)code;
@end

@implementation MSDStoreContactsModel

+ (MSDStoreContactsModel)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[MSDStoreContactsModel sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __39__MSDStoreContactsModel_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(MSDStoreContactsModel);

  return MEMORY[0x2821F96F8]();
}

- (MSDStoreContactsModel)init
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = MSDStoreContactsModel;
  v35 = [(MSDStoreContactsModel *)&v44 init];
  if (v35)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 URLForResource:@"contact" withExtension:@"json"];

    v28 = v3;
    v27 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
    v26 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
    v4 = [v26 objectForKey:@"area_ar"];
    v5 = objc_opt_new();
    [(MSDStoreContactsModel *)v35 setCountryCodeToNumbers:v5];

    v6 = objc_opt_new();
    regionToCountryCode = v35->_regionToCountryCode;
    v35->_regionToCountryCode = v6;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v4;
    v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (!v31)
    {
      goto LABEL_23;
    }

    v30 = *v41;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v8;
        v9 = *(*(&v40 + 1) + 8 * v8);
        v10 = objc_opt_new();
        v32 = [v9 objectForKey:@"label"];
        v11 = [v9 objectForKey:@"phone_ar"];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v34 = v11;
        v12 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v37;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v37 != v14)
              {
                objc_enumerationMutation(v34);
              }

              v16 = *(*(&v36 + 1) + 8 * i);
              v17 = [v16 objectForKey:@"country_code"];
              v18 = [v16 objectForKey:@"phone"];
              v19 = [v16 objectForKey:@"toll_free"];
              if (([v10 containsObject:v17] & 1) == 0)
              {
                [v10 addObject:v17];
              }

              countryCodeToNumbers = [(MSDStoreContactsModel *)v35 countryCodeToNumbers];
              v21 = [countryCodeToNumbers objectForKey:v17];
              if (!v21)
              {

LABEL_18:
                countryCodeToNumbers2 = [(MSDStoreContactsModel *)v35 countryCodeToNumbers];
                [countryCodeToNumbers2 setObject:v18 forKey:v17];

                goto LABEL_19;
              }

              v22 = v21;
              bOOLValue = [v19 BOOLValue];

              if (bOOLValue)
              {
                goto LABEL_18;
              }

LABEL_19:
            }

            v13 = [v34 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v13);
        }

        [(NSDictionary *)v35->_regionToCountryCode setValue:v10 forKey:v32];

        v8 = v33 + 1;
      }

      while (v33 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (!v31)
      {
LABEL_23:

        return v35;
      }
    }
  }

  return v35;
}

- (id)contactNumberForCountryCode:(id)code
{
  codeCopy = code;
  countryCodeToNumbers = [(MSDStoreContactsModel *)self countryCodeToNumbers];
  v6 = [countryCodeToNumbers objectForKey:codeCopy];

  return v6;
}

@end