@interface _MDQueryTokenVariation
- (_MDQueryTokenVariation)initWithVariation:(id)variation type:(int64_t)type confidence:(float)confidence;
- (void)dealloc;
@end

@implementation _MDQueryTokenVariation

- (_MDQueryTokenVariation)initWithVariation:(id)variation type:(int64_t)type confidence:(float)confidence
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _MDQueryTokenVariation;
  v8 = [(_MDQueryTokenVariation *)&v10 init];
  if (v8)
  {
    v8->_variation = [variation copy];
    v8->_type = type;
    v8->_confidence = confidence;
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _MDQueryTokenVariation;
  [(_MDQueryTokenVariation *)&v3 dealloc];
}

@end