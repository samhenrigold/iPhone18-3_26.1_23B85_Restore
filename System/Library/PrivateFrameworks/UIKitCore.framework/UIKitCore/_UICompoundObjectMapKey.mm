@interface _UICompoundObjectMapKey
+ (id)keyWithObject:(id)object andProperty:(id)property;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation _UICompoundObjectMapKey

+ (id)keyWithObject:(id)object andProperty:(id)property
{
  objectCopy = object;
  propertyCopy = property;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = objectCopy;
  v9 = objectCopy;

  v10 = v7[2];
  v7[2] = propertyCopy;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (self->_object == *(equal + 1))
  {
    return objc_msgSend_isEqualToString_(self->_property, a2, *(equal + 2));
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E698E680] descriptionForObject:self->_object];
  v5 = [v3 stringWithFormat:@"%@.%@", v4, self->_property];

  return v5;
}

@end