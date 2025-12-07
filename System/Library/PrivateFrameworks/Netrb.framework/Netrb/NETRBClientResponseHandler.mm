@interface NETRBClientResponseHandler
@end

@implementation NETRBClientResponseHandler

void ____NETRBClientResponseHandler_block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____NETRBClientResponseHandler_block_invoke_2;
  block[3] = &unk_279967B08;
  block[4] = &v7;
  v6 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  if (!*(v8 + 6))
  {
    (*(*(*(a1 + 32) + 24) + 16))();
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    xpc_release(v2);
  }

  CFRelease(*(a1 + 32));
  _Block_object_dispose(&v7, 8);
}

double ____NETRBClientResponseHandler_block_invoke_2(uint64_t a1)
{
  v2 = __NETRBClientValidateClient(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (!v2 && *(a1 + 64) == 1001)
  {
    if (!strncmp(*(a1 + 48), (*(a1 + 40) + 289), 0x100uLL) || (*(*(*(a1 + 32) + 8) + 24) = 1, *(a1 + 64) == 1001))
    {
      if (xpc_dictionary_get_uint64(*(a1 + 56), netrbClientNotificationKey) == 5003)
      {
        v4 = (*(a1 + 40) + 289);
        result = 0.0;
        v4[14] = 0u;
        v4[15] = 0u;
        v4[12] = 0u;
        v4[13] = 0u;
        v4[10] = 0u;
        v4[11] = 0u;
        v4[8] = 0u;
        v4[9] = 0u;
        v4[6] = 0u;
        v4[7] = 0u;
        v4[4] = 0u;
        v4[5] = 0u;
        v4[2] = 0u;
        v4[3] = 0u;
        *v4 = 0u;
        v4[1] = 0u;
      }
    }
  }

  return result;
}

@end