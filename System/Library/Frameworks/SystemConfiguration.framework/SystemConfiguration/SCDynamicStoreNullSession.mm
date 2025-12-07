@interface SCDynamicStoreNullSession
@end

@implementation SCDynamicStoreNullSession

SCDynamicStoreRef ____SCDynamicStoreNullSession_block_invoke()
{
  result = SCDynamicStoreCreateWithOptions(0, @"null", 0, 0, 0);
  S_null_session = result;
  return result;
}

@end