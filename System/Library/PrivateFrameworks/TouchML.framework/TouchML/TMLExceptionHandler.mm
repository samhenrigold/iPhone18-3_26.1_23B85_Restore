@interface TMLExceptionHandler
+ (void)raiseException:(id)exception;
+ (void)setExceptionHandlerBlock:(id)block;
@end

@implementation TMLExceptionHandler

+ (void)setExceptionHandlerBlock:(id)block
{
  v3 = MEMORY[0x27438BB60](block, a2);
  v4 = qword_2806D93C0;
  qword_2806D93C0 = v3;

  MEMORY[0x2821F96F8](v3, v4);
}

+ (void)raiseException:(id)exception
{
  exceptionCopy = exception;
  exception = exceptionCopy;
  if (!qword_2806D93C0)
  {
    v4 = exceptionCopy;
    objc_exception_throw(exception);
  }

  (*(qword_2806D93C0 + 16))();
}

@end