@interface CreateCommChannel
@end

@implementation CreateCommChannel

uint64_t __carEndpoint_CreateCommChannel_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = carEndpoint_createCommChannelInternal(*(a1 + 56), *(a1 + 64), (*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 48) + 8) + 24));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    return __carEndpoint_CreateCommChannel_block_invoke_cold_1(v2);
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(a1 + 72);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    v6 = v5(v3, carEndpoint_handleRemoteControlSessionEvent, v4);
  }

  else
  {
    v6 = -12782;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {
    return __carEndpoint_CreateCommChannel_block_invoke_cold_2(v7);
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v9)
  {
    v10 = v9(v8);
  }

  else
  {
    v10 = -12782;
  }

  *(*(*(a1 + 32) + 8) + 24) = v10;
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __carEndpoint_CreateCommChannel_block_invoke_cold_3(result);
  }

  return result;
}

@end