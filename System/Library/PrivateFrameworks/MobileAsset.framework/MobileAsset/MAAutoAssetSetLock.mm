@interface MAAutoAssetSetLock
- (MAAutoAssetSetLock)initWithCoder:(id)coder;
- (id)initForSelector:(id)selector withLocalContentURL:(id)l withAssetAttributes:(id)attributes;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetLock

- (id)initForSelector:(id)selector withLocalContentURL:(id)l withAssetAttributes:(id)attributes
{
  selectorCopy = selector;
  lCopy = l;
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSetLock;
  v12 = [(MAAutoAssetSetLock *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fullAssetSelector, selector);
    objc_storeStrong(&v13->_localContentURL, l);
    objc_storeStrong(&v13->_assetAttributes, attributes);
    v13->_inhibitedFromEmergencyRemoval = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lockReasons = v13->_lockReasons;
    v13->_lockReasons = v14;
  }

  return v13;
}

- (MAAutoAssetSetLock)initWithCoder:(id)coder
{
  v17[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MAAutoAssetSetLock;
  v5 = [(MAAutoAssetSetLock *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v17[5] = objc_opt_class();
    v17[6] = objc_opt_class();
    v17[7] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:8];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v11;

    v5->_inhibitedFromEmergencyRemoval = [coderCopy decodeBoolForKey:@"inhibitedFromEmergencyRemoval"];
    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"lockReasons"];
    lockReasons = v5->_lockReasons;
    v5->_lockReasons = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fullAssetSelector = [(MAAutoAssetSetLock *)self fullAssetSelector];
  [coderCopy encodeObject:fullAssetSelector forKey:@"fullAssetSelector"];

  localContentURL = [(MAAutoAssetSetLock *)self localContentURL];
  [coderCopy encodeObject:localContentURL forKey:@"localContentURL"];

  [coderCopy encodeBool:-[MAAutoAssetSetLock inhibitedFromEmergencyRemoval](self forKey:{"inhibitedFromEmergencyRemoval"), @"inhibitedFromEmergencyRemoval"}];
  lockReasons = [(MAAutoAssetSetLock *)self lockReasons];
  [coderCopy encodeObject:lockReasons forKey:@"lockReasons"];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  fullAssetSelector = [(MAAutoAssetSetLock *)self fullAssetSelector];
  summary = [fullAssetSelector summary];
  localContentURL = [(MAAutoAssetSetLock *)self localContentURL];
  path = [localContentURL path];
  assetAttributes = [(MAAutoAssetSetLock *)self assetAttributes];
  safeSummary = [assetAttributes safeSummary];
  if ([(MAAutoAssetSetLock *)self inhibitedFromEmergencyRemoval])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  lockReasons = [(MAAutoAssetSetLock *)self lockReasons];
  safeSummary2 = [lockReasons safeSummary];
  v13 = [v3 stringWithFormat:@"selector:%@|localURL:%@|attributes:%@|inhibitedRemoval:%@|reasons:%@", summary, path, safeSummary, v10, safeSummary2];

  return v13;
}

@end