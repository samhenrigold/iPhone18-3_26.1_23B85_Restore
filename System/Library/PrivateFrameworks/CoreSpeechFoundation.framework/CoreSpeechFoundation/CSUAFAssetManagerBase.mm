@interface CSUAFAssetManagerBase
- (CSUAFAssetManagerBase)init;
- (CSUAFAssetManagerBase)initWithForceSetIsExclave:(BOOL)exclave exclaveManagerProxy:(id)proxy;
- (id)_getExclaveAssetManagerProxy;
- (id)_timerForUUID:(id)d eventHandler:(id)handler;
- (void)_cancelRetryTimerForAsset:(id)asset;
- (void)_logMapFailTelemetryAndSubmitDiagnosticReportForError:(id)error assetSpecifier:(id)specifier assetConfigVersion:(id)version;
- (void)_logMapOperationLatencyTelemetry:(double)telemetry assetSpecifier:(id)specifier assetConfigVersion:(id)version;
- (void)_mapAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion;
- (void)_mapVoiceTriggerAsset:(id)asset asset:(id)a4 completion:(id)completion;
- (void)_resetRetryTimerForAsset:(id)asset;
- (void)_retryMappingAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion;
- (void)mapAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion;
- (void)retryMappingAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion;
@end

@implementation CSUAFAssetManagerBase

- (CSUAFAssetManagerBase)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CSUAFAssetManagerBase;
    v4 = [(CSUAFAssetManagerBase *)&v13 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSUAFAssetManager queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      retryTimers = v4->_retryTimers;
      v4->_retryTimers = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      retryAttemptCount = v4->_retryAttemptCount;
      v4->_retryAttemptCount = dictionary2;

      v4->_isExclaveHardware = +[CSUtils isExclaveHardware];
      exclaveManagerProxy = v4->_exclaveManagerProxy;
      v4->_exclaveManagerProxy = 0;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_mapVoiceTriggerAsset:(id)asset asset:(id)a4 completion:(id)completion
{
  assetCopy = asset;
  v9 = a4;
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke;
  v22[3] = &unk_1E865BF90;
  v26 = completionCopy;
  v11 = assetCopy;
  v23 = v11;
  selfCopy = self;
  v25 = v9;
  v12 = v9;
  v13 = completionCopy;
  v14 = MEMORY[0x1E12BA300](v22);
  _getExclaveAssetManagerProxy = [(CSUAFAssetManagerBase *)self _getExclaveAssetManagerProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_2;
  v18[3] = &unk_1E865C678;
  v19 = v11;
  selfCopy2 = self;
  v21 = v14;
  v16 = v14;
  v17 = v11;
  [_getExclaveAssetManagerProxy stopSecureMobileAssetLoaderService:v18];
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke(uint64_t a1, void *a2, double a3)
{
  v13 = a2;
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v13);
  }

  v6 = [*(a1 + 32) assetNamed:@"com.apple.siri.sp.invocation"];
  v7 = [v6 metadata];
  v8 = [v7 objectForKey:*MEMORY[0x1E69DEF20]];

  if (v13)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) configVersion];
    [v9 _logMapFailTelemetryAndSubmitDiagnosticReportForError:v13 assetSpecifier:v8 assetConfigVersion:v10];
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 48) configVersion];
  [v11 _logMapOperationLatencyTelemetry:v8 assetSpecifier:v12 assetConfigVersion:a3];
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_2(void *a1)
{
  v2 = mach_absolute_time();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_3;
  v6[3] = &unk_1E865C008;
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v8 = v2;
  v6[4] = v3;
  v7 = v5;
  [v4 mapAsset:@"com.apple.siri.sp.invocation" queue:0 completion:v6];
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = mach_absolute_time() - *(a1 + 48);
  if (_CSMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
  }

  v5 = *&_CSMachAbsoluteTimeRate_rate * v4 / 1000000000.0;
  v6 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "[CSUAFAssetManagerBase _mapVoiceTriggerAsset:asset:completion:]_block_invoke_3";
    v17 = 2112;
    v18 = @"com.apple.siri.sp.invocation";
    v19 = 2048;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Mapping asset %@ to ExclaveKit completed in %f second(s) with error %@", buf, 0x2Au);
  }

  v7 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_331;
  v10[3] = &unk_1E865BFE0;
  v11 = v3;
  v8 = *(a1 + 40);
  v14 = v5;
  v12 = *(a1 + 32);
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v10);
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_331(uint64_t a1, __n128 a2)
{
  if (*(a1 + 32))
  {
    a2.n128_u64[0] = *(a1 + 56);
    v3 = *(*(a1 + 48) + 16);

    v3(a2);
  }

  else
  {
    v4 = [*(a1 + 40) _getExclaveAssetManagerProxy];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_2_332;
    v5[3] = &unk_1E865BFB8;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    [v4 startSecureMobileAssetLoaderService:0 completion:v5];
  }
}

- (void)_logMapOperationLatencyTelemetry:(double)telemetry assetSpecifier:(id)specifier assetConfigVersion:(id)version
{
  versionCopy = version;
  specifierCopy = specifier;
  v9 = +[CSAssetTelemetryReporter sharedReporter];
  [v9 reportAssetMapLatencyTelemetry:specifierCopy assetSpecifier:versionCopy assetConfigVersion:telemetry];
}

- (void)_logMapFailTelemetryAndSubmitDiagnosticReportForError:(id)error assetSpecifier:(id)specifier assetConfigVersion:(id)version
{
  versionCopy = version;
  specifierCopy = specifier;
  errorCopy = error;
  v10 = +[CSAssetTelemetryReporter sharedReporter];
  [v10 reportAssetMapFailTelemetryForError:errorCopy assetSpecifier:specifierCopy assetConfigVersion:versionCopy];

  v11 = +[CSAssetTelemetryReporter sharedReporter];
  [v11 submitSecureAssetMapFailDiagnosticReportForError:errorCopy];
}

- (void)_retryMappingAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion
{
  v43[1] = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  nameCopy = name;
  setCopy = set;
  completionCopy = completion;
  assetType = [kitCopy assetType];
  [(CSUAFAssetManagerBase *)self _cancelRetryTimerForAsset:kitCopy];
  retryAttemptCount = [(CSUAFAssetManagerBase *)self retryAttemptCount];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:assetType];
  v14 = [retryAttemptCount objectForKey:v13];

  unsignedIntegerValue = [v14 unsignedIntegerValue];
  if (!v14 || [v14 unsignedIntegerValue] < self->_maxAssetMapRetryCount)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    objc_initWeak(&location, self);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
    v34[3] = &unk_1E865BF40;
    objc_copyWeak(&v40, &location);
    v35 = kitCopy;
    v36 = nameCopy;
    v37 = setCopy;
    selfCopy = self;
    v39 = completionCopy;
    v17 = [(CSUAFAssetManagerBase *)self _timerForUUID:uUID eventHandler:v34];
    retryTimers = [(CSUAFAssetManagerBase *)self retryTimers];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:assetType];
    [retryTimers setObject:v17 forKey:v19];

    retryAttemptCount2 = [(CSUAFAssetManagerBase *)self retryAttemptCount];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:assetType];
    [retryAttemptCount2 setObject:v21 forKey:v22];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_4;
    v32[3] = &unk_1E865BF68;
    v23 = v17;
    v33 = v23;
    [v23 resume:v32];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
LABEL_6:

    goto LABEL_7;
  }

  [(CSUAFAssetManagerBase *)self _resetRetryTimerForAsset:kitCopy];
  if (completionCopy)
  {
    v24 = MEMORY[0x1E696ABC0];
    v42 = @"reason";
    v25 = MEMORY[0x1E696AEC0];
    uUID = [(CSUAFAssetManagerBase *)self retryAttemptCount];
    v26 = [v25 stringWithFormat:@"Failed to map asset of type %ld after %ld retries", assetType, uUID];
    v43[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v28 = [v24 errorWithDomain:@"com.apple.corespeech" code:2162 userInfo:v27];
    (*(completionCopy + 2))(completionCopy, v28);

    goto LABEL_6;
  }

LABEL_7:
}

void __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2;
  v12[3] = &unk_1E865BF18;
  objc_copyWeak(&v16, (a1 + 72));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = *(a1 + 56);
  v15 = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  [WeakRetained _mapAssetToExclaveKit:v3 assetName:v4 assetSet:v5 completion:v12];

  objc_destroyWeak(&v16);
}

void __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_4(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 context];
    v8 = [v7 identifier];
    v9 = 136315650;
    v10 = "[CSUAFAssetManagerBase _retryMappingAssetToExclaveKit:assetName:assetSet:completion:]_block_invoke_4";
    v11 = 2112;
    v12 = v8;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s [%@] Timer resumed:%d", &v9, 0x1Cu);
  }
}

void __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_3;
    block[3] = &unk_1E865BEF0;
    v14 = v3;
    v15 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = *(a1 + 56);
    v18 = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v16 = v12;
    v17 = v11;
    dispatch_async(v6, block);
  }
}

void *__86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 80);

    return [v3 _retryMappingAssetToExclaveKit:v2 assetName:v4 assetSet:v5 completion:v6];
  }

  else
  {
    [*(a1 + 72) _resetRetryTimerForAsset:v2];
    result = *(a1 + 80);
    if (result)
    {
      v8 = result[2];

      return v8();
    }
  }

  return result;
}

- (id)_timerForUUID:(id)d eventHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = [[CSFTimerContext alloc] initTimerinterval:dCopy identifier:self->_assetMapRetryTimeInterval];

  v9 = [CSFTimer alloc];
  queue = [(CSUAFAssetManagerBase *)self queue];
  v11 = [(CSFTimer *)v9 initWithContext:v8 queue:queue eventHandler:handlerCopy];

  return v11;
}

- (void)_resetRetryTimerForAsset:(id)asset
{
  assetCopy = asset;
  [(CSUAFAssetManagerBase *)self _cancelRetryTimerForAsset:assetCopy];
  retryAttemptCount = [(CSUAFAssetManagerBase *)self retryAttemptCount];
  v5 = MEMORY[0x1E696AD98];
  assetType = [assetCopy assetType];

  v7 = [v5 numberWithUnsignedInteger:assetType];
  [retryAttemptCount removeObjectForKey:v7];
}

- (void)_cancelRetryTimerForAsset:(id)asset
{
  assetCopy = asset;
  retryTimers = [(CSUAFAssetManagerBase *)self retryTimers];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(assetCopy, "assetType")}];
  v7 = [retryTimers objectForKey:v6];
  [v7 cancel];

  retryTimers2 = [(CSUAFAssetManagerBase *)self retryTimers];
  v8 = MEMORY[0x1E696AD98];
  assetType = [assetCopy assetType];

  v10 = [v8 numberWithUnsignedInteger:assetType];
  [retryTimers2 removeObjectForKey:v10];
}

- (void)retryMappingAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion
{
  kitCopy = kit;
  nameCopy = name;
  setCopy = set;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__CSUAFAssetManagerBase_retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
  block[3] = &unk_1E865BEA0;
  block[4] = self;
  v20 = kitCopy;
  v21 = nameCopy;
  v22 = setCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = setCopy;
  v17 = nameCopy;
  v18 = kitCopy;
  dispatch_async(queue, block);
}

uint64_t __85__CSUAFAssetManagerBase_retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetRetryTimerForAsset:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 _retryMappingAssetToExclaveKit:v3 assetName:v4 assetSet:v5 completion:v6];
}

- (void)_mapAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  nameCopy = name;
  setCopy = set;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v15 = CSLogCategoryAsset;
  v16 = os_signpost_id_generate(CSLogCategoryAsset);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      *buf = 138412546;
      v39 = uUID;
      v40 = 2048;
      assetType = [kitCopy assetType];
      _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v15, OS_SIGNPOST_EVENT, v17, "Mapping_Secure_Asset", "[%@] Mapping asset type: %ld into exclave", buf, 0x16u);
    }
  }

  v18 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    assetType2 = [kitCopy assetType];
    *buf = 136315650;
    v39 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
    v40 = 2112;
    assetType = uUID;
    v42 = 2048;
    v43 = assetType2;
    _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s [%@] Mapping asset type: %ld into exclave", buf, 0x20u);
  }

  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __77__CSUAFAssetManagerBase__mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
  v35 = &unk_1E865BEC8;
  v21 = setCopy;
  v36 = v21;
  v22 = completionCopy;
  v37 = v22;
  v23 = MEMORY[0x1E12BA300](&v32);
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    goto LABEL_14;
  }

  v24 = [CSFPreferences sharedPreferences:v32];
  forceFailExclaveAssetMapping = [v24 forceFailExclaveAssetMapping];

  if (!forceFailExclaveAssetMapping)
  {
    goto LABEL_14;
  }

  v26 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
    _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s Internal Build: Setting to force fail asset mapping is enabled", buf, 0xCu);
  }

  v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2155 userInfo:&unk_1F59166A8];
  if (v27)
  {
    v28 = v27;
    v23[2](v23, v27);
  }

  else
  {
LABEL_14:
    v29 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
      v40 = 2112;
      assetType = nameCopy;
      _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_DEFAULT, "%s Mapping asset %@ to ExclaveKit", buf, 0x16u);
    }

    if ([nameCopy isEqualToString:{@"com.apple.siri.sp.invocation", v32, v33, v34, v35}])
    {
      [(CSUAFAssetManagerBase *)self _mapVoiceTriggerAsset:v21 asset:kitCopy completion:v23];
    }

    else
    {
      v30 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
        v40 = 2112;
        assetType = nameCopy;
        _os_log_error_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_ERROR, "%s Exclave Mapping Not supported assetName: %@", buf, 0x16u);
      }

      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2161 userInfo:&unk_1F59166D0];
      (v23)[2](v23, v31);
    }
  }
}

uint64_t __77__CSUAFAssetManagerBase__mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_getExclaveAssetManagerProxy
{
  v3 = self->_exclaveManagerProxy;
  if (!v3)
  {
    v4 = +[CSExclaveAssetManagerProxy sharedManager];
    exclaveManagerProxy = self->_exclaveManagerProxy;
    self->_exclaveManagerProxy = v4;

    v3 = self->_exclaveManagerProxy;
  }

  return v3;
}

- (void)mapAssetToExclaveKit:(id)kit assetName:(id)name assetSet:(id)set completion:(id)completion
{
  kitCopy = kit;
  nameCopy = name;
  setCopy = set;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
  block[3] = &unk_1E865BEA0;
  block[4] = self;
  v20 = kitCopy;
  v21 = nameCopy;
  v22 = setCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = setCopy;
  v17 = nameCopy;
  v18 = kitCopy;
  dispatch_async(queue, block);
}

void __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetRetryTimerForAsset:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2;
  v6[3] = &unk_1E865BE78;
  v7 = *(a1 + 64);
  [v2 _mapAssetToExclaveKit:v3 assetName:v4 assetSet:v5 completion:v6];
}

void __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] == 2155)
    {
      v5 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[CSUAFAssetManagerBase mapAssetToExclaveKit:assetName:assetSet:completion:]_block_invoke_2";
        _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Skipping retry to map asset as the operation is not supported.", &v10, 0xCu);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 16);
LABEL_11:
        v7();
      }
    }

    else
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v7 = *(v9 + 16);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_11;
    }
  }
}

- (CSUAFAssetManagerBase)initWithForceSetIsExclave:(BOOL)exclave exclaveManagerProxy:(id)proxy
{
  proxyCopy = proxy;
  v8 = [(CSUAFAssetManagerBase *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_isExclaveHardware = exclave;
    objc_storeStrong(&v8->_exclaveManagerProxy, proxy);
    v9->_assetMapRetryTimeInterval = 30.0;
    v9->_maxAssetMapRetryCount = 50;
  }

  return v9;
}

@end