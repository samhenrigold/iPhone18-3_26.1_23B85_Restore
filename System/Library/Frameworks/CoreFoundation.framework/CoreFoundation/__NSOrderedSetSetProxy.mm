@interface __NSOrderedSetSetProxy
- (id)copyWithZone:(_NSZone *)zone;
- (id)member:(id)member;
- (void)dealloc;
@end

@implementation __NSOrderedSetSetProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSOrderedSetSetProxy;
  [(__NSOrderedSetSetProxy *)&v3 dealloc];
}

- (id)member:(id)member
{
  v4 = [self->_orderedSet indexOfObject:member];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  orderedSet = self->_orderedSet;

  return [orderedSet objectAtIndex:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSSet allocWithZone:zone];

  return [(NSSet *)v4 initWithSet:self copyItems:0];
}

@end