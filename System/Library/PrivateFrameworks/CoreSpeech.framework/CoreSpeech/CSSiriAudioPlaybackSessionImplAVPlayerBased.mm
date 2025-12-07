@interface CSSiriAudioPlaybackSessionImplAVPlayerBased
- (CSSiriAudioPlaybackSessionImplAVPlayerBased)initWithQueue:(id)queue request:(id)request options:(unint64_t)options;
- (NSString)description;
- (void)_finalizeWithError:(id)error;
- (void)_handleEndInterruption:(BOOL)interruption;
- (void)_prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion;
- (void)_resetPlayerItem;
- (void)_startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
- (void)_stop:(BOOL)_stop;
- (void)handleEndInterruption:(BOOL)interruption;
- (void)playerItemDidPlayToEndTime:(id)time;
- (void)playerItemFailedToPlayToEndTime:(id)time;
- (void)prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion;
- (void)startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler;
- (void)stop:(BOOL)stop completion:(id)completion;
@end

@implementation CSSiriAudioPlaybackSessionImplAVPlayerBased

- (void)playerItemFailedToPlayToEndTime:(id)time
{
  v14 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased playerItemFailedToPlayToEndTime:]";
    v12 = 2112;
    v13 = timeCopy;
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__CSSiriAudioPlaybackSessionImplAVPlayerBased_playerItemFailedToPlayToEndTime___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = timeCopy;
  v7 = timeCopy;
  dispatch_async(queue, v8);
}

void __79__CSSiriAudioPlaybackSessionImplAVPlayerBased_playerItemFailedToPlayToEndTime___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CEF2A0];
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) userInfo];
  v3 = [v5 objectForKey:*MEMORY[0x277CE60C8]];
  v4 = [v1 errorWithCode:1424 description:@"Player item failed to play to end time." underlyingError:v3];
  [v2 _finalizeWithError:v4];
}

- (void)playerItemDidPlayToEndTime:(id)time
{
  v12 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased playerItemDidPlayToEndTime:]";
    v10 = 2112;
    v11 = timeCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CSSiriAudioPlaybackSessionImplAVPlayerBased_playerItemDidPlayToEndTime___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_resetPlayerItem
{
  v11 = *MEMORY[0x277D85DE8];
  playerItem = self->_playerItem;
  if (playerItem)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _resetPlayerItem]";
      v9 = 2112;
      v10 = playerItem;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Reset player item %@.", &v7, 0x16u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:self->_playerItem];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60D0] object:self->_playerItem];
    [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:0];
    v6 = self->_playerItem;
    self->_playerItem = 0;
  }
}

- (void)_finalizeWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0A0];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO);
  if (errorCopy)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *v15 = 136315394;
    *&v15[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _finalizeWithError:]";
    *&v15[12] = 2112;
    *&v15[14] = errorCopy;
    v7 = "%s error = %@";
    v8 = v5;
    v9 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *v15 = 136315138;
    *&v15[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _finalizeWithError:]";
    v7 = "%s ";
    v8 = v5;
    v9 = 12;
  }

  _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, v7, v15, v9);
LABEL_7:
  if (self->_playerItem)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:self->_playerItem];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60D0] object:self->_playerItem];
  }

  if (self->_isActive)
  {
    self->_isActive = 0;
    [(AVPlayer *)self->_player setRate:0.0];
    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x277CEF588]])
      {
        code = [errorCopy code];

        if (code == 1408)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _resetPlayerItem:*v15];
    }
  }

LABEL_16:
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, errorCopy);
    v14 = self->_completion;
    self->_completion = 0;
  }
}

- (void)_handleEndInterruption:(BOOL)interruption
{
  if (interruption && self->_isActive)
  {
    LODWORD(v3) = 1.0;
    [(AVPlayer *)self->_player setRate:v3];
  }
}

- (void)_stop:(BOOL)_stop
{
  v4 = [MEMORY[0x277CEF2A0] errorWithCode:1408 description:@"Stopped playback."];
  [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _finalizeWithError:v4];

  [(AVPlayer *)self->_player setRate:0.0];
  player = self->_player;
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v8 = v10;
  v9 = v11;
  v6 = v10;
  v7 = v11;
  [(AVPlayer *)player seekToTime:&v10 toleranceBefore:&v8 toleranceAfter:&v6];
}

- (void)_startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  v33 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  handlerCopy = handler;
  executionHandlerCopy = executionHandler;
  finalizationHandlerCopy = finalizationHandler;
  v16 = MEMORY[0x277CEF0A0];
  v17 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    v19 = v17;
    v20 = AFAudioPlaybackOptionsGetNames();
    *buf = 136315650;
    v28 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
    v29 = 2112;
    selfCopy = request;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_INFO, "%s request = %@, options = %@", buf, 0x20u);
  }

  if (self->_isActive)
  {
    v21 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]";
      v29 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_222E4D000, v21, OS_LOG_TYPE_ERROR, "%s Attempted to start %@ when it is already active.", buf, 0x16u);
      if (!finalizationHandlerCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    if (finalizationHandlerCopy)
    {
LABEL_6:
      v22 = [MEMORY[0x277CEF2A0] errorWithCode:1405 description:@"Attempted to start audio playback session when it is already active." underlyingError:0];
      finalizationHandlerCopy[2](finalizationHandlerCopy, v22);
    }
  }

  else
  {
    self->_isActive = 1;
    v23 = MEMORY[0x223DD26C0](finalizationHandlerCopy);
    completion = self->_completion;
    self->_completion = v23;

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke;
    v25[3] = &unk_2784C4798;
    v25[4] = self;
    v26 = executionHandlerCopy;
    [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _prepareWithOptions:options audioSession:sessionCopy completion:v25];
  }

LABEL_10:
}

void __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Failed to prepare %@ due to error %@.", buf, 0x20u);
    }

    [*(a1 + 32) _finalizeWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    if (*(v5 + 16))
    {
      [*(v5 + 24) setRate:0.0];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(v7 + 24);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_37;
      v16[3] = &unk_2784C63E0;
      v16[4] = v7;
      v17 = v6;
      *buf = *MEMORY[0x277CC08F0];
      *&buf[16] = *(MEMORY[0x277CC08F0] + 16);
      v14 = *buf;
      v15 = *&buf[16];
      v12 = *buf;
      v13 = *&buf[16];
      [v8 seekToTime:buf toleranceBefore:&v14 toleranceAfter:&v12 completionHandler:v16];
    }

    else
    {
      v9 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v5;
        _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s Failed to start %@ because it is already inactive after preparation.", buf, 0x16u);
        v5 = *(a1 + 32);
      }

      v10 = [MEMORY[0x277CEF2A0] errorWithCode:1409 description:@"Audio playback session is already inactive after preparation."];
      [v5 _finalizeWithError:v10];
    }
  }
}

void __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_37(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_2;
  block[3] = &unk_2784C6778;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

void __134__CSSiriAudioPlaybackSessionImplAVPlayerBased__startWithOptions_audioSession_preparationHandler_executionHandler_finalizationHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    v7 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s Failed to start %@ because it is already inactive after player seek to begin.", &v12, 0x16u);
      v2 = *(a1 + 32);
    }

    v8 = MEMORY[0x277CEF2A0];
    v9 = @"Audio playback session is already inactive after player seek to begin.";
    v10 = 1409;
    goto LABEL_13;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v11 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Failed to start %@ because player failed to seek to begin.", &v12, 0x16u);
      v2 = *(a1 + 32);
    }

    v8 = MEMORY[0x277CEF2A0];
    v9 = @"Player failed to seek to begin.";
    v10 = 1425;
LABEL_13:
    v3 = [v8 errorWithCode:v10 description:v9];
    [v2 _finalizeWithError:v3];
    goto LABEL_14;
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_playerItemDidPlayToEndTime_ name:*MEMORY[0x277CE60C0] object:*(*(a1 + 32) + 32)];
  [v3 addObserver:*(a1 + 32) selector:sel_playerItemFailedToPlayToEndTime_ name:*MEMORY[0x277CE60D0] object:*(*(a1 + 32) + 32)];
  LODWORD(v4) = 1.0;
  [*(*(a1 + 32) + 24) setRate:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _startWithOptions:audioSession:preparationHandler:executionHandler:finalizationHandler:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s started", &v12, 0xCu);
  }

LABEL_14:
}

- (void)_prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion
{
  v77 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  completionCopy = completion;
  v9 = MEMORY[0x277CEF0A0];
  v10 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    v12 = v10;
    v13 = AFAudioPlaybackOptionsGetNames();
    *buf = 136315650;
    *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = request;
    *&buf[22] = 2112;
    v75 = v13;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s request = %@, options = %@", buf, 0x20u);
  }

  v14 = objc_alloc(MEMORY[0x277CEF340]);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke;
  v72[3] = &unk_2784C6480;
  v15 = completionCopy;
  v73 = v15;
  v16 = [MEMORY[0x277CEF2A0] errorWithCode:40];
  v17 = [v14 initWithBlock:v72 defaultValue:v16];

  if ([(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusFailed)
  {
    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      playerItem = self->_playerItem;
      v51 = v18;
      error = [(AVPlayerItem *)playerItem error];
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = playerItem;
      *&buf[22] = 2112;
      v75 = error;
      _os_log_error_impl(&dword_222E4D000, v51, OS_LOG_TYPE_ERROR, "%s Player item %@ status is failed with error %@.", buf, 0x20u);
    }

    [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _resetPlayerItem];
  }

  if (self->_playerItem)
  {
    goto LABEL_17;
  }

  itemURL = [(AFAudioPlaybackRequest *)self->_request itemURL];
  if (itemURL)
  {
    v20 = [objc_alloc(MEMORY[0x277CE65B0]) initWithURL:itemURL];
    v21 = self->_playerItem;
    self->_playerItem = v20;

    v22 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v54 = self->_playerItem;
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v54;
      *&buf[22] = 2112;
      v75 = itemURL;
      _os_log_debug_impl(&dword_222E4D000, v22, OS_LOG_TYPE_DEBUG, "%s Created player item %@ from URL %@.", buf, 0x20u);
    }
  }

  if (self->_playerItem)
  {
    goto LABEL_17;
  }

  itemData = [(AFAudioPlaybackRequest *)self->_request itemData];
  if (itemData)
  {
    v24 = [MEMORY[0x277CE63D8] assetWithData:itemData contentType:*MEMORY[0x277CE5DB8] options:0];
    v25 = [objc_alloc(MEMORY[0x277CE65B0]) initWithAsset:v24];
    v26 = self->_playerItem;
    self->_playerItem = v25;

    v27 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v58 = self->_playerItem;
      v56 = v27;
      v57 = [itemData length];
      *buf = 136315650;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v58;
      *&buf[22] = 2048;
      v75 = v57;
      _os_log_debug_impl(&dword_222E4D000, v56, OS_LOG_TYPE_DEBUG, "%s Created player item %@ from WAVE asset with %tu bytes of data .", buf, 0x20u);
    }
  }

  if (self->_playerItem)
  {
LABEL_17:
    player = self->_player;
    if (!player)
    {
      v29 = [objc_alloc(MEMORY[0x277CE6598]) initWithDispatchQueue:self->_queue];
      v30 = self->_player;
      self->_player = v29;

      v31 = self->_player;
      [(AFAudioPlaybackRequest *)self->_request volume];
      [(AVPlayer *)v31 setVolume:?];
      [(AVPlayer *)self->_player setActionAtItemEnd:2];
      v32 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v53 = self->_player;
        *buf = 136315394;
        *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v53;
        _os_log_debug_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEBUG, "%s Created player %@.", buf, 0x16u);
      }

      player = self->_player;
    }

    [(AVPlayer *)player setAudioSession:sessionCopy, v58];
    [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:self->_playerItem];
    currentItem = [(AVPlayer *)self->_player currentItem];
    v34 = self->_playerItem;
    if (currentItem == v34)
    {
      if ([(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusReadyToPlay)
      {
        v37 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          v55 = self->_playerItem;
          *buf = 136315394;
          *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
          *&buf[12] = 2112;
          *&buf[14] = v55;
          _os_log_debug_impl(&dword_222E4D000, v37, OS_LOG_TYPE_DEBUG, "%s Player item %@ status is ready to play.", buf, 0x16u);
        }

        [v17 invokeWithValue:0];
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v75 = __Block_byref_object_copy__8995;
        *&v76 = __Block_byref_object_dispose__8996;
        *(&v76 + 1) = 0;
        v66 = 0;
        v67 = &v66;
        v68 = 0x3032000000;
        v69 = __Block_byref_object_copy__8995;
        v70 = __Block_byref_object_dispose__8996;
        v71 = 0;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_15;
        v65[3] = &unk_2784C4060;
        v65[4] = buf;
        v65[5] = &v66;
        v38 = MEMORY[0x223DD26C0](v65);
        v39 = objc_alloc(MEMORY[0x277CEF530]);
        queue = self->_queue;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_2;
        v61[3] = &unk_2784C6C68;
        v41 = v17;
        v62 = v41;
        selfCopy = self;
        v42 = v38;
        v64 = v42;
        v43 = [v39 initWithTimeoutInterval:queue onQueue:v61 timeoutHandler:2.0];
        v44 = v67[5];
        v67[5] = v43;

        [v67[5] start];
        v59 = v41;
        v60 = v42;
        v45 = [objc_alloc(MEMORY[0x277CEF2D0]) initWithQueue:self->_queue qosClass:33 asynchronous:1];
        v46 = AFKeyValueObservingCreate();
        v47 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v46;

        _Block_object_dispose(&v66, 8);
        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v35 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v49 = self->_player;
        *buf = 136315906;
        *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v49;
        *&buf[22] = 2112;
        v75 = v34;
        LOWORD(v76) = 2112;
        *(&v76 + 2) = currentItem;
        _os_log_error_impl(&dword_222E4D000, v35, OS_LOG_TYPE_ERROR, "%s Unable to replace current item of player %@. Expected current item is %@, actual current item is %@.", buf, 0x2Au);
      }

      v36 = [MEMORY[0x277CEF2A0] errorWithCode:1420 description:@"Unable to replace current item of player."];
      [v17 invokeWithValue:v36];
    }
  }

  else
  {
    v48 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]";
      _os_log_error_impl(&dword_222E4D000, v48, OS_LOG_TYPE_ERROR, "%s Unable to create player item.", buf, 0xCu);
    }

    currentItem = [MEMORY[0x277CEF2A0] errorWithCode:1423 description:{@"Unable to create player item.", v58}];
    [v17 invokeWithValue:currentItem];
  }
}

void __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0A0];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s prepared", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_15(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

uint64_t __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [MEMORY[0x277CEF2A0] errorWithCode:1421 description:@"Timed out when waiting for player item status to change to ready to play."];
  LODWORD(v2) = [v2 invokeWithValue:v3];

  if (v2)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1[5] + 32);
      v7 = 136315394;
      v8 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke_2";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Timed out when waiting for player item %@ status to change to ready to play.", &v7, 0x16u);
    }
  }

  return (*(a1[6] + 16))();
}

void __91__CSSiriAudioPlaybackSessionImplAVPlayerBased__prepareWithOptions_audioSession_completion___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 integerValue];
    if (v5 == 2)
    {
      v7 = [*(*(a1 + 40) + 32) error];
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CEF2A0] errorWithCode:1422 description:@"Failed to change player item status to ready to play." underlyingError:v7];
      LODWORD(v8) = [v8 invokeWithValue:v9];

      if (v8)
      {
        v10 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
        {
          v12 = *(*(a1 + 40) + 32);
          v13 = 136315650;
          v14 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
          v15 = 2112;
          v16 = v12;
          v17 = 2112;
          v18 = v7;
          _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s Failed to change player item %@ status to ready to play due to error %@.", &v13, 0x20u);
        }
      }

      (*(*(a1 + 48) + 16))();
    }

    else if (v5 == 1)
    {
      if ([*(a1 + 32) invokeWithValue:0])
      {
        v6 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
        {
          v11 = *(*(a1 + 40) + 32);
          v13 = 136315394;
          v14 = "[CSSiriAudioPlaybackSessionImplAVPlayerBased _prepareWithOptions:audioSession:completion:]_block_invoke";
          v15 = 2112;
          v16 = v11;
          _os_log_debug_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEBUG, "%s Successfully changed player item %@ status to ready to play.", &v13, 0x16u);
        }
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)handleEndInterruption:(BOOL)interruption
{
  interruptionCopy = interruption;
  dispatch_assert_queue_V2(self->_queue);

  [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _handleEndInterruption:interruptionCopy];
}

- (void)stop:(BOOL)stop completion:(id)completion
{
  stopCopy = stop;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _stop:stopCopy];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v6 = completionCopy;
  }
}

- (void)startWithOptions:(unint64_t)options audioSession:(id)session preparationHandler:(id)handler executionHandler:(id)executionHandler finalizationHandler:(id)finalizationHandler
{
  queue = self->_queue;
  finalizationHandlerCopy = finalizationHandler;
  executionHandlerCopy = executionHandler;
  handlerCopy = handler;
  sessionCopy = session;
  dispatch_assert_queue_V2(queue);
  [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _startWithOptions:options audioSession:sessionCopy preparationHandler:handlerCopy executionHandler:executionHandlerCopy finalizationHandler:finalizationHandlerCopy];
}

- (void)prepareWithOptions:(unint64_t)options audioSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isActive)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)self _prepareWithOptions:options audioSession:sessionCopy completion:completionCopy];
  }
}

- (CSSiriAudioPlaybackSessionImplAVPlayerBased)initWithQueue:(id)queue request:(id)request options:(unint64_t)options
{
  queueCopy = queue;
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = CSSiriAudioPlaybackSessionImplAVPlayerBased;
  v11 = [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v13 = [requestCopy copy];
    request = v12->_request;
    v12->_request = v13;

    v12->_options = options;
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9.receiver = self;
  v9.super_class = CSSiriAudioPlaybackSessionImplAVPlayerBased;
  v4 = [(CSSiriAudioPlaybackSessionImplAVPlayerBased *)&v9 description];
  request = self->_request;
  v6 = AFAudioPlaybackOptionsGetNames();
  v7 = [v3 initWithFormat:@"%@ {request = %@, options = %@, player = %@, playerItem = %@}", v4, request, v6, self->_player, self->_playerItem];

  return v7;
}

@end