@interface CRXUDeferredTrace
+ (id)deferredTraceWithCode:(unint64_t)code arg1:(unint64_t)arg1 arg2:(unint64_t)arg2 arg3:(unint64_t)arg3 arg4:(unint64_t)arg4;
- (CRXUDeferredTrace)initWithCode:(unint64_t)code arg1:(unint64_t)arg1 arg2:(unint64_t)arg2 arg3:(unint64_t)arg3 arg4:(unint64_t)arg4;
- (void)dealloc;
@end

@implementation CRXUDeferredTrace

+ (id)deferredTraceWithCode:(unint64_t)code arg1:(unint64_t)arg1 arg2:(unint64_t)arg2 arg3:(unint64_t)arg3 arg4:(unint64_t)arg4
{
  v7 = [[self alloc] initWithCode:code arg1:arg1 arg2:arg2 arg3:arg3 arg4:arg4];

  return v7;
}

- (CRXUDeferredTrace)initWithCode:(unint64_t)code arg1:(unint64_t)arg1 arg2:(unint64_t)arg2 arg3:(unint64_t)arg3 arg4:(unint64_t)arg4
{
  v13.receiver = self;
  v13.super_class = CRXUDeferredTrace;
  result = [(CRXUDeferredTrace *)&v13 init];
  if (result)
  {
    result->_code = code;
    result->_arg1 = arg1;
    result->_arg2 = arg2;
    result->_arg3 = arg3;
    result->_arg4 = arg4;
  }

  return result;
}

- (void)dealloc
{
  kdebug_trace();
  v3.receiver = self;
  v3.super_class = CRXUDeferredTrace;
  [(CRXUDeferredTrace *)&v3 dealloc];
}

@end