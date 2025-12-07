@interface NFTrustLocalValidation
+ (id)withPrimitiveLocalValidation:(unsigned __int8)validation;
- (NFTrustLocalValidation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustLocalValidation

- (NFTrustLocalValidation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NFTrustLocalValidation;
  v5 = [(NFTrustObject *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_primitiveLocalValidation = [coderCopy decodeIntForKey:@"primitiveLocalValidation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NFTrustLocalValidation primitiveLocalValidation](self forKey:{"primitiveLocalValidation"), @"primitiveLocalValidation"}];
}

+ (id)withPrimitiveLocalValidation:(unsigned __int8)validation
{
  validationCopy = validation;
  v4 = [NFTrustLocalValidation alloc];
  v5 = v4;
  if (v4)
  {
    [(NFTrustLocalValidation *)v4 setPrimitiveLocalValidation:validationCopy];
  }

  return v5;
}

- (id)description
{
  primitiveLocalValidation = [(NFTrustLocalValidation *)self primitiveLocalValidation];
  v3 = @"PassCode";
  if (primitiveLocalValidation == 2)
  {
    v3 = @"TouchID";
  }

  if (primitiveLocalValidation == 4)
  {
    return @"FaceID";
  }

  else
  {
    return v3;
  }
}

@end