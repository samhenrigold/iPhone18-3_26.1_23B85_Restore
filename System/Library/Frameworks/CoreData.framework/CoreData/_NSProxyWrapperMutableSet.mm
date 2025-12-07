@interface _NSProxyWrapperMutableSet
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)initWithContainer:(uint64_t)container key:(uint64_t)key mutableSet:(void *)set mutationMethods:;
- (void)intersectSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)setSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation _NSProxyWrapperMutableSet

- (void)dealloc
{
  self->_mutationMethods = 0;
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableSet;
  [(_NSNotifyingWrapperMutableSet *)&v3 dealloc];
}

- (void)initWithContainer:(uint64_t)container key:(uint64_t)key mutableSet:(void *)set mutationMethods:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = _NSProxyWrapperMutableSet;
  v6 = objc_msgSendSuper2(&v8, sel_initWithContainer_key_mutableSet_, a2, container, key);
  if (v6)
  {
    v6[4] = set;
  }

  return v6;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  if (self->_mutationMethods->_addObjectMethod)
  {

    method_invoke();
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&objectCopy count:1];
    method_invoke();
  }
}

- (void)addObjectsFromArray:(id)array
{
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:array];
  mutationMethods = self->_mutationMethods;
  v6 = v4;
  if (mutationMethods->_addMethod)
  {
    method_invoke();
  }

  else
  {
    _PFInvokeMutationMethodForEachMemberOfSet(self->super._container, mutationMethods->_addObjectMethod, v4);
  }
}

- (void)intersectSet:(id)set
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_mutationMethods->_intersectMethod)
  {

    method_invoke();
  }

  else
  {
    v5 = [(_NSNotifyingWrapperMutableSet *)self count];
    if (v5)
    {
      v6 = v5;
      if (v5 >= 0x201)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5;
      }

      v8 = (8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
      v9 = v12 - v8;
      if (v5 > 0x200)
      {
        v9 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v12 - v8, 8 * v5);
      }

      [(_NSNotifyingWrapperMutableSet *)self getObjects:v9];
      for (i = 0; i != v6; ++i)
      {
        v11 = *&v9[8 * i];
        if (([set containsObject:v11] & 1) == 0)
        {
          [(_NSProxyWrapperMutableSet *)self removeObject:v11];
        }
      }

      if (v6 >= 0x201)
      {
        NSZoneFree(0, v9);
      }
    }
  }
}

- (void)minusSet:(id)set
{
  mutationMethods = self->_mutationMethods;
  container = self->super._container;
  if (mutationMethods->_removeMethod)
  {
    method_invoke();
  }

  else
  {
    _PFInvokeMutationMethodForEachMemberOfSet(container, mutationMethods->_removeObjectMethod, set);
  }
}

- (void)removeAllObjects
{
  if (self->_mutationMethods->_setMethod)
  {
    method_invoke();
  }

  else
  {
    [(_NSProxyWrapperMutableSet *)self minusSet:self->super._mutableSet];
  }
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  if (self->_mutationMethods->_removeObjectMethod)
  {

    method_invoke();
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&objectCopy count:1];
    method_invoke();
  }
}

- (void)setSet:(id)set
{
  if (self->_mutationMethods->_setMethod)
  {

    method_invoke();
  }

  else
  {
    setCopy = set;
    [(_NSProxyWrapperMutableSet *)self minusSet:self->super._mutableSet];
    [(_NSProxyWrapperMutableSet *)self unionSet:set];
  }
}

- (void)unionSet:(id)set
{
  mutationMethods = self->_mutationMethods;
  container = self->super._container;
  if (mutationMethods->_addMethod)
  {
    method_invoke();
  }

  else
  {
    _PFInvokeMutationMethodForEachMemberOfSet(container, mutationMethods->_addObjectMethod, set);
  }
}

@end