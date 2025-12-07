@interface __NSOrderedSetArrayProxy
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation __NSOrderedSetArrayProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSOrderedSetArrayProxy;
  [(__NSOrderedSetArrayProxy *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSArray allocWithZone:zone];
  v5 = [(__NSOrderedSetArrayProxy *)self count];

  return [(NSArray *)v4 initWithArray:self range:0 copyItems:v5, 0];
}

@end