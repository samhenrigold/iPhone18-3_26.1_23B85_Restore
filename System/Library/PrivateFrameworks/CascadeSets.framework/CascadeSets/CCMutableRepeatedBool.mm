@interface CCMutableRepeatedBool
+ (id)new;
- (CCMutableRepeatedBool)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendBoolValue:(BOOL)value;
@end

@implementation CCMutableRepeatedBool

- (CCMutableRepeatedBool)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedBool;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedBool;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendBoolValue:(BOOL)value
{
  valueCopy = value;
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:valueCopy];
  [values addObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CCRepeatedBool allocWithZone:?];
  values = [(CCRepeatedFieldValue *)self values];
  v7 = [values mutableCopyWithZone:zone];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end