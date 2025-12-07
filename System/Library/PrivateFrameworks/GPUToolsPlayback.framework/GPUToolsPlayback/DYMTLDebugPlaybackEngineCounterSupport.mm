@interface DYMTLDebugPlaybackEngineCounterSupport
- (BOOL)_FixSplitEncoderSamples:(void *)samples forProfile:(const void *)profile withInfo:(id)info andUpdatedCounterInfo:(id)counterInfo;
- (BOOL)_computeAverageForFrameProfile:(void *)profile forProfile:(const void *)forProfile withInfo:(id)info andUpdatedCounterInfo:(id)counterInfo forEncoders:(BOOL)encoders;
- (DYMTLDebugPlaybackEngineCounterSupport)initWithPlaybackEngine:(id)engine;
- (id).cxx_construct;
- (id)_profileFrameWithCounterListsForProfileInfo:(id)info;
- (id)_profileFrameWithCounterListsForProfileInfo:(id)info encoderPass:(BOOL)pass;
- (id)_profileFrameWithCounterListsForProfileInfo:(id)info setConsistentState:(unsigned int)state;
- (id)_profileFrameWithCounterListsForProfileInfoAsync:(id)async encoderPass:(BOOL)pass updateStatSampling:(BOOL)sampling setConsistentState:(unsigned int)state;
- (id)_profileSplitEncodersForProfileInfo:(id)info;
- (id)_runPassesForCounterLists:(id)lists encoderPass:(BOOL)pass frameProfileInfo:(void *)info;
- (id)_updatedBatchInfos:(id)infos fromPerEncoderDrawCallCount:(id)count;
- (id)availableCounters;
- (id)derivedCounterData;
- (id)profileEncodersForProfileInfo:(id)info;
- (id)profileFrameWithCounterListsForProfileInfo:(id)info;
- (id)profileFrameWithCounterListsForProfileInfoAsync:(id)async;
- (id)profileFrameWithPayload:(id)payload;
- (unint64_t)_profileFrameForFrameTiming:(id)timing atConsistentState:(unsigned int)state;
- (void)_clearData;
- (void)_setupPState;
- (void)addCommandBufferFrameProfile:(const void *)profile;
- (void)addCounters:(id)counters;
- (void)createBatchIdFilterMapping;
@end

@implementation DYMTLDebugPlaybackEngineCounterSupport

- (DYMTLDebugPlaybackEngineCounterSupport)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v11.receiver = self;
  v11.super_class = DYMTLDebugPlaybackEngineCounterSupport;
  v5 = [(DYMTLDebugPlaybackEngineCounterSupport *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_engine, engineCopy);
    v6->_loopCount = 1;
    v7 = MTLCreateSystemDefaultDevice();
    name = [v7 name];
    v6->_isAGXDevice = [name compare:@"Unknown Unknown"] == 0;

    v9 = v6;
  }

  return v6;
}

- (void)_setupPState
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"GPUFrameProfilingPowerStateWarmupTime"];

  if (v3)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults2 integerForKey:@"GPUFrameProfilingPowerStateWarmupTime"];

    if (v4 < 1)
    {
      return;
    }
  }

  else
  {
    v4 = 500;
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  [WeakRetained setLoopTimeLimit:1000000 * v4];

  v8 = objc_loadWeakRetained(&self->_engine);
  [v8 setPlaybackMode:5];

  v9 = objc_loadWeakRetained(&self->_engine);
  [v9 playbackToFunction:0 withLoops:0xFFFFFFFFLL];
}

- (BOOL)_computeAverageForFrameProfile:(void *)profile forProfile:(const void *)forProfile withInfo:(id)info andUpdatedCounterInfo:(id)counterInfo forEncoders:(BOOL)encoders
{
  infoCopy = info;
  counterInfoCopy = counterInfo;
  if (*forProfile == *(forProfile + 1) || ((WeakRetained = objc_loadWeakRetained(&self->_engine), v14 = [WeakRetained numIterationsInLastPlayback], v15 = v14, v14 <= 1) ? (v16 = 1) : (v16 = v14), WeakRetained, v17 = 0xAAAAAAAAAAAAAAABLL * ((*(forProfile + 1) - *forProfile) >> 4), v18 = v17 / v16, v17 % v16))
  {
    v19 = 0;
  }

  else
  {
    profileCopy = profile;
    std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::resize(profile, v17 / v16);
    v21 = **forProfile;
    if (v15 > 1)
    {
      v35 = counterInfoCopy;
      v36 = infoCopy;
      std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::vector[abi:ne200100](v38, v17 / v16);
      v24 = *forProfile;
      if (*(forProfile + 1) != *forProfile)
      {
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = v38[0] + 80 * (v26 % v18);
          if (v26 < v18)
          {
            *v27 = v24[v25] - v21;
            *(v27 + 8) = v24[v25 + 1];
            *(v27 + 16) = v24[v25 + 2];
            *(v27 + 24) = v24[v25 + 3];
          }

          std::vector<unsigned long long>::push_back[abi:ne200100]((v27 + 32), &v24[v25 + 4]);
          if (self->_isAGXDevice)
          {
            std::vector<unsigned long long>::push_back[abi:ne200100]((v27 + 56), &v24[v25 + 5]);
          }

          ++v26;
          v24 = *forProfile;
          v25 += 6;
        }

        while (v26 < 0xAAAAAAAAAAAAAAABLL * ((*(forProfile + 1) - *forProfile) >> 4));
      }

      if (v17 >= v16)
      {
        v28 = 0;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        v29 = 56;
        do
        {
          v30 = *profileCopy;
          v31 = (*profileCopy + v28);
          v32 = v38[0];
          v33 = v38[0] + v29;
          *v31 = *(v38[0] + v29 - 56);
          v31[1] = *(v33 - 48);
          v31[2] = *(v33 - 40);
          v31[3] = *(v33 - 32);
          if (self->_isAGXDevice)
          {
          }

          else
          {
            v34 = 0;
          }

          *(v30 + v28 + 40) = v34;
          v28 += 48;
          v29 += 80;
          --v18;
        }

        while (v18);
      }

      v39 = v38;
      std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,std::vector<unsigned long long>,std::vector<unsigned long long>>>::__destroy_vector::operator()[abi:ne200100](&v39);
      v19 = 1;
      counterInfoCopy = v35;
      infoCopy = v36;
    }

    else
    {
      if (v17 >= v16)
      {
        v22 = (*forProfile + 24);
        v23 = (*profile + 24);
        do
        {
          *(v23 - 3) = *(v22 - 3) - v21;
          *(v23 - 2) = *(v22 - 2);
          *(v23 - 1) = *(v22 - 1);
          *v23 = *v22;
          v23[1] = v22[1];
          v23[2] = v22[2];
          v22 += 6;
          v23 += 6;
          --v18;
        }

        while (v18);
      }

      v19 = 1;
    }
  }

  return v19;
}

- (void)_clearData
{
  self->_commandBufferFrameProfilesInfo.__end_ = self->_commandBufferFrameProfilesInfo.__begin_;
  self->_commandBufferFrameProfiles.__end_ = self->_commandBufferFrameProfiles.__begin_;
  self->_commandBufferFrameProfilesPerDMDrawCallInfo.__end_ = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__begin_;
}

- (id)profileFrameWithPayload:(id)payload
{
  payloadCopy = payload;
  [(DYMTLDebugPlaybackEngineCounterSupport *)self _setupPState];
  loopCount = self->_loopCount;
  self->_loopCount = 15;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];
  [player enableStatsSampling:1];

  v8 = objc_loadWeakRetained(&self->_engine);
  player2 = [v8 player];
  setupCounterConfigurationAndGetFrameProfilerCounters = [player2 setupCounterConfigurationAndGetFrameProfilerCounters];

  if (payloadCopy)
  {
    v11 = [payloadCopy mutableCopy];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  [v11 setObject:setupCounterConfigurationAndGetFrameProfilerCounters forKeyedSubscript:*MEMORY[0x277D0B480]];
  v13 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfo:v12];
  v14 = *MEMORY[0x277D0B030];
  v59 = [v13 objectForKeyedSubscript:*MEMORY[0x277D0B030]];
  v15 = objc_loadWeakRetained(&self->_engine);
  player3 = [v15 player];
  [player3 enableStatsSampling:1];

  v17 = objc_loadWeakRetained(&self->_engine);
  player4 = [v17 player];
  [player4 sampleEncoderCounters];

  v19 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfo:v12 encoderPass:1];
  selfCopy = self;
  v21 = v19;
  v57 = selfCopy;
  v22 = objc_loadWeakRetained(&selfCopy->_engine);
  player5 = [v22 player];
  [player5 enableStatsSampling:0];
  v53 = v13;
  v54 = v12;
  v55 = payloadCopy;
  v56 = setupCounterConfigurationAndGetFrameProfilerCounters;

  v52 = v21;
  v58 = [v21 objectForKeyedSubscript:v14];
  v57->_loopCount = loopCount;
  array = [MEMORY[0x277CBEB18] array];
  v25 = [v59 count];
  if (v25 == [v58 count])
  {
    v26 = 0;
LABEL_6:
    if (v26 >= [v59 count])
    {
      [(DYMTLDebugPlaybackEngineCounterSupport *)v57 addCounters:v56];
      [(NSMutableDictionary *)v57->_frameProfiling setObject:array forKeyedSubscript:@"frame profile data"];
      v49 = v57->_frameProfiling;
      frameProfiling = v57->_frameProfiling;
      v57->_frameProfiling = 0;
    }

    else
    {
      v27 = [v59 objectAtIndexedSubscript:v26];
      v28 = v26;
      v29 = v27;
      v51 = v28;
      v62 = [v58 objectAtIndexedSubscript:?];
      v60 = v29;
      v30 = [v29 count];
      if (v30 == [v62 count])
      {
        for (i = 0; ; ++i)
        {
          if (i >= [v60 count])
          {

            v26 = v51 + 1;
            goto LABEL_6;
          }

          v32 = [v60 objectAtIndexedSubscript:i];
          v33 = [v62 objectAtIndexedSubscript:i];
          if ([v33 count] != 1)
          {
            break;
          }

          v34 = 0;
          for (j = 0; j < [v32 count]; ++j)
          {
            v36 = [v32 objectAtIndexedSubscript:j];
            v37 = [v36 objectAtIndexedSubscript:3];
            v34 += [v37 unsignedLongLongValue];
          }

          v38 = [v33 objectAtIndexedSubscript:0];
          v39 = [v38 objectAtIndexedSubscript:3];
          unsignedLongLongValue = [v39 unsignedLongLongValue];

          v41 = 0;
          v42 = unsignedLongLongValue;
          while (v41 < [v32 count])
          {
            if (v34)
            {
              v43 = [v32 objectAtIndexedSubscript:v41];
              v44 = [v43 objectAtIndexedSubscript:3];
              v45 = (v42 * [v44 unsignedLongLongValue] / v34);
            }

            else
            {
              v45 = 0;
            }

            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
            v47 = [v32 objectAtIndexedSubscript:v41];
            [v47 setObject:v46 atIndexedSubscript:3];

            v48 = [v32 objectAtIndexedSubscript:v41];
            [array addObjectsFromArray:v48];

            ++v41;
          }
        }
      }

      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (void)addCommandBufferFrameProfile:(const void *)profile
{
  v3 = *profile;
  v4 = *(profile + 1);
  p_commandBufferFrameProfilesInfo = &self->_commandBufferFrameProfilesInfo;
  while (v3 != v4)
  {
    std::back_insert_iterator<std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>::operator=[abi:ne200100](&p_commandBufferFrameProfilesInfo, v3);
    v3 += 3;
  }
}

- (BOOL)_FixSplitEncoderSamples:(void *)samples forProfile:(const void *)profile withInfo:(id)info andUpdatedCounterInfo:(id)counterInfo
{
  v6 = *profile;
  v7 = *(profile + 1);
  if (*profile != v7)
  {
    std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::resize(samples, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
    v11 = *profile;
    v10 = *(profile + 1);
    v12 = v10 - *profile;
    if (v10 != *profile)
    {
      v13 = 0;
      v14 = 0;
      v17 = *v11;
      v16 = v11 + 24;
      v15 = v17;
      v18 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 4);
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v19 = (*samples + 24);
      v20 = -1;
      do
      {
        v21 = *(v16 - 3) - v15;
        *(v19 - 3) = v21;
        v22 = *(v16 - 2);
        v23 = *(v16 - 1);
        if (v22 > v20)
        {
          ++v14;
        }

        if (v21 > v13)
        {
          v14 = 0;
        }

        *(v19 - 2) = v22;
        *(v19 - 1) = v14;
        *v19 = v23;
        v19[1] = *v16;
        v19[2] = v16[1];
        v24 = v16[2];
        v16 += 6;
        v19[3] = v24;
        v19 += 7;
        v13 = v21;
        v20 = v22;
        --v18;
      }

      while (v18);
    }
  }

  return v6 != v7;
}

- (id)_profileSplitEncodersForProfileInfo:(id)info
{
  v200 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];

  v151 = player;
  [player enableStatsSampling:1];
  [player sampleSplitEncoderCounters];
  [player setupProfileInfo:infoCopy];
  [(DYMTLDebugPlaybackEngineCounterSupport *)self _clearData];
  v6 = objc_loadWeakRetained(&self->_engine);
  [v6 setPlaybackMode:9];

  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0B480]];
  v150 = [player counterInfo:v7];

  v8 = objc_loadWeakRetained(&self->_engine);
  player2 = [v8 player];
  [player2 setupProfilingForCounterLists];

  v10 = [v150 objectForKeyedSubscript:*MEMORY[0x277D0B398]];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v154 = *MEMORY[0x277D0B0D0];
  v144 = [v150 objectForKeyedSubscript:?];
  v156 = *MEMORY[0x277D0B0C8];
  v164 = [v150 objectForKeyedSubscript:?];
  if (unsignedIntegerValue)
  {
    v11 = 0;
    for (i = 0; i != unsignedIntegerValue; ++i)
    {
      v13 = [v164 objectAtIndexedSubscript:i];
      v11 += [v13 count];
    }
  }

  else
  {
    v11 = 0;
  }

  if (self->_isAGXDevice)
  {
    v14 = objc_loadWeakRetained(&self->_engine);
    player3 = [v14 player];
    [player3 enableConsistentState:1];
  }

  v16 = 0x6DB6DB6DB6DB6DB7;
  if (unsignedIntegerValue)
  {
    v17 = 0;
    while (([v151 setupProfilingForListAtIndex:v17] & 1) != 0)
    {
      v18 = objc_loadWeakRetained(&self->_engine);
      [v18 setPlaybackMode:9];

      v19 = objc_loadWeakRetained(&self->_engine);
      [v19 playbackToFunction:0 withLoops:self->_loopCount];

      v162 = objc_opt_new();
      v20 = [v150 objectForKeyedSubscript:v156];
      v21 = [v20 objectAtIndexedSubscript:v17];
      [v162 setObject:v21 forKeyedSubscript:v154];

      begin = self->_commandBufferFrameProfilesInfo.__begin_;
      end = self->_commandBufferFrameProfilesInfo.__end_;
      v24 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4));
      if (end == begin)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(begin, end, &v184, v25, 1);
      __p = 0;
      v189 = 0;
      v190 = 0;
      v26 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _FixSplitEncoderSamples:&__p forProfile:&self->_commandBufferFrameProfilesInfo withInfo:infoCopy andUpdatedCounterInfo:v162];
      v27 = __p;
      if (!v26)
      {
        if (__p)
        {
          v189 = __p;
          operator delete(__p);
        }

        break;
      }

      obj = v17;
      v28 = v16;
      v29 = v189;
      if (__p != v189)
      {
        v30 = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__end_;
        do
        {
          v184 = *v27;
          v185 = v27[1];
          v186 = v27[2];
          v187 = *(v27 + 6);
          cap = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__cap_;
          if (v30 >= cap)
          {
            v35 = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__begin_;
            v36 = ((v30 - v35) >> 3) * v28;
            v37 = v36 + 1;
            if ((v36 + 1) > 0x492492492492492)
            {
              std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
            }

            v38 = ((cap - v35) >> 3) * v28;
            if (2 * v38 > v37)
            {
              v37 = 2 * v38;
            }

            if (v38 >= 0x249249249249249)
            {
              v39 = 0x492492492492492;
            }

            else
            {
              v39 = v37;
            }

            if (v39)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(&self->_commandBufferFrameProfilesPerDMDrawCallInfo, v39);
            }

            v40 = 56 * v36;
            *v40 = v184;
            *(v40 + 16) = v185;
            *(v40 + 32) = v186;
            *(v40 + 48) = v187;
            v30 = (56 * v36 + 56);
            v41 = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__begin_;
            v42 = (self->_commandBufferFrameProfilesPerDMDrawCallInfo.__end_ - v41);
            v43 = (56 * v36 - v42);
            memcpy((v40 - v42), v41, v42);
            v44 = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__begin_;
            self->_commandBufferFrameProfilesPerDMDrawCallInfo.__begin_ = v43;
            self->_commandBufferFrameProfilesPerDMDrawCallInfo.__end_ = v30;
            self->_commandBufferFrameProfilesPerDMDrawCallInfo.__cap_ = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            v32 = *v27;
            v33 = v27[1];
            v34 = v27[2];
            *(v30 + 6) = *(v27 + 6);
            v30[1] = v33;
            v30[2] = v34;
            *v30 = v32;
            v30 = (v30 + 56);
          }

          self->_commandBufferFrameProfilesPerDMDrawCallInfo.__end_ = v30;
          v27 = (v27 + 56);
        }

        while (v27 != v29);
        v27 = __p;
      }

      self->_commandBufferFrameProfilesInfo.__end_ = self->_commandBufferFrameProfilesInfo.__begin_;
      v16 = v28;
      if (v27)
      {
        v189 = v27;
        operator delete(v27);
      }

      v17 = obj + 1;
      if (obj + 1 == unsignedIntegerValue)
      {
        goto LABEL_34;
      }
    }

    v129 = 0;
  }

  else
  {
LABEL_34:
    [v151 stopFrameProfiling];
    v45 = objc_loadWeakRetained(&self->_engine);
    [v45 setPlaybackMode:0];

    v46 = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__begin_;
    v47 = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__end_;
    v48 = 126 - 2 * __clz(((v47 - v46) >> 3) * v16);
    if (v47 == v46)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(v46, v47, &v184, v49, 1);
    [v151 enableStatsSampling:0];
    v189 = 0;
    v190 = 0;
    __p = &v189;
    v51 = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__begin_;
    for (j = self->_commandBufferFrameProfilesPerDMDrawCallInfo.__end_; v51 != j; v51 = (v51 + 56))
    {
      v52 = v51[1];
      v184 = *v51;
      v185 = v52;
      v53 = std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::find<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&__p, &v184);
      if (&v189 == v53)
      {
        v181 = 0uLL;
        std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:ne200100](&v182, v11, &v181);
        v191 = &v184;
        v54 = std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long> const&>,std::tuple<>>(&__p, &v184, &std::piecewise_construct, &v191);
        v55 = v54[8];
        if (v55)
        {
          v54[9] = v55;
          operator delete(v55);
          v54[8] = 0;
          v54[9] = 0;
          v54[10] = 0;
        }

        *(v54 + 4) = v182;
        v54[10] = v183;
        v53 = std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::find<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>(&__p, &v184);
      }

      *(*(v53 + 64) + 16 * *(v51 + 4)) = *(v51 + 40);
    }

    v163 = objc_opt_new();
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    obja = v144;
    v56 = [obja countByEnumeratingWithState:&v177 objects:v199 count:16];
    if (v56)
    {
      v57 = 0;
      v58 = *v178;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v178 != v58)
          {
            objc_enumerationMutation(obja);
          }

          v60 = *(*(&v177 + 1) + 8 * k);
          v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
          [v163 setObject:v61 forKeyedSubscript:v60];

          ++v57;
        }

        v56 = [obja countByEnumeratingWithState:&v177 objects:v199 count:16];
      }

      while (v56);
    }

    if (unsignedIntegerValue)
    {
      v62 = objc_opt_new();
      if (unsignedIntegerValue != 1)
      {
        v63 = [v164 objectAtIndexedSubscript:0];
        v64 = [v63 count];
        v65 = [v164 objectAtIndexedSubscript:1];
        v66 = [v65 count];
        v67 = v66 >= v64 ? v64 : v66;

        if (v67)
        {
          for (m = 0; m != v67; ++m)
          {
            v69 = [v164 objectAtIndexedSubscript:0];
            v70 = [v69 objectAtIndexedSubscript:m];
            v71 = [v164 objectAtIndexedSubscript:1];
            v72 = [v71 objectAtIndexedSubscript:m];
            isEqualToString = objc_msgSend_isEqualToString_(v70);

            if (isEqualToString)
            {
              v74 = [v164 objectAtIndexedSubscript:0];
              v75 = [v74 objectAtIndexedSubscript:m];
              [v62 addObject:v75];
            }
          }
        }
      }

      v184 = 0u;
      v185 = 0u;
      LODWORD(v186) = 1065353216;
      v76 = objc_opt_new();
      v77 = 0;
      *&v182 = 0;
      do
      {
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v78 = [v164 objectAtIndexedSubscript:v77];
        v79 = [v78 countByEnumeratingWithState:&v173 objects:v198 count:16];
        if (v79)
        {
          v80 = *v174;
          do
          {
            for (n = 0; n != v79; ++n)
            {
              if (*v174 != v80)
              {
                objc_enumerationMutation(v78);
              }

              v82 = *(*(&v173 + 1) + 8 * n);
              if (v77 && [v62 containsObject:*(*(&v173 + 1) + 8 * n)])
              {
                std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v184, &v182, &v182);
              }

              *&v182 = v182 + 1;
              v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
              [v76 setObject:v82 forKeyedSubscript:v83];
            }

            v79 = [v78 countByEnumeratingWithState:&v173 objects:v198 count:16];
          }

          while (v79);
        }

        ++v77;
      }

      while (v77 != unsignedIntegerValue);
      v84 = __p;
      if (__p != &v189)
      {
        do
        {
          v85 = [obja count];
          v181 = 0uLL;
          std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:ne200100](&v182, v85, &v181);
          v86 = 0;
          *&v181 = 0;
          do
          {
            for (ii = 0; ; ++ii)
            {
              v88 = [v164 objectAtIndexedSubscript:v86];
              v89 = ii < [v88 count];

              if (!v89)
              {
                break;
              }

              if (std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v184, &v181))
              {
                *&v181 = v181 + 1;
              }

              else
              {
                v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v181];
                v91 = [v76 objectForKeyedSubscript:v90];
                v92 = [v163 objectForKeyedSubscript:v91];
                unsignedIntegerValue2 = [v92 unsignedIntegerValue];

                v94 = v181;
                *&v181 = v181 + 1;
                *(v182 + 16 * unsignedIntegerValue2) = *(v84[8] + 16 * v94);
              }
            }

            ++v86;
          }

          while (v86 != unsignedIntegerValue);
          v95 = v84[8];
          if (v95)
          {
            v84[9] = v95;
            operator delete(v95);
            v84[8] = 0;
            v84[9] = 0;
            v84[10] = 0;
          }

          *(v84 + 4) = v182;
          v84[10] = v183;
          v96 = v84[1];
          if (v96)
          {
            do
            {
              v97 = v96;
              v96 = *v96;
            }

            while (v96);
          }

          else
          {
            do
            {
              v97 = v84[2];
              v98 = *v97 == v84;
              v84 = v97;
            }

            while (!v98);
          }

          v84 = v97;
        }

        while (v97 != &v189);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table(&v184);
    }

    v99 = [v163 objectForKeyedSubscript:@"MTLStatCommandBufferIndex"];
    unsignedIntegerValue3 = [v99 unsignedIntegerValue];

    v100 = [v163 objectForKeyedSubscript:@"MTLStatEncoderIndex"];
    unsignedIntegerValue4 = [v100 unsignedIntegerValue];

    v101 = [v163 objectForKeyedSubscript:@"MTLStatCommandIndex"];
    unsignedIntegerValue5 = [v101 unsignedIntegerValue];

    v102 = [v163 objectForKeyedSubscript:@"MTLStat_nSec"];
    unsignedIntegerValue6 = [v102 unsignedIntegerValue];

    v155 = objc_opt_new();
    v153 = objc_opt_new();
    v103 = __p;
    if (__p == &v189)
    {
      objb = 0;
      v161 = 0;
    }

    else
    {
      objb = 0;
      v161 = 0;
      v104 = -1;
      v152 = -1;
      do
      {
        v105 = v103[4];
        if (v105 != v152)
        {
          v106 = objc_opt_new();

          [v155 addObject:v106];
          v104 = -1;
          v152 = v105;
          objb = v106;
        }

        v107 = v103[5];
        if (v107 != v104)
        {
          v108 = objc_opt_new();

          v109 = objc_opt_new();
          [v153 addObject:v109];

          v161 = v108;
          [objb addObject:v108];
          v104 = v107;
        }

        v110 = objc_opt_new();
        v111 = v103[8];
        v112 = v103[9];
        while (v111 != v112)
        {
          v113 = v111[1];
          v114 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v111];
          v197[0] = v114;
          v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v113];
          v197[1] = v115;
          v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:2];
          [v110 addObject:v116];

          v111 += 2;
        }

        v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v155, "count") - 1}];
        v196[0] = v117;
        v196[1] = &unk_2860BA180;
        v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
        [v110 setObject:v118 atIndexedSubscript:unsignedIntegerValue3];

        v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objb, "count") - 1}];
        v195[0] = v119;
        v195[1] = &unk_2860BA180;
        v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:2];
        [v110 setObject:v120 atIndexedSubscript:unsignedIntegerValue4];

        v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v161, "count")}];
        v194[0] = v121;
        v194[1] = &unk_2860BA180;
        v122 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:2];
        [v110 setObject:v122 atIndexedSubscript:unsignedIntegerValue5];

        lastObject = [v153 lastObject];
        v124 = [v110 objectAtIndexedSubscript:unsignedIntegerValue6];
        v125 = [v124 objectAtIndexedSubscript:0];
        [lastObject addObject:v125];

        v126 = [MEMORY[0x277CBEB18] arrayWithObject:v110];
        [v161 addObject:v126];

        v127 = v103[1];
        if (v127)
        {
          do
          {
            v128 = v127;
            v127 = *v127;
          }

          while (v127);
        }

        else
        {
          do
          {
            v128 = v103[2];
            v98 = *v128 == v103;
            v103 = v128;
          }

          while (!v98);
        }

        v103 = v128;
      }

      while (v128 != &v189);
    }

    v130 = objc_opt_new();
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v131 = v153;
    v132 = [v131 countByEnumeratingWithState:&v169 objects:v193 count:16];
    if (v132)
    {
      v133 = *v170;
      do
      {
        for (jj = 0; jj != v132; ++jj)
        {
          if (*v170 != v133)
          {
            objc_enumerationMutation(v131);
          }

          v135 = *(*(&v169 + 1) + 8 * jj);
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v136 = v135;
          v137 = [v136 countByEnumeratingWithState:&v165 objects:v192 count:16];
          if (v137)
          {
            v138 = *v166;
            v139 = 0.0;
            do
            {
              for (kk = 0; kk != v137; ++kk)
              {
                if (*v166 != v138)
                {
                  objc_enumerationMutation(v136);
                }

                [*(*(&v165 + 1) + 8 * kk) doubleValue];
                v139 = v139 + v141;
              }

              v137 = [v136 countByEnumeratingWithState:&v165 objects:v192 count:16];
            }

            while (v137);
          }

          else
          {
            v139 = 0.0;
          }

          v142 = [MEMORY[0x277CCABB0] numberWithDouble:v139];
          [v130 addObject:v142];
        }

        v132 = [v131 countByEnumeratingWithState:&v169 objects:v193 count:16];
      }

      while (v132);
    }

    [v150 setObject:v155 forKeyedSubscript:*MEMORY[0x277D0B030]];
    [v150 setObject:v130 forKeyedSubscript:@"PerDrawNsecTimes"];
    v129 = v150;

    std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::destroy(&__p, v189);
  }

  return v129;
}

- (void)createBatchIdFilterMapping
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];
  [player enableStatsSampling:1];

  v6 = objc_loadWeakRetained(&self->_engine);
  [v6 setPlaybackMode:12];

  v7 = objc_loadWeakRetained(&self->_engine);
  [v7 playbackToFunction:0 withLoops:1];

  v8 = objc_loadWeakRetained(&self->_engine);
  player2 = [v8 player];
  [player2 enableStatsSampling:0];

  v9 = objc_loadWeakRetained(&self->_engine);
  [v9 setPlaybackMode:0];
}

- (id)profileEncodersForProfileInfo:(id)info
{
  v103 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  [(DYMTLDebugPlaybackEngineCounterSupport *)self _setupPState];
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];
  [player enableStatsSampling:1];

  v6 = objc_loadWeakRetained(&selfCopy->_engine);
  player2 = [v6 player];
  [player2 sampleEncoderCounters];

  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"MTLStatCommandBufferIndex", @"MTLStatEncoderIndex", @"MTLStatCommandIndex", @"MTLStat_nSec", @"MTLStatTotalGPUCycles", 0}];
  v9 = [v8 mutableCopy];

  v10 = objc_loadWeakRetained(&selfCopy->_engine);
  v58 = v9;
  player3 = [v10 player];

  v62 = player3;
  if ([player3 isCounterAvailable:@"SW_PBUsed"])
  {
    v12 = @"SW_PBUsed";
  }

  else
  {
    if (![player3 isCounterAvailable:@"_fedf2c59"])
    {
      v79 = 0;
      goto LABEL_7;
    }

    v12 = @"_fedf2c59";
  }

  [v9 addObject:v12];
  v79 = 1;
LABEL_7:
  v65 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:infoCopy];
  [v65 setValue:v9 forKey:*MEMORY[0x277D0B480]];
  loopCount = selfCopy->_loopCount;
  selfCopy->_loopCount = 1;
  if (selfCopy->_isAGXDevice)
  {
    v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0B4F8]];
    v15 = v14;
    if (v14)
    {
      [v14 doubleValue];
      v17 = floor(v16);
      v18 = (v17 * 100.0);
      v19 = (ceil(v16) * 100.0);
      v20 = v16 - v17;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v20 = 0.5;
    }

    v64 = [(DYMTLDebugPlaybackEngineCounterSupport *)selfCopy _profileFrameWithCounterListsForProfileInfo:v65 setConsistentState:v19];
  }

  else
  {
    v64 = [(DYMTLDebugPlaybackEngineCounterSupport *)selfCopy _profileFrameWithCounterListsForProfileInfo:v65];
    v19 = 0;
    v18 = 0;
    v20 = 0.5;
  }

  v61 = [(DYMTLDebugPlaybackEngineCounterSupport *)selfCopy _profileSplitEncodersForProfileInfo:v65];
  if (selfCopy->_isAGXDevice)
  {
    v21 = [(DYMTLDebugPlaybackEngineCounterSupport *)selfCopy _profileFrameForFrameTiming:v65 atConsistentState:v19];
    v22 = ((1.0 - v20) * [(DYMTLDebugPlaybackEngineCounterSupport *)selfCopy _profileFrameForFrameTiming:v65 atConsistentState:v18]+ v20 * v21);
    v23 = MEMORY[0x277CBEB38];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
    v60 = [v23 dictionaryWithObject:v24 forKey:@"gputime"];
  }

  else
  {
    v60 = 0;
  }

  selfCopy->_loopCount = loopCount;
  if (!v64)
  {
    v35 = 0;
    goto LABEL_67;
  }

  v56 = [v64 objectForKeyedSubscript:*MEMORY[0x277D0B030]];
  v71 = objc_opt_new();
  v72 = objc_opt_new();
  v73 = objc_opt_new();
  v68 = objc_opt_new();
  [v64 objectForKeyedSubscript:*MEMORY[0x277D0B0D0]];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  obj = v96 = 0u;
  v25 = [obj countByEnumeratingWithState:&v95 objects:v102 count:16];
  if (!v25)
  {
    v27 = -1;
    v29 = -1;
    LODWORD(v33) = -1;
    goto LABEL_37;
  }

  v81 = 0;
  v26 = 0;
  v27 = -1;
  v28 = *v96;
  v29 = -1;
  v30 = 0xFFFFFFFFLL;
  do
  {
    v31 = 0;
    v32 = v81;
    v81 += v25;
    do
    {
      if (*v96 != v28)
      {
        objc_enumerationMutation(obj);
      }

      if (objc_msgSend_isEqualToString_(@"MTLStat_nSec"))
      {
        v27 = v32;
      }

      else
      {
        if ((objc_msgSend_isEqualToString_(@"SW_PBUsed") & 1) == 0 && (objc_msgSend_isEqualToString_(@"_fedf2c59") & 1) == 0)
        {
          v33 = v32;
          if (!objc_msgSend_isEqualToString_(@"MTLStatTotalGPUCycles"))
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v29 = v32;
      }

      v33 = v30;
LABEL_28:
      ++v26;
      v30 = v33;
      if (v26 == 3)
      {
        goto LABEL_37;
      }

LABEL_29:
      v32 = (v32 + 1);
      ++v31;
    }

    while (v25 != v31);
    v34 = [obj countByEnumeratingWithState:&v95 objects:v102 count:16];
    v25 = v34;
    LODWORD(v33) = v30;
  }

  while (v34);
LABEL_37:

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v57 = v56;
  v54 = [v57 countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v54)
  {
    v55 = *v92;
    v36 = v27;
    v78 = v33;
    v76 = v29;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v92 != v55)
        {
          objc_enumerationMutation(v57);
        }

        v37 = *(*(&v91 + 1) + 8 * i);
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v69 = v37;
        v74 = [v69 countByEnumeratingWithState:&v87 objects:v100 count:16];
        if (v74)
        {
          v70 = *v88;
          do
          {
            for (j = 0; j != v74; ++j)
            {
              if (*v88 != v70)
              {
                objc_enumerationMutation(v69);
              }

              v38 = *(*(&v87 + 1) + 8 * j);
              v39 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
              v40 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
              v82 = objc_opt_new();
              v80 = objc_opt_new();
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v77 = v38;
              v41 = [v77 countByEnumeratingWithState:&v83 objects:v99 count:16];
              if (v41)
              {
                v42 = *v84;
                do
                {
                  for (k = 0; k != v41; ++k)
                  {
                    if (*v84 != v42)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v44 = *(*(&v83 + 1) + 8 * k);
                    v45 = MEMORY[0x277CCABB0];
                    v46 = [v44 objectAtIndexedSubscript:v36];
                    v47 = [v45 numberWithUnsignedLongLong:{objc_msgSend(v39, "unsignedLongLongValue") + objc_msgSend(v46, "unsignedLongLongValue")}];

                    v39 = v47;
                    v48 = [v44 objectAtIndexedSubscript:v36];
                    [v82 addObject:v48];

                    v49 = [v44 objectAtIndexedSubscript:v78];
                    [v80 addObject:v49];

                    if (v79)
                    {
                      v50 = MEMORY[0x277CCABB0];
                      v51 = [v44 objectAtIndexedSubscript:v76];
                      v52 = [v50 numberWithUnsignedLongLong:{objc_msgSend(v40, "unsignedLongLongValue") + objc_msgSend(v51, "unsignedLongLongValue")}];

                      v40 = v52;
                    }
                  }

                  v41 = [v77 countByEnumeratingWithState:&v83 objects:v99 count:16];
                }

                while (v41);
              }

              [v71 addObject:v39];
              [v72 addObject:v82];
              [v73 addObject:v80];
              if (v79)
              {
                [v68 addObject:v40];
              }
            }

            v74 = [v69 countByEnumeratingWithState:&v87 objects:v100 count:16];
          }

          while (v74);
        }
      }

      v54 = [v57 countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v54);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v35 setObject:v71 forKeyedSubscript:@"encoder time data"];
  [v35 setObject:v72 forKeyedSubscript:@"kick time data"];
  [v35 setObject:v73 forKeyedSubscript:@"kick cycle data"];
  [v35 setObject:v61 forKeyedSubscript:*MEMORY[0x277D0B4E0]];
  if (selfCopy->_isAGXDevice)
  {
    [v35 setObject:v60 forKeyedSubscript:@"consistent time"];
  }

  if (v79)
  {
    [v35 setObject:v68 forKeyedSubscript:@"tilerParamBufBytesUsedArray"];
  }

LABEL_67:

  return v35;
}

- (id)profileFrameWithCounterListsForProfileInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];
  [player enableStatsSampling:1];

  v7 = objc_loadWeakRetained(&self->_engine);
  player2 = [v7 player];
  [player2 setupAllStatLocationsWithBlitOption:1];

  v9 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfo:infoCopy encoderPass:0];
  if (self->_isAGXDevice)
  {
    v10 = *MEMORY[0x277D0B4E0];
    v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0B4E0]];
    v12 = v11;
    if (v11 && [v11 BOOLValue])
    {
      v13 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileSplitEncodersForProfileInfo:infoCopy];
      if (v13)
      {
        [v9 setObject:v13 forKeyedSubscript:v10];
      }
    }
  }

  else
  {
    v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D0B4D8]];

    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = objc_loadWeakRetained(&self->_engine);
    player3 = [v15 player];
    [player3 enableStatsSampling:1];

    v17 = objc_loadWeakRetained(&self->_engine);
    player4 = [v17 player];
    [player4 sampleEncoderCounters];

    v12 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfo:infoCopy encoderPass:1];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277D0B150]];
  }

LABEL_10:
  v19 = objc_loadWeakRetained(&self->_engine);
  player5 = [v19 player];
  [player5 enableStatsSampling:0];

  return v9;
}

- (id)profileFrameWithCounterListsForProfileInfoAsync:(id)async
{
  v3 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfoAsync:async encoderPass:0 updateStatSampling:1 setConsistentState:0];

  return v3;
}

- (id)_profileFrameWithCounterListsForProfileInfo:(id)info
{
  v3 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfo:info encoderPass:0];

  return v3;
}

- (id)_updatedBatchInfos:(id)infos fromPerEncoderDrawCallCount:(id)count
{
  infosCopy = infos;
  countCopy = count;
  v7 = objc_opt_new();
  v8 = 0;
  v9 = 0;
  while (v8 < [countCopy count])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    v11 = [countCopy objectForKeyedSubscript:v10];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v13 = [infosCopy objectAtIndexedSubscript:v9];
      [v7 addObject:v13];
      ++v9;
    }

    else
    {
      [v7 addObject:&unk_2860BA198];
    }

    ++v8;
  }

  return v7;
}

- (id)_runPassesForCounterLists:(id)lists encoderPass:(BOOL)pass frameProfileInfo:(void *)info
{
  listsCopy = lists;
  [(DYMTLDebugPlaybackEngineCounterSupport *)self _clearData];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  [WeakRetained setPlaybackMode:5];

  v7 = objc_loadWeakRetained(&self->_engine);
  player = [v7 player];

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__3;
  v52 = __Block_byref_object_dispose__3;
  v9 = [listsCopy objectForKeyedSubscript:*MEMORY[0x277D0B480]];
  v53 = [player counterInfo:v9];

  if (self->_isAGXDevice)
  {
    v10 = *MEMORY[0x277D0B038];
    v11 = [listsCopy objectForKeyedSubscript:*MEMORY[0x277D0B038]];
    if (v11)
    {
      v12 = [listsCopy objectForKeyedSubscript:@"perEncoderIndexDrawCallCount"];
      v13 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _updatedBatchInfos:v11 fromPerEncoderDrawCallCount:v12];

      [player setupBatchFilterForEncoders:v13];
      if (v13)
      {
        [v49[5] setObject:v13 forKeyedSubscript:v10];
        v14 = *MEMORY[0x277D0B220];
        v15 = [listsCopy objectForKeyedSubscript:*MEMORY[0x277D0B220]];

        if (v15)
        {
          [v49[5] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v14];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  [player setupProfilingForCounterLists];
  v16 = [v49[5] objectForKeyedSubscript:*MEMORY[0x277D0B398]];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v18 = dispatch_group_create();
  if (unsignedIntegerValue)
  {
    v19 = 0;
    while (!v45[3])
    {
      if (([player setupProfilingForListAtIndex:v19] & 1) == 0)
      {

        v27 = 0;
        goto LABEL_20;
      }

      v20 = objc_loadWeakRetained(&self->_engine);
      [v20 setPlaybackMode:5];

      [player resetFunctionPlayerData];
      v21 = objc_loadWeakRetained(&self->_engine);
      [v21 setLoopTimeLimit:3000000000];

      v22 = objc_loadWeakRetained(&self->_engine);
      [v22 playbackToFunction:0 withLoops:self->_loopCount];

      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x4812000000;
      v41[3] = __Block_byref_object_copy__85;
      v41[4] = __Block_byref_object_dispose__86;
      v41[5] = "";
      *__p = *&self->_commandBufferFrameProfilesInfo.__begin_;
      self->_commandBufferFrameProfilesInfo.__begin_ = 0;
      self->_commandBufferFrameProfilesInfo.__end_ = 0;
      cap = self->_commandBufferFrameProfilesInfo.__cap_;
      self->_commandBufferFrameProfilesInfo.__cap_ = 0;
      dispatch_group_enter(v18);
      v23 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__DYMTLDebugPlaybackEngineCounterSupport__runPassesForCounterLists_encoderPass_frameProfileInfo___block_invoke;
      block[3] = &unk_27930F668;
      v37 = v41;
      v38 = v19;
      v36 = &v48;
      v35 = &v44;
      block[4] = self;
      v24 = listsCopy;
      passCopy = pass;
      v33 = v24;
      infoCopy = info;
      v34 = v18;
      dispatch_async(v23, block);

      _Block_object_dispose(v41, 8);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (unsignedIntegerValue == ++v19)
      {
        break;
      }
    }
  }

  [player stopFrameProfiling];
  v25 = objc_loadWeakRetained(&self->_engine);
  [v25 setPlaybackMode:0];

  dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  if (v45[3])
  {
    v26 = 0;
  }

  else
  {
    v26 = v49[5];
  }

  v27 = v26;
LABEL_20:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v27;
}

void __97__DYMTLDebugPlaybackEngineCounterSupport__runPassesForCounterLists_encoderPass_frameProfileInfo___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v2 = objc_opt_new();
    v3 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D0B0C8]];
    v4 = [v3 objectAtIndexedSubscript:*(a1 + 80)];
    [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D0B0D0]];

    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
    v8 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
    if (v7 == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(v6, v7, &v12, v9, 1);
    v13 = 0;
    v14 = 0;
    v12 = 0;
    if (([*(a1 + 32) _computeAverageForFrameProfile:&v12 forProfile:*(*(a1 + 72) + 8) + 48 withInfo:*(a1 + 40) andUpdatedCounterInfo:v2 forEncoders:*(a1 + 96)] & 1) == 0)
    {
      atomic_fetch_add_explicit((*(*(a1 + 56) + 8) + 24), 1uLL, memory_order_relaxed);
    }

    v10 = v12;
    v11 = v13;
    v15 = *(a1 + 88);
    if (v12 != v13)
    {
      do
      {
        std::back_insert_iterator<std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>::operator=[abi:ne200100](&v15, v10);
        v10 += 3;
      }

      while (v10 != v11);
      v10 = v12;
    }

    if (v10)
    {
      v13 = v10;
      operator delete(v10);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)_profileFrameWithCounterListsForProfileInfoAsync:(id)async encoderPass:(BOOL)pass updateStatSampling:(BOOL)sampling setConsistentState:(unsigned int)state
{
  v6 = *&state;
  samplingCopy = sampling;
  passCopy = pass;
  asyncCopy = async;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4812000000;
  v45 = __Block_byref_object_copy__85;
  v46 = __Block_byref_object_dispose__86;
  v47 = "";
  v49 = 0;
  v50 = 0;
  v48 = 0;
  if (samplingCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    player = [WeakRetained player];
    [player enableStatsSampling:1];

    v13 = objc_loadWeakRetained(&self->_engine);
    player2 = [v13 player];
    [player2 setupAllStatLocationsWithBlitOption:1];
  }

  if (v6 && self->_isAGXDevice)
  {
    v15 = objc_loadWeakRetained(&self->_engine);
    player3 = [v15 player];
    [player3 setConsistentStateTo:v6];

    v17 = objc_loadWeakRetained(&self->_engine);
    player4 = [v17 player];
    [player4 enableConsistentState:1];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _runPassesForCounterLists:asyncCopy encoderPass:passCopy frameProfileInfo:v43 + 6];
  if (samplingCopy)
  {
    v19 = objc_loadWeakRetained(&self->_engine);
    player5 = [v19 player];
    [player5 enableStatsSampling:0];
  }

  if (v37[5])
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__3;
    v34 = __Block_byref_object_dispose__3;
    future = [MEMORY[0x277D0AFC8] future];
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __141__DYMTLDebugPlaybackEngineCounterSupport__profileFrameWithCounterListsForProfileInfoAsync_encoderPass_updateStatSampling_setConsistentState___block_invoke;
    block[3] = &unk_27930F690;
    v27 = &v42;
    v26 = &v36;
    block[4] = self;
    v29 = passCopy;
    v25 = asyncCopy;
    v28 = &v30;
    dispatch_async(v21, block);

    v22 = v31[5];
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v22 = [MEMORY[0x277D0AFC8] futureWithResult:0 error:0];
  }

  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return v22;
}

void __141__DYMTLDebugPlaybackEngineCounterSupport__profileFrameWithCounterListsForProfileInfoAsync_encoderPass_updateStatSampling_setConsistentState___block_invoke(uint64_t a1)
{
  v166 = *MEMORY[0x277D85DE8];
  v1 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D0B398]];
  v123 = [v1 unsignedIntegerValue];

  v125 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D0B0C8]];
  if (v123)
  {
    v2 = 0;
    for (i = 0; i != v123; ++i)
    {
      v4 = [v125 objectAtIndexedSubscript:i];
      v2 += [v4 count];
    }
  }

  else
  {
    v2 = 0;
  }

  v114 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:*MEMORY[0x277D0B0D0]];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  v8 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(v6, v7, &v126, v9, 1);
  v158[0] = 0;
  v158[1] = 0;
  v157 = v158;
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 48);
  for (j = *(v10 + 56); v11 != j; v11 += 3)
  {
    v126 = *v11;
    *&v127 = *(v11 + 2);
    v13 = std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::find<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(&v157, &v126);
    if (v158 == v13)
    {
      v154 = 0uLL;
      std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:ne200100](&v155, v2, &v154);
      v159 = &v126;
      v14 = std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__emplace_unique_key_args<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long long,unsigned long long,unsigned long long> const&>,std::tuple<>>(&v157, &v126, &std::piecewise_construct, &v159);
      v15 = v14[7];
      if (v15)
      {
        v14[8] = v15;
        operator delete(v15);
        v14[7] = 0;
        v14[8] = 0;
        v14[9] = 0;
      }

      *(v14 + 7) = v155;
      v14[9] = v156;
      v13 = std::__tree<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__map_value_compare<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::less<std::tuple<unsigned long long,unsigned long long,unsigned long long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long long,unsigned long long,unsigned long long>,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::find<std::tuple<unsigned long long,unsigned long long,unsigned long long>>(&v157, &v126);
    }

    *(v13[7] + 16 * *(v11 + 3)) = v11[2];
  }

  v159 = objc_opt_new();
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  obj = v114;
  v16 = [obj countByEnumeratingWithState:&v150 objects:v165 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v151;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v151 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v150 + 1) + 8 * k);
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
        [v159 setObject:v21 forKeyedSubscript:v20];

        ++v17;
      }

      v16 = [obj countByEnumeratingWithState:&v150 objects:v165 count:16];
    }

    while (v16);
  }

  if (v123)
  {
    v22 = objc_opt_new();
    if (v123 != 1)
    {
      v23 = [v125 objectAtIndexedSubscript:0];
      v24 = [v23 count];
      v25 = [v125 objectAtIndexedSubscript:1];
      v26 = [v25 count];
      v27 = v26 >= v24 ? v24 : v26;

      if (v27)
      {
        for (m = 0; m != v27; ++m)
        {
          v29 = [v125 objectAtIndexedSubscript:0];
          v30 = [v29 objectAtIndexedSubscript:m];
          v31 = [v125 objectAtIndexedSubscript:1];
          v32 = [v31 objectAtIndexedSubscript:m];
          isEqualToString = objc_msgSend_isEqualToString_(v30);

          if (isEqualToString)
          {
            v34 = [v125 objectAtIndexedSubscript:0];
            v35 = [v34 objectAtIndexedSubscript:m];
            [v22 addObject:v35];
          }
        }
      }
    }

    v126 = 0u;
    v127 = 0u;
    LODWORD(v128) = 1065353216;
    v36 = objc_opt_new();
    v37 = 0;
    *&v155 = 0;
    do
    {
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v38 = [v125 objectAtIndexedSubscript:v37];
      v39 = [v38 countByEnumeratingWithState:&v146 objects:v164 count:16];
      if (v39)
      {
        v40 = *v147;
        do
        {
          for (n = 0; n != v39; ++n)
          {
            if (*v147 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v146 + 1) + 8 * n);
            if (v37 && [v22 containsObject:*(*(&v146 + 1) + 8 * n)])
            {
              std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v126, &v155, &v155);
            }

            *&v155 = v155 + 1;
            v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
            [v36 setObject:v42 forKeyedSubscript:v43];
          }

          v39 = [v38 countByEnumeratingWithState:&v146 objects:v164 count:16];
        }

        while (v39);
      }

      ++v37;
    }

    while (v37 != v123);
    v44 = v157;
    if (v157 != v158)
    {
      do
      {
        v45 = [obj count];
        v154 = 0uLL;
        std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:ne200100](&v155, v45, &v154);
        v46 = 0;
        *&v154 = 0;
        do
        {
          for (ii = 0; ; ++ii)
          {
            v48 = [v125 objectAtIndexedSubscript:v46];
            v49 = ii < [v48 count];

            if (!v49)
            {
              break;
            }

            if (std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v126, &v154))
            {
              *&v154 = v154 + 1;
            }

            else
            {
              v50 = v159;
              v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v154];
              v52 = [v36 objectForKeyedSubscript:v51];
              v53 = [v50 objectForKeyedSubscript:v52];
              v54 = [v53 unsignedIntegerValue];

              v55 = v154;
              *&v154 = v154 + 1;
              *(v155 + 16 * v54) = *(v44[7] + 16 * v55);
            }
          }

          ++v46;
        }

        while (v46 != v123);
        v56 = v44[7];
        if (v56)
        {
          v44[8] = v56;
          operator delete(v56);
          v44[7] = 0;
          v44[8] = 0;
          v44[9] = 0;
        }

        *(v44 + 7) = v155;
        v44[9] = v156;
        v57 = v44[1];
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = v44[2];
            v78 = *v58 == v44;
            v44 = v58;
          }

          while (!v78);
        }

        v44 = v58;
      }

      while (v58 != v158);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table(&v126);
  }

  v59 = [v159 objectForKeyedSubscript:@"MTLStatCommandBufferIndex"];
  v60 = [v59 unsignedIntegerValue];

  *&v155 = v60;
  v61 = [v159 objectForKeyedSubscript:@"MTLStatEncoderIndex"];
  v62 = [v61 unsignedIntegerValue];

  *&v154 = v62;
  v63 = [v159 objectForKeyedSubscript:@"MTLStatCommandIndex"];
  v64 = [v63 unsignedIntegerValue];

  v145 = v64;
  v144 = 0;
  v143 = 0;
  v66 = a1 + 32;
  v65 = *(a1 + 32);
  if (*(v65 + 104))
  {
    v67 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D0B390]];
    v68 = v67;
    if (v67)
    {
      v118 = 0;
      v124 = [v67 count] != 0;
    }

    else
    {
      v124 = 0;
      v118 = 0;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v65 + 88));
    v70 = [WeakRetained player];
    v144 = [v70 isBlitSamplingSupported];

    v71 = *(a1 + 40);
    if (v144 == 1)
    {
      [v71 objectForKeyedSubscript:@"perEncoderIndexDrawCallCount"];
    }

    else
    {
      [v71 objectForKeyedSubscript:@"withoutBlitPerEncoderIndexDrawCallCount"];
    }
    v118 = ;
    v72 = [*(a1 + 40) objectForKeyedSubscript:@"blitEncoderIndices"];
    v73 = v143;
    v143 = v72;

    if (v143)
    {
      v124 = 0;
      goto LABEL_73;
    }

    v74 = objc_opt_new();
    v124 = 0;
    v68 = v143;
    v143 = v74;
  }

LABEL_73:
  v75 = objc_opt_new();
  v141 = -1;
  v142 = v75;
  v139 = 0;
  v140 = 0;
  v138 = 0;
  *&v126 = a1 + 32;
  *(&v126 + 1) = a1 + 40;
  *&v127 = &v144;
  *(&v127 + 1) = &v141;
  v128 = &v159;
  v129 = &v138;
  v130 = &v143;
  v131 = a1 + 72;
  v132 = &v139;
  v133 = &v140;
  v134 = &v155;
  v135 = &v142;
  v136 = &v154;
  v137 = &v145;
  v76 = v157;
  if (v157 != v158)
  {
    v117 = -1;
    v77 = -1;
    v119 = -1;
    v120 = -1;
    v116 = -1;
    do
    {
      if ((*(*v66 + 104) & 1) != 0 || (*(a1 + 72) == 1 ? (v78 = v118 == 0) : (v78 = 1), v78))
      {
        v121 = v77;
      }

      else
      {
        v101 = v76[7];
        v102 = *(v101 + 16 * v155);
        v103 = *(v101 + 16 * v154);
        v104 = v116;
        v105 = v116 == v102 && v77 == v103;
        if (v105)
        {
          v106 = v117;
        }

        else
        {
          v106 = v117 + 1;
        }

        if (!v105)
        {
          v104 = v102;
        }

        v116 = v104;
        v117 = v106;
        v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v106];
        v108 = [v118 objectForKeyedSubscript:v107];
        v121 = v103;
        v109 = [v108 unsignedLongLongValue];

        if (!v109)
        {
          goto LABEL_109;
        }
      }

      v79 = v76[4];
      if (v79 != v119)
      {
        v141 = -1;
        v80 = objc_opt_new();
        v81 = v140;
        v140 = v80;

        [v142 addObject:v140];
        v119 = v79;
        v120 = -1;
      }

      v82 = v76[5];
      if (v82 != v120)
      {
        v141 += v82 - v120;
        v83 = objc_opt_new();
        v84 = v139;
        v139 = v83;

        [v140 addObject:v139];
        _ZZZ141__DYMTLDebugPlaybackEngineCounterSupport__profileFrameWithCounterListsForProfileInfoAsync_encoderPass_updateStatSampling_setConsistentState__EUb_ENK3__0clEb(&v126, 1);
        v120 = v82;
      }

      v85 = objc_opt_new();
      v86 = v76[7];
      v87 = v76[8];
      while (v86 != v87)
      {
        v88 = *v86;
        if ((*(*v66 + 104) & 1) != 0 && v124)
        {
          v89 = v86[1];
          v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v88];
          v163[0] = v90;
          v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v89];
          v163[1] = v91;
          v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
          [v85 addObject:v92];
        }

        else
        {
          v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v88];
          [v85 addObject:v90];
        }

        v86 += 2;
      }

      if (*(*v66 + 104))
      {
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v142, "count") - 1}];
        if (v124)
          v93 = {;
          v162[0] = v93;
          v162[1] = &unk_2860BA180;
          v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:2];
          [v85 setObject:v94 atIndexedSubscript:v155];

          v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v140, "count") - 1}];
          v161[0] = v95;
          v161[1] = &unk_2860BA180;
          v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:2];
          [v85 setObject:v96 atIndexedSubscript:v154];

          v97 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v76[6]];
          v160[0] = v97;
          v160[1] = &unk_2860BA180;
          v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:2];
          [v85 setObject:v98 atIndexedSubscript:v145];
        }

        else
          v110 = {;
          [v85 setObject:v110 atIndexedSubscript:v155];

          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v140, "count") - 1}];
          [v85 setObject:v111 atIndexedSubscript:v154];

          v97 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v76[6]];
          [v85 setObject:v97 atIndexedSubscript:v145];
        }
      }

      else
      {
        v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v142, "count") - 1}];
        [v85 setObject:v99 atIndexedSubscript:v155];

        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v140, "count") - 1}];
        [v85 setObject:v100 atIndexedSubscript:v154];

        v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v139, "count")}];
        [v85 setObject:v97 atIndexedSubscript:v145];
      }

      [v139 addObject:v85];
LABEL_109:
      v77 = v121;
      v112 = v76[1];
      if (v112)
      {
        do
        {
          v113 = v112;
          v112 = *v112;
        }

        while (v112);
      }

      else
      {
        do
        {
          v113 = v76[2];
          v78 = *v113 == v76;
          v76 = v113;
        }

        while (!v78);
      }

      v76 = v113;
    }

    while (v113 != v158);
  }

  _ZZZ141__DYMTLDebugPlaybackEngineCounterSupport__profileFrameWithCounterListsForProfileInfoAsync_encoderPass_updateStatSampling_setConsistentState__EUb_ENK3__0clEb(&v126, 0);
  [*(*(*(a1 + 48) + 8) + 40) setObject:v142 forKeyedSubscript:*MEMORY[0x277D0B030]];
  [*(*(*(a1 + 64) + 8) + 40) setResult:*(*(*(a1 + 48) + 8) + 40)];

  std::__tree<DYMTLIABDecodingOp>::destroy(&v157, v158[0]);
}

- (id)_profileFrameWithCounterListsForProfileInfo:(id)info encoderPass:(BOOL)pass
{
  v4 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfoAsync:info encoderPass:pass updateStatSampling:0 setConsistentState:0];
  result = [v4 result];

  return result;
}

- (id)_profileFrameWithCounterListsForProfileInfo:(id)info setConsistentState:(unsigned int)state
{
  v4 = [(DYMTLDebugPlaybackEngineCounterSupport *)self _profileFrameWithCounterListsForProfileInfoAsync:info encoderPass:0 updateStatSampling:0 setConsistentState:*&state];
  result = [v4 result];

  return result;
}

- (unint64_t)_profileFrameForFrameTiming:(id)timing atConsistentState:(unsigned int)state
{
  v4 = *&state;
  timingCopy = timing;
  [(DYMTLDebugPlaybackEngineCounterSupport *)self _clearData];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];

  v9 = objc_loadWeakRetained(&self->_engine);
  [v9 setPlaybackMode:11];

  v10 = [timingCopy objectForKeyedSubscript:*MEMORY[0x277D0B480]];
  v11 = [player counterInfo:v10];

  [player setupFrameTimeProfiling];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D0B398]];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  if (unsignedIntegerValue != 1 || ([player allowOverlap:1 withPState:v4], !objc_msgSend(player, "setupProfilingForListAtIndex:", 0)) || (v14 = objc_loadWeakRetained(&self->_engine), objc_msgSend(v14, "setPlaybackMode:", 11), v14, objc_msgSend(player, "resetFunctionPlayerData"), v15 = objc_loadWeakRetained(&self->_engine), objc_msgSend(v15, "setLoopTimeLimit:", 3000000000), v15, v16 = objc_loadWeakRetained(&self->_engine), objc_msgSend(v16, "playbackToFunction:withLoops:", 0, self->_loopCount), v16, objc_msgSend(player, "allowOverlap:withPState:", 0, 0), v17 = objc_loadWeakRetained(&self->_engine), objc_msgSend(v17, "setPlaybackMode:", 0), v17, end = self->_commandBufferFrameProfilesInfo.__end_, begin = self->_commandBufferFrameProfilesInfo.__begin_, begin == end) || (std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(begin, end, &v29, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4)), 1), v20 = self->_commandBufferFrameProfilesInfo.__begin_, v21 = self->_commandBufferFrameProfilesInfo.__end_, v20 == v21))
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *v20;
      v25 = v20[1];
      v20 += 6;
      if (v23 <= v24)
      {
        v23 = v24;
      }

      v26 = v25 >= v23;
      v27 = v25 - v23;
      if (v25 > v23)
      {
        v23 = v25;
      }

      if (!v26)
      {
        v27 = 0;
      }

      v22 += v27;
    }

    while (v20 != v21);
  }

  return v22;
}

- (id)availableCounters
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];
  v4 = [player counterInfo:0];

  return v4;
}

- (id)derivedCounterData
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  player = [WeakRetained player];
  derivedCounterData = [player derivedCounterData];

  return derivedCounterData;
}

- (void)addCounters:(id)counters
{
  countersCopy = counters;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  frameProfiling = self->_frameProfiling;
  self->_frameProfiling = dictionary;

  v6 = [countersCopy copy];
  [(NSMutableDictionary *)self->_frameProfiling setObject:v6 forKeyedSubscript:@"frame counters"];
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end