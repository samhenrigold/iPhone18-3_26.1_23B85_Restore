@interface TMLJSONSchema
- (TMLJSONSchema)initWithJSON:(id)n;
@end

@implementation TMLJSONSchema

- (TMLJSONSchema)initWithJSON:(id)n
{
  nCopy = n;
  v9.receiver = self;
  v9.super_class = TMLJSONSchema;
  v5 = [(TMLJSONSchema *)&v9 init];
  if (v5)
  {
    v6 = [nCopy copy];
    schema = v5->_schema;
    v5->_schema = v6;
  }

  return v5;
}

@end