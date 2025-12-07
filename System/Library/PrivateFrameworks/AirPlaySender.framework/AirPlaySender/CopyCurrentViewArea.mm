@interface CopyCurrentViewArea
@end

@implementation CopyCurrentViewArea

uint64_t __carEndpoint_CopyCurrentViewArea_block_invoke(void *a1)
{
  result = carEndpoint_getScreenStreamForDisplayUUID(a1[6], a1[7]);
  if (result)
  {
    v3 = *(a1[5] + 8);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(CMBaseObject, *MEMORY[0x277CC1908], 0, v3 + 24);
    }

    else
    {
      v6 = -12782;
    }

    *(*(a1[4] + 8) + 24) = v6;
    result = *(*(a1[4] + 8) + 24);
    if (result)
    {
      return __carEndpoint_CopyCurrentViewArea_block_invoke_cold_1(result);
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -16725;
  }

  return result;
}

@end