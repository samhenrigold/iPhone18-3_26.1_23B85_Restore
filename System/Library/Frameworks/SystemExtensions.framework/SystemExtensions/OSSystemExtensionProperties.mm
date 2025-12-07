@interface OSSystemExtensionProperties
- (OSSystemExtensionProperties)initWithBundleIdentifier:(id)identifier isEnabled:(BOOL)enabled displayName:(id)name usageDescription:(id)description;
- (OSSystemExtensionProperties)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSSystemExtensionProperties

- (OSSystemExtensionProperties)initWithBundleIdentifier:(id)identifier isEnabled:(BOOL)enabled displayName:(id)name usageDescription:(id)description
{
  enabledCopy = enabled;
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  v16.receiver = self;
  v16.super_class = OSSystemExtensionProperties;
  v13 = [(OSSystemExtensionProperties *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(OSSystemExtensionProperties *)v13 setBundleIdentifier:identifierCopy];
    [(OSSystemExtensionProperties *)v14 setIsEnabled:enabledCopy];
    [(OSSystemExtensionProperties *)v14 setDisplayName:nameCopy];
    [(OSSystemExtensionProperties *)v14 setUsageDescription:descriptionCopy];
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(OSSystemExtensionProperties *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[OSSystemExtensionProperties isEnabled](self forKey:{"isEnabled"), @"isEnabled"}];
  displayName = [(OSSystemExtensionProperties *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  usageDescription = [(OSSystemExtensionProperties *)self usageDescription];
  [coderCopy encodeObject:usageDescription forKey:@"usageDescription"];
}

- (OSSystemExtensionProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = OSSystemExtensionProperties;
  v5 = [(OSSystemExtensionProperties *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [(OSSystemExtensionProperties *)v5 setBundleIdentifier:v6];

    -[OSSystemExtensionProperties setIsEnabled:](v5, "setIsEnabled:", [coderCopy decodeBoolForKey:@"isEnabled"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(OSSystemExtensionProperties *)v5 setDisplayName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usageDescription"];
    [(OSSystemExtensionProperties *)v5 setUsageDescription:v8];
  }

  return v5;
}

@end