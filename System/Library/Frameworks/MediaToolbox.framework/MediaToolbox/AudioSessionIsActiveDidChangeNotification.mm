@interface AudioSessionIsActiveDidChangeNotification
@end

@implementation AudioSessionIsActiveDidChangeNotification

void __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 32), *MEMORY[0x1E69AFA78]);
  v3 = Value;
  if (Value == *MEMORY[0x1E695E4C0] && *(*(a1 + 40) + 128))
  {
    cf = 0;
    v16 = 0;
    v5 = *(a1 + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6 && (!v6(v5, 0, &v16) ? (v7 = v16 == 0) : (v7 = 1), !v7 && (FigPlaybackItemGetFigBaseObject(), v9 = v8, (v10 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0)))
    {
      v10(v9, @"HasEnabledAudio", *MEMORY[0x1E695E480], &cf);
      v11 = cf;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != v3)
    {
      if (*(*(a1 + 40) + 130))
      {
        playerceleste_pauseCurrentlyPlayingMovie(*(a1 + 48), 28);
      }

      if (playerceleste_canCallSetConnectionActive(*(a1 + 48)))
      {
        playerceleste_callSetConnectionActive(*(a1 + 48), 0);
      }

      *(*(a1 + 40) + 128) = 0;
      v11 = cf;
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v16;
    if (v16)
    {
      if (*(a1 + 48))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v14 = *(DerivedStorage + 200);
        if (v14)
        {
          dispatch_retain(*(DerivedStorage + 200));
        }
      }

      else
      {
        v14 = 0;
      }

      if (qword_1ED4CBA70 != -1)
      {
        __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerceleste_deferItemRelease_block_invoke;
      block[3] = &unk_1E7483B48;
      block[4] = v14;
      block[5] = v12;
      dispatch_async(qword_1ED4CBA68, block);
    }
  }

  else if (Value == *MEMORY[0x1E695E4D0] && !*(*(a1 + 40) + 128))
  {
    if (playerceleste_canCallSetConnectionActive(*(a1 + 48)))
    {
      playerceleste_callSetConnectionActive(*(a1 + 48), 1);
    }

    *(*(a1 + 40) + 128) = 1;
    v4 = *(a1 + 48);

    playerceleste_revokePurgeAssertionIfNecessary(v4);
  }
}

@end