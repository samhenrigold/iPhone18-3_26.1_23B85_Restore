@interface TMLWeakReferenceObject
+ (id)weakReferenceWithObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (TMLWeakReferenceObject)initWithObject:(id)object;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)object;
- (unint64_t)hash;
@end

@implementation TMLWeakReferenceObject

- (TMLWeakReferenceObject)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = TMLWeakReferenceObject;
  v5 = [(TMLWeakReferenceObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
  }

  return v6;
}

+ (id)weakReferenceWithObject:(id)object
{
  objectCopy = object;
  v4 = [[TMLWeakReferenceObject alloc] initWithObject:objectCopy];

  return v4;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v3 = [WeakRetained hash];

  return v3;
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v3 = [WeakRetained description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  if ([WeakRetained isEqual:equalCopy])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object = [equalCopy object];
      v6 = [WeakRetained isEqual:object];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end