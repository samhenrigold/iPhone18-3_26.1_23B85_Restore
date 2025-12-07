@interface VSAccountMetadata
- (BOOL)isEqual:(id)equal;
- (NSString)SAMLAttributeQueryResponse;
- (VSAccountMetadata)init;
- (VSAccountMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAccountMetadata

- (VSAccountMetadata)init
{
  v6.receiver = self;
  v6.super_class = VSAccountMetadata;
  v2 = [(VSAccountMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = VSAccountMetadataValueType(v2);
    VSValueTypeInit(v4, v3);
  }

  return v3;
}

- (VSAccountMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VSAccountMetadata;
  v5 = [(VSAccountMetadata *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = VSAccountMetadataValueType(v5);
    VSValueTypeInitWithCoder(v7, v6, coderCopy);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAccountMetadataValueType(coderCopy);
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAccountMetadataValueType(self);
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAccountMetadataValueType(self);
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAccountMetadataValueType(equalCopy);
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAccountMetadataValueType(self);
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

- (NSString)SAMLAttributeQueryResponse
{
  accountProviderResponse = [(VSAccountMetadata *)self accountProviderResponse];
  authenticationScheme = [accountProviderResponse authenticationScheme];
  v4 = [authenticationScheme isEqual:@"SAML"];

  if (v4)
  {
    body = [accountProviderResponse body];
  }

  else
  {
    body = 0;
  }

  return body;
}

@end