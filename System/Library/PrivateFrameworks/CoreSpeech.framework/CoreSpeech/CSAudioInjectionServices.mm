@interface CSAudioInjectionServices
+ (BOOL)audioInjectionEnabled;
+ (BOOL)setAudioInjectionMode:(BOOL)mode;
+ (id)GetConnectionForDaemon:(int)daemon;
+ (id)getAudioInjectionXPCConnectionForCoreSpeechD;
+ (void)connectDeviceWithUUID:(id)d handlingDaemon:(int)daemon completion:(id)completion;
+ (void)createAudioInjectionDeviceWithType:(int64_t)type bundlePath:(id)path deviceName:(id)name deviceID:(id)d productID:(id)iD handlingDaemon:(int)daemon completion:(id)completion;
+ (void)createAudioInjectionDeviceWithType:(int64_t)type deviceName:(id)name deviceID:(id)d productID:(id)iD handlingDaemon:(int)daemon completion:(id)completion;
+ (void)disconnectDeviceWithUUID:(id)d handlingDaemon:(int)daemon completion:(id)completion;
+ (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withNumChannels:(unint64_t)channels withUserIntentOptions:(id)options handlingDaemon:(int)daemon completion:(id)completion;
+ (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withNumChannels:(unint64_t)channels withUserIntentOptions:(id)options handlingDaemon:(int)daemon started:(id)started;
+ (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withfadingTimeWindowLength:(unint64_t)length handlingDaemon:(int)daemon completion:(id)completion;
+ (void)pingpong:(id)pingpong completion:(id)completion;
+ (void)primaryInputDeviceUUIDWithhandlingDaemon:(int)daemon WithCompletion:(id)completion;
+ (void)selectBuiltInInjectionDeviceWithUUID:(id)d handlingDaemon:(int)daemon completion:(id)completion;
@end

@implementation CSAudioInjectionServices

+ (id)GetConnectionForDaemon:(int)daemon
{
  if (daemon)
  {
    getAudioInjectionXPCConnectionForCoreSpeechD = 0;
  }

  else
  {
    getAudioInjectionXPCConnectionForCoreSpeechD = [self getAudioInjectionXPCConnectionForCoreSpeechD];
  }

  return getAudioInjectionXPCConnectionForCoreSpeechD;
}

+ (void)primaryInputDeviceUUIDWithhandlingDaemon:(int)daemon WithCompletion:(id)completion
{
  v4 = *&daemon;
  v50 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  CSLogInitIfNeeded();
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke;
  v41[3] = &unk_2784C6D08;
  v6 = completionCopy;
  v42 = v6;
  v7 = MEMORY[0x223DD26C0](v41);
  v8 = [CSAudioInjectionServices GetConnectionForDaemon:v4];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_2;
  v39[3] = &unk_2784C6C90;
  v9 = v7;
  v40 = v9;
  [v8 setInterruptionHandler:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_25;
  v37[3] = &unk_2784C6C90;
  v10 = v9;
  v38 = v10;
  [v8 setInvalidationHandler:v37];
  [v8 resume];
  remoteObjectProxy = [v8 remoteObjectProxy];
  v12 = MEMORY[0x277D015D8];
  v13 = *MEMORY[0x277D015D8];
  v14 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[CSAudioInjectionServices primaryInputDeviceUUIDWithhandlingDaemon:WithCompletion:]";
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s Request to fetch primary device", &buf, 0xCu);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__26479;
    v48 = __Block_byref_object_dispose__26480;
    v49 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__26479;
    v31 = __Block_byref_object_dispose__26480;
    v32 = 0;
    v15 = dispatch_semaphore_create(0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_26;
    v22[3] = &unk_2784C6D30;
    v24 = &v33;
    p_buf = &buf;
    v26 = &v27;
    v16 = v15;
    v23 = v16;
    [remoteObjectProxy primaryInputDeviceUUIDWithCompletion:v22];
    v17 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1505 userInfo:0];
      v19 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v18;

      v20 = *v12;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v43 = 136315138;
        v44 = "+[CSAudioInjectionServices primaryInputDeviceUUIDWithhandlingDaemon:WithCompletion:]";
        _os_log_error_impl(&dword_222E4D000, v20, OS_LOG_TYPE_ERROR, "%s Fetching primary device timed-out!!", v43, 0xCu);
      }
    }

    (*(v10 + 2))(v10, *(v34 + 24), *(*(&buf + 1) + 40), v28[5]);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[CSAudioInjectionServices primaryInputDeviceUUIDWithhandlingDaemon:WithCompletion:]";
      _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", &buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v10 + 2))(v10, 0, v21, 0);
  }
}

uint64_t __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices primaryInputDeviceUUIDWithhandlingDaemon:WithCompletion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

void __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_25(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices primaryInputDeviceUUIDWithhandlingDaemon:WithCompletion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

void __84__CSAudioInjectionServices_primaryInputDeviceUUIDWithhandlingDaemon_WithCompletion___block_invoke_26(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)disconnectDeviceWithUUID:(id)d handlingDaemon:(int)daemon completion:(id)completion
{
  v6 = *&daemon;
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  CSLogInitIfNeeded();
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke;
  v40[3] = &unk_2784C6E20;
  v9 = completionCopy;
  v41 = v9;
  v10 = MEMORY[0x223DD26C0](v40);
  v11 = [CSAudioInjectionServices GetConnectionForDaemon:v6];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_2;
  v38[3] = &unk_2784C6C90;
  v12 = v10;
  v39 = v12;
  [v11 setInterruptionHandler:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_23;
  v36[3] = &unk_2784C6C90;
  v13 = v12;
  v37 = v13;
  [v11 setInvalidationHandler:v36];
  [v11 resume];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v15 = MEMORY[0x277D015D8];
  v16 = *MEMORY[0x277D015D8];
  v17 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[CSAudioInjectionServices disconnectDeviceWithUUID:handlingDaemon:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s Request to disconnect device with UUID %@", buf, 0x16u);
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__26479;
    v46 = __Block_byref_object_dispose__26480;
    v47 = 0;
    v18 = dispatch_semaphore_create(0);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_24;
    v28 = &unk_2784C6CE0;
    v30 = &v32;
    v31 = buf;
    v19 = v18;
    v29 = v19;
    [remoteObjectProxy disconnectDeviceWithUUID:dCopy completion:&v25];
    v20 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v19, v20))
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1505 userInfo:{0, v25, v26, v27, v28}];
      v22 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v21;

      v23 = *v15;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v42 = 136315138;
        v43 = "+[CSAudioInjectionServices disconnectDeviceWithUUID:handlingDaemon:completion:]";
        _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s Disconnect device timed-out!!", v42, 0xCu);
      }
    }

    (*(v13 + 2))(v13, *(v33 + 24), *(*&buf[8] + 40));

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[CSAudioInjectionServices disconnectDeviceWithUUID:handlingDaemon:completion:]";
      _os_log_error_impl(&dword_222E4D000, v16, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v13 + 2))(v13, 0, v24);
  }
}

uint64_t __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices disconnectDeviceWithUUID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_23(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices disconnectDeviceWithUUID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __79__CSAudioInjectionServices_disconnectDeviceWithUUID_handlingDaemon_completion___block_invoke_24(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)connectDeviceWithUUID:(id)d handlingDaemon:(int)daemon completion:(id)completion
{
  v6 = *&daemon;
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  CSLogInitIfNeeded();
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke;
  v40[3] = &unk_2784C6E20;
  v9 = completionCopy;
  v41 = v9;
  v10 = MEMORY[0x223DD26C0](v40);
  v11 = [CSAudioInjectionServices GetConnectionForDaemon:v6];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_2;
  v38[3] = &unk_2784C6C90;
  v12 = v10;
  v39 = v12;
  [v11 setInterruptionHandler:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_21;
  v36[3] = &unk_2784C6C90;
  v13 = v12;
  v37 = v13;
  [v11 setInvalidationHandler:v36];
  [v11 resume];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v15 = MEMORY[0x277D015D8];
  v16 = *MEMORY[0x277D015D8];
  v17 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[CSAudioInjectionServices connectDeviceWithUUID:handlingDaemon:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s Request to connect device with UUID %@", buf, 0x16u);
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__26479;
    v46 = __Block_byref_object_dispose__26480;
    v47 = 0;
    v18 = dispatch_semaphore_create(0);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_22;
    v28 = &unk_2784C6CE0;
    v30 = &v32;
    v31 = buf;
    v19 = v18;
    v29 = v19;
    [remoteObjectProxy connectDeviceWithUUID:dCopy completion:&v25];
    v20 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v19, v20))
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1505 userInfo:{0, v25, v26, v27, v28}];
      v22 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v21;

      v23 = *v15;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v42 = 136315138;
        v43 = "+[CSAudioInjectionServices connectDeviceWithUUID:handlingDaemon:completion:]";
        _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s Connect device timed-out!!", v42, 0xCu);
      }
    }

    (*(v13 + 2))(v13, *(v33 + 24), *(*&buf[8] + 40));

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[CSAudioInjectionServices connectDeviceWithUUID:handlingDaemon:completion:]";
      _os_log_error_impl(&dword_222E4D000, v16, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v13 + 2))(v13, 0, v24);
  }
}

uint64_t __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices connectDeviceWithUUID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_21(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices connectDeviceWithUUID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __76__CSAudioInjectionServices_connectDeviceWithUUID_handlingDaemon_completion___block_invoke_22(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withNumChannels:(unint64_t)channels withUserIntentOptions:(id)options handlingDaemon:(int)daemon started:(id)started
{
  v9 = *&daemon;
  v38 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  dCopy = d;
  optionsCopy = options;
  startedCopy = started;
  CSLogInitIfNeeded();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke;
  v30[3] = &unk_2784C6D80;
  v17 = startedCopy;
  v31 = v17;
  v18 = MEMORY[0x223DD26C0](v30);
  v19 = [CSAudioInjectionServices GetConnectionForDaemon:v9];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke_2;
  v28[3] = &unk_2784C6C90;
  v20 = v18;
  v29 = v20;
  [v19 setInterruptionHandler:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke_20;
  v26[3] = &unk_2784C6C90;
  v21 = v20;
  v27 = v21;
  [v19 setInvalidationHandler:v26];
  [v19 resume];
  remoteObjectProxy = [v19 remoteObjectProxy];
  v23 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:started:]";
      v34 = 2112;
      v35 = audioCopy;
      v36 = 2112;
      v37 = dCopy;
      _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s Request to inject audio %@ to deviceUUID %@", buf, 0x20u);
    }

    LODWORD(v24) = 1120403456;
    [remoteObjectProxy injectAudio:audioCopy toDeviceWithUUID:dCopy withScaleFactor:channels withNumChannels:optionsCopy withUserIntentOptions:v21 started:v24];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:started:]";
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v21 + 2))(v21, 0, v25, 0);
  }
}

uint64_t __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:started:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

void __118__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_started___block_invoke_20(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:started:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

+ (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withNumChannels:(unint64_t)channels withUserIntentOptions:(id)options handlingDaemon:(int)daemon completion:(id)completion
{
  v9 = *&daemon;
  v38 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  CSLogInitIfNeeded();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke;
  v30[3] = &unk_2784C6D58;
  v17 = completionCopy;
  v31 = v17;
  v18 = MEMORY[0x223DD26C0](v30);
  v19 = [CSAudioInjectionServices GetConnectionForDaemon:v9];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke_2;
  v28[3] = &unk_2784C6C90;
  v20 = v18;
  v29 = v20;
  [v19 setInterruptionHandler:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke_18;
  v26[3] = &unk_2784C6C90;
  v21 = v20;
  v27 = v21;
  [v19 setInvalidationHandler:v26];
  [v19 resume];
  remoteObjectProxy = [v19 remoteObjectProxy];
  v23 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:completion:]";
      v34 = 2112;
      v35 = audioCopy;
      v36 = 2112;
      v37 = dCopy;
      _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s Request to inject audio %@ to deviceUUID %@", buf, 0x20u);
    }

    LODWORD(v24) = 1120403456;
    [remoteObjectProxy injectAudio:audioCopy toDeviceWithUUID:dCopy withScaleFactor:channels withNumChannels:optionsCopy withUserIntentOptions:v17 completion:v24];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:completion:]";
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v21 + 2))(v21, 0, v25, 0, 0);
  }
}

uint64_t __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);
}

void __121__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withNumChannels_withUserIntentOptions_handlingDaemon_completion___block_invoke_18(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withNumChannels:withUserIntentOptions:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);
}

+ (void)injectAudio:(id)audio toDeviceWithUUID:(id)d withfadingTimeWindowLength:(unint64_t)length handlingDaemon:(int)daemon completion:(id)completion
{
  v8 = *&daemon;
  v37 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  dCopy = d;
  completionCopy = completion;
  CSLogInitIfNeeded();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke;
  v29[3] = &unk_2784C6D58;
  v14 = completionCopy;
  v30 = v14;
  v15 = MEMORY[0x223DD26C0](v29);
  v16 = [CSAudioInjectionServices GetConnectionForDaemon:v8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke_2;
  v27[3] = &unk_2784C6C90;
  v17 = v15;
  v28 = v17;
  [v16 setInterruptionHandler:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke_17;
  v25[3] = &unk_2784C6C90;
  v18 = v17;
  v26 = v18;
  [v16 setInvalidationHandler:v25];
  [v16 resume];
  remoteObjectProxy = [v16 remoteObjectProxy];
  if (length)
  {
    v20 = 1.0 / length;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = *MEMORY[0x277D015D8];
  v22 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v32 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withfadingTimeWindowLength:handlingDaemon:completion:]";
      v33 = 2112;
      v34 = audioCopy;
      v35 = 2112;
      v36 = dCopy;
      _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_DEFAULT, "%s Request to inject audio %@ to deviceUUID %@", buf, 0x20u);
    }

    *&v23 = v20;
    [remoteObjectProxy injectAudio:audioCopy toDeviceWithUUID:dCopy withScaleFactor:v14 completion:v23];
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withfadingTimeWindowLength:handlingDaemon:completion:]";
      _os_log_error_impl(&dword_222E4D000, v21, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v18 + 2))(v18, 0, v24, 0, 0);
  }
}

uint64_t __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withfadingTimeWindowLength:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);
}

void __110__CSAudioInjectionServices_injectAudio_toDeviceWithUUID_withfadingTimeWindowLength_handlingDaemon_completion___block_invoke_17(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices injectAudio:toDeviceWithUUID:withfadingTimeWindowLength:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0, 0);
}

+ (void)createAudioInjectionDeviceWithType:(int64_t)type deviceName:(id)name deviceID:(id)d productID:(id)iD handlingDaemon:(int)daemon completion:(id)completion
{
  v9 = *&daemon;
  v60 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  CSLogInitIfNeeded();
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke;
  v53[3] = &unk_2784C6D08;
  v16 = completionCopy;
  v54 = v16;
  v17 = MEMORY[0x223DD26C0](v53);
  v18 = [CSAudioInjectionServices GetConnectionForDaemon:v9];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_2;
  v51[3] = &unk_2784C6C90;
  v19 = v17;
  v52 = v19;
  [v18 setInterruptionHandler:v51];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_14;
  v49[3] = &unk_2784C6C90;
  v20 = v19;
  v50 = v20;
  [v18 setInvalidationHandler:v49];
  [v18 resume];
  remoteObjectProxy = [v18 remoteObjectProxy];
  v22 = remoteObjectProxy;
  v23 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    v32 = remoteObjectProxy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:deviceName:deviceID:productID:handlingDaemon:completion:]";
      *&buf[12] = 2048;
      *&buf[14] = type;
      *&buf[22] = 2112;
      v58 = nameCopy;
      *v59 = 2112;
      *&v59[2] = dCopy;
      *&v59[10] = 2112;
      *&v59[12] = iDCopy;
      _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s Request to create audio injection device type : %ld, deviceName : %@, deviceId : %@, productId : %@", buf, 0x34u);
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy__26479;
    *v59 = __Block_byref_object_dispose__26480;
    *&v59[8] = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__26479;
    v43 = __Block_byref_object_dispose__26480;
    v44 = 0;
    v24 = dispatch_semaphore_create(0);
    remoteObjectProxy2 = [v18 remoteObjectProxy];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_15;
    v34[3] = &unk_2784C6D30;
    v36 = &v45;
    v37 = buf;
    v38 = &v39;
    v26 = v24;
    v35 = v26;
    [remoteObjectProxy2 createAudioInjectionDeviceWithType:type deviceName:nameCopy deviceID:dCopy productID:iDCopy completion:v34];

    v22 = v32;
    v27 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v26, v27))
    {
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1505 userInfo:0];
      v29 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v28;

      v30 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        *v55 = 136315138;
        v56 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:deviceName:deviceID:productID:handlingDaemon:completion:]";
        _os_log_error_impl(&dword_222E4D000, v30, OS_LOG_TYPE_ERROR, "%s Fetching primary device timed-out!!", v55, 0xCu);
      }
    }

    (*(v20 + 2))(v20, *(v46 + 24), *(*&buf[8] + 40), v40[5]);

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:deviceName:deviceID:productID:handlingDaemon:completion:]";
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v20 + 2))(v20, 0, v31, 0);
  }
}

uint64_t __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

void __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_14(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

void __119__CSAudioInjectionServices_createAudioInjectionDeviceWithType_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_15(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)createAudioInjectionDeviceWithType:(int64_t)type bundlePath:(id)path deviceName:(id)name deviceID:(id)d productID:(id)iD handlingDaemon:(int)daemon completion:(id)completion
{
  v9 = *&daemon;
  v62 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  CSLogInitIfNeeded();
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke;
  v55[3] = &unk_2784C6D08;
  v18 = completionCopy;
  v56 = v18;
  v19 = MEMORY[0x223DD26C0](v55);
  v20 = [CSAudioInjectionServices GetConnectionForDaemon:v9];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_2;
  v53[3] = &unk_2784C6C90;
  v21 = v19;
  v54 = v21;
  [v20 setInterruptionHandler:v53];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_12;
  v51[3] = &unk_2784C6C90;
  v22 = v21;
  v52 = v22;
  [v20 setInvalidationHandler:v51];
  [v20 resume];
  remoteObjectProxy = [v20 remoteObjectProxy];
  v24 = remoteObjectProxy;
  v25 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    v34 = remoteObjectProxy;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:handlingDaemon:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = pathCopy;
      *&buf[22] = 2112;
      v60 = nameCopy;
      *v61 = 2112;
      *&v61[2] = dCopy;
      *&v61[10] = 2112;
      *&v61[12] = iDCopy;
      _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_DEFAULT, "%s Request to create audio injection device bundlePath : %@, deviceName : %@, deviceId : %@, productId : %@", buf, 0x34u);
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = __Block_byref_object_copy__26479;
    *v61 = __Block_byref_object_dispose__26480;
    *&v61[8] = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__26479;
    v45 = __Block_byref_object_dispose__26480;
    v46 = 0;
    v26 = dispatch_semaphore_create(0);
    remoteObjectProxy2 = [v20 remoteObjectProxy];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_13;
    v36[3] = &unk_2784C6D30;
    v38 = &v47;
    v39 = buf;
    v40 = &v41;
    v28 = v26;
    v37 = v28;
    [remoteObjectProxy2 createAudioInjectionDeviceWithType:type bundlePath:pathCopy deviceName:nameCopy deviceID:dCopy productID:iDCopy completion:v36];

    v24 = v34;
    v29 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v28, v29))
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1505 userInfo:0];
      v31 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v30;

      v32 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        *v57 = 136315138;
        v58 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:handlingDaemon:completion:]";
        _os_log_error_impl(&dword_222E4D000, v32, OS_LOG_TYPE_ERROR, "%s Fetching primary device timed-out!!", v57, 0xCu);
      }
    }

    (*(v22 + 2))(v22, *(v48 + 24), *(*&buf[8] + 40), v42[5]);

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:handlingDaemon:completion:]";
      _os_log_error_impl(&dword_222E4D000, v25, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v22 + 2))(v22, 0, v33, 0);
  }
}

uint64_t __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

void __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_12(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices createAudioInjectionDeviceWithType:bundlePath:deviceName:deviceID:productID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4, 0);
}

void __130__CSAudioInjectionServices_createAudioInjectionDeviceWithType_bundlePath_deviceName_deviceID_productID_handlingDaemon_completion___block_invoke_13(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)selectBuiltInInjectionDeviceWithUUID:(id)d handlingDaemon:(int)daemon completion:(id)completion
{
  v6 = *&daemon;
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  CSLogInitIfNeeded();
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke;
  v41[3] = &unk_2784C6E20;
  v9 = completionCopy;
  v42 = v9;
  v10 = MEMORY[0x223DD26C0](v41);
  v11 = [CSAudioInjectionServices GetConnectionForDaemon:v6];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_2;
  v39[3] = &unk_2784C6C90;
  v12 = v10;
  v40 = v12;
  [v11 setInterruptionHandler:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_9;
  v37[3] = &unk_2784C6C90;
  v13 = v12;
  v38 = v13;
  [v11 setInvalidationHandler:v37];
  [v11 resume];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v15 = MEMORY[0x277D015D8];
  v16 = *MEMORY[0x277D015D8];
  v17 = *MEMORY[0x277D015D8];
  if (remoteObjectProxy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[CSAudioInjectionServices selectBuiltInInjectionDeviceWithUUID:handlingDaemon:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s Request to select bundleDevice UUID : %@", buf, 0x16u);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__26479;
    v47 = __Block_byref_object_dispose__26480;
    v48 = 0;
    v18 = dispatch_semaphore_create(0);
    remoteObjectProxy2 = [v11 remoteObjectProxy];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_10;
    v29 = &unk_2784C6CE0;
    v31 = &v33;
    v32 = buf;
    v20 = v18;
    v30 = v20;
    [remoteObjectProxy2 selectBuiltInInjectionDeivceWithUUID:dCopy completion:&v26];

    v21 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v20, v21))
    {
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1505 userInfo:{0, v26, v27, v28, v29}];
      v23 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v22;

      v24 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *v43 = 136315138;
        v44 = "+[CSAudioInjectionServices selectBuiltInInjectionDeviceWithUUID:handlingDaemon:completion:]";
        _os_log_error_impl(&dword_222E4D000, v24, OS_LOG_TYPE_ERROR, "%s selectBuiltInInjectionDeviceWithUUID timed-out!!", v43, 0xCu);
      }
    }

    (*(v13 + 2))(v13, *(v34 + 24), *(*&buf[8] + 40));

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[CSAudioInjectionServices selectBuiltInInjectionDeviceWithUUID:handlingDaemon:completion:]";
      _os_log_error_impl(&dword_222E4D000, v16, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1503 userInfo:0];
    (*(v13 + 2))(v13, 0, v25);
  }
}

uint64_t __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices selectBuiltInInjectionDeviceWithUUID:handlingDaemon:completion:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1502 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_9(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[CSAudioInjectionServices selectBuiltInInjectionDeviceWithUUID:handlingDaemon:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1501 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __91__CSAudioInjectionServices_selectBuiltInInjectionDeviceWithUUID_handlingDaemon_completion___block_invoke_10(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)pingpong:(id)pingpong completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  CSLogInitIfNeeded();
  getAudioInjectionXPCConnectionForCoreSpeechD = [self getAudioInjectionXPCConnectionForCoreSpeechD];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__CSAudioInjectionServices_pingpong_completion___block_invoke;
  v16[3] = &unk_2784C6C90;
  v7 = completionCopy;
  v17 = v7;
  [getAudioInjectionXPCConnectionForCoreSpeechD setInterruptionHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__CSAudioInjectionServices_pingpong_completion___block_invoke_2;
  v14[3] = &unk_2784C6C90;
  v8 = v7;
  v15 = v8;
  [getAudioInjectionXPCConnectionForCoreSpeechD setInvalidationHandler:v14];
  [getAudioInjectionXPCConnectionForCoreSpeechD resume];
  remoteObjectProxy = [getAudioInjectionXPCConnectionForCoreSpeechD remoteObjectProxy];
  if (!remoteObjectProxy)
  {
    v11 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "+[CSAudioInjectionServices pingpong:completion:]";
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s XPC connection not exist?", buf, 0xCu);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    else if (!v8)
    {
      goto LABEL_6;
    }

    (*(v8 + 2))(v8, 0);
    goto LABEL_6;
  }

  remoteObjectProxy2 = [getAudioInjectionXPCConnectionForCoreSpeechD remoteObjectProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__CSAudioInjectionServices_pingpong_completion___block_invoke_4;
  v12[3] = &unk_2784C6CB8;
  v13 = v8;
  [remoteObjectProxy2 pingpong:@"TEST" completion:v12];

LABEL_6:
}

uint64_t __48__CSAudioInjectionServices_pingpong_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[CSAudioInjectionServices pingpong:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Interrupted", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __48__CSAudioInjectionServices_pingpong_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[CSAudioInjectionServices pingpong:completion:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s CSAudioInjectionServices Invalidated", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __48__CSAudioInjectionServices_pingpong_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (BOOL)audioInjectionEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  CSLogInitIfNeeded();
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  programmableAudioInjectionEnabled = [mEMORY[0x277D01788] programmableAudioInjectionEnabled];

  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[CSAudioInjectionServices audioInjectionEnabled]";
    v8 = 1024;
    v9 = programmableAudioInjectionEnabled;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched audio injection enabled : %d", &v6, 0x12u);
  }

  return programmableAudioInjectionEnabled;
}

+ (BOOL)setAudioInjectionMode:(BOOL)mode
{
  modeCopy = mode;
  v12 = *MEMORY[0x277D85DE8];
  CSLogInitIfNeeded();
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[CSAudioInjectionServices setAudioInjectionMode:]";
    v10 = 1024;
    v11 = modeCopy;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting audio injection enabled : %d", &v8, 0x12u);
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v6 = [mEMORY[0x277D01788] enableProgrammableAudioInjection:modeCopy];

  return v6;
}

+ (id)getAudioInjectionXPCConnectionForCoreSpeechD
{
  v2 = objc_alloc(MEMORY[0x277CCAE80]);
  v3 = [v2 initWithMachServiceName:*MEMORY[0x277D01580] options:0];
  v4 = AudioInjectionXPCGetInterface();
  [v3 setRemoteObjectInterface:v4];

  return v3;
}

@end