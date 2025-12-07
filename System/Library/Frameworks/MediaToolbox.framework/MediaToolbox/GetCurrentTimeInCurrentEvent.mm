@interface GetCurrentTimeInCurrentEvent
@end

@implementation GetCurrentTimeInCurrentEvent

CFTypeRef __fpic_GetCurrentTimeInCurrentEvent_block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_158_3(a1);
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent(v2);
  FirstCurrentItem = fpic_GetFirstCurrentItem();
  if (!CurrentlyPlayingEvent)
  {
    goto LABEL_2;
  }

  v6 = FirstCurrentItem;
  v7 = fpic_UnwrapEvent();
  OUTLINED_FUNCTION_2_4();
  v8 = MEMORY[0x1E6960CC0];
  *(v9 + 32) = *MEMORY[0x1E6960CC0];
  *(v9 + 48) = *(v8 + 16);
  if (v6)
  {
    v10 = *(*(v1 + 32) + 8);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v11(v6, v10 + 32);
    }

    OUTLINED_FUNCTION_2_4();
    v18 = *(*(v1 + 56) + 432);
    fpic_AccumulateDuration((v12 + 32), &v18);
    OUTLINED_FUNCTION_2_4();
    v18 = *(*(v1 + 56) + 480);
    fpic_AccumulateDuration((v13 + 32), &v18);
    v14 = *(*(v1 + 32) + 8);
    v15 = fpic_UnwrapEvent();
    if (fpic_hasFirstItemPlayedOutForEvent())
    {
      FigPlayerInterstitialEventGetFirstItemStartOffset(v15, &rhs);
      v16 = *(v14 + 32);
      CMTimeAdd(&v18, &v16, &rhs);
      *(v14 + 32) = v18;
    }
  }

  if (v7)
  {
    result = CFRetain(v7);
  }

  else
  {
LABEL_2:
    result = 0;
  }

  **(v1 + 64) = result;
  return result;
}

void __fpirc_GetCurrentTimeInCurrentEvent_block_invoke(uint64_t a1)
{
  timebase = 0;
  CurrentEventWrapperOnQueue = fpirc_GetCurrentEventWrapperOnQueue(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 56);
  if (*(v3 + 32))
  {
    v4 = CurrentEventWrapperOnQueue;
    v5 = (*(v3 + 56))(*(a1 + 40), *(a1 + 48));
    if (v4 && (v6 = v5) != 0)
    {
      cf = 0;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(v6, 0, &cf);
        if (cf)
        {
          FigPlaybackItemGetFigBaseObject();
          v9 = v8;
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v10)
          {
            v10(v9, @"Timebase", *MEMORY[0x1E695E480], &timebase);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      if (timebase)
      {
        CMTimebaseGetTime(&v13, timebase);
        OUTLINED_FUNCTION_2_4();
        *(v11 + 32) = v13;
      }

      v12 = fpirc_UnwrapEvent();
      if (v12)
      {
        v12 = CFRetain(v12);
      }

      **(a1 + 64) = v12;
      if (timebase)
      {
        CFRelease(timebase);
      }
    }

    else
    {
      **(a1 + 64) = 0;
    }
  }
}

@end