@interface AXLTLiveTranscription
+ (AXLTLiveTranscription)sharedInstance;
- (AXLTLiveTranscription)init;
- (AXLTLiveTranscriptionDelegate)delegate;
- (BOOL)startTranscribing:(int64_t)transcribing targetPID:(int)d excludingPIDs:(id)ds callbackBlock:(id)block audioInfoBlock:(id)infoBlock error:(id *)error;
- (BOOL)stopTranscribing:(int64_t)transcribing targetPID:(int)d error:(id *)error;
- (id)_receiverKeyForRequestType:(int64_t)type targetPID:(int)d;
- (void)audioInfoData:(id)data;
- (void)resetTranscribing:(int64_t)transcribing;
- (void)transcriberOutputData:(id)data;
@end

@implementation AXLTLiveTranscription

+ (AXLTLiveTranscription)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[AXLTLiveTranscription sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __39__AXLTLiveTranscription_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXLTLiveTranscription)init
{
  v9.receiver = self;
  v9.super_class = AXLTLiveTranscription;
  v2 = [(AXLTLiveTranscription *)&v9 init];
  if (v2)
  {
    v3 = [[AXLTSpeechTranscriber alloc] initWithDelegate:v2];
    speechTranscriber = v2->_speechTranscriber;
    v2->_speechTranscriber = v3;

    v5 = +[AXLTAudioOutManager sharedInstance];
    [v5 setDelegate:v2];

    v6 = objc_opt_new();
    dataReceivers = v2->_dataReceivers;
    v2->_dataReceivers = v6;
  }

  return v2;
}

- (BOOL)startTranscribing:(int64_t)transcribing targetPID:(int)d excludingPIDs:(id)ds callbackBlock:(id)block audioInfoBlock:(id)infoBlock error:(id *)error
{
  v11 = *&d;
  v55[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  blockCopy = block;
  infoBlockCopy = infoBlock;
  v17 = AXLogLiveTranscription();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *v51 = transcribing;
    *&v51[8] = 1024;
    *&v51[10] = v11;
    _os_log_impl(&dword_256022000, v17, OS_LOG_TYPE_DEFAULT, "API startTranscribing request: %ld, targetPID: %d", buf, 0x12u);
  }

  noPunctuation = [(AXLTLiveTranscription *)self noPunctuation];
  v19 = +[AXLTTranscriber sharedInstance];
  [v19 setNoPunctuation:noPunctuation];

  taskHint = [(AXLTLiveTranscription *)self taskHint];
  v21 = +[AXLTTranscriber sharedInstance];
  [v21 setTaskHint:taskHint];

  if (!blockCopy)
  {
    v26 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA068];
    v55[0] = @"callback handler is nil";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    [v26 errorWithDomain:@"com.apple.accessibility.LiveTranscription" code:1 userInfo:v25];
    *error = v27 = 0;
    goto LABEL_30;
  }

  v45 = infoBlockCopy;
  v46 = dsCopy;
  if (transcribing == 1)
  {
    v28 = AXLogLiveTranscription();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [AXLTLiveTranscription startTranscribing:v28 targetPID:? excludingPIDs:? callbackBlock:? audioInfoBlock:? error:?];
    }

    if (v11 == -1)
    {
      v37 = +[AXLTAudioOutManager sharedInstance];
      v48 = 0;
      v38 = [v37 startTranscription:&v48];
      v25 = v48;

      if ((v38 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = @"Call";
      if ((v11 + 3) < 2)
      {
        v30 = @"liveCaptions.call";
      }

      else
      {
        v29 = @"System";
        v30 = @"liveCaptions.system";
      }

      v31 = v29;
      v32 = AXLCLocString(v30);
      v33 = +[AXLTAudioOutManager sharedInstance];
      v47 = 0;
      v34 = [v33 _startTranscriptionForPID:v11 appID:v31 appName:v32 excludingPIDs:v46 locale:0 error:&v47];

      v25 = v47;
      if ((v34 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_27:
    infoBlockCopy = v45;
    v39 = [[AXLTTranscribedDataReceiver alloc] initWithRequestType:transcribing targetPID:v11 handler:blockCopy audioInfoBlock:v45];
    v40 = [(AXLTLiveTranscription *)self _receiverKeyForRequestType:transcribing targetPID:v11];
    dataReceivers = [(AXLTLiveTranscription *)self dataReceivers];
    [dataReceivers setObject:v39 forKeyedSubscript:v40];

    v42 = AXLogLiveTranscription();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *v51 = v11;
      *&v51[4] = 2048;
      *&v51[6] = transcribing;
      v52 = 2112;
      v53 = v40;
      _os_log_debug_impl(&dword_256022000, v42, OS_LOG_TYPE_DEBUG, "registered pid: %d to receive transcription updates for: %ld, key: %@", buf, 0x1Cu);
    }

    v27 = 1;
    dsCopy = v46;
    goto LABEL_30;
  }

  if (transcribing)
  {
    v25 = 0;
  }

  else
  {
    v22 = AXLogLiveTranscription();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [AXLTLiveTranscription startTranscribing:v22 targetPID:? excludingPIDs:? callbackBlock:? audioInfoBlock:? error:?];
    }

    speechTranscriber = [(AXLTLiveTranscription *)self speechTranscriber];
    v49 = 0;
    v24 = [speechTranscriber startTranscription:&v49];
    v25 = v49;

    if (v24)
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  v35 = AXLogLiveTranscription();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    localizedDescription = [v25 localizedDescription];
    *buf = 67109634;
    *v51 = v11;
    *&v51[4] = 2048;
    *&v51[6] = transcribing;
    v52 = 2112;
    v53 = localizedDescription;
    _os_log_error_impl(&dword_256022000, v35, OS_LOG_TYPE_ERROR, "fail to register pid: %d to receive transcription updates for: %ld, error: %@", buf, 0x1Cu);
  }

  dsCopy = v46;
  if (error)
  {
    v36 = v25;
    v27 = 0;
    *error = v25;
  }

  else
  {
    v27 = 0;
  }

  infoBlockCopy = v45;
LABEL_30:

  return v27;
}

- (BOOL)stopTranscribing:(int64_t)transcribing targetPID:(int)d error:(id *)error
{
  v5 = *&d;
  v29 = *MEMORY[0x277D85DE8];
  v8 = AXLogLiveTranscription();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *v26 = transcribing;
    *&v26[8] = 1024;
    *&v26[10] = v5;
    _os_log_impl(&dword_256022000, v8, OS_LOG_TYPE_DEFAULT, "API stopTranscribing request: %ld, targetPID: %d", buf, 0x12u);
  }

  if (transcribing)
  {
    if (transcribing != 1)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v9 = +[AXLTAudioOutManager sharedInstance];
    v10 = v9;
    if (v5 == -1)
    {
      v23 = 0;
      v11 = [v9 stopTranscription:&v23];
      v12 = v23;
    }

    else
    {
      v22 = 0;
      v11 = [v9 _stopTranscriptionForPID:v5 error:&v22];
      v12 = v22;
    }

    v15 = v12;

    if (v11)
    {
LABEL_12:
      v16 = [(AXLTLiveTranscription *)self _receiverKeyForRequestType:transcribing targetPID:v5];
      v17 = AXLogLiveTranscription();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        *v26 = v5;
        *&v26[4] = 2048;
        *&v26[6] = transcribing;
        v27 = 2112;
        v28 = v16;
        _os_log_debug_impl(&dword_256022000, v17, OS_LOG_TYPE_DEBUG, "removed pid: %d to receive transcription updates for: %ld, key: %@", buf, 0x1Cu);
      }

      dataReceivers = [(AXLTLiveTranscription *)self dataReceivers];
      [dataReceivers removeObjectForKey:v16];

      v19 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    speechTranscriber = [(AXLTLiveTranscription *)self speechTranscriber];
    v24 = 0;
    v14 = [speechTranscriber stopTranscription:&v24];
    v15 = v24;

    if (v14)
    {
      goto LABEL_12;
    }
  }

  v16 = AXLogLiveTranscription();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    localizedDescription = [v15 localizedDescription];
    *buf = 67109634;
    *v26 = v5;
    *&v26[4] = 2048;
    *&v26[6] = transcribing;
    v27 = 2112;
    v28 = localizedDescription;
    _os_log_error_impl(&dword_256022000, v16, OS_LOG_TYPE_ERROR, "fail to remove pid: %d to receive transcription updates for: %ld, error: %@", buf, 0x1Cu);
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (void)resetTranscribing:(int64_t)transcribing
{
  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AXLTLiveTranscription *)transcribing resetTranscribing:v5];
  }

  if (transcribing == 1)
  {
    speechTranscriber = +[AXLTAudioOutManager sharedInstance];
  }

  else
  {
    if (transcribing)
    {
      return;
    }

    speechTranscriber = [(AXLTLiveTranscription *)self speechTranscriber];
  }

  v7 = speechTranscriber;
  [speechTranscriber resetTranscription];
}

- (void)transcriberOutputData:(id)data
{
  dataCopy = data;
  v5 = -[AXLTLiveTranscription _receiverKeyForRequestType:targetPID:](self, "_receiverKeyForRequestType:targetPID:", [dataCopy requestType], objc_msgSend(dataCopy, "pid"));
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXLTLiveTranscription transcriberOutputData:];
  }

  dataReceivers = [(AXLTLiveTranscription *)self dataReceivers];
  v8 = [dataReceivers objectForKeyedSubscript:v5];

  if (v8)
  {
    callbackBlock = [v8 callbackBlock];
    (callbackBlock)[2](callbackBlock, dataCopy);
  }
}

- (void)audioInfoData:(id)data
{
  dataCopy = data;
  v5 = -[AXLTLiveTranscription _receiverKeyForRequestType:targetPID:](self, "_receiverKeyForRequestType:targetPID:", [dataCopy requestType], objc_msgSend(dataCopy, "pid"));
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXLTLiveTranscription audioInfoData:];
  }

  dataReceivers = [(AXLTLiveTranscription *)self dataReceivers];
  v8 = [dataReceivers objectForKeyedSubscript:v5];

  if (v8)
  {
    audioInfoBlock = [v8 audioInfoBlock];

    if (audioInfoBlock)
    {
      audioInfoBlock2 = [v8 audioInfoBlock];
      (audioInfoBlock2)[2](audioInfoBlock2, dataCopy);
    }
  }

  delegate = [(AXLTLiveTranscription *)self delegate];

  if (delegate)
  {
    delegate2 = [(AXLTLiveTranscription *)self delegate];
    [delegate2 liveTranscriptionAudioInfoDataArrived:dataCopy];
  }
}

- (id)_receiverKeyForRequestType:(int64_t)type targetPID:(int)d
{
  if (type)
  {
    v4 = *&d;
    if ([AXLTAudioOutManager isCoreMediaNotificationsSupportedForPid:*&d])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%ld_%ld", type, -1];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%ld_%d", type, v4];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 0, v8];
  }
  v6 = ;

  return v6;
}

- (AXLTLiveTranscriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetTranscribing:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_256022000, a2, OS_LOG_TYPE_DEBUG, "API resetTranscribing for type: %ld", &v2, 0xCu);
}

@end