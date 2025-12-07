@interface PKProcessAssertionProxy
- (BOOL)acquire;
- (PKProcessAssertionProxy)initWithPID:(int)d flags:(unsigned int)flags reason:(unsigned int)reason name:(id)name;
- (id)invalidationHandler;
- (void)invalidate;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation PKProcessAssertionProxy

- (void)invalidate
{
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  [_bksObject invalidate];
}

- (BOOL)acquire
{
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  acquire = [_bksObject acquire];

  return acquire;
}

- (PKProcessAssertionProxy)initWithPID:(int)d flags:(unsigned int)flags reason:(unsigned int)reason name:(id)name
{
  v6 = *&reason;
  v7 = *&flags;
  v8 = *&d;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PKProcessAssertionProxy;
  v11 = [(PKProcessAssertionProxy *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E698D040]) initWithPID:v8 flags:v7 reason:v6 name:nameCopy];
    bksObject = v11->__bksObject;
    v11->__bksObject = v12;
  }

  return v11;
}

- (id)invalidationHandler
{
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  invalidationHandler = [_bksObject invalidationHandler];

  return invalidationHandler;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  [_bksObject setInvalidationHandler:handlerCopy];
}

@end