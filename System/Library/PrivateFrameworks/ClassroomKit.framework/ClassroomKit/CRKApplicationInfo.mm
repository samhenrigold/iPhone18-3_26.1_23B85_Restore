@interface CRKApplicationInfo
- (BOOL)isEqual:(id)equal;
- (CRKApplicationInfo)initWithBundleIdentifier:(id)identifier shortVersionString:(id)string;
- (CRKApplicationInfo)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation CRKApplicationInfo

- (CRKApplicationInfo)initWithBundleIdentifier:(id)identifier shortVersionString:(id)string
{
  identifierCopy = identifier;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = CRKApplicationInfo;
  v8 = [(CRKApplicationInfo *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [stringCopy copy];
    shortVersionString = v8->_shortVersionString;
    v8->_shortVersionString = v11;
  }

  return v8;
}

- (CRKApplicationInfo)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"bundleIdentifier"];
  v6 = [representationCopy objectForKeyedSubscript:@"shortVersionString"];

  v7 = [(CRKApplicationInfo *)self initWithBundleIdentifier:v5 shortVersionString:v6];
  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  bundleIdentifier = [(CRKApplicationInfo *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  shortVersionString = [(CRKApplicationInfo *)self shortVersionString];

  if (shortVersionString)
  {
    shortVersionString2 = [(CRKApplicationInfo *)self shortVersionString];
    [v3 setObject:shortVersionString2 forKeyedSubscript:@"shortVersionString"];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    goto LABEL_22;
  }

  v7 = equalCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKApplicationInfo isEqual:v7];
  }

  bundleIdentifier = [(CRKApplicationInfo *)self bundleIdentifier];
  if (bundleIdentifier || ([v7 bundleIdentifier], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    bundleIdentifier2 = [(CRKApplicationInfo *)self bundleIdentifier];
    bundleIdentifier3 = [v7 bundleIdentifier];
    if (![bundleIdentifier2 isEqual:bundleIdentifier3])
    {
      v10 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v9 = 1;
  }

  else
  {
    v17 = 0;
    v9 = 0;
  }

  shortVersionString = [(CRKApplicationInfo *)self shortVersionString];
  if (shortVersionString || ([v7 shortVersionString], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(CRKApplicationInfo *)self shortVersionString:v15];
    shortVersionString2 = [v7 shortVersionString];
    v10 = [v12 isEqual:shortVersionString2];

    if (shortVersionString)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v10 = 1;
  }

LABEL_17:
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!bundleIdentifier)
  {
  }

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  bundleIdentifier = [(CRKApplicationInfo *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  shortVersionString = [(CRKApplicationInfo *)self shortVersionString];
  v6 = [shortVersionString hash];

  return v6 ^ v4;
}

- (void)isEqual:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKApplicationInfo isEqual:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInFunction:v1 file:@"CRKApplicationInfo.m" lineNumber:49 description:{@"expected %@, got %@", v3, v5}];
}

@end