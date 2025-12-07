@interface CAField
+ (id)fieldWithName:(id)name ioProperty:(id)property valueType:(Class)type;
- (BOOL)isValidValue:(id)value;
- (CAField)initWithName:(id)name ioProperty:(id)property valueType:(Class)type;
@end

@implementation CAField

- (CAField)initWithName:(id)name ioProperty:(id)property valueType:(Class)type
{
  nameCopy = name;
  propertyCopy = property;
  v14.receiver = self;
  v14.super_class = CAField;
  v11 = [(CAField *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v12->_ioProperty, property);
    objc_storeStrong(&v12->_valueType, type);
  }

  return v12;
}

+ (id)fieldWithName:(id)name ioProperty:(id)property valueType:(Class)type
{
  propertyCopy = property;
  nameCopy = name;
  v10 = [[self alloc] initWithName:nameCopy ioProperty:propertyCopy valueType:type];

  return v10;
}

- (BOOL)isValidValue:(id)value
{
  valueCopy = value;
  v5 = 0;
  if (valueCopy)
  {
    v4 = +[NSNull null];

    if (v4 == valueCopy || (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = 1;
    }
  }

  return v5;
}

@end