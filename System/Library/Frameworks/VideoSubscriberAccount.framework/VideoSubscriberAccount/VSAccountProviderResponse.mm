@interface VSAccountProviderResponse
- (BOOL)isEqual:(id)equal;
- (VSAccountProviderResponse)init;
- (VSAccountProviderResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAccountProviderResponse

- (VSAccountProviderResponse)init
{
  v6.receiver = self;
  v6.super_class = VSAccountProviderResponse;
  v2 = [(VSAccountProviderResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = VSAccountProviderResponseValueType(v2);
    VSValueTypeInit(v4, v3);
  }

  return v3;
}

- (VSAccountProviderResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VSAccountProviderResponse;
  v5 = [(VSAccountProviderResponse *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = VSAccountProviderResponseValueType(v5);
    VSValueTypeInitWithCoder(v7, v6, coderCopy);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAccountProviderResponseValueType(coderCopy);
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAccountProviderResponseValueType(self);
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAccountProviderResponseValueType(self);
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAccountProviderResponseValueType(equalCopy);
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAccountProviderResponseValueType(self);
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end