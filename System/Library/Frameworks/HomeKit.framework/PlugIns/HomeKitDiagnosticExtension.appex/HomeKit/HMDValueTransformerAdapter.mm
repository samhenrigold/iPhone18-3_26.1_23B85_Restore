@interface HMDValueTransformerAdapter
- (BOOL)isKindOfTransformer:(Class)transformer;
- (HMDValueTransformerAdapter)initWithTransformer:(id)transformer;
- (id)reverseTransformedValue:(id)value error:(id *)error;
- (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDValueTransformerAdapter

- (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [(HMDValueTransformerAdapter *)self reverseTransformedValue:valueCopy];

  return v6;
}

- (id)transformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [(HMDValueTransformerAdapter *)self transformedValue:valueCopy];

  return v6;
}

- (BOOL)isKindOfTransformer:(Class)transformer
{
  v5.receiver = self;
  v5.super_class = HMDValueTransformerAdapter;
  if ([(HMDValueTransformer *)&v5 isKindOfTransformer:?])
  {
    isKindOfClass = 1;
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (HMDValueTransformerAdapter)initWithTransformer:(id)transformer
{
  transformerCopy = transformer;
  v9.receiver = self;
  v9.super_class = HMDValueTransformerAdapter;
  v6 = [(HMDValueTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transformer, transformer);
  }

  return v7;
}

@end