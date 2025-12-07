@interface __NSFastEnumerationEnumerator
+ (id)allocWithZone:(_NSZone *)zone;
- (__NSFastEnumerationEnumerator)initWithObject:(id)object;
- (id)nextObject;
- (void)dealloc;
@end

@implementation __NSFastEnumerationEnumerator

- (id)nextObject
{
  if (self->_index == self->_count)
  {
    p_state = &self->_state;
    state = self->_state.state;
    self->_index = 0;
    v5 = [(NSFastEnumeration *)self->_obj countByEnumeratingWithState:&self->_state objects:self->_objects count:16];
    self->_count = v5;
    if (!v5)
    {

      self->_obj = 0;
      result = 0;
      self->_origObj = 0;
      return result;
    }

    if (state)
    {
      if (self->_mut != *p_state->var0)
      {
        __NSFastEnumerationMutationHandler(self->_obj);
      }
    }

    else
    {
      self->_mut = *p_state->var0;
    }
  }

  index = self->_index;
  itemsPtr = self->_state.itemsPtr;
  self->_index = index + 1;
  return itemsPtr[index];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSFastEnumerationEnumerator;
  [(__NSFastEnumerationEnumerator *)&v3 dealloc];
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return __CFAllocateObject(v3, 0x40uLL);
}

- (__NSFastEnumerationEnumerator)initWithObject:(id)object
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = __NSFastEnumerationEnumerator;
  v4 = [(__NSFastEnumerationEnumerator *)&v6 init];
  if (v4)
  {
    v4->_obj = object;
    v4->_origObj = object;
  }

  return v4;
}

@end