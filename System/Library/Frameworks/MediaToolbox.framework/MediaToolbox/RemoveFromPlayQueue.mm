@interface RemoveFromPlayQueue
@end

@implementation RemoveFromPlayQueue

void __papc_RemoveFromPlayQueue_block_invoke(void *a1)
{
  v2 = FigReadWriteLockLockForRead();
  if (*(a1[4] + 24))
  {
    __papc_RemoveFromPlayQueue_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v20, cf, SHIDWORD(cf), v22);
    goto LABEL_13;
  }

  papc_checkStartStopAirPlay(a1[5], NAN);
  if (*(a1[4] + 72) != 1)
  {
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (*(DerivedStorage + 72) == 1)
  {
    v14 = *(DerivedStorage + 104);
    v13 = (DerivedStorage + 104);
    if (!v14 || (FigPlaybackItemGetFigBaseObject(), v16 = v15, (v17 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v17(v16, 0x1F0B3D158, v11, &cf))
    {
LABEL_9:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_11;
    }

    if (cf)
    {
      __papc_RemoveFromPlayQueue_block_invoke_cold_2(Mutable, cf, v13);
      goto LABEL_9;
    }
  }

LABEL_11:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_13:
  FigReadWriteLockUnlockForRead();
  v18 = a1[6];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[5];
  if (v19)
  {
    CFRelease(v19);
  }
}

void __playerairplay_RemoveFromPlayQueue_block_invoke(uint64_t a1)
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

    if (!v3)
    {
      playerairplay_removeItemFromLocalPlayQueue(*(a1 + 40), *(a1 + 48));
    }

    playerairplay_removeItemFromSubPlayerPlayQueue(*(a1 + 40), *(a1 + 48));
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __papc_RemoveFromPlayQueue_block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  FigCFDictionarySetValue();
  v5 = *a3;
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 40);
  if (v9)
  {
    return v9(v5, a1, 0, 0);
  }

  return result;
}

@end