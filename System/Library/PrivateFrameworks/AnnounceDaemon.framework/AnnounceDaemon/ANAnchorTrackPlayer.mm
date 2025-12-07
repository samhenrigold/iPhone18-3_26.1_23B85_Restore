@interface ANAnchorTrackPlayer
- (void)handleInterruptionDelay:(double)delay;
- (void)playInternalWithCompletionHandler:(id)handler;
- (void)setStartTime:(id *)time;
@end

@implementation ANAnchorTrackPlayer

- (void)playInternalWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[ANAnchorTrackPlayer playInternalWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ANAnchorTrackPlayer_playInternalWithCompletionHandler___block_invoke;
  v9[3] = &unk_278C86DA0;
  objc_copyWeak(&v11, buf);
  v9[4] = self;
  v12 = 1065353216;
  v7 = handlerCopy;
  v10 = v7;
  LODWORD(v8) = 1.0;
  [queuePlayer prerollAtRate:v9 completionHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __57__ANAnchorTrackPlayer_playInternalWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 67109120;
    HIDWORD(buf.value) = a2;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Preroll Finished: %d", &buf, 8u);
  }

  if ((a2 & 1) == 0)
  {
    v6 = [WeakRetained log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__ANAnchorTrackPlayer_playInternalWithCompletionHandler___block_invoke_cold_1(v6);
    }
  }

  memset(&v28, 0, sizeof(v28));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v28, HostTimeClock);
  memset(&v27[1], 0, sizeof(CMTime));
  if (WeakRetained)
  {
    objc_msgSend_startTime(WeakRetained);
  }

  memset(v27, 0, 24);
  v8 = [WeakRetained queuePlayer];
  v9 = v8;
  if (v8)
  {
    objc_msgSend_currentTime(v8);
  }

  else
  {
    memset(v27, 0, 24);
  }

  memset(&v26, 0, sizeof(v26));
  buf = v27[1];
  v25 = v28;
  CMTimeSubtract(&v26, &buf, &v25);
  v10 = [WeakRetained log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 134218752;
    *(&buf.value + 4) = v27[0].value;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = v27[1].value;
    HIWORD(buf.epoch) = 2048;
    value = v28.value;
    v31 = 2048;
    v32 = v26.value / v26.timescale;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "AVQueuePlayer Current Time %lld, Target Host Time: %lld, Now: %lld, Delta(sec): %f", &buf, 0x2Au);
  }

  buf = v28;
  v25 = v27[1];
  if (CMTimeCompare(&buf, &v25) == 1)
  {
    v11 = [WeakRetained log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Start Time is in the past. Will use play", &buf, 2u);
    }

    v12 = [WeakRetained queuePlayer];
    [v12 play];

    v13 = [WeakRetained queuePlayer];
    v14 = [v13 error];
  }

  else
  {
    v15 = [*(a1 + 32) queuePlayer];
    [v15 setAutomaticallyWaitsToMinimizeStalling:0];

    v16 = [WeakRetained log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [WeakRetained queuePlayer];
      v18 = [WeakRetained queuePlayer];
      [v18 rate];
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = v17;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v19;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "Will Set Rate on AVQueuePlayer %@, rate = %f", &buf, 0x16u);
    }

    v20 = [WeakRetained queuePlayer];
    LODWORD(v21) = *(a1 + 56);
    buf = v27[0];
    v25 = v27[1];
    [v20 setRate:&buf time:&v25 atHostTime:v21];

    v13 = [WeakRetained log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [WeakRetained queuePlayer];
      v23 = [WeakRetained queuePlayer];
      [v23 rate];
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = v22;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v24;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "Did set Rate on AVQueuePlayer %@, rate = %f", &buf, 0x16u);
    }

    v14 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)handleInterruptionDelay:(double)delay
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ANAnchorTrackPlayer handleInterruptionDelay:]";
    *&buf[12] = 2048;
    *&buf[14] = delay;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s: amountOfTimeInterrupted %f", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  playerItems = [(ANTrackPlayer *)self playerItems];
  v7 = [playerItems countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(playerItems);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        playerItem = [v11 playerItem];
        queuePlayer = [(ANTrackPlayer *)self queuePlayer];
        currentItem = [queuePlayer currentItem];

        if (playerItem == currentItem)
        {
          trackType = [v11 trackType];
          queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
          v17 = queuePlayer2;
          if (trackType)
          {
            [queuePlayer2 advanceToNextItem];
          }

          else
          {
            currentItem2 = [queuePlayer2 currentItem];
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __47__ANAnchorTrackPlayer_handleInterruptionDelay___block_invoke;
            v19[3] = &unk_278C86A38;
            v19[4] = self;
            *buf = *MEMORY[0x277CC08F0];
            *&buf[16] = *(MEMORY[0x277CC08F0] + 16);
            [currentItem2 seekToTime:buf completionHandler:v19];
          }

          goto LABEL_16;
        }
      }

      v8 = [playerItems countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

void __47__ANAnchorTrackPlayer_handleInterruptionDelay___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = "unsuccessful";
    if (a2)
    {
      v4 = "successful";
    }

    v5 = 136315394;
    v6 = "[ANAnchorTrackPlayer handleInterruptionDelay:]_block_invoke";
    v7 = 2080;
    v8 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_INFO, "%s: Attempt to restart announcement after interruption was %s.", &v5, 0x16u);
  }
}

- (void)setStartTime:(id *)time
{
  var3 = time->var3;
  *&self->_startTime.value = *&time->var0;
  self->_startTime.epoch = var3;
}

@end