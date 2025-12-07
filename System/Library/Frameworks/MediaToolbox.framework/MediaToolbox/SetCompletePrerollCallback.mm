@interface SetCompletePrerollCallback
@end

@implementation SetCompletePrerollCallback

void *__customVideoCompositor_SetCompletePrerollCallback_block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 200) != *(result + 5))
  {
    *(v1 + 200) = result[5];
    *(result[4] + 208) = result[6];
  }

  return result;
}

@end