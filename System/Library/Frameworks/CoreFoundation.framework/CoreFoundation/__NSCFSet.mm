@interface __NSCFSet
- (BOOL)isEqual:(id)equal;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)getObjects:(id *)objects;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
@end

@implementation __NSCFSet

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return CFSetGetCount(self);
}

- (void)removeAllObjects
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableSet);
  }

  if (!_CFSetIsMutable(self))
  {
    [(__NSCFSet *)self removeAllObjects];
  }

  CFSetRemoveAllValues(self);
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (_CFExecutableLinkedOnOrAfter(6uLL))
  {
    v7.receiver = self;
    v7.super_class = __NSCFSet;
    return [(NSSet *)&v7 isEqual:equal];
  }

  else
  {
    return equal && _CFNonObjCEqual(self, equal) != 0;
  }
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  Callbacks = __CFSetGetCallbacks(self, v8);
  if (v9 != CFCopyDescription && v9 != 0)
  {
    return CFCopyDescription(self);
  }

  v7.receiver = self;
  v7.super_class = __NSCFSet;
  return [(NSSet *)&v7 description];
}

- (Class)classForCoder
{
  _CFSetIsMutable(self);

  return objc_opt_self();
}

- (id)copyWithZone:(_NSZone *)zone
{
  theSet = self;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
    self = theSet;
  }

  if (_CFSetIsMutable(self))
  {

    return CFSetCreateCopy(0, theSet);
  }

  else
  {

    return theSet;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return CFSetCreateMutableCopy(0, 0, self);
}

- (id)member:(id)member
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!member)
  {
    return 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v7[0] = 0;
  if (CFSetGetValueIfPresent(self, member, v7))
  {
    return v7[0];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableSet);
  }

  return _CFSetFastEnumeration(self, state, objects, count);
}

- (id)objectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  v4 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v4;
}

- (void)addObject:(id)object
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (!_CFSetIsMutable(self))
  {
    [(__NSCFSet *)self addObject:a2];
  }

  if (!object)
  {
    [(__NSCFSet *)self addObject:a2];
  }

  CFSetAddValue(self, object);
}

- (void)removeObject:(id)object
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (!_CFSetIsMutable(self))
  {
    [(__NSCFSet *)self removeObject:a2];
  }

  if (!object)
  {
    [(__NSCFSet *)self removeObject:a2];
  }

  CFSetRemoveValue(self, object);
}

- (void)getObjects:(id *)objects
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  Count = CFSetGetCount(self);
  if (objects && Count)
  {

    CFSetGetValues(self, objects);
  }
}

@end