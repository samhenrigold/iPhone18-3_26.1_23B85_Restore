@interface CUTPromiseSeal
- (CUTPromiseSeal)initWithQueue:(id)queue;
- (void)failWithError:(id)error;
- (void)fulfillWithValue:(id)value;
@end

@implementation CUTPromiseSeal

- (CUTPromiseSeal)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CUTPromiseSeal;
  v5 = [(CUTPromiseSeal *)&v11 init];
  if (v5)
  {
    v6 = [_CUTPromise alloc];
    v8 = objc_msgSend_initWithQueue_(v6, v7, queueCopy);
    promise = v5->_promise;
    v5->_promise = v8;
  }

  return v5;
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