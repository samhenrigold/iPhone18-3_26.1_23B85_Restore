@interface TypistKeyboardData
+ (BOOL)isKeyboardUIOutOfProcess;
+ (Class)keyboardData;
+ (void)setConnectionTimeoutInSec:(double)sec;
+ (void)setTargetApplicationBundleID:(id)d;
@end

@implementation TypistKeyboardData

+ (Class)keyboardData
{
  v2 = objc_opt_class();

  return v2;
}

+ (BOOL)isKeyboardUIOutOfProcess
{
  if (isKeyboardUIOutOfProcess_onceToken != -1)
  {
    +[TypistKeyboardData isKeyboardUIOutOfProcess];
  }

  return isKeyboardUIOutOfProcess_oop;
}

void *__46__TypistKeyboardData_isKeyboardUIOutOfProcess__block_invoke()
{
  result = [MEMORY[0x277D75658] usesInputSystemUI];
  isKeyboardUIOutOfProcess_oop = result;
  return result;
}

+ (void)setTargetApplicationBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    objc_storeStrong(&_globalTargetApplication, d);
    dCopy = v5;
  }
}

+ (void)setConnectionTimeoutInSec:(double)sec
{
  if (sec > 0.0)
  {
    _globalConnectionTimeoutInSec = *&sec;
  }
}

@end