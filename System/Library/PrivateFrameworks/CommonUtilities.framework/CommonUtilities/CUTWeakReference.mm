@interface CUTWeakReference
+ (id)weakRefWithObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (CUTWeakReference)initWithObject:(id)object;
- (id)object;
@end

@implementation CUTWeakReference

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

+ (id)weakRefWithObject:(id)object
{
  objectCopy = object;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithObject_(v5, v6, objectCopy);

  return v7;
}

- (CUTWeakReference)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = CUTWeakReference;
  v5 = [(CUTWeakReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
    v6->_objectAddress = objectCopy;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_objectAddress(equalCopy, v5, v6);
    v10 = v7 == objc_msgSend_objectAddress(self, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end