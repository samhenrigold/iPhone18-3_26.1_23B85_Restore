@interface AVAudioDeviceTest
- (AVAudioDeviceTest)init;
- (AVAudioDeviceTest)initWithXPCEndPoint:(id)point;
- (id)initInProcess:(BOOL)process;
- (void)cancel;
- (void)dealloc;
- (void)playback:(id)playback filePath:(id)path completion:(id)completion;
- (void)playbackTone:(id)tone completion:(id)completion;
- (void)setupAudioSessionForHearingTest:(id)test;
- (void)setupAudioSessionForHearingTestWithStatus:(id)status success:(id)success;
- (void)startRecording:(id)recording filePath:(id)path completion:(id)completion;
- (void)startWithSequence:(id)sequence completion:(id)completion;
- (void)stopAudioSession:(id)session;
- (void)stopPlayback;
- (void)stopRecording:(id)recording;
@end

@implementation AVAudioDeviceTest

- (void)dealloc
{
  service = [(AVAudioDeviceTest *)self service];

  if (!service)
  {
    connection = [(AVAudioDeviceTest *)self connection];
    [connection invalidate];
  }

  v5.receiver = self;
  v5.super_class = AVAudioDeviceTest;
  [(AVAudioDeviceTest *)&v5 dealloc];
}

- (void)cancel
{
  service = [(AVAudioDeviceTest *)self service];

  if (!service)
  {
    serviceDelegateAsync = [(AVAudioDeviceTest *)self serviceDelegateAsync];
    [serviceDelegateAsync cancel];
  }
}

- (void)stopAudioSession:(id)session
{
  v16 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v5 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    connection = [(AVAudioDeviceTest *)self connection];
    v10 = 136315650;
    v11 = "AVAudioDeviceTest.mm";
    v12 = 1024;
    v13 = 272;
    v14 = 1024;
    processIdentifier = [connection processIdentifier];
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Stopping audio session. { pid=%d }", &v10, 0x18u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v8 = service == 0;

  if (v8)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 stopAudioSession:sessionCopy];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 stopAudioSession:sessionCopy];
  }
}

- (void)setupAudioSessionForHearingTestWithStatus:(id)status success:(id)success
{
  v19 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  successCopy = success;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v8 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    connection = [(AVAudioDeviceTest *)self connection];
    v13 = 136315650;
    v14 = "AVAudioDeviceTest.mm";
    v15 = 1024;
    v16 = 260;
    v17 = 1024;
    processIdentifier = [connection processIdentifier];
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Setting up hearing test audio session. { pid=%d }", &v13, 0x18u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v11 = service == 0;

  if (v11)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 setupAudioSessionForHearingTestWithStatus:statusCopy success:successCopy];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 setupAudioSessionForHearingTestWithStatus:statusCopy success:successCopy];
  }
}

- (void)setupAudioSessionForHearingTest:(id)test
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v5 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    connection = [(AVAudioDeviceTest *)self connection];
    v10 = 136315650;
    v11 = "AVAudioDeviceTest.mm";
    v12 = 1024;
    v13 = 247;
    v14 = 1024;
    processIdentifier = [connection processIdentifier];
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Setting up hearing test audio session. { pid=%d }", &v10, 0x18u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v8 = service == 0;

  if (v8)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 setupAudioSessionForHearingTest:testCopy];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 setupAudioSessionForHearingTest:testCopy];
  }
}

- (void)stopRecording:(id)recording
{
  v13 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v5 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AVAudioDeviceTest.mm";
    v11 = 1024;
    v12 = 235;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopping recording on client side", &v9, 0x12u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v7 = service == 0;

  if (v7)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 stopRecording:recordingCopy];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 stopRecording:recordingCopy];
  }
}

- (void)startRecording:(id)recording filePath:(id)path completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  pathCopy = path;
  completionCopy = completion;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v11 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315650;
    v23 = "AVAudioDeviceTest.mm";
    v24 = 1024;
    v25 = 211;
    v26 = 2112;
    v27 = pathCopy;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting recording on client side %@", &v22, 0x1Cu);
  }

  service = [(AVAudioDeviceTest *)self service];
  v13 = service == 0;

  if (v13)
  {
    v15 = pathCopy;
    [pathCopy fileSystemRepresentation];
    v16 = *MEMORY[0x1E69E9BB0];
    v17 = sandbox_extension_issue_file();
    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v18 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315906;
      v23 = "AVAudioDeviceTest.mm";
      v24 = 1024;
      v25 = 218;
      v26 = 2080;
      v27 = v16;
      v28 = 2112;
      v29 = pathCopy;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Issuing sandbox %s for path %@", &v22, 0x26u);
    }

    if (v17)
    {
      serviceDelegateSync = [(AVAudioDeviceTest *)self serviceDelegateSync];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
      [serviceDelegateSync passExtensionToken:v20];

      free(v17);
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v21 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315394;
        v23 = "AVAudioDeviceTest.mm";
        v24 = 1024;
        v25 = 225;
        _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to extend the service's sandbox", &v22, 0x12u);
      }
    }

    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 startRecording:recordingCopy filePath:pathCopy completion:completionCopy];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 startRecording:recordingCopy filePath:pathCopy completion:completionCopy];
  }
}

- (void)stopPlayback
{
  v11 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "AVAudioDeviceTest.mm";
    v9 = 1024;
    v10 = 199;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopping playback tone on client side", &v7, 0x12u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v5 = service == 0;

  if (v5)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 stopPlayback];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 stopPlayback];
  }
}

- (void)playbackTone:(id)tone completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  toneCopy = tone;
  completionCopy = completion;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v8 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "AVAudioDeviceTest.mm";
    v14 = 1024;
    v15 = 187;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d playback tone on client side", &v12, 0x12u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v10 = service == 0;

  if (v10)
  {
    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 playbackTone:toneCopy completion:completionCopy];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 playbackTone:toneCopy completion:completionCopy];
  }
}

- (void)playback:(id)playback filePath:(id)path completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  playbackCopy = playback;
  pathCopy = path;
  completionCopy = completion;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v11 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "AVAudioDeviceTest.mm";
    v23 = 1024;
    v24 = 163;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d playback on client side", &v21, 0x12u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v13 = service == 0;

  if (v13)
  {
    v15 = sandbox_extension_issue_generic();
    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v16 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *MEMORY[0x1E69E9BA8];
      v21 = 136315906;
      v22 = "AVAudioDeviceTest.mm";
      v23 = 1024;
      v24 = 170;
      v25 = 2080;
      v26 = v17;
      v27 = 2112;
      v28 = pathCopy;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Issuing sandbox %s for path %@", &v21, 0x26u);
    }

    if (v15)
    {
      serviceDelegateSync = [(AVAudioDeviceTest *)self serviceDelegateSync];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      [serviceDelegateSync passExtensionToken:v19];

      free(v15);
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v20 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "AVAudioDeviceTest.mm";
        v23 = 1024;
        v24 = 177;
        _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to extend the service's sandbox", &v21, 0x12u);
      }
    }

    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    service2 = ;
    [service2 playback:playbackCopy filePath:pathCopy completion:completionCopy];
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    [service2 playback:playbackCopy filePath:pathCopy completion:completionCopy];
  }
}

- (void)startWithSequence:(id)sequence completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  sequenceCopy = sequence;
  completionCopy = completion;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v8 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "AVAudioDeviceTest.mm";
    v31 = 1024;
    v32 = 127;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting sequence on client side", buf, 0x12u);
  }

  service = [(AVAudioDeviceTest *)self service];
  v10 = service == 0;

  if (v10)
  {
    stimulusURL = [sequenceCopy stimulusURL];
    v14 = stimulusURL;
    [stimulusURL fileSystemRepresentation];
    v15 = *MEMORY[0x1E69E9BA8];
    v16 = sandbox_extension_issue_file();

    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v17 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      stimulusURL2 = [sequenceCopy stimulusURL];
      v19 = stimulusURL2;
      fileSystemRepresentation = [stimulusURL2 fileSystemRepresentation];
      *buf = 136315906;
      v30 = "AVAudioDeviceTest.mm";
      v31 = 1024;
      v32 = 139;
      v33 = 2080;
      v34 = v15;
      v35 = 2080;
      v36 = fileSystemRepresentation;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Issuing sandbox %s for path %s", buf, 0x26u);
    }

    if (v16)
    {
      serviceDelegateSync = [(AVAudioDeviceTest *)self serviceDelegateSync];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
      [serviceDelegateSync passExtensionToken:v22];

      free(v16);
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v23 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "AVAudioDeviceTest.mm";
        v31 = 1024;
        v32 = 146;
        _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to extend the service's sandbox", buf, 0x12u);
      }
    }

    if ([(AVAudioDeviceTest *)self processSequenceAsynchronously])
    {
      [(AVAudioDeviceTest *)self serviceDelegateAsync];
    }

    else
    {
      [(AVAudioDeviceTest *)self serviceDelegateSync];
    }
    v12 = ;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke_54;
    v25[3] = &unk_1E7EF54B8;
    v26 = completionCopy;
    [v12 startWithSequence:sequenceCopy completion:v25];
    if (AVAudioDeviceTestClientLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
    }

    v24 = *AVAudioDeviceTestClientLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "AVAudioDeviceTest.mm";
      v31 = 1024;
      v32 = 157;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d finishing sequence on client side", buf, 0x12u);
    }
  }

  else
  {
    service2 = [(AVAudioDeviceTest *)self service];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke;
    v27[3] = &unk_1E7EF54B8;
    v28 = completionCopy;
    [service2 startWithSequence:sequenceCopy completion:v27];

    v12 = v28;
  }
}

void __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v15 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v33 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        if (AVAudioDeviceTestClientLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
        }

        v9 = *AVAudioDeviceTestClientLog(void)::category;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 data];
          v11 = [v8 outputID];
          v12 = [v8 inputID];
          [v8 sampleRate];
          *buf = 136316418;
          v22 = "AVAudioDeviceTest.mm";
          v23 = 1024;
          v24 = 132;
          v25 = 2112;
          v26 = v10;
          v27 = 2048;
          v28 = v11;
          v29 = 2048;
          v30 = v12;
          v31 = 2048;
          v32 = v13;
          _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d result data %@ output %li input %li sample rate %f", buf, 0x3Au);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v33 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
}

void __50__AVAudioDeviceTest_startWithSequence_completion___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v15 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v33 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        if (AVAudioDeviceTestClientLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
        }

        v9 = *AVAudioDeviceTestClientLog(void)::category;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 data];
          v11 = [v8 outputID];
          v12 = [v8 inputID];
          [v8 sampleRate];
          *buf = 136316418;
          v22 = "AVAudioDeviceTest.mm";
          v23 = 1024;
          v24 = 153;
          v25 = 2112;
          v26 = v10;
          v27 = 2048;
          v28 = v11;
          v29 = 2048;
          v30 = v12;
          v31 = 2048;
          v32 = v13;
          _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d result data %@ output %li input %li sample rate %f", buf, 0x3Au);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v33 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)initInProcess:(BOOL)process
{
  processCopy = process;
  v15 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AVAudioDeviceTest;
  v4 = [(AVAudioDeviceTest *)&v10 init];
  if (v4)
  {
    if (processCopy)
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v5 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "AVAudioDeviceTest.mm";
        v13 = 1024;
        v14 = 114;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing AVAudioDeviceTest for in-process operation.", buf, 0x12u);
      }

      v6 = objc_alloc_init(AVAudioDeviceTestService);
      [(AVAudioDeviceTest *)v4 setService:v6];
    }

    else
    {
      if (AVAudioDeviceTestClientLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
      }

      v7 = *AVAudioDeviceTestClientLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "AVAudioDeviceTest.mm";
        v13 = 1024;
        v14 = 117;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing AVAudioDeviceTest for out-of-process operation.", buf, 0x12u);
      }

      v4 = [(AVAudioDeviceTest *)v4 initWithXPCEndPoint:0];
    }
  }

  v8 = v4;

  return v8;
}

- (AVAudioDeviceTest)init
{
  v9 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "AVAudioDeviceTest.mm";
    v7 = 1024;
    v8 = 103;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing AVAudioDeviceTest for out-of-process operation.", &v5, 0x12u);
  }

  return [(AVAudioDeviceTest *)self initWithXPCEndPoint:0];
}

- (AVAudioDeviceTest)initWithXPCEndPoint:(id)point
{
  v61 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v54.receiver = self;
  v54.super_class = AVAudioDeviceTest;
  v5 = [(AVAudioDeviceTest *)&v54 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (pointCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:pointCopy];
    [(AVAudioDeviceTest *)v5 setConnection:v6];

LABEL_5:
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3864788];
    connection = [(AVAudioDeviceTest *)v5 connection];
    [connection setRemoteObjectInterface:v9];

    connection2 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface = [connection2 remoteObjectInterface];
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    [remoteObjectInterface setClasses:v16 forSelector:sel_startWithSequence_completion_ argumentIndex:0 ofReply:1];

    connection3 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface2 = [connection3 remoteObjectInterface];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    [remoteObjectInterface2 setClasses:v21 forSelector:sel_startWithSequence_completion_ argumentIndex:0 ofReply:0];

    connection4 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface3 = [connection4 remoteObjectInterface];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    [remoteObjectInterface3 setClasses:v26 forSelector:sel_playback_filePath_completion_ argumentIndex:0 ofReply:0];

    connection5 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface4 = [connection5 remoteObjectInterface];
    v29 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface4 setClasses:v29 forSelector:sel_playback_filePath_completion_ argumentIndex:0 ofReply:1];

    connection6 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface5 = [connection6 remoteObjectInterface];
    [remoteObjectInterface5 setClass:objc_opt_class() forSelector:sel_playbackTone_completion_ argumentIndex:0 ofReply:0];

    connection7 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface6 = [connection7 remoteObjectInterface];
    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
    [remoteObjectInterface6 setClasses:v37 forSelector:sel_playbackTone_completion_ argumentIndex:0 ofReply:1];

    connection8 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface7 = [connection8 remoteObjectInterface];
    v40 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface7 setClasses:v40 forSelector:sel_setupAudioSessionForHearingTest_ argumentIndex:0 ofReply:1];

    connection9 = [(AVAudioDeviceTest *)v5 connection];
    remoteObjectInterface8 = [connection9 remoteObjectInterface];
    v43 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface8 setClasses:v43 forSelector:sel_stopAudioSession_ argumentIndex:0 ofReply:1];

    connection10 = [(AVAudioDeviceTest *)v5 connection];
    v45 = [connection10 remoteObjectProxyWithErrorHandler:&__block_literal_global_42];
    [(AVAudioDeviceTest *)v5 setServiceDelegateAsync:v45];

    connection11 = [(AVAudioDeviceTest *)v5 connection];
    v47 = [connection11 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_45];
    [(AVAudioDeviceTest *)v5 setServiceDelegateSync:v47];

    connection12 = [(AVAudioDeviceTest *)v5 connection];
    [connection12 setInterruptionHandler:&__block_literal_global_48];

    connection13 = [(AVAudioDeviceTest *)v5 connection];
    [connection13 setInvalidationHandler:&__block_literal_global_51];

    connection14 = [(AVAudioDeviceTest *)v5 connection];
    [connection14 resume];

LABEL_6:
    v51 = v5;
    goto LABEL_7;
  }

  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.avfaudio.devicetest.service"];
  [(AVAudioDeviceTest *)v5 setConnection:v7];

  connection15 = [(AVAudioDeviceTest *)v5 connection];
  LODWORD(v7) = connection15 == 0;

  if (!v7)
  {
    goto LABEL_5;
  }

  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v53 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v56 = "AVAudioDeviceTest.mm";
    v57 = 1024;
    v58 = 54;
    v59 = 2112;
    v60 = @"com.apple.avfaudio.devicetest.service";
    _os_log_impl(&dword_1BA5AC000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating XPC connection to %@", buf, 0x1Cu);
  }

  v51 = 0;
LABEL_7:

  return v51;
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke_49()
{
  v5 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v0 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "AVAudioDeviceTest.mm";
    v3 = 1024;
    v4 = 92;
    _os_log_impl(&dword_1BA5AC000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalidation Handler: client exited", &v1, 0x12u);
  }
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke_46()
{
  v5 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v0 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestClientLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "AVAudioDeviceTest.mm";
    v3 = 1024;
    v4 = 89;
    _os_log_impl(&dword_1BA5AC000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Interruption Handler: connection got interrupted", &v1, 0x12u);
  }
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke_43(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = 136315650;
    v6 = "AVAudioDeviceTest.mm";
    v7 = 1024;
    v8 = 84;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v5, 0x1Cu);
  }
}

void __41__AVAudioDeviceTest_initWithXPCEndPoint___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (AVAudioDeviceTestClientLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestClientLog(void)::once, &__block_literal_global_2167);
  }

  v3 = *AVAudioDeviceTestClientLog(void)::category;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = 136315650;
    v6 = "AVAudioDeviceTest.mm";
    v7 = 1024;
    v8 = 79;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v5, 0x1Cu);
  }
}

@end