@interface HFGenericAccessoryItem
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
- (HFGenericAccessoryItem)initWithAccessory:(id)accessory valueSource:(id)source;
- (HMHome)home;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)namingComponentForHomeKitObject;
- (id)serviceLikeBuilderInHome:(id)home;
@end

@implementation HFGenericAccessoryItem

- (HFGenericAccessoryItem)initWithAccessory:(id)accessory valueSource:(id)source
{
  accessoryCopy = accessory;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HFGenericAccessoryItem;
  v9 = [(HFGenericAccessoryItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, accessory);
    objc_storeStrong(&v10->_valueSource, source);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = [HFServiceLikeItemUpdateRequest alloc];
  accessory = [(HFGenericAccessoryItem *)self accessory];
  valueSource = [(HFGenericAccessoryItem *)self valueSource];
  v9 = [MEMORY[0x277CBEB98] set];
  v10 = [(HFServiceLikeItemUpdateRequest *)v6 initWithAccessory:accessory valueSource:valueSource characteristics:v9];

  if (v10)
  {
    v11 = [(HFServiceLikeItemUpdateRequest *)v10 updateWithOptions:optionsCopy];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__HFGenericAccessoryItem__subclass_updateWithOptions___block_invoke;
    v19[3] = &unk_277DF2828;
    v19[4] = self;
    v12 = [v11 flatMap:v19];
  }

  else
  {
    v13 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      accessory2 = [(HFGenericAccessoryItem *)self accessory];
      *buf = 138412802;
      selfCopy = self;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = accessory2;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "%@:%@ Failed to create HFServiceLikeItemUpdateRequest. Accessory: %@ ", buf, 0x20u);
    }

    v14 = MEMORY[0x277D2C900];
    v11 = [HFItemUpdateOutcome outcomeWithResults:MEMORY[0x277CBEC10]];
    v12 = [v14 futureWithResult:v11];
  }

  v15 = v12;

  return v15;
}

id __54__HFGenericAccessoryItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = [a2 standardResults];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 32) accessory];
  if ([v5 hf_requiresFirmwareUpdate])
  {
    v6 = @"HFServiceLongFormErrorDoesNotSupportNotifications";
  }

  else
  {
    v6 = @"HFServiceLongFormErrorAccessoryTypeNotSupported";
  }

  v7 = _HFLocalizedStringWithDefaultValue(v6, v6, 1);

  v8 = [*(a1 + 32) accessory];
  v9 = [v8 room];
  v10 = [v9 uniqueIdentifier];
  [v4 na_safeSetObject:v10 forKey:@"roomIdentifier"];

  v21[0] = @"description";
  v11 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryNotSupported", @"HFServiceDescriptionAccessoryNotSupported", 1);
  v22[0] = v11;
  v22[1] = v7;
  v21[1] = @"longErrorDescription";
  v21[2] = @"state";
  v22[2] = &unk_2825232E0;
  v21[3] = @"icon";
  v12 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
  v22[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  [v4 addEntriesFromDictionary:v13];

  v14 = [*(a1 + 32) accessory];
  v15 = [v14 hf_serviceNameComponents];

  if (v15)
  {
    [v4 setObject:v15 forKeyedSubscript:@"serviceNameComponents"];
    v16 = [v15 composedString];
    if (v16)
    {
      [v4 setObject:v16 forKeyedSubscript:@"title"];
    }
  }

  v17 = MEMORY[0x277D2C900];
  v18 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v19 = [v17 futureWithResult:v18];

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFGenericAccessoryItem *)self valueSource];
  v5 = [(HFGenericAccessoryItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = [HFGenericAccessoryItem alloc];
  accessory = [(HFGenericAccessoryItem *)self accessory];
  v7 = [(HFGenericAccessoryItem *)v5 initWithAccessory:accessory valueSource:sourceCopy];

  [(HFItem *)v7 copyLatestResultsFromItem:self];
  return v7;
}

- (HMHome)home
{
  accessory = [(HFGenericAccessoryItem *)self accessory];
  v3 = objc_msgSend_home(accessory);

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  accessory = [(HFGenericAccessoryItem *)self accessory];
  v4 = [v2 setWithObject:accessory];

  return v4;
}

- (NSSet)services
{
  v2 = MEMORY[0x277CBEB98];
  accessory = [(HFGenericAccessoryItem *)self accessory];
  services = [accessory services];
  v5 = [v2 setWithArray:services];

  return v5;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  homeCopy = home;
  v5 = [HFAccessoryBuilder alloc];
  homeKitObject = [(HFGenericAccessoryItem *)self homeKitObject];
  v7 = [(HFAccessoryBuilder *)v5 initWithExistingObject:homeKitObject inHome:homeCopy];

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  accessory = [(HFGenericAccessoryItem *)self accessory];
  v3 = [HFNamingComponents namingComponentFromAccessory:accessory];

  return v3;
}

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

  v15 = [[self alloc] initWithAccessory:v12 valueSource:sourceCopy];

  return v15;
}

@end