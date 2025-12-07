@interface HFCharacteristicBatchReadResponse
+ (NAIdentity)na_identity;
+ (id)_aggregatedValueForValues:(id)values withAggregationPolicy:(unint64_t)policy metadata:(id)metadata;
+ (id)_averageValueForValues:(id)values metadata:(id)metadata;
+ (id)_mostAbnormalValueForValues:(id)values;
+ (id)aggregatedMetadataForCharacteristics:(id)characteristics;
+ (id)aggregatedReadResponseFromResponses:(id)responses withAggregationPolicy:(unint64_t)policy;
- (BOOL)isEqual:(id)equal;
- (HFCharacteristicBatchReadResponse)init;
- (HFCharacteristicBatchReadResponse)initWithReadResponses:(id)responses contextProvider:(id)provider;
- (NSSet)allCharacteristicTypes;
- (NSSet)allCharacteristics;
- (NSSet)allFailedReadResponses;
- (NSSet)allServices;
- (NSString)description;
- (id)_aggregatedMetadataForCharacteristicType:(id)type;
- (id)_responseForCharacteristicType:(id)type aggregationPolicy:(unint64_t)policy filter:(id)filter;
- (id)allResponsesForCharacteristicRecipe:(id)recipe;
- (id)allResponsesForCharacteristicType:(id)type;
- (id)allResponsesForCharacteristicType:(id)type inServicesOfTypes:(id)types;
- (id)allResponsesForCharacteristicTypes:(id)types;
- (id)batchResponseForService:(id)service includeChildServices:(BOOL)services;
- (id)responseForCharacteristic:(id)characteristic;
- (id)responseForCharacteristicRecipe:(id)recipe;
- (id)responseForCharacteristicType:(id)type;
- (id)responseForCharacteristicType:(id)type inService:(id)service;
- (id)responseForCharacteristicType:(id)type inService:(id)service aggregationPolicy:(unint64_t)policy;
- (id)responseForCharacteristicType:(id)type inServicesOfTypes:(id)types;
- (id)servicesWithErrorForCharacteristicType:(id)type;
- (id)servicesWithValue:(id)value forCharacteristicType:(id)type;
- (id)servicesWithValuesPassingTest:(id)test forCharacteristicType:(id)type;
- (unint64_t)defaultAggregationPolicyForCharacteristicType:(id)type;
- (unint64_t)hash;
@end

@implementation HFCharacteristicBatchReadResponse

- (HFCharacteristicBatchReadResponse)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithReadResponses_contextProvider_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicBatchReadResponse.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HFCharacteristicBatchReadResponse init]", v5}];

  return 0;
}

- (HFCharacteristicBatchReadResponse)initWithReadResponses:(id)responses contextProvider:(id)provider
{
  v39 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  providerCopy = provider;
  v37.receiver = self;
  v37.super_class = HFCharacteristicBatchReadResponse;
  v9 = [(HFCharacteristicBatchReadResponse *)&v37 init];
  v10 = v9;
  if (v9)
  {
    v30 = providerCopy;
    objc_storeStrong(&v9->_allReadResponses, responses);
    v29 = v10;
    objc_storeStrong(&v10->_contextProvider, provider);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = responsesCopy;
    obj = responsesCopy;
    v13 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          characteristic = [v17 characteristic];
          uniqueIdentifier = [characteristic uniqueIdentifier];

          v20 = [(NSDictionary *)dictionary objectForKeyedSubscript:uniqueIdentifier];

          if (v20)
          {
            v21 = [(NSDictionary *)dictionary objectForKeyedSubscript:uniqueIdentifier];
            NSLog(&cfstr_GotMultipleHfc.isa, v17, v21);
          }

          [(NSDictionary *)dictionary setObject:v17 forKeyedSubscript:uniqueIdentifier];
          characteristic2 = [v17 characteristic];
          characteristicType = [characteristic2 characteristicType];
          v24 = [(NSDictionary *)dictionary2 na_objectForKey:characteristicType withDefaultValue:&__block_literal_global_186];

          [v24 addObject:v17];
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    v10 = v29;
    responseKeyedByCharacteristicUUID = v29->_responseKeyedByCharacteristicUUID;
    v29->_responseKeyedByCharacteristicUUID = dictionary;
    v26 = dictionary;

    responsesKeyedByCharacteristicType = v29->_responsesKeyedByCharacteristicType;
    v29->_responsesKeyedByCharacteristicType = dictionary2;

    providerCopy = v30;
    responsesCopy = v31;
  }

  return v10;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_297 != -1)
  {
    dispatch_once(&_MergedGlobals_297, &__block_literal_global_17_8);
  }

  v3 = qword_280E039B0;

  return v3;
}

void __48__HFCharacteristicBatchReadResponse_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_24_7];
  v2 = [v0 appendCharacteristic:&__block_literal_global_26_1];
  v3 = [v0 build];

  v4 = qword_280E039B0;
  qword_280E039B0 = v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
  allObjects = [allReadResponses allObjects];
  [v3 appendArraySection:allObjects withName:@"readResponses" skipIfEmpty:0];

  build = [v3 build];

  return build;
}

- (NSSet)allFailedReadResponses
{
  allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
  v3 = [allReadResponses na_filter:&__block_literal_global_33_4];

  return v3;
}

BOOL __59__HFCharacteristicBatchReadResponse_allFailedReadResponses__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 != 0;

  return v3;
}

- (NSSet)allCharacteristics
{
  allCharacteristics = self->_allCharacteristics;
  if (!allCharacteristics)
  {
    allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
    v5 = [allReadResponses na_map:&__block_literal_global_36_4];
    v6 = self->_allCharacteristics;
    self->_allCharacteristics = v5;

    allCharacteristics = self->_allCharacteristics;
  }

  return allCharacteristics;
}

- (id)responseForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  responseKeyedByCharacteristicUUID = [(HFCharacteristicBatchReadResponse *)self responseKeyedByCharacteristicUUID];
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];

  v7 = [responseKeyedByCharacteristicUUID objectForKeyedSubscript:uniqueIdentifier];

  return v7;
}

- (NSSet)allCharacteristicTypes
{
  allCharacteristicTypes = self->_allCharacteristicTypes;
  if (!allCharacteristicTypes)
  {
    allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
    v5 = [allReadResponses na_map:&__block_literal_global_38_4];
    v6 = self->_allCharacteristicTypes;
    self->_allCharacteristicTypes = v5;

    allCharacteristicTypes = self->_allCharacteristicTypes;
  }

  return allCharacteristicTypes;
}

id __59__HFCharacteristicBatchReadResponse_allCharacteristicTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 characteristicType];

  return v3;
}

- (id)responseForCharacteristicType:(id)type
{
  typeCopy = type;
  v5 = [(HFCharacteristicBatchReadResponse *)self responseForCharacteristicType:typeCopy aggregationPolicy:[(HFCharacteristicBatchReadResponse *)self defaultAggregationPolicyForCharacteristicType:typeCopy]];

  return v5;
}

- (id)responseForCharacteristicType:(id)type inServicesOfTypes:(id)types
{
  typesCopy = types;
  typeCopy = type;
  v8 = [(HFCharacteristicBatchReadResponse *)self defaultAggregationPolicyForCharacteristicType:typeCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HFCharacteristicBatchReadResponse_responseForCharacteristicType_inServicesOfTypes___block_invoke;
  v12[3] = &unk_277DF5960;
  v13 = typesCopy;
  v9 = typesCopy;
  v10 = [(HFCharacteristicBatchReadResponse *)self _responseForCharacteristicType:typeCopy aggregationPolicy:v8 filter:v12];

  return v10;
}

uint64_t __85__HFCharacteristicBatchReadResponse_responseForCharacteristicType_inServicesOfTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  v4 = objc_msgSend_service(v3);
  v5 = [v4 serviceType];
  v6 = [v2 containsObject:v5];

  return v6;
}

- (id)responseForCharacteristicType:(id)type inService:(id)service
{
  typeCopy = type;
  serviceCopy = service;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HFCharacteristicBatchReadResponse_responseForCharacteristicType_inService___block_invoke;
  v14[3] = &unk_277DF5960;
  v8 = serviceCopy;
  v15 = v8;
  v9 = [(HFCharacteristicBatchReadResponse *)self _responseForCharacteristicType:typeCopy aggregationPolicy:1 filter:v14];
  readTraits = [v9 readTraits];
  v11 = [readTraits containsObject:@"Aggregated"];

  if (v11)
  {
    hf_prettyDescription = [v8 hf_prettyDescription];
    NSLog(&cfstr_AskedForARespo.isa, typeCopy, hf_prettyDescription);
  }

  return v9;
}

uint64_t __77__HFCharacteristicBatchReadResponse_responseForCharacteristicType_inService___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = objc_msgSend_service(v3);
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)responseForCharacteristicType:(id)type inService:(id)service aggregationPolicy:(unint64_t)policy
{
  serviceCopy = service;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HFCharacteristicBatchReadResponse_responseForCharacteristicType_inService_aggregationPolicy___block_invoke;
  v12[3] = &unk_277DF5960;
  v13 = serviceCopy;
  v9 = serviceCopy;
  v10 = [(HFCharacteristicBatchReadResponse *)self _responseForCharacteristicType:type aggregationPolicy:policy filter:v12];

  return v10;
}

uint64_t __95__HFCharacteristicBatchReadResponse_responseForCharacteristicType_inService_aggregationPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = objc_msgSend_service(v3);
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)_responseForCharacteristicType:(id)type aggregationPolicy:(unint64_t)policy filter:(id)filter
{
  filterCopy = filter;
  typeCopy = type;
  responsesKeyedByCharacteristicType = [(HFCharacteristicBatchReadResponse *)self responsesKeyedByCharacteristicType];
  v11 = [responsesKeyedByCharacteristicType objectForKeyedSubscript:typeCopy];

  if (filterCopy)
  {
    v12 = [v11 na_filter:filterCopy];

    v11 = v12;
  }

  v13 = [objc_opt_class() aggregatedReadResponseFromResponses:v11 withAggregationPolicy:policy];

  return v13;
}

- (id)allResponsesForCharacteristicType:(id)type
{
  typeCopy = type;
  responsesKeyedByCharacteristicType = [(HFCharacteristicBatchReadResponse *)self responsesKeyedByCharacteristicType];
  v6 = [responsesKeyedByCharacteristicType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (id)allResponsesForCharacteristicType:(id)type inServicesOfTypes:(id)types
{
  typesCopy = types;
  typeCopy = type;
  responsesKeyedByCharacteristicType = [(HFCharacteristicBatchReadResponse *)self responsesKeyedByCharacteristicType];
  v9 = [responsesKeyedByCharacteristicType objectForKeyedSubscript:typeCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HFCharacteristicBatchReadResponse_allResponsesForCharacteristicType_inServicesOfTypes___block_invoke;
  v13[3] = &unk_277DF5960;
  v14 = typesCopy;
  v10 = typesCopy;
  v11 = [v9 na_filter:v13];

  return v11;
}

uint64_t __89__HFCharacteristicBatchReadResponse_allResponsesForCharacteristicType_inServicesOfTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  v4 = objc_msgSend_service(v3);
  v5 = [v4 serviceType];
  v6 = [v2 containsObject:v5];

  return v6;
}

- (id)allResponsesForCharacteristicTypes:(id)types
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__HFCharacteristicBatchReadResponse_allResponsesForCharacteristicTypes___block_invoke;
  v5[3] = &unk_277DF2DD8;
  v5[4] = self;
  v3 = [types na_flatMap:v5];

  return v3;
}

- (id)allResponsesForCharacteristicRecipe:(id)recipe
{
  recipeCopy = recipe;
  responsesKeyedByCharacteristicType = [(HFCharacteristicBatchReadResponse *)self responsesKeyedByCharacteristicType];
  characteristicType = [recipeCopy characteristicType];
  v7 = [responsesKeyedByCharacteristicType objectForKeyedSubscript:characteristicType];

  v8 = [v7 na_map:&__block_literal_global_45_1];
  v9 = [v8 na_map:&__block_literal_global_48_6];
  v10 = [recipeCopy matchResultForServices:v9];

  allCharacteristics = [v10 allCharacteristics];
  v12 = [allCharacteristics na_setByIntersectingWithSet:v8];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HFCharacteristicBatchReadResponse_allResponsesForCharacteristicRecipe___block_invoke_3;
  v16[3] = &unk_277DF5960;
  v17 = v12;
  v13 = v12;
  v14 = [v7 na_filter:v16];

  return v14;
}

uint64_t __73__HFCharacteristicBatchReadResponse_allResponsesForCharacteristicRecipe___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)responseForCharacteristicRecipe:(id)recipe
{
  recipeCopy = recipe;
  v5 = [(HFCharacteristicBatchReadResponse *)self allResponsesForCharacteristicRecipe:recipeCopy];
  v6 = objc_opt_class();
  characteristicType = [recipeCopy characteristicType];

  v8 = [v6 aggregatedReadResponseFromResponses:v5 withAggregationPolicy:{-[HFCharacteristicBatchReadResponse defaultAggregationPolicyForCharacteristicType:](self, "defaultAggregationPolicyForCharacteristicType:", characteristicType)}];

  return v8;
}

- (NSSet)allServices
{
  allServices = self->_allServices;
  if (!allServices)
  {
    allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
    v5 = [allReadResponses na_map:&__block_literal_global_50_3];
    v6 = self->_allServices;
    self->_allServices = v5;

    allServices = self->_allServices;
  }

  return allServices;
}

id __48__HFCharacteristicBatchReadResponse_allServices__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = objc_msgSend_service(v2);

  return v3;
}

- (id)batchResponseForService:(id)service includeChildServices:(BOOL)services
{
  servicesCopy = services;
  serviceCopy = service;
  v7 = serviceCopy;
  if (servicesCopy)
  {
    hf_childServices = [serviceCopy hf_childServices];
  }

  else
  {
    hf_childServices = 0;
  }

  allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HFCharacteristicBatchReadResponse_batchResponseForService_includeChildServices___block_invoke;
  v17[3] = &unk_277DFF598;
  v20 = servicesCopy;
  v18 = hf_childServices;
  v19 = v7;
  v10 = v7;
  v11 = hf_childServices;
  v12 = [allReadResponses na_filter:v17];

  v13 = [HFCharacteristicBatchReadResponse alloc];
  contextProvider = [(HFCharacteristicBatchReadResponse *)self contextProvider];
  v15 = [(HFCharacteristicBatchReadResponse *)v13 initWithReadResponses:v12 contextProvider:contextProvider];

  return v15;
}

uint64_t __82__HFCharacteristicBatchReadResponse_batchResponseForService_includeChildServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && (v5 = *(a1 + 32), [v3 characteristic], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_service(v6), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = objc_msgSend(v5, "containsObject:", v7), v7, v6, (v5 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v9 = [v4 characteristic];
    v10 = objc_msgSend_service(v9);
    v8 = [v10 isEqual:*(a1 + 40)];
  }

  return v8;
}

- (id)servicesWithValue:(id)value forCharacteristicType:(id)type
{
  valueCopy = value;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HFCharacteristicBatchReadResponse_servicesWithValue_forCharacteristicType___block_invoke;
  v10[3] = &unk_277DFF5C0;
  v11 = valueCopy;
  v7 = valueCopy;
  v8 = [(HFCharacteristicBatchReadResponse *)self servicesWithValuesPassingTest:v10 forCharacteristicType:type];

  return v8;
}

- (id)servicesWithValuesPassingTest:(id)test forCharacteristicType:(id)type
{
  testCopy = test;
  typeCopy = type;
  allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __89__HFCharacteristicBatchReadResponse_servicesWithValuesPassingTest_forCharacteristicType___block_invoke;
  v17 = &unk_277DFF5E8;
  v18 = typeCopy;
  v19 = testCopy;
  v9 = testCopy;
  v10 = typeCopy;
  v11 = [allReadResponses na_filter:&v14];
  v12 = [v11 na_map:{&__block_literal_global_54_4, v14, v15, v16, v17}];

  return v12;
}

uint64_t __89__HFCharacteristicBatchReadResponse_servicesWithValuesPassingTest_forCharacteristicType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristic];
  v5 = [v4 characteristicType];
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = *(a1 + 40);
    v7 = [v3 characteristic];
    v8 = objc_msgSend_service(v7);
    v9 = [v3 value];
    v10 = (*(v6 + 16))(v6, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __89__HFCharacteristicBatchReadResponse_servicesWithValuesPassingTest_forCharacteristicType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = objc_msgSend_service(v2);

  return v3;
}

- (id)servicesWithErrorForCharacteristicType:(id)type
{
  typeCopy = type;
  allReadResponses = [(HFCharacteristicBatchReadResponse *)self allReadResponses];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HFCharacteristicBatchReadResponse_servicesWithErrorForCharacteristicType___block_invoke;
  v10[3] = &unk_277DF5960;
  v11 = typeCopy;
  v6 = typeCopy;
  v7 = [allReadResponses na_filter:v10];
  v8 = [v7 na_map:&__block_literal_global_56_2];

  return v8;
}

BOOL __76__HFCharacteristicBatchReadResponse_servicesWithErrorForCharacteristicType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristic];
  v5 = [v4 characteristicType];
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = [v3 value];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v3 error];
      v7 = v8 != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __76__HFCharacteristicBatchReadResponse_servicesWithErrorForCharacteristicType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = objc_msgSend_service(v2);

  return v3;
}

- (unint64_t)defaultAggregationPolicyForCharacteristicType:(id)type
{
  v3 = [(HFCharacteristicBatchReadResponse *)self _aggregatedMetadataForCharacteristicType:type];
  if ([v3 hf_isNumeric])
  {
    v4 = 0;
  }

  else
  {
    format = [v3 format];
    v6 = ~[format isEqualToString:*MEMORY[0x277CCF6B0]];

    v4 = v6 & 1;
  }

  return v4;
}

+ (id)aggregatedReadResponseFromResponses:(id)responses withAggregationPolicy:(unint64_t)policy
{
  responsesCopy = responses;
  if ([responsesCopy count] > 1)
  {
    v8 = MEMORY[0x277CCA940];
    allObjects = [responsesCopy allObjects];
    v10 = [allObjects na_map:&__block_literal_global_59_4];
    v11 = [v8 setWithArray:v10];

    v12 = [responsesCopy na_map:&__block_literal_global_61_4];
    v13 = [self aggregatedMetadataForCharacteristics:v12];

    v14 = [self _aggregatedValueForValues:v11 withAggregationPolicy:policy metadata:v13];
    v15 = [responsesCopy na_map:&__block_literal_global_63_2];
    na_setByFlattening = [v15 na_setByFlattening];
    v17 = [na_setByFlattening setByAddingObject:@"Aggregated"];

    anyObject = [responsesCopy anyObject];
    characteristic = [anyObject characteristic];

    v20 = [responsesCopy na_firstObjectPassingTest:&__block_literal_global_65_3];
    error = [v20 error];

    anyObject2 = [[HFCharacteristicReadResponse alloc] initWithCharacteristic:characteristic readTraits:v17 value:v14 error:error];
  }

  else
  {
    anyObject2 = [responsesCopy anyObject];
  }

  return anyObject2;
}

BOOL __95__HFCharacteristicBatchReadResponse_aggregatedReadResponseFromResponses_withAggregationPolicy___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 != 0;

  return v3;
}

- (id)_aggregatedMetadataForCharacteristicType:(id)type
{
  v3 = [(HFCharacteristicBatchReadResponse *)self allResponsesForCharacteristicType:type];
  v4 = [v3 na_map:&__block_literal_global_68_2];

  v5 = [objc_opt_class() aggregatedMetadataForCharacteristics:v4];

  return v5;
}

+ (id)aggregatedMetadataForCharacteristics:(id)characteristics
{
  v30 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [characteristicsCopy countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v20;
    *&v5 = 138412802;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(characteristicsCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        metadata = [v10 metadata];
        v12 = metadata;
        if (v7)
        {
          if (([v7 hf_isEqualToMetadata:metadata] & 1) == 0)
          {
            v13 = HFLogForCategory(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              hf_characteristicTypeDescription = [v10 hf_characteristicTypeDescription];
              hf_prettyDescription = [v12 hf_prettyDescription];
              hf_prettyDescription2 = [v7 hf_prettyDescription];
              *buf = v18;
              v24 = hf_characteristicTypeDescription;
              v25 = 2112;
              v26 = hf_prettyDescription;
              v27 = 2112;
              v28 = hf_prettyDescription2;
              _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Found different metadata for characteristic type %@! %@ and %@ are not identical. Using the first metadata found.", buf, 0x20u);
            }
          }
        }

        else
        {
          v7 = metadata;
        }
      }

      v6 = [characteristicsCopy countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_aggregatedValueForValues:(id)values withAggregationPolicy:(unint64_t)policy metadata:(id)metadata
{
  valuesCopy = values;
  metadataCopy = metadata;
  if (policy == 2)
  {
    v11 = [self _averageValueForValues:valuesCopy metadata:metadataCopy];
  }

  else if (policy == 1)
  {
    v11 = [self _mostCommonValueForValues:valuesCopy];
  }

  else
  {
    if (policy)
    {
      goto LABEL_8;
    }

    v11 = [self _mostAbnormalValueForValues:valuesCopy];
  }

  v5 = v11;
LABEL_8:

  return v5;
}

+ (id)_mostAbnormalValueForValues:(id)values
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  valuesCopy = values;
  v5 = [valuesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSLog(&cfstr_AttemptingToUs.isa, v10);
          v13 = [self _mostCommonValueForValues:valuesCopy];

          goto LABEL_19;
        }

        if (v7)
        {
          if ([v7 na_compareAbsoluteValue:v10] == -1)
          {
            v11 = v10;
          }

          else
          {
            v11 = v7;
          }

          v12 = v11;

          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      v6 = [valuesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  v7 = v7;
  v13 = v7;
LABEL_19:

  return v13;
}

+ (id)_averageValueForValues:(id)values metadata:(id)metadata
{
  v42 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  format = [metadata format];
  if (qword_280E039B8 != -1)
  {
    dispatch_once(&qword_280E039B8, &__block_literal_global_76_2);
  }

  v9 = qword_280E039C0;
  if ([v9 containsObject:format])
  {
    v30 = a2;
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = valuesCopy;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v30 object:selfCopy file:@"HFCharacteristicBatchReadResponse.m" lineNumber:401 description:{@"Expected a numeric value, but received %@ instead!", v16}];
          }

          for (j = [v11 countForObject:v16]; j; --j)
          {
            [array addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = array;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    v21 = 0.0;
    v22 = 0.0;
    if (v20)
    {
      v23 = v20;
      v24 = *v33;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v32 + 1) + 8 * k) doubleValue];
          v22 = v22 + v26;
        }

        v23 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    if ([v19 count])
    {
      v21 = v22 / [v19 count];
    }

    if ([format isEqualToString:*MEMORY[0x277CCF6B8]])
    {
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    }

    else
    {
      if ([format isEqualToString:*MEMORY[0x277CCF6E0]])
      {
        [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithLongLong:v21];
      }
      v27 = ;
    }

    v28 = v27;
  }

  else
  {
    NSLog(&cfstr_CannotTakeTheA.isa, format);
    v28 = [self _mostCommonValueForValues:valuesCopy];
  }

  return v28;
}

void __69__HFCharacteristicBatchReadResponse__averageValueForValues_metadata___block_invoke_2()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF6B8];
  v5[0] = *MEMORY[0x277CCF6C0];
  v5[1] = v0;
  v1 = *MEMORY[0x277CCF6D0];
  v5[2] = *MEMORY[0x277CCF6E8];
  v5[3] = v1;
  v2 = *MEMORY[0x277CCF6E0];
  v5[4] = *MEMORY[0x277CCF6D8];
  v5[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v4 = qword_280E039C0;
  qword_280E039C0 = v3;
}

@end