@interface MAAutoAssetInfoFound
- (MAAutoAssetInfoFound)initWithCoder:(id)coder;
- (id)description;
- (id)initForSelector:(id)selector withLocalContentURL:(id)l withAssetAttributes:(id)attributes reportingStatus:(id)status;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetInfoFound

- (id)initForSelector:(id)selector withLocalContentURL:(id)l withAssetAttributes:(id)attributes reportingStatus:(id)status
{
  selectorCopy = selector;
  lCopy = l;
  attributesCopy = attributes;
  statusCopy = status;
  v18.receiver = self;
  v18.super_class = MAAutoAssetInfoFound;
  v15 = [(MAAutoAssetInfoFound *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_fullAssetSelector, selector);
    objc_storeStrong(p_isa + 2, l);
    objc_storeStrong(p_isa + 3, attributes);
    objc_storeStrong(p_isa + 4, status);
  }

  return p_isa;
}

- (MAAutoAssetInfoFound)initWithCoder:(id)coder
{
  v19[13] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MAAutoAssetInfoFound;
  v5 = [(MAAutoAssetInfoFound *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v19[5] = objc_opt_class();
    v19[6] = objc_opt_class();
    v19[7] = objc_opt_class();
    v19[8] = objc_opt_class();
    v19[9] = objc_opt_class();
    v19[10] = objc_opt_class();
    v19[11] = objc_opt_class();
    v19[12] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:13];
    v12 = [v10 initWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"assetAttributes"];
    assetAttributes = v5->_assetAttributes;
    v5->_assetAttributes = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentStatus"];
    currentStatus = v5->_currentStatus;
    v5->_currentStatus = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fullAssetSelector = [(MAAutoAssetInfoFound *)self fullAssetSelector];
  [coderCopy encodeObject:fullAssetSelector forKey:@"fullAssetSelector"];

  localContentURL = [(MAAutoAssetInfoFound *)self localContentURL];
  [coderCopy encodeObject:localContentURL forKey:@"localContentURL"];

  assetAttributes = [(MAAutoAssetInfoFound *)self assetAttributes];
  [coderCopy encodeObject:assetAttributes forKey:@"assetAttributes"];

  currentStatus = [(MAAutoAssetInfoFound *)self currentStatus];
  [coderCopy encodeObject:currentStatus forKey:@"currentStatus"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  summary = [(MAAutoAssetInfoFound *)self summary];
  assetAttributes = [(MAAutoAssetInfoFound *)self assetAttributes];
  v6 = [v3 stringWithFormat:@"%@|attribs:\n%@", summary, assetAttributes];

  return v6;
}

- (id)summary
{
  assetAttributes = [(MAAutoAssetInfoFound *)self assetAttributes];
  v5 = @"(w/attribs)";
  if (!assetAttributes)
  {
    v5 = &stru_1F0C1B388;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AEC0];
  fullAssetSelector = [(MAAutoAssetInfoFound *)self fullAssetSelector];
  summary = [fullAssetSelector summary];
  localContentURL = [(MAAutoAssetInfoFound *)self localContentURL];
  if (localContentURL)
  {
    localContentURL2 = [(MAAutoAssetInfoFound *)self localContentURL];
    path = [localContentURL2 path];
  }

  else
  {
    path = @"none";
  }

  currentStatus = [(MAAutoAssetInfoFound *)self currentStatus];
  summary2 = [currentStatus summary];
  v14 = [v7 stringWithFormat:@"found(%@)|URL:%@|%@%@", summary, path, summary2, v6];

  if (localContentURL)
  {
  }

  return v14;
}

@end