@interface CCMutableRepeatedUInt32
+ (id)new;
- (CCMutableRepeatedUInt32)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendUInt32Value:(unsigned int)value;
@end

@implementation CCMutableRepeatedUInt32

- (CCMutableRepeatedUInt32)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedUInt32;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedUInt32;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendUInt32Value:(unsigned int)value
{
  v3 = *&value;
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v3];
  [values addObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CCRepeatedUInt32 allocWithZone:?];
  values = [(CCRepeatedFieldValue *)self values];
  v7 = [values mutableCopyWithZone:zone];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end