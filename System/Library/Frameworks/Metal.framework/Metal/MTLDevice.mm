@interface MTLDevice
@end

@implementation MTLDevice

void __39___MTLDevice_initLogBufferResidencySet__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 616))
  {
    v2 = objc_opt_new();
    [v2 setLabel:@"MTLLogBufferResidencySet"];
    *(*(a1 + 32) + 616) = [*(a1 + 32) newResidencySetWithDescriptor:v2 error:0];

    *(*(a1 + 32) + 368) = 0;
  }
}

void __62___MTLDevice_newLibraryWithSource_options_compilerTask_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  *(*(*(a1 + 48) + 8) + 40) = a3;
  if ([*(a1 + 32) isCollectingLibraries])
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      v6 = *(*(a1 + 32) + 456);

      MTLPipelineCollection::addLibrary(v6, v5);
    }
  }
}

uint64_t __74___MTLDevice_newLibraryWithSource_options_compilerTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, NSError *a3)
{
  if (a2 && a3)
  {
    _MTLCompilerWarningLog(a3);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t __52___MTLDevice_optionsForPipelineLibrarySerialization__block_invoke()
{
  result = MTLGetEnvDefault("MTL_DUMP_PIPELINES_AS_METAL_SCRIPT", 0);
  [_MTLDevice optionsForPipelineLibrarySerialization]::serializeMetalScript = result;
  return result;
}

void __71___MTLDevice__newDynamicLibraryWithDescriptor_computeDescriptor_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 48) + 8) + 40) = a3;
  if (a2)
  {
    *(*(*(a1 + 56) + 8) + 40) = -[_MTLDynamicLibrary initWithLibrary:binaryData:device:error:]([_MTLDynamicLibrary alloc], "initWithLibrary:binaryData:device:error:", [*(a1 + 32) library], *(a2 + 24), *(a1 + 40), *(a1 + 64));
    if (*(a2 + 104))
    {
      v5 = [[MTLDebugInstrumentationData alloc] initWithData:*(a2 + 104)];
      [*(*(*(a1 + 56) + 8) + 40) setDebugInstrumentationData:v5];
    }
  }
}

uint64_t __68___MTLDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __76___MTLDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __65___MTLDevice_newLibraryWithStitchedDescriptor_completionHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1[4] + 456);
    if (v3)
    {
      MTLPipelineCollection::addStitchedLibrary(v3, a2, a1[5]);
    }
  }

  (*(a1[7] + 16))();
  v4 = a1[6];
}

void __44___MTLDevice_lookupRecompiledBinaryArchive___block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (v1)
  {
    v2 = v1;
    if (MTLGetBaseCachePath(void)::onceToken != -1)
    {
      MTLGetBaseCachePath();
    }

    v4[0] = MTLGetBaseCachePath(void)::result;
    v4[1] = @"com.apple.metalassetupgrader";
    v4[2] = @"recompiled";
    v4[3] = v2;
    v4[4] = @"archiveMapping.db";
    if (!stat([objc_msgSend(MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v4, 5)), "UTF8String"}], &v3))
    {
      operator new();
    }
  }
}

void __39___MTLDevice_recordBinaryArchiveUsage___block_invoke(uint64_t a1)
{
  v1[2] = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    if (MTLGetShaderCachePath::onceToken != -1)
    {
      MTLGetShaderCachePath_cold_1();
    }

    v1[0] = MTLGetShaderCachePath::result;
    v1[1] = @"archiveUsage.db";
    [MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v1, 2)}];
    operator new();
  }
}

void __26___MTLDevice_architecture__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 568))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [*(a1 + 32) targetDeviceArchitecture];
    *(*(a1 + 32) + 568) = -[MTLArchitecture initWithCPUType:cpuSubtype:]([MTLArchitecture alloc], "initWithCPUType:cpuSubtype:", [v4 cpuType], objc_msgSend(v4, "subType"));

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t __51___MTLDevice_maximumConcurrentCompilationTaskCount__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  result = MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE(0, 0);
  if (result >= 1)
  {
    [_MTLDevice maximumConcurrentCompilationTaskCount]::environmentOverride = result;
  }

  return result;
}

uint64_t __43___MTLDevice_defaultCompilerProcessesCount__block_invoke(uint64_t a1)
{
  if ((atomic_load_explicit(&_ZGVZZ43___MTLDevice_defaultCompilerProcessesCount_EUb_E7fromEnv, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZ43___MTLDevice_defaultCompilerProcessesCount_EUb_E7fromEnv))
  {
    _ZZZ43___MTLDevice_defaultCompilerProcessesCount_EUb_E7fromEnv = MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(0, 0);
    __cxa_guard_release(&_ZGVZZ43___MTLDevice_defaultCompilerProcessesCount_EUb_E7fromEnv);
  }

  result = _ZZZ43___MTLDevice_defaultCompilerProcessesCount_EUb_E7fromEnv;
  if (!_ZZZ43___MTLDevice_defaultCompilerProcessesCount_EUb_E7fromEnv)
  {
    if (*(*(a1 + 32) + 600) == 1)
    {
      result = MTLGetDefaultCompilerProcessesCount();
    }

    else
    {
      result = 2;
    }
  }

  [_MTLDevice defaultCompilerProcessesCount]::ret = result;
  return result;
}

void __43___MTLDevice_maximumCompilerProcessesCount__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((atomic_load_explicit(&_ZGVZZ43___MTLDevice_maximumCompilerProcessesCount_EUb0_E7fromEnv, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&_ZGVZZ43___MTLDevice_maximumCompilerProcessesCount_EUb0_E7fromEnv);
    if (a1)
    {
      _ZZZ43___MTLDevice_maximumCompilerProcessesCount_EUb0_E7fromEnv = MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(0, 0);
      __cxa_guard_release(&_ZGVZZ43___MTLDevice_maximumCompilerProcessesCount_EUb0_E7fromEnv);
    }
  }

  if (_ZZZ43___MTLDevice_maximumCompilerProcessesCount_EUb0_E7fromEnv)
  {
    [_MTLDevice maximumCompilerProcessesCount]::ret = _ZZZ43___MTLDevice_maximumCompilerProcessesCount_EUb0_E7fromEnv;
  }

  else if (*(*(v2 + 32) + 600) == 1)
  {
    [_MTLDevice maximumCompilerProcessesCount]::ret = MTLGetOptimalCompilerProcessesCount(a1, a2);
  }

  else
  {
    v4 = 4;
    v5 = 0;
    v3 = 4;
    sysctlbyname("hw.perflevel0.logicalcpu", &v5 + 4, &v4, 0, 0);
    sysctlbyname("hw.perflevel1.logicalcpu", &v5, &v3, 0, 0);
    _os_feature_enabled_impl();
    [_MTLDevice maximumCompilerProcessesCount]::ret = 2;
    if (([*(v2 + 32) supportsFamily:1007] & 1) != 0 || objc_msgSend(*(v2 + 32), "supportsFamily:", 1001))
    {
      [_MTLDevice maximumCompilerProcessesCount]::ret = 2;
    }
  }
}

void __39___MTLDevice_threadsPerCompilerProcess__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((atomic_load_explicit(&_ZGVZZ39___MTLDevice_threadsPerCompilerProcess_EUb1_E7fromEnv, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&_ZGVZZ39___MTLDevice_threadsPerCompilerProcess_EUb1_E7fromEnv);
    if (a1)
    {
      _ZZZ39___MTLDevice_threadsPerCompilerProcess_EUb1_E7fromEnv = MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(0, 0);
      __cxa_guard_release(&_ZGVZZ39___MTLDevice_threadsPerCompilerProcess_EUb1_E7fromEnv);
    }
  }

  if (_ZZZ39___MTLDevice_threadsPerCompilerProcess_EUb1_E7fromEnv)
  {
    [_MTLDevice threadsPerCompilerProcess]::ret = _ZZZ39___MTLDevice_threadsPerCompilerProcess_EUb1_E7fromEnv;
    return;
  }

  if (*(*(v2 + 32) + 600) == 1)
  {
    [_MTLDevice threadsPerCompilerProcess]::ret = MTLGetOptimalCompilerProcessesCount(a1, a2);
    return;
  }

  v3 = _os_feature_enabled_impl();
  v10 = 4;
  v11 = 0;
  v9 = 4;
  sysctlbyname("hw.perflevel0.logicalcpu", &v11 + 4, &v10, 0, 0);
  sysctlbyname("hw.perflevel1.logicalcpu", &v11, &v9, 0, 0);
  [_MTLDevice threadsPerCompilerProcess]::ret = 1;
  v5 = v11;
  v4 = HIDWORD(v11);
  if ([*(v2 + 32) supportsFamily:1007])
  {
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 2;
    }

    if (v4)
    {
      v6 = v4;
    }

    if (!v3)
    {
      v6 = v5 + v4;
    }

    if (v6 <= 2)
    {
      v6 = 2;
    }

    v7 = v6 >> 1;
    if (v7 >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    if (![*(v2 + 32) supportsFamily:1001])
    {
      return;
    }

    v8 = 1;
  }

  [_MTLDevice threadsPerCompilerProcess]::ret = v8;
}

@end