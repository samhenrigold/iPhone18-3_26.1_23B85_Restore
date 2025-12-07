@interface ANSimpleTrackPlayer
- (void)handleInterruptionDelay:(double)delay;
- (void)playInternalWithCompletionHandler:(id)handler;
@end

@implementation ANSimpleTrackPlayer

- (void)playInternalWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(ANTrackPlayer *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    queuePlayer = [(ANTrackPlayer *)self queuePlayer];
    currentItem = [queuePlayer currentItem];
    v8 = currentItem;
    if (currentItem)
    {
      objc_msgSend_duration(currentItem);
    }

    else
    {
      memset(&v14, 0, sizeof(v14));
    }

    Seconds = CMTimeGetSeconds(&v14);
    LODWORD(v14.value) = 136315394;
    *(&v14.value + 4) = "[ANSimpleTrackPlayer playInternalWithCompletionHandler:]";
    LOWORD(v14.flags) = 2048;
    *(&v14.flags + 2) = Seconds;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s: Duration = %fs", &v14, 0x16u);
  }

  queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
  [queuePlayer2 play];

  queuePlayer3 = [(ANTrackPlayer *)self queuePlayer];
  error = [queuePlayer3 error];

  if (error)
  {
    v13 = [(ANTrackPlayer *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ANSimpleTrackPlayer *)error playInternalWithCompletionHandler:v13];
    }
  }

  handlerCopy[2](handlerCopy, error);
}

- (void)handleInterruptionDelay:(double)delay
{
  v18 = **&MEMORY[0x277CC08F0];
  queuePlayer = [(ANTrackPlayer *)self queuePlayer];
  v5 = queuePlayer;
  if (queuePlayer)
  {
    objc_msgSend_currentTime(queuePlayer);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  [(ANTrackPlayer *)self previousSkipGoesToPreviousTrackDelta];
  if (Seconds > v7)
  {
    [(ANTrackPlayer *)self previousSkipGoesToPreviousTrackDelta];
    v9 = Seconds - v8;
    queuePlayer2 = [(ANTrackPlayer *)self queuePlayer];
    v11 = queuePlayer2;
    if (queuePlayer2)
    {
      objc_msgSend_currentTime(queuePlayer2);
      LODWORD(queuePlayer2) = v15;
    }

    else
    {
      v14[5] = 0;
      v15 = 0;
      v16 = 0;
    }

    CMTimeMakeWithSeconds(&v18, v9, queuePlayer2);
  }

  queuePlayer3 = [(ANTrackPlayer *)self queuePlayer];
  currentItem = [queuePlayer3 currentItem];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__ANSimpleTrackPlayer_handleInterruptionDelay___block_invoke;
  v14[3] = &unk_278C86A38;
  v14[4] = self;
  time = v18;
  [currentItem seekToTime:&time completionHandler:v14];
}

void __47__ANSimpleTrackPlayer_handleInterruptionDelay___block_invoke(uint64_t a1, int a2)
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
    v6 = "[ANSimpleTrackPlayer handleInterruptionDelay:]_block_invoke";
    v7 = 2080;
    v8 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_INFO, "%s: Attempt to restart announcement after interruption was %s.", &v5, 0x16u);
  }
}

- (void)playInternalWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Failed to play AVQueuePlayer %@", &v2, 0xCu);
}

@end