@interface HFServiceLikeItemUpdateRequest
- (HFServiceLikeItemUpdateRequest)init;
- (HFServiceLikeItemUpdateRequest)initWithAccessory:(id)accessory valueSource:(id)source characteristics:(id)characteristics;
- (HFServiceLikeItemUpdateRequest)initWithService:(id)service valueSource:(id)source characteristics:(id)characteristics;
- (HMAccessory)accessory;
- (id)_displayMetadataForReadResponse:(id)response;
- (id)_standardResultsForReadResponse:(id)response displayMetadata:(id)metadata batteryLevelResults:(id)results updateOptions:(id)options;
- (id)updateWithOptions:(id)options;
@end

@implementation HFServiceLikeItemUpdateRequest

- (HFServiceLikeItemUpdateRequest)initWithService:(id)service valueSource:(id)source characteristics:(id)characteristics
{
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sourceCopy = source;
  characteristicsCopy = characteristics;
  if (serviceCopy && sourceCopy)
  {
    v17.receiver = self;
    v17.super_class = HFServiceLikeItemUpdateRequest;
    v12 = [(HFServiceLikeItemUpdateRequest *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_service, service);
      objc_storeStrong(p_isa + 3, source);
      objc_storeStrong(p_isa + 4, characteristics);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v15 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = serviceCopy;
      v20 = 2112;
      v21 = sourceCopy;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "HFServiceLikeItemUpdateRequest cannot init with nil service %@ or nil valueSource %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (HFServiceLikeItemUpdateRequest)initWithAccessory:(id)accessory valueSource:(id)source characteristics:(id)characteristics
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  sourceCopy = source;
  characteristicsCopy = characteristics;
  if (accessoryCopy && sourceCopy)
  {
    v19.receiver = self;
    v19.super_class = HFServiceLikeItemUpdateRequest;
    v12 = [(HFServiceLikeItemUpdateRequest *)&v19 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_accessory, accessory);
      objc_storeStrong(&v13->_valueSource, source);
      if (characteristicsCopy)
      {
        v14 = characteristicsCopy;
      }

      else
      {
        v14 = [MEMORY[0x277CBEB98] set];
      }

      characteristics = v13->_characteristics;
      v13->_characteristics = v14;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v15 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = accessoryCopy;
      v22 = 2112;
      v23 = sourceCopy;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "HFServiceLikeItemUpdateRequest cannot init with nil accessory %@ or nil valueSource %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (HFServiceLikeItemUpdateRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithService_valueSource_characteristics_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceLikeItem.m" lineNumber:105 description:{@"%s is unavailable; use %@ instead", "-[HFServiceLikeItemUpdateRequest init]", v5}];

  return 0;
}

- (HMAccessory)accessory
{
  accessory = self->_accessory;
  if (accessory)
  {
    accessory = accessory;
  }

  else
  {
    v4 = objc_msgSend_service(self, a2);
    accessory = [v4 accessory];
  }

  return accessory;
}

- (id)updateWithOptions:(id)options
{
  v29[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  characteristics = [(HFServiceLikeItemUpdateRequest *)self characteristics];
  v6 = [characteristics mutableCopy];

  v7 = objc_msgSend_service(self);

  if (v7)
  {
    v8 = objc_msgSend_service(self);
    hf_requiredCharacteristicTypesForDisplayMetadata = [v8 hf_requiredCharacteristicTypesForDisplayMetadata];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke;
    v28[3] = &unk_277DFD7C8;
    v28[4] = self;
    v10 = [hf_requiredCharacteristicTypesForDisplayMetadata na_map:v28];
    [v6 unionSet:v10];
  }

  v11 = [HFAccessoryBatteryLevelItem alloc];
  accessory = [(HFServiceLikeItemUpdateRequest *)self accessory];
  valueSource = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v14 = [(HFAccessoryBatteryLevelItem *)v11 initWithAccessory:accessory valueSource:valueSource];

  v15 = [optionsCopy mutableCopy];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{@"batteryLow", @"batteryPercentage", 0}];
  [v15 setObject:v16 forKeyedSubscript:@"accessoryBatteryDesiredKeys"];

  v17 = [(HFItem *)v14 updateWithOptions:v15];
  v18 = [v17 recover:&__block_literal_global_140];

  valueSource2 = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v20 = [valueSource2 readValuesForCharacteristics:v6];
  v29[0] = v20;
  v29[1] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

  v22 = [MEMORY[0x277D2C900] combineAllFutures:v21];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke_3;
  v26[3] = &unk_277DFCDF8;
  v26[4] = self;
  v27 = optionsCopy;
  v23 = optionsCopy;
  v24 = [v22 flatMap:v26];

  return v24;
}

id __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_msgSend_service(v2);
  v5 = [v4 hf_characteristicOfType:v3];

  return v5;
}

id __52__HFServiceLikeItemUpdateRequest_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [*(a1 + 32) _displayMetadataForReadResponse:v4];
  v7 = [*(a1 + 32) _standardResultsForReadResponse:v4 displayMetadata:v6 batteryLevelResults:v5 updateOptions:*(a1 + 40)];
  v8 = [[HFServiceLikeItemUpdateResponse alloc] initWithDisplayMetadata:v6 readResponse:v4 standardResults:v7];
  v9 = [MEMORY[0x277D2C900] futureWithResult:v8];

  return v9;
}

- (id)_displayMetadataForReadResponse:(id)response
{
  responseCopy = response;
  v5 = objc_msgSend_service(self);

  if (v5)
  {
    v6 = objc_msgSend_service(self);
    v7 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:v6 characteristicReadResponse:responseCopy];
  }

  else
  {
    accessory = [(HFServiceLikeItemUpdateRequest *)self accessory];

    if (accessory)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke;
      v12[3] = &unk_277DFD7F0;
      v12[4] = self;
      v9 = __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke(v12);
      accessory2 = [(HFServiceLikeItemUpdateRequest *)self accessory];
      v7 = [HFCharacteristicValueDisplayMetadata displayMetadataForAccessory:accessory2 withContextProvider:v9];
    }

    else
    {
      NSLog(&cfstr_NoAccessoryOrS.isa, self);
      v7 = 0;
    }
  }

  return v7;
}

id __66__HFServiceLikeItemUpdateRequest__displayMetadataForReadResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueSource];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 valueSource];
    [v5 contextProvider];
  }

  else
  {
    v5 = [v4 accessory];
    objc_msgSend_home(v5);
  }
  v6 = ;

  return v6;
}

- (id)_standardResultsForReadResponse:(id)response displayMetadata:(id)metadata batteryLevelResults:(id)results updateOptions:(id)options
{
  optionsCopy = options;
  resultsCopy = results;
  metadataCopy = metadata;
  responseCopy = response;
  v14 = objc_msgSend_service(self);
  accessory = v14;
  if (!v14)
  {
    accessory = [(HFServiceLikeItemUpdateRequest *)self accessory];
  }

  accessory2 = [(HFServiceLikeItemUpdateRequest *)self accessory];
  valueSource = [(HFServiceLikeItemUpdateRequest *)self valueSource];
  v18 = [HFServiceLikeItemResultFactory populateStandardResultsForHomeKitObject:accessory withBackingAccessory:accessory2 displayMetadata:metadataCopy readResponse:responseCopy batteryLevelResults:resultsCopy valueSource:valueSource updateOptions:optionsCopy];

  if (!v14)
  {
  }

  return v18;
}

@end