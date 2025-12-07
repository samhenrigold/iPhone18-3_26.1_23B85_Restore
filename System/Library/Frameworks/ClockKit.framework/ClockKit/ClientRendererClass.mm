@interface ClientRendererClass
@end

@implementation ClientRendererClass

Class __get_ClientRendererClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ComplicationDisplayLibrary();
  result = objc_getClass("_ClientRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_ClientRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_ClientRendererClass_block_invoke_cold_1();
    return ComplicationDisplayLibrary();
  }

  return result;
}

@end