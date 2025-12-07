@interface TMLValue
- (TMLValue)initWithValue:(id)value valueType:(unint64_t)type;
@end

@implementation TMLValue

- (TMLValue)initWithValue:(id)value valueType:(unint64_t)type
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = TMLValue;
  v8 = [(TMLValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_valueType = type;
  }

  return v9;
}

@end