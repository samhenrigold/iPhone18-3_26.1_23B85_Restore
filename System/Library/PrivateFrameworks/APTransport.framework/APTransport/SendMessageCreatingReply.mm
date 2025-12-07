@interface SendMessageCreatingReply
@end

@implementation SendMessageCreatingReply

void __stream_SendMessageCreatingReply_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 72))
  {
    __stream_SendMessageCreatingReply_block_invoke_2_cold_1();
  }

  else
  {
    if (*(a1 + 56))
    {
      v3 = -6722;
    }

    else
    {
      v3 = *(v2 + 152);
    }

    *(*(*(a1 + 32) + 8) + 24) = v3;
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (v4)
    {
      __stream_SendMessageCreatingReply_block_invoke_2_cold_2(v4);
    }

    else
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        *v5 = *(v2 + 160);
        *(*(a1 + 40) + 160) = 0;
      }
    }
  }

  v6 = *(*(a1 + 40) + 168);
  if (v6)
  {
    dispatch_release(v6);
    *(*(a1 + 40) + 168) = 0;
  }
}

void __stream_SendMessageCreatingReply_block_invoke(uint64_t result)
{
  v5 = *(result + 56);
  v6 = *(result + 88);
  v7 = *(result + 64);
  v2 = *(result + 72);
  if (*(v2 + 72))
  {
    __stream_SendMessageCreatingReply_block_invoke_cold_1();
    return;
  }

  if (!*(*(result + 80) + 9))
  {
    __stream_SendMessageCreatingReply_block_invoke_cold_2();
    return;
  }

  if (*(v2 + 168))
  {
    if (gLogCategory_APTransportStream <= 90)
    {
      if (gLogCategory_APTransportStream == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v2 = *(result + 72);
      }

      LogPrintF(&gLogCategory_APTransportStream, "OSStatus stream_SendMessageCreatingReply(FigTransportStreamRef, OSType, CMBlockBufferRef, CMBlockBufferRef *)_block_invoke", 33554522, "### %@ - Can't send a second message while we have one already in flight.\n", *(v2 + 88), v5, v6, v7);
    }

LABEL_11:
    *(*(*(result + 32) + 8) + 24) = -6709;
    return;
  }

  *(*(*(result + 40) + 8) + 24) = *(v2 + 176);
  *(*(*(result + 48) + 8) + 24) = dispatch_semaphore_create(0);
  v3 = *(result + 72);
  *(v3 + 152) = 0;
  *(v3 + 168) = *(*(*(result + 48) + 8) + 24);
  dispatch_retain(*(*(result + 72) + 168));
  CFRetain(*(result + 56));
  v4 = *(result + 64);
  if (v4)
  {
    CFRetain(v4);
  }

  APSDispatchAsyncFHelper();
}

void __stream_SendMessageCreatingReply_block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 160) = 0;
  }
}

void __stream_SendMessageCreatingReply_block_invoke_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -16614;
}

@end