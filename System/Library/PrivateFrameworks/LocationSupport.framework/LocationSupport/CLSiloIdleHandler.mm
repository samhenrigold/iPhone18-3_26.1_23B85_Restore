@interface CLSiloIdleHandler
- (CLSiloIdleHandler)initWithIdleHandler:(id)handler onResume:(id)resume;
- (void)invalidate;
@end

@implementation CLSiloIdleHandler

- (CLSiloIdleHandler)initWithIdleHandler:(id)handler onResume:(id)resume
{
  handlerCopy = handler;
  resumeCopy = resume;
  v13.receiver = self;
  v13.super_class = CLSiloIdleHandler;
  v8 = [(CLSiloIdleHandler *)&v13 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setOnIdle_(v8, v9, handlerCopy);
    objc_msgSend_setOnResume_(v10, v11, resumeCopy);
  }

  return v10;
}

- (void)invalidate
{
  objc_msgSend_setOnIdle_(self, a2, 0);

  objc_msgSend_setOnResume_(self, v3, 0);
}

@end