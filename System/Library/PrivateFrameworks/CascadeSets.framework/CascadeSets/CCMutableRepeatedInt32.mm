@interface CCMutableRepeatedInt32
+ (id)new;
- (CCMutableRepeatedInt32)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendInt32Value:(int)value;
@end

@implementation CCMutableRepeatedInt32

- (CCMutableRepeatedInt32)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedInt32;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedInt32;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendInt32Value:(int)value
{
  v3 = *&value;
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v3];
  [values addObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CCRepeatedInt32 allocWithZone:?];
  values = [(CCRepeatedFieldValue *)self values];
  v7 = [values mutableCopyWithZone:zone];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end