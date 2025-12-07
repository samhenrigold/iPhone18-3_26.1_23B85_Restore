@interface CLCppContainer
+ (id)containerWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (CLCppContainer)initWithCoder:(id)coder;
- (CLCppContainer)initWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLCppContainer

- (void)dealloc
{
  v4 = objc_msgSend_destructor(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_destructor(self, v5, v6);
    v7[2]();
  }

  objc_msgSend_setDestructor_(self, v5, 0);
  v8.receiver = self;
  v8.super_class = CLCppContainer;
  [(CLCppContainer *)&v8 dealloc];
}

- (void)invalidate
{
  v4 = objc_msgSend_destructor(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_destructor(self, v5, v6);
    v7[2]();
  }

  objc_msgSend_setDestructor_(self, v5, 0);
}

+ (id)containerWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  destructorCopy = destructor;
  v10 = [CLCppContainer alloc];
  v12 = objc_msgSend_initWithObject_destructor_binaryVersion_typeSize_(v10, v11, object, destructorCopy, version, size);

  return v12;
}

- (CLCppContainer)initWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  destructorCopy = destructor;
  v16.receiver = self;
  v16.super_class = CLCppContainer;
  v11 = [(CLCppContainer *)&v16 init];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setCppObjectPtr_(v11, v12, object);
    objc_msgSend_setDestructor_(v13, v14, destructorCopy);
    v13->_binaryVersion = version;
    v13->_sizeOfType = size;
  }

  return v13;
}

- (CLCppContainer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CLCppContainer;
  return [(CLCppContainer *)&v4 init];
}

@end