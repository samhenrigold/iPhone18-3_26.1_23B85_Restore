@interface __NSArrayReverseEnumerator
- (__NSArrayReverseEnumerator)initWithObject:(id)object;
- (id)nextObject;
- (void)dealloc;
@end

@implementation __NSArrayReverseEnumerator

- (id)nextObject
{
  obj = self->_obj;
  if (!obj)
  {
    return 0;
  }

  idx = self->_idx;
  if (!idx)
  {

    self->_obj = 0;
    return 0;
  }

  self->_idx = idx - 1;
  v5 = self->_obj;

  return [v5 objectAtIndex:?];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSArrayReverseEnumerator;
  [(__NSArrayReverseEnumerator *)&v3 dealloc];
}

- (__NSArrayReverseEnumerator)initWithObject:(id)object
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = __NSArrayReverseEnumerator;
  v4 = [(__NSArrayReverseEnumerator *)&v6 init];
  if (v4)
  {
    v4->_obj = object;
    v4->_idx = [object count];
  }

  return v4;
}

@end