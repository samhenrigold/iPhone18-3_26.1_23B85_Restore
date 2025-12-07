@interface GTMTLReplayClient
@end

@implementation GTMTLReplayClient

void __GTMTLReplayClient_streamShaderProfilingData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  v51 = v1;
  v2 = [*(v1 + 64) objectForKeyedSubscript:@"useOverlap"];
  v52 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  HIBYTE(word_27F09C590) = v4;
  v50 = v1 + 48;
  GTUSCSamplingStreamingManagerHelper::InitQueryShaderInfo((v1 + 48), v3);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = ___ZN35GTUSCSamplingStreamingManagerHelper21StartSampleCollectionEv_block_invoke;
  v60[3] = &__block_descriptor_40_e5_v8__0l;
  v60[4] = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v53 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v60];
  [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v53];
  v5 = [v53 waitUntilFinished];
  v6 = atomic_load(byte_27F09C804);
  if ((v6 & 1) == 0)
  {
    v7 = objc_opt_new();
    [v7 setObject:*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 56) forKeyedSubscript:@"MetalPluginName"];
    v8 = MEMORY[0x277CCA8C8];
    v73 = MEMORY[0x277D85DD0];
    v74 = 3221225472;
    v75 = ___ZN35GTUSCSamplingStreamingManagerHelper23StreamHarvestedBinariesEv_block_invoke;
    v76 = &unk_279658AD8;
    v78 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
    v9 = v7;
    v77 = v9;
    v10 = [v8 blockOperationWithBlock:&v73];
    [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v10];
    [v10 waitUntilFinished];
    (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
  }

  v11 = atomic_load(byte_27F09C804);
  if ((v11 & 1) == 0)
  {
    v48 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16);
    v12 = [v48 objectForKeyedSubscript:@"perEncoderDrawCallCount"];
    [v12 count];

    v13 = [v48 objectForKeyedSubscript:@"perCommandBufferEncoderCount"];
    [v13 count];

    v14 = objc_opt_new();
    v15 = [*(&xmmword_27F09BCF8 + 1) count];
    if (v15)
    {
      GTUSCSamplingStreamingManagerHelper::SetupMTLCounterAPIBuffer(v15);
      v73 = 0;
      v74 = &v73;
      v75 = 0x4812000000;
      v76 = __Block_byref_object_copy__486;
      v77 = __Block_byref_object_dispose__487;
      v78 = &unk_24DB95716;
      v80 = 0;
      v81 = 0;
      v79 = 0;
      operator new();
    }
  }

  v16 = atomic_load(byte_27F09C804);
  if ((v16 & 1) == 0)
  {
    v67 = 0u;
    *__n = 0u;
    LODWORD(v69) = 1065353216;
    v64 = 0u;
    *v65 = 0u;
    LODWORD(v66) = 1065353216;
    v56 = objc_opt_new();
    v57 = objc_opt_new();
    v58 = objc_opt_new();
    v59 = objc_opt_new();
    v45 = GTUSCSamplingStreamingManagerHelper::GatherFrameMiscEncoderPostProcessedData(0, v56, v58, &v67, 0);
    v46 = GTUSCSamplingStreamingManagerHelper::GatherFrameMiscEncoderPostProcessedData(1, v57, v59, &v64, v45);
    [v46 waitUntilFinished];
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:__n[1]];
    memset(&v63, 0, sizeof(v63));
    std::vector<unsigned int>::reserve(&v63, __n[1]);
    for (i = __n[0]; i; i = *i)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 28)];
      v85.__begin_ = v19;
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 32)];
      v85.__end_ = v20;
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 36)];
      v85.__end_cap_.__value_ = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:3];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 16)];
      [v17 setObject:v22 forKeyedSubscript:v23];

      std::vector<unsigned int>::push_back[abi:nn200100](&v63, (i + 16));
    }

    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v65[1]];
    v83 = 0uLL;
    v84 = 0;
    std::vector<unsigned int>::reserve(&v63, v65[1]);
    v25 = v65[0];
    if (v65[0])
    {
      do
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 28)];
        v82[0] = v26;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 32)];
        v82[1] = v27;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 36)];
        v82[2] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 16)];
        [v24 setObject:v29 forKeyedSubscript:v30];

        std::vector<unsigned int>::push_back[abi:nn200100](&v83, (v25 + 16));
        v25 = *v25;
      }

      while (v25);
      v31 = v83;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    begin = v63.__begin_;
    v55 = [MEMORY[0x277CBEA90] dataWithBytes:v63.__begin_ length:v63.__end_ - v63.__begin_];
    v54 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:*(&v83 + 1) - v32];
    v62 = 0;
    v47 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v62];
    v34 = v62;
    v61 = v34;
    v49 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v61];
    v44 = v61;

    v35 = MEMORY[0x277CBEB38];
    v72[0] = @"Blit Encoder Frame Data";
    v72[1] = @"Blit Encoder Info";
    v73 = v56;
    v74 = v55;
    v72[2] = @"Blit Split Encoder Frame Data";
    v72[3] = @"Blit Split Encoder Info";
    v75 = v57;
    v76 = v54;
    v72[4] = @"Blit Encoder Indices";
    v36 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"blitEncoderIndices"];
    v77 = v36;
    v72[5] = @"Encoder Draw Call Count";
    v37 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
    v78 = v37;
    v72[6] = @"Source Sample Marker";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:qword_27F09BD08];
    v79 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:v72 count:7];
    v40 = [v35 dictionaryWithDictionary:v39];

    if (dword_27F09C54C && dword_27F09C548)
    {
      v71[0] = @"Blit TraceId to Sample Index";
      v71[1] = @"Blit Encoder Time Data";
      v70[0] = v47;
      v70[1] = v58;
      v71[2] = @"Blit Split TraceId to Sample Index";
      v71[3] = @"Blit Split Encoder Time Data";
      v70[2] = v49;
      v70[3] = v59;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v71 count:4];
      [v40 addEntriesFromDictionary:v41];
    }

    (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
    NSLog(&cfstr_SentBlitMiscDa.isa);

    if (v32)
    {
      operator delete(v32);
    }

    if (begin)
    {
      operator delete(begin);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v64);
    v5 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v67);
  }

  GTUSCSamplingStreamingManagerHelper::StreamShaderProfilingData(v5);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v42);
  dispatch_semaphore_signal(xmmword_27F09C6C8);

  (*(*(v51 + 80) + 16))();
  v43 = atomic_load(&xmmword_27F09C7D8);
  if (v43 == v50)
  {
    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }
}

void __GTMTLReplayClient_streamDerivedCounterData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  GTUSCSamplingStreamingManagerHelper::Init((v1 + 48), v2);
  GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v3);
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v5 = qword_27F09C4B0;
  qword_27F09C4B0 = v4;

  v6 = qword_27F09C4B8;
  qword_27F09C4B8 = 0;

  for (i = 0; i != 7; ++i)
  {
    v8 = qword_27F09C4B0;
    v9 = MEMORY[0x277D0AF28];
    v10 = [&unk_2860D5A20 objectAtIndexedSubscript:i];
    v11 = [v9 selectWithName:v10 options:0];
    [v8 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v13 = qword_27F09C4F8;
  qword_27F09C4F8 = v12;

  v14 = qword_27F09C4F8;
  v15 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v14 addObject:v15];

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v17 = qword_27F09C4F0;
  qword_27F09C4F0 = v16;

  v18 = qword_27F09C4F0;
  v19 = [MEMORY[0x277D0AF30] selectWithName:@"TimerNClock" options:&unk_2860D5D18];
  [v18 addObject:v19];

  GTUSCSamplingStreamingManagerHelper::SetupMTLCounterAPIBuffer(v20);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v21);
  (*(*(v1 + 80) + 16))();
  dispatch_semaphore_signal(xmmword_27F09C6C8);
  v22 = atomic_load(&xmmword_27F09C7D8);
  if (v22 == v1 + 48)
  {

    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }
}

void __GTMTLReplayClient_streamBatchFilteredData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v37 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  GTUSCSamplingStreamingManagerHelper::Init((v37 + 48), v1);
  v2 = dispatch_semaphore_signal(xmmword_27F09C6C8);
  GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v2);
  if (qword_27F09C588 != -1)
  {
    GTAGXProfilingSupportHelper::Initialize(qword_27F09C4A8, v3);
  }

  v4 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"encoderBatchPriorityList"];
  v5 = [[GTBatchedCounterManager alloc] initWithEncoderBatchPriorityList:v4];
  v6 = *(&xmmword_27F09C594 + 4);
  *(&xmmword_27F09C594 + 4) = v5;

  v7 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"pause"];

  if (!v7)
  {
    [*(&xmmword_27F09C594 + 4) resume];
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v9 = qword_27F09C4B0;
  qword_27F09C4B0 = v8;

  for (i = 0; i != 7; ++i)
  {
    v11 = qword_27F09C4B0;
    v12 = MEMORY[0x277D0AF28];
    v13 = [&unk_2860D5A20 objectAtIndexedSubscript:i];
    v14 = [v12 selectWithName:v13 options:0];
    [v11 addObject:v14];
  }

  v15 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  v16 = [v15 count];

  v17 = [v4 count];
  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = 2 * v18;
  v20 = qword_27F09C5A8;
  v21 = 0xAAAAAAAAAAAAAAABLL * ((qword_27F09C5A8 - *(&xmmword_27F09C594 + 12)) >> 3);
  v22 = v19 - v21;
  if (v19 > v21)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((unk_27F09C5B0 - qword_27F09C5A8) >> 3) < v22)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        v39 = (&xmmword_27F09C594 + 12);
        if (0x5555555555555556 * ((unk_27F09C5B0 - *(&xmmword_27F09C594 + 12)) >> 3) > v19)
        {
          v19 = 0x5555555555555556 * ((unk_27F09C5B0 - *(&xmmword_27F09C594 + 12)) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((unk_27F09C5B0 - *(&xmmword_27F09C594 + 12)) >> 3) >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v19;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(v23);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    bzero(qword_27F09C5A8, 24 * ((24 * v22 - 24) / 0x18) + 24);
    v24 = v20 + 24 * ((24 * v22 - 24) / 0x18) + 24;
LABEL_27:
    qword_27F09C5A8 = v24;
    goto LABEL_29;
  }

  if (v19 < v21)
  {
    v24 = *(&xmmword_27F09C594 + 12) + 24 * v19;
    if (qword_27F09C5A8 != v24)
    {
      v25 = qword_27F09C5A8;
      do
      {
        v27 = *(v25 - 24);
        v25 -= 24;
        v26 = v27;
        if (v27)
        {
          *(v20 - 16) = v26;
          operator delete(v26);
        }

        v20 = v25;
      }

      while (v25 != v24);
    }

    goto LABEL_27;
  }

  v24 = qword_27F09C5A8;
LABEL_29:
  v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *(&xmmword_27F09C594 + 12)) >> 3);
  if (v28 > (qword_27F09C5C8 - xmmword_27F09C5B8) >> 3)
  {
    if (!(v28 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v28);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = ___ZN35GTUSCSamplingStreamingManagerHelper20InitBatchIdFilteringEP29GTUSCSamplingStreamingManager_block_invoke;
  v38[3] = &__block_descriptor_40_e5_v8__0l;
  v39 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v29 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v38];
  [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v29];
  [v29 waitUntilFinished];
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v31 = qword_27F09C4F8;
  qword_27F09C4F8 = v30;

  v32 = qword_27F09C4F8;
  v33 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v32 addObject:v33];

  GTUSCSamplingStreamingManagerHelper::StreamBatchIdFilteredCounters(v34, v35);
  (*(*(v37 + 80) + 16))();
  v36 = atomic_load(&xmmword_27F09C7D8);
  if (v36 == v37 + 48)
  {

    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }
}

void __GTMTLReplayClient_collectGPUShaderTimelineData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  v2 = [*(v1 + 64) objectForKeyedSubscript:@"useOverlap"];
  v9 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  HIBYTE(word_27F09C590) = v4;
  GTUSCSamplingStreamingManagerHelper::InitQueryShaderInfo((v1 + 48), v3);
  HIDWORD(qword_27F09C588) = 1;
  GTUSCSamplingStreamingManagerHelper::SetupMTLCounterAPIBuffer(v5);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN35GTUSCSamplingStreamingManagerHelper17StreamGPUTimelineEv_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v7 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v10];
  GTUSCSamplingStreamingManagerHelper::StreamShaderProfilingData([**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v7]);

  dispatch_semaphore_signal(xmmword_27F09C6C8);
  v8 = atomic_load(&xmmword_27F09C7D8);
  if (v8 == v1 + 48)
  {
    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }

  (*(*(v1 + 80) + 16))();
}

void __GTMTLReplayClient_collectAPSData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v204 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  v182 = v1;
  v180 = [*(v1 + 64) objectForKeyedSubscript:@"apsProfilingConfig"];
  if (v180)
  {
    v2 = v180;
    v3 = [v2 objectForKeyedSubscript:@"usingMinimumTracingMode"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLValue];
      v6 = 2;
      if (!v5)
      {
        v6 = 0;
      }

      qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFFFDLL | v6;
      v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v8 = [v7 BOOLForKey:@"GPUDebugger.ShaderProfiler.ForceMinTracingMode"];

      if (v8)
      {
        qword_27F09C9B0 |= 2uLL;
      }
    }

    v9 = [v2 objectForKeyedSubscript:@"usedCoreMasks"];
    v10 = v9;
    if (v9 && [v9 count])
    {
      std::vector<BOOL>::resize(&xmmword_27F09C9B8, [v10 count]);
      v186 = v4;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v194 objects:&v202 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = *v195;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v195 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v194 + 1) + 8 * i) BOOLValue];
            v17 = v13 >> 6;
            v18 = 1 << v13;
            if (v16)
            {
              v19 = *(xmmword_27F09C9B8 + 8 * v17) | v18;
            }

            else
            {
              v19 = *(xmmword_27F09C9B8 + 8 * v17) & ~v18;
            }

            *(xmmword_27F09C9B8 + 8 * v17) = v19;
            ++v13;
          }

          v12 = [v11 countByEnumeratingWithState:&v194 objects:&v202 count:16];
        }

        while (v12);
      }

      v4 = v186;
    }

    v20 = [v2 objectForKeyedSubscript:@"overriddenCoreMasks"];
    v21 = v20;
    if (v20 && [v20 count])
    {
      std::vector<BOOL>::resize(&xmmword_27F09C9C8 + 1, [v21 count]);
      v187 = v4;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v190 objects:&v198 count:16];
      if (v23)
      {
        v24 = 0;
        v25 = *v191;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v191 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v190 + 1) + 8 * j) BOOLValue];
            v28 = v24 >> 6;
            v29 = 1 << v24;
            if (v27)
            {
              v30 = *(*(&xmmword_27F09C9C8 + 1) + 8 * v28) | v29;
            }

            else
            {
              v30 = *(*(&xmmword_27F09C9C8 + 1) + 8 * v28) & ~v29;
            }

            *(*(&xmmword_27F09C9C8 + 1) + 8 * v28) = v30;
            ++v24;
          }

          v23 = [v22 countByEnumeratingWithState:&v190 objects:&v198 count:16];
        }

        while (v23);
      }

      v4 = v187;
    }

    v31 = [v2 objectForKeyedSubscript:@"numPossibleCoresPerMGPU"];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 unsignedLongLongValue];
      qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFF07 | (8 * (v33 & 0x1F));
    }

    v34 = [v2 objectForKeyedSubscript:@"emitsPositionForOverriddenCores"];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 unsignedLongLongValue];
      qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFEFFLL | ((v36 & 1) << 8);
    }

    v37 = [v2 objectForKeyedSubscript:@"useOverlap"];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 BOOLValue];
    }

    else
    {
      v39 = 1;
    }

    qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFFFELL | v39;
  }

  v179 = [*(v182 + 64) objectForKeyedSubscript:@"useOverlap"];
  if (v179)
  {
    v40 = [v179 BOOLValue];
    qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFFFELL | v40;
    HIBYTE(word_27F09C590) = v40;
  }

  LODWORD(xmmword_27F09C594) = 0;
  *&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] = v182 + 48;
  v181 = (v182 + 48);
  v41 = [*(*(v182 + 48) + 8) defaultDevice];
  v42 = DEVICEOBJECT(v41);
  v43 = GTProfilerConfigurationVariables([v42 acceleratorPort]);
  v44 = qword_27F09C4A8;
  qword_27F09C4A8 = v43;

  v45 = qword_27F09C4A8;
  if (!*(&xmmword_27F09C9B8 + 1))
  {
    v177 = v45;
    v46 = [v45 objectForKeyedSubscript:@"num_cores"];
    v47 = [v46 unsignedIntValue];

    v48 = [v177 objectForKeyedSubscript:@"core_mask_list"];
    v49 = [v48 count];
    if (v49 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v49;
    }

    qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFF07 | (8 * ((v47 / v50) & 0x1F));
    v51 = [v48 count];
    if (v51 > (qword_27F09C9F8 - xmmword_27F09C9E8) >> 1)
    {
      if ((v51 & 0x8000000000000000) == 0)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(v51);
      }

LABEL_177:
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    std::vector<BOOL>::resize(&xmmword_27F09C9B8, v47);
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v52 = v48;
    v53 = [v52 countByEnumeratingWithState:&v198 objects:&v202 count:16];
    if (v53)
    {
      v54 = 0;
      v188 = *v199;
      v183 = v52;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v199 != v188)
          {
            objc_enumerationMutation(v52);
          }

          v56 = [*(*(&v198 + 1) + 8 * k) unsignedShortValue];
          v57 = v56;
          v58 = *(&xmmword_27F09C9E8 + 1);
          if (*(&xmmword_27F09C9E8 + 1) >= qword_27F09C9F8)
          {
            v60 = xmmword_27F09C9E8;
            v61 = *(&xmmword_27F09C9E8 + 1) - xmmword_27F09C9E8;
            v62 = (*(&xmmword_27F09C9E8 + 1) - xmmword_27F09C9E8) >> 1;
            if (v62 <= -2)
            {
              goto LABEL_177;
            }

            if (qword_27F09C9F8 - xmmword_27F09C9E8 <= (v62 + 1))
            {
              v63 = v62 + 1;
            }

            else
            {
              v63 = qword_27F09C9F8 - xmmword_27F09C9E8;
            }

            if ((qword_27F09C9F8 - xmmword_27F09C9E8) >= 0x7FFFFFFFFFFFFFFELL)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v64 = v63;
            }

            if (v64)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(v64);
            }

            *(2 * v62) = v57;
            v59 = 2 * v62 + 2;
            memcpy(0, v60, v61);
            v65 = xmmword_27F09C9E8;
            *&xmmword_27F09C9E8 = 0;
            *(&xmmword_27F09C9E8 + 1) = v59;
            qword_27F09C9F8 = 0;
            if (v65)
            {
              operator delete(v65);
            }

            v52 = v183;
          }

          else
          {
            **(&xmmword_27F09C9E8 + 1) = v56;
            v59 = v58 + 2;
          }

          *(&xmmword_27F09C9E8 + 1) = v59;
          if (v57)
          {
            v66 = xmmword_27F09C9B8;
            do
            {
              v67 = (v57 & -v57);
              v68 = __clz(__rbit32(v67));
              *(v66 + (((v68 + (qword_27F09C9B0 >> 3) * v54) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v68 + (qword_27F09C9B0 >> 3) * v54);
              v112 = v67 == v57;
              v57 ^= v57 & -v57;
            }

            while (!v112);
          }

          ++v54;
        }

        v53 = [v52 countByEnumeratingWithState:&v198 objects:&v202 count:16];
      }

      while (v53);
    }

    v45 = v177;
  }

  v184 = [*(v182 + 64) objectForKeyedSubscript:@"PhysicalMemory"];
  v178 = [*(v182 + 64) objectForKeyedSubscript:@"DataExpansionFactor"];
  if (v184)
  {
    v176 = [v184 unsignedLongLongValue];
    [v178 doubleValue];
    v72 = v71;
    v74 = *(&xmmword_27F09C9B8 + 1);
    v73 = xmmword_27F09C9B8;
    if (*(&xmmword_27F09C9B8 + 1) < 0x40uLL)
    {
      v75 = 0;
      if (!*(&xmmword_27F09C9B8 + 1))
      {
        goto LABEL_82;
      }
    }

    else
    {
      v75 = 0;
      do
      {
        v76 = *v73++;
        v77 = vcnt_s8(v76);
        v77.i16[0] = vaddlv_u8(v77);
        v75 += v77.u32[0];
        v74 -= 64;
      }

      while (v74 > 0x3F);
      if (!v74)
      {
LABEL_82:
        v79 = xmmword_27F09C9E8;
        if (*(*(***&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 136) + 12) / 100000.0 >= 1.0)
        {
          v80 = *(*(***&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 136) + 12) / 100000.0;
        }

        else
        {
          v80 = 1.0;
        }

        qword_27F09C9B0 |= 4uLL;
        LODWORD(xmmword_27F09C594) = 0;
        GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0], v70);
        GTUSCSamplingStreamingManagerHelper::StreamAPS(v81);
        (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
        v82 = (*(&v79 + 1) - v79) >> 1;
        qword_27F09C9B0 &= ~4uLL;
        dispatch_semaphore_signal(xmmword_27F09C6C8);
        v84 = 126 - 2 * __clz((*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3);
        if (*(&xmmword_27F09C990 + 1) == xmmword_27F09C990)
        {
          v85 = 0;
        }

        else
        {
          v85 = v84;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(xmmword_27F09C990, *(&xmmword_27F09C990 + 1), v85, 1, v83);
        v86 = xmmword_27F09C990;
        v87 = (*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3;
        if (v87 >= v82)
        {
          v87 = (*(&v79 + 1) - v79) >> 1;
        }

        v88 = (xmmword_27F09C990 + 8 * v87);
        v89 = 0;
        if (v87)
        {
          do
          {
            v90 = *v86++;
            v89 += v90;
          }

          while (v86 != v88);
        }

        v91 = v80 * v72;
        v189 = (*(&v79 + 1) - v79) >> 1;
        for (m = 0; v88 != *(&xmmword_27F09C990 + 1); m += v93)
        {
          v93 = *v88++;
        }

        v94 = v75 - v87;
        if (!v94)
        {
          v94 = 1;
        }

        if (v94 > m)
        {
          v95 = 1;
        }

        else
        {
          v95 = m / v94;
        }

        if (v82 > v89)
        {
          v96 = 1;
        }

        else
        {
          v96 = v89 / v82;
        }

        v97 = vcvtpd_u64_f64(v176 / (v91 * v96));
        if (v75 <= v97)
        {
          v123 = [[GTGPUAPSConfig alloc] initForProfiling];
          v124 = *(&xmmword_27F09C520 + 1);
          *(&xmmword_27F09C520 + 1) = v123;

          v122 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"apsProfilingConfig"];
          [*(&xmmword_27F09C520 + 1) readConfig:v122];
        }

        else
        {
          [*(&xmmword_27F09C520 + 1) setUscNumPerMGPU:0];
          [*(&xmmword_27F09C520 + 1) setMGPUMask:0];
          v185 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v82];
          std::vector<BOOL>::resize(&xmmword_27F09C9C8 + 1, *(&xmmword_27F09C9B8 + 1));
          v98 = 0;
          v99 = 0;
          v100 = v91 * v95;
          v101 = (*(&v79 + 1) - v79) >> 1;
          v102 = v97 / v82;
          v103 = v97 % v189;
          do
          {
            v104 = *(xmmword_27F09C9E8 + 2 * v98);
            v105 = *(xmmword_27F09C9E8 + 2 * v98) != 0;
            v106 = 0;
            if (v104)
            {
              v107 = v101 > v97;
            }

            else
            {
              v107 = 1;
            }

            if (!v107)
            {
              v108 = *(&xmmword_27F09C9C8 + 1);
              v109 = 1;
              do
              {
                v110 = v104 & -v104;
                v111 = (v104 & -v104);
                v106 |= v110;
                v112 = v111 == v104;
                v104 ^= v110;
                v113 = __clz(__rbit32(v111)) + (qword_27F09C9B0 >> 3) * v99;
                *(v108 + ((v113 >> 3) & 0x1FFFFFF8)) |= 1 << v113;
                v105 = !v112;
                if (v112)
                {
                  break;
                }
              }

              while (v109++ < v102);
            }

            if (v103 && v105)
            {
              v115 = v104 & -v104;
              v106 |= v115;
              --v103;
              v116 = __clz(__rbit32(v115)) + (qword_27F09C9B0 >> 3) * v99;
              *(*(&xmmword_27F09C9C8 + 1) + ((v116 >> 3) & 0x1FFFFFF8)) |= 1 << v116;
            }

            v117 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v106];
            v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v99];
            [v185 setObject:v117 forKeyedSubscript:v118];

            v98 = (v99 + 1);
            v99 = v98;
            v101 = (*(&v79 + 1) - v79) >> 1;
          }

          while (v189 > v98);
          v119 = [v185 copy];
          [*(&xmmword_27F09C520 + 1) setUscMaskPerMGPU:v119];

          v120 = v75 - v97;
          if (v75 < v97)
          {
            v120 = 0;
          }

          v121 = (v100 * v120);
          [*(&xmmword_27F09C520 + 1) setEmitPos:v176 >= v121];
          qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFEFFLL | ((v176 >= v121) << 8);
          v122 = v185;
        }

        qword_27F09C9B0 |= 4uLL;
        LODWORD(xmmword_27F09C594) = 2;
        GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0], v125);
        GTUSCSamplingStreamingManagerHelper::StreamAPS(v126);
        (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
        v128 = (*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3;
        v129 = 126 - 2 * __clz(v128);
        qword_27F09C9B0 &= ~4uLL;
        if (*(&xmmword_27F09C990 + 1) == xmmword_27F09C990)
        {
          v130 = 0;
        }

        else
        {
          v130 = v129;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(xmmword_27F09C990, *(&xmmword_27F09C990 + 1), v130, 1, v127);
        v131 = xmmword_27F09C990;
        v132 = (*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3;
        if (v132 >= v189)
        {
          v132 = (*(&v79 + 1) - v79) >> 1;
        }

        v133 = (xmmword_27F09C990 + 8 * v132);
        if (*(&xmmword_27F09C990 + 1) == xmmword_27F09C990)
        {
          v136 = 0;
        }

        else
        {
          v134 = 0;
          do
          {
            v135 = *v131;
            v131 += 2;
            v134 += v135;
          }

          while (v131 != v133);
          v136 = v134;
        }

        if (v133 == *(&xmmword_27F09C990 + 1))
        {
          v137 = 0;
        }

        else
        {
          v138 = 0;
          do
          {
            v139 = *v133;
            v133 += 2;
            v138 += v139;
          }

          while (v133 != *(&xmmword_27F09C990 + 1));
          v137 = v138;
        }

        v140 = [[GTGPUAPSConfig alloc] initForTimeline];
        v141 = qword_27F09C530;
        qword_27F09C530 = v140;

        v142 = [[GTGPUAPSConfig alloc] initForCounters];
        v143 = qword_27F09C538;
        qword_27F09C538 = v142;

        v144 = v128;
        if (v176 < (v91 * (v136 / v189) * v128))
        {
          if (v128 == v189)
          {
            v145 = 1;
          }

          else
          {
            v145 = v128 - v189;
          }

          v146 = [qword_27F09C530 countPeriod];
          v147 = [qword_27F09C530 pulsePeriod];
          v148 = (v91 * (v137 / v145) * v144) / v176;
          if (v148 > 1.0)
          {
            v148 = 1.0;
          }

          v149 = vcvtd_n_u64_f64(v148, 0xFuLL);
          while (v146 < v149)
          {
            v146 *= 2;
            v147 *= 2;
          }

          if (v146 > [qword_27F09C530 countPeriod])
          {
            [qword_27F09C530 setEmitThreadControlFlow:0];
          }

          if (v146 >= 0x8000)
          {
            v150 = 0x8000;
          }

          else
          {
            v150 = v146;
          }

          [qword_27F09C530 setCountPeriod:v150];
          [qword_27F09C538 setCountPeriod:v150];
          if (v147 >= 0x800)
          {
            v151 = 2048;
          }

          else
          {
            v151 = v147;
          }

          [qword_27F09C530 setPulsePeriod:v151];
          [qword_27F09C538 setPulsePeriod:v151];
        }

        goto LABEL_158;
      }
    }

    v78 = vcnt_s8((*v73 & (0xFFFFFFFFFFFFFFFFLL >> -v74)));
    v78.i16[0] = vaddlv_u8(v78);
    v75 += v78.u32[0];
    goto LABEL_82;
  }

LABEL_158:
  LODWORD(xmmword_27F09C594) = 0;
  for (n = 4; ; --n)
  {
    GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(v181, v69);
    GTUSCSamplingStreamingManagerHelper::StreamAPS(v153);
    if (v154)
    {
      break;
    }

    v154 = (*(*(v182 + 80) + 16))();
    if (!n)
    {
      break;
    }

    dispatch_semaphore_signal(xmmword_27F09C6C8);
  }

  v155 = 5;
  LODWORD(xmmword_27F09C594) = 1;
  do
  {
    GTUSCSamplingStreamingManagerHelper::CleanupForAPSStreaming(v154);
    if (xmmword_27F09C9D8 >= 1)
    {
      v202 = *(&xmmword_27F09C9C8 + 1);
      v203 = 0;
      std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v202, xmmword_27F09C9D8);
    }

    qword_27F09C9B0 &= ~0x100uLL;
    v156 = GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
    qword_27F09C478 = [qword_27F09C498 mutableBytes];
    v157 = [[ProgramAddressTableCollector alloc] initForHarvestingBinaries];
    v158 = xmmword_27F09C480;
    *&xmmword_27F09C480 = v157;

    if (qword_27F09C588 != -1)
    {
      GTUSCSamplingStreamingManagerHelper::SetupBuffersForAPSSource(v159);
      v160 = [qword_27F09C538 grcOptions];
      v161 = xmmword_27F09C500;
      *&xmmword_27F09C500 = v160;

      v162 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v163 = *(&xmmword_27F09C500 + 1);
      *(&xmmword_27F09C500 + 1) = v162;

      v164 = *(&xmmword_27F09C500 + 1);
      v165 = MEMORY[0x277D0AF30];
      v166 = [qword_27F09C538 grcTrigger];
      v167 = [v165 selectWithName:@"KickAndStateTracing" options:v166];
      [v164 addObject:v167];

      v168 = (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
      GTUSCSamplingStreamingManagerHelper::InitRDELimiterCounters(v168);
    }

    GTUSCSamplingStreamingManagerHelper::StreamAPS(v159);
    if (v169)
    {
      break;
    }

    v154 = (*(*(v182 + 80) + 16))();
    --v155;
  }

  while (v155);
  GTUSCSamplingStreamingManager::InitDerivedCountersInfo(v181);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v170);
  LODWORD(xmmword_27F09C594) = 2;
  v172 = 5;
  do
  {
    GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(v181, v171);
    GTUSCSamplingStreamingManagerHelper::StreamAPS(v173);
    if (v174)
    {
      break;
    }

    (*(*(v182 + 80) + 16))();
    --v172;
  }

  while (v172);
  (*(*(v182 + 80) + 16))();
  dispatch_semaphore_signal(xmmword_27F09C6C8);
  v175 = atomic_load(&xmmword_27F09C7D8);
  if (v175 == v181)
  {
    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }
}

void __GTMTLReplayClient_harvestTexture_block_invoke(uint64_t a1)
{
  v2 = ([*(a1 + 32) contents] + *(a1 + 40));
  v3 = malloc_type_malloc(*(a1 + 136), 0x8C9C1B83uLL);
  v4 = v3;
  if (*(a1 + 80) >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 72);
    v7 = *(a1 + 80) & 0x7FFFFFFFLL;
    v8 = v2;
    do
    {
      if (v6 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *&vorr_s8(vshl_n_s32(__PAIR64__(v9, v5), 8uLL), vand_s8(__PAIR64__(v9, v5), 0xFFFF0000FFFFLL)) & 0xFF00FF00FF00FFLL;
          v11 = *&vorr_s8(vshl_n_s32(v10, 4uLL), v10) & 0xFF0FFF0FFF0FFF0FLL;
          v12 = vand_s8(vorr_s8(vshl_n_s32(v11, 2uLL), v11), 0x3333333333333333);
          v13 = vshl_u32(v12, 0x200000001);
          v12.i32[1] *= 2;
          v14 = vand_s8(vorr_s8(v13, v12), 0xAAAAAAAA55555555);
          *(v3 + vorr_s8(v14, vdup_lane_s32(v14, 1)).i32[0]) = *&v8[8 * v9++];
        }

        while (v6 != v9);
      }

      ++v5;
      v8 += 8 * v6;
    }

    while (v5 != v7);
  }

  memcpy(v2, v3, *(a1 + 136));

  free(v4);
}

void __GTMTLReplayClient_createNewTransport_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    MessageRemoteRoutingInfoGet();
    memset(v6, 0, sizeof(v6));
    v5 = [objc_alloc(MEMORY[0x277D0B540]) initWithConnection:WeakRetained routingInfo:v6];
    [WeakRetained dispatchMessage:v3 replyConnection:v5];
  }
}

void __GTMTLReplayClient_queryShaderInfo_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPerfState:?];
  }

  v2 = [*(*(a1 + 72) + 8) defaultCommandQueue];
  [v2 setStatEnabled:1];
  if (g_runningInCI == 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"QueryShaderInfo - subdividing counter list"];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v4 UTF8String]);
  }

  v5 = [v2 subdivideCounterList:*(a1 + 48)];
  validateSubdividedCounterLists(*(a1 + 48), v5);
  [v2 setStatEnabled:0];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v26 = *(a1 + 56);
  v27 = v2;
  v11 = *(*(*(a1 + 64) + 8) + 40);
  v12 = *(a1 + 48);
  v13 = v11;
  v14 = *(v10 + 8);
  v15 = v5;
  [v14 defaultDevice];

  v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v25 = CollectFrameCounters(v10, v9, v12, v15, 41493, v16);
  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v18 = CollectFrameCounters(v10, v9, v12, v15, 63, v17);

  v19 = MEMORY[0x277CCA8C8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __ProfileFrame_block_invoke;
  v28[3] = &unk_279658850;
  v29 = v13;
  v30 = v16;
  v31 = v17;
  v32 = v12;
  v20 = v13;
  v21 = v16;
  v22 = v17;
  v23 = v12;
  v24 = [v19 blockOperationWithBlock:v28];
  [v24 addDependency:v25];
  [v24 addDependency:v18];
  [v9[1] addOperation:v24];

  [v26 addDependency:v24];
  [*(*(a1 + 80) + 8) addOperation:*(a1 + 56)];
}

void __GTMTLReplayClient_queryShaderInfo_block_invoke_2(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  info = 0;
  mach_timebase_info(&info);
  v63 = v1[1];
  v2 = *v1;
  v60 = *(*v1 + 2);
  v3 = *(*v1 + 15);
  v4 = *(v3 + 12);
  if (v4 < 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = 0;
    v5 = *(v3 + 24);
    do
    {
      if (GTFenum_isBeginCommandBuffer(v5[5]))
      {
        v6 = v2[13];
        if (v6 <= *v5 && v2[14] + v6 > *v5)
        {
          v8 = v57 + 1;
        }

        else
        {
          v8 = v57;
        }

        v57 = v8;
      }

      v5 += 6;
      --v4;
    }

    while (v4);
  }

  v62 = malloc_type_calloc(32 * v57, 0x10uLL, 0x1000040451B5BE8uLL);
  v61 = objc_opt_new();
  GTMTLReplayController_prePlayForProfiling(v1);
  v9 = *(v1 + 5640);
  v10 = *v1;
  while (v10[14] + v10[13] > v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(v10[16] + 24) + (*(v1 + 5640) << 6);
    if (GTFenum_isBeginCommandBuffer(*(v12 + 8)))
    {
      v13 = GTMTLReplayController_restoreCommandBuffer(v1, v12);
      GTMTLReplayController_updateCommandEncoder(v1, v12);
      GTMTLReplayController_defaultDispatchFunction(v1, v12);
      if (v13)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v1 + 5640)];
        [v61 addObject:v14];
      }
    }

    else
    {
      GTMTLReplayController_updateCommandEncoder(v1, v12);
      GTMTLReplayController_defaultDispatchFunction(v1, v12);
    }

    objc_autoreleasePoolPop(v11);
    v9 = (*(v1 + 5640) + 1);
    *(v1 + 5640) = v9;
  }

  v15 = [v63 defaultDevice];
  v64 = [v15 newEvent];

  v56 = mach_absolute_time();
  v16 = 0;
  LODWORD(v17) = 0;
  v18 = 1;
  do
  {
    v19 = v18;
    v59 = v17;
    [g_activityLog enterPerformFrameTimingForIndex:?];
    v20 = g_signpostLog;
    if (os_signpost_enabled(g_signpostLog))
    {
      *buf = 67109120;
      *&buf[4] = v59;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "performFrameTiming %d", buf, 8u);
    }

    GTMTLReplayController_prePlayForProfiling(v1);
    v58 = v19;
    for (i = *(v1 + 5640); v2[14] + v2[13] > i; *(v1 + 5640) = i)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(v1 + 5640);
      v24 = *(v2[16] + 24) + (v23 << 6);
      isBeginCommandBuffer = GTFenum_isBeginCommandBuffer(*(v24 + 8));
      if (isBeginCommandBuffer)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
        v27 = [v61 containsObject:v26];

        if (v27)
        {
          v28 = [v63 defaultCommandQueue];
          v29 = [v28 commandBuffer];

          ++performFrameTimingDesktop_signalCounter;
          [v29 encodeSignalEvent:v64 value:?];
          [v29 encodeWaitForEvent:v64 value:performFrameTimingDesktop_signalCounter];
          [v29 commit];
        }

        v30 = GTMTLReplayController_restoreCommandBuffer(v1, v24);
      }

      else
      {
        v30 = 0;
      }

      GTMTLReplayController_updateCommandEncoder(v1, v24);
      GTMTLReplayController_defaultDispatchFunction(v1, v24);
      if (isBeginCommandBuffer)
      {
        v31 = [v63 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v24, *(v24 + 13), *(*v1 + 2)) + 1)}];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __performFrameTimingDesktop_block_invoke;
        v65[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v65[4] = &v62[2 * v16];
        [v31 addCompletedHandler:v65];

        ++v16;
      }

      if (v30)
      {
        v32 = [v63 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v24, *(v24 + 13), v60) + 1)}];
        ++performFrameTimingDesktop_signalCounter;
        [v32 encodeSignalEvent:v64 value:?];
        [v32 encodeWaitForEvent:v64 value:performFrameTimingDesktop_signalCounter];
      }

      objc_autoreleasePoolPop(v22);
      i = (*(v1 + 5640) + 1);
    }

    v33 = mach_absolute_time();
    v34 = g_signpostLog;
    if (os_signpost_enabled(g_signpostLog))
    {
      *buf = 67109120;
      *&buf[4] = v59;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "performFrameTiming %d", buf, 8u);
    }

    v35 = (v33 - v56) * info.numer / info.denom < 0x3B9ACA00;
    [g_activityLog leaveActivity];
    v18 = v58 + 1;
    v17 = v59 + 1;
  }

  while (v59 < 0x1F && v35);
  v36 = [v1[1] defaultCommandQueue];
  [v36 finish];

  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:v59 + 1];
  v38 = 0;
  v39 = v62 + 1;
  do
  {
    qsort(&v62[2 * v38 * v57], v57, 0x10uLL, CommandBufferTimeInfo_compare);
    if (v57 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v40 = 0.0;
      v41 = v39;
      v42 = v57;
      v43 = 0.0;
      do
      {
        v44 = *v41;
        if (v40 < *(v41 - 1))
        {
          v40 = *(v41 - 1);
        }

        if (v44 > v40)
        {
          v43 = v43 + v44 - v40;
          v40 = *v41;
        }

        v41 += 2;
        --v42;
      }

      while (v42);
      v45 = (v43 * 1000000000.0);
    }

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
    [v37 addObject:v46];

    ++v38;
    v39 += 2 * v57;
  }

  while (v38 != v58);
  free(v62);
  [v37 sortUsingComparator:&__block_literal_global_424];
  if ([v37 count])
  {
    v47 = [v37 objectAtIndexedSubscript:{objc_msgSend(v37, "count") >> 1}];
  }

  else
  {
    v47 = &unk_2860D6908;
  }

  if (g_runningInCI == 1)
  {
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPU Time = %@", v47];
    v49 = [v48 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v50 = *MEMORY[0x277D85E08];
    v51 = v49;
    fprintf(v50, "#CI-INFO# %s\n", [v49 UTF8String]);
  }

  v67[0] = @"frametime";
  v67[1] = @"frameGPUTime";
  *buf = v37;
  v69 = v47;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v67 count:2];

  v53 = *(*(a1 + 32) + 8);
  v54 = *(v53 + 40);
  *(v53 + 40) = v52;
}

id *__GTMTLReplayClient_queryShaderInfo_block_invoke_3(id *result)
{
  if (result[4])
  {
    v1 = result;
    result = [result[5] getStateOccupancy];
    *(*(v1[6] + 1) + 24) = v2;
  }

  return result;
}

void __GTMTLReplayClient_queryShaderInfo_block_invoke_4(uint64_t a1)
{
  v5 = [*(*(a1 + 40) + 8) defaultDevice];
  v2 = DYMTLReplayFrameProfiler_loadAnalysis(v5);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end