@interface CUTAsyncReducerState
- (void)cancelWithError:(id)error;
- (void)continueWithResult:(id)result;
- (void)stopWithResult:(id)result;
@end

@implementation CUTAsyncReducerState

- (void)continueWithResult:(id)result
{
  resultCopy = result;
  v8 = objc_msgSend_continueBlock(self, v6, v7);

  if (!v8)
  {
    sub_1B2330D48(a2, self, v10);
  }

  v11 = objc_msgSend_continueBlock(self, v9, v10);
  v11[2](v11, resultCopy);
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v8 = objc_msgSend_cancelBlock(self, v6, v7);

  if (!v8)
  {
    sub_1B2330DC4(a2, self, v10);
  }

  v11 = objc_msgSend_cancelBlock(self, v9, v10);
  v11[2](v11, errorCopy);
}

- (void)stopWithResult:(id)result
{
  resultCopy = result;
  v8 = objc_msgSend_stopBlock(self, v6, v7);

  if (!v8)
  {
    sub_1B2330E40(a2, self, v10);
  }

  v11 = objc_msgSend_stopBlock(self, v9, v10);
  v11[2](v11, resultCopy);
}

@end