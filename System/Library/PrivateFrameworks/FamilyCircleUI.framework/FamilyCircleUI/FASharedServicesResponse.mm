@interface FASharedServicesResponse
- (FASharedServicesResponse)initWithHTTPResponse:(id)response data:(id)data;
- (void)_initializeServicesMapWithGroups:(id)groups andServices:(id)services;
- (void)_sharedServicesWithNoGrouping:(id)grouping;
@end

@implementation FASharedServicesResponse

- (FASharedServicesResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = FASharedServicesResponse;
  v4 = [(AAResponse *)&v20 initWithHTTPResponse:response data:data bodyIsPlist:1];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKeyedSubscript:@"familySharedServicesGroups"];

    responseDictionary2 = [(AAResponse *)v5 responseDictionary];
    v9 = [responseDictionary2 objectForKeyedSubscript:@"familySharedServices"];

    responseDictionary3 = [(AAResponse *)v5 responseDictionary];
    v11 = [responseDictionary3 objectForKeyedSubscript:@"locationAllowed"];

    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(FASharedServicesResponse *)v5 _setLocationAllowedWithLocation:bOOLValue];
    if (v9)
    {
      [(FASharedServicesResponse *)v5 _sharedServicesWithNoGrouping:v9];
      if (v7)
      {
        [(FASharedServicesResponse *)v5 _initializeServicesMapWithGroups:v7 andServices:v9];
      }
    }

    else
    {
      responseDictionary4 = [(AAResponse *)v5 responseDictionary];
      v14 = [responseDictionary4 objectForKeyedSubscript:@"status"];

      responseDictionary5 = [(AAResponse *)v5 responseDictionary];
      v16 = [responseDictionary5 objectForKeyedSubscript:@"status-message"];

      v18 = _FALogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_21BB35000, v18, OS_LOG_TYPE_DEFAULT, "Error: Shared services not seen in server response data with status=%@ message=%@", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (void)_initializeServicesMapWithGroups:(id)groups andServices:(id)services
{
  v53 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v5 = objc_opt_new();
  v46 = v5;
  if (groupsCopy)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v44 = groupsCopy;
    v6 = groupsCopy;
    v7 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v48;
      do
      {
        v10 = 0;
        do
        {
          if (*v48 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(MEMORY[0x277D08340]) initWithServerResponse:*(*(&v47 + 1) + 8 * v10)];
          services = self->_services;
          v13 = MEMORY[0x277CCAC30];
          groupID = [v11 groupID];
          v15 = [v13 predicateWithFormat:@"SELF.groupID == %@", groupID];
          v16 = [(NSArray *)services filteredArrayUsingPredicate:v15];

          [v11 setServices:v16];
          [v46 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v8);
    }

    v17 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"groupID" ascending:1];
    v51 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v19 = [v46 sortedArrayUsingDescriptors:v18];
    serviceGroups = self->_serviceGroups;
    self->_serviceGroups = v19;

    v21 = self->_services;
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.groupID == %@", &stru_282D9AA68];
    v23 = [(NSArray *)v21 filteredArrayUsingPredicate:v22];

    v24 = [v23 count];
    if (v24)
    {
      v25 = _FALogSystem(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(FASharedServicesResponse *)v25 _initializeServicesMapWithGroups:v26 andServices:v27, v28, v29, v30, v31, v32];
      }

      firstObject = [(NSArray *)self->_serviceGroups firstObject];
      services = [firstObject services];
      v35 = [v23 arrayByAddingObjectsFromArray:services];

      firstObject2 = [(NSArray *)self->_serviceGroups firstObject];
      [firstObject2 setServices:v35];
    }

    groupsCopy = v44;
  }

  else
  {
    v17 = _FALogSystem(v5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(FASharedServicesResponse *)v17 _initializeServicesMapWithGroups:v37 andServices:v38, v39, v40, v41, v42, v43];
    }
  }
}

- (void)_sharedServicesWithNoGrouping:(id)grouping
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (grouping)
  {
    v4 = [grouping fa_map:&__block_literal_global_21];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"order" ascending:1];
    v16[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v7 = [v4 sortedArrayUsingDescriptors:v6];
    services = self->_services;
    self->_services = v7;
  }

  else
  {
    v4 = _FALogSystem(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FASharedServicesResponse *)v4 _sharedServicesWithNoGrouping:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

id __58__FASharedServicesResponse__sharedServicesWithNoGrouping___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D08338];
  v3 = a2;
  v4 = [[v2 alloc] initWithDictionary:v3];

  return v4;
}

@end