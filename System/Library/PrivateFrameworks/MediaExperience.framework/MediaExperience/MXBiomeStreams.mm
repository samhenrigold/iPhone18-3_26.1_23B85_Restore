@interface MXBiomeStreams
+ (id)sharedInstance;
- (MXBiomeStreams)init;
- (void)dealloc;
- (void)updateBiomeSilentMode:(BOOL)mode clientType:(unsigned int)type untilTime:(id)time reason:(id)reason;
@end

@implementation MXBiomeStreams

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MXBiomeStreams sharedInstance];
  }

  return sharedInstance_sSharedInstance_0;
}

MXBiomeStreams *__32__MXBiomeStreams_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXBiomeStreams);
  sharedInstance_sSharedInstance_0 = result;
  return result;
}

- (MXBiomeStreams)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MXBiomeStreams;
  v2 = [(MXBiomeStreams *)&v7 init];
  if (v2)
  {
    if (BiomeStreamsLibraryCore() && BiomeLibraryLibraryCore(0))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->mAccessQueue = dispatch_queue_create("com.apple.mediaexperience.MXBiomeStreams", v5);
    }

    else
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->mAccessQueue);
  self->mAccessQueue = 0;
  v3.receiver = self;
  v3.super_class = MXBiomeStreams;
  [(MXBiomeStreams *)&v3 dealloc];
}

- (void)updateBiomeSilentMode:(BOOL)mode clientType:(unsigned int)type untilTime:(id)time reason:(id)reason
{
  timeCopy = time;
  reasonCopy = reason;
  mAccessQueue = self->mAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke;
  v14[3] = &unk_1E7AE7348;
  modeCopy = mode;
  typeCopy = type;
  v14[4] = time;
  v14[5] = reason;
  MXDispatchAsync("[MXBiomeStreams updateBiomeSilentMode:clientType:untilTime:reason:]", "MXBiomeStreams.m", 93, 0, 0, mAccessQueue, v14);
}

void __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__0;
  v3 = getBMDeviceSilentModeClass_softClass;
  v18 = __Block_byref_object_dispose__0;
  v19 = getBMDeviceSilentModeClass_softClass;
  if (!getBMDeviceSilentModeClass_softClass)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getBMDeviceSilentModeClass_block_invoke;
    v12 = &unk_1E7AE73A0;
    v13 = &v14;
    __getBMDeviceSilentModeClass_block_invoke(&v9);
    v3 = *(v15 + 40);
  }

  _Block_object_dispose(&v14, 8);
  v4 = [v3 alloc];
  v5 = [v4 initWithStarting:objc_msgSend(MEMORY[0x1E696AD98] clientType:"numberWithBool:" untilTime:*(a1 + 52)) reason:{*(a1 + 48), *(a1 + 32), *(a1 + 40)}];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v6 = getBiomeLibrarySymbolLoc_ptr;
  v12 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getBiomeLibrarySymbolLoc_block_invoke;
    v17 = &unk_1E7AE73A0;
    v18 = &v9;
    v7 = BiomeLibraryLibrary();
    v8 = dlsym(v7, "BiomeLibrary");
    *(*(v18 + 1) + 24) = v8;
    getBiomeLibrarySymbolLoc_ptr = *(*(v18 + 1) + 24);
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  if (!v6)
  {
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    __break(1u);
  }

  [objc_msgSend(objc_msgSend(objc_msgSend(v6() "Device")];
}

uint64_t __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getBMDeviceSilentModeClass_block_invoke_cold_1();
}

@end