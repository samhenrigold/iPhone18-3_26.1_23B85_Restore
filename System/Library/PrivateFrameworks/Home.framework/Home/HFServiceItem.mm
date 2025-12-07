@interface HFServiceItem
+ (Class)itemClassForService:(id)service;
+ (NSDictionary)_serviceTypeToServiceItemClassMap;
+ (NSSet)supportedServiceTypes;
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
+ (id)serviceItemForService:(id)service valueSource:(id)source;
- (BOOL)actionsMayRequireDeviceUnlock;
- (BOOL)containsActions;
- (HFServiceItem)init;
- (HFServiceItem)initWithValueSource:(id)source service:(id)service;
- (HMHome)home;
- (NSSet)services;
- (NSString)debugDescription;
- (NSString)description;
- (id)_actionableCharacteristics;
- (id)_allRepresentedServices;
- (id)_augmentedStandardResultsForUpdateResponse:(id)response controlItems:(id)items;
- (id)_descriptionBuilder;
- (id)_siriEndPointProfiles;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)characteristicsToReadForCharacteristicTypes:(id)types controlItems:(id)items;
- (id)characteristicsToReadWithCharacteristicTypes:(id)types options:(id)options controlItems:(id *)items;
- (id)controlDescriptionForCharacteristic:(id)characteristic withValue:(id)value;
- (id)controlItemValueSourceForPrimaryService;
- (id)controlItemValueSourceForServices:(id)services;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)descriptionForCharacteristic:(id)characteristic withValue:(id)value;
- (id)incrementalStateIconDescriptorForPrimaryState:(int64_t)state incrementalValue:(id)value;
- (id)namingComponentForHomeKitObject;
- (id)performStandardUpdateWithCharacteristicTypes:(id)types options:(id)options;
- (id)serviceLikeBuilderInHome:(id)home;
- (void)applyInflectionToDescriptions:(id)descriptions;
@end

@implementation HFServiceItem

+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source
{
  sourceCopy = source;
  objectCopy = object;
  v8 = objc_opt_class();
  hf_homeKitObject = [objectCopy hf_homeKitObject];

  v10 = hf_homeKitObject;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v10;
    if (v11)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v12 = 0;
LABEL_8:

  v15 = [self serviceItemForService:v12 valueSource:sourceCopy];

  return v15;
}

+ (NSSet)supportedServiceTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:48 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFServiceItem supportedServiceTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

+ (NSDictionary)_serviceTypeToServiceItemClassMap
{
  if (qword_280E02438 != -1)
  {
    dispatch_once(&qword_280E02438, &__block_literal_global_232);
  }

  v3 = _MergedGlobals_3_3;

  return v3;
}

void __50__HFServiceItem__serviceTypeToServiceItemClassMap__block_invoke(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"HFServiceItems" withExtension:@"plist"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  v7 = HFLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v3;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Loading HFServiceItems.plist at URL %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v53 = v3;
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Error finding HFServiceItems.plist at URL %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
  v10 = HFLogForCategory(0);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v9;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Loaded HFServiceItems.plist data %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v53 = 0;
    _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Error loading HFServiceItems.plist data %@", buf, 0xCu);
  }

  v49 = 0;
  v50 = 200;
  v12 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:&v50 error:&v49];
  v13 = v49;
  if (v13)
  {
    v14 = HFLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v13;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Error deserializing HFServiceItems.plist %@", buf, 0xCu);
    }
  }

  v41 = v3;
  objc_opt_class();
  v15 = v12;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v39 = v15;

  objc_opt_class();
  v38 = v17;
  v18 = [v17 objectForKeyedSubscript:@"ServiceItems"];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [v20 count];
  v22 = HFLogForCategory(0);
  v23 = v22;
  v40 = v9;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Read services from HFServiceItems.plist", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_ERROR, "Error reading services from HFServiceItems.plist", buf, 2u);
  }

  v24 = [v20 mutableCopy];
  [v24 addObject:@"HFTelevisionServiceItem"];
  [v24 addObject:@"HFInputSourceServiceItem"];
  v37 = v24;
  v25 = [v24 copy];

  v26 = [MEMORY[0x277CBEB38] dictionary];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v46;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = NSClassFromString(*(*(&v45 + 1) + 8 * i));
        if ([(objc_class *)v32 isSubclassOfClass:objc_opt_class()])
        {
          v33 = v32 == 0;
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          v34 = [(objc_class *)v32 supportedServiceTypes];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __50__HFServiceItem__serviceTypeToServiceItemClassMap__block_invoke_29;
          v42[3] = &unk_277E02738;
          v43 = v26;
          v44 = v32;
          [v34 enumerateObjectsUsingBlock:v42];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v29);
  }

  v35 = [v26 copy];
  v36 = _MergedGlobals_3_3;
  _MergedGlobals_3_3 = v35;
}

+ (Class)itemClassForService:(id)service
{
  serviceCopy = service;
  _serviceTypeToServiceItemClassMap = [objc_opt_class() _serviceTypeToServiceItemClassMap];
  serviceType = [serviceCopy serviceType];

  v6 = [_serviceTypeToServiceItemClassMap objectForKeyedSubscript:serviceType];

  return v6;
}

+ (id)serviceItemForService:(id)service valueSource:(id)source
{
  sourceCopy = source;
  serviceCopy = service;
  v8 = [objc_alloc(objc_msgSend(self itemClassForService:{serviceCopy)), "initWithValueSource:service:", sourceCopy, serviceCopy}];

  return v8;
}

- (HFServiceItem)initWithValueSource:(id)source service:(id)service
{
  sourceCopy = source;
  serviceCopy = service;
  if ([(HFServiceItem *)self isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:119 description:@"HFServiceItem is an abstract base class. It must be instantiated using +serviceItemForService:valueSource: or using one of its concrete subclasses directly."];
  }

  v18.receiver = self;
  v18.super_class = HFServiceItem;
  v9 = [(HFServiceItem *)&v18 init];
  if (v9)
  {
    v10 = [HFOverrideCharacteristicValueSource alloc];
    v11 = objc_msgSend_home(serviceCopy);
    hf_suspendedStateOverrideValueProvider = [v11 hf_suspendedStateOverrideValueProvider];
    v13 = [(HFOverrideCharacteristicValueSource *)v10 initWithOriginalValueSource:sourceCopy overrideValueProvider:hf_suspendedStateOverrideValueProvider];

    valueSource = v9->_valueSource;
    v9->_valueSource = v13;
    v15 = v13;

    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (HFServiceItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_service_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:131 description:{@"%s is unavailable; use %@ instead", "-[HFServiceItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFServiceItem *)self valueSource];
  v5 = [(HFServiceItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_service(self);
  v7 = [v5 initWithValueSource:sourceCopy service:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = objc_msgSend_service(self);
  hf_prettyDescription = [v4 hf_prettyDescription];
  v6 = [v3 appendObject:hf_prettyDescription withName:@"service"];

  v7 = objc_msgSend_service(self);
  hf_childServices = [v7 hf_childServices];
  allObjects = [hf_childServices allObjects];
  [v3 appendArraySection:allObjects withName:@"childServices" skipIfEmpty:1 objectTransformer:&__block_literal_global_49_2];

  return v3;
}

- (NSString)description
{
  _descriptionBuilder = [(HFServiceItem *)self _descriptionBuilder];
  build = [_descriptionBuilder build];

  return build;
}

- (NSString)debugDescription
{
  _descriptionBuilder = [(HFServiceItem *)self _descriptionBuilder];
  latestResults = [(HFItem *)self latestResults];
  [_descriptionBuilder appendDictionarySection:latestResults withName:@"results:" skipIfEmpty:0];

  build = [_descriptionBuilder build];

  return build;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
  v5 = [v3 futureWithError:v4];

  return v5;
}

- (id)controlItemValueSourceForPrimaryService
{
  v3 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  valueSource = [(HFServiceItem *)self valueSource];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_service(self);
  characteristics = [v6 characteristics];
  v8 = [v5 setWithArray:characteristics];
  v9 = objc_msgSend_service(self);
  hf_serviceDescriptor = [v9 hf_serviceDescriptor];
  v11 = [(HFSimpleAggregatedCharacteristicValueSource *)v3 initWithValueSource:valueSource characteristics:v8 primaryServiceDescriptor:hf_serviceDescriptor];

  return v11;
}

- (id)controlItemValueSourceForServices:(id)services
{
  servicesCopy = services;
  if (![servicesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"services.count > 0"}];
  }

  _allRepresentedServices = [(HFServiceItem *)self _allRepresentedServices];
  v7 = [servicesCopy isSubsetOfSet:_allRepresentedServices];

  if ((v7 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    hf_prettyDescription = [servicesCopy hf_prettyDescription];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:196 description:{@"An HFServiceItem can only create a value source for its main service (self.service) and its child services (self.service.hf_childServices). But the client requested a value source for some other services: %@", hf_prettyDescription}];
  }

  v8 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  valueSource = [(HFServiceItem *)self valueSource];
  v10 = objc_msgSend_service(self);
  hf_serviceDescriptor = [v10 hf_serviceDescriptor];
  v12 = [(HFSimpleAggregatedCharacteristicValueSource *)v8 initWithValueSource:valueSource services:servicesCopy primaryServiceDescriptor:hf_serviceDescriptor];

  return v12;
}

- (id)_actionableCharacteristics
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = HFItemUpdateOptionDisableOptionalData;
  v9[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [(HFServiceItem *)self createControlItemsWithOptions:v3];

  v5 = [v4 na_flatMap:&__block_literal_global_67_5];
  v6 = [v5 na_filter:&__block_literal_global_73_0];

  return v6;
}

id __43__HFServiceItem__actionableCharacteristics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristicOptions];
  v4 = [v3 objectForKeyedSubscript:&unk_282525350];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFServiceItem__actionableCharacteristics__block_invoke_69;
  v8[3] = &unk_277DF2DD8;
  v9 = v2;
  v5 = v2;
  v6 = [v4 na_flatMap:v8];

  return v6;
}

id __43__HFServiceItem__actionableCharacteristics__block_invoke_69(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

- (BOOL)containsActions
{
  _actionableCharacteristics = [(HFServiceItem *)self _actionableCharacteristics];
  v3 = [_actionableCharacteristics count] != 0;

  return v3;
}

- (BOOL)actionsMayRequireDeviceUnlock
{
  _actionableCharacteristics = [(HFServiceItem *)self _actionableCharacteristics];
  v3 = [_actionableCharacteristics na_any:&__block_literal_global_75_3];

  return v3;
}

- (id)currentStateActionBuildersForHome:(id)home
{
  homeCopy = home;
  v5 = objc_msgSend_service(self);

  if (!v5)
  {
    NSLog(&cfstr_CanTFindServic.isa);
  }

  v6 = objc_msgSend_service(self);

  if (v6)
  {
    _actionableCharacteristics = [(HFServiceItem *)self _actionableCharacteristics];
    valueSource = [(HFServiceItem *)self valueSource];
    v9 = [valueSource readValuesForCharacteristics:_actionableCharacteristics];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__HFServiceItem_currentStateActionBuildersForHome___block_invoke;
    v13[3] = &unk_277DF3A40;
    v14 = _actionableCharacteristics;
    v15 = homeCopy;
    v10 = _actionableCharacteristics;
    v11 = [v9 flatMap:v13];
  }

  else
  {
    valueSource = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [MEMORY[0x277D2C900] futureWithError:valueSource];
  }

  return v11;
}

id __51__HFServiceItem_currentStateActionBuildersForHome___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = *(a1 + 32);
  v30 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v28 = 0;
    v29 = *v32;
    v27 = v5;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = [v7 characteristicType];
        v9 = [v3 responseForCharacteristicType:v8];
        v10 = [v9 value];

        if (v10)
        {
          goto LABEL_10;
        }

        v11 = [v7 value];
        if (v11 || ([v7 hf_defaultValue], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = v11;
LABEL_10:
          v12 = [(HFItemBuilder *)[HFCharacteristicWriteActionBuilder alloc] initWithHome:*(a1 + 40)];
          [(HFCharacteristicWriteActionBuilder *)v12 setCharacteristic:v7];
          [(HFCharacteristicWriteActionBuilder *)v12 setTargetValue:v10];
          [v4 addObject:v12];
          v13 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
          v14 = [v7 characteristicType];
          if (![v13 containsObject:v14] || objc_msgSend(v10, "BOOLValue"))
          {

            goto LABEL_13;
          }

          v15 = a1;
          v16 = v4;
          v17 = v3;
          v18 = objc_msgSend_service(v7);
          v19 = [v18 hf_isVisible];

          if (v19)
          {
            v13 = v28;
            v28 = v12;
            v3 = v17;
            v4 = v16;
            a1 = v15;
            v5 = v27;
LABEL_13:
          }

          else
          {
            v3 = v17;
            v4 = v16;
            a1 = v15;
            v5 = v27;
          }
        }

        ++v6;
      }

      while (v30 != v6);
      v20 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v30 = v20;
      if (!v20)
      {
        goto LABEL_23;
      }
    }
  }

  v28 = 0;
LABEL_23:

  v21 = objc_opt_new();
  v22 = v21;
  if (v28)
  {
    [v21 addObject:v28];
    v23 = v4;
  }

  else
  {
    [v4 allObjects];
    v24 = v23 = v4;
    [v22 addObjectsFromArray:v24];
  }

  v25 = [MEMORY[0x277D2C900] futureWithResult:v22];

  return v25;
}

- (HMHome)home
{
  v2 = objc_msgSend_service(self, a2);
  v3 = objc_msgSend_home(v2);

  return v3;
}

- (NSSet)services
{
  v3 = objc_msgSend_service(self, a2);
  v4 = MEMORY[0x277CBEB98];
  if (v3)
  {
    v5 = objc_msgSend_service(self);
    v6 = [v4 setWithObject:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (id)accessories
{
  services = [(HFServiceItem *)self services];
  v3 = [services na_map:&__block_literal_global_85_2];

  return v3;
}

- (id)_siriEndPointProfiles
{
  accessories = [(HFServiceItem *)self accessories];
  v3 = [accessories na_filter:&__block_literal_global_88_0];

  return v3;
}

BOOL __38__HFServiceItem__siriEndPointProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_siriEndpointProfile];
  v3 = v2 != 0;

  return v3;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  homeCopy = home;
  v5 = [HFServiceBuilder alloc];
  homeKitObject = [(HFServiceItem *)self homeKitObject];
  v7 = [(HFServiceBuilder *)v5 initWithExistingObject:homeKitObject inHome:homeCopy];

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  v2 = objc_msgSend_service(self, a2);
  v3 = [HFNamingComponents namingComponentFromService:v2];

  return v3;
}

- (id)characteristicsToReadForCharacteristicTypes:(id)types controlItems:(id)items
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke;
  v12[3] = &unk_277DF2DD8;
  v12[4] = self;
  itemsCopy = items;
  v7 = [types na_flatMap:v12];
  v8 = [v7 mutableCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_3;
  v11[3] = &unk_277E02780;
  v11[4] = self;
  v9 = [itemsCopy na_flatMap:v11];

  [v8 unionSet:v9];

  return v8;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) servicesToReadForCharacteristicType:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_2;
  v8[3] = &unk_277DF7AF8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_map:v8];

  return v6;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristicOptions];
  v5 = [v4 allCharacteristicTypes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_4;
  v19[3] = &unk_277DF2DD8;
  v6 = v3;
  v20 = v6;
  v7 = [v5 na_flatMap:v19];
  v8 = [v7 mutableCopy];

  objc_opt_class();
  v9 = v6;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 childServiceFilter];
    v13 = [v11 parentService];
    v14 = [v12 filteredChildServicesForParentService:v13];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_5;
    v18[3] = &unk_277DF7AF8;
    v18[4] = *(a1 + 32);
    v15 = [v14 na_map:v18];
    v16 = [v15 na_flatMap:&__block_literal_global_94_0];
    [v8 unionSet:v16];
  }

  return v8;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [HFServiceItem serviceItemForService:v3 valueSource:v4];

  return v5;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_6(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = a2;
  v4 = [v2 set];
  v9 = HFItemUpdateOptionDisableOptionalData;
  v10[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 createControlItemsWithOptions:v5];
  v7 = [v3 characteristicsToReadForCharacteristicTypes:v4 controlItems:v6];

  return v7;
}

- (id)performStandardUpdateWithCharacteristicTypes:(id)types options:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v8 = MEMORY[0x277CBEB98];
  typesCopy = types;
  v10 = [v8 set];
  v26 = v10;
  v11 = [(HFServiceItem *)self characteristicsToReadWithCharacteristicTypes:typesCopy options:optionsCopy controlItems:&v26];

  v12 = v26;
  v13 = [HFServiceLikeItemUpdateRequest alloc];
  v14 = objc_msgSend_service(self);
  valueSource = [(HFServiceItem *)self valueSource];
  v16 = [(HFServiceLikeItemUpdateRequest *)v13 initWithService:v14 valueSource:valueSource characteristics:v11];

  if (v16)
  {
    v17 = [(HFServiceLikeItemUpdateRequest *)v16 updateWithOptions:optionsCopy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__HFServiceItem_performStandardUpdateWithCharacteristicTypes_options___block_invoke;
    v24[3] = &unk_277DF5578;
    v24[4] = self;
    v25 = v12;
    v18 = [v17 flatMap:v24];
  }

  else
  {
    v19 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_msgSend_service(self);
      *buf = 138412802;
      selfCopy = self;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "%@:%@ Failed to create HFServiceLikeItemUpdateRequest. Service: %@ ", buf, 0x20u);
    }

    v20 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v18 = [v20 futureWithError:v17];
  }

  return v18;
}

id __70__HFServiceItem_performStandardUpdateWithCharacteristicTypes_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _augmentedStandardResultsForUpdateResponse:v4 controlItems:v3];
  v6 = [HFServiceLikeItemUpdateResponse alloc];
  v7 = [v4 displayMetadata];
  v8 = [v4 readResponse];

  v9 = [(HFServiceLikeItemUpdateResponse *)v6 initWithDisplayMetadata:v7 readResponse:v8 standardResults:v5];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

- (id)characteristicsToReadWithCharacteristicTypes:(id)types options:(id)options controlItems:(id *)items
{
  v58 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  optionsCopy = options;
  v10 = [(HFServiceItem *)self createControlItemsWithOptions:optionsCopy];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __83__HFServiceItem_characteristicsToReadWithCharacteristicTypes_options_controlItems___block_invoke;
  v56[3] = &unk_277E027A8;
  v56[4] = self;
  v11 = [v10 na_filter:v56];

  v47 = v11;
  v50 = [MEMORY[0x277CBEB58] setWithSet:v11];
  selfCopy = self;
  v12 = objc_msgSend_service(self);
  LODWORD(self) = [v12 isPrimaryService];

  if (!self)
  {
    goto LABEL_20;
  }

  itemsCopy = items;
  v45 = optionsCopy;
  v46 = typesCopy;
  [(HFServiceItem *)selfCopy _siriEndPointProfiles];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v13 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = &selRef_accessoryDidUpdatePairingIdentity_;
  v51 = *v53;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v53 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v52 + 1) + 8 * i);
      v18 = v15[171];
      mediaProfile = [v17 mediaProfile];
      if ([mediaProfile conformsToProtocol:v18])
      {
        v20 = mediaProfile;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      hf_mediaValueSource = [v21 hf_mediaValueSource];
      if (hf_mediaValueSource)
      {
        v23 = [[HFMediaControlItem alloc] initWithValueSource:hf_mediaValueSource mediaProfileContainer:v21 mediaAccessoryItemType:6 displayResults:0];
        [v50 addObject:v23];
        if (_os_feature_enabled_impl())
        {
          v24 = v15;
          v25 = +[HFHomeKitDispatcher sharedDispatcher];
          v26 = objc_msgSend_home(v25);
          if (![(HFHomePodTimerControlItem *)v26 hf_currentUserIsAdministrator])
          {
            goto LABEL_15;
          }

          hf_siriEndpointProfile = [v17 hf_siriEndpointProfile];
          supportsOnboarding = [hf_siriEndpointProfile supportsOnboarding];

          v15 = v24;
          if (supportsOnboarding)
          {
            v25 = [[HFHomePodAlarmControlItem alloc] initWithMediaProfileContainer:v21 displayResults:0];
            [v50 addObject:v25];
            v26 = [[HFHomePodTimerControlItem alloc] initWithMediaProfileContainer:v21 displayResults:0];
            [v50 addObject:v26];
LABEL_15:

            v15 = v24;
          }
        }
      }
    }

    v14 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v14);
LABEL_19:

  optionsCopy = v45;
  typesCopy = v46;
  items = itemsCopy;
LABEL_20:
  v29 = [v50 copy];

  v30 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionPreviousResults];
  v31 = [v30 objectForKeyedSubscript:@"childItems"];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = [MEMORY[0x277CBEB98] set];
  }

  v34 = v33;

  *items = [v34 na_setByDiffingWithSet:v29];
  v35 = objc_msgSend_service(selfCopy);
  hf_serviceDescriptor = [v35 hf_serviceDescriptor];
  v37 = [HFServiceState stateClassForServiceDescriptor:hf_serviceDescriptor];

  if (v37)
  {
    requiredCharacteristicTypes = [(objc_class *)v37 requiredCharacteristicTypes];
    optionalCharacteristicTypes = [(objc_class *)v37 optionalCharacteristicTypes];
    v40 = [requiredCharacteristicTypes setByAddingObjectsFromSet:optionalCharacteristicTypes];

    v41 = [typesCopy setByAddingObjectsFromSet:v40];

    typesCopy = v41;
  }

  v42 = [(HFServiceItem *)selfCopy characteristicsToReadForCharacteristicTypes:typesCopy controlItems:*items];

  return v42;
}

uint64_t __83__HFServiceItem_characteristicsToReadWithCharacteristicTypes_options_controlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _allRepresentedServices];
  v5 = [v3 supportsItemRepresentingServices:v4];

  return v5;
}

- (id)_augmentedStandardResultsForUpdateResponse:(id)response controlItems:(id)items
{
  responseCopy = response;
  itemsCopy = items;
  standardResults = [responseCopy standardResults];
  v9 = [standardResults mutableCopy];

  v10 = objc_msgSend_service(self);
  hf_serviceNameComponents = [v10 hf_serviceNameComponents];

  if (hf_serviceNameComponents)
  {
    [v9 setObject:hf_serviceNameComponents forKeyedSubscript:@"serviceNameComponents"];
    composedString = [hf_serviceNameComponents composedString];
    if (composedString)
    {
      [v9 setObject:composedString forKeyedSubscript:@"title"];
    }
  }

  v13 = objc_msgSend_service(self);
  hf_parentRoom = [v13 hf_parentRoom];

  v44 = hf_parentRoom;
  uniqueIdentifier = [hf_parentRoom uniqueIdentifier];
  if (uniqueIdentifier)
  {
    [v9 setObject:uniqueIdentifier forKeyedSubscript:@"roomIdentifier"];
  }

  v43 = uniqueIdentifier;
  [v9 setObject:itemsCopy forKeyedSubscript:@"childItems"];
  displayMetadata = [responseCopy displayMetadata];
  serviceState = [displayMetadata serviceState];

  if (serviceState)
  {
    v18 = objc_alloc_init(HFServiceStateDescriptionFormatter);
    v19 = [v9 objectForKeyedSubscript:@"description"];

    if (!v19)
    {
      v20 = [(HFServiceStateDescriptionFormatter *)v18 stringForObjectValue:serviceState];
      [v9 na_safeSetObject:v20 forKey:@"description"];
    }

    [(HFServiceStateDescriptionFormatter *)v18 setDescriptionContext:1];
    v21 = [(HFServiceStateDescriptionFormatter *)v18 stringForObjectValue:serviceState];
    [v9 na_safeSetObject:v21 forKey:@"controlDescription"];
  }

  displayMetadata2 = [responseCopy displayMetadata];
  transitioningPrimaryState = [displayMetadata2 transitioningPrimaryState];

  if (transitioningPrimaryState)
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isInStateTransition"];
  }

  else
  {
    displayMetadata3 = [responseCopy displayMetadata];
    transitioningPrimaryState = [displayMetadata3 primaryState];
  }

  v25 = objc_msgSend_service(self);
  hf_iconDescriptor = [v25 hf_iconDescriptor];

  objc_opt_class();
  v45 = itemsCopy;
  if (objc_opt_isKindOfClass())
  {
    v27 = &HFCAPackageStateOn;
    if (transitioningPrimaryState != 2)
    {
      v27 = &HFCAPackageStateOff;
    }

    identifier2 = *v27;
    v29 = objc_msgSend_service(self);
    v30 = [HFServiceIconFactory iconModifiersForService:v29];

    v31 = [HFCAPackageIconDescriptor alloc];
    identifier = [(__CFString *)hf_iconDescriptor identifier];
    v33 = [(HFCAPackageIconDescriptor *)v31 initWithPackageIdentifier:identifier state:identifier2 modifiers:v30];

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [(__CFString *)hf_iconDescriptor iconDescriptorForPrimaryState:transitioningPrimaryState];
    if (v41)
    {
      identifier2 = v41;

      hf_iconDescriptor = identifier2;
    }

    else
    {
      identifier2 = 0;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = [HFPrimaryStateIconDescriptor alloc];
    identifier2 = [(__CFString *)hf_iconDescriptor identifier];
    v33 = [(HFPrimaryStateIconDescriptor *)v42 initWithIdentifier:identifier2 primaryState:transitioningPrimaryState];

LABEL_18:
    hf_iconDescriptor = v33;
LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HFServiceItem *)self incrementalStateIconDescriptorForPrimaryState:transitioningPrimaryState incrementalValue:0];
    hf_iconDescriptor = identifier2 = hf_iconDescriptor;
    goto LABEL_19;
  }

LABEL_20:
  [v9 na_safeSetObject:hf_iconDescriptor forKey:@"icon"];
  v34 = objc_msgSend_service(self);
  hf_dateAdded = [v34 hf_dateAdded];
  [v9 na_safeSetObject:hf_dateAdded forKey:@"dateAdded"];

  v36 = objc_msgSend_service(self);
  LODWORD(hf_dateAdded) = [v36 hf_hasSetFavorite];

  if (hf_dateAdded)
  {
    v37 = MEMORY[0x277CCABB0];
    v38 = objc_msgSend_service(self);
    v39 = [v37 numberWithBool:{objc_msgSend(v38, "hf_isFavorite")}];
    [v9 setObject:v39 forKeyedSubscript:@"isFavorite"];
  }

  return v9;
}

- (id)incrementalStateIconDescriptorForPrimaryState:(int64_t)state incrementalValue:(id)value
{
  valueCopy = value;
  v7 = objc_msgSend_service(self);
  hf_iconDescriptor = [v7 hf_iconDescriptor];

  v9 = valueCopy;
  v10 = v9;
  if (state == 2)
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &unk_282525680;
    }
  }

  else
  {

    v11 = 0;
  }

  v12 = [HFIncrementalStateIconDescriptor alloc];
  identifier = [hf_iconDescriptor identifier];
  v14 = [(HFIncrementalStateIconDescriptor *)v12 initWithIdentifier:identifier incrementalState:v11];

  return v14;
}

- (id)descriptionForCharacteristic:(id)characteristic withValue:(id)value
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAA28];
  v15 = @"serviceType";
  valueCopy = value;
  characteristicCopy = characteristic;
  v9 = objc_msgSend_service(self);
  serviceType = [v9 serviceType];
  v16[0] = serviceType;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v6 hf_valueFormatterForCharacteristic:characteristicCopy options:v11];

  v13 = [v12 stringForObjectValue:valueCopy];

  return v13;
}

- (id)controlDescriptionForCharacteristic:(id)characteristic withValue:(id)value
{
  v6 = MEMORY[0x277CBEB38];
  valueCopy = value;
  characteristicCopy = characteristic;
  dictionary = [v6 dictionary];
  v10 = objc_msgSend_service(self);
  serviceType = [v10 serviceType];
  [dictionary na_safeSetObject:serviceType forKey:@"serviceType"];

  v12 = objc_msgSend_service(self);
  accessory = [v12 accessory];
  room = [accessory room];
  name = [room name];
  [dictionary na_safeSetObject:name forKey:@"roomName"];

  v16 = [MEMORY[0x277CCAA28] hf_controlDescriptionFormatterForCharacteristic:characteristicCopy options:dictionary];

  v17 = [v16 stringForObjectValue:valueCopy];

  return v17;
}

- (void)applyInflectionToDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  v4 = objc_msgSend_service(self);
  hf_serviceNameComponents = [v4 hf_serviceNameComponents];
  serviceName = [hf_serviceNameComponents serviceName];

  v7 = [descriptionsCopy objectForKeyedSubscript:@"description"];

  if (v7)
  {
    v8 = MEMORY[0x277CCA898];
    v9 = [descriptionsCopy objectForKeyedSubscript:@"description"];
    v10 = [v8 hf_attributedStringWithInflectableAccessoryStatus:v9 accessoryName:serviceName];
    string = [v10 string];
    [descriptionsCopy setObject:string forKeyedSubscript:@"description"];
  }

  v12 = [descriptionsCopy objectForKeyedSubscript:@"controlDescription"];

  if (v12)
  {
    v13 = MEMORY[0x277CCA898];
    v14 = [descriptionsCopy objectForKeyedSubscript:@"controlDescription"];
    v15 = [v13 hf_attributedStringWithInflectableAccessoryStatus:v14 accessoryName:serviceName];
    string2 = [v15 string];
    [descriptionsCopy setObject:string2 forKeyedSubscript:@"controlDescription"];
  }

  v17 = [descriptionsCopy objectForKeyedSubscript:@"detailedControlDescription"];

  if (v17)
  {
    v18 = MEMORY[0x277CCA898];
    v19 = [descriptionsCopy objectForKeyedSubscript:@"detailedControlDescription"];
    v20 = [v18 hf_attributedStringWithInflectableAccessoryStatus:v19 accessoryName:serviceName];
    string3 = [v20 string];
    [descriptionsCopy setObject:string3 forKeyedSubscript:@"detailedControlDescription"];
  }
}

- (id)_allRepresentedServices
{
  v3 = objc_msgSend_service(self, a2);
  hf_childServices = [v3 hf_childServices];
  v5 = objc_msgSend_service(self);
  v6 = [hf_childServices setByAddingObject:v5];

  return v6;
}

@end