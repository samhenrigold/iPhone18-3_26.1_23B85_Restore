@interface AddToPlayQueue
@end

@implementation AddToPlayQueue

void __papc_AddToPlayQueue_block_invoke(void *a1)
{
  v2 = FigReadWriteLockLockForRead();
  if (*(a1[4] + 24))
  {
    __papc_AddToPlayQueue_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, SHIDWORD(v14), vars0);
  }

  else
  {
    papc_checkStartStopAirPlay(a1[5], NAN);
    if (*(a1[4] + 72) == 1)
    {
      __papc_AddToPlayQueue_block_invoke_cold_2(a1 + 5, a1);
    }
  }

  FigReadWriteLockUnlockForRead();
  v10 = a1[7];
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = a1[6];
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = a1[5];
  if (v12)
  {

    CFRelease(v12);
  }
}

void __playerairplay_AddToPlayQueue_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v2)
    {
      v3 = v2 == 10;
    }

    else
    {
      v3 = 1;
    }

    if (v3 || (v4 = *(a1 + 32), *(v4 + 216) == 11) && *(v4 + 56) == 0.0 && !playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback(*(a1 + 40)))
    {
      playerairplay_addItemToSubPlayerPlayQueue(*(a1 + 40), *(a1 + 48), *(a1 + 56));
    }

    else
    {
      playerairplay_addItemToLocalPlayQueue(*(a1 + 40), *(a1 + 48), *(a1 + 56));
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {

    CFRelease(v7);
  }
}

@end