@interface TUTelephonyCenter
@end

@implementation TUTelephonyCenter

uint64_t ___TUTelephonyCenter_block_invoke_2()
{
  CFRunLoopGetCurrent();
  CTTelephonyCenterSetDefaultRunloop();
  result = CTTelephonyCenterGetDefault();
  _TUTelephonyCenter_tc = result;
  return result;
}

@end