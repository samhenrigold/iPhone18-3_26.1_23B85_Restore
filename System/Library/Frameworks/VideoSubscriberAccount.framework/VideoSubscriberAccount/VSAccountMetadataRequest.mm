@interface VSAccountMetadataRequest
- (BOOL)isEqual:(id)equal;
- (VSAccountMetadataRequest)init;
- (VSAccountMetadataRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributeNames:(NSArray *)attributeNames;
- (void)setFeaturedAccountProviderIdentifiers:(NSArray *)featuredAccountProviderIdentifiers;
- (void)setSupportedAccountProviderIdentifiers:(NSArray *)supportedAccountProviderIdentifiers;
@end

@implementation VSAccountMetadataRequest

- (VSAccountMetadataRequest)init
{
  v6.receiver = self;
  v6.super_class = VSAccountMetadataRequest;
  v2 = [(VSAccountMetadataRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = VSAccountMetadataRequestValueType(v2);
    VSValueTypeInit(v4, v3);
  }

  return v3;
}

- (VSAccountMetadataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VSAccountMetadataRequest;
  v5 = [(VSAccountMetadataRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = VSAccountMetadataRequestValueType(v5);
    VSValueTypeInitWithCoder(v7, v6, coderCopy);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAccountMetadataRequestValueType(coderCopy);
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAccountMetadataRequestValueType(self);
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAccountMetadataRequestValueType(self);
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAccountMetadataRequestValueType(equalCopy);
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAccountMetadataRequestValueType(self);
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

- (void)setAttributeNames:(NSArray *)attributeNames
{
  v4 = attributeNames;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The attributeNames parameter must not be nil."];
    v4 = 0;
  }

  if (self->_attributeNames != v4)
  {
    v5 = [(NSArray *)v7 copy];
    v6 = self->_attributeNames;
    self->_attributeNames = v5;

    v4 = v7;
  }
}

- (void)setSupportedAccountProviderIdentifiers:(NSArray *)supportedAccountProviderIdentifiers
{
  v4 = supportedAccountProviderIdentifiers;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The supportedAccountProviderIdentifiers parameter must not be nil."];
    v4 = 0;
  }

  if (self->_supportedAccountProviderIdentifiers != v4)
  {
    v5 = [(NSArray *)v7 copy];
    v6 = self->_supportedAccountProviderIdentifiers;
    self->_supportedAccountProviderIdentifiers = v5;

    v4 = v7;
  }
}

- (void)setFeaturedAccountProviderIdentifiers:(NSArray *)featuredAccountProviderIdentifiers
{
  v4 = featuredAccountProviderIdentifiers;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The featuredAccountProviderIdentifiers parameter must not be nil."];
    v4 = 0;
  }

  if (self->_featuredAccountProviderIdentifiers != v4)
  {
    v5 = [(NSArray *)v7 copy];
    v6 = self->_featuredAccountProviderIdentifiers;
    self->_featuredAccountProviderIdentifiers = v5;

    v4 = v7;
  }
}

@end