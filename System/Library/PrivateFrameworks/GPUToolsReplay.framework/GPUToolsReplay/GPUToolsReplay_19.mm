id GTUSCSamplingStreamingManagerHelper::DrainRawFrameData(id *this)
{
  if ([this[3] count])
  {
    v2 = MEMORY[0x277CBEB18];
    v3 = [this[3] firstObject];
    v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "ringBufferNum")}];

    v5 = [this[3] lastObject];
    if ([v5 isEnabled])
    {
      for (i = 0; ; i = (i + 1))
      {
        if (i >= [v5 ringBufferNum])
        {
          v13 = v4;
          goto LABEL_16;
        }

        v17 = 0;
        v18 = 0;
        v16 = 0;
        if (([v5 ringBufferInfoAtIndex:i base:&v18 size:&v17 + 4 dataOffset:&v17 dataSize:&v16] & 1) == 0)
        {
          break;
        }

        v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v16];
        v8 = v7;
        v9 = v16;
        if (v16 + v17 <= HIDWORD(v17))
        {
          [v7 appendBytes:v18 + v17 length:v16];
        }

        else
        {
          v10 = HIDWORD(v17) - v17;
          [v7 appendBytes:v18 + v17 length:(HIDWORD(v17) - v17)];
          [v8 appendBytes:v18 length:v9 - v10];
        }

        v11 = [v5 drainRingBufferAtIndex:i dataSize:v16];
        if (v11 != v16)
        {
          v12 = [v5 name];
          NSLog(&cfstr_FailUnexpected.isa, v12);
        }

        [v4 addObject:v8];
      }

      v14 = [v5 name];
      NSLog(&cfstr_FailUnableToRe.isa, v14);
    }

    v13 = 0;
LABEL_16:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id GTUSCSamplingStreamingManagerHelper::PostProcessFrameData(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    GTUSCSamplingStreamingManagerHelper::ResetSourceForPostProcessing(a1);
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [a1[3] lastObject];
    for (i = 0; ; ++i)
    {
      if (i >= [v3 count])
      {
        v12 = v4;
        goto LABEL_11;
      }

      v7 = [v3 objectAtIndexedSubscript:i];
      v8 = [v7 length];
      v15 = 0;
      v16 = 0;
      v9 = 4 * [v7 length];
      if (v9 <= 0x4000)
      {
        v9 = 0x4000;
      }

      v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
      v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
      LOBYTE(v14) = 1;
      if (([v5 postProcessRawDataWithRingBufferIndex:i source:objc_msgSend(v7 sourceSize:"bytes") sourceRead:v8 + 8 sourceWrite:&v16 output:v8 outputSize:objc_msgSend(v11 outputRead:"mutableBytes") outputWrite:v10 isLast:{0, &v15, v14}] & 1) == 0)
      {
        break;
      }

      [v11 setLength:v15];
      [v4 addObject:v11];
    }

    v12 = 0;
LABEL_11:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

__n128 __Block_byref_object_copy__486(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long>>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper19StreamFrameTimeDataEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  GTMTLReplayController_prePlayForProfiling(**v2);
  GTUSCSamplingStreamingManagerHelper::SetupSourceForFrameTime(v2, *(a1 + 56), *(a1 + 60) == 0);
  DisableComputeEncoderCoalescing(**v2, 1);
  v3 = [v2[2] firstObject];
  [v3 startSampling];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 60);
  v6 = *(*(*(a1 + 40) + 8) + 48);
  v44 = **v2;
  v7 = v44;
  v45 = 0;
  v43 = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  v8 = *(**v2 + 8);
  v40 = ***v2;
  v33 = *(v40 + 16);
  v37 = v8;
  v9 = [v8 defaultDevice];
  v39 = [v9 newCommandQueue];

  v10 = [v8 defaultDevice];
  v34 = v4;
  v38 = v2;
  v11 = [v10 newEvent];

  v42 = 0;
  v12 = *(*v44 + 128);
  v41 = *(v12 + 12);
  if (v44[5640] < v41)
  {
    v35 = v11;
    v36 = (v6 + 40 * v5);
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(v12 + 24) + (*(v7 + 22560) << 6);
      if (GTFenum_getConstructorType(*(v14 + 8)) == 25)
      {
        v15 = GTMTLReplayController_restoreCommandBuffer(v7, v14);
      }

      else
      {
        v15 = 0;
      }

      GTMTLReplayController_updateCommandEncoder(v7, v14);
      DispatchFunction(v7, v14, &v42);
      if (GTFenum_getConstructorType(*(v14 + 8)) == 21)
      {
        v26 = *(GTTraceFunc_argumentBytesWithMap(v14, *(v14 + 13), v33) + 1);
        if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v36, [v8 globalTraceIdForEncoder:v26 ofType:0]))
        {
          v32 = [v8 blitCommandEncoderForKey:v26];
          [v32 endEncoding];
          v31 = [v8 commandBufferForKey:{GTTraceFunc_targetContext(v14, *(v40 + 16))}];
          v27 = [v31 computeCommandEncoder];
          [v27 endEncoding];
          DispatchFunction(v7, v14, &v42);
        }
      }

      if (v15)
      {
        v16 = [v8 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v14, *(v14 + 13), *(v40 + 16)) + 1)}];
        ++GTUSCSamplingStreamingManagerHelper::ReplayForTimingCounters(std::unordered_map<unsigned int,GTEncoderSampleIndexInfo> &)::signalCounter;
        [v16 encodeSignalEvent:v11 value:?];
        v17 = [v39 commandBuffer];
        [v17 encodeWaitForEvent:v11 value:{GTUSCSamplingStreamingManagerHelper::ReplayForTimingCounters(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &)::signalCounter++}];
        [v17 encodeSignalEvent:v11 value:?];
        [v17 commit];
        [v16 encodeWaitForEvent:v11 value:{GTUSCSamplingStreamingManagerHelper::ReplayForTimingCounters(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &)::signalCounter}];
      }

      else
      {
        v18 = *(v14 + 8);
        if (!GTMTLReplayHost_IsFuncEnumSampledEncoder(v18, 1, 0))
        {
          goto LABEL_13;
        }

        ConstructorType = GTFenum_getConstructorType(v18);
        v20 = v42;
        if (v42 != (ConstructorType == 65))
        {
          goto LABEL_13;
        }

        v21 = v12;
        v22 = ConstructorType == 65;
        v23 = *(GTTraceFunc_argumentBytesWithMap(v14, *(v14 + 13), *(v40 + 16)) + 1);
        v24 = [v8 globalTraceIdForEncoder:v23 ofType:v22];
        v16 = [v8 encoderForKey:v23 ofType:v20];
        GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v38, v36, v14, v24, v16, v36[3], 0, 0);
        v8 = v37;
        v12 = v21;
        v11 = v35;
      }

LABEL_13:
      objc_autoreleasePoolPop(v13);
      v25 = *(v7 + 22560) + 1;
      *(v7 + 22560) = v25;
    }

    while (v25 < v41);
  }

  *(v7 + 22564) = 0;
  v28 = [*(v7 + 8) defaultCommandQueue];
  [v28 finish];

  ScopedReplayConfiguration::~ScopedReplayConfiguration(&v43);
  v29 = GTUSCSamplingStreamingManagerHelper::DrainRawFrameData(v38);
  if (v29)
  {
    [*(a1 + 32) setArray:v29];
  }

  objc_autoreleasePoolPop(v34);
  v30 = [v38[2] firstObject];
  [v30 stopSampling];

  DisableComputeEncoderCoalescing(**v38, 0);
  GTAGXPerfStateControl::DisableConsistentGPUPerfState((v38 + 5));

  GTApplePMPPerfStateControl::DisableConsistentPerfState((v38 + 8));
}

void sub_24D88ADEC(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  ScopedReplayConfiguration::~ScopedReplayConfiguration(va);
  _Unwind_Resume(a1);
}

void ___ZN35GTUSCSamplingStreamingManagerHelper19StreamFrameTimeDataEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = GTSampleBufferManager::ResolveSampleBuffers((v2 + 267));
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
    [v4 setData:v5];

    v3 = v5;
  }

  v2[273] = 0;
  v2[271] = v2[270];
}

void ___ZN35GTUSCSamplingStreamingManagerHelper19StreamFrameTimeDataEv_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_autoreleasePoolPush();
  v4 = GTUSCSamplingStreamingManagerHelper::PostProcessFrameData(v2, *(a1 + 32));
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(__n);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<std::unordered_map<unsigned int,GTEncoderSampleIndexInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(GTUSCSamplingStreamingManagerHelper *this, GTUSCSamplingStreamingManager *a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (xmmword_27F09C594 == 2)
  {
    GTUSCSamplingStreamingManagerHelper::CleanupForAPSStreaming(this);
    GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v2);
  }

  else
  {
    GTUSCSamplingStreamingManagerHelper::Init(this, a2);
    GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v3);
    GTAGXProfilingSupportHelper::Initialize(qword_27F09C4A8, v4);
  }

  v5 = GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  qword_27F09C478 = [qword_27F09C498 mutableBytes];
  v6 = [[ProgramAddressTableCollector alloc] initForHarvestingBinaries];
  v7 = xmmword_27F09C480;
  *&xmmword_27F09C480 = v6;

  if (qword_27F09C588 == -1)
  {
    return;
  }

  GTUSCSamplingStreamingManagerHelper::SetupBuffersForAPSSource(v8);
  v9 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:qword_27F09C588];
  if ((qword_27F09C9B0 & 4) != 0)
  {
    if (!xmmword_27F09C594)
    {
      v27 = [[GTGPUAPSConfig alloc] initForProfilingConfigurationDetermination];
      v28 = *(&xmmword_27F09C520 + 1);
      *(&xmmword_27F09C520 + 1) = v27;

      v13 = *(&xmmword_27F09C520 + 1);
      v29 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"apsProfilingConfig"];
      v30 = v29;
      if (v29)
      {
        v31 = [v29 objectForKeyedSubscript:@"KickAndStateTracing"];
        v32 = [v31 objectForKeyedSubscript:@"PulsePeriod"];

        if (v32)
        {
          v33 = [v32 unsignedIntegerValue];
          [*(&xmmword_27F09C520 + 1) setOverridePulsePeriod:v33];
        }

        v34 = [v30 objectForKeyedSubscript:@"KickAndStateTracing"];
        v35 = [v34 objectForKeyedSubscript:@"CountPeriod"];

        if (v35)
        {
          v36 = [v35 unsignedIntegerValue];
          [*(&xmmword_27F09C520 + 1) setOverrideCountPeriod:v36];
        }
      }

      goto LABEL_12;
    }

    v11 = [[GTGPUAPSConfig alloc] initForTimelineConfigurationDetermination];
    v12 = qword_27F09C530;
    qword_27F09C530 = v11;

    v10 = qword_27F09C530;
  }

  else if (xmmword_27F09C594 == 2)
  {
    v10 = qword_27F09C530;
  }

  else
  {
    v10 = *(&xmmword_27F09C520 + 1);
  }

  v13 = v10;
LABEL_12:
  v14 = [v13 grcOptions];
  v15 = xmmword_27F09C500;
  *&xmmword_27F09C500 = v14;

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v17 = *(&xmmword_27F09C500 + 1);
  *(&xmmword_27F09C500 + 1) = v16;

  v18 = *(&xmmword_27F09C500 + 1);
  v19 = MEMORY[0x277D0AF30];
  v20 = [v13 grcTrigger];
  v21 = [v19 selectWithName:@"KickAndStateTracing" options:v20];
  [v18 addObject:v21];

  if (xmmword_27F09C594 == 2)
  {
    v22 = @"Timeline";
  }

  else
  {
    v22 = @"Profiling";
  }

  v23 = v22;
  v24 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32);
  v37 = @"Streaming APS Profiling";
  v38[0] = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  (*(v24 + 16))(v24, v25);

  GTUSCSamplingStreamingManagerHelper::InitRDELimiterCounters(v26);
}

void GTUSCSamplingStreamingManagerHelper::StreamAPS(GTUSCSamplingStreamingManagerHelper *this)
{
  v1 = atomic_load(byte_27F09C804);
  if ((v1 & 1) == 0 && qword_27F09C588 != -1)
  {
    [*(**&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) defaultCommandQueue];
    [objc_claimAutoreleasedReturnValue() finish];
    GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }
}

void sub_24D88BE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, std::thread a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a28, 8);

  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);

  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  v69 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v69;
    operator delete(v69);
  }

  _Block_object_dispose(&STACK[0x248], 8);
  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::~__hash_table(&STACK[0x278]);
  _Block_object_dispose((v67 - 192), 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v67 - 144);

  _Unwind_Resume(a1);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(unint64_t result, unint64_t *a2, uint64_t a3, char a4, int64x2_t a5)
{
  v7 = result;
  v8 = vdupq_n_s64(1uLL);
  v9 = xmmword_24DA8B910;
  v10 = vdupq_n_s64(2uLL);
  v188 = v8;
  v187 = v10;
  while (2)
  {
    v11 = v7;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v7 = v11;
          v12 = a2 - v11;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v129 = v11[1];
                v130 = *(a2 - 1);
                if (v129 <= v130)
                {
                  v131 = *(a2 - 1);
                }

                else
                {
                  v131 = v11[1];
                }

                if (v129 >= v130)
                {
                  v129 = *(a2 - 1);
                }

                *(a2 - 1) = v129;
                v11[1] = v131;
                v132 = *(a2 - 1);
                if (v132 <= *v11)
                {
                  v133 = *v11;
                }

                else
                {
                  v133 = *(a2 - 1);
                }

                if (v132 >= *v11)
                {
                  v132 = *v11;
                }

                *(a2 - 1) = v132;
                v135 = *v11;
                v134 = v11[1];
                if (v133 <= v134)
                {
                  v135 = v11[1];
                }

                if (v133 < v134)
                {
                  v134 = v133;
                }

                *v11 = v135;
                v11[1] = v134;
                return result;
              case 4:
                v137 = v11[1];
                v136 = v11[2];
                if (*v11 <= v136)
                {
                  v138 = v11[2];
                }

                else
                {
                  v138 = *v11;
                }

                if (*v11 < v136)
                {
                  v136 = *v11;
                }

                v11[2] = v136;
                *v11 = v138;
                v139 = *(a2 - 1);
                if (v137 <= v139)
                {
                  v140 = *(a2 - 1);
                }

                else
                {
                  v140 = v137;
                }

                if (v137 < v139)
                {
                  v139 = v137;
                }

                *(a2 - 1) = v139;
                v141 = *v11;
                if (*v11 <= v140)
                {
                  v142 = v140;
                }

                else
                {
                  v142 = *v11;
                }

                if (*v11 >= v140)
                {
                  v141 = v140;
                }

                *v11 = v142;
                v11[1] = v141;
                v143 = v11[2];
                v144 = *(a2 - 1);
                if (v143 <= v144)
                {
                  v145 = *(a2 - 1);
                }

                else
                {
                  v145 = v11[2];
                }

                if (v143 >= v144)
                {
                  v143 = *(a2 - 1);
                }

                *(a2 - 1) = v143;
                v146 = v11[1];
                if (v146 <= v145)
                {
                  v147 = v145;
                }

                else
                {
                  v147 = v11[1];
                }

                if (v146 >= v145)
                {
                  v146 = v145;
                }

                v11[1] = v147;
                v11[2] = v146;
                return result;
              case 5:
                v107 = *v11;
                v108 = v11[1];
                if (*v11 <= v108)
                {
                  v109 = v11[1];
                }

                else
                {
                  v109 = *v11;
                }

                if (*v11 >= v108)
                {
                  v107 = v11[1];
                }

                *v11 = v109;
                v11[1] = v107;
                v110 = v11[3];
                v111 = *(a2 - 1);
                if (v110 <= v111)
                {
                  v112 = *(a2 - 1);
                }

                else
                {
                  v112 = v11[3];
                }

                if (v110 >= v111)
                {
                  v110 = *(a2 - 1);
                }

                *(a2 - 1) = v110;
                v11[3] = v112;
                v113 = *(a2 - 1);
                v114 = v11[2];
                if (v113 <= v114)
                {
                  v115 = v11[2];
                }

                else
                {
                  v115 = *(a2 - 1);
                }

                if (v113 >= v114)
                {
                  v113 = v11[2];
                }

                *(a2 - 1) = v113;
                v117 = v11[2];
                v116 = v11[3];
                v118 = v11[1];
                if (v115 <= v116)
                {
                  v117 = v11[3];
                }

                if (v115 < v116)
                {
                  v116 = v115;
                }

                v11[2] = v117;
                v11[3] = v116;
                v119 = *(a2 - 1);
                if (v118 <= v119)
                {
                  v120 = *(a2 - 1);
                }

                else
                {
                  v120 = v118;
                }

                if (v118 < v119)
                {
                  v119 = v118;
                }

                *(a2 - 1) = v119;
                v121 = *v11;
                v123 = v11[2];
                v122 = v11[3];
                if (v122 <= *v11)
                {
                  v124 = *v11;
                }

                else
                {
                  v124 = v11[3];
                }

                if (v122 >= *v11)
                {
                  v122 = *v11;
                }

                if (v124 <= v123)
                {
                  v121 = v11[2];
                }

                if (v124 < v123)
                {
                  v123 = v124;
                }

                if (v122 <= v120)
                {
                  v125 = v120;
                }

                else
                {
                  v125 = v122;
                }

                if (v122 >= v120)
                {
                  v122 = v120;
                }

                if (v125 <= v123)
                {
                  v120 = v123;
                }

                *v11 = v121;
                v11[1] = v120;
                if (v125 >= v123)
                {
                  v126 = v123;
                }

                else
                {
                  v126 = v125;
                }

                v11[2] = v126;
                v11[3] = v122;
                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              v127 = *(a2 - 1);
              v128 = *v11;
              if (v127 > *v11)
              {
                *v11 = v127;
                *(a2 - 1) = v128;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v148 = v11 + 1;
            v150 = v11 == a2 || v148 == a2;
            if (a4)
            {
              if (!v150)
              {
                v151 = 8;
                v152 = v11;
                do
                {
                  v154 = *v152;
                  v153 = v152[1];
                  v152 = v148;
                  if (v153 > v154)
                  {
                    v155 = v151;
                    while (1)
                    {
                      *(v11 + v155) = v154;
                      v156 = v155 - 8;
                      if (v155 == 8)
                      {
                        break;
                      }

                      v154 = *(v11 + v155 - 16);
                      v155 -= 8;
                      if (v153 <= v154)
                      {
                        v157 = (v11 + v156);
                        goto LABEL_285;
                      }
                    }

                    v157 = v11;
LABEL_285:
                    *v157 = v153;
                  }

                  v148 = v152 + 1;
                  v151 += 8;
                }

                while (v152 + 1 != a2);
              }
            }

            else if (!v150)
            {
              do
              {
                v186 = *v7;
                v185 = v7[1];
                v7 = v148;
                if (v185 > v186)
                {
                  do
                  {
                    *v148 = v186;
                    v186 = *(v148 - 2);
                    --v148;
                  }

                  while (v185 > v186);
                  *v148 = v185;
                }

                v148 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v158 = (v12 - 2) >> 1;
              v159 = v158;
              do
              {
                v160 = v159;
                if (v158 >= v159)
                {
                  v161 = (2 * v159) | 1;
                  v162 = &v11[v161];
                  if (2 * v160 + 2 >= v12)
                  {
                    v163 = *v162;
                  }

                  else
                  {
                    v163 = v162[1];
                    v164 = *v162 > v163;
                    if (*v162 < v163)
                    {
                      v163 = *v162;
                    }

                    if (v164)
                    {
                      ++v162;
                      v161 = 2 * v160 + 2;
                    }
                  }

                  v165 = &v11[v160];
                  v166 = *v165;
                  if (v163 <= *v165)
                  {
                    do
                    {
                      *v165 = v163;
                      v165 = v162;
                      if (v158 < v161)
                      {
                        break;
                      }

                      v167 = (2 * v161) | 1;
                      v162 = &v11[v167];
                      v161 = 2 * v161 + 2;
                      if (v161 >= v12)
                      {
                        v163 = *v162;
                        v161 = v167;
                      }

                      else
                      {
                        v163 = *v162;
                        result = v162[1];
                        if (*v162 >= result)
                        {
                          v163 = v162[1];
                        }

                        if (*v162 <= result)
                        {
                          v161 = v167;
                        }

                        else
                        {
                          ++v162;
                        }
                      }
                    }

                    while (v163 <= v166);
                    *v165 = v166;
                  }
                }

                v159 = v160 - 1;
              }

              while (v160);
              do
              {
                v168 = 0;
                v169 = *v11;
                v170 = v11;
                do
                {
                  v171 = &v170[v168];
                  v172 = v171 + 1;
                  v173 = (2 * v168) | 1;
                  v168 = 2 * v168 + 2;
                  if (v168 >= v12)
                  {
                    v174 = *v172;
                    v168 = v173;
                  }

                  else
                  {
                    v176 = v171[2];
                    v175 = v171 + 2;
                    v174 = v176;
                    v177 = *(v175 - 1);
                    v178 = v177 > v176;
                    if (v177 < v176)
                    {
                      v174 = *(v175 - 1);
                    }

                    if (v178)
                    {
                      v172 = v175;
                    }

                    else
                    {
                      v168 = v173;
                    }
                  }

                  *v170 = v174;
                  v170 = v172;
                }

                while (v168 <= ((v12 - 2) >> 1));
                if (v172 == --a2)
                {
                  *v172 = v169;
                }

                else
                {
                  *v172 = *a2;
                  *a2 = v169;
                  v179 = (v172 - v11 + 8) >> 3;
                  v21 = v179 < 2;
                  v180 = v179 - 2;
                  if (!v21)
                  {
                    v181 = v180 >> 1;
                    v182 = &v11[v181];
                    v183 = *v182;
                    v184 = *v172;
                    if (*v182 > *v172)
                    {
                      do
                      {
                        *v172 = v183;
                        v172 = v182;
                        if (!v181)
                        {
                          break;
                        }

                        v181 = (v181 - 1) >> 1;
                        v182 = &v11[v181];
                        v183 = *v182;
                      }

                      while (*v182 > v184);
                      *v172 = v184;
                    }
                  }
                }

                v21 = v12-- <= 2;
              }

              while (!v21);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = *(a2 - 1);
          if (v12 < 0x81)
          {
            v48 = *v11;
            if (*v11 <= v14)
            {
              v49 = *(a2 - 1);
            }

            else
            {
              v49 = *v11;
            }

            if (*v11 >= v14)
            {
              v48 = *(a2 - 1);
            }

            *(a2 - 1) = v48;
            *v11 = v49;
            v50 = *(a2 - 1);
            v51 = v11[v13];
            if (v50 <= v51)
            {
              v52 = v11[v13];
            }

            else
            {
              v52 = *(a2 - 1);
            }

            if (v50 >= v51)
            {
              v50 = v11[v13];
            }

            *(a2 - 1) = v50;
            v53 = *v11;
            v54 = v52 > *v11;
            if (v52 > *v11)
            {
              v53 = v11[v13];
            }

            v11[v13] = v53;
            v47 = *v11;
            if (!v54)
            {
              v47 = v52;
            }

            *v11 = v47;
          }

          else
          {
            v15 = &v11[v13];
            v16 = *v15;
            if (*v15 <= v14)
            {
              v17 = *(a2 - 1);
            }

            else
            {
              v17 = *v15;
            }

            if (*v15 >= v14)
            {
              v16 = *(a2 - 1);
            }

            *(a2 - 1) = v16;
            *v15 = v17;
            v18 = *(a2 - 1);
            if (v18 <= *v11)
            {
              v19 = *v11;
            }

            else
            {
              v19 = *(a2 - 1);
            }

            if (v18 >= *v11)
            {
              v18 = *v11;
            }

            *(a2 - 1) = v18;
            v20 = *v15;
            v21 = v19 > *v15;
            if (v19 > *v15)
            {
              v20 = *v11;
            }

            *v11 = v20;
            v23 = *(v15 - 1);
            v22 = *v15;
            if (!v21)
            {
              v22 = v19;
            }

            *v15 = v22;
            v24 = *(a2 - 2);
            if (v23 <= v24)
            {
              v25 = *(a2 - 2);
            }

            else
            {
              v25 = v23;
            }

            if (v23 < v24)
            {
              v24 = v23;
            }

            *(a2 - 2) = v24;
            *(v15 - 1) = v25;
            v26 = *(a2 - 2);
            v27 = v11[1];
            if (v26 <= v27)
            {
              v28 = v11[1];
            }

            else
            {
              v28 = *(a2 - 2);
            }

            if (v26 >= v27)
            {
              v26 = v11[1];
            }

            *(a2 - 2) = v26;
            v29 = *(v15 - 1);
            v30 = v28 > v29;
            if (v28 > v29)
            {
              v29 = v11[1];
            }

            v11[1] = v29;
            v31 = *(v15 - 1);
            if (!v30)
            {
              v31 = v28;
            }

            *(v15 - 1) = v31;
            v32 = v15[1];
            v33 = *(a2 - 3);
            if (v32 <= v33)
            {
              v34 = *(a2 - 3);
            }

            else
            {
              v34 = v15[1];
            }

            if (v32 >= v33)
            {
              v32 = *(a2 - 3);
            }

            *(a2 - 3) = v32;
            v15[1] = v34;
            v35 = *(a2 - 3);
            v36 = v11[2];
            if (v35 <= v36)
            {
              v37 = v11[2];
            }

            else
            {
              v37 = *(a2 - 3);
            }

            if (v35 >= v36)
            {
              v35 = v11[2];
            }

            *(a2 - 3) = v35;
            v38 = v15[1];
            v39 = v37 > v38;
            if (v37 > v38)
            {
              v38 = v11[2];
            }

            v11[2] = v38;
            v41 = *v15;
            v40 = v15[1];
            if (!v39)
            {
              v40 = v37;
            }

            v42 = *(v15 - 1);
            if (v41 <= v40)
            {
              v43 = v40;
            }

            else
            {
              v43 = *v15;
            }

            if (v41 < v40)
            {
              v40 = *v15;
            }

            if (v40 <= v42)
            {
              v44 = *(v15 - 1);
            }

            else
            {
              v44 = v40;
            }

            if (v40 >= v42)
            {
              v40 = *(v15 - 1);
            }

            v15[1] = v40;
            if (v42 <= v43)
            {
              v45 = v43;
            }

            else
            {
              v45 = v42;
            }

            if (v42 > v43)
            {
              v44 = v43;
            }

            *(v15 - 1) = v45;
            *v15 = v44;
            v46 = *v11;
            *v11 = v44;
            *v15 = v46;
            v47 = *v11;
          }

          --a3;
          if ((a4 & 1) == 0 && *(v11 - 1) <= v47)
          {
            if (v47 <= *(a2 - 1))
            {
              v99 = (v11 + 1);
              do
              {
                v11 = v99;
                if (v99 >= a2)
                {
                  break;
                }

                v99 += 8;
              }

              while (v47 <= *v11);
            }

            else
            {
              do
              {
                v98 = v11[1];
                ++v11;
              }

              while (v47 <= v98);
            }

            v100 = a2;
            if (v11 < a2)
            {
              v100 = a2;
              do
              {
                v101 = *--v100;
              }

              while (v47 > v101);
            }

            if (v11 < v100)
            {
              v102 = *v11;
              v103 = *v100;
              do
              {
                *v11 = v103;
                *v100 = v102;
                do
                {
                  v104 = v11[1];
                  ++v11;
                  v102 = v104;
                }

                while (v47 <= v104);
                do
                {
                  v105 = *--v100;
                  v103 = v105;
                }

                while (v47 > v105);
              }

              while (v11 < v100);
            }

            v106 = v11 - 1;
            if (v11 - 1 != v7)
            {
              *v7 = *v106;
            }

            a4 = 0;
            *v106 = v47;
            continue;
          }

          break;
        }

        if (v47 <= *(a2 - 1))
        {
          v57 = (v11 + 1);
          do
          {
            v55 = v57;
            if (v57 >= a2)
            {
              break;
            }

            v57 += 8;
          }

          while (v47 <= *v55);
        }

        else
        {
          v55 = v11;
          do
          {
            v56 = v55[1];
            ++v55;
          }

          while (v47 <= v56);
        }

        v58 = a2;
        if (v55 < a2)
        {
          v58 = a2;
          do
          {
            v59 = *--v58;
          }

          while (v47 > v59);
        }

        v60 = v55;
        if (v55 < v58)
        {
          v61 = *v55;
          *v55 = *v58;
          v60 = v55 + 1;
          *v58 = v61;
        }

        v62 = v58 - 1;
        v63 = (v58 - 1) - v60;
        if (v63 < 1009)
        {
          v64 = 0;
          v76 = v63 >> 3;
          v74 = 1;
LABEL_124:
          v80 = v76 + 1;
          v77 = (v76 + 1) / 2;
          v78 = v80 - v80 / 2;
          goto LABEL_125;
        }

        v64 = 0;
        v65 = 0;
        a5 = vdupq_n_s64(v47);
        do
        {
          if (v65)
          {
            if (v64)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v66 = 0uLL;
            v67 = v9;
            do
            {
              v66 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(a5, *(v60 + v65)), v8), v67), v66);
              v67 = vaddq_s64(v67, v10);
              v65 += 16;
            }

            while (v65 != 512);
            v65 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
            if (v64)
            {
LABEL_104:
              if (!v65)
              {
                goto LABEL_115;
              }

              goto LABEL_112;
            }
          }

          v68 = 0uLL;
          v69 = 0x1FFFFFFFFFFFFFFFLL;
          v70 = v9;
          do
          {
            v68 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v62[v69], *&v62[v69], 8uLL), a5), vdupq_n_s64(1uLL)), v70), v68);
            v70 = vaddq_s64(v70, vdupq_n_s64(2uLL));
            v69 -= 2;
          }

          while (v69 != -65);
          v64 = vorr_s8(*v68.i8, *&vextq_s8(v68, v68, 8uLL));
          if (!v65)
          {
            goto LABEL_115;
          }

LABEL_112:
          if (v64)
          {
            do
            {
              v71 = __clz(__rbit64(v65));
              v65 &= v65 - 1;
              v72 = &v62[-__clz(__rbit64(v64))];
              v73 = v60[v71];
              v60[v71] = *v72;
              *v72 = v73;
              v64 &= v64 - 1;
            }

            while (v64 && v65);
          }

LABEL_115:
          v60 += 64 * (v65 == 0);
          v74 = v64 == 0;
          if (v64)
          {
            v75 = 0;
          }

          else
          {
            v75 = -512;
          }

          v62 = (v62 + v75);
        }

        while (v62 - v60 > 1008);
        v76 = v62 - v60;
        if (!(v65 | v64))
        {
          goto LABEL_124;
        }

        v77 = v76 - 63;
        v78 = 64;
        v79 = 64;
        if (v65)
        {
          if (v64)
          {
            goto LABEL_134;
          }

LABEL_131:
          if (v77 >= 1)
          {
            v82 = 0;
            v64 = 0;
            v83 = v62;
            do
            {
              v84 = *v83--;
              v64 |= (v84 > v47) << v82++;
            }

            while (v77 != v82);
            goto LABEL_134;
          }

          if (v65)
          {
            v92 = 0;
          }

          else
          {
            v92 = v79;
          }

          v11 = &v60[v92];
LABEL_151:
          if (v65)
          {
            v62 -= v77;
            goto LABEL_153;
          }

          goto LABEL_157;
        }

LABEL_125:
        if (v77 < 1)
        {
          v65 = 0;
        }

        else
        {
          v81 = 0;
          v65 = 0;
          do
          {
            v65 |= (v60[v81] <= v47) << v81;
            ++v81;
          }

          while (v77 != v81);
        }

        v79 = v77;
        v77 = v78;
        if (v74)
        {
          goto LABEL_131;
        }

LABEL_134:
        if (v65 && v64)
        {
          do
          {
            v85 = __clz(__rbit64(v65));
            v65 &= v65 - 1;
            v86 = &v62[-__clz(__rbit64(v64))];
            v87 = v60[v85];
            v60[v85] = *v86;
            *v86 = v87;
            v64 &= v64 - 1;
          }

          while (v64 && v65);
        }

        if (v65)
        {
          v88 = 0;
        }

        else
        {
          v88 = v79;
        }

        v11 = &v60[v88];
        if (!v64)
        {
          goto LABEL_151;
        }

        if (v65)
        {
          do
          {
LABEL_153:
            v93 = __clz(v65) ^ 0x3F;
            v94 = &v11[v93];
            if (v62 != v94)
            {
              v95 = *v94;
              *v94 = *v62;
              *v62 = v95;
            }

            v65 &= ~(-1 << v93);
            --v62;
          }

          while (v65);
          v11 = v62 + 1;
        }

        else
        {
          do
          {
            v89 = __clz(v64) ^ 0x3F;
            v90 = &v62[-v89];
            if (v11 != v90)
            {
              v91 = *v90;
              *v90 = *v11;
              *v11 = v91;
            }

            v64 &= ~(-1 << v89);
            ++v11;
          }

          while (v64);
        }

LABEL_157:
        v96 = v11 - 1;
        if (v11 - 1 != v7)
        {
          *v7 = *v96;
        }

        *v96 = v47;
        if (v55 < v58)
        {
LABEL_162:
          result = std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(v7, v11 - 1, a3, a4 & 1, a5);
          v10 = v187;
          v9 = xmmword_24DA8B910;
          v8 = v188;
          a4 = 0;
          continue;
        }

        break;
      }

      v97 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v7, v11 - 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v11, a2);
      if (!result)
      {
        v9 = xmmword_24DA8B910;
        v8 = v188;
        v10 = v187;
        if (!v97)
        {
          goto LABEL_162;
        }

        continue;
      }

      break;
    }

    a2 = v11 - 1;
    v9 = xmmword_24DA8B910;
    v8 = v188;
    v10 = v187;
    if (!v97)
    {
      continue;
    }

    return result;
  }
}

void std::vector<BOOL>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    result[1] = a2;
  }

  else
  {
    v5 = result[2];
    v6 = v5 << 6;
    if (v5 << 6 < v4 || v3 > (v5 << 6) - v4)
    {
      __dst = 0;
      v17 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v8 = v5 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v6 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__dst, v9);
      v10 = *result;
      v11 = result[1];
      *&v17 = v11 + v4;
      v12 = __dst;
      if (v11 < 1)
      {
        LODWORD(v15) = 0;
        v14 = __dst;
      }

      else
      {
        v13 = v11 >> 6;
        if (v11 >= 0x40)
        {
          memmove(__dst, v10, 8 * v13);
        }

        v14 = &v12[8 * v13];
        v15 = v11 & 0x3F;
        if (v15)
        {
          *v14 = *v14 & ~(0xFFFFFFFFFFFFFFFFLL >> -v15) | *(v10 + v13) & (0xFFFFFFFFFFFFFFFFLL >> -v15);
        }

        v10 = *result;
      }

      *result = v12;
      *(result + 1) = v17;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      v14 = (*result + 8 * (v3 >> 6));
      v15 = result[1] & 0x3FLL;
      result[1] = a2;
    }

    __dst = v14;
    LODWORD(v17) = v15;
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&__dst, v4);
  }
}

void sub_24D88CCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::reserve(void *a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:nn200100](&v2, a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }
}

void sub_24D88CE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

__n128 __Block_byref_object_copy__700(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper9StreamAPSEv_block_invoke(void *a1)
{
  v126[2] = *MEMORY[0x277D85DE8];
  v2 = atomic_load((a1[12] + 2844));
  if (v2)
  {
    return;
  }

  v109 = a1[12];
  v114 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
  v113 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
  v111 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = 126 - 2 * __clz(&v6[-v5] >> 4);
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(v5, v6, v8, 1);
  v110 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)) >> 4];
  v107 = [MEMORY[0x277CBEB28] dataWithCapacity:*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)];
  [v107 appendBytes:*(*(a1[6] + 8) + 48) length:*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  v12 = 126 - 2 * __clz(&v11[-v10] >> 4);
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(v10, v11, v13, 1);
  v14 = a1[6];
  v15 = *(v14 + 8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 56);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v16 + 8);
  }

  if ((v17 - v16) >= 0x11)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v18 < *(v16 + v19 + 16))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
        v126[0] = v21;
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1[6] + 8) + 48) + v19 + 16) - 1];
        v126[1] = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
        [v110 addObject:v23];

        v14 = a1[6];
      }

      v24 = *(v14 + 8);
      v16 = *(v24 + 48);
      v25 = *(v24 + 56);
      if (v18 <= *(v16 + v19 + 24))
      {
        v18 = *(v16 + v19 + 24);
      }

      ++v20;
      v19 += 16;
    }

    while (v20 < (v25 - v16) >> 4);
  }

  v26 = *(*(a1[5] + 8) + 64);
  if (v26)
  {
    v1 = 0x277CCA000uLL;
    do
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 6)];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 4)];
      [v114 setObject:v27 forKeyedSubscript:v28];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 7)];
      v125[0] = v29;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 8)];
      v125[1] = v30;
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 9)];
      v125[2] = v31;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26[5]];
      v125[3] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:4];
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 4)];
      [v113 setObject:v33 forKeyedSubscript:v34];

      if (*(v26 + 12))
      {
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        v124[0] = v35;
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 13)];
        v124[1] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 4)];
        [v111 setObject:v37 forKeyedSubscript:v38];
      }

      v26 = *v26;
    }

    while (v26);
  }

  v112 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[7] + 8) + 72)];
  for (i = *(*(a1[7] + 8) + 64); i; i = *i)
  {
    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:(i[4] - i[3]) >> 4];
    v1 = i[3];
    v41 = i[4];
    while (v1 != v41)
    {
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v1];
      v123[0] = v42;
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v1 + 8)];
      v123[1] = v43;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
      [v40 addObject:v44];

      v1 += 16;
    }

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 4)];
    [v112 setObject:v40 forKeyedSubscript:v45];
  }

  v119 = 0;
  v104 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v114 requiringSecureCoding:1 error:&v119];
  v46 = v119;
  v118 = v46;
  v103 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v113 requiringSecureCoding:1 error:&v118];
  v47 = v118;

  v117 = v47;
  v102 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v111 requiringSecureCoding:1 error:&v117];
  v48 = v117;

  v116 = v48;
  v101 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v112 requiringSecureCoding:1 error:&v116];
  v97 = v116;

  v49 = [*(v109 + 1944) mappings];
  if (v49)
  {
    v105 = [*(v109 + 1944) mappings];
  }

  else
  {
    v105 = MEMORY[0x277CBEBF8];
  }

  v50 = [*(v109 + 1944) binaries];
  v51 = MEMORY[0x277CBEC10];
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = MEMORY[0x277CBEC10];
  }

  v106 = v52;
  v53 = *(v109 + 2220);
  if (v53)
  {
    if (v53 == 1)
    {
      v98 = 0;
      goto LABEL_40;
    }

    LOBYTE(v54) = 1;
  }

  else
  {
    v54 = *(v109 + 3272);
  }

  v98 = v54;
LABEL_40:
  v108 = objc_opt_new();
  [v108 setObject:&unk_2860D6890 forKeyedSubscript:@"version"];
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(*(v109 + 3272) >> 1) & 1];
  [v108 setObject:v55 forKeyedSubscript:@"usingMinimumTracingMode"];

  v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v109 + 3288)];
  v57 = *(v109 + 3280);
  v58 = *(v109 + 3288);
  v59 = v58 & 0x3F;
  if (v58 > 0x3F || (v58 & 0x3F) != 0)
  {
    LODWORD(v1) = 0;
    v60 = &v57[v58 >> 6];
    do
    {
      v61 = [MEMORY[0x277CCABB0] numberWithBool:(*v57 >> v1) & 1];
      [v56 addObject:v61];

      v57 += v1 == 63;
      if (v1 == 63)
      {
        v1 = 0;
      }

      else
      {
        v1 = (v1 + 1);
      }
    }

    while (v57 != v60 || v1 != v59);
  }

  v63 = [v56 copy];
  [v108 setObject:v63 forKeyedSubscript:@"usedCoreMasks"];

  v64 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v109 + 3312)];
  v65 = *(v109 + 3304);
  v66 = *(v109 + 3312);
  v67 = v66 & 0x3F;
  if (v66 > 0x3F || (v66 & 0x3F) != 0)
  {
    LODWORD(v1) = 0;
    v68 = &v65[v66 >> 6];
    do
    {
      v69 = [MEMORY[0x277CCABB0] numberWithBool:(*v65 >> v1) & 1];
      [v64 addObject:v69];

      v65 += v1 == 63;
      if (v1 == 63)
      {
        v1 = 0;
      }

      else
      {
        v1 = (v1 + 1);
      }
    }

    while (v65 != v68 || v1 != v67);
  }

  if ([v64 count])
  {
    v71 = [v64 copy];
    [v108 setObject:v71 forKeyedSubscript:@"overriddenCoreMasks"];
  }

  v72 = *(v109 + 3272);
  if (v72 >> 3)
  {
    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v108 setObject:v73 forKeyedSubscript:@"numPossibleCoresPerMGPU"];

    v72 = *(v109 + 3272);
  }

  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v72 >> 8) & 1];
  [v108 setObject:v74 forKeyedSubscript:@"emitsPositionForOverriddenCores"];

  info = 0;
  mach_timebase_info(&info);
  v75 = *(v109 + 2096);
  if (!v75)
  {
    v75 = v51;
  }

  v100 = v75;
  v121[0] = @"Program Address Mappings";
  v121[1] = @"TraceId to BatchId";
  v122[0] = v105;
  v122[1] = v104;
  v121[2] = @"Source Sample Marker";
  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v109 + 32)];
  v77 = a1[4];
  v96 = v76;
  v122[2] = v76;
  v122[3] = v77;
  v121[3] = @"Frame Encoder Time Data";
  v121[4] = @"TraceId to SampleIndex";
  v122[4] = v103;
  v122[5] = v102;
  v121[5] = @"TraceId to Tile Info";
  v121[6] = @"MTLFX TraceIds";
  v78 = [*(*(a1[8] + 8) + 40) mtlfxTracingInfo];
  v95 = v78;
  if (v78)
  {
    v79 = v78;
  }

  else
  {
    v79 = v51;
  }

  v122[6] = v79;
  v121[7] = @"Frame Consistent Perf Info";
  v122[7] = *(*(a1[9] + 8) + 40);
  v122[8] = v110;
  v121[8] = @"Restore Timestamps";
  v121[9] = @"Command Buffer Timestamps";
  v122[9] = v107;
  v122[10] = v101;
  v121[10] = @"TraceId to Coalesced BatchId";
  v121[11] = @"Configuration Variables";
  v122[11] = *(v109 + 1984);
  v121[12] = @"useOverlap";
  v94 = [MEMORY[0x277CCABB0] numberWithBool:v98 & 1];
  v122[12] = v94;
  v122[13] = v106;
  v121[13] = @"Binaries";
  v121[14] = @"Streaming Counters";
  v93 = [MEMORY[0x277CCABB0] numberWithBool:*(v109 + 2220) == 1];
  v122[14] = v93;
  v121[15] = @"Kick State Trigger Options";
  v99 = [*(v109 + 2080) firstObject];
  v80 = [v99 options];
  v81 = MEMORY[0x277CBEC10];
  if (v80)
  {
    v1 = [*(v109 + 2080) firstObject];
    v82 = [v1 options];
  }

  else
  {
    v82 = MEMORY[0x277CBEC10];
  }

  v83 = *(v109 + 2072);
  if (!v83)
  {
    v83 = v81;
  }

  v122[15] = v82;
  v122[16] = v83;
  v121[16] = @"APS Options";
  v121[17] = @"Continuous Time";
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*(*(a1[10] + 8) + 24), v82}];
  v122[17] = v84;
  v121[18] = @"Absolute Time";
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1[11] + 8) + 24)];
  v122[18] = v85;
  v121[19] = @"Timebase";
  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.numer];
  v120[0] = v86;
  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.denom];
  v120[1] = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
  v122[19] = v88;
  v122[20] = v108;
  v121[20] = @"apsProfilingConfig";
  v121[21] = @"Perf Info";
  v122[21] = v100;
  v121[22] = @"PState";
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*v109 + 68)];
  v122[22] = v89;
  v121[23] = @"ReplayerGPUTime";
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:*(v109 + 3264)];
  v122[23] = v90;
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:24];

  if (v80)
  {
  }

  (*(*(*v109 + 32) + 16))();
}

void ___ZN35GTUSCSamplingStreamingManagerHelper9StreamAPSEv_block_invoke_2(uint64_t a1)
{
  v134 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 112);
  v2 = atomic_load(v1 + 2843);
  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(v1 + 2844);
    if ((v3 & 1) == 0)
    {
      atomic_store(0, v1 + 2840);
      if (*(v1 + 552) != -1)
      {
        v118 = [v1[2] firstObject];
        v4 = *(v1 + 555);
        v5 = v4 == 1 || (v4 | v1[409] & 1) == 0;
        if (GTAGXPerfStateControl::IsGPUPerformanceStateInduced((v1 + 5)))
        {
          v124 = @"DisableOverlap";
          v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
          v129 = v6;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v124 count:1];
          v8 = [v1[2] firstObject];
          [v8 setOptions:v7];
        }

        else
        {
          v9 = *(*v1 + 18);
          if (v9)
          {
            GTAGXPerfStateControl::EnableConsistentGPUPerfState((v1 + 5), v9);
            v10 = GTApplePMPPerfStateControl::EnableConsistentPerfState((v1 + 8), (*(*v1 + 18) - 1));
            v11 = v1[262];
            v1[262] = v10;

            v124 = @"DisableOverlap";
            v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
            v129 = v6;
            v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v124 count:1];
            v8 = [v1[2] firstObject];
            [v8 setOptions:v7];
          }

          else
          {
            v12 = GTApplePMPPerfStateControl::EnableConsistentPerfState((v1 + 8), 1);
            v13 = v1[262];
            v1[262] = v12;

            v124 = @"DisableOverlap";
            v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
            v129 = v6;
            v125 = @"LockGPUPerfState";
            v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*v1 + 17)];
            v130 = v7;
            v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v124 count:2];
            v14 = [v1[2] firstObject];
            [v14 setOptions:v8];
          }
        }

        v15 = [v1[3] objectAtIndexedSubscript:*(v1 + 552)];
        [v15 setOptions:v1[259]];
        [v15 requestTriggers:v1[260] firstErrorIndex:0];
        __lk.__m_ = 0;
        v16 = [v1[251] objectAtIndexedSubscript:*(v1 + 552)];
        v17 = [v15 requestCounters:v16 firstErrorIndex:&__lk];

        if (v17)
        {
          v18 = [v15 setEnabled:1];

          if (v18)
          {
            v19 = *(v1 + 408);
            v20 = [v1[3] count];
            if (v20)
            {
              v21 = 0;
              v22 = 1;
              do
              {
                v23 = [v1[251] objectAtIndexedSubscript:v21];
                [v23 count];

                v21 = v22;
              }

              while (v20 > v22++);
            }

            v25 = 0;
            v26 = (fmax(v19 + v19, 1.0) * 10240.0);
            while ([v1[3] count] > v25)
            {
              v27 = [v1[251] objectAtIndexedSubscript:v25];
              if ([v27 count])
              {
                v28 = v25 == *(v1 + 552);

                if (!v28)
                {
                  v15 = [v1[3] objectAtIndexedSubscript:v25];
                  v123 = @"RingBufferSizeInKB";
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
                  __lk.__m_ = v29;
                  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&__lk forKeys:&v123 count:1];
                  [v15 setOptions:v30];

                  v31 = [v15 name];
                  v32 = [v31 isEqualToString:@"Firmware"];
                  v33 = 257;
                  if (v32)
                  {
                    v33 = 258;
                  }

                  v34 = v1[v33];

                  [v15 requestTriggers:v34 firstErrorIndex:0];
                  v122 = 0;
                  v35 = [v1[251] objectAtIndexedSubscript:v25];
                  v36 = [v15 requestCounters:v35 firstErrorIndex:&v122];

                  if ((v36 & 1) == 0)
                  {

                    goto LABEL_29;
                  }

                  v37 = [v15 setEnabled:1];

                  if (!v37)
                  {
                    break;
                  }
                }
              }

              else
              {
              }

              ++v25;
            }
          }
        }

        else
        {
LABEL_29:
        }
      }

      v38 = *(v1 + 555);
      v39 = @"T";
      if (!v38)
      {
        v39 = @"P";
      }

      if (v38 == 1)
      {
        v40 = @"C";
      }

      else
      {
        v40 = v39;
      }

      v119 = [@"/tmp/com.apple.gputools.profiling" stringByAppendingPathComponent:v40];
      if (*(v1 + 552) != -1)
      {
        v41 = [MEMORY[0x277CCAA00] defaultManager];
        [v41 removeItemAtPath:v119 error:0];
        [v41 createDirectoryAtPath:v119 withIntermediateDirectories:1 attributes:0 error:0];
        v42 = [v1[3] objectAtIndexedSubscript:*(v1 + 552)];
        v43 = [v42 ringBufferNum];

        v44 = v41;
        if (v43)
        {
          v45 = [v1[3] objectAtIndexedSubscript:*(v1 + 552)];
          v46 = [v45 ringBufferNum];

          v44 = v41;
          if (v46)
          {
            v47 = 0;
            do
            {
              v48 = v1[403];
              v49 = v1[404];
              if (v48 >= v49)
              {
                v51 = v1[402];
                v52 = (v48 - v51) >> 5;
                v53 = v52 + 1;
                if ((v52 + 1) >> 59)
                {
                  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
                }

                v54 = v49 - v51;
                if (v54 >> 4 > v53)
                {
                  v53 = v54 >> 4;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v55 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  if (!(v55 >> 59))
                  {
                    operator new();
                  }

                  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
                }

                v56 = (32 * v52);
                *v56 = 0u;
                v56[1] = 0u;
                v57 = &v56[-2 * ((v48 - v51) >> 5)];
                if (v51 != v48)
                {
                  v58 = v51;
                  v59 = &v56[-2 * ((v48 - v51) >> 5)];
                  do
                  {
                    v60 = *v58;
                    *v58 = 0;
                    *v59 = v60;
                    v61 = *(v58 + 1);
                    *(v59 + 3) = v58[3];
                    *(v59 + 8) = v61;
                    v58 += 4;
                    v59 += 2;
                  }

                  while (v58 != v48);
                  do
                  {

                    v51 += 4;
                  }

                  while (v51 != v48);
                  v51 = v1[402];
                }

                v1[402] = v57;
                v50 = (v56 + 2);
                v1[403] = (v56 + 2);
                v1[404] = 0;
                if (v51)
                {
                  operator delete(v51);
                }
              }

              else
              {
                v50 = (v48 + 32);
                *v48 = 0u;
                *(v48 + 1) = 0u;
              }

              v1[403] = v50;
              v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"f_%u.raw", v47];
              v63 = [v119 stringByAppendingPathComponent:v62];
              v64 = *(v50 - 4);
              *(v50 - 4) = v63;

              *(v50 - 2) = *(v1 + 552);
              *(v50 - 1) = v47;
              v44 = v41;
              v65 = fopen([*(v50 - 4) UTF8String], "wb");
              *(v50 - 3) = &v65->_p;
              if (!v65)
              {
                v66 = "";
                if (g_runningInCI)
                {
                  v66 = "#CI_ERROR# ";
                }

                GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "SetupAPSDataFiles", 7040, 1, "%s%s %u: Error, fail to open file %@\n", v66, "void GTUSCSamplingStreamingManagerHelper::SetupAPSDataFiles(NSString *__strong)", 7040, *(v50 - 4));
              }

              v47 = (v47 + 1);
            }

            while (v47 != v46);
          }
        }
      }

      GTMTLReplayController_prePlayForProfiling(**v1);
      v67 = a1;
      mach_get_times();
      v68 = **v1;
      v115 = v68[1];
      atomic_store(0, v1 + 707);
      [*(v67 + 32) mapShaderSampleBufferWithBuffer:0 capacity:0 size:0];
      v117 = [v68[1] defaultCommandQueue];
      v69 = objc_autoreleasePoolPush();
      v130 = v68;
      LOBYTE(v131) = 0;
      v129 = [g_commandBufferDescriptor errorOptions];
      [g_commandBufferDescriptor setErrorOptions:0];
      if (*(v1 + 555) == 1)
      {
        DisableComputeEncoderCoalescing(**v1, 1);
      }

      GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling();
      if (*(v1 + 555) == 1)
      {
        DisableComputeEncoderCoalescing(**v1, 0);
      }

      [v117 finish];
      ScopedReplayConfiguration::~ScopedReplayConfiguration(&v129);
      objc_autoreleasePoolPop(v69);
      [*(a1 + 32) unmapShaderSampleBuffer];
      usleep(0x7530u);
      atomic_store(1u, v1 + 2840);
      atomic_fetch_add(v1 + 709, 1u);
      v70 = GTAGXPerfStateControl::ConsistentGPUPerfStateLevel((v1 + 5), 0);
      v116 = v70;
      if (v70)
      {
        [*(*(*(a1 + 96) + 8) + 40) setDictionary:v70];
      }

      GTUSCSamplingStreamingManagerHelper::DrainAllSourceBuffers(v1[307], v1[308]);
      __lk.__m_ = (v1 + 362);
      __lk.__owns_ = 1;
      std::mutex::lock((v1 + 362));
      while (1)
      {
        v71 = *(v1 + 549);
        v72 = atomic_load(v1 + 707);
        if (v71 == v72)
        {
          break;
        }

        std::condition_variable::wait((v1 + 356), &__lk);
      }

      atomic_store(0, v1 + 2841);
      v73 = [v1[2] firstObject];
      [v73 stopSampling];

      GTAGXPerfStateControl::DisableConsistentGPUPerfState((v1 + 5));
      GTApplePMPPerfStateControl::DisableConsistentPerfState((v1 + 8));
      dispatch_semaphore_signal(v1[317]);
      dispatch_semaphore_wait(v1[318], 0xFFFFFFFFFFFFFFFFLL);
      v74 = v1[402];
      v75 = v1[403];
      if (v74 == v75)
      {
        *(*(*(a1 + 104) + 8) + 24) = 0;
      }

      else
      {
        v76 = 0;
        v77 = a1;
        do
        {
          v78 = v74[1];
          if (v78)
          {
            fseek(v78, 0, 2);
            v74[2] = MEMORY[0x253033850](v74[1]);
            fclose(v74[1]);
            if (v76)
            {
              v76 = 1;
            }

            else
            {
              v79 = fopen([*v74 UTF8String], "rb");
              v80 = v74[2];
              if (v80 <= 0x200000)
              {
                if (v80 < 0x1000)
                {
LABEL_85:
                  v76 = 0;
                }

                else
                {
                  v81 = 0;
                  v82 = v80 >> 12;
                  v83 = 1;
                  v84 = v80 >> 12;
                  v76 = 1;
                  while (1)
                  {
                    fseek(v79, v81, 0);
                    MEMORY[0x253033850](v79);
                    v85 = fgetc(v79);
                    if (v85 != 15 && v85 != -1)
                    {
                      break;
                    }

                    v76 = v83++ < v82;
                    v81 += 4096;
                    if (!--v84)
                    {
                      goto LABEL_85;
                    }
                  }
                }

                fseek(v79, 0, 2);
              }

              else
              {
                v76 = 1;
              }

              fclose(v79);
            }

            v74[1] = 0;
            v77 = a1;
          }

          v74 += 4;
        }

        while (v74 != v75);
        *(*(*(v77 + 104) + 8) + 24) = v76;
        if (v76)
        {
          v86 = v1[405];
          v1[406] = v86;
          v87 = (v1[403] - v1[402]) >> 5;
          if (v87 > v1[407] - v86)
          {
            if (!(v87 >> 61))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v87);
            }

LABEL_120:
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v88 = [MEMORY[0x277CCAA00] defaultManager];
          v89 = v1[402];
          v90 = v1[403];
          while (v89 != v90)
          {
            if ([v88 fileExistsAtPath:*v89] && v89[2])
            {
              v91 = [v1[3] objectAtIndexedSubscript:*(v89 + 6)];
              v124 = @"APSTraceDataFile";
              v129 = *v89;
              v125 = @"Source";
              v92 = [v91 name];
              v130 = v92;
              v126 = @"SourceIndex";
              v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v89 + 6)];
              v131 = v93;
              v127 = @"RingBufferIndex";
              v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v89 + 7)];
              v132 = v94;
              v128 = @"Serial";
              ++GTUSCSamplingStreamingManagerHelper::StreamAPSDataFiles(void)::serial;
              v95 = [MEMORY[0x277CCABB0] numberWithInt:?];
              v133 = v95;
              v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v124 count:5];

              v97 = v89[2];
              v98 = v1[406];
              v99 = v1[407];
              if (v98 >= v99)
              {
                v101 = v1[405];
                v102 = v98 - v101;
                v103 = (v98 - v101) >> 3;
                v104 = v103 + 1;
                if ((v103 + 1) >> 61)
                {
                  goto LABEL_120;
                }

                v105 = v99 - v101;
                if (v105 >> 2 > v104)
                {
                  v104 = v105 >> 2;
                }

                if (v105 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v106 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v106 = v104;
                }

                if (v106)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v106);
                }

                v107 = (v98 - v101) >> 3;
                v108 = (8 * v103);
                v109 = (8 * v103 - 8 * v107);
                *v108 = v97;
                v100 = (v108 + 1);
                memcpy(v109, v101, v102);
                v110 = v1[405];
                v1[405] = v109;
                v1[406] = v100;
                v1[407] = 0;
                if (v110)
                {
                  operator delete(v110);
                }
              }

              else
              {
                *v98 = v97;
                v100 = (v98 + 8);
              }

              v1[406] = v100;
              ((*v1)[4][2])();
              [v88 removeItemAtPath:*v89 error:0];
            }

            v89 += 4;
          }

          v122 = @"Post Processing Frame Marker";
          v111 = MEMORY[0x277CCABB0];
          v112 = atomic_load(v1 + 709);
          v113 = [v111 numberWithUnsignedInt:v112];
          v123 = v113;
          v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];

          ((*v1)[4][2])();
        }
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
      }
    }
  }
}

intptr_t ___ZN35GTUSCSamplingStreamingManagerHelper9StreamAPSEv_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(v1 + 16) firstObject];
  [v2 startSampling];

  result = GTUSCSamplingStreamingManagerHelper::WaitForPreSampling(v1);
  atomic_store(1u, (v1 + 2841));
  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StreamAPS(void)::$_2>>(uint64_t *a1)
{
  v22 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v22[1];
  do
  {
    v5 = atomic_load((v4 + 2843));
    if (v5)
    {
      break;
    }

    v6 = atomic_load((v4 + 2844));
    if (v6)
    {
      break;
    }

    v7 = *(v4 + 2536);
    v8 = dispatch_time(0, 250000);
    v9 = dispatch_semaphore_wait(v7, v8);
    v10 = *(v4 + 3224);
    v11 = *(v4 + 3216);
    if (v10 != v11)
    {
      v12 = 0;
      do
      {
        v13 = v11 + 32 * v12;
        v14 = *(v13 + 8);
        if (v14)
        {
          v15 = *(v4 + 2408) + 48 * *(v13 + 28);
          os_unfair_lock_lock((v15 + 16));
          if (v9)
          {
            v16 = *(v15 + 8);
          }

          else
          {
            v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 32) - *(v15 + 24)) >> 3);
          }

          os_unfair_lock_unlock((v15 + 16));
          v17 = *v15;
          if (v16 > *v15 && v16 - *v15 != 0)
          {
            do
            {
              v19 = *(v15 + 24) + 24 * v17;
              v20 = fileno(v14);
              write(v20, *v19, *(v19 + 8));
              v17 = *v15 + 1;
              *v15 = v17;
              if (*v19)
              {
                free(*v19);
                *v19 = 0;
                *(v19 + 8) = 0;
                *(v19 + 16) = 0;
                v17 = *v15;
              }
            }

            while (v17 < v16);
            if (!v9)
            {
              *(v15 + 32) = *(v15 + 24);
              *v15 = 0;
              *(v15 + 8) = 0;
            }
          }

          v10 = *(v4 + 3224);
          v11 = *(v4 + 3216);
        }

        ++v12;
      }

      while (v12 < (v10 - v11) >> 5);
    }
  }

  while (v9);
  dispatch_semaphore_signal(*(v4 + 2544));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>::~unique_ptr[abi:nn200100](&v22);
  return 0;
}

void sub_24D88F520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StreamAPS(void)::$_1>>(const void **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  GTUSCSamplingStreamingManagerHelper::PostProcessRawData(v5[1], *(v5 + 4), *(v5 + 5));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

void sub_24D88F594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StreamAPS(void)::$_0>>(const void **a1)
{
  v37 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v37[1];
  if (*(v4 + 552) >= 1)
  {
    v5 = *(v37 + 4);
    v6 = *(v37 + 5);
    if (v5)
    {
      GTUSCSamplingStreamingManagerHelper::PollAndDrainSourceRingBuffer(v37[1], v5, *(v37 + 5));
    }

    else
    {
      v7 = [*(v4 + 3) objectAtIndexedSubscript:?];
      v34 = (v4 + 2832);
      atomic_fetch_add(v4 + 708, 1u);
      v8 = atomic_load(v4 + 2843);
      if ((v8 & 1) == 0)
      {
        v9 = v6 + 1;
        v35 = v6;
        do
        {
          v10 = atomic_load(v4 + 2844);
          if (v10)
          {
            break;
          }

          v11 = *(**(v4 + 307) + 8 * v6);
          v12 = dispatch_time(0, 500000);
          v36 = dispatch_semaphore_wait(v11, v12);
          v13 = atomic_load(v4 + 2841);
          if (v13)
          {
            v14 = *(v4 + 838);
            v15 = (v14 * v6);
            v16 = *(v4 + 402);
            v17 = v14 * v9;
            if (v17 >= ((*(v4 + 403) - v16) >> 5))
            {
              v17 = (*(v4 + 403) - v16) >> 5;
            }

            if (v15 < v17)
            {
              v18 = 48 * v15;
              v19 = (32 * v15) | 0x1C;
              do
              {
                if ([v7 isEnabled])
                {
                  v39 = 0;
                  memset(v38, 0, sizeof(v38));
                  if ([v7 ringBufferInfoAtIndex:*(v16 + v19) base:&v39 size:&v38[2] dataOffset:&v38[1] dataSize:v38])
                  {
                    v20 = v38[0];
                    if (v38[0] >> 13 || (v21 = atomic_load(v4 + 2840), (v21 & 1) != 0) && (v20 = v38[0]) != 0)
                    {
                      v22 = *(v4 + 301);
                      v23 = v39;
                      v24 = (v38[1] + v20 - v38[2]);
                      if (v38[1] + v20 <= v38[2])
                      {
                        DynamicBuffer::AddBuffer2((v22 + v18), &v39[v38[1]], v20);
                      }

                      else
                      {
                        DynamicBuffer::AddBuffer2((v22 + v18), &v39[v38[1]], (v38[2] - v38[1]));
                        DynamicBuffer::AddBuffer2((v22 + v18), v23, v24);
                      }

                      if ([v7 drainRingBufferAtIndex:*(v16 + v19) dataSize:v38[0]] || !v38[0])
                      {
                        atomic_fetch_add(v4 + 705, 1u);
                        atomic_fetch_add(v4 + 706, 1u);
                      }
                    }
                  }
                }

                ++v15;
                v16 = *(v4 + 402);
                v25 = (*(v4 + 403) - v16) >> 5;
                v26 = *(v4 + 838) * v9;
                if (v26 >= v25)
                {
                  v25 = v25;
                }

                else
                {
                  v25 = v26;
                }

                v18 += 48;
                v19 += 32;
              }

              while (v15 < v25);
            }

            v6 = v35;
            if (!v36 || (v27 = atomic_load(v4 + 2840), (v27 & 1) != 0))
            {
              v29 = (v4 + 2828);
              v30 = 3352;
              if (*(v4 + 839) == v35)
              {
                v30 = 3360;
              }

              atomic_fetch_add(v29, *&v4[v30]);
              v31 = atomic_load(v29);
              if (v31 == *(v4 + 549))
              {
                std::condition_variable::notify_all((v4 + 2848));
              }

              break;
            }
          }

          v28 = atomic_load(v4 + 2843);
        }

        while ((v28 & 1) == 0);
      }

      atomic_fetch_add(v34, 0xFFFFFFFF);
      if (!atomic_load(v34))
      {
        std::condition_variable::notify_all(v4 + 64);
      }
    }
  }

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](&v37);
  return 0;
}

void sub_24D88F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void GTUSCSamplingStreamingManagerHelper::CleanupForAPSStreaming(GTUSCSamplingStreamingManagerHelper *this)
{
  atomic_store(0, byte_27F09C800);
  atomic_store(0, &byte_27F09C800[1]);
  atomic_store(0, &unk_27F09C803);
  *(&xmmword_27F09C468 + 1) = 0;
  dword_27F09C57C = 0;
  qword_27F09C580 = 1;
  v2 = *(&xmmword_27F09C638 + 1);
  v1 = xmmword_27F09C638;
  while (v2 != v1)
  {
    v2 -= 3;
    v17 = v2;
    std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *(&xmmword_27F09C638 + 1) = v1;
  v3 = qword_27F09C620;
  v4 = xmmword_27F09C628;
  while (v4 != v3)
  {
    v4 -= 3;
    v17 = v4;
    std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *&xmmword_27F09C628 = v3;
  v6 = *(&xmmword_27F09C668 + 1);
  v5 = xmmword_27F09C668;
  while (v6 != v5)
  {
    v6 -= 3;
    v17 = v6;
    std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *(&xmmword_27F09C668 + 1) = v5;
  v7 = qword_27F09C680;
  v8 = xmmword_27F09C688;
  while (v8 != v7)
  {
    v8 -= 3;
    v17 = v8;
    std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *&xmmword_27F09C688 = v7;
  v10 = *(&xmmword_27F09C698 + 1);
  v9 = xmmword_27F09C698;
  while (v10 != v9)
  {
    v10 -= 3;
    v17 = v10;
    std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *(&xmmword_27F09C698 + 1) = v9;
  v11 = qword_27F09C6B0;
  for (i = xmmword_27F09C6B8; i != v11; i -= 8)
  {
    v13 = *(i - 8);
  }

  *&xmmword_27F09C6B8 = v11;
  v14 = qword_27F09C980;
  v15 = *(&xmmword_27F09C970 + 1);
  while (v14 != v15)
  {
    v16 = *(v14 - 32);
    v14 -= 32;
  }

  qword_27F09C980 = v15;
  atomic_store(0, &xmmword_27F09C7E8 + 1);
  atomic_store(0, &xmmword_27F09C7E8 + 2);
}

void GTUSCSamplingStreamingManagerHelper::InitRDELimiterCounters(GTUSCSamplingStreamingManagerHelper *this)
{
  v111 = *MEMORY[0x277D85DE8];
  v1 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) objectForKeyedSubscript:@"profileCounters"];
  v87 = [v1 mutableCopy];

  v2 = MEMORY[0x277CBEB98];
  v3 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) objectForKeyedSubscript:@"profileCounters32"];
  v84 = [v2 setWithArray:v3];

  if (xmmword_27F09C594)
  {
    v4 = 0;
  }

  else
  {
    v4 = 6;
  }

  v106 = 0;
  v105 = 0u;
  if (xmmword_27F09C594 && xmmword_27F09C768 != qword_27F09C760)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((xmmword_27F09C768 - qword_27F09C760) >> 3);
    if (v5 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v5);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  memset(v103, 0, sizeof(v103));
  v104 = 1065353216;
  v6 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[v4 + 163];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[v4 + 163] + 1) - *v6) >> 3)];
  v8 = xmmword_27F09C4C0;
  *&xmmword_27F09C4C0 = v7;

  v90 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v87, "count")}];
  v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v87, "count")}];
  v10 = *v6;
  v11 = *(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[v4 + 163] + 1);
  if (*v6 != v11)
  {
    do
    {
      v12 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(*&v103[0], *(&v103[0] + 1), v10);
      v13 = MEMORY[0x277D0AF28];
      v14 = *(v10 + 23);
      v15 = v10;
      if (v12)
      {
        if (v14 < 0)
        {
          v15 = *v10;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v15, v84}];
        v17 = [v13 selectWithName:v16 options:&unk_2860D5DE0];
        [v90 addObject:v17];
      }

      else
      {
        if (v14 < 0)
        {
          v15 = *v10;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v15, v84}];
        v17 = [v13 selectWithName:v16 options:&unk_2860D5E08];
        [v90 addObject:v17];
      }

      v18 = v10;
      if (*(v10 + 23) < 0)
      {
        v18 = *v10;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
      [v9 addObject:v19];

      v10 += 24;
    }

    while (v10 != v11);
  }

  if (xmmword_27F09C594 == 1)
  {
    v21 = *(&xmmword_27F09C748 + 1);
    for (i = xmmword_27F09C748; i != v21; i += 3)
    {
      v22 = i;
      if (*(i + 23) < 0)
      {
        v22 = *i;
      }

      v23 = MEMORY[0x277D0AF28];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v22, v84}];
      v25 = [v23 selectWithName:v24 options:&unk_2860D5E30];
      [v90 addObject:v25];

      v26 = i;
      if (*(i + 23) < 0)
      {
        v26 = *i;
      }

      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:v26];
      [v9 addObject:v27];
    }
  }

  v28 = qword_27F09C790;
  for (j = xmmword_27F09C798; v28 != j; v28 += 24)
  {
    v30 = v28;
    if (*(v28 + 23) < 0)
    {
      v30 = *v28;
    }

    v31 = MEMORY[0x277D0AF28];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v30, v84}];
    v33 = [v31 selectWithName:v32 options:&unk_2860D5E58];
    [v90 addObject:v33];

    v34 = v28;
    if (*(v28 + 23) < 0)
    {
      v34 = *v28;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34];
    [v9 addObject:v35];
  }

  v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{0xAAAAAAAAAAAAAAABLL * ((*(v6 + 1) - *v6) >> 3), v84}];
  for (k = 0; k < [*(&xmmword_27F09BCF8 + 1) count]; ++k)
  {
    v91 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:?];
    v37 = [v91 availableCounters];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v99 objects:v110 count:16];
    if (v39)
    {
      v40 = *v100;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v100 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v99 + 1) + 8 * m);
          v43 = [v42 name];
          v44 = [v9 containsObject:v43];

          if (v44)
          {
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "counterValueType")}];
            v46 = [v42 name];
            [v36 setObject:v45 forKeyedSubscript:v46];
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v99 objects:v110 count:16];
      }

      while (v39);
    }
  }

  v47 = qword_27F09C4B8;
  qword_27F09C4B8 = 0;

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(&unk_2860D5A20, "count")}];
  v49 = qword_27F09C4B0;
  qword_27F09C4B0 = v48;

  for (n = 0; n != 7; ++n)
  {
    v51 = qword_27F09C4B0;
    v52 = MEMORY[0x277D0AF28];
    v53 = [&unk_2860D5A20 objectAtIndexedSubscript:n];
    v54 = [v52 selectWithName:v53 options:0];
    [v51 addObject:v54];
  }

  v86 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(v90);
  v55 = [v86 objectForKeyedSubscript:@"passList"];
  v92 = [v55 objectAtIndexedSubscript:0];

  v88 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v90, "count")}];
  v89 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v86, "count")}];
  for (ii = 0; ii < [v92 count]; ++ii)
  {
    v94 = [v92 objectAtIndexedSubscript:ii];
    if ([v94 count])
    {
      v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v94, "count")}];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v58 = v94;
      v59 = [v58 countByEnumeratingWithState:&v95 objects:v109 count:16];
      if (v59)
      {
        v60 = *v96;
        do
        {
          for (jj = 0; jj != v59; ++jj)
          {
            if (*v96 != v60)
            {
              objc_enumerationMutation(v58);
            }

            v62 = [*(*(&v95 + 1) + 8 * jj) name];
            [v57 addObject:v62];
          }

          v59 = [v58 countByEnumeratingWithState:&v95 objects:v109 count:16];
        }

        while (v59);
      }

      v63 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:ii];
      v64 = [v63 name];
      [v89 setObject:v57 forKeyedSubscript:v64];

      [v88 addObjectsFromArray:v57];
      v65 = MEMORY[0x277CBEB18];
      if (ii == qword_27F09C588)
      {
        v66 = objc_opt_new();
      }

      else
      {
        v68 = [qword_27F09C4B0 copy];
        v66 = [v65 arrayWithArray:v68];
      }

      [v66 addObjectsFromArray:v58];
      [xmmword_27F09C4C0 addObject:v66];
    }

    else
    {
      v67 = xmmword_27F09C4C0;
      v57 = objc_opt_new();
      [v67 addObject:v57];
    }
  }

  v69 = v88;

  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v69 forKeyedSubscript:@"limiter sample counters"];
  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v36 forKeyedSubscript:@"Counter Info"];
  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v89 forKeyedSubscript:@"Limiter Counter List Map"];
  v70 = [MEMORY[0x277CCABB0] numberWithBool:byte_27F09C7D0];
  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v70 forKeyedSubscript:@"Uarch Enabled"];

  if (xmmword_27F09C594 == 2)
  {
    v72 = GTAGXProfilingSupportHelper::RemappedCSV(v71);
    if (v72)
    {
      [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v72 forKeyedSubscript:@"CSV"];
    }
  }

  (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
  v73 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v74 = qword_27F09C4F8;
  qword_27F09C4F8 = v73;

  v75 = qword_27F09C4F8;
  v76 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v75 addObject:v76];

  v77 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v78 = qword_27F09C4F0;
  qword_27F09C4F0 = v77;

  v79 = qword_27F09C4F0;
  v80 = MEMORY[0x277D0AF30];
  v107 = @"Period";
  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:240];
  v108 = v81;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
  v83 = [v80 selectWithName:@"TimerNClock" options:v82];
  [v79 addObject:v83];

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v103);
  *&v103[0] = &v105;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v103);
}

void sub_24D89059C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a33);
  a33 = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a33);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  if (!a2)
  {
    return 0;
  }

  v10 = v9;
  v11 = vcnt_s8(a2);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= a2)
    {
      v13 = v9 % a2;
    }
  }

  else
  {
    v13 = (a2 - 1) & v9;
  }

  v14 = *(a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (*v14)
  {
    do
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a3))
        {
          return v15;
        }
      }

      else
      {
        if (v12 > 1)
        {
          if (v16 >= a2)
          {
            v16 %= a2;
          }
        }

        else
        {
          v16 &= a2 - 1;
        }

        if (v16 != v13)
        {
          return 0;
        }
      }

      v15 = *v15;
    }

    while (v15);
  }

  return v15;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v5 = (v5 + 24);
      ++this;
    }

    while (v5 != a2);
  }

  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

id GTUSCSamplingStreamingManagerHelper::GatherFrameMiscEncoderPostProcessedData(char a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v25 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = MEMORY[0x277CCA8C8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke;
  v33[3] = &unk_2796573E0;
  v35 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v36 = a4;
  v37 = a1;
  v12 = v10;
  v34 = v12;
  v13 = [v11 blockOperationWithBlock:v33];
  v14 = v13;
  if (v9)
  {
    [v13 addDependency:{v9, v23, v25}];
  }

  [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:{v14, v23}];
  v15 = objc_opt_new();
  if (dword_27F09C54C && dword_27F09C548)
  {
    v16 = MEMORY[0x277CCA8C8];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_2;
    v30[3] = &unk_279658AD8;
    v32 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
    v31 = v25;
    v17 = [v16 blockOperationWithBlock:v30];
    [v17 addDependency:v14];
    [v15 addDependency:v17];
    [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v17];
  }

  v18 = MEMORY[0x277CCA8C8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_3;
  v26[3] = &unk_279658B00;
  v29 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v19 = v12;
  v27 = v19;
  v20 = v24;
  v28 = v20;
  v21 = [v18 blockOperationWithBlock:v26];
  [v21 addDependency:v14];
  [v15 addDependency:v21];
  [*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) + 8) addOperation:v21];
  [*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) + 8) addOperation:v15];

  return v15;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  GTMTLReplayController_prePlayForProfiling(**v2);
  GTUSCSamplingStreamingManagerHelper::SetupSourceForFrameTime(v2, *(*v2 + 68), 0);
  v60 = v2;
  v3 = [*(v2 + 16) firstObject];
  v4 = [v3 startSampling];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v58 = *(a1 + 48);
    v61 = *(a1 + 56);
    v6 = **v60;
    v64[1] = v6;
    v65 = 0;
    v64[0] = [g_commandBufferDescriptor errorOptions];
    [g_commandBufferDescriptor setErrorOptions:0];
    v7 = *(**v60 + 8);
    v8 = ***v60;
    v53 = v8[16];
    v54 = v8[15];
    v9 = [v7 defaultDevice];
    v10 = [v9 newEvent];

    v11 = [v7 defaultCommandQueue];
    v12 = [v11 commandBuffer];
    v48 = v5;
    v50 = a1;

    v55 = v10;
    [v12 encodeSignalEvent:v10 value:{GTUSCSamplingStreamingManagerHelper::ReplayFrameWithMiscEncoderSyncEvents(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &, BOOL)::signalCounter}];
    [v12 commit];
    v52 = v12;
    v13 = &unk_27F09B000;
    if (v8[14] + v8[13] > *(**v60 + 22560))
    {
      v57 = 0;
      v62 = 0;
      v14 = 0;
      v15 = 0;
      v59 = v7;
      do
      {
        context = objc_autoreleasePoolPush();
        v16 = *(v8[16] + 24) + (*(v6 + 22560) << 6);
        ConstructorType = GTFenum_getConstructorType(*(v16 + 8));
        if (ConstructorType == 25)
        {
          GTMTLReplayController_restoreCommandBuffer(v6, v16);
          v57 = *(GTTraceFunc_argumentBytesWithMap(v16, *(v16 + 13), v8[2]) + 1);
          ConstructorType = GTFenum_getConstructorType(*(v16 + 8));
        }

        if ((ConstructorType | 4) == 0x15)
        {
          v18 = [v7 commandBufferForKey:v57];
          [v18 encodeWaitForEvent:v55 value:v13[409]++];
          [v18 encodeSignalEvent:v55 value:?];
          v62 = *(GTTraceFunc_argumentBytesWithMap(v16, *(v16 + 13), v8[2]) + 1);
          if (v61)
          {
            InclusiveRange = GroupBuilder_findInclusiveRange(*(v54 + 12), *(v54 + 24), *(v6 + 22560));
            v20 = *InclusiveRange;
            v21 = InclusiveRange[1];
            if (v20 >= v21)
            {
              v15 = v14;
            }

            else
            {
              v22 = (*(v53 + 24) + (v20 << 6) + 8);
              v15 = v14;
              do
              {
                v24 = *v22;
                v22 += 16;
                v23 = v24;
                if (GTFenum_isSampledBlitCall(v24) || GTFenum_isSampledBlitCallAGX(v23))
                {
                  ++v15;
                }

                ++v20;
                v14 = v15;
              }

              while (v20 < v21);
            }
          }

          v25 = v15;
          v7 = v59;
          v13 = &unk_27F09B000;
        }

        else
        {
          v25 = v15;
        }

        GTMTLReplayController_updateCommandEncoder(v6, v16);
        if (v61)
        {
          v26 = *(v16 + 8);
          if (GTFenum_isSampledBlitCall(v26) || GTFenum_isSampledBlitCallAGX(v26))
          {
            v15 = v25 - 1;
            v13 = &unk_27F09B000;
            if (!v25 || v14 == v25)
            {
              goto LABEL_29;
            }

            v27 = [v7 blitCommandEncoderForKey:v62];
            [v27 endEncoding];
            v28 = [v7 commandBufferForKey:v57];
            [v28 encodeWaitForEvent:v55 value:{GTUSCSamplingStreamingManagerHelper::ReplayFrameWithMiscEncoderSyncEvents(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &, BOOL)::signalCounter++}];
            [v28 encodeSignalEvent:v55 value:?];
            v29 = [v28 blitCommandEncoder];
            if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v58, [v29 globalTraceObjectID]))
            {
              [v29 endEncoding];
              v30 = [v28 computeCommandEncoder];
              [v30 endEncoding];
              v31 = [v28 blitCommandEncoder];

              v29 = v31;
            }

            [v59 setBlitCommandEncoder:v29 forKey:{v62, v48, v50}];
            v32 = [v59 globalTraceIdForEncoder:v62 ofType:0];
            memset(v66, 0, sizeof(v66));
            DWORD2(v66[0]) = -16354;
            GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v60, v58, v66, v32, v29, v58[3], 0, 0);

            v7 = v59;
          }

          else
          {
            v15 = v25;
          }

          v13 = &unk_27F09B000;
        }

        else
        {
          v15 = v25;
        }

LABEL_29:
        GTMTLReplayController_defaultDispatchFunction(v6, v16);
        v33 = *(v16 + 8);
        if (GTFenum_getConstructorType(v33) == 21)
        {
          v34 = [v7 globalTraceIdForEncoder:v62 ofType:0];
          v35 = [v7 blitCommandEncoderForKey:v62];
          if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v58, v34))
          {
            [v35 endEncoding];
            v36 = [v7 commandBufferForKey:{GTTraceFunc_targetContext(v16, v8[2])}];
            v37 = [v36 computeCommandEncoder];
            [v37 endEncoding];
            GTMTLReplayController_defaultDispatchFunction(v6, v16);
            v34 = [v59 globalTraceIdForEncoder:v62 ofType:0];

            v7 = v59;
          }

          GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v60, v58, v16, v34, v35, v58[3], 0, 0);

          v33 = *(v16 + 8);
        }

        if ((v61 & 1) == 0 && v33 == -16376)
        {
          v38 = [v7 commandBufferForKey:v57];
          [v38 encodeWaitForEvent:v55 value:v13[409]++];
          [v38 encodeSignalEvent:v55 value:?];

          v33 = *(v16 + 8);
        }

        if (GTFenum_getConstructorType(v33) == 17)
        {
          v39 = [v7 globalTraceIdForEncoder:v62 ofType:0];
          v40 = [v7 accelerationStructureCommandEncoderForKey:v62];
          if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v58, v39))
          {
            [v40 endEncoding];
            v41 = [v7 commandBufferForKey:{GTTraceFunc_targetContext(v16, v8[2])}];
            v42 = [v41 computeCommandEncoder];
            [v42 endEncoding];
            GTMTLReplayController_defaultDispatchFunction(v6, v16);
            v39 = [v59 globalTraceIdForEncoder:v62 ofType:0];

            v7 = v59;
          }

          GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v60, v58, v16, v39, v40, v58[3], 0, 0);

          v33 = *(v16 + 8);
        }

        if (v33 == -15642)
        {
          v43 = [v7 commandBufferForKey:v57];
          [v43 encodeWaitForEvent:v55 value:v13[409]++];
          [v43 encodeSignalEvent:v55 value:?];
        }

        objc_autoreleasePoolPop(context);
        v44 = **v60;
        v45 = (*(v44 + 22560) + 1);
        *(v44 + 22560) = v45;
      }

      while (v8[14] + v8[13] > v45);
    }

    v46 = [*(v6 + 8) defaultCommandQueue];
    [v46 finish];

    ScopedReplayConfiguration::~ScopedReplayConfiguration(v64);
    v47 = GTUSCSamplingStreamingManagerHelper::DrainRawFrameData(v60);
    if (v47)
    {
      [*(v51 + 32) setArray:v47];
    }

    objc_autoreleasePoolPop(v49);
    v63 = [*(v60 + 2) firstObject];
    [v63 stopSampling];
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = GTSampleBufferManager::ResolveSampleBuffers((v2 + 267));
  if (v3)
  {
    [*(a1 + 32) setData:v3];
  }

  v2[273] = 0;
  v2[271] = v2[270];
}

void ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_3(uint64_t a1)
{
  v2 = GTUSCSamplingStreamingManagerHelper::PostProcessFrameData(*(a1 + 48), *(a1 + 32));
  if (v2)
  {
    [*(a1 + 40) setArray:v2];
  }
}

void GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(GTUSCSamplingStreamingManagerHelper *this)
{
  v308 = *MEMORY[0x277D85DE8];
  v1 = atomic_load(byte_27F09C804);
  if (v1)
  {
    return;
  }

  v167 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 48) objectForKeyedSubscript:@"DerivedCounterDictionary"];
  if (qword_27F09C588 == -1)
  {
    v9 = [v167 objectForKeyedSubscript:@"DerivedCounters"];
    v10 = [v9 mutableCopy];

    v195 = v10;
    v11 = [v10 objectForKeyedSubscript:@"CSInvocation"];
    v175 = [v11 objectForKeyedSubscript:@"counters"];

    goto LABEL_13;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "CSInvocation");
  CountersForDerivedCounter = GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(&__p);
  v3 = CountersForDerivedCounter;
  if (SHIBYTE(v261) < 0)
  {
    operator delete(__p);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v195 = 0;
    v175 = 0;
    goto LABEL_13;
  }

  if (!CountersForDerivedCounter)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * (v3[1] - *v3)];
  v5 = *v3;
  v6 = v3[1];
  if (*v3 != v6)
  {
    do
    {
      v7 = v5;
      if (*(v5 + 23) < 0)
      {
        v7 = *v5;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      [v4 addObject:v8];

      v5 += 3;
    }

    while (v5 != v6);
  }

  v175 = [v4 copy];

  v195 = 0;
LABEL_13:
  v181 = [MEMORY[0x277CBEB98] setWithArray:v175];
  v194 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(&unk_2860D5A68, "count")}];
  if (qword_27F09C588 == -1)
  {
    v292 = 0u;
    v291 = 0u;
    v290 = 0u;
    v289 = 0u;
    v12 = [&unk_2860D5A68 countByEnumeratingWithState:&v289 objects:v307 count:16];
    if (v12)
    {
      v13 = *v290;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v290 != v13)
          {
            objc_enumerationMutation(&unk_2860D5A68);
          }

          v15 = [v195 objectForKeyedSubscript:*(*(&v289 + 1) + 8 * i)];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKeyedSubscript:@"counters"];
            if (v17)
            {
              [v194 addObjectsFromArray:v17];
            }
          }
        }

        v12 = [&unk_2860D5A68 countByEnumeratingWithState:&v289 objects:v307 count:16];
      }

      while (v12);
    }
  }

  if (qword_27F09C4A8)
  {
    v18 = [qword_27F09C4A8 objectForKeyedSubscript:@"num_cores"];
    v19 = [v18 unsignedIntValue];

    v20 = [qword_27F09C4A8 objectForKeyedSubscript:@"num_mgpus"];
    v21 = [v20 unsignedIntValue];

    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = v19 / v22 > 4;
  }

  else
  {
    v23 = 1;
  }

  v190 = v23;
  v198 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v175, "count")}];
  if (v190)
  {
    v288 = 0u;
    v287 = 0u;
    v286 = 0u;
    v285 = 0u;
    v24 = v175;
    v25 = [v24 countByEnumeratingWithState:&v285 objects:v306 count:16];
    if (v25)
    {
      v26 = *v286;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v286 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [MEMORY[0x277D0AF28] selectWithName:*(*(&v285 + 1) + 8 * j) options:0];
          [v198 addObject:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v285 objects:v306 count:16];
      }

      while (v25);
    }
  }

  if (qword_27F09C588 == -1)
  {
    v304 = @"FRGTicks";
    v31 = [v195 objectForKeyedSubscript:?];
    v305 = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
    v30 = GTMTLReplayHost_rawCounters(v32);

LABEL_51:
    goto LABEL_52;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "FRGTicks");
  v29 = GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(&__p);
  v30 = v29;
  if ((SHIBYTE(v261) & 0x80000000) == 0)
  {
    if (!v29)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

  operator delete(__p);
  if (v30)
  {
LABEL_46:
    v31 = objc_opt_new();
    v33 = *v30;
    v34 = v30[1];
    if (*v30 != v34)
    {
      do
      {
        v35 = v33;
        if (*(v33 + 23) < 0)
        {
          v35 = *v33;
        }

        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35];
        [v31 addObject:v36];

        v33 += 3;
      }

      while (v33 != v34);
    }

    v30 = [v31 copy];
    goto LABEL_51;
  }

LABEL_52:
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v30, "count")}];
  v38 = qword_27F09C4B8;
  qword_27F09C4B8 = v37;

  v284 = 0u;
  v283 = 0u;
  v282 = 0u;
  v281 = 0u;
  obj = v30;
  v39 = [obj countByEnumeratingWithState:&v281 objects:v303 count:16];
  if (v39)
  {
    v40 = *v282;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v282 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = [MEMORY[0x277D0AF28] selectWithName:*(*(&v281 + 1) + 8 * k) options:&unk_2860D5D90];
        [qword_27F09C4B8 addObject:v42];
      }

      v39 = [obj countByEnumeratingWithState:&v281 objects:v303 count:16];
    }

    while (v39);
  }

  if (qword_27F09C588 == -1)
  {
    v47 = GTMTLReplayHost_rawCounters(v195);
    v176 = [v47 copy];
  }

  else
  {
    v176 = objc_opt_new();
    v43 = qword_27F09C730;
    for (m = xmmword_27F09C738; v43 != m; v43 += 24)
    {
      v45 = v43;
      if (*(v43 + 23) < 0)
      {
        v45 = *v43;
      }

      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:v45];
      [v176 addObject:v46];
    }
  }

  v48 = [MEMORY[0x277CBEB58] setWithArray:v176];
  v49 = obj;
  [v48 addObjectsFromArray:&unk_2860D5A20];
  if (v175)
  {
    [v48 addObjectsFromArray:v175];
  }

  [v48 addObjectsFromArray:obj];
  v50 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4096];
  for (n = 0; n < [*(&xmmword_27F09BCF8 + 1) count]; ++n)
  {
    v188 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:?];
    v51 = [v188 availableCounters];
    v280 = 0u;
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    v52 = v51;
    v53 = [v52 countByEnumeratingWithState:&v277 objects:v302 count:16];
    if (v53)
    {
      v54 = *v278;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v278 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v277 + 1) + 8 * ii);
          v57 = [v56 name];
          v58 = [v48 containsObject:v57];

          if (v58)
          {
            v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v56, "counterValueType")}];
            v60 = [v56 name];
            [v50 setObject:v59 forKeyedSubscript:v60];
          }
        }

        v53 = [v52 countByEnumeratingWithState:&v277 objects:v302 count:16];
      }

      while (v53);
    }

    v49 = obj;
  }

  v61 = MEMORY[0x277CBEB18];
  v62 = [v176 count];
  v189 = [v61 arrayWithCapacity:{objc_msgSend(qword_27F09C4B0, "count") + v62}];
  [v189 addObjectsFromArray:qword_27F09C4B0];
  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  v273 = 0u;
  v197 = v176;
  v63 = [v197 countByEnumeratingWithState:&v273 objects:v301 count:16];
  if (v63)
  {
    v64 = *v274;
    do
    {
      for (jj = 0; jj != v63; ++jj)
      {
        if (*v274 != v64)
        {
          objc_enumerationMutation(v197);
        }

        v66 = *(*(&v273 + 1) + 8 * jj);
        if (([v66 isEqualToString:@"MTLStat_nSec"] & 1) == 0 && (objc_msgSend(v49, "containsObject:", v66) & 1) == 0 && (!v190 || (objc_msgSend(v181, "containsObject:", v66) & 1) == 0))
        {
          if ([v194 containsObject:v66])
          {
            v67 = &unk_2860D5DB8;
          }

          else
          {
            v67 = 0;
          }

          v68 = v67;
          v69 = [MEMORY[0x277D0AF28] selectWithName:v66 options:v68];
          [v189 addObject:v69];

          v49 = obj;
        }
      }

      v63 = [v197 countByEnumeratingWithState:&v273 objects:v301 count:16];
    }

    while (v63);
  }

  if (qword_27F09C4B8)
  {
    v166 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(qword_27F09C4B8);
  }

  else
  {
    v166 = 0;
  }

  v163 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(v189);
  v70 = DeepMutableCopy(v163);
  v71 = v70;
  if (v70)
  {
    v173 = v70;
    if ([(GTUSCSamplingStreamingManagerHelper *)v70 count])
    {
      v72 = [(GTUSCSamplingStreamingManagerHelper *)v71 objectForKeyedSubscript:@"passNum"];
      v184 = [v72 unsignedIntValue];

      if (v166)
      {
        v73 = [v166 objectForKeyedSubscript:@"passNum"];
        v74 = [v73 unsignedIntValue] == 1;

        if (v74)
        {
          GTUSCSamplingStreamingManagerHelper::SetupBumperCounters(v173, v75);
          v76 = [v166 objectForKeyedSubscript:@"passList"];
          v77 = [v76 objectAtIndexedSubscript:0];

          if (v184)
          {
            for (kk = 0; kk != v184; ++kk)
            {
              v79 = [(GTUSCSamplingStreamingManagerHelper *)v173 objectForKeyedSubscript:@"passList"];
              v80 = [v79 objectAtIndexedSubscript:kk];

              for (mm = 0; mm < [v80 count]; ++mm)
              {
                v82 = [v77 objectAtIndexedSubscript:mm];
                v83 = [v82 count] == 0;

                if (!v83)
                {
                  v84 = [v80 objectAtIndexedSubscript:mm];
                  v85 = [v77 objectAtIndexedSubscript:mm];
                  [v84 addObjectsFromArray:v85];
                }
              }
            }
          }

          if ([v198 count])
          {
            ++v184;
            v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
            [(GTUSCSamplingStreamingManagerHelper *)v173 setObject:v86 forKeyedSubscript:@"passNum"];
          }

          if ([v198 count])
          {
            v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(&xmmword_27F09BCF8 + 1), "count")}];
            for (nn = 0; nn < [*(&xmmword_27F09BCF8 + 1) count]; ++nn)
            {
              v89 = objc_opt_new();
              [v87 addObject:v89];

              v90 = [v77 objectAtIndexedSubscript:nn];
              v91 = [v90 count] == 0;

              if (!v91)
              {
                v92 = [v87 objectAtIndexedSubscript:nn];
                v93 = [qword_27F09C4B0 arrayByAddingObjectsFromArray:v198];
                [v92 addObjectsFromArray:v93];
              }
            }

            v94 = [(GTUSCSamplingStreamingManagerHelper *)v173 objectForKeyedSubscript:@"passList"];
            [v94 addObject:v87];
          }
        }
      }

      v95 = objc_autoreleasePoolPush();
      v96 = objc_opt_new();
      objc_autoreleasePoolPop(v95);
      v170 = v96;
      v267 = 0;
      v268 = &v267;
      v269 = 0x3032000000;
      v270 = __Block_byref_object_copy_;
      v271 = __Block_byref_object_dispose_;
      v272 = objc_opt_new();
      __p = 0;
      p_p = &__p;
      v261 = 0x5812000000;
      v262 = __Block_byref_object_copy__307;
      v263 = __Block_byref_object_dispose__308;
      v264 = &unk_24DB95716;
      memset(v265, 0, sizeof(v265));
      v266 = 1065353216;
      v256[0] = 0;
      v256[1] = v256;
      v256[2] = 0x5812000000;
      v256[3] = __Block_byref_object_copy__307;
      v256[4] = __Block_byref_object_dispose__308;
      v256[5] = &unk_24DB95716;
      memset(v257, 0, sizeof(v257));
      v258 = 1065353216;
      v249 = 0;
      v250 = &v249;
      v251 = 0x4812000000;
      v252 = __Block_byref_object_copy__310;
      v253 = __Block_byref_object_dispose__311;
      v254 = &unk_24DB95716;
      memset(v255, 0, sizeof(v255));
      v240 = 0;
      v241 = &v240;
      v242 = 0x4812000000;
      v243 = __Block_byref_object_copy__313;
      v244 = __Block_byref_object_dispose__314;
      v245 = &unk_24DB95716;
      v248 = 0;
      v246 = 0;
      v247 = 0;
      v164 = v184;
      std::vector<std::vector<DYMTLEncoderInfo>>::resize(v255, v184);
      v158 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16);
      v97 = [v158 objectForKeyedSubscript:@"perEncoderDrawCallCount"];
      v161 = [v97 count];

      v172 = objc_opt_new();
      v174 = objc_opt_new();
      if (v184)
      {
        v98 = 0;
        for (i1 = 0; i1 != v184; ++i1)
        {
          std::vector<std::vector<DYMTLEncoderInfo>>::reserve(v250 + 6, 2 * v161);
          v100 = objc_opt_new();
          v101 = MEMORY[0x277CCA8C8];
          v227[0] = MEMORY[0x277D85DD0];
          v227[1] = 3221225472;
          v227[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke;
          v227[3] = &unk_279657408;
          v236 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
          v228 = v173;
          v237 = i1;
          v239 = v190;
          v102 = v175;
          v238 = v184;
          v229 = v102;
          v231 = &v249;
          v232 = &v240;
          v233 = &__p;
          v234 = v256;
          v235 = &v267;
          v103 = v100;
          v230 = v103;
          v104 = [v101 blockOperationWithBlock:v227];
          v105 = v104;
          if (v98)
          {
            [v104 addDependency:v98];
          }

          [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v105];
          v106 = MEMORY[0x277CCA8C8];
          v223[0] = MEMORY[0x277D85DD0];
          v223[1] = 3221225472;
          v223[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_2;
          v223[3] = &unk_279658B00;
          v226 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
          v107 = v103;
          v224 = v107;
          v225 = v172;
          v108 = [v106 blockOperationWithBlock:v223];
          [v108 addDependency:v105];
          [*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) + 8) addOperation:v108];
          [v174 addDependency:v108];
          v109 = v108;

          if (!i1 && dword_27F09C54C && dword_27F09C548)
          {
            v110 = MEMORY[0x277CCA8C8];
            v220[0] = MEMORY[0x277D85DD0];
            v220[1] = 3221225472;
            v220[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_3;
            v220[3] = &unk_279658AD8;
            v222 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
            v221 = v170;
            v111 = [v110 blockOperationWithBlock:v220];
            [v111 addDependency:v109];
            [v174 addDependency:v111];
            [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v111];
          }

          v98 = v109;
        }
      }

      else
      {
        v109 = 0;
      }

      v159 = v109;
      [*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) + 8) addOperation:v174];
      [v174 waitUntilFinished];
      v171 = [MEMORY[0x277CBEB18] arrayWithCapacity:v184];
      if (v184)
      {
        v112 = 0;
        do
        {
          v113 = [MEMORY[0x277CBEA90] dataWithBytes:*(v250[6] + v112) length:*(v250[6] + v112 + 8) - *(v250[6] + v112)];
          [v171 addObject:v113];

          v112 += 24;
        }

        while (24 * v184 != v112);
      }

      v160 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[GTUSCSamplingStreamingManagerHelper count](v173, "count")}];
      v114 = [v160 objectForKeyedSubscript:@"passNum"];
      [v160 setObject:v114 forKeyedSubscript:@"passNum"];

      v162 = [MEMORY[0x277CBEB18] arrayWithCapacity:v184];
      v115 = v173;
      if (v184)
      {
        v168 = 0;
        do
        {
          v116 = [(GTUSCSamplingStreamingManagerHelper *)v115 objectForKeyedSubscript:@"passList"];
          v177 = [v116 objectAtIndexedSubscript:v168];

          v185 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v177, "count")}];
          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v178 = v177;
          v117 = [v178 countByEnumeratingWithState:&v216 objects:v300 count:16];
          if (v117)
          {
            v182 = *v217;
            do
            {
              v191 = v117;
              for (i2 = 0; i2 != v191; i2 = i2 + 1)
              {
                if (*v217 != v182)
                {
                  objc_enumerationMutation(v178);
                }

                v119 = *(*(&v216 + 1) + 8 * i2);
                v120 = [qword_27F09C4B0 arrayByAddingObjectsFromArray:v119];
                v121 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v120, "count")}];
                v214 = 0u;
                v215 = 0u;
                v212 = 0u;
                v213 = 0u;
                v122 = v119;
                v123 = [v122 countByEnumeratingWithState:&v212 objects:v299 count:16];
                if (v123)
                {
                  v124 = *v213;
                  do
                  {
                    for (i3 = 0; i3 != v123; ++i3)
                    {
                      if (*v213 != v124)
                      {
                        objc_enumerationMutation(v122);
                      }

                      v126 = [*(*(&v212 + 1) + 8 * i3) name];
                      [v121 addObject:v126];
                    }

                    v123 = [v122 countByEnumeratingWithState:&v212 objects:v299 count:16];
                  }

                  while (v123);
                }

                [v185 addObject:v121];
              }

              v117 = [v178 countByEnumeratingWithState:&v216 objects:v300 count:16];
            }

            while (v117);
          }

          [v162 addObject:v185];
          ++v168;
          v115 = v173;
        }

        while (v168 != v164);
      }

      v127 = p_p[9];
      if (v127)
      {
        if (!(v127 >> 60))
        {
          operator new();
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

        ;
      }

      if (!dword_27F09BCD4)
      {
        mach_timebase_info(&GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(void)::timebaseInfo);
      }

      v156 = [MEMORY[0x277CBEB28] dataWithBytes:0 length:0];
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v169 = v172;
      v129 = 0;
      v130 = [v169 countByEnumeratingWithState:&v208 objects:v298 count:16];
      if (v130)
      {
        v131 = 0;
        v165 = *v209;
        do
        {
          v132 = 0;
          v157 = v130;
          do
          {
            if (*v209 != v165)
            {
              objc_enumerationMutation(v169);
            }

            v133 = *(*(&v208 + 1) + 8 * v132);
            v204 = 0u;
            v205 = 0u;
            v206 = 0u;
            v207 = 0u;
            v192 = v133;
            v134 = [v192 countByEnumeratingWithState:&v204 objects:v297 count:16];
            v179 = v132;
            v183 = v129;
            v186 = v131;
            v135 = 0;
            if (v134)
            {
              v136 = *v205;
              do
              {
                for (i5 = 0; i5 != v134; ++i5)
                {
                  if (*v205 != v136)
                  {
                    objc_enumerationMutation(v192);
                  }

                  v138 = *(*(&v204 + 1) + 8 * i5);
                  v200 = 0u;
                  v201 = 0u;
                  v202 = 0u;
                  v203 = 0u;
                  v139 = v138;
                  v140 = [v139 countByEnumeratingWithState:&v200 objects:v296 count:16];
                  if (v140)
                  {
                    v141 = *v201;
                    do
                    {
                      for (i6 = 0; i6 != v140; ++i6)
                      {
                        if (*v201 != v141)
                        {
                          objc_enumerationMutation(v139);
                        }

                        v135 += [*(*(&v200 + 1) + 8 * i6) length];
                      }

                      v140 = [v139 countByEnumeratingWithState:&v200 objects:v296 count:16];
                    }

                    while (v140);
                  }
                }

                v134 = [v192 countByEnumeratingWithState:&v204 objects:v297 count:16];
              }

              while (v134);
            }

            NSLog(&cfstr_TotalRdeCounte.isa, v186, v135 >> 10);
            v129 = v135 + v183;
            v131 = (v186 + 1);
            v132 = v179 + 1;
          }

          while (v179 + 1 != v157);
          v130 = [v169 countByEnumeratingWithState:&v208 objects:v298 count:16];
        }

        while (v130);
        v129 >>= 10;
      }

      v143 = qword_27F09C518;
      v144 = MEMORY[0x277CBEC10];
      if (!qword_27F09C518)
      {
        v143 = MEMORY[0x277CBEC10];
      }

      v145 = v143;
      NSLog(&cfstr_TotalRdeCounte_0.isa, v129);
      [v160 setObject:v162 forKeyedSubscript:@"passList"];
      v294[0] = @"Derived Counter Sample Data";
      v294[1] = @"Subdivided Dictionary";
      v295[0] = v169;
      v295[1] = v160;
      v295[2] = v171;
      v294[2] = @"Encoder Infos";
      v294[3] = @"Encoder Tile Info";
      v146 = [MEMORY[0x277CBEA90] dataWithBytes:v241[6] length:v241[7] - v241[6]];
      v193 = v145;
      v295[3] = v146;
      v294[4] = @"MTLFX TraceIds";
      v147 = [v268[5] mtlfxTracingInfo];
      v180 = v147;
      if (v147)
      {
        v148 = v147;
      }

      else
      {
        v148 = v144;
      }

      v295[4] = v148;
      v295[5] = v50;
      v294[5] = @"Counter Info";
      v294[6] = @"Num Encoders";
      v187 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v161];
      v295[6] = v187;
      v295[7] = v170;
      v294[7] = @"Encoder Time Sample Data";
      v294[8] = @"Encoder Sample Index Data";
      v295[8] = v156;
      v294[9] = @"Timebase";
      v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(void)::timebaseInfo];
      v293[0] = v149;
      v150 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:dword_27F09BCD4];
      v293[1] = v150;
      v151 = [MEMORY[0x277CBEA60] arrayWithObjects:v293 count:2];
      v295[9] = v151;
      v294[10] = @"Source Sample Marker";
      v152 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:qword_27F09BD08];
      v295[10] = v152;
      v294[11] = @"Derived Counters Info Data";
      v153 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 48);
      if (!v153)
      {
        v153 = v144;
      }

      v295[11] = v153;
      v295[12] = v193;
      v294[12] = @"Perf Info";
      v294[13] = @"Fragment Counter";
      if (obj)
      {
        v154 = [obj firstObject];
      }

      else
      {
        v154 = &stru_2860BD438;
      }

      v295[13] = v154;
      v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v295 forKeys:v294 count:14];
      if (obj)
      {
      }

      (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
      _Block_object_dispose(&v240, 8);
      if (v246)
      {
        v247 = v246;
        operator delete(v246);
      }

      _Block_object_dispose(&v249, 8);
      v240 = v255;
      std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](&v240);
      _Block_object_dispose(v256, 8);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v257);
      _Block_object_dispose(&__p, 8);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v265);
      _Block_object_dispose(&v267, 8);

      v71 = v173;
    }
  }
}

void sub_24D893504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, _Unwind_Exception *exception_objecta, uint64_t a35, void *a36, uint64_t a37, void *a38, void *a39, uint64_t a40, void *a41, void *a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&STACK[0x330], 8);
  v44 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v44;
    operator delete(v44);
  }

  _Block_object_dispose(&STACK[0x378], 8);
  STACK[0x330] = a14;
  std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x330]);
  _Block_object_dispose(&STACK[0x3C0], 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x3F0]);
  _Block_object_dispose(&STACK[0x418], 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x448]);
  _Block_object_dispose(&STACK[0x470], 8);

  _Unwind_Resume(a1);
}

id DeepMutableCopy(NSDictionary *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](v1, "count")}];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZL15DeepMutableCopyP12NSDictionary_block_invoke;
    v6[3] = &unk_2796574A8;
    v4 = v3;
    v7 = v4;
    [(NSDictionary *)v2 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 96);
  GTMTLReplayController_prePlayForProfiling(**v2);
  DisableComputeEncoderCoalescing(**v2, 1);
  v3 = *(a1 + 32);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112) == 1 && [*(a1 + 40) count] && *(a1 + 104) + 1 == *(a1 + 108);
  if (GTUSCSamplingStreamingManagerHelper::SetupSourceForDerivedCounters(v2, v3, v4, 0, v5))
  {
    v6 = [*(v2 + 16) firstObject];
    v7 = [v6 startSampling];

    if (v7)
    {
      if (!*(*v2 + 72))
      {
        usleep(0x30D40u);
        GTUSCSamplingStreamingManagerHelper::ForceDrainAllSourceBuffers(*(v2 + 24));
      }

      GTUSCSamplingStreamingManagerHelper::ResetSourceForPostProcessing(v2);
      v8 = *(a1 + 104);
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = a1 + 80;
      }

      else
      {
        v9 = (*(*(a1 + 64) + 8) + 48);
        v11 = a1 + 72;
        v10 = *(*(*(a1 + 88) + 8) + 40);
      }

      GTUSCSamplingStreamingManagerHelper::ReplayForDerivedCounters(v2, (*(*(*(a1 + 56) + 8) + 48) + 24 * v8), v9, 0, (*(*v11 + 8) + 48), v10);
      v12 = objc_autoreleasePoolPush();
      v13 = GTUSCSamplingStreamingManagerHelper::DrainRawDerivedCounterData(v2);
      if (v13)
      {
        [*(a1 + 48) setArray:v13];
      }

      objc_autoreleasePoolPop(v12);
      v14 = [*(v2 + 16) firstObject];
      [v14 stopSampling];

      DisableComputeEncoderCoalescing(**v2, 0);
      if (*(a1 + 104) + 1 == *(a1 + 108))
      {
        GTAGXPerfStateControl::DisableConsistentGPUPerfState((v2 + 40));

        GTApplePMPPerfStateControl::DisableConsistentPerfState((v2 + 64));
      }
    }
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_2(uint64_t a1)
{
  v2 = GTUSCSamplingStreamingManagerHelper::PostProcessRawDerivedCounterData(*(a1 + 48), *(a1 + 32));
  if (v2)
  {
    [*(a1 + 40) addObject:v2];
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = GTSampleBufferManager::ResolveSampleBuffers((v2 + 267));
  if (v3)
  {
    [*(a1 + 32) setData:v3];
  }

  v2[273] = 0;
  v2[271] = v2[270];
}

void ___ZL15DeepMutableCopyP12NSDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = DeepMutableCopy(v5);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = DeepMutableCopy(v5);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    goto LABEL_5;
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
LABEL_7:
}

id DeepMutableCopy(NSArray *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v1, "count")}];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZL15DeepMutableCopyP7NSArray_block_invoke;
    v6[3] = &unk_2796574D0;
    v4 = v3;
    v7 = v4;
    [(NSArray *)v2 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZL15DeepMutableCopyP7NSArray_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = DeepMutableCopy(v7);
    [v3 addObject:v4];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  if (isKindOfClass)
  {
    v4 = DeepMutableCopy(v7);
    [v6 addObject:v4];
    goto LABEL_5;
  }

  [*(a1 + 32) addObject:v7];
LABEL_7:
}

void ___ZN35GTUSCSamplingStreamingManagerHelper23StreamHarvestedBinariesEv_block_invoke(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  GTMTLReplayController_prePlayForProfiling(**v1);
  v64 = v1;
  v2 = **v1;
  v77 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1024];
  *&v78 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  *(&v78 + 1) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  v79 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  v62 = v77;
  v80 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  v57 = v2[1];
  memset(v75, 0, sizeof(v75));
  v76 = 1065353216;
  memset(v73, 0, sizeof(v73));
  v74 = 1065353216;
  __p = 0;
  v71 = 0;
  v72 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = [[ProgramAddressTableCollector alloc] initForHarvestingBinaries];
  v5 = v64[243];
  v64[243] = v4;

  v6 = objc_opt_new();
  v7 = v64[244];
  v64[244] = v6;

  v64[245] = 0;
  objc_autoreleasePoolPop(v3);
  v59 = [v2[1] defaultDevice];
  v58 = [v2[1] defaultCommandQueue];
  [v59 mapShaderSampleBufferWithBuffer:0 capacity:0 size:0];
  v8 = objc_autoreleasePoolPush();
  v85[1] = v2;
  v86 = 0;
  v85[0] = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling();
  [v58 finish];
  ScopedReplayConfiguration::~ScopedReplayConfiguration(v85);
  objc_autoreleasePoolPop(v8);
  [v59 unmapShaderSampleBuffer];
  v55 = [v64[243] mappings];
  v60 = [v64[243] binaries];
  v63 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v55;
  v9 = [obj countByEnumeratingWithState:&v66 objects:v85 count:16];
  if (v9)
  {
    v10 = *v67;
    do
    {
      v11 = 0;
      do
      {
        if (*v67 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v66 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:@"encID"];
        [v13 unsignedIntValue];

        v14 = [v12 objectForKeyedSubscript:@"encIndex"];
        v15 = [v14 unsignedIntValue];

        v16 = [v12 objectForKeyedSubscript:@"drawCallIndex"];
        v17 = [v16 unsignedIntValue];

        v18 = [v12 objectForKeyedSubscript:@"index"];
        v19 = [v18 unsignedIntValue];

        v20 = [v12 objectForKeyedSubscript:@"mappedSize"];
        v21 = [v20 unsignedLongLongValue];

        v22 = [v12 objectForKeyedSubscript:@"type"];
        v23 = [v12 objectForKeyedSubscript:@"binaryUniqueId"];
        if (([v22 isEqualToString:@"AccelerationStructure"] & 1) == 0)
        {
          v24 = GTShaderProfilerGenerateComputedKey(v15, v17, v21, v22);
          v25 = [v64[244] objectForKeyedSubscript:v24];
          v26 = v25 == 0;

          if (!v26)
          {
            v27 = [v63 objectForKeyedSubscript:v24];
            v28 = [v27 unsignedIntValue];

            v29 = (v28 + 1);
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", v24, v29];

            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
            [v63 setObject:v31 forKeyedSubscript:v30];

            v24 = v30;
          }

          [v64[244] setObject:v23 forKeyedSubscript:v24];
          if (v19 != -1)
          {
            v32 = [v62 count];
            v33 = v77;
            if (v32 == v17)
            {
              v34 = objc_opt_new();
              [v33 addObject:v34];
            }

            v62 = v33;
            v35 = [v33 objectAtIndexedSubscript:v17];
            v36 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
            v37 = v36 == 0;

            if (v37)
            {
              v38 = objc_opt_new();
              [v35 setObject:v38 forKeyedSubscript:@"mutiple binary keys"];
            }

            v39 = [v60 objectForKeyedSubscript:v23];
            if ([v22 isEqualToString:@"vertex"])
            {
              v41 = AddShaderBinary(v78, v39, v23, v23, 0, v22, v40);
              [v35 setObject:v41 forKeyedSubscript:@"vertex shader key"];

              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v80, v39, v23, v23, 0, v22, v43);
              [v42 addObject:v44];
              goto LABEL_21;
            }

            if ([v22 isEqualToString:@"fragment"])
            {
              v46 = AddShaderBinary(*(&v78 + 1), v39, v23, v23, 0, v22, v45);
              [v35 setObject:v46 forKeyedSubscript:@"fragment shader key"];

              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v80, v39, v23, v23, 0, v22, v47);
              [v42 addObject:v44];
              goto LABEL_21;
            }

            if (([v22 isEqualToString:@"compute"] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"tile"))
            {
              v49 = AddShaderBinary(v79, v39, v23, v23, 0, v22, v48);
              [v35 setObject:v49 forKeyedSubscript:@"compute kernel key"];

              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v80, v39, v23, v23, 0, v22, v50);
              [v42 addObject:v44];
              goto LABEL_21;
            }

            if ([v22 containsString:@"dynamic-libraries"])
            {
              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v80, v39, v23, v23, 1, v22, v51);
              [v42 addObject:v44];
LABEL_21:
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v52 = [obj countByEnumeratingWithState:&v66 objects:v85 count:16];
      v9 = v52;
    }

    while (v52);
  }

  v64[245] = v64[241];
  v64[241] = 0;
  v53 = GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(v64);
  v81[0] = @"draw call info";
  v81[1] = @"mutiple binary info";
  v82[0] = v62;
  v82[1] = v80;
  v81[2] = @"internal binary keys";
  v81[3] = @"vertex fetch shader info";
  v82[2] = MEMORY[0x277CBEBF8];
  v82[3] = MEMORY[0x277CBEC10];
  v83 = v78;
  v81[4] = @"vertex shader info";
  v81[5] = @"fragment shader info";
  v81[6] = @"compute kernel info";
  v84 = v79;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:7];

  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::~__hash_table(v73);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v75);

  v54 = *(a1 + 32);
  if (v54)
  {
    [v54 setObject:v65 forKeyedSubscript:@"Havested Binaries"];
  }
}

void ___ZN29GTUSCSamplingStreamingManagerC2EP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryU13block_pointerFvS5_E_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = [*(v1 + 16) objectForKeyedSubscript:@"GPUState"];
  v12 = v3;
  if (v3 && (v4 = [v3 unsignedIntValue], *(v1 + 72) = v4, v5 = v12, v4))
  {
    *(v1 + 64) = vdup_n_s32(0x12Cu);
  }

  else
  {
    *(v1 + 72) = 0;
    v6 = ExpectedState(v2);
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9.f64[0] = floor(v8);
      v9.f64[1] = ceil(v8);
      v10 = v8 - v9.f64[0];
      v11 = vmovn_s64(vcvtq_u64_f64(vmulq_f64(v9, vdupq_n_s64(0x4059000000000000uLL))));
      *(v1 + 64) = v11;
      *(v1 + 24) = v10;
      if (v10 <= 2.22044605e-16)
      {
        *(v1 + 68) = v11.i32[0];
      }
    }

    else
    {
      *(v1 + 64) = vdup_n_s32(0x12Cu);
    }

    v5 = v12;
  }
}

uint64_t GTUSCSamplingStreamingManager::GTUSCSamplingStreamingManager(uint64_t a1, uint64_t a2, id *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  *a1 = a2;
  *(a1 + 8) = a3;
  v10 = v9;
  *(a1 + 16) = v10;
  v11 = MEMORY[0x253033CF0](a5);
  *(a1 + 40) = 0;
  *(a1 + 32) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 76) = 0x7FFFFFFF;
  v12 = objc_opt_new();
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;

  v14 = objc_opt_new();
  v15 = *(a1 + 48);
  *(a1 + 48) = v14;

  *(a1 + 24) = 0x3FF0000000000000;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ZN29GTUSCSamplingStreamingManagerC2EP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryU13block_pointerFvS5_E_block_invoke;
  v18[3] = &__block_descriptor_40_e5_v8__0l;
  v18[4] = a1;
  v16 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v18];
  [v16 setQueuePriority:8];
  [*a3 addOperation:v16];
  [v16 waitUntilFinished];

  return a1;
}

void GTUSCSamplingStreamingManager::InitTargetIndex(id *this)
{
  v2 = [this[2] objectForKeyedSubscript:@"MetalPluginName"];
  v3 = this[7];
  this[7] = v2;

  if (this[7])
  {
    v4 = [this[2] objectForKeyedSubscript:@"gpuTarget"];
    v5 = v4;
    if (v4)
    {
      *(this + 19) = [v4 intValue];
    }
  }

  else
  {
    IOAccelerator = GetIOAccelerator();
    v7 = GetMetalPluginName(IOAccelerator, this + 19);
    v5 = this[7];
    this[7] = v7;
  }

  if (*(this + 19) == 0x7FFFFFFF)
  {
    *(this + 19) = MetalPluginTarget(this[7]);
  }
}

void GTUSCSamplingStreamingManager::InitDerivedCountersInfo(id *this)
{
  GTUSCSamplingStreamingManager::InitTargetIndex(this);
  v2 = [this[2] objectForKeyedSubscript:@"derivedCounterInfo"];
  v3 = this[6];
  this[6] = v2;
}

void GTUSCSamplingStreamingManagerHelper::Instance(GTUSCSamplingStreamingManagerHelper *this)
{
  {
    if (v1)
    {
      GTUSCSamplingStreamingManagerHelper::GTUSCSamplingStreamingManagerHelper(v1);
      __cxa_atexit(GTUSCSamplingStreamingManagerHelper::~GTUSCSamplingStreamingManagerHelper, GTUSCSamplingStreamingManagerHelper::Instance(void)::instance, &dword_24D764000);
    }
  }
}

void GTUSCSamplingStreamingManagerHelper::GTUSCSamplingStreamingManagerHelper(GTUSCSamplingStreamingManagerHelper *this)
{
  byte_27F09BD18 = 0;
  xmmword_27F09BCF8 = 0u;
  *&qword_27F09BD08 = 0u;
  GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] = 0u;
  qword_27F09BD20 = 0;
  qword_27F09BD28 = 0;
  qword_27F09BD30[0] = 0x300000000;
  bzero(&unk_27F09BD38, 0x70CuLL);
  xmmword_27F09C468 = 0u;
  xmmword_27F09C458 = 0u;
  xmmword_27F09C480 = 0u;
  unk_27F09C490 = 0u;
  unk_27F09C4A0 = 0u;
  *&qword_27F09C4B0 = 0u;
  xmmword_27F09C4C0 = 0u;
  unk_27F09C4D0 = 0u;
  unk_27F09C4E0 = 0u;
  *&qword_27F09C4F0 = 0u;
  xmmword_27F09C500 = 0u;
  *&qword_27F09C510 = 0u;
  xmmword_27F09C520 = 0u;
  *&qword_27F09C530 = 0u;
  unk_27F09C540 = 0u;
  unk_27F09C550 = 0u;
  xmmword_27F09C560 = 0u;
  unk_27F09C570 = 0u;
  qword_27F09C580 = 0;
  qword_27F09C588 = 0xFFFFFFFFLL;
  word_27F09C590 = 257;
  xmmword_27F09C594 = 0u;
  *algn_27F09C5A4 = 0u;
  unk_27F09C5B4 = 0u;
  *(&xmmword_27F09C5B8 + 12) = 0u;
  xmmword_27F09C5D4 = 0u;
  *(&xmmword_27F09C5D4 + 12) = 0u;
  dword_27F09C5F0 = 1065353216;
  xmmword_27F09C5F8 = 0u;
  xmmword_27F09C608 = 0u;
  unk_27F09C618 = 0u;
  xmmword_27F09C628 = 0u;
  xmmword_27F09C638 = 0u;
  unk_27F09C648 = 0u;
  xmmword_27F09C658 = 0u;
  xmmword_27F09C668 = 0u;
  unk_27F09C678 = 0u;
  xmmword_27F09C688 = 0u;
  xmmword_27F09C698 = 0u;
  unk_27F09C6A8 = 0u;
  xmmword_27F09C6B8 = 0u;
  xmmword_27F09C6C8 = 0u;
  xmmword_27F09C6D8 = 0u;
  xmmword_27F09C6E8 = 0u;
  unk_27F09C6F8 = 0u;
  qword_27F09C708 = 0;
  dword_27F09C710 = 1065353216;
  xmmword_27F09C718 = 0u;
  unk_27F09C728 = 0u;
  xmmword_27F09C738 = 0u;
  xmmword_27F09C748 = 0u;
  unk_27F09C758 = 0u;
  xmmword_27F09C768 = 0u;
  xmmword_27F09C778 = 0u;
  unk_27F09C788 = 0u;
  xmmword_27F09C798 = 0u;
  xmmword_27F09C7A8 = 0u;
  xmmword_27F09C7B8 = 0u;
  dword_27F09C7C8 = 1065353216;
  byte_27F09C7D0 = 0;
  xmmword_27F09C7D8 = 0u;
  xmmword_27F09C7E8 = 0u;
  *(&xmmword_27F09C7E8 + 13) = 0u;
  qword_27F09C808 = 1018212795;
  qword_27F09C830 = 0;
  xmmword_27F09C810 = 0u;
  unk_27F09C820 = 0u;
  qword_27F09C838 = 850045863;
  xmmword_27F09C840 = 0u;
  *algn_27F09C850 = 0u;
  xmmword_27F09C860 = 0u;
  qword_27F09C870 = 0;
  qword_27F09C878 = 1018212795;
  xmmword_27F09C880 = 0u;
  *algn_27F09C890 = 0u;
  qword_27F09C8A0 = 0;
  qword_27F09C8A8 = 850045863;
  xmmword_27F09C8B0 = 0u;
  unk_27F09C8C0 = 0u;
  xmmword_27F09C8D0 = 0u;
  qword_27F09C8E0 = 0;
  qword_27F09C8E8 = 1018212795;
  qword_27F09C910 = 0;
  xmmword_27F09C8F0 = 0u;
  unk_27F09C900 = 0u;
  qword_27F09C918 = 850045863;
  qword_27F09C950 = 0;
  xmmword_27F09C930 = 0u;
  unk_27F09C940 = 0u;
  xmmword_27F09C920 = 0u;
  qword_27F09C968 = -1;
  *(&xmmword_27F09C958 + 1) = -1;
  *&xmmword_27F09C958 = -1;
  xmmword_27F09C990 = 0u;
  unk_27F09C9A0 = 0u;
  xmmword_27F09C970 = 0u;
  *&qword_27F09C980 = 0u;
  qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFE00 | 1;
  xmmword_27F09C9B8 = 0u;
  xmmword_27F09C9C8 = 0u;
  xmmword_27F09C9D8 = 0u;
  xmmword_27F09C9E8 = 0u;
  qword_27F09C9F8 = 0;
  qword_27F09CA00 = 4;
  dword_27F09CA08 = 0;
}

void GTUSCSamplingStreamingManagerHelper::~GTUSCSamplingStreamingManagerHelper(GTUSCSamplingStreamingManagerHelper *this)
{
  dispatch_semaphore_signal(*(this + 316));
  GTUSCSamplingStreamingManagerHelper::CleanUp(this);
  v2 = *(this + 416);
  if (v2)
  {
    *(this + 417) = v2;
    operator delete(v2);
  }

  v3 = *(this + 413);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 410);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 405);
  if (v5)
  {
    *(this + 406) = v5;
    operator delete(v5);
  }

  v9 = (this + 3216);
  std::vector<SourceFileInfo>::__destroy_vector::operator()[abi:nn200100](&v9);

  std::mutex::~mutex((this + 3120));
  std::condition_variable::~condition_variable(this + 64);
  std::mutex::~mutex(this + 47);
  std::condition_variable::~condition_variable((this + 2960));
  std::mutex::~mutex((this + 2896));
  std::condition_variable::~condition_variable((this + 2848));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 2752);
  for (i = 2728; i != 2584; i -= 24)
  {
    v9 = (this + i);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v9);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 2568);

  v9 = (this + 2504);
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2480);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2456);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2432);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2408);
  std::vector<DynamicBuffer>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2384);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2360);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&v9);

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2280);
  v7 = *(this + 282);
  if (v7)
  {
    *(this + 283) = v7;
    operator delete(v7);
  }

  v9 = (this + 2232);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v9);

  GTSampleBufferManager::~GTSampleBufferManager(this + 267);
  v8 = *(this + 238);
  if (v8)
  {
    *(this + 239) = v8;
    operator delete(v8);
  }

  GTApplePMPPerfStateControl::~GTApplePMPPerfStateControl((this + 64));
  GTAGXPerfStateControl::~GTAGXPerfStateControl(this + 5);
}

void sub_24D895868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  GTGPUAPSProfilingConfig::~GTGPUAPSProfilingConfig((v10 + 3272));
  v12 = *(v10 + 3240);
  if (v12)
  {
    *(v10 + 3248) = v12;
    operator delete(v12);
  }

  a10 = (v10 + 3216);
  std::vector<SourceFileInfo>::__destroy_vector::operator()[abi:nn200100](&a10);

  std::mutex::~mutex((v10 + 3120));
  std::condition_variable::~condition_variable((v10 + 3072));
  std::mutex::~mutex((v10 + 3008));
  std::condition_variable::~condition_variable((v10 + 2960));
  std::mutex::~mutex((v10 + 2896));
  std::condition_variable::~condition_variable((v10 + 2848));
  GTAGXProfilingSupportHelper::~GTAGXProfilingSupportHelper((v10 + 2568));

  a10 = (v10 + 2504);
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2480);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2456);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2432);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2408);
  std::vector<DynamicBuffer>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2384);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2360);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&a10);

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 2280);
  v13 = *(v10 + 2256);
  if (v13)
  {
    *(v10 + 2264) = v13;
    operator delete(v13);
  }

  a10 = (v10 + 2232);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&a10);

  GTSampleBufferManager::~GTSampleBufferManager((v10 + 2136));
  v14 = *(v10 + 1904);
  if (v14)
  {
    *(v10 + 1912) = v14;
    operator delete(v14);
  }

  GTApplePMPPerfStateControl::~GTApplePMPPerfStateControl((v10 + 64));
  GTAGXPerfStateControl::~GTAGXPerfStateControl((v10 + 40));
  GPURawCounterSetupParams::~GPURawCounterSetupParams((v10 + 16));

  _Unwind_Resume(a1);
}

void std::vector<SourceFileInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<DynamicBuffer>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DynamicBuffer>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void GTSampleBufferManager::~GTSampleBufferManager(id *this)
{
  [this[2] removeAllObjects];
  v2 = *this;
  *this = 0;

  v3 = this[3];
  if (v3)
  {
    this[4] = v3;
    operator delete(v3);
  }
}

void sub_24D895DBC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void GTApplePMPPerfStateControl::~GTApplePMPPerfStateControl(GTApplePMPPerfStateControl *this)
{
  GTApplePMPPerfStateControl::Close(this);
  for (i = 1752; i != -40; i -= 56)
  {
  }
}

void sub_24D895E30(_Unwind_Exception *a1)
{
  for (i = 1752; i != -40; i -= 56)
  {
  }

  _Unwind_Resume(a1);
}

void GTAGXPerfStateControl::~GTAGXPerfStateControl(id *this)
{
  v2 = *this;
  if (v2)
  {
    IOServiceClose(v2);
    *this = 0;
  }
}

void GTGPUAPSProfilingConfig::~GTGPUAPSProfilingConfig(GTGPUAPSProfilingConfig *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    operator delete(v4);
  }
}

void GTAGXProfilingSupportHelper::~GTAGXProfilingSupportHelper(GTAGXProfilingSupportHelper *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 184);
  for (i = 160; i != 16; i -= 24)
  {
    v3 = (this + i);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this);
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

float64_t GetTextureRendererUniform(uint64_t a1, float64_t *a2, int a3, uint64_t a4, uint64_t a5, float64x2_t a6, float64_t a7, float64x2_t a8, float64_t a9, float64x2_t a10, float64_t a11, double a12, double a13, float64_t a14, float64_t a15)
{
  v15.f64[0] = a2[8];
  v16.f64[0] = a2[9];
  v15.f64[1] = a2[12];
  v17.f64[0] = *a2;
  v18.f64[0] = a2[1];
  v17.f64[1] = a2[4];
  v16.f64[1] = a2[13];
  v18.f64[1] = a2[5];
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v15);
  *(a1 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v16);
  v15.f64[0] = a2[10];
  v16.f64[0] = a2[11];
  v20.f64[1] = a2[14];
  v17.f64[0] = a2[2];
  v18.f64[0] = a2[3];
  v17.f64[1] = a2[6];
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v20);
  v16.f64[1] = a2[15];
  v18.f64[1] = a2[7];
  v20.f64[0] = a14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 32) = v19;
  *(a1 + 48) = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v16);
  if (a3)
  {
    v21.i64[0] = a4;
    v21.i64[1] = a5;
    v22 = vcvtq_f64_u64(v21);
    v23 = a14 / v22.f64[0];
    if (a14 / v22.f64[0] >= a15 / v22.f64[1])
    {
      v23 = a15 / v22.f64[1];
    }

    v20.f64[1] = a15;
    v24 = vcvt_f32_f64(vmulq_n_f64(v22, v23 / a12));
    __asm { FMOV            V4.2D, #0.5 }

    a8 = vmulq_f64(vsubq_f64(vdivq_f64(v20, vdupq_lane_s64(*&a12, 0)), vcvtq_f64_f32(v24)), _Q4);
  }

  else
  {
    a8.f64[1] = a9;
    a10.f64[1] = a11;
    v24 = vcvt_f32_f64(a10);
    v20.f64[1] = a15;
  }

  *(a1 + 64) = vcvt_f32_f64(a8);
  *(a1 + 72) = v24;
  a6.f64[1] = a7;
  *&a6.f64[0] = vcvt_f32_f64(a6);
  v31 = a12;
  *(a1 + 96) = v31;
  *(a1 + 80) = vcvt_f32_f64(v20);
  *(a1 + 88) = a6.f64[0];
  return a6.f64[0];
}

id GTMTLShaderDebugger_generateTrace()
{
  v0 = MEMORY[0x28223BE20]();
  v479 = v1;
  v486 = v0;
  v552 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v525 = 0;
  p = 0;
  v508 = 0;
  v523 = 0u;
  v524 = 0;
  v514 = 0u;
  v513 = 0;
  v509 = 0u;
  v510 = 0u;
  v511 = 0u;
  v512 = 0u;
  v515 = objc_alloc_init(MEMORY[0x277CBEAC0]);

  v516 = 0u;
  v517 = 0u;

  v518 = 0;
  v519 = 0x7FFFFFFFFFFFFFFFLL;
  v520 = 0;

  v521 = 2;
  v522 = 0u;

  *&v523 = 0;
  apr_pool_create_ex(&p, 0, 0, v4);
  v5 = v3;
  v480 = v5;
  if (!v5)
  {
    if (v479)
    {
      v69 = GTShaderDebuggerMakeError(1u, @"Internal error: nil request", 0, 0, 0);
LABEL_58:
      v70 = 0;
      v59 = 0;
LABEL_81:
      v92 = 0;
      *v479 = v69;
      goto LABEL_84;
    }

LABEL_59:
    v70 = 0;
    v59 = 0;
LABEL_83:
    v92 = 0;
    goto LABEL_84;
  }

  v6 = [v5 objectForKeyedSubscript:@"ProtocolVersion"];
  v7 = [v6 intValue];

  v8 = v480;
  if (v7)
  {
    goto LABEL_38;
  }

LABEL_8:
  v18 = v8;
  v19 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerFunctionIndex"];
  v20 = [v19 unsignedIntegerValue];

  v21 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerSubCommandIndex"];
  v504 = [v21 unsignedIntegerValue];

  if (v20)
  {
    v22 = *v486;
    v23 = *(*(*v486 + 128) + 24);
    v24 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerFunctionId"];
    v25 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerLibraryId"];
    v26 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerLibraryType"];
    v499 = v20 - 1;
    if ([v26 isEqualToString:@"Online"])
    {
      v27 = (v23 + (v499 << 6));
      AliasStream = GetAliasStream(*(v22 + 24), [v25 unsignedLongLongValue], *v27);
      if (AliasStream)
      {
        v29 = *AliasStream;
      }

      else
      {
        v29 = 0;
      }

      Function = GTMTLSMContext_lastFunction(**(v22 + 40), v29, *v27);
      if (!Function || *(Function + 177) != 2)
      {
        v17 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v30 = StringFromArchive(*v22, v486[23], *(Function + 112));
      v34 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerInstrumentFunctions"];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
      v36 = [v35 stringValue];
      v37 = [v34 objectForKeyedSubscript:v36];

      v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v38 setObject:v30 forKeyedSubscript:@"Code"];
      if ([v37 count])
      {
        [v38 setObject:v37 forKeyedSubscript:@"SelectFunctions"];
      }

      v532 = v25;
      v39 = [v38 copy];
      v533 = v39;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v533 forKeys:&v532 count:1];

      v32 = @"SourceLibs";
    }

    else
    {
      v30 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerInstrumentedMetallib"];
      v532 = v25;
      v533 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v533 forKeys:&v532 count:1];
      v32 = @"MetalLibs";
    }

    v529 = v24;
    v530[0] = v32;
    v530[1] = @"FunctionUIDs";
    v531[0] = v31;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v529 count:1];
    v531[1] = v40;
    v494 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v531 forKeys:v530 count:2];

    v41 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerTraceBufferSize"];
    v42 = [v41 unsignedIntegerValue];

    v43 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerPipelineCreationTimeout"];
    v44 = [v43 unsignedIntegerValue];

    v528[0] = @"TraceBufferSize";
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    v543 = v45;
    v528[1] = @"PSOCompileTimeout";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v44];
    v528[2] = @"SkipMetadataGen";
    v544 = v46;
    v545 = MEMORY[0x277CBEC28];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v543 forKeys:v528 count:3];

    v26 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIType"];
    v47 = [v26 unsignedIntegerValue];
    if (v47 > 1)
    {
      if (v47 != 2)
      {
        if (v47 == 3)
        {
          v490 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIInstanceId"];
          v48 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIAmplificationId"];
          v49 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIPatchIds"];
          *&v535 = @"Type";
          *(&v535 + 1) = @"InstanceID";
          *__dst = &unk_2860D69B0;
          *&__dst[8] = v490;
          *&v536 = @"AmplificationID";
          *(&v536 + 1) = @"PatchIDs";
          *&__dst[16] = v48;
          *&__dst[24] = v49;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v535 count:4];
          goto LABEL_28;
        }

LABEL_29:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "_UpgradeRequest_to_StarSkyE_from_StarSky", 802, 4, "Unknown region of interest type");
        v17 = 0;
LABEL_34:
        v24 = v494;
        goto LABEL_35;
      }

      v490 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionX"];
      v48 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionY"];
      v49 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionX"];
      obj = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionY"];
      v52 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinSampleId"];
      v53 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxSampleId"];
      v54 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIRenderTargetArrayIndex"];
      *&v535 = @"Type";
      *(&v535 + 1) = @"MinPositionX";
      *__dst = &unk_2860D6980;
      *&__dst[8] = v490;
      *&v536 = @"MinPositionY";
      *(&v536 + 1) = @"MaxPositionX";
      *&__dst[16] = v48;
      *&__dst[24] = v49;
      *&v537 = @"MaxPositionY";
      *(&v537 + 1) = @"MinSampleID";
      *&__dst[32] = obj;
      *&__dst[40] = v52;
      *&v538 = @"MaxSampleID";
      *(&v538 + 1) = @"RenderTargetArrayIndex";
      *&__dst[48] = v53;
      *&__dst[56] = v54;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v535 count:8];
    }

    else
    {
      if (v47)
      {
        if (v47 == 1)
        {
          v490 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIInstanceId"];
          v48 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIAmplificationId"];
          v49 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIVertexIds"];
          *&v535 = @"Type";
          *(&v535 + 1) = @"InstanceID";
          *__dst = &unk_2860D6968;
          *&__dst[8] = v490;
          *&v536 = @"AmplificationID";
          *(&v536 + 1) = @"VertexIDs";
          *&__dst[16] = v48;
          *&__dst[24] = v49;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v535 count:4];
LABEL_28:
          v51 = v50;
LABEL_33:

          *&v548 = &unk_2860D6980;
          *&v539 = @"ProtocolVersion";
          *(&v539 + 1) = @"FunctionIndex";
          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v499];
          *(&v548 + 1) = v55;
          *&v540 = @"SubCommandIndex";
          v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v504];
          *&v549 = v56;
          *(&v549 + 1) = v494;
          *(&v540 + 1) = @"Program";
          *&v541 = @"ROI";
          *(&v541 + 1) = @"Options";
          *&v550 = v51;
          *(&v550 + 1) = v25;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v548 forKeys:&v539 count:6];

          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v490 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionX"];
      v48 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionY"];
      v49 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionZ"];
      obj = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionX"];
      v52 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionY"];
      v53 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionZ"];
      *&v535 = @"Type";
      *(&v535 + 1) = @"MinPositionX";
      *__dst = &unk_2860D6998;
      *&__dst[8] = v490;
      *&v536 = @"MinPositionY";
      *(&v536 + 1) = @"MinPositionZ";
      *&__dst[16] = v48;
      *&__dst[24] = v49;
      *&v537 = @"MaxPositionX";
      *(&v537 + 1) = @"MaxPositionY";
      *&__dst[32] = obj;
      *&__dst[40] = v52;
      *&v538 = @"MaxPositionZ";
      *&__dst[48] = v53;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v535 count:7];
    }

    goto LABEL_33;
  }

  v17 = 0;
LABEL_36:

  while (1)
  {
    v57 = v17;

    v58 = [v57 objectForKeyedSubscript:@"ProtocolVersion"];

    v7 = [v58 intValue];
    v8 = v57;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_38:
    if (v7 != 2)
    {
      break;
    }

    v9 = v8;
    v10 = [v9 objectForKeyedSubscript:@"Program"];
    v11 = [v10 mutableCopy];

    v12 = [v11 objectForKeyedSubscript:@"UseGlobalRelocation"];
    if ([v12 BOOLValue])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
    [v11 setObject:v14 forKeyedSubscript:@"TraceBufferBindingType"];

    v15 = [v9 mutableCopy];
    v16 = [v11 copy];
    [v15 setObject:v16 forKeyedSubscript:@"Program"];

    [v15 setObject:&unk_2860D6998 forKeyedSubscript:@"ProtocolVersion"];
    v17 = [v15 copy];
  }

  if (v7 != 3)
  {
      ;
    }
  }

  if (!v8)
  {
    if (v479)
    {
      v69 = GTShaderDebuggerMakeError(1u, @"Internal error: Unexpected request: Upgrade failure", 0, 0, 0);
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v59 = v8;
  v548 = 0u;
  v549 = 0u;
  v550 = 0u;
  v551 = 0u;
  v60 = [&unk_2860D5BD0 countByEnumeratingWithState:&v548 objects:__dst count:16];
  if (v60)
  {
    v61 = *v549;
    while (2)
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v549 != v61)
        {
          objc_enumerationMutation(&unk_2860D5BD0);
        }

        v63 = [v59 objectForKeyedSubscript:*(*(&v548 + 1) + 8 * i)];
        v64 = v63 == 0;

        if (v64)
        {

          goto LABEL_79;
        }
      }

      v60 = [&unk_2860D5BD0 countByEnumeratingWithState:&v548 objects:__dst count:16];
      if (v60)
      {
        continue;
      }

      break;
    }
  }

  v65 = [v59 objectForKeyedSubscript:@"Program"];
  v66 = [v65 objectForKeyedSubscript:@"FunctionUIDs"];
  v67 = v66 == 0;

  if (v67)
  {
    goto LABEL_78;
  }

  v68 = [v65 objectForKeyedSubscript:@"MetalLibs"];
  if (!v68)
  {
    v71 = [v65 objectForKeyedSubscript:@"SourceLibs"];
    v72 = v71 == 0;

    if (!v72)
    {
      goto LABEL_61;
    }

LABEL_78:

    goto LABEL_79;
  }

LABEL_61:
  v73 = [v59 objectForKeyedSubscript:@"ROI"];
  v74 = [v73 objectForKeyedSubscript:@"Type"];
  v75 = v74;
  if (!v74 || (v76 = [v74 unsignedIntegerValue] - 1, v76 > 5))
  {
LABEL_77:

LABEL_79:
    if (v479)
    {
      v69 = GTShaderDebuggerMakeError(1u, @"Internal error: Invalid request", 0, 0, 0);
      v70 = 0;
      goto LABEL_81;
    }

    v70 = 0;
    goto LABEL_83;
  }

  v77 = qword_279658A10[v76];
  v542 = 0u;
  v541 = 0u;
  v540 = 0u;
  v539 = 0u;
  v78 = [v77 countByEnumeratingWithState:&v539 objects:&v535 count:16];
  if (v78)
  {
    v79 = *v540;
LABEL_65:
    v80 = 0;
    while (1)
    {
      if (*v540 != v79)
      {
        objc_enumerationMutation(v77);
      }

      v81 = [v73 objectForKeyedSubscript:*(*(&v539 + 1) + 8 * v80)];
      v82 = v81 == 0;

      if (v82)
      {
        goto LABEL_77;
      }

      if (v78 == ++v80)
      {
        v78 = [v77 countByEnumeratingWithState:&v539 objects:&v535 count:16];
        if (v78)
        {
          goto LABEL_65;
        }

        break;
      }
    }
  }

  v83 = [v59 objectForKeyedSubscript:@"Options"];
  v84 = [v83 objectForKeyedSubscript:@"SkipMetadataGen"];

  v85 = [v84 BOOLValue];
  v86 = [v59 objectForKeyedSubscript:@"Options"];
  v87 = [v86 objectForKeyedSubscript:@"SaveTempsDir"];

  if ([v87 length])
  {
    v88 = v85 ^ 1u | 8;
  }

  else
  {
    v88 = v85 ^ 1u;
  }

  v89 = [v59 objectForKeyedSubscript:@"Program"];
  v90 = [v89 objectForKeyedSubscript:@"TraceBufferBindingType"];

  v91 = [v90 integerValue];
  if (v91 == 2)
  {
    v88 |= 4uLL;
  }

  else if (v91 == 1)
  {
    v88 |= 2uLL;
  }

  v168 = [v486[1] defaultDevice];
  v169 = [v168 supportsFamily:1001];

  if (v169)
  {
    v70 = v88;
  }

  else
  {
    v70 = v88 | 0x10;
  }

  v59 = v59;
  v92 = v59;
LABEL_84:

  if (!v92)
  {
LABEL_144:

    goto LABEL_145;
  }

  v93 = [v92 objectForKeyedSubscript:@"FunctionIndex"];
  v94 = [v93 unsignedIntValue];

  v95 = *(*(*v486 + 128) + 24);
  if (v70)
  {
    if (_IsLLVMDylibLoaded_onceToken != -1)
    {
      dispatch_once(&_IsLLVMDylibLoaded_onceToken, &__block_literal_global_7592);
    }

    if ((_IsLLVMDylibLoaded_llvmLoaded & 1) == 0)
    {
      v101 = [MEMORY[0x277CCA8D8] mainBundle];
      v99 = [v101 infoDictionary];

      v102 = [v99 objectForKeyedSubscript:@"DTPlatformName"];
      v103 = [v99 objectForKeyedSubscript:@"DTPlatformVersion"];
      if ([v102 length] && objc_msgSend(v103, "length"))
      {
        v104 = [&unk_2860D62B8 objectForKeyedSubscript:v102];
        v105 = v104;
        if (v104)
        {
          v106 = [v104 stringByAppendingString:v103];
          v107 = [v106 stringByAppendingString:@" or later"];
        }

        else
        {
          v107 = 0;
        }
      }

      else
      {
        v107 = 0;
      }

      if (v107)
      {
        v154 = v107;
      }

      else
      {
        v154 = @"the latest version available";
      }

      v155 = [@"Please update your target OS to " stringByAppendingString:v154];
      if (v479)
      {
        *v479 = GTShaderDebuggerMakeError(4u, @"Debugging information not available from the target OS", v155, 0, 0);
      }

      goto LABEL_143;
    }
  }

  if ((v70 & 4) == 0)
  {
    goto LABEL_90;
  }

  v99 = [v486[1] defaultDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v99 supportsTLS] || ((objc_opt_respondsToSelector() & 1) == 0 ? (v100 = 1) : (v100 = objc_msgSend(v99, "supportsGlobalVariableRelocationCompute") ^ 1), (objc_opt_respondsToSelector() & 1) == 0 ? (v152 = 1) : (v152 = objc_msgSend(v99, "supportsGlobalVariableRelocationRender") ^ 1), !GTFenum_isComputeCall(*(v95 + (v94 << 6) + 8)) ? (v153 = v152) : (v153 = v100), v153 == 1))
  {
    if (v479)
    {
      *v479 = GTShaderDebuggerMakeError(4u, @"The metal device does not support debugging shaders in pipelines created with multiple metal libraries", 0, 0, 0);
    }

LABEL_143:

    goto LABEL_144;
  }

LABEL_90:
  v96 = [v480 objectForKeyedSubscript:@"Options"];
  v97 = [v96 objectForKeyedSubscript:@"SaveTempsDir"];

  if ([v97 length])
  {
    v98 = v97;
  }

  else
  {
    v98 = NSTemporaryDirectory();
  }

  v108 = v98;
  v109 = [v98 stringByAppendingPathComponent:@"GTMTLReplay_ShaderDebugger"];
  v110 = [MEMORY[0x277CCAA00] defaultManager];
  v527 = 0;
  v111 = [v110 createDirectoryAtPath:v109 withIntermediateDirectories:1 attributes:0 error:&v527];
  v112 = v527;

  if (v111)
  {
    v508 = v486;
    objc_storeStrong(&v523 + 1, v92);
    objc_storeStrong(&v524, v109);
    v525 = v70;
  }

  else if (v479)
  {
    *v479 = GTShaderDebuggerMakeError(1u, @"Internal error", 0, v112, 0);
  }

  if ((v111 & 1) == 0)
  {
    goto LABEL_145;
  }

  v113 = [*(&v523 + 1) objectForKeyedSubscript:@"FunctionIndex"];
  v114 = [v113 unsignedIntValue];

  v115 = [*(&v523 + 1) objectForKeyedSubscript:@"SubCommandIndex"];
  v116 = [v115 unsignedIntValue];

  v117 = v508;
  v118 = (v114 + 1);
  GTMTLReplayController_debugSubCommandResume(v508, v118, v116);
  v119 = *(v508 + 2840);
  if (v119 != 28 && v119 != 70)
  {
    v139 = v119 - 1;
    if (v139 > 0x6D)
    {
      v140 = "Unknown";
    }

    else
    {
      v140 = off_2796593E8[v139];
    }

    v158 = MEMORY[0x277CCACA8];
    v159 = [MEMORY[0x277CCACA8] stringWithUTF8String:v140];
    v160 = [v158 stringWithFormat:@"Unsupported encoder: %@", v159];

    if (v479)
    {
      *v479 = GTShaderDebuggerMakeError(4u, v160, 0, 0, 0);
    }

    goto LABEL_145;
  }

  *(v508 + 5640) = v118;
  *(v117 + 5641) = v116;
  v120 = v508;
  v121 = v508 + 2560;
  v122 = *(v508 + 5640);
  v123 = *(*(*v508 + 128) + 24);
  v124 = [*(&v523 + 1) objectForKeyedSubscript:@"ROI"];
  v125 = [v124 objectForKeyedSubscript:@"Type"];
  v476 = [v125 integerValue];

  v126 = v123 + ((v122 - 1) << 6);
  if (*(v126 + 8) >> 2 != 1073737833)
  {
    v128 = 0;
    goto LABEL_119;
  }

  v127 = apr_palloc(p, 0x148uLL);
  v128 = v127;
  if (v127)
  {
    v127[40] = 0;
    *(v127 + 18) = 0u;
    *(v127 + 19) = 0u;
    *(v127 + 16) = 0u;
    *(v127 + 17) = 0u;
    *(v127 + 14) = 0u;
    *(v127 + 15) = 0u;
    *(v127 + 12) = 0u;
    *(v127 + 13) = 0u;
    *(v127 + 10) = 0u;
    *(v127 + 11) = 0u;
    *(v127 + 8) = 0u;
    *(v127 + 9) = 0u;
    *(v127 + 6) = 0u;
    *(v127 + 7) = 0u;
    *(v127 + 4) = 0u;
    *(v127 + 5) = 0u;
    *(v127 + 2) = 0u;
    *(v127 + 3) = 0u;
    *v127 = 0u;
    *(v127 + 1) = 0u;
  }

  v129 = *v120;
  GTMTLSMContext_indirectCommandBufferResources(__dst, *(*v120 + 5), *v126, p);
  v130 = *&__dst[64];
  v131 = *&__dst[80];
  v132 = *&__dst[32];
  *(v128 + 264) = *&__dst[48];
  *(v128 + 280) = v130;
  *(v128 + 296) = v131;
  v133 = *&__dst[16];
  *(v128 + 216) = *__dst;
  *(v128 + 232) = v133;
  *(v128 + 312) = *&__dst[96];
  *(v128 + 248) = v132;
  *&v537 = 0;
  v536 = 0u;
  v535 = 0u;
  GetExecuteCommandsInBufferArgs(&v535, v126, *(v129 + 2));
  Object = GTMTLSMContext_getObject(**(v129 + 5), v535, *v126);
  GTMTLCreateIndirectCommandEncoder(v128, Object[14]);
  v135 = *(&v536 + 1) + *(v128 + 208) * *(v121 + 521);
  *(v128 + 320) = v135;
  if (*(v508 + 2840) == 70)
  {
    memcpy(__dst, v120 + 31, sizeof(__dst));
    if (GTMTLSMRenderCommandEncoder_loadIndirectCommand((v120 + 31), v128, *(v128 + 320), (v128 + 216)))
    {
      v136 = v120[1];
      v137 = v136;
      if (*(v508 + 2840))
      {
        v138 = v508[25];
      }

      else
      {
        v138 = 0;
      }

      v167 = [v136 renderCommandEncoderForKey:v138];
      GTMTLReplayController_restoreRenderCommandEncoder(v167, __dst, (v120 + 31), v137);

      goto LABEL_119;
    }

LABEL_157:
    if (!v479)
    {
      goto LABEL_145;
    }

    v164 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to decode ICB", 0, 0, 0);
    goto LABEL_159;
  }

  if ((GT_SUPPORT_0 & 0x10) == 0)
  {
    goto LABEL_157;
  }

  memcpy(__dst, v120 + 31, 0x8D0uLL);
  if ((GTMTLSMComputeCommandEncoder_loadIndirectCommand((v120 + 31), v128, v135, (v128 + 216)) & 1) == 0)
  {
    goto LABEL_157;
  }

  v161 = v120[1];
  v162 = v161;
  if (*(v508 + 2840))
  {
    v163 = v508[25];
  }

  else
  {
    v163 = 0;
  }

  v170 = [v161 computeCommandEncoderForKey:v163];
  GTMTLReplayController_restoreComputeCommandEncoder(v170, __dst, (v120 + 31), v162);

LABEL_119:
  v141 = *v126;
  v142 = *(v508 + 2840);
  *&v471 = v128;
  *(&v471 + 1) = v126;
  if (v142 == 70)
  {
    v165 = GTMTLSMContext_getObject(**(*v508 + 40), v508[1099], v141);
    if (!v165)
    {
      goto LABEL_182;
    }

    v166 = v165[7];
    if (!v166)
    {
      goto LABEL_182;
    }

    if (v476 > 3)
    {
      if (v476 != 4)
      {
        if (v476 == 5)
        {
          v145 = (v166 + 40);
          v146 = (v166 + 204);
          v147 = 510;
          v148 = 478;
          v149 = 669;
          v150 = 541;
          v151 = 479;
          goto LABEL_457;
        }

        if (v476 == 6)
        {
          v145 = (v166 + 48);
          v146 = (v166 + 206);
          v147 = 717;
          v148 = 685;
          v149 = 876;
          v150 = 748;
          v151 = 686;
          goto LABEL_457;
        }

LABEL_181:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "_SetCurrentEncoderResourceBindings", 976, 4, "Unreachable");
LABEL_182:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v491 = 0;
        v495 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 1;
        goto LABEL_183;
      }
    }

    else if (v476 != 1)
    {
      if (v476 == 2)
      {
        v145 = (v166 + 32);
        v146 = (v166 + 200);
        v147 = 303;
        v148 = 271;
        v149 = 462;
        v150 = 334;
        v151 = 272;
        goto LABEL_457;
      }

      if (v476 == 3)
      {
        v145 = (v166 + 56);
        v146 = (v166 + 202);
        v147 = 924;
        v148 = 892;
        v149 = 1083;
        v150 = 955;
        v151 = 893;
        goto LABEL_457;
      }

      goto LABEL_181;
    }

    v145 = (v166 + 24);
    v146 = (v166 + 198);
    v147 = 65;
    v148 = 32;
    v149 = 255;
    v150 = 127;
    v151 = 34;
    goto LABEL_457;
  }

  if (v142 != 28)
  {
    goto LABEL_182;
  }

  v143 = GTMTLSMContext_getObject(**(*v508 + 40), v508[32], v141);
  if (!v143)
  {
    goto LABEL_182;
  }

  v144 = v143[8];
  if (!v144)
  {
    goto LABEL_182;
  }

  v145 = (v144 + 32);
  v146 = (v144 + 94);
  v147 = 66;
  v148 = 33;
  v149 = 256;
  v150 = 128;
  v151 = 35;
LABEL_457:
  v177 = 0;
  v410 = *v146;
  v171 = &v508[v151];
  v172 = &v508[v150];
  v173 = &v508[v149];
  v491 = &v508[v147];
  v495 = &v508[v148];
  v176 = 16;
  v175 = 128;
  v174 = 31;
  if (*v146)
  {
    v411 = *v145;
    if (*v145)
    {
      v487 = objc_alloc_init(MEMORY[0x277CBEB38]);
      obja = objc_alloc_init(MEMORY[0x277CBEB38]);
      v505 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v500 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v412 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v470 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v413 = (v411 + 18);
      while (1)
      {
        v414 = *(v413 - 2);
        if (v414 > 2)
        {
          if (v414 == 3)
          {
            v415 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v173[*v413]];
            v416 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v413];
            [v500 setObject:v415 forKeyedSubscript:v416];
            goto LABEL_471;
          }

          if (v414 == 24)
          {
            v415 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v171[*v413]];
            v416 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v413];
            [v412 setObject:v415 forKeyedSubscript:v416];
            goto LABEL_471;
          }
        }

        else
        {
          if (!*(v413 - 2))
          {
            v417 = *v413;
            v418 = v171[v417];
            if ((*(v495 + ((v417 >> 3) & 0x18)) >> v417))
            {
              v419 = v491[v417];
              v415 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v418];
              *__dst = v415;
              v416 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v419];
              *&__dst[8] = v416;
              v420 = [MEMORY[0x277CBEA60] arrayWithObjects:__dst count:2];
              v421 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v413];
              [v487 setObject:v420 forKeyedSubscript:v421];
            }

            else
            {
              v415 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v418];
              v416 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v413];
              [obja setObject:v415 forKeyedSubscript:v416];
            }

            goto LABEL_471;
          }

          if (v414 == 2)
          {
            v415 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v172[*v413]];
            v416 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v413];
            [v505 setObject:v415 forKeyedSubscript:v416];
LABEL_471:
          }
        }

        v413 += 56;
        if (!--v410)
        {
          v422 = [v487 copy];
          v423 = v510;
          *&v510 = v422;

          v424 = [obja copy];
          v425 = *(&v510 + 1);
          *(&v510 + 1) = v424;

          v426 = [v505 copy];
          v427 = v511;
          *&v511 = v426;

          v428 = [v500 copy];
          v429 = *(&v511 + 1);
          *(&v511 + 1) = v428;

          v430 = [v412 copy];
          v431 = v512;
          *&v512 = v430;

          v432 = [v470 copy];
          v433 = *(&v512 + 1);
          *(&v512 + 1) = v432;

          v492 = 0;
          goto LABEL_200;
        }
      }
    }
  }

LABEL_183:
  v487 = objc_alloc_init(MEMORY[0x277CBEB38]);
  obja = objc_alloc_init(MEMORY[0x277CBEB38]);
  v505 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v500 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((v177 & 1) == 0)
  {
    v178 = 0;
    do
    {
      if (v172[v178])
      {
        v179 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v180 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v178];
        [v505 setObject:v179 forKeyedSubscript:v180];
      }

      ++v178;
    }

    while (v175 != v178);
    v181 = 0;
    do
    {
      if (v173[v181])
      {
        v182 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v183 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v181];
        [v500 setObject:v182 forKeyedSubscript:v183];
      }

      ++v181;
    }

    while (v176 != v181);
    v184 = 0;
    do
    {
      if (v171[v184])
      {
        if ((v495[v184 >> 6] >> v184))
        {
          v185 = v491[v184];
          v186 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
          *__dst = v186;
          v187 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v185];
          *&__dst[8] = v187;
          v188 = [MEMORY[0x277CBEA60] arrayWithObjects:__dst count:2];
          v189 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v184];
          [v487 setObject:v188 forKeyedSubscript:v189];
        }

        else
        {
          v186 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
          v187 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v184];
          [obja setObject:v186 forKeyedSubscript:v187];
        }
      }

      ++v184;
    }

    while (v174 != v184);
  }

  v190 = [v487 copy];
  v191 = v510;
  *&v510 = v190;

  v192 = [obja copy];
  v193 = *(&v510 + 1);
  *(&v510 + 1) = v192;

  v194 = [v505 copy];
  v195 = v511;
  *&v511 = v194;

  v196 = [v500 copy];
  v197 = *(&v511 + 1);
  *(&v511 + 1) = v196;

  v198 = v512;
  v199 = MEMORY[0x277CBEC10];
  *&v512 = MEMORY[0x277CBEC10];

  v200 = *(&v512 + 1);
  *(&v512 + 1) = v199;

  v492 = [obja count] != 0;
LABEL_200:

  v201 = *v508;
  InclusiveRange = GroupBuilder_findInclusiveRange(*(*(*v508 + 120) + 12), *(*(*v508 + 120) + 24), *(v508 + 5640));
  if (InclusiveRange)
  {
    while (1)
    {
      ConstructorType = GTFenum_getConstructorType(InclusiveRange[5]);
      isMTLCommandEncoder = GTFenum_isMTLCommandEncoder(ConstructorType);
      if (isMTLCommandEncoder)
      {
        break;
      }

      v205 = InclusiveRange[2];
      if (v205)
      {
        InclusiveRange -= 6 * v205;
      }

      else
      {
        InclusiveRange = 0;
      }

      if (!v205)
      {
        InclusiveRange = 0;
        break;
      }
    }

    v206 = !isMTLCommandEncoder;
  }

  else
  {
    v206 = 1;
  }

  v496 = v201;
  if (v492)
  {
    v501 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objb = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    objb = 0;
    v501 = 0;
  }

  v207 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v506 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ((v206 & 1) == 0)
  {
    v208 = *InclusiveRange;
    v209 = v208 + 1;
    if (v208 + 1 < InclusiveRange[1])
    {
      v488 = 0;
      v210 = (0x10080104020100uLL >> (8 * v476)) & 0x1F;
      if (v476 >= 7)
      {
        v210 = 0;
      }

      v467 = v210;
      while (1)
      {
        v211 = *(*(v496 + 128) + 24) + (v209 << 6);
        v212 = *(v211 + 8);
        if (v212 <= -16043)
        {
          if (v212 <= -16046)
          {
            if (v212 == -16047)
            {
LABEL_229:
              v218 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*(GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16)) + 1)}];
              [v207 addObject:v218];

              goto LABEL_258;
            }

            if (v212 == -16046)
            {
              v219 = GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16));
              v220 = GTTraceFunc_argumentBytesWithMap(v211, v219[24], *(v496 + 16));
              if (*(v219 + 1))
              {
                v221 = v220;
                v222 = 0;
                do
                {
                  v223 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v221[8 * v222]];
                  [v207 addObject:v223];

                  ++v222;
                }

                while (v222 < *(v219 + 1));
              }
            }
          }

          else
          {
            if (v212 == -16045)
            {
LABEL_245:
              v229 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*(GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16)) + 1)}];
              [v506 addObject:v229];

              goto LABEL_258;
            }

            if (v212 != -16044)
            {
              goto LABEL_229;
            }

            v224 = GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16));
            v225 = GTTraceFunc_argumentBytesWithMap(v211, v224[16], *(v496 + 16));
            if (*(v224 + 1))
            {
              v226 = v225;
              v227 = 0;
              do
              {
                v228 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v226[8 * v227]];
                [v506 addObject:v228];

                ++v227;
              }

              while (v227 < *(v224 + 1));
            }
          }
        }

        else if (v212 > -15820)
        {
          switch(v212)
          {
            case -15819:
              v241 = GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16));
              if ((*(v241 + 3) & v467) != 0)
              {
                v242 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v241 + 1)];
                [v207 addObject:v242];
              }

              break;
            case -15818:
              v230 = GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16));
              if ((*(v230 + 3) & v467) != 0)
              {
                v231 = v230;
                v232 = GTTraceFunc_argumentBytesWithMap(v211, v230[32], *(v496 + 16));
                if (*(v231 + 1))
                {
                  v233 = v232;
                  v234 = 0;
                  do
                  {
                    v235 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v233[8 * v234]];
                    [v207 addObject:v235];

                    ++v234;
                  }

                  while (v234 < *(v231 + 1));
                }
              }

              break;
            case -15732:
              v488 = *(GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16)) + 2) != 0;
              break;
          }
        }

        else
        {
          switch(v212)
          {
            case -16042:
              v236 = GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16));
              v237 = GTTraceFunc_argumentBytesWithMap(v211, v236[24], *(v496 + 16));
              if (*(v236 + 1))
              {
                v238 = v237;
                v239 = 0;
                do
                {
                  v240 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v238[8 * v239]];
                  [v207 addObject:v240];

                  ++v239;
                }

                while (v239 < *(v236 + 1));
              }

              break;
            case -16041:
              goto LABEL_245;
            case -16040:
              v213 = GTTraceFunc_argumentBytesWithMap((*(*(v496 + 128) + 24) + (v209 << 6)), *(v211 + 13), *(v496 + 16));
              v214 = GTTraceFunc_argumentBytesWithMap(v211, v213[16], *(v496 + 16));
              if (*(v213 + 1))
              {
                v215 = v214;
                v216 = 0;
                do
                {
                  v217 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v215[8 * v216]];
                  [v506 addObject:v217];

                  ++v216;
                }

                while (v216 < *(v213 + 1));
              }

              break;
          }
        }

LABEL_258:
        if (v492)
        {
          v243 = *(v211 + 8);
          if (v243 > -15452)
          {
            if (v243 <= -15447)
            {
              if (v243 == -15451)
              {
LABEL_275:
                if (v476 != 3)
                {
                  goto LABEL_295;
                }
              }

              else
              {
                if (v243 != -15450 || v476 != 3)
                {
                  goto LABEL_295;
                }

                v252 = GTTraceFunc_argumentBytesWithMap(v211, *(v211 + 13), *(v496 + 16));
                v253 = GTTraceFunc_argumentBytesWithMap(v211, v252[24], *(v496 + 16));
                v254 = *(v252 + 2);
                if (v254)
                {
                  v255 = v253;
                  v256 = *(v252 + 1);
                  do
                  {
                    v257 = *v255;
                    v255 += 8;
                    v258 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v257];
                    v259 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v256];
                    [v501 setObject:v258 forKeyedSubscript:v259];

                    ++v256;
                    --v254;
                  }

                  while (v254);
                  goto LABEL_275;
                }
              }

LABEL_294:
              v276 = GTTraceFunc_argumentBytesWithMap(v211, *(v211 + 13), *(v496 + 16));
              v277 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v276 + 1)];
              v278 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v276 + 2)];
              [v501 setObject:v277 forKeyedSubscript:v278];

              goto LABEL_295;
            }

            if (v243 != -15446)
            {
              if (v243 == -15445 && v476 == 1)
              {
                v268 = GTTraceFunc_argumentBytesWithMap(v211, *(v211 + 13), *(v496 + 16));
                v269 = GTTraceFunc_argumentBytesWithMap(v211, v268[24], *(v496 + 16));
                v270 = *(v268 + 2);
                if (v270)
                {
                  v271 = v269;
                  v272 = *(v268 + 1);
                  do
                  {
                    v273 = *v271;
                    v271 += 8;
                    v274 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v273];
                    v275 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v272];
                    [v501 setObject:v274 forKeyedSubscript:v275];

                    ++v272;
                    --v270;
                  }

                  while (v270);
                }
              }

              goto LABEL_295;
            }

            if (v476 == 1)
            {
              goto LABEL_294;
            }
          }

          else
          {
            if (v243 <= -15457)
            {
              if (v243 != -15581)
              {
                if (v243 == -15580 && v476 == 3)
                {
                  v244 = GTTraceFunc_argumentBytesWithMap(v211, *(v211 + 13), *(v496 + 16));
                  v245 = GTTraceFunc_argumentBytesWithMap(v211, v244[24], *(v496 + 16));
                  v246 = *(v244 + 2);
                  if (v246)
                  {
                    v247 = v245;
                    v248 = *(v244 + 1);
                    do
                    {
                      v249 = *v247;
                      v247 += 8;
                      v250 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v249];
                      v251 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v248];
                      [v501 setObject:v250 forKeyedSubscript:v251];

                      ++v248;
                      --v246;
                    }

                    while (v246);
                  }
                }

                goto LABEL_295;
              }

              goto LABEL_275;
            }

            if (v243 != -15456)
            {
              if (v243 == -15455 && v476 == 2)
              {
                v260 = GTTraceFunc_argumentBytesWithMap(v211, *(v211 + 13), *(v496 + 16));
                v261 = GTTraceFunc_argumentBytesWithMap(v211, v260[24], *(v496 + 16));
                v262 = *(v260 + 2);
                if (v262)
                {
                  v263 = v261;
                  v264 = *(v260 + 1);
                  do
                  {
                    v265 = *v263;
                    v263 += 8;
                    v266 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v265];
                    v267 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v264];
                    [v501 setObject:v266 forKeyedSubscript:v267];

                    ++v264;
                    --v262;
                  }

                  while (v262);
                }
              }

              goto LABEL_295;
            }

            if (v476 == 2)
            {
              goto LABEL_294;
            }
          }
        }

LABEL_295:
        if (++v209 >= InclusiveRange[1])
        {
          goto LABEL_298;
        }
      }
    }
  }

  v488 = 0;
LABEL_298:
  if (v492 && ([v501 count] || objc_msgSend(objb, "count")))
  {
    v279 = [*(&v510 + 1) mutableCopy];
    v550 = 0u;
    v551 = 0u;
    v548 = 0u;
    v549 = 0u;
    v280 = v501;
    v281 = [v280 countByEnumeratingWithState:&v548 objects:__dst count:16];
    if (v281)
    {
      v282 = *v549;
      do
      {
        for (j = 0; j != v281; ++j)
        {
          if (*v549 != v282)
          {
            objc_enumerationMutation(v280);
          }

          [v279 removeObjectForKey:*(*(&v548 + 1) + 8 * j)];
        }

        v281 = [v280 countByEnumeratingWithState:&v548 objects:__dst count:16];
      }

      while (v281);
    }

    v542 = 0u;
    v541 = 0u;
    v540 = 0u;
    v539 = 0u;
    v284 = objb;
    v285 = [v284 countByEnumeratingWithState:&v539 objects:&v535 count:16];
    if (v285)
    {
      v286 = *v540;
      do
      {
        for (k = 0; k != v285; ++k)
        {
          if (*v540 != v286)
          {
            objc_enumerationMutation(v284);
          }

          [v279 removeObjectForKey:*(*(&v539 + 1) + 8 * k)];
        }

        v285 = [v284 countByEnumeratingWithState:&v539 objects:&v535 count:16];
      }

      while (v285);
    }

    v288 = [v279 copy];
    v289 = *(&v510 + 1);
    *(&v510 + 1) = v288;

    v290 = [v280 copy];
    v291 = v512;
    *&v512 = v290;

    v292 = [v284 copy];
    v293 = *(&v512 + 1);
    *(&v512 + 1) = v292;
  }

  v294 = [v506 array];
  v295 = v509;
  *&v509 = v294;

  v296 = [v207 array];
  v297 = *(&v509 + 1);
  *(&v509 + 1) = v296;

  v513 = v513 & 0xFE | v488;
  v514 = v471;
  v493 = [*(&v523 + 1) objectForKeyedSubscript:@"Program"];
  v489 = [v493 objectForKeyedSubscript:@"Stitching"];
  if ([v489 count])
  {
    v507 = v489;
    v497 = [v515 copy];
    v502 = [v507 objectForKeyedSubscript:@"DAGMetalLibs"];
    if ((GTShaderDebuggerMakeRuntimeLibrariesFromMetallibs(&v508, v502, v479) & 1) == 0)
    {
      v320 = [v497 copy];
      v321 = v515;
      v515 = v320;

      goto LABEL_447;
    }

    v477 = [v507 objectForKeyedSubscript:@"DAGFunctionUIDs"];
    if ((GTShaderDebuggerMakeRuntimeFunctions(&v508, v477, v479) & 1) == 0)
    {
      v322 = [v497 copy];
      v323 = v515;
      v515 = v322;

      goto LABEL_447;
    }

    v298 = [v515 copy];
    v299 = [v497 allKeys];
    v300 = [v298 allKeys];
    v301 = [v300 mutableCopy];

    [v301 removeObjectsInArray:v299];
    v468 = [v301 copy];

    v302 = [v507 objectForKeyedSubscript:@"LibraryUIDs"];
    v472 = [v515 mutableCopy];
    v474 = [v508[1] defaultDevice];
    v303 = *(*v508 + 40);
    v304 = **(&v514 + 1);
    v535 = 0u;
    v536 = 0u;
    v537 = 0u;
    v538 = 0u;
    objc = v302;
    v305 = [objc countByEnumeratingWithState:&v535 objects:__dst count:16];
    if (v305)
    {
      v306 = *v536;
LABEL_321:
      v307 = 0;
      while (1)
      {
        if (*v536 != v306)
        {
          objc_enumerationMutation(objc);
        }

        v308 = *(*(&v535 + 1) + 8 * v307);
        v309 = _ObjectUIDsWithAliasID(&v508, [v308 unsignedLongLongValue]);
        if (![v309 count])
        {
          v324 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Library '%@' not found", v308];
          if (v479)
          {
            *v479 = GTShaderDebuggerMakeError(1u, v324, 0, 0, 0);
          }

          goto LABEL_346;
        }

        v310 = [v309 firstObject];
        v311 = GTMTLSMContext_lastFunction(*v303, [v310 unsignedLongLongValue], v304);

        if (!v311)
        {
          break;
        }

        if (*(v311 + 177) != 6)
        {
          v324 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unexpected library data type (%d)", *(v311 + 177)];
          if (v479)
          {
            *v479 = GTShaderDebuggerMakeError(1u, v324, 0, 0, 0);
          }

LABEL_346:

LABEL_355:
LABEL_356:
          v319 = 0;
          v318 = objc;
          goto LABEL_357;
        }

        v312 = *(v311 + 88);
        if (!v312)
        {
          if (v479)
          {
            v325 = *(v311 + 96);
            if (v325)
            {
              v326 = @"[MTLDevice newLibraryWithDAG:functions:error:] is not supported";
            }

            else
            {
              v326 = @"Internal error: Failed to read stitched library descriptor";
            }

            if (v325)
            {
              v327 = 4;
            }

            else
            {
              v327 = 1;
            }

            *v479 = GTShaderDebuggerMakeError(v327, v326, 0, 0, 0);
          }

          goto LABEL_355;
        }

        v313 = MakeMTLStitchedLibraryDescriptor(v312, v515);
        *&v548 = 0;
        v314 = [v474 newLibraryWithStitchedDescriptor:v313 error:&v548];
        v315 = v548;
        if (v314)
        {
          v316 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v311 + 8)];
          [v472 setObject:v314 forKeyedSubscript:v316];
        }

        else if (v479)
        {
          *v479 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up runtime stitched library", 0, v315, 0);
        }

        if (!v314)
        {
          goto LABEL_356;
        }

        if (v305 == ++v307)
        {
          v305 = [objc countByEnumeratingWithState:&v535 objects:__dst count:16];
          if (v305)
          {
            goto LABEL_321;
          }

          goto LABEL_335;
        }
      }

      v324 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Library '%@' not found", v308];
      if (v479)
      {
        *v479 = GTShaderDebuggerMakeError(1u, v324, 0, 0, 0);
      }

      goto LABEL_346;
    }

LABEL_335:

    v317 = [v472 copy];
    v318 = v515;
    v515 = v317;
    v319 = 1;
LABEL_357:

    v328 = [v515 mutableCopy];
    [v328 removeObjectsForKeys:v468];
    v329 = [v328 copy];
    v330 = v515;
    v515 = v329;

    if (!v319)
    {
      goto LABEL_448;
    }
  }

  v465 = [v493 objectForKeyedSubscript:@"SourceLibs"];
  if ([v465 count])
  {
    v507 = v465;
    v475 = [v507 count];
    if (!v475)
    {
      if (v479)
      {
        *v479 = GTShaderDebuggerMakeError(4u, @"No source", 0, 0, 0);
      }

      goto LABEL_447;
    }

    v455 = v508[1];
    v469 = [v455 defaultDevice];
    v464 = [v469 argumentBuffersSupport];
    v457 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v458 = [v515 mutableCopy];
    v331 = [v455 dynamicLibraries];
    v461 = [v331 mutableCopy];

    v466 = v475 - 1;
    v332 = (v525 >> 2) & 1;
    if (v475 != 1)
    {
      LODWORD(v332) = 1;
    }

    v463 = v332;
    v333 = *(&v514 + 1);
    v334 = *(*v508 + 40);
    v473 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v507, "count")}];
    v478 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v507, "count")}];
    v550 = 0u;
    v551 = 0u;
    v548 = 0u;
    v549 = 0u;
    v507 = v507;
    v335 = [v507 countByEnumeratingWithState:&v548 objects:__dst count:16];
    if (v335)
    {
      v336 = *v549;
LABEL_364:
      v337 = 0;
      while (1)
      {
        if (*v549 != v336)
        {
          objc_enumerationMutation(v507);
        }

        v338 = *(*(&v548 + 1) + 8 * v337);
        v339 = MEMORY[0x277CCABB0];
        v340 = [v338 unsignedIntegerValue];
        v341 = GetAliasStream(*(*v508 + 24), v340, **(&v514 + 1));
        v342 = v341 ? *v341 : 0;
        v343 = [v339 numberWithUnsignedLongLong:v342];
        v344 = GTMTLSMContext_lastFunction(*v334, [v343 unsignedLongLongValue], *v333);
        if (!v344 || *(v344 + 177) != 2)
        {
          break;
        }

        v345 = [MEMORY[0x277CCAE60] valueWithPointer:v344];
        [v473 setObject:v345 forKeyedSubscript:v343];

        [v478 setObject:v338 forKeyedSubscript:v343];
        if (v335 == ++v337)
        {
          v335 = [v507 countByEnumeratingWithState:&v548 objects:__dst count:16];
          if (!v335)
          {
            goto LABEL_374;
          }

          goto LABEL_364;
        }
      }

      v394 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid library %@: Expected library with source", v343];
      if (v479)
      {
        *v479 = GTShaderDebuggerMakeError(4u, v394, 0, 0, 0);
      }

      v359 = 0;
      v395 = 0;
      v396 = v507;
LABEL_436:

      if (v395)
      {
        goto LABEL_437;
      }

LABEL_447:

LABEL_448:
      goto LABEL_145;
    }

LABEL_374:

    v346 = [v473 allKeys];
    v543 = MEMORY[0x277D85DD0];
    v544 = 3221225472;
    v545 = __GTShaderDebuggerMakeRuntimeLibrariesFromSources_block_invoke;
    v546 = &unk_2796589A0;
    v460 = v473;
    v547 = v460;
    v347 = [v346 sortedArrayUsingComparator:&v543];

    v542 = 0u;
    v541 = 0u;
    v540 = 0u;
    v539 = 0u;
    v456 = v347;
    v462 = [v456 countByEnumeratingWithState:&v539 objects:&v535 count:16];
    if (!v462)
    {
      v503 = 0;
LABEL_433:

      v398 = [v458 copy];
      v399 = v515;
      v515 = v398;

      v400 = [v457 copy];
      v397 = v516;
      *&v516 = v400;
      v395 = 1;
LABEL_434:
      v359 = v503;
LABEL_435:

      v396 = v547;
      goto LABEL_436;
    }

    v503 = 0;
    v459 = *v540;
LABEL_376:
    v348 = 0;
    while (1)
    {
      if (*v540 != v459)
      {
        objc_enumerationMutation(v456);
      }

      v349 = *(*(&v539 + 1) + 8 * v348);
      objd = [v478 objectForKeyedSubscript:v349];
      v350 = [v460 objectForKeyedSubscript:v349];
      v351 = [v350 pointerValue];

      v498 = [v507 objectForKeyedSubscript:objd];
      v352 = [v498 objectForKeyedSubscript:@"Code"];
      if (v475 == 1)
      {
        [v457 setObject:v352 forKeyedSubscript:@"/program_source"];
        goto LABEL_388;
      }

      v353 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v354 = [v352 rangeOfCharacterFromSet:v353];

      if (v354 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_381;
      }

      v358 = [v352 substringToIndex:v354];
      if (([v358 containsString:@"#line"] & 1) == 0 && (objc_msgSend(v358, "containsString:", @"# line") & 1) == 0)
      {
        break;
      }

      v359 = v503;
LABEL_387:

      v503 = v359;
LABEL_388:
      v362 = *(v351 + 120);
      if (v362)
      {
        v363 = MakeMTLCompileOptions(v362, v461);
      }

      else
      {
        v363 = objc_alloc_init(MEMORY[0x277CD6D10]);
      }

      v364 = v363;
      v365 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v366 = [v364 additionalCompilerArguments];
      v367 = [v366 length];

      if (v367)
      {
        v368 = [v364 additionalCompilerArguments];
        [v365 addObject:v368];
      }

      if (v475 == 1)
      {
        [v365 addObject:@"-fno-tracepoint-instrument-line-markers"];
      }

      v369 = [v498 objectForKeyedSubscript:@"SelectFunctions"];
      if (v369)
      {
        [v365 addObject:@"-fno-tracepoint-default-instrument"];
        v370 = [v369 componentsJoinedByString:{@", "}];
        v371 = [@"-ftracepoint-instrument-functions=" stringByAppendingString:v370];
        [v365 addObject:v371];
      }

      if (!v464)
      {
        [v365 addObject:@"-fno-tracepoint-instrument-argument-buffers"];
      }

      if (v463)
      {
        [v365 addObject:@"-dynamic-libtracepoint"];
        [v365 addObject:{@"-Wl, -mllvm"}];
        [v365 addObject:{@"-Wl, -disable-legacy-trace-buffer"}];
        [v365 addObject:@"-fexternally-initialized"];
        [v365 addObject:{@"-Wl, -mllvm"}];
        [v365 addObject:{@"-Wl, -external-initialization"}];
        [v365 addObject:{@"-Wl, -mllvm"}];
        v372 = [MEMORY[0x277CCABB0] numberWithInteger:v466];
        v373 = [v372 stringValue];
        v374 = [@"-Wl __trace.base_id="];
        [v365 addObject:v374];

        --v466;
      }

      [v364 setTracingEnabled:1];
      v375 = [v365 componentsJoinedByString:@" "];
      [v364 setAdditionalCompilerArguments:v375];

      if (*(v351 + 176) == 1)
      {
        [v364 setLibraryType:1];
        v376 = v524;
        v377 = [v349 stringValue];
        v378 = [v377 stringByAppendingPathExtension:@"metallib"];
        v379 = [v376 stringByAppendingPathComponent:v378];
        [v364 setInstallName:v379];
      }

      v531[0] = v503;
      v380 = [v469 newLibraryWithSource:v352 options:v364 error:v531];
      v381 = v531[0];

      if (!v380)
      {
        if (v479)
        {
          GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up main function", 0, v381, 0);
          *v479 = v390 = 0;
        }

        else
        {
          v390 = 0;
        }

        goto LABEL_412;
      }

      if (*(v351 + 176) != 1)
      {
        v391 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v351 + 8)];
        [v458 setObject:v380 forKeyedSubscript:v391];

        v390 = 1;
LABEL_412:
        v503 = v381;
        goto LABEL_413;
      }

      v530[0] = v381;
      v382 = [v469 newDynamicLibrary:v380 error:v530];
      v503 = v530[0];

      if (v382)
      {
        DylibObjectIDForParentLibrary = _FindDylibObjectIDForParentLibrary(&v508, v351, v383, v384);
        if (!DylibObjectIDForParentLibrary)
        {
          v392 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to resolve dynamic library %@", v349];
          if (v479)
          {
            *v479 = GTShaderDebuggerMakeError(1u, v392, 0, 0, 0);
          }

LABEL_421:
          v390 = 0;
          goto LABEL_413;
        }

        v386 = DylibObjectIDForParentLibrary;
        v387 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:DylibObjectIDForParentLibrary];
        [v458 setObject:v382 forKeyedSubscript:v387];

        v388 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v351 + 8)];
        [v458 setObject:v380 forKeyedSubscript:v388];

        v389 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v386];
        [v461 setObject:v382 forKeyedSubscript:v389];

        v390 = 1;
      }

      else
      {
        if (!v479)
        {
          goto LABEL_421;
        }

        GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up dynamic library", 0, v503, 0);
        *v479 = v390 = 0;
      }

LABEL_413:

      if (!v390)
      {
        v395 = 0;
        v397 = v456;
        goto LABEL_434;
      }

      if (v462 == ++v348)
      {
        v393 = [v456 countByEnumeratingWithState:&v539 objects:&v535 count:16];
        v462 = v393;
        if (v393)
        {
          goto LABEL_376;
        }

        goto LABEL_433;
      }
    }

LABEL_381:
    v355 = v524;
    v356 = [v349 stringValue];
    v357 = [v356 stringByAppendingPathExtension:@"metal"];
    v358 = [v355 stringByAppendingPathComponent:v357];

    v528[0] = v503;
    LODWORD(v356) = [v352 writeToFile:v358 atomically:1 encoding:4 error:v528];
    v359 = v528[0];

    if (!v356)
    {

      if (v479)
      {
        *v479 = GTShaderDebuggerMakeError(1u, @"Internal error trying to disambiguate libraries", 0, v359, 0);
      }

      v395 = 0;
      v397 = v456;
      goto LABEL_435;
    }

    v360 = [MEMORY[0x277CCACA8] stringWithFormat:@"#line 1 %@\n", v358];
    v361 = [v360 stringByAppendingString:v352];

    v352 = v361;
    goto LABEL_387;
  }

LABEL_437:
  v401 = [v493 objectForKeyedSubscript:@"MetalLibs"];
  if ([v401 count] && !GTShaderDebuggerMakeRuntimeLibrariesFromMetallibs(&v508, v401, v479))
  {
    goto LABEL_446;
  }

  v402 = [v493 objectForKeyedSubscript:@"DependentLibs"];
  if ([v402 count] && !GTShaderDebuggerMakeRuntimeLibrariesFromDependentLibs(&v508, v402, v479))
  {
LABEL_445:

LABEL_446:
    v507 = v465;
    goto LABEL_447;
  }

  v403 = [v493 objectForKeyedSubscript:@"FunctionUIDs"];
  if (!GTShaderDebuggerMakeRuntimeFunctions(&v508, v403, v479))
  {

    goto LABEL_445;
  }

  if (v401)
  {
    [v401 allKeys];
  }

  else
  {
    [v465 allKeys];
  }
  v404 = ;
  DebugMetadata = GTShaderDebuggerMakeDebugMetadata(&v508, v403, v404, v479);

  if ((DebugMetadata & 1) == 0 || !GTShaderDebuggerMakeTraceBuffer(&v508, v479))
  {
    goto LABEL_145;
  }

  v408 = *(v508 + 2840);
  if (v408 != 70)
  {
    if (v408 == 28)
    {
      PSOCompute = GTShaderDebuggerMakePSOCompute(&v508, v479, v406, v407);
      goto LABEL_478;
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger.m", "GTMTLShaderDebugger_makePipelineState", 140, 4, "Unreachable");
    if (!v479)
    {
      goto LABEL_145;
    }

    v164 = GTShaderDebuggerMakeError(1u, @"Internal error: Unknown encoder", 0, 0, 0);
LABEL_159:
    *v479 = v164;
    goto LABEL_145;
  }

  PSOCompute = GTShaderDebuggerMakePSORender(&v508, v479);
LABEL_478:
  if (!PSOCompute)
  {
    goto LABEL_145;
  }

  GTShaderDebuggerJITResources(&v508);
  v434 = v508;
  v435 = *(v508 + 2840);
  if (v435 == 28)
  {
    if (GTShaderDebuggerEncodeResourcesCompute(&v508, v479))
    {
      goto LABEL_486;
    }

LABEL_145:
    GTShaderDebuggerContextDeinit(&v508);
    v156 = 0;
    goto LABEL_146;
  }

  if (v435 == 70 && (GTShaderDebuggerEncodeResourcesRender(&v508, v479) & 1) == 0)
  {
    goto LABEL_145;
  }

LABEL_486:
  if (!GTShaderDebuggerExecuteEncoder(&v508, v479))
  {
    goto LABEL_145;
  }

  v436 = v434[1];
  *&v548 = 0;
  *(&v548 + 1) = &v548;
  *&v549 = 0x2020000000;
  BYTE8(v549) = 0;
  *__dst = 0;
  *&__dst[8] = __dst;
  *&__dst[16] = 0x3032000000;
  *&__dst[24] = __Block_byref_object_copy__454;
  *&__dst[32] = __Block_byref_object_dispose__455;
  *&__dst[40] = 0;
  v437 = [v436 commandBufferForKey:v434[29]];
  *&v535 = MEMORY[0x277D85DD0];
  *(&v535 + 1) = 3221225472;
  *&v536 = __GTMTLShaderDebugger_executeCommandEncoder_block_invoke;
  *(&v536 + 1) = &unk_2796574F8;
  *&v537 = __dst;
  *(&v537 + 1) = &v548;
  [v437 addCompletedHandler:&v535];

  [v436 commitCommandBuffers];
  v438 = [v434[1] defaultCommandQueue];
  [v438 finish];

  if (*(*(&v548 + 1) + 24) == 1)
  {
    v439 = [*(*&__dst[8] + 40) code];
    if (v439 != 9 && v439 != 3 || GTShaderDebuggerValidateUserEncoderBindings(&v508, v479))
    {
      v440 = [*(*&__dst[8] + 40) localizedDescription];
      v441 = [@"Internal error: Problem encountered during execution: " stringByAppendingString:v440];

      if (v479)
      {
        if ((v525 & 0x10) != 0)
        {
          v442 = 4;
        }

        else
        {
          v442 = 3;
        }

        *v479 = GTShaderDebuggerMakeError(v442, v441, 0, *(*&__dst[8] + 40), 0);
      }
    }

    _Block_object_dispose(__dst, 8);

    _Block_object_dispose(&v548, 8);
    goto LABEL_145;
  }

  _Block_object_dispose(__dst, 8);

  _Block_object_dispose(&v548, 8);
  v443 = v480;
  *&v548 = 0;
  v444 = GTShaderDebuggerMakeTraceData(&v508, &v548);
  v445 = v548;
  v446 = v445;
  if (v444)
  {
    v447 = MEMORY[0x277CBEB38];
    *__dst = v444;
    *&v535 = @"TraceData";
    *(&v535 + 1) = @"ResourceMapping";
    v448 = GTShaderDebuggerMakeResourceMappings(&v508);
    *&__dst[8] = v448;
    v449 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v535 count:2];
    v450 = [v447 dictionaryWithDictionary:v449];

    v451 = v520;
    if (v451)
    {
      [v450 setObject:v451 forKeyedSubscript:@"TraceMetadata"];
    }

    v156 = GTShaderDebuggerSanitizeResponse(v450, v443, v508, v479);

    goto LABEL_510;
  }

  if ([v445 code] == 3)
  {
    v452 = GTShaderDebuggerValidateUserComputeDispatch(&v508, v479);
    if (v479)
    {
      v453 = v452;
    }

    else
    {
      v453 = 0;
    }

    if ((v453 & 1) == 0)
    {
      goto LABEL_507;
    }

LABEL_509:
    v454 = v446;
    v156 = 0;
    *v479 = v446;
    goto LABEL_510;
  }

  if (v479)
  {
    goto LABEL_509;
  }

LABEL_507:
  v156 = 0;
LABEL_510:

  GTShaderDebuggerContextDeinit(&v508);
LABEL_146:
  __destructor_8_S_S_s8_s16_S_s24_s32_s40_s48_s56_s64_S_s96_s104_s112_s120_S_s128_s136_S_s152_S_s168_s176_s184_s192_s200(&v508);

  return v156;
}

void sub_24D89ACEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose((v35 - 176), 8);
  __destructor_8_S_S_s8_s16_S_s24_s32_s40_s48_s56_s64_S_s96_s104_s112_s120_S_s128_s136_S_s152_S_s168_s176_s184_s192_s200(&a35);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__454(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __destructor_8_S_S_s8_s16_S_s24_s32_s40_s48_s56_s64_S_s96_s104_s112_s120_S_s128_s136_S_s152_S_s168_s176_s184_s192_s200(uint64_t a1)
{
  __destructor_8_s0_s8_s16_s24_s32_s40(a1 + 24);

  v2 = *(a1 + 200);
}

void __destructor_8_s0_s8_s16_s24_s32_s40(uint64_t a1)
{
  v2 = *(a1 + 40);
}

apr_array_header_t *LoadUniqueIdentifierResourceGroup(int **a1, unsigned int a2, apr_pool_t *p)
{
  v5 = **a1;
  *a1 += 2;
  v6 = apr_array_make(p, v5, 32);
  if (v5 >= 1)
  {
    do
    {
      v7 = apr_array_push(v6);
      v8 = *a1;
      v9 = **a1;
      *a1 += 2;
      v7[1] = v9;
      v10 = *(v8 + 1);
      *a1 = v8 + 4;
      *v7 = v10;
      if (a2 >= 0x41)
      {
        v11 = *(v8 + 2);
        *a1 = v8 + 6;
        v7[2] = v11;
      }

      --v5;
    }

    while (v5);
  }

  return v6;
}

id ValidateLibrary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ((qword_27F09CF90 & 0x200000) != 0)
  {
    v3 = DEVICEOBJECT(v1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v5 isEqualToString:@"_MTLMLLibrary"];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x277CCAC38] processInfo];
      v8 = v7;
      v9 = MEMORY[0x277CCACA8];
      if (v7)
      {
        objc_msgSend_operatingSystemVersion(v7);
        v10 = v17;
        objc_msgSend_operatingSystemVersion(v8);
        v11 = v16;
        objc_msgSend_operatingSystemVersion(v8);
        v12 = v15;
      }

      else
      {
        v12 = 0;
        v11 = 0;
        v10 = 0;
      }

      v13 = [v9 stringWithFormat:@"air64-apple-%s%ld.%ld.%ld", "ios", v10, v11, v12];
      [v2 setOverrideTriple:v13];
    }
  }

  return v2;
}

id MTLDevice_newLibraryWithFile(void *a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v4 = [a1 newLibraryWithURL:a2 error:&v9];
  v5 = v9;
  v6 = v5;
  if (a3)
  {
    v7 = v5;
    *a3 = v6;
  }

  ValidateLibrary(v4);
  objc_claimAutoreleasedReturnValue();

  return v4;
}