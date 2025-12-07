@interface CDMExceptionUtils
+ (void)runWrappingCppExceptions:(id)exceptions;
@end

@implementation CDMExceptionUtils

+ (void)runWrappingCppExceptions:(id)exceptions
{
  exceptionsCopy = exceptions;
  exceptionsCopy[2]();
}

@end