@interface CreateRemoteControlSession
@end

@implementation CreateRemoteControlSession

uint64_t __central_CreateRemoteControlSession_block_invoke()
{
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v4 = 4294954511;
  }

  else if (*(v0 + 48) && *(*(OUTLINED_FUNCTION_6_2() + 24) + 80))
  {
    v2 = OUTLINED_FUNCTION_2_3();
    v4 = v3(v2);
  }

  else
  {
    v4 = 4294954514;
  }

  return OUTLINED_FUNCTION_0_3(v4);
}

@end