@interface DDUIApplicationInfo
- (DDUIApplicationInfo)initWithApplicationID:(id)d serviceIdentifier:(id)identifier bundleID:(id)iD appName:(id)name adamID:(unint64_t)adamID;
- (DDUIApplicationInfo)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation DDUIApplicationInfo

- (DDUIApplicationInfo)initWithApplicationID:(id)d serviceIdentifier:(id)identifier bundleID:(id)iD appName:(id)name adamID:(unint64_t)adamID
{
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  nameCopy = name;
  v16 = nameCopy;
  selfCopy = 0;
  if (dCopy && iDCopy && nameCopy)
  {
    v22.receiver = self;
    v22.super_class = DDUIApplicationInfo;
    v18 = [(DDUIApplicationInfo *)&v22 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_applicationID, d);
      objc_storeStrong(&v19->_serviceIdentifier, identifier);
      objc_storeStrong(&v19->_bundleID, iD);
      objc_storeStrong(&v19->_appName, name);
      v19->_adamID = adamID;
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (DDUIApplicationInfo)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKeyedSubscript:@"DDUIMessageApplicationIDKey"];
    v6 = [representationCopy objectForKeyedSubscript:@"DDUIMessageServiceIDKey"];
    v7 = [representationCopy objectForKeyedSubscript:@"DDUIMessageBundleIDKey"];
    v8 = [representationCopy objectForKeyedSubscript:@"DDUIMessageAppNameKey"];
    v9 = [representationCopy objectForKeyedSubscript:@"DDUIMessageAdamIDKey"];

    self = -[DDUIApplicationInfo initWithApplicationID:serviceIdentifier:bundleID:appName:adamID:](self, "initWithApplicationID:serviceIdentifier:bundleID:appName:adamID:", v5, v6, v7, v8, [v9 unsignedLongLongValue]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"DDUIMessageApplicationIDKey";
  applicationID = [(DDUIApplicationInfo *)self applicationID];
  v11[0] = applicationID;
  v10[1] = @"DDUIMessageServiceIDKey";
  serviceIdentifier = [(DDUIApplicationInfo *)self serviceIdentifier];
  v11[1] = serviceIdentifier;
  v10[2] = @"DDUIMessageBundleIDKey";
  bundleID = [(DDUIApplicationInfo *)self bundleID];
  v11[2] = bundleID;
  v10[3] = @"DDUIMessageAppNameKey";
  appName = [(DDUIApplicationInfo *)self appName];
  v11[3] = appName;
  v10[4] = @"DDUIMessageAdamIDKey";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[DDUIApplicationInfo adamID](self, "adamID")}];
  v11[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end