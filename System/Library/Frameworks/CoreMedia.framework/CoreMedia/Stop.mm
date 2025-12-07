@interface Stop
@end

@implementation Stop

uint64_t __tcp_Stop_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  v9 = *(v8 + 48);
  if (v9 == 1)
  {
    v10 = result;
    *(v8 + 120) = 1;
    v11 = *(v8 + 92);
    if ((v11 & 0x80000000) == 0)
    {
      close(v11);
      v8 = *(v10 + 32);
      *(v8 + 92) = -1;
    }

    FigThreadJoin(*(v8 + 112), 0, a3, a4, a5, a6, a7, a8, v14);
    *(*(v10 + 32) + 112) = 0;
    result = tcp_CleanupFileDescriptors(*(v10 + 40));
    v8 = *(v10 + 32);
    v9 = *(v8 + 48);
  }

  v12 = __OFSUB__(v9, 1);
  v13 = v9 - 1;
  if (v13 < 0 == v12)
  {
    *(v8 + 48) = v13;
  }

  return result;
}

_opaque_pthread_t *__usb_Stop_block_invoke(_opaque_pthread_t *result)
{
  v1 = *&result->__opaque[16];
  v2 = *(v1 + 88);
  if (v2 == 1)
  {
    v3 = result;
    v4 = *(v1 + 80);
    if (v4)
    {
      CFRelease(v4);
      *(*&v3->__opaque[16] + 80) = 0;
    }

    result = usb_stopMessageSendingAndReceivingThreads(*&v3->__opaque[24]);
    v1 = *&v3->__opaque[16];
    v2 = *(v1 + 88);
  }

  v5 = __OFSUB__(v2, 1);
  v6 = v2 - 1;
  if (v6 < 0 == v5)
  {
    *(v1 + 88) = v6;
  }

  return result;
}

_BYTE *__ids_Stop_block_invoke(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(*(a1 + 40));
  if (*result)
  {
    v12 = -12055;
  }

  else
  {
    v3 = result;
    v4 = *(result + 9);
    if (v4 == 1)
    {
      *(result + 44) = 1;
      dispatch_semaphore_signal(*(result + 18));
      dispatch_semaphore_signal(*(v3 + 19));
      FigThreadJoin(*(v3 + 10), 0, v5, v6, v7, v8, v9, v10, v13);
      *(v3 + 10) = 0;
      result = [*(v3 + 9) deactivateConnection];
      v4 = *(v3 + 9);
    }

    v11 = v4 - 1;
    if (v4 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      *(v3 + 9) = v11;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v12;
  return result;
}

@end