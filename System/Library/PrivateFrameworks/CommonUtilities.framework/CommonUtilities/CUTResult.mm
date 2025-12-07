@interface CUTResult
- (CUTResult)initWithState:(int64_t)state value:(id)value error:(id)error;
- (NSError)error;
- (id)value;
@end

@implementation CUTResult

- (id)value
{
  if (objc_msgSend_state(self, a2, v2))
  {
    sub_1B2331850(a2, self, v5);
  }

  inValue = self->_inValue;

  return inValue;
}

- (CUTResult)initWithState:(int64_t)state value:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = CUTResult;
  v11 = [(CUTResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inError, error);
    objc_storeStrong(&v12->_inValue, value);
    v12->_state = state;
  }

  return v12;
}

- (NSError)error
{
  if (objc_msgSend_state(self, a2, v2) != 1)
  {
    sub_1B23318C4(a2, self, v5);
  }

  inError = self->_inError;

  return inError;
}

@end