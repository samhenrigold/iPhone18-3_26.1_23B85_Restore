@interface GTPerfStatsHelper
- (BOOL)_collectOperatingPoints;
- (GTPerfStatsHelper)initWithConfigurationVariables:(id)variables;
- (GTPerfStatsHelper)initWithOutputPath:(id)path;
- (id).cxx_construct;
- (id)_frequenciesForStateName:(const char *)name forReg:(unsigned int)reg;
- (id)exportStats;
- (void)gatherStats;
- (void)reset;
- (void)setup;
- (void)startCollectingPerfStatsAtInterval:(unint64_t)interval andPeriodicSamplesAtInterval:(unint64_t)atInterval;
- (void)stopCollectingStats;
@end

@implementation GTPerfStatsHelper

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (id)exportStats
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0x86BCA1AF286BCA1BLL * ((self->_perfStateGroups.__end_ - self->_perfStateGroups.__begin_) >> 3) + 1];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0x86BCA1AF286BCA1BLL * ((self->_perfStateGroups.__end_ - self->_perfStateGroups.__begin_) >> 3)];
  begin = self->_perfStateGroups.__begin_;
  end = self->_perfStateGroups.__end_;
  if (begin == end)
  {
    goto LABEL_13;
  }

  v8 = 0;
  do
  {
    v9 = *(begin + 19);
    if ((v9 - 1) < 2)
    {
      v10 = *(begin + 10);
      v11 = *(begin + 11);
      if (v10 == v11)
      {
        goto LABEL_10;
      }

      v12 = [MEMORY[0x277CBEB28] dataWithBytes:v10 length:v11 - v10];
      [v4 setObject:v12 forKeyedSubscript:*(begin + 3)];
      goto LABEL_9;
    }

    if (!v9)
    {
      v13 = *(begin + 6);
      v14 = *(begin + 7);
      if (v13 != v14)
      {
        v12 = [MEMORY[0x277CBEB28] dataWithBytes:v13 length:v14 - v13];
        [v4 setObject:v12 forKeyedSubscript:*(begin + 3)];
        v8 = 1;
LABEL_9:
      }
    }

LABEL_10:
    [v5 setObject:*(begin + 17) forKeyedSubscript:*(begin + 3)];
    begin = (begin + 152);
  }

  while (begin != end);
  if (v8)
  {
    v33 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v33];
    v16 = v33;
    v29 = v15;
    [v4 setObject:v15 forKeyedSubscript:@"Group Counters"];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timebaseInfo.numer];
    v34[0] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timebaseInfo.denom];
    v34[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

    v32 = v16;
    v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v32];
    v21 = v32;

    [v4 setObject:v20 forKeyedSubscript:@"Time Base Info"];
    socBlockBandwidths = self->_socBlockBandwidths;
    v31 = v21;
    v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:socBlockBandwidths requiringSecureCoding:1 error:&v31];
    v24 = v31;

    [v4 setObject:v23 forKeyedSubscript:@"BW Info"];
    configVariables = self->_configVariables;
    v30 = v24;
    v26 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:configVariables requiringSecureCoding:1 error:&v30];
    v27 = v30;

    [v4 setObject:v26 forKeyedSubscript:@"Configuration"];
  }

LABEL_13:

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)gatherStats
{
  begin = self->_perfStateGroups.__begin_;
  for (i = self->_perfStateGroups.__end_; begin != i; begin = (begin + 152))
  {
    v4 = *(begin + 19);
    if (v4)
    {
      if (v4 == 2)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        firstObject = [*(begin + 5) firstObject];

        v22 = firstObject;
        v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
        [v7 setNumberStyle:1];
        v10 = *(begin + 5);
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = ___ZN16GTPerfStateGroup29_GatherSampleDataSOCPerfStateERK18mach_timebase_info_block_invoke;
        v16 = &unk_2796580A0;
        v17 = &v19;
        v18 = begin;
        [v10 enumerateObjectsUsingBlock:&v13];
      }

      else
      {
        if (v4 != 1)
        {
          continue;
        }

        v5 = *(begin + 5);
        if (!v5 || ![v5 count])
        {
          continue;
        }

        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        firstObject2 = [*(begin + 5) firstObject];

        v22 = firstObject2;
        v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
        [v7 setNumberStyle:1];
        v8 = *(begin + 5);
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = ___ZN16GTPerfStateGroup26_GatherSampleDataPerfStateERK18mach_timebase_info_block_invoke;
        v16 = &unk_2796580A0;
        v17 = &v19;
        v18 = begin;
        [v8 enumerateObjectsUsingBlock:&v13];
      }
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      firstObject3 = [*(begin + 5) firstObject];

      v22 = firstObject3;
      v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v7 setNumberStyle:1];
      v12 = *(begin + 5);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = ___ZN16GTPerfStateGroup32_GatherSampleDataPeriodicSamplesERK18mach_timebase_info_block_invoke;
      v16 = &unk_279658110;
      v17 = &v19;
      [v12 enumerateObjectsUsingBlock:&v13];
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (void)stopCollectingStats
{
  begin = self->_perfStateGroups.__begin_;
  end = self->_perfStateGroups.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      dispatch_source_cancel(*begin);
      v4 = *begin;
      *begin = 0;
    }

    begin = (begin + 152);
  }
}

- (void)startCollectingPerfStatsAtInterval:(unint64_t)interval andPeriodicSamplesAtInterval:(unint64_t)atInterval
{
  begin = self->_perfStateGroups.__begin_;
  end = self->_perfStateGroups.__end_;
  if (begin != end)
  {
    v8 = atInterval != 0;
    v21 = v29;
    v22 = v24;
    do
    {
      *(begin + 148) = v8;
      v9 = *(begin + 19);
      if (v9 != 1)
      {
        if (!atInterval)
        {
          goto LABEL_18;
        }

        if (!v9)
        {
          intervalCopy = atInterval;
LABEL_9:
          v11 = *(begin + 36);
          if (v11 >= 1)
          {
            if (v9 == 2)
            {
              v12 = intervalCopy >> 2;
            }

            else
            {
              v12 = intervalCopy;
            }

            v13 = *(begin + 1);
            v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{0x2540BE400 / v12 * v11, v21, v22}];
            v15 = *(begin + 5);
            *(begin + 5) = v14;

            std::vector<unsigned long long>::reserve(begin + 6, 0x2540BE400 / v12 * (*(begin + 36) + 1));
            *(begin + 13) = IOReportCreateSamples();
            if (!*(begin + 19))
            {
              v27 = MEMORY[0x277D85DD0];
              v28 = 3221225472;
              v29[0] = ___ZN16GTPerfStateGroup20StartCollectingStatsEy_block_invoke;
              v29[1] = &__block_descriptor_40_e25_v16__0____CFDictionary__8l;
              v29[2] = begin;
              IOReportIterate();
            }

            v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
            v17 = dispatch_queue_create("reporting_queue", v16);

            v25[0] = 0;
            v25[1] = v25;
            v25[2] = 0x2020000000;
            v26 = 0;
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            v24[0] = ___ZN16GTPerfStateGroup20StartCollectingStatsEy_block_invoke_2;
            v24[1] = &unk_279658030;
            v24[2] = v25;
            v24[3] = begin;
            v24[4] = 0x2540BE400 / v12;
            v24[5] = v13;
            v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v17);
            if (v18)
            {
              v19 = dispatch_time(0, v12);
              dispatch_source_set_timer(v18, v19, v12, 0);
              dispatch_source_set_event_handler(v18, handler);
              dispatch_resume(v18);
            }

            v20 = *begin;
            *begin = v18;

            _Block_object_dispose(v25, 8);
          }

          goto LABEL_18;
        }
      }

      intervalCopy = interval;
      if (interval)
      {
        goto LABEL_9;
      }

LABEL_18:
      begin = (begin + 152);
    }

    while (begin != end);
  }
}

- (void)setup
{
  v55[1] = *MEMORY[0x277D85DE8];
  p_perfStateGroups = &self->_perfStateGroups;
  if (0x86BCA1AF286BCA1BLL * ((self->_perfStateGroups.__cap_ - self->_perfStateGroups.__begin_) >> 3) <= 2)
  {
    v48 = &self->_perfStateGroups;
    operator new();
  }

  v44[0] = @"AMC Stats";
  v54 = @"Perf Counters";
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"GFX", 0}];
  v55[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v6 = v5;
  v43 = v5;
  selfCopy2 = self;
  end = self->_perfStateGroups.__end_;
  v9 = 678152731 * ((end - self->_perfStateGroups.__begin_) >> 3);
  LODWORD(v47[0]) = v9;
  LODWORD(v46[0]) = 0;
  if (end >= self->_perfStateGroups.__cap_)
  {
    v11 = std::vector<GTPerfStateGroup>::__emplace_back_slow_path<NSString * {__strong},NSDictionary * {__strong},GTPerfStateGroup::eGTPerfStateGroup,GTPerfStateGroup::eGTPerfStateGroupType>(p_perfStateGroups, v44, &v43, v47, v46);
    selfCopy2 = self;
  }

  else
  {
    v10 = v5;
    *end = 0;
    *(end + 1) = 0;
    *(end + 3) = @"AMC Stats";
    *(end + 4) = v10;
    *(end + 40) = 0u;
    *(end + 56) = 0u;
    *(end + 18) = v9;
    *(end + 7) = 0u;
    *(end + 8) = 0u;
    *(end + 141) = 0;
    v11 = end + 152;
    *(end + 76) = 0;
    *(end + 92) = 0;
    *(end + 84) = 0;
    *(end + 25) = 0;
    self->_perfStateGroups.__end_ = (end + 152);
  }

  selfCopy2->_perfStateGroups.__end_ = v11;

  v42 = @"GPU Stats";
  v52 = @"GPU";
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{@"GPUPH", @"PWRCTRL", 0}];
  v53 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v14 = v13;
  v41 = v13;
  selfCopy4 = self;
  v16 = self->_perfStateGroups.__end_;
  v17 = 678152731 * ((v16 - self->_perfStateGroups.__begin_) >> 3);
  LODWORD(v47[0]) = v17;
  LODWORD(v46[0]) = 1;
  if (v16 >= self->_perfStateGroups.__cap_)
  {
    v19 = std::vector<GTPerfStateGroup>::__emplace_back_slow_path<NSString * {__strong},NSDictionary * {__strong},GTPerfStateGroup::eGTPerfStateGroup,GTPerfStateGroup::eGTPerfStateGroupType>(p_perfStateGroups, &v42, &v41, v47, v46);
    selfCopy4 = self;
  }

  else
  {
    v18 = v13;
    *v16 = 0;
    *(v16 + 1) = 0;
    *(v16 + 3) = @"GPU Stats";
    *(v16 + 4) = v18;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 18) = v17;
    *(v16 + 19) = 1;
    *(v16 + 11) = 0;
    *(v16 + 12) = 0;
    *(v16 + 10) = 0;
    *(v16 + 7) = 0u;
    *(v16 + 8) = 0u;
    *(v16 + 141) = 0;
    v19 = v16 + 152;
    self->_perfStateGroups.__end_ = (v16 + 152);
  }

  selfCopy4->_perfStateGroups.__end_ = v19;

  v40 = @"SoC Stats";
  v50 = @"Events";
  v20 = [MEMORY[0x277CBEB98] setWithObjects:{@"SOC", @"DCS", @"AFR", 0}];
  v51 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v22 = v21;
  v39 = v21;
  v23 = self->_perfStateGroups.__end_;
  v24 = 678152731 * ((v23 - self->_perfStateGroups.__begin_) >> 3);
  LODWORD(v47[0]) = 678152731 * ((v23 - self->_perfStateGroups.__begin_) >> 3);
  LODWORD(v46[0]) = 2;
  if (v23 >= self->_perfStateGroups.__cap_)
  {
    v26 = std::vector<GTPerfStateGroup>::__emplace_back_slow_path<NSString * {__strong},NSDictionary * {__strong},GTPerfStateGroup::eGTPerfStateGroup,GTPerfStateGroup::eGTPerfStateGroupType>(p_perfStateGroups, &v40, &v39, v47, v46);
  }

  else
  {
    v25 = v21;
    *v23 = 0;
    *(v23 + 1) = 0;
    *(v23 + 3) = @"SoC Stats";
    *(v23 + 4) = v25;
    *(v23 + 40) = 0u;
    *(v23 + 56) = 0u;
    *(v23 + 18) = v24;
    *(v23 + 19) = 2;
    *(v23 + 11) = 0;
    *(v23 + 12) = 0;
    *(v23 + 10) = 0;
    *(v23 + 7) = 0u;
    *(v23 + 8) = 0u;
    *(v23 + 141) = 0;
    v26 = (v23 + 152);
    self->_perfStateGroups.__end_ = (v23 + 152);
  }

  self->_perfStateGroups.__end_ = v26;

  begin = self->_perfStateGroups.__begin_;
  v28 = self->_perfStateGroups.__end_;
  if (begin != v28)
  {
    v29 = begin + 76;
    do
    {
      v30 = IOReportCopyChannelsInCategories();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = ___ZN16GTPerfStateGroup5SetupEP14__CFDictionary_block_invoke;
      v46[3] = &__block_descriptor_40_e25_i16__0____CFDictionary__8l;
      v46[4] = v29 - 76;
      if ((IOReportPrune() & 1) == 0)
      {
        v44[1] = 0;
        v45 = 0;
        *(v29 - 60) = IOReportCreateSubscription();
        ChannelCount = IOReportGetChannelCount();
        v32 = *(v29 - 68);
        *(v29 + 17) = ChannelCount;
        *(v29 - 68) = v45;

        v33 = [*(v29 - 68) objectForKeyedSubscript:@"IOReportChannels"];
        allKeys = [&unk_2860D6150 allKeys];
        if (v33)
        {
          v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(v29 + 17) + 1)];
          v36 = *(v29 + 60);
          *(v29 + 60) = v35;

          if (!*v29)
          {
            [*(v29 + 60) addObject:@"Sample Time"];
          }

          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = ___ZN16GTPerfStateGroup27_FindSubscribedCounterNamesEv_block_invoke;
          v47[3] = &unk_279657FE8;
          v48 = &unk_2860D6150;
          v49 = v29 - 76;
          IOReportPrune();
        }

        if ((*v29 - 1) <= 1 && 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 20) - *(v29 + 4)) >> 3) <= 0x3FF)
        {
          operator new();
        }
      }

      CFRelease(v30);
      v37 = (v29 + 76);
      v29 += 152;
    }

    while (v37 != v28);
  }

  [(GTPerfStatsHelper *)self _collectOperatingPoints];
  mach_timebase_info(&self->_timebaseInfo);
}

- (BOOL)_collectOperatingPoints
{
  v83 = *MEMORY[0x277D85DE8];
  CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (snprintf(__str, 0x80uLL, "%s%s", "IODeviceTree", ":/arm-io/pmgr") > 0x80)
  {
    return 0;
  }

  selfCopy = self;
  v3 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], __str);
  if (!v3)
  {
    return 0;
  }

  v80[0] = @"GPU";
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"voltage-states9"];
  v80[1] = @"AFR";
  v81[0] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"voltage-states31"];
  v81[1] = v5;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __44__GTPerfStatsHelper__collectOperatingPoints__block_invoke;
  v68[3] = &unk_279657FA0;
  v68[4] = self;
  v70 = v3;
  v51 = v6;
  v69 = v51;
  [v50 enumerateKeysAndObjectsUsingBlock:v68];
  v7 = [(NSDictionary *)self->_configVariables objectForKeyedSubscript:@"num_cores"];
  unsignedIntValue = [v7 unsignedIntValue];

  v9 = [(NSDictionary *)self->_configVariables objectForKeyedSubscript:@"num_mgpus"];
  unsignedIntValue2 = [v9 unsignedIntValue];

  v11 = [(NSDictionary *)self->_configVariables objectForKeyedSubscript:@"gpu_gen"];
  unsignedIntValue3 = [v11 unsignedIntValue];

  if (unsignedIntValue2 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = unsignedIntValue2;
  }

  v14 = unsignedIntValue / v13 + 1;
  if ((v14 & 0xFFFFFFFC) != 0)
  {
    v15 = v14 & 0xFFFFFFFC;
  }

  else
  {
    v15 = 1;
  }

  *v77 = xmmword_24DA90E98;
  *&v78 = 4266;
  std::vector<unsigned long long>::vector[abi:nn200100](v67, v77, 3uLL);
  *v77 = xmmword_24DA90EB0;
  *&v78 = 2933;
  std::vector<unsigned long long>::vector[abi:nn200100](v66, v77, 3uLL);
  *v77 = xmmword_24DA90EC8;
  v78 = unk_24DA90ED8;
  v79 = 6400;
  std::vector<unsigned long long>::vector[abi:nn200100](v65, v77, 5uLL);
  *v77 = xmmword_24DA90EF0;
  *&v78 = 400;
  std::vector<unsigned long long>::vector[abi:nn200100](v64, v77, 3uLL);
  *v77 = xmmword_24DA90F08;
  *&v78 = 900;
  std::vector<unsigned long long>::vector[abi:nn200100](v63, v77, 3uLL);
  *v77 = xmmword_24DA90F20;
  v78 = unk_24DA90F30;
  std::vector<unsigned long long>::vector[abi:nn200100](v62, v77, 4uLL);
  *__p = xmmword_24DA90F40;
  v76 = 900;
  std::vector<unsigned long long>::vector[abi:nn200100](v77, __p, 3uLL);
  v73 = xmmword_24DA90F58;
  v74 = 1068;
  std::vector<unsigned long long>::vector[abi:nn200100](__p, &v73, 3uLL);
  v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v17 = v14 >> 2;
  if (v14 < 4)
  {
    v18 = 1;
  }

  else
  {
    v18 = v14 >> 2;
  }

  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  socBlockBandwidths = selfCopy->_socBlockBandwidths;
  selfCopy->_socBlockBandwidths = v19;

  [(NSMutableDictionary *)selfCopy->_socBlockBandwidths setObject:&unk_2860D5AF8 forKeyedSubscript:@"WriteReadRatio"];
  v21 = (unsignedIntValue2 * v18) << 6;
  v22 = 2 * v21;
  if (v17 == 2)
  {
    if (unsignedIntValue3 <= 0xD)
    {
      if (unsignedIntValue3 != 13 || unsignedIntValue2 < 2)
      {
        if (unsignedIntValue3 == 13)
        {
          v24 = v77;
        }

        else
        {
          v24 = v63;
        }

        v23 = v67;
        goto LABEL_25;
      }

      [(NSMutableDictionary *)selfCopy->_socBlockBandwidths setObject:&unk_2860D5B10 forKeyedSubscript:@"WriteReadRatio"];
    }

    else if (unsignedIntValue2 < 2)
    {
      v23 = v65;
      v24 = __p;
LABEL_25:
      v25 = 2 * v21;
      v22 = v21;
      goto LABEL_26;
    }

    if (unsignedIntValue3 <= 0xD)
    {
      v25 = 2 * v21;
    }

    else
    {
      v25 = 4 * v21;
    }

    v23 = v65;
    v24 = __p;
    goto LABEL_26;
  }

  if (v17 != 1)
  {
    if (!v17)
    {
      v22 = v21 >> 1;
      v23 = v66;
      v24 = v64;
      v25 = v21;
      goto LABEL_26;
    }

    v23 = v67;
    v24 = v63;
    goto LABEL_25;
  }

  if (unsignedIntValue3 >= 0xE)
  {
    v23 = v65;
    if (unsignedIntValue3 == 14)
    {
      v23 = v67;
    }

    v24 = v62;
    goto LABEL_25;
  }

  if (unsignedIntValue3 == 10)
  {
    v25 = v21;
  }

  else
  {
    v25 = 2 * v21;
  }

  v22 = v21 >> (unsignedIntValue3 == 10);
  v23 = v67;
  v24 = v63;
LABEL_26:
  v27 = *v23;
  v28 = v23[1];
  if (*v23 != v28)
  {
    v29 = 2000000 * unsignedIntValue2 * v15;
    do
    {
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29 * *v27];
      [v53 addObject:v30];

      ++v27;
    }

    while (v27 != v28);
  }

  v31 = [v51 objectForKeyedSubscript:@"AFR"];
  v49 = v31;
  if (v31)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v58 objects:v72 count:16];
    if (v33)
    {
      v34 = *v59;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v59 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v58 + 1) + 8 * i), "unsignedLongLongValue") * v22}];
          [v16 addObject:v36];
        }

        v33 = [v32 countByEnumeratingWithState:&v58 objects:v72 count:16];
      }

      while (v33);
    }
  }

  else
  {
    v37 = *v24;
    v38 = v24[1];
    if (*v24 != v38)
    {
      v39 = 1000000 * v22;
      do
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v39 * *v37];
        [v16 addObject:v40];

        ++v37;
      }

      while (v37 != v38);
    }
  }

  v41 = [v51 objectForKeyedSubscript:@"GPU"];
  v42 = v41;
  if (v41)
  {
    v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v41, "count")}];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v44 = v42;
    v45 = [v44 countByEnumeratingWithState:&v54 objects:v71 count:16];
    if (v45)
    {
      v46 = *v55;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v55 != v46)
          {
            objc_enumerationMutation(v44);
          }

          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v54 + 1) + 8 * j), "unsignedLongLongValue") * v25}];
          [v43 addObject:v48];
        }

        v45 = [v44 countByEnumeratingWithState:&v54 objects:v71 count:16];
      }

      while (v45);
    }

    [(NSMutableDictionary *)selfCopy->_socBlockBandwidths setObject:v43 forKeyedSubscript:@"GPU"];
    if (!v16)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v43 = 0;
  if (v16)
  {
LABEL_52:
    [(NSMutableDictionary *)selfCopy->_socBlockBandwidths setObject:v16 forKeyedSubscript:@"AFR"];
  }

LABEL_53:
  if (v53)
  {
    [(NSMutableDictionary *)selfCopy->_socBlockBandwidths setObject:v53 forKeyedSubscript:@"DCS"];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v77[0])
  {
    v77[1] = v77[0];
    operator delete(v77[0]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  if (v67[0])
  {
    v67[1] = v67[0];
    operator delete(v67[0]);
  }

  return 1;
}

void __44__GTPerfStatsHelper__collectOperatingPoints__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _frequenciesForStateName:objc_msgSend(v5 forReg:{"UTF8String"), *(a1 + 48)}];
  if ([v6 count])
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)_frequenciesForStateName:(const char *)name forReg:(unsigned int)reg
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], name, 0x600u);
  CFProperty = IORegistryEntryCreateCFProperty(reg, v6, v5, 0);
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  if (CFProperty)
  {
    CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    v9 = 0;
    for (i = 0; CFDataGetLength(CFProperty) >> 3 > i; ++i)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&CFDataGetBytePtr(CFProperty)[v9]];
      [v8 addObject:v11];

      v9 += 8;
    }
  }

  return v8;
}

- (GTPerfStatsHelper)initWithOutputPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = GTPerfStatsHelper;
  v6 = [(GTPerfStatsHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputPath, path);
    v8 = v7;
  }

  return v7;
}

- (void)reset
{
  begin = self->_perfStateGroups.__begin_;
  end = self->_perfStateGroups.__end_;
  while (begin != end)
  {
    [*(begin + 5) removeAllObjects];
    *(begin + 7) = *(begin + 6);
    *(begin + 11) = *(begin + 10);
    begin = (begin + 152);
  }
}

- (GTPerfStatsHelper)initWithConfigurationVariables:(id)variables
{
  variablesCopy = variables;
  v9.receiver = self;
  v9.super_class = GTPerfStatsHelper;
  v5 = [(GTPerfStatsHelper *)&v9 init];
  if (v5)
  {
    v6 = [variablesCopy copy];
    configVariables = v5->_configVariables;
    v5->_configVariables = v6;
  }

  return v5;
}

@end