@interface VSAMSRequest
- (BOOL)isEqual:(id)equal;
- (VSAMSRequest)init;
- (VSAMSRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAMSRequest

- (VSAMSRequest)init
{
  v6.receiver = self;
  v6.super_class = VSAMSRequest;
  v2 = [(VSAMSRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = VSAMSRequestValueType(v2);
    VSValueTypeInit(v4, v3);
  }

  return v3;
}

- (VSAMSRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VSAMSRequest;
  v5 = [(VSAMSRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = VSAMSRequestValueType(v5);
    VSValueTypeInitWithCoder(v7, v6, coderCopy);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSAMSRequestValueType(coderCopy);
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSAMSRequestValueType(self);
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSAMSRequestValueType(self);
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSAMSRequestValueType(equalCopy);
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSAMSRequestValueType(self);
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end