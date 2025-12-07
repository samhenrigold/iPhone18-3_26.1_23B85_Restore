@interface CLBBTimeFreqTransferCallbackAssertion
+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block;
+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block;
- (CLBBTimeFreqTransferCallbackAssertion)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary dispatchQueue:(id)queue codeBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLBBTimeFreqTransferCallbackAssertion

- (CLBBTimeFreqTransferCallbackAssertion)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary dispatchQueue:(id)queue codeBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = CLBBTimeFreqTransferCallbackAssertion;
  if ([(CLBBTimeFreqTransferCallbackAssertion *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (void)invalidate
{
  fInternal = self->fInternal;
  if (fInternal)
  {
    sub_19B8B543C(fInternal);
  }
}

- (void)dealloc
{
  fInternal = self->fInternal;
  if (fInternal)
  {
    sub_19B8B543C(self->fInternal);
    MEMORY[0x19EAE98C0](fInternal, 0xA0C40114AFA65);
  }

  self->fInternal = 0;
  v4.receiver = self;
  v4.super_class = CLBBTimeFreqTransferCallbackAssertion;
  [(CLBBTimeFreqTransferCallbackAssertion *)&v4 dealloc];
}

+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block
{
  v9 = objc_msgSend_copy(identifier, a2, identifier, reason);
  v13 = objc_msgSend_copy(reason, v10, v11, v12);

  return sub_19B96068C(v9, &stru_1F0E6F140, v13, queue, block);
}

+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason withCallbackQueue:(id)queue andBlock:(id)block
{
  v9 = objc_msgSend_bundlePath(bundle, a2, bundle, reason);
  v13 = objc_msgSend_copy(v9, v10, v11, v12);
  v17 = objc_msgSend_copy(reason, v14, v15, v16);

  return sub_19B96068C(&stru_1F0E6F140, v13, v17, queue, block);
}

@end