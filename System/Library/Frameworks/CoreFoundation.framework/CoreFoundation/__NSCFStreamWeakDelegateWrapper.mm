@interface __NSCFStreamWeakDelegateWrapper
- (__NSCFStreamWeakDelegateWrapper)initWithDelegate:(id)delegate;
- (void)dealloc;
@end

@implementation __NSCFStreamWeakDelegateWrapper

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _NSObjectStoreWeak(&self->_object, 0, &self->_useFallback);
  v3.receiver = self;
  v3.super_class = __NSCFStreamWeakDelegateWrapper;
  [(__NSCFStreamWeakDelegateWrapper *)&v3 dealloc];
}

- (__NSCFStreamWeakDelegateWrapper)initWithDelegate:(id)delegate
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = __NSCFStreamWeakDelegateWrapper;
  v4 = [(__NSCFStreamWeakDelegateWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    _NSObjectStoreWeak(&v4->_object, delegate, &v4->_useFallback);
  }

  return v5;
}

@end