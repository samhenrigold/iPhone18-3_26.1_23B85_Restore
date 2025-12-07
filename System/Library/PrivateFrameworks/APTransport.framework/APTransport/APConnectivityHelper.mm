@interface APConnectivityHelper
@end

@implementation APConnectivityHelper

uint64_t ___APConnectivityHelper_getActiveHelpers_block_invoke()
{
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    v1 = result;
    if (gLogCategory_APConnectivityHelper <= 100)
    {
      if (gLogCategory_APConnectivityHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = ___APConnectivityHelper_getActiveHelpers_block_invoke_cold_1(v1);
      }
    }

    __break(1u);
  }

  return result;
}

@end