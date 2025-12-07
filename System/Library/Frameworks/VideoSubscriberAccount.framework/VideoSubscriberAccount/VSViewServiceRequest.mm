@interface VSViewServiceRequest
- (BOOL)allowsAuthenticationUI;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPreAuthRequest;
- (NSArray)applicationAccountProviders;
- (NSArray)featuredIdentityProviderIdentifiers;
- (NSArray)supportedAccountProviderAuthenticationSchemes;
- (NSArray)supportedIdentityProviderIdentifiers;
- (NSString)accountProviderAuthenticationToken;
- (NSString)localizedVideoTitle;
- (VSViewServiceRequest)init;
- (VSViewServiceRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSViewServiceRequest

- (VSViewServiceRequest)init
{
  v6.receiver = self;
  v6.super_class = VSViewServiceRequest;
  v2 = [(VSViewServiceRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = VSViewServiceRequestValueType(v2);
    VSValueTypeInit(v4, v3);
  }

  return v3;
}

- (VSViewServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VSViewServiceRequest;
  v5 = [(VSViewServiceRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = VSViewServiceRequestValueType(v5);
    VSValueTypeInitWithCoder(v7, v6, coderCopy);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSViewServiceRequestValueType(coderCopy);
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSViewServiceRequestValueType(self);
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSViewServiceRequestValueType(self);
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSViewServiceRequestValueType(equalCopy);
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSViewServiceRequestValueType(self);
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

- (BOOL)allowsAuthenticationUI
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  isInterruptionAllowed = [accountMetadataRequest isInterruptionAllowed];

  return isInterruptionAllowed;
}

- (NSArray)supportedIdentityProviderIdentifiers
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    supportedAccountProviderIdentifiers = [accountMetadataRequest supportedAccountProviderIdentifiers];
  }

  else
  {
    supportedAccountProviderIdentifiers = MEMORY[0x277CBEBF8];
  }

  return supportedAccountProviderIdentifiers;
}

- (NSArray)featuredIdentityProviderIdentifiers
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    featuredAccountProviderIdentifiers = [accountMetadataRequest featuredAccountProviderIdentifiers];
  }

  else
  {
    featuredAccountProviderIdentifiers = MEMORY[0x277CBEBF8];
  }

  return featuredAccountProviderIdentifiers;
}

- (NSArray)applicationAccountProviders
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    applicationAccountProviders = [accountMetadataRequest applicationAccountProviders];
    v5 = applicationAccountProviders;
    if (applicationAccountProviders)
    {
      v6 = applicationAccountProviders;
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (NSArray)supportedAccountProviderAuthenticationSchemes
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    supportedAuthenticationSchemes = [accountMetadataRequest supportedAuthenticationSchemes];
  }

  else
  {
    supportedAuthenticationSchemes = MEMORY[0x277CBEBF8];
  }

  return supportedAuthenticationSchemes;
}

- (NSString)localizedVideoTitle
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    localizedVideoTitle = [accountMetadataRequest localizedVideoTitle];
  }

  else
  {
    localizedVideoTitle = 0;
  }

  return localizedVideoTitle;
}

- (NSString)accountProviderAuthenticationToken
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  v3 = accountMetadataRequest;
  if (accountMetadataRequest)
  {
    accountProviderAuthenticationToken = [accountMetadataRequest accountProviderAuthenticationToken];
  }

  else
  {
    accountProviderAuthenticationToken = 0;
  }

  return accountProviderAuthenticationToken;
}

- (BOOL)isPreAuthRequest
{
  accountMetadataRequest = [(VSViewServiceRequest *)self accountMetadataRequest];
  accountProviderAuthenticationToken = [accountMetadataRequest accountProviderAuthenticationToken];
  v4 = accountProviderAuthenticationToken != 0;

  return v4;
}

@end