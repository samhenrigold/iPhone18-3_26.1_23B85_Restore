@interface HMSetupAccessoryDescription
+ (id)shortDescription;
- (BOOL)hasAddRequest;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaired;
- (BOOL)supportsBTLE;
- (BOOL)supportsIP;
- (BOOL)supportsWAC;
- (HMAccessory)accessoryBeingReplaced;
- (HMAccessoryCategory)category;
- (HMSetupAccessoryDescription)initWithAccessoryUUID:(id)d accessoryName:(id)name appID:(id)iD homeUUID:(id)uID;
- (HMSetupAccessoryDescription)initWithAddRequestIdentifier:(id)identifier accessoryName:(id)name accessoryCategory:(id)category setupAccessoryPayload:(id)payload appID:(id)d ownershipToken:(id)token;
- (HMSetupAccessoryDescription)initWithAppIdentifier:(id)identifier homeUUID:(id)d;
- (HMSetupAccessoryDescription)initWithCoder:(id)coder;
- (HMSetupAccessoryDescription)initWithDictionaryRepresentation:(id)representation;
- (HMSetupAccessoryDescription)initWithSetupAccessoryPayload:(id)payload appID:(id)d homeUUID:(id)iD ownershipToken:(id)token;
- (HMSetupAccessoryDescription)initWithStagedCHIPAccessoryPairingIdentifier:(id)identifier;
- (NSArray)attributeDescriptions;
- (NSDictionary)dictionaryRepresentation;
- (NSString)setupCode;
- (NSString)setupID;
- (NSString)shortDescription;
- (NSUUID)suggestedRoomUniqueIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSetupCode:(id)code;
- (void)updateAccessoryCategory:(id)category;
- (void)updateAccessoryName:(id)name;
- (void)updateAppIdentifier:(id)identifier;
- (void)updateWithAccessory:(id)accessory;
- (void)updateWithAuthToken:(id)token uuid:(id)uuid;
- (void)updateWithSetupAccessoryPayload:(id)payload;
@end

@implementation HMSetupAccessoryDescription

- (HMAccessory)accessoryBeingReplaced
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryBeingReplaced);

  return WeakRetained;
}

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  accessoryName = [(HMSetupAccessoryDescription *)self accessoryName];

  if (accessoryName)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    accessoryName2 = [(HMSetupAccessoryDescription *)self accessoryName];
    v7 = [v5 initWithName:@"Accessory Name" value:accessoryName2];
    [array addObject:v7];
  }

  accessoryUUID = [(HMSetupAccessoryDescription *)self accessoryUUID];

  if (accessoryUUID)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    accessoryUUID2 = [(HMSetupAccessoryDescription *)self accessoryUUID];
    v11 = [v9 initWithName:@"Accessory UUID" value:accessoryUUID2];
    [array addObject:v11];
  }

  manufacturerName = [(HMSetupAccessoryDescription *)self manufacturerName];

  if (manufacturerName)
  {
    v13 = objc_alloc(MEMORY[0x1E69A29C8]);
    manufacturerName2 = [(HMSetupAccessoryDescription *)self manufacturerName];
    v15 = [v13 initWithName:@"Manufacturer Name" value:manufacturerName2];
    [array addObject:v15];
  }

  marketingName = [(HMSetupAccessoryDescription *)self marketingName];

  if (marketingName)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    marketingName2 = [(HMSetupAccessoryDescription *)self marketingName];
    v19 = [v17 initWithName:@"Marketing Name" value:marketingName2];
    [array addObject:v19];
  }

  installationGuideURL = [(HMSetupAccessoryDescription *)self installationGuideURL];

  if (installationGuideURL)
  {
    v21 = objc_alloc(MEMORY[0x1E69A29C8]);
    installationGuideURL2 = [(HMSetupAccessoryDescription *)self installationGuideURL];
    v23 = [v21 initWithName:@"Installation Guide URL" value:installationGuideURL2];
    [array addObject:v23];
  }

  category = [(HMSetupAccessoryDescription *)self category];

  if (category)
  {
    v25 = objc_alloc(MEMORY[0x1E69A29C8]);
    category2 = [(HMSetupAccessoryDescription *)self category];
    v27 = [v25 initWithName:@"Category" value:category2];
    [array addObject:v27];
  }

  appIdentifier = [(HMSetupAccessoryDescription *)self appIdentifier];

  if (appIdentifier)
  {
    v29 = objc_alloc(MEMORY[0x1E69A29C8]);
    appIdentifier2 = [(HMSetupAccessoryDescription *)self appIdentifier];
    v31 = [v29 initWithName:@"App Identifier" value:appIdentifier2];
    [array addObject:v31];
  }

  appBundleURL = [(HMSetupAccessoryDescription *)self appBundleURL];

  if (appBundleURL)
  {
    v33 = objc_alloc(MEMORY[0x1E69A29C8]);
    appBundleURL2 = [(HMSetupAccessoryDescription *)self appBundleURL];
    v35 = [v33 initWithName:@"App Bundle URL" value:appBundleURL2];
    [array addObject:v35];
  }

  if ([(HMSetupAccessoryDescription *)self addAndSetupAccessories])
  {
    v36 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self addAndSetupAccessories];
    v37 = HMFBooleanToString();
    v38 = [v36 initWithName:@"Add And Setup" value:v37];
    [array addObject:v38];
  }

  homeUUID = [(HMSetupAccessoryDescription *)self homeUUID];

  if (homeUUID)
  {
    v40 = objc_alloc(MEMORY[0x1E69A29C8]);
    homeUUID2 = [(HMSetupAccessoryDescription *)self homeUUID];
    v42 = [v40 initWithName:@"Home UUID" value:homeUUID2];
    [array addObject:v42];
  }

  storeID = [(HMSetupAccessoryDescription *)self storeID];

  if (storeID)
  {
    v44 = objc_alloc(MEMORY[0x1E69A29C8]);
    storeID2 = [(HMSetupAccessoryDescription *)self storeID];
    v46 = [v44 initWithName:@"Store ID" value:storeID2];
    [array addObject:v46];
  }

  bundleID = [(HMSetupAccessoryDescription *)self bundleID];

  if (bundleID)
  {
    v48 = objc_alloc(MEMORY[0x1E69A29C8]);
    bundleID2 = [(HMSetupAccessoryDescription *)self bundleID];
    v50 = [v48 initWithName:@"Bundle ID" value:bundleID2];
    [array addObject:v50];
  }

  suggestedRoomUUID = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];

  if (suggestedRoomUUID)
  {
    v52 = objc_alloc(MEMORY[0x1E69A29C8]);
    suggestedRoomUUID2 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
    v54 = [v52 initWithName:@"Suggested Room UUID" value:suggestedRoomUUID2];
    [array addObject:v54];
  }

  suggestedAccessoryName = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];

  if (suggestedAccessoryName)
  {
    v56 = objc_alloc(MEMORY[0x1E69A29C8]);
    suggestedAccessoryName2 = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];
    v58 = [v56 initWithName:@"Suggested Accessory Name" value:suggestedAccessoryName2];
    [array addObject:v58];
  }

  if ([(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI])
  {
    v59 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI];
    v60 = HMFBooleanToString();
    v61 = [v59 initWithName:@"SPI Entitled" value:v60];
    [array addObject:v61];
  }

  if ([(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload])
  {
    v62 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload];
    v63 = HMFBooleanToString();
    v64 = [v62 initWithName:@"Setup Accessory Payload Entitled" value:v63];
    [array addObject:v64];
  }

  if ([(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload])
  {
    v65 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload];
    v66 = HMFBooleanToString();
    v67 = [v65 initWithName:@"Matter Setup Payload Entitled" value:v66];
    [array addObject:v67];
  }

  if ([(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem])
  {
    v68 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem];
    v69 = HMFBooleanToString();
    v70 = [v68 initWithName:@"Setup Initiated By Other Matter Ecosystem" value:v69];
    [array addObject:v70];
  }

  setupAuthTokenUUID = [(HMSetupAccessoryDescription *)self setupAuthTokenUUID];

  if (setupAuthTokenUUID)
  {
    v72 = objc_alloc(MEMORY[0x1E69A29C8]);
    setupAuthTokenUUID2 = [(HMSetupAccessoryDescription *)self setupAuthTokenUUID];
    v74 = [v72 initWithName:@"Setup Auth Token UUID" value:setupAuthTokenUUID2];
    [array addObject:v74];
  }

  setupAuthToken = [(HMSetupAccessoryDescription *)self setupAuthToken];

  if (setupAuthToken)
  {
    v76 = objc_alloc(MEMORY[0x1E69A29C8]);
    setupAuthToken2 = [(HMSetupAccessoryDescription *)self setupAuthToken];
    v78 = [v76 initWithName:@"Setup Auth Token" value:setupAuthToken2];
    [array addObject:v78];
  }

  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];

  if (setupAccessoryPayload)
  {
    v80 = objc_alloc(MEMORY[0x1E69A29C8]);
    setupAccessoryPayload2 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    v82 = [v80 initWithName:@"Setup Accessory Payload" value:setupAccessoryPayload2];
    [array addObject:v82];
  }

  if ([(HMSetupAccessoryDescription *)self certificationStatus])
  {
    v83 = objc_alloc(MEMORY[0x1E69A29C8]);
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSetupAccessoryDescription certificationStatus](self, "certificationStatus")}];
    v85 = [v83 initWithName:@"Certification Status" value:v84];
    [array addObject:v85];
  }

  accessoryBeingReplaced = [(HMSetupAccessoryDescription *)self accessoryBeingReplaced];
  if (accessoryBeingReplaced)
  {
    v87 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Accessory Being Replaced" value:accessoryBeingReplaced];
    [array addObject:v87];
  }

  cancellationReason = [(HMSetupAccessoryDescription *)self cancellationReason];

  if (cancellationReason)
  {
    v89 = objc_alloc(MEMORY[0x1E69A29C8]);
    cancellationReason2 = [(HMSetupAccessoryDescription *)self cancellationReason];
    v91 = [v89 initWithName:@"Cancellation Reason" value:cancellationReason2];
    [array addObject:v91];
  }

  addRequestIdentifier = [(HMSetupAccessoryDescription *)self addRequestIdentifier];

  if (addRequestIdentifier)
  {
    v93 = objc_alloc(MEMORY[0x1E69A29C8]);
    addRequestIdentifier2 = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
    v95 = [v93 initWithName:@"Add Request Identifier" value:addRequestIdentifier2];
    [array addObject:v95];
  }

  setupCode = [(HMSetupAccessoryDescription *)self setupCode];

  if (setupCode)
  {
    v97 = objc_alloc(MEMORY[0x1E69A29C8]);
    setupCode2 = [(HMSetupAccessoryDescription *)self setupCode];
    v99 = HMFBooleanToString();
    v100 = [v97 initWithName:@"Has Setup Code" value:v99];
    [array addObject:v100];
  }

  ownershipToken = [(HMSetupAccessoryDescription *)self ownershipToken];

  if (ownershipToken)
  {
    v102 = objc_alloc(MEMORY[0x1E69A29C8]);
    ownershipToken2 = [(HMSetupAccessoryDescription *)self ownershipToken];
    v104 = HMFBooleanToString();
    v105 = [v102 initWithName:@"Has Ownership Token" value:v104];
    [array addObject:v105];
  }

  accessoryServerIdentifier = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];

  if (accessoryServerIdentifier)
  {
    v107 = objc_alloc(MEMORY[0x1E69A29C8]);
    accessoryServerIdentifier2 = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];
    v109 = [v107 initWithName:@"Accessory Server Identifier" value:accessoryServerIdentifier2];
    [array addObject:v109];
  }

  if ([(HMSetupAccessoryDescription *)self doNetworkScan])
  {
    v110 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryDescription *)self doNetworkScan];
    v111 = HMFBooleanToString();
    v112 = [v110 initWithName:@"Do Network Scan" value:v111];
    [array addObject:v112];
  }

  v113 = [array copy];

  return v113;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  accessoryUUID = [(HMSetupAccessoryDescription *)self accessoryUUID];
  v4 = [accessoryUUID hash];

  addRequestIdentifier = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
  v6 = [addRequestIdentifier hash] ^ v4;

  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  v8 = [setupAccessoryPayload hash];

  homeUUID = [(HMSetupAccessoryDescription *)self homeUUID];
  v10 = v8 ^ [homeUUID hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v71) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6
      && ([(HMSetupAccessoryDescription *)self accessoryUUID], v7 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 accessoryUUID], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9)
      && ([(HMSetupAccessoryDescription *)self accessoryName], v10 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 accessoryName], v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12)
      && ([(HMSetupAccessoryDescription *)self manufacturerName], v13 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 manufacturerName], v14 = objc_claimAutoreleasedReturnValue(), v15 = HMFEqualObjects(), v14, v13, v15)
      && ([(HMSetupAccessoryDescription *)self marketingName], v16 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 marketingName], v17 = objc_claimAutoreleasedReturnValue(), v18 = HMFEqualObjects(), v17, v16, v18)
      && ([(HMSetupAccessoryDescription *)self installationGuideURL], v19 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 installationGuideURL], v20 = objc_claimAutoreleasedReturnValue(), v21 = HMFEqualObjects(), v20, v19, v21)
      && ([(HMSetupAccessoryDescription *)self category], v22 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 category], v23 = objc_claimAutoreleasedReturnValue(), v24 = HMFEqualObjects(), v23, v22, v24)
      && ([(HMSetupAccessoryDescription *)self appIdentifier], v25 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 appIdentifier], v26 = objc_claimAutoreleasedReturnValue(), v27 = HMFEqualObjects(), v26, v25, v27)
      && ([(HMSetupAccessoryDescription *)self appBundleURL], v28 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 appBundleURL], v29 = objc_claimAutoreleasedReturnValue(), v30 = HMFEqualObjects(), v29, v28, v30)
      && (v31 = [(HMSetupAccessoryDescription *)self addAndSetupAccessories], v31 == [(HMSetupAccessoryDescription *)v6 addAndSetupAccessories])
      && ([(HMSetupAccessoryDescription *)self homeUUID], v32 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 homeUUID], v33 = objc_claimAutoreleasedReturnValue(), v34 = HMFEqualObjects(), v33, v32, v34)
      && ([(HMSetupAccessoryDescription *)self storeID], v35 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 storeID], v36 = objc_claimAutoreleasedReturnValue(), v37 = HMFEqualObjects(), v36, v35, v37)
      && ([(HMSetupAccessoryDescription *)self bundleID], v38 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 bundleID], v39 = objc_claimAutoreleasedReturnValue(), v40 = HMFEqualObjects(), v39, v38, v40)
      && ([(HMSetupAccessoryDescription *)self suggestedRoomUUID], v41 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 suggestedRoomUUID], v42 = objc_claimAutoreleasedReturnValue(), v43 = HMFEqualObjects(), v42, v41, v43)
      && ([(HMSetupAccessoryDescription *)self suggestedAccessoryName], v44 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 suggestedAccessoryName], v45 = objc_claimAutoreleasedReturnValue(), v46 = HMFEqualObjects(), v45, v44, v46)
      && (v47 = [(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI], v47 == [(HMSetupAccessoryDescription *)v6 isEntitledForHomeKitSPI])
      && (v48 = [(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload], v48 == [(HMSetupAccessoryDescription *)v6 isEntitledForThirdPartySetupAccessoryPayload])
      && ([(HMSetupAccessoryDescription *)self setupAccessoryPayload], v49 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 setupAccessoryPayload], v50 = objc_claimAutoreleasedReturnValue(), v51 = HMFEqualObjects(), v50, v49, v51)
      && (v52 = [(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload], v52 == [(HMSetupAccessoryDescription *)v6 isEntitledForThirdPartyMatterSetupPayload])
      && (v53 = [(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem], v53 == [(HMSetupAccessoryDescription *)v6 isSetupInitiatedByOtherMatterEcosystem])
      && (v54 = [(HMSetupAccessoryDescription *)self certificationStatus], v54 == [(HMSetupAccessoryDescription *)v6 certificationStatus])
      && ([(HMSetupAccessoryDescription *)self accessoryBeingReplaced], v55 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 accessoryBeingReplaced], v56 = objc_claimAutoreleasedReturnValue(), v57 = HMFEqualObjects(), v56, v55, v57)
      && ([(HMSetupAccessoryDescription *)self cancellationReason], v58 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 cancellationReason], v59 = objc_claimAutoreleasedReturnValue(), v60 = HMFEqualObjects(), v59, v58, v60)
      && ([(HMSetupAccessoryDescription *)self addRequestIdentifier], v61 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 addRequestIdentifier], v62 = objc_claimAutoreleasedReturnValue(), v63 = HMFEqualObjects(), v62, v61, v63)
      && ([(HMSetupAccessoryDescription *)self setupCode], v64 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 setupCode], v65 = objc_claimAutoreleasedReturnValue(), v66 = HMFEqualObjects(), v65, v64, v66)
      && ([(HMSetupAccessoryDescription *)self accessoryServerIdentifier], v67 = objc_claimAutoreleasedReturnValue(), [(HMSetupAccessoryDescription *)v6 accessoryServerIdentifier], v68 = objc_claimAutoreleasedReturnValue(), v69 = HMFEqualObjects(), v68, v67, v69))
    {
      doNetworkScan = [(HMSetupAccessoryDescription *)self doNetworkScan];
      v71 = doNetworkScan ^ [(HMSetupAccessoryDescription *)v6 doNetworkScan]^ 1;
    }

    else
    {
      LOBYTE(v71) = 0;
    }
  }

  return v71;
}

- (id)copyWithZone:(_NSZone *)zone
{
  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];

  if (setupAccessoryPayload)
  {
    v5 = [HMSetupAccessoryDescription alloc];
    setupAccessoryPayload2 = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    appIdentifier = [(HMSetupAccessoryDescription *)self appIdentifier];
    homeUUID = [(HMSetupAccessoryDescription *)self homeUUID];
    ownershipToken = [(HMSetupAccessoryDescription *)self ownershipToken];
    v10 = [(HMSetupAccessoryDescription *)v5 initWithSetupAccessoryPayload:setupAccessoryPayload2 appID:appIdentifier homeUUID:homeUUID ownershipToken:ownershipToken];
  }

  else
  {
    accessoryUUID = [(HMSetupAccessoryDescription *)self accessoryUUID];

    v12 = [HMSetupAccessoryDescription alloc];
    if (!accessoryUUID)
    {
      setupAccessoryPayload2 = [(HMSetupAccessoryDescription *)self appIdentifier];
      appIdentifier = [(HMSetupAccessoryDescription *)self homeUUID];
      v13 = [(HMSetupAccessoryDescription *)v12 initWithAppIdentifier:setupAccessoryPayload2 homeUUID:appIdentifier];
      goto LABEL_6;
    }

    setupAccessoryPayload2 = [(HMSetupAccessoryDescription *)self accessoryUUID];
    appIdentifier = [(HMSetupAccessoryDescription *)self accessoryName];
    homeUUID = [(HMSetupAccessoryDescription *)self appIdentifier];
    ownershipToken = [(HMSetupAccessoryDescription *)self homeUUID];
    v10 = [(HMSetupAccessoryDescription *)v12 initWithAccessoryUUID:setupAccessoryPayload2 accessoryName:appIdentifier appID:homeUUID homeUUID:ownershipToken];
  }

  v13 = v10;

LABEL_6:
  accessoryName = [(HMSetupAccessoryDescription *)self accessoryName];
  [(HMSetupAccessoryDescription *)v13 setAccessoryName:accessoryName];

  accessoryUUID2 = [(HMSetupAccessoryDescription *)self accessoryUUID];
  [(HMSetupAccessoryDescription *)v13 setAccessoryUUID:accessoryUUID2];

  appBundleURL = [(HMSetupAccessoryDescription *)self appBundleURL];
  [(HMSetupAccessoryDescription *)v13 setAppBundleURL:appBundleURL];

  [(HMSetupAccessoryDescription *)v13 setAddAndSetupAccessories:[(HMSetupAccessoryDescription *)self addAndSetupAccessories]];
  [(HMSetupAccessoryDescription *)v13 setCertificationStatus:[(HMSetupAccessoryDescription *)self certificationStatus]];
  suggestedRoomUUID = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
  [(HMSetupAccessoryDescription *)v13 setSuggestedRoomUUID:suggestedRoomUUID];

  suggestedAccessoryName = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];
  [(HMSetupAccessoryDescription *)v13 setSuggestedAccessoryName:suggestedAccessoryName];

  storeID = [(HMSetupAccessoryDescription *)self storeID];
  [(HMSetupAccessoryDescription *)v13 setStoreID:storeID];

  bundleID = [(HMSetupAccessoryDescription *)self bundleID];
  [(HMSetupAccessoryDescription *)v13 setBundleID:bundleID];

  [(HMSetupAccessoryDescription *)v13 setUserConsentedForReplace:[(HMSetupAccessoryDescription *)self userConsentedForReplace]];
  category = [(HMSetupAccessoryDescription *)self category];
  [(HMSetupAccessoryDescription *)v13 setCategory:category];

  cancellationReason = [(HMSetupAccessoryDescription *)self cancellationReason];
  [(HMSetupAccessoryDescription *)v13 setCancellationReason:cancellationReason];

  [(HMSetupAccessoryDescription *)v13 setEntitledForHomeKitSPI:[(HMSetupAccessoryDescription *)self isEntitledForHomeKitSPI]];
  [(HMSetupAccessoryDescription *)v13 setEntitledForThirdPartySetupAccessoryPayload:[(HMSetupAccessoryDescription *)self isEntitledForThirdPartySetupAccessoryPayload]];
  [(HMSetupAccessoryDescription *)v13 setEntitledForThirdPartyMatterSetupPayload:[(HMSetupAccessoryDescription *)self isEntitledForThirdPartyMatterSetupPayload]];
  [(HMSetupAccessoryDescription *)v13 setSetupInitiatedByOtherMatterEcosystem:[(HMSetupAccessoryDescription *)self isSetupInitiatedByOtherMatterEcosystem]];
  accessoryServerIdentifier = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];
  [(HMSetupAccessoryDescription *)v13 setAccessoryServerIdentifier:accessoryServerIdentifier];

  [(HMSetupAccessoryDescription *)v13 setDoNetworkScan:[(HMSetupAccessoryDescription *)self doNetworkScan]];
  matterCommissioneeInfo = [(HMSetupAccessoryDescription *)self matterCommissioneeInfo];
  [(HMSetupAccessoryDescription *)v13 setMatterCommissioneeInfo:matterCommissioneeInfo];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryUUID = [(HMSetupAccessoryDescription *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"uuid"];

  accessoryName = [(HMSetupAccessoryDescription *)self accessoryName];
  [coderCopy encodeObject:accessoryName forKey:@"name"];

  appIdentifier = [(HMSetupAccessoryDescription *)self appIdentifier];
  [coderCopy encodeObject:appIdentifier forKey:@"appIdentifier"];

  appBundleURL = [(HMSetupAccessoryDescription *)self appBundleURL];
  [coderCopy encodeObject:appBundleURL forKey:@"appBundleURL"];

  [coderCopy encodeBool:-[HMSetupAccessoryDescription addAndSetupAccessories](self forKey:{"addAndSetupAccessories"), @"addAndSetupAccessories"}];
  homeUUID = [(HMSetupAccessoryDescription *)self homeUUID];
  [coderCopy encodeObject:homeUUID forKey:@"homeUUID"];

  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  [coderCopy encodeObject:setupAccessoryPayload forKey:@"setupAccessoryPayload"];

  setupAuthTokenUUID = [(HMSetupAccessoryDescription *)self setupAuthTokenUUID];
  [coderCopy encodeObject:setupAuthTokenUUID forKey:@"setupAuthTokenUUID"];

  setupAuthToken = [(HMSetupAccessoryDescription *)self setupAuthToken];
  [coderCopy encodeObject:setupAuthToken forKey:@"setupAuthToken"];

  ownershipToken = [(HMSetupAccessoryDescription *)self ownershipToken];
  [coderCopy encodeObject:ownershipToken forKey:@"ownershipToken"];

  [coderCopy encodeInteger:-[HMSetupAccessoryDescription certificationStatus](self forKey:{"certificationStatus"), @"certificationStatus"}];
  suggestedRoomUUID = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
  [coderCopy encodeObject:suggestedRoomUUID forKey:@"suggestedRoomUUID"];

  suggestedAccessoryName = [(HMSetupAccessoryDescription *)self suggestedAccessoryName];
  [coderCopy encodeObject:suggestedAccessoryName forKey:@"suggestedAccessoryName"];

  storeID = [(HMSetupAccessoryDescription *)self storeID];
  [coderCopy encodeObject:storeID forKey:@"storeID"];

  bundleID = [(HMSetupAccessoryDescription *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  addRequestIdentifier = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
  [coderCopy encodeObject:addRequestIdentifier forKey:@"addRequestIdentifier"];

  cancellationReason = [(HMSetupAccessoryDescription *)self cancellationReason];
  [coderCopy encodeObject:cancellationReason forKey:@"cancelationReason"];

  marketingName = [(HMSetupAccessoryDescription *)self marketingName];
  [coderCopy encodeObject:marketingName forKey:@"marketingName"];

  installationGuideURL = [(HMSetupAccessoryDescription *)self installationGuideURL];
  [coderCopy encodeObject:installationGuideURL forKey:@"installationGuideURL"];

  [coderCopy encodeBool:-[HMSetupAccessoryDescription isEntitledForHomeKitSPI](self forKey:{"isEntitledForHomeKitSPI"), @"isEntitledForHomeKitSPI"}];
  [coderCopy encodeBool:-[HMSetupAccessoryDescription isEntitledForThirdPartySetupAccessoryPayload](self forKey:{"isEntitledForThirdPartySetupAccessoryPayload"), @"isEntitledForThirdPartySetupAccessoryPayload"}];
  [coderCopy encodeBool:-[HMSetupAccessoryDescription isEntitledForThirdPartyMatterSetupPayload](self forKey:{"isEntitledForThirdPartyMatterSetupPayload"), @"isEntitledForThirdPartyMatterSetupPayload"}];
  [coderCopy encodeBool:-[HMSetupAccessoryDescription isSetupInitiatedByOtherMatterEcosystem](self forKey:{"isSetupInitiatedByOtherMatterEcosystem"), @"isSetupInitiatedByOtherMatterEcosystem"}];
  accessoryServerIdentifier = [(HMSetupAccessoryDescription *)self accessoryServerIdentifier];
  [coderCopy encodeObject:accessoryServerIdentifier forKey:@"accessoryServerIdentifier"];

  [coderCopy encodeBool:-[HMSetupAccessoryDescription doNetworkScan](self forKey:{"doNetworkScan"), @"networkScan"}];
  matterCommissioneeInfo = [(HMSetupAccessoryDescription *)self matterCommissioneeInfo];
  [coderCopy encodeObject:matterCommissioneeInfo forKey:@"matterCommissioneeInfo"];
}

- (HMSetupAccessoryDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = HMSetupAccessoryDescription;
  v5 = [(HMSetupAccessoryDescription *)&v53 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    v7 = [v6 copy];
    accessoryUUID = v5->_accessoryUUID;
    v5->_accessoryUUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v10 = [v9 copy];
    accessoryName = v5->_accessoryName;
    v5->_accessoryName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIdentifier"];
    v13 = [v12 copy];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleURL"];
    v16 = [v15 copy];
    appBundleURL = v5->_appBundleURL;
    v5->_appBundleURL = v16;

    v5->_addAndSetupAccessories = [coderCopy decodeBoolForKey:@"addAndSetupAccessories"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    v19 = [v18 copy];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupAccessoryPayload"];
    v22 = [v21 copy];
    setupAccessoryPayload = v5->_setupAccessoryPayload;
    v5->_setupAccessoryPayload = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupAuthTokenUUID"];
    v25 = [v24 copy];
    setupAuthTokenUUID = v5->_setupAuthTokenUUID;
    v5->_setupAuthTokenUUID = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupAuthToken"];
    v28 = [v27 copy];
    setupAuthToken = v5->_setupAuthToken;
    v5->_setupAuthToken = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownershipToken"];
    ownershipToken = v5->_ownershipToken;
    v5->_ownershipToken = v30;

    v5->_certificationStatus = [coderCopy decodeIntegerForKey:@"certificationStatus"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedRoomUUID"];
    suggestedRoomUUID = v5->_suggestedRoomUUID;
    v5->_suggestedRoomUUID = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedAccessoryName"];
    suggestedAccessoryName = v5->_suggestedAccessoryName;
    v5->_suggestedAccessoryName = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addRequestIdentifier"];
    addRequestIdentifier = v5->_addRequestIdentifier;
    v5->_addRequestIdentifier = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelationReason"];
    cancellationReason = v5->_cancellationReason;
    v5->_cancellationReason = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"marketingName"];
    marketingName = v5->_marketingName;
    v5->_marketingName = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationGuideURL"];
    installationGuideURL = v5->_installationGuideURL;
    v5->_installationGuideURL = v46;

    v5->_entitledForHomeKitSPI = [coderCopy decodeBoolForKey:@"isEntitledForHomeKitSPI"];
    v5->_entitledForThirdPartySetupAccessoryPayload = [coderCopy decodeBoolForKey:@"isEntitledForThirdPartySetupAccessoryPayload"];
    v5->_entitledForThirdPartyMatterSetupPayload = [coderCopy decodeBoolForKey:@"isEntitledForThirdPartyMatterSetupPayload"];
    v5->_setupInitiatedByOtherMatterEcosystem = [coderCopy decodeBoolForKey:@"isSetupInitiatedByOtherMatterEcosystem"];
    v5->_userConsentedForReplace = 0;
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryServerIdentifier"];
    accessoryServerIdentifier = v5->_accessoryServerIdentifier;
    v5->_accessoryServerIdentifier = v48;

    v5->_doNetworkScan = [coderCopy decodeBoolForKey:@"networkScan"];
    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matterCommissioneeInfo"];
    matterCommissioneeInfo = v5->_matterCommissioneeInfo;
    v5->_matterCommissioneeInfo = v50;
  }

  return v5;
}

- (NSUUID)suggestedRoomUniqueIdentifier
{
  suggestedRoomUUID = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
  if (suggestedRoomUUID)
  {
    v4 = MEMORY[0x1E696AFB0];
    suggestedRoomUUID2 = [(HMSetupAccessoryDescription *)self suggestedRoomUUID];
    v6 = [v4 hm_deriveUUIDFromBaseUUID:suggestedRoomUUID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasAddRequest
{
  addRequestIdentifier = [(HMSetupAccessoryDescription *)self addRequestIdentifier];
  v3 = addRequestIdentifier != 0;

  return v3;
}

- (HMAccessoryCategory)category
{
  category = self->_category;
  if (category)
  {
    v3 = category;
  }

  else
  {
    v5 = +[HMHAPMetadata getSharedInstance];
    setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    categoryNumber = [setupAccessoryPayload categoryNumber];
    v3 = [v5 categoryForIdentifier:categoryNumber];
  }

  return v3;
}

- (NSString)setupID
{
  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  setupID = [setupAccessoryPayload setupID];

  return setupID;
}

- (NSString)setupCode
{
  setupCode = self->_setupCode;
  if (setupCode)
  {
    setupCode = setupCode;
  }

  else
  {
    setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
    setupCode = [setupAccessoryPayload setupCode];
  }

  return setupCode;
}

- (void)setSetupCode:(id)code
{
  codeCopy = code;
  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];

  if (!setupAccessoryPayload)
  {
    objc_storeStrong(&self->_setupCode, code);
  }
}

- (BOOL)isPaired
{
  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  isPaired = [setupAccessoryPayload isPaired];

  return isPaired;
}

- (BOOL)supportsBTLE
{
  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  supportsBTLE = [setupAccessoryPayload supportsBTLE];

  return supportsBTLE;
}

- (BOOL)supportsWAC
{
  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  supportsWAC = [setupAccessoryPayload supportsWAC];

  return supportsWAC;
}

- (BOOL)supportsIP
{
  setupAccessoryPayload = [(HMSetupAccessoryDescription *)self setupAccessoryPayload];
  supportsIP = [setupAccessoryPayload supportsIP];

  return supportsIP;
}

- (NSDictionary)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v11];
  v4 = v11;
  if (v3)
  {
    v12 = @"HMSADDRK.data";
    v13 = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = selfCopy;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize device setup request %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (void)updateWithAuthToken:(id)token uuid:(id)uuid
{
  tokenCopy = token;
  uuidCopy = uuid;
  if (tokenCopy)
  {
    v7 = uuidCopy;
    v8 = [tokenCopy copy];
    [(HMSetupAccessoryDescription *)self setSetupAuthToken:v8];

    v9 = [v7 copy];
    [(HMSetupAccessoryDescription *)self setSetupAuthTokenUUID:v9];
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v10 updateAccessoryName:v11, v12];
  }
}

- (void)updateAccessoryName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v8 = nameCopy;
    [(HMSetupAccessoryDescription *)self setAccessoryName:nameCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 updateAccessoryCategory:v6, v7];
  }
}

- (void)updateAccessoryCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    v8 = categoryCopy;
    [(HMSetupAccessoryDescription *)self setCategory:categoryCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 updateAppIdentifier:v6, v7];
  }
}

- (void)updateAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = identifierCopy;
    [(HMSetupAccessoryDescription *)self setAppIdentifier:identifierCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 updateOwnershipToken:v6, v7];
  }
}

- (void)updateWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    v12 = accessoryCopy;
    uuid = [accessoryCopy uuid];
    [(HMSetupAccessoryDescription *)self setAccessoryUUID:uuid];

    name = [v12 name];
    [(HMSetupAccessoryDescription *)self setAccessoryName:name];

    category = [v12 category];
    [(HMSetupAccessoryDescription *)self setCategory:category];

    manufacturer = [v12 manufacturer];
    [(HMSetupAccessoryDescription *)self setManufacturerName:manufacturer];
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v9 updateWithSetupAccessoryPayload:v10, v11];
  }
}

- (void)updateWithSetupAccessoryPayload:(id)payload
{
  payloadCopy = payload;
  if (payloadCopy)
  {
    v8 = payloadCopy;
    [(HMSetupAccessoryDescription *)self setSetupAccessoryPayload:payloadCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMSetupAccessoryDescription *)v5 initWithDictionaryRepresentation:v6, v7];
  }
}

- (HMSetupAccessoryDescription)initWithDictionaryRepresentation:(id)representation
{
  v25 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [(HMSetupAccessoryDescription *)self init];
  v6 = [representationCopy hmf_dataForKey:@"HMSADDRK.data"];
  if (v6)
  {
    v18 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v18];
    v8 = v18;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = representationCopy;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup accessory description from dictionary representation; failed to deserialize data %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v13 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v7 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = @"HMSADDRK.data";
      v23 = 2112;
      v24 = representationCopy;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup accessory description from dictionary representation: missing %@ key in dictionary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v13 = 0;
  }

  return v13;
}

- (HMSetupAccessoryDescription)initWithStagedCHIPAccessoryPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    v18.receiver = self;
    v18.super_class = HMSetupAccessoryDescription;
    v7 = [(HMSetupAccessoryDescription *)&v18 init];
    v8 = v7;
    if (v7)
    {
      v7->_addAndSetupAccessories = 1;
      objc_storeStrong(&v7->_accessoryServerIdentifier, identifier);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMSetupAccessoryDescription *)v10 initWithAddRequestIdentifier:v11 accessoryName:v12 accessoryCategory:v13 setupAccessoryPayload:v14 appID:v15 ownershipToken:v16, v17];
  }
}

- (HMSetupAccessoryDescription)initWithAddRequestIdentifier:(id)identifier accessoryName:(id)name accessoryCategory:(id)category setupAccessoryPayload:(id)payload appID:(id)d ownershipToken:(id)token
{
  identifierCopy = identifier;
  nameCopy = name;
  categoryCopy = category;
  payloadCopy = payload;
  dCopy = d;
  tokenCopy = token;
  v26.receiver = self;
  v26.super_class = HMSetupAccessoryDescription;
  v19 = [(HMSetupAccessoryDescription *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_addAndSetupAccessories = 1;
    objc_storeStrong(&v19->_addRequestIdentifier, identifier);
    objc_storeStrong(&v20->_accessoryName, name);
    objc_storeStrong(&v20->_category, category);
    objc_storeStrong(&v20->_setupAccessoryPayload, payload);
    v21 = [dCopy copy];
    appIdentifier = v20->_appIdentifier;
    v20->_appIdentifier = v21;

    objc_storeStrong(&v20->_ownershipToken, token);
  }

  return v20;
}

- (HMSetupAccessoryDescription)initWithSetupAccessoryPayload:(id)payload appID:(id)d homeUUID:(id)iD ownershipToken:(id)token
{
  payloadCopy = payload;
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  v21.receiver = self;
  v21.super_class = HMSetupAccessoryDescription;
  v15 = [(HMSetupAccessoryDescription *)&v21 init];
  if (v15)
  {
    v16 = [dCopy copy];
    appIdentifier = v15->_appIdentifier;
    v15->_appIdentifier = v16;

    v15->_addAndSetupAccessories = 1;
    v18 = [iDCopy copy];
    homeUUID = v15->_homeUUID;
    v15->_homeUUID = v18;

    objc_storeStrong(&v15->_setupAccessoryPayload, payload);
    v15->_certificationStatus = 0;
    objc_storeStrong(&v15->_ownershipToken, token);
  }

  return v15;
}

- (HMSetupAccessoryDescription)initWithAppIdentifier:(id)identifier homeUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HMSetupAccessoryDescription;
  v8 = [(HMSetupAccessoryDescription *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    appIdentifier = v8->_appIdentifier;
    v8->_appIdentifier = v9;

    v8->_addAndSetupAccessories = 1;
    v11 = [dCopy copy];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v11;

    v8->_certificationStatus = 0;
  }

  return v8;
}

- (HMSetupAccessoryDescription)initWithAccessoryUUID:(id)d accessoryName:(id)name appID:(id)iD homeUUID:(id)uID
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  uIDCopy = uID;
  v24.receiver = self;
  v24.super_class = HMSetupAccessoryDescription;
  v14 = [(HMSetupAccessoryDescription *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    accessoryUUID = v14->_accessoryUUID;
    v14->_accessoryUUID = v15;

    v17 = [nameCopy copy];
    accessoryName = v14->_accessoryName;
    v14->_accessoryName = v17;

    v19 = [iDCopy copy];
    appIdentifier = v14->_appIdentifier;
    v14->_appIdentifier = v19;

    v14->_addAndSetupAccessories = 0;
    v21 = [uIDCopy copy];
    homeUUID = v14->_homeUUID;
    v14->_homeUUID = v21;

    v14->_certificationStatus = 0;
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end