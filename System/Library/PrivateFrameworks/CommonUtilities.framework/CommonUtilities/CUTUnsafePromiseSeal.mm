@interface CUTUnsafePromiseSeal
- (CUTUnsafePromiseSeal)init;
- (void)failWithError:(id)error;
- (void)fulfillWithValue:(id)value;
@end

@implementation CUTUnsafePromiseSeal

- (CUTUnsafePromiseSeal)init
{
  v6.receiver = self;
  v6.super_class = CUTUnsafePromiseSeal;
  v2 = [(CUTUnsafePromiseSeal *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_CUTUnsafePromise);
    promise = v2->_promise;
    v2->_promise = &v3->super;
  }

  return v2;
}

- (void)fulfillWithValue:(id)value
{
  valueCopy = value;
  v11 = objc_msgSend_promise(self, v5, v6);
  v7 = [CUTResult alloc];
  v9 = objc_msgSend_initWithSuccess_(v7, v8, valueCopy);

  objc_msgSend__fulfillWithResult_(v11, v10, v9);
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  v11 = objc_msgSend_promise(self, v5, v6);
  v7 = [CUTResult alloc];
  v9 = objc_msgSend_initWithError_(v7, v8, errorCopy);

  objc_msgSend__fulfillWithResult_(v11, v10, v9);
}

@end