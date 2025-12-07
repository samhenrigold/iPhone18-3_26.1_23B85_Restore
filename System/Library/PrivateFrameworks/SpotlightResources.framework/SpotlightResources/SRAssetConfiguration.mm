@interface SRAssetConfiguration
+ (id)configuration;
- (SRAssetConfiguration)init;
- (id)assetTypes;
- (id)debugDescription;
- (void)clear;
- (void)setProperties:(id)properties client:(id)client;
@end

@implementation SRAssetConfiguration

+ (id)configuration
{
  v2 = objc_alloc_init(SRAssetConfiguration);

  return v2;
}

- (SRAssetConfiguration)init
{
  v14.receiver = self;
  v14.super_class = SRAssetConfiguration;
  v2 = [(SRAssetConfiguration *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v2->_properties;
    v2->_properties = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contentTypeMap = v2->_contentTypeMap;
    v2->_contentTypeMap = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clientMap = v2->_clientMap;
    v2->_clientMap = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deliveryTypeMap = v2->_deliveryTypeMap;
    v2->_deliveryTypeMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deliveryTypes = v2->_deliveryTypes;
    v2->_deliveryTypes = v11;
  }

  return v2;
}

- (id)assetTypes
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_properties;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = objc_alloc_init(SRAssetType);
        [(SRAssetType *)v8 setAssetType:v7];
        v9 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
        v10 = [v9 objectForKeyedSubscript:@"XPCName"];
        [(SRAssetType *)v8 setXpcName:v10];

        v11 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
        v12 = [v11 objectForKeyedSubscript:@"DeliveryTypes"];
        [(SRAssetType *)v8 setContentTypeMap:v12];

        [(SRAssetType *)v8 setDeliveryTypeMap:self->_deliveryTypeMap];
        contentTypeMap = [(SRAssetType *)v8 contentTypeMap];
        if (contentTypeMap)
        {
          v14 = objc_alloc(MEMORY[0x1E695DFD8]);
          contentTypeMap2 = [(SRAssetType *)v8 contentTypeMap];
          allKeys = [contentTypeMap2 allKeys];
          v17 = [v14 initWithArray:allKeys];
          [(SRAssetType *)v8 setDeliveryTypes:v17];
        }

        else
        {
          contentTypeMap2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
          [(SRAssetType *)v8 setDeliveryTypes:contentTypeMap2];
        }

        v18 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
        v19 = [v18 objectForKeyedSubscript:@"CompatibilityVersion"];
        if (v19)
        {
          v20 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v7];
          v21 = [v20 objectForKeyedSubscript:@"CompatibilityVersion"];
          -[SRAssetType setCompatibilityVersion:](v8, "setCompatibilityVersion:", [v21 integerValue]);
        }

        else
        {
          [(SRAssetType *)v8 setCompatibilityVersion:-1];
        }

        [v24 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  return v24;
}

- (id)debugDescription
{
  v3 = [&stru_1F2422260 mutableCopy];
  v4 = v3;
  if (self->_properties)
  {
    [v3 appendFormat:@"properties: %@\n\n", self->_properties];
  }

  if (self->_contentTypeMap)
  {
    [v4 appendFormat:@"contentTypeMap: %@\n\n", self->_contentTypeMap];
  }

  if (self->_clientMap)
  {
    [v4 appendFormat:@"clientMap: %@\n\n", self->_clientMap];
  }

  if (self->_deliveryTypeMap)
  {
    [v4 appendFormat:@"deliveryTypeMap: %@\n\n", self->_deliveryTypeMap];
  }

  if (self->_deliveryTypes)
  {
    [v4 appendFormat:@"deliveryTypes: %@\n\n", self->_deliveryTypes];
  }

  return v4;
}

- (void)setProperties:(id)properties client:(id)client
{
  v91 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  clientCopy = client;
  v8 = [propertiesCopy objectForKeyedSubscript:@"AssetType"];
  v9 = [propertiesCopy objectForKeyedSubscript:@"AssetProperties"];
  v10 = [v9 objectForKeyedSubscript:@"_XPCName"];
  v11 = [v9 objectForKeyedSubscript:@"_CompatibilityVersion"];
  v12 = [propertiesCopy objectForKeyedSubscript:@"DeliveryTypes"];
  v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (!v10)
  {
    v10 = v8;
  }

  if (v8 && v12)
  {
    v59 = v10;
    v60 = v9;
    v58 = v11;
    v62 = propertiesCopy;
    v63 = v12;
    v64 = clientCopy;
    if (v10 && v11)
    {
      v13 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];

      if (!v13)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(NSMutableDictionary *)self->_properties setObject:v14 forKeyedSubscript:v8];
      }

      v15 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
      [v15 setObject:v10 forKeyedSubscript:@"XPCName"];

      v16 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
      [v16 setObject:v11 forKeyedSubscript:@"CompatibilityVersion"];

      v17 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
      v18 = [v17 objectForKeyedSubscript:@"DeliveryTypes"];

      if (!v18)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v20 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
        [v20 setObject:v19 forKeyedSubscript:@"DeliveryTypes"];
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v21 = v12;
      obj = [v21 countByEnumeratingWithState:&v83 objects:v90 count:16];
      if (obj)
      {
        v67 = *v84;
        do
        {
          for (i = 0; i != obj; i = i + 1)
          {
            if (*v84 != v67)
            {
              objc_enumerationMutation(v21);
            }

            v23 = *(*(&v83 + 1) + 8 * i);
            v24 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
            v25 = [v24 objectForKeyedSubscript:@"DeliveryTypes"];
            v26 = [v25 objectForKeyedSubscript:v23];

            if (!v26)
            {
              v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v28 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
              v29 = [v28 objectForKeyedSubscript:@"DeliveryTypes"];
              [v29 setObject:v27 forKeyedSubscript:v23];
            }

            v30 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v8];
            v31 = [v30 objectForKeyedSubscript:@"DeliveryTypes"];
            v32 = [v31 objectForKeyedSubscript:v23];
            v33 = [v21 objectForKeyedSubscript:v23];
            [v32 addObjectsFromArray:v33];
          }

          obj = [v21 countByEnumeratingWithState:&v83 objects:v90 count:16];
        }

        while (obj);
      }

      clientCopy = v64;
    }

    v61 = v8;
    v34 = [(NSMutableDictionary *)self->_clientMap objectForKeyedSubscript:clientCopy];

    if (!v34)
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(NSMutableDictionary *)self->_clientMap setObject:v35 forKeyedSubscript:clientCopy];
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obja = v12;
    v68 = [obja countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (v68)
    {
      v65 = *v80;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v80 != v65)
          {
            objc_enumerationMutation(obja);
          }

          v37 = *(*(&v79 + 1) + 8 * j);
          [(NSMutableSet *)self->_deliveryTypes addObject:v37];
          v38 = [obja objectForKeyedSubscript:v37];
          [v66 addObjectsFromArray:v38];

          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v39 = [obja objectForKeyedSubscript:v37];
          v40 = [v39 countByEnumeratingWithState:&v75 objects:v88 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v76;
            do
            {
              for (k = 0; k != v41; ++k)
              {
                if (*v76 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v75 + 1) + 8 * k);
                v45 = [(NSMutableDictionary *)self->_deliveryTypeMap objectForKeyedSubscript:v44];

                if (!v45)
                {
                  v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  [(NSMutableDictionary *)self->_deliveryTypeMap setObject:v46 forKeyedSubscript:v44];
                }

                v47 = [(NSMutableDictionary *)self->_deliveryTypeMap objectForKeyedSubscript:v44];
                [v47 addObject:v37];
              }

              v41 = [v39 countByEnumeratingWithState:&v75 objects:v88 count:16];
            }

            while (v41);
          }
        }

        v68 = [obja countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v68);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v48 = v66;
    v49 = [v48 countByEnumeratingWithState:&v71 objects:v87 count:16];
    clientCopy = v64;
    if (v49)
    {
      v50 = v49;
      v51 = *v72;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v72 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v71 + 1) + 8 * m);
          v54 = [(NSMutableDictionary *)self->_contentTypeMap objectForKeyedSubscript:v53];

          if (!v54)
          {
            v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [(NSMutableDictionary *)self->_contentTypeMap setObject:v55 forKeyedSubscript:v53];
          }

          v56 = [(NSMutableDictionary *)self->_contentTypeMap objectForKeyedSubscript:v53];
          [v56 addObject:v64];

          v57 = [(NSMutableDictionary *)self->_clientMap objectForKeyedSubscript:v64];
          [v57 addObject:v53];
        }

        v50 = [v48 countByEnumeratingWithState:&v71 objects:v87 count:16];
      }

      while (v50);
    }

    v8 = v61;
    propertiesCopy = v62;
    v10 = v59;
    v9 = v60;
    v11 = v58;
    v12 = v63;
  }
}

- (void)clear
{
  [(NSMutableDictionary *)self->_properties removeAllObjects];
  [(NSMutableDictionary *)self->_contentTypeMap removeAllObjects];
  [(NSMutableDictionary *)self->_clientMap removeAllObjects];
  deliveryTypeMap = self->_deliveryTypeMap;

  [(NSMutableDictionary *)deliveryTypeMap removeAllObjects];
}

@end