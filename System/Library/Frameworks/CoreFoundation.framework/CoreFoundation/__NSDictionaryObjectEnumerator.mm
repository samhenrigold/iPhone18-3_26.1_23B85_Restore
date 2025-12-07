@interface __NSDictionaryObjectEnumerator
- (id)nextObject;
@end

@implementation __NSDictionaryObjectEnumerator

- (id)nextObject
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = __NSDictionaryObjectEnumerator;
  result = [(__NSFastEnumerationEnumerator *)&v4 nextObject];
  if (result)
  {
    return [self->super._origObj objectForKey:result];
  }

  return result;
}

@end