@interface DTGPUCounterProfile_GPURawCounters
+ (id)_sourceNameFromProfile:(unint64_t)profile;
+ (id)_supportedProfileNameFromEnum:(unint64_t)enum vendor:(unsigned int)vendor;
+ (id)create:(id)create profile:(unint64_t)profile;
+ (unsigned)vendorFromDevice:(id)device;
- (BOOL)_validateAndConfigureRawCounters;
- (BOOL)start:(unint64_t)start vendorFeatures:(id)features;
- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device profile:(unint64_t)profile;
- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device sourceName:(id)name profile:(unint64_t)profile;
- (DTGPUCounterProfile_GPURawCounters)initWithLimitersProfile:(id)profile;
- (id)counterProfileForHost;
- (id)ringBufferCounts;
- (id)sampleSizes;
- (void)_releaseCounterSource;
- (void)_releaseDataSource;
- (void)sampleCounters:(unint64_t)counters callback:(id)callback;
- (void)stop;
@end

@implementation DTGPUCounterProfile_GPURawCounters

+ (id)_supportedProfileNameFromEnum:(unint64_t)enum vendor:(unsigned int)vendor
{
  if (enum == 4)
  {
    if (vendor == 2)
    {
      return @"Set2";
    }

    else
    {
      return 0;
    }
  }

  else if (enum == 3 && vendor < 3)
  {
    return off_278EF4258[vendor];
  }

  else
  {
    return 0;
  }
}

+ (id)_sourceNameFromProfile:(unint64_t)profile
{
  if (profile - 5 > 8)
  {
    return 0;
  }

  else
  {
    return off_278EF4270[profile - 5];
  }
}

+ (id)create:(id)create profile:(unint64_t)profile
{
  createCopy = create;
  v6 = 0;
  if (profile <= 4)
  {
    if (profile - 3 < 2 || profile == 1)
    {
      v8 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:createCopy profile:profile];
    }

    else
    {
      if (profile != 2)
      {
        goto LABEL_18;
      }

      v8 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithLimitersProfile:createCopy];
    }

    goto LABEL_14;
  }

  if (profile - 5 >= 6)
  {
    if (profile == 12)
    {
      v7 = [DTGPUCounterProfile_GPURawCounters _sourceNameFromProfile:12];
      if (!v7 || [DTGPUCounterProfile_GPURawCounters vendorFromDevice:createCopy]!= 1)
      {
        goto LABEL_5;
      }

      v9 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:createCopy sourceName:v7 profile:12];
LABEL_16:
      v6 = v9;
      goto LABEL_17;
    }

    if (profile != 13)
    {
      goto LABEL_18;
    }

    v8 = [[DTGPUCounterProfile_GPURawCountersAPS alloc] initWithProfile:13 device:createCopy];
LABEL_14:
    v6 = v8;
    goto LABEL_18;
  }

  v7 = [DTGPUCounterProfile_GPURawCounters _sourceNameFromProfile:profile];
  if (v7 && ![DTGPUCounterProfile_GPURawCounters vendorFromDevice:createCopy])
  {
    v9 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:createCopy sourceName:v7 profile:profile];
    goto LABEL_16;
  }

LABEL_5:
  v6 = 0;
LABEL_17:

LABEL_18:

  return v6;
}

+ (unsigned)vendorFromDevice:(id)device
{
  deviceCopy = device;
  vendorName = [deviceCopy vendorName];
  lowercaseString = [vendorName lowercaseString];

  if ([deviceCopy supportsFamily:1001])
  {
    v6 = 2;
  }

  else if ([lowercaseString rangeOfString:@"intel"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([lowercaseString rangeOfString:@"amd"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device profile:(unint64_t)profile
{
  v157 = *MEMORY[0x277D85DE8];
  v147.receiver = self;
  v147.super_class = DTGPUCounterProfile_GPURawCounters;
  deviceCopy = device;
  v6 = [(DTGPUCounterProfile *)&v147 initWithProfile:profile device:?];
  p_isa = &v6->super.super.isa;
  v132 = v6;
  if (!v6)
  {
    goto LABEL_74;
  }

  objc_storeStrong(&v6->_device, device);
  p_isa = &v132->super.super.isa;
  v8 = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:deviceCopy];
  v132->_vendor = v8;
  if (profile != 1)
  {
    v113 = [DTGPUCounterProfile_GPURawCounters _supportedProfileNameFromEnum:profile vendor:v8];
    if (!v113 && v132->_vendor == 2)
    {
      goto LABEL_76;
    }

    v121 = deviceCopy;
    CFProperty = IORegistryEntryCreateCFProperty([v121 acceleratorPort], @"MetalPluginName", 0, 0);
    v120 = IORegistryEntryCreateCFProperty([v121 acceleratorPort], @"MetalStatisticsName", 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v120;
      if ([v9 count])
      {
        v133 = [v9 objectAtIndexedSubscript:0];
      }

      else
      {
        v133 = 0;
      }

      p_isa = &v132->super.super.isa;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_14:
        v133 = @"MetalStatistics";
LABEL_15:
        v115 = GRCCopyAllCounterSourceGroup();
        if ([v115 count])
        {
          firstObject = [v115 firstObject];
          v11 = MEMORY[0x277CBEB38];
          features = [firstObject features];
          v13 = [features objectForKeyedSubscript:@"ConstantAGX_CoreConfig"];
          v14 = [v11 dictionaryWithDictionary:v13];
          v15 = p_isa[22];
          p_isa[22] = v14;

          p_isa = &v132->super.super.isa;
        }

        v16 = p_isa[22];
        if (!v16 || ![v16 count])
        {
          v17 = MEMORY[0x277CBEB38];
          v18 = IORegistryEntryCreateCFProperty([v121 acceleratorPort], @"GPUConfigurationVariable", 0, 0);
          v19 = [v17 dictionaryWithDictionary:v18];
          v20 = p_isa[22];
          p_isa[22] = v19;

          p_isa = &v132->super.super.isa;
        }

        GRCReleaseAllCounterSourceGroup();
        v21 = p_isa[22];
        v22 = v21;
        if (v21)
        {
          v129 = [v21 objectForKeyedSubscript:@"core_mask_list"];
          v23 = objc_opt_new();
          if (v129 && [v129 count])
          {
            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v24 = v129;
            v25 = [v24 countByEnumeratingWithState:&v148 objects:v156 count:16];
            v26 = 0;
            if (v25)
            {
              v27 = *v149;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v149 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29.i32[0] = [*(*(&v148 + 1) + 8 * i) unsignedIntValue];
                  v30 = vcnt_s8(v29);
                  v30.i16[0] = vaddlv_u8(v30);
                  v31 = v30.i32[0];
                  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30.u32[0]];
                  [v23 addObject:v32];

                  v26 = (v31 + v26);
                }

                v25 = [v24 countByEnumeratingWithState:&v148 objects:v156 count:16];
              }

              while (v25);
            }

            v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
            [v22 setObject:v33 forKeyedSubscript:@"num_cores"];

            [v22 setObject:v23 forKeyedSubscript:@"num_cores_per_ringbuffer"];
          }
        }

        if (!v132->_vendor)
        {
          name = [(MTLDevice *)v132->_device name];
          v35 = [name containsString:@"Iris"];

          if ([CFProperty rangeOfString:@"KBL"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(CFProperty, "rangeOfString:", @"SKL") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(CFProperty, "rangeOfString:", @"BDW") == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([CFProperty rangeOfString:@"HSW"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([CFProperty rangeOfString:@"ICL"] != 0x7FFFFFFFFFFFFFFFLL)
              {
                [(NSMutableDictionary *)v132->_gpuConfigurationVariables setObject:&unk_285A36DE0 forKeyedSubscript:@"EUCoreCount"];
              }

              goto LABEL_43;
            }

            v36 = MEMORY[0x277CCABB0];
            if (v35)
            {
              v37 = 40;
            }

            else
            {
              v37 = 20;
            }
          }

          else
          {
            v36 = MEMORY[0x277CCABB0];
            if (v35)
            {
              v37 = 48;
            }

            else
            {
              v37 = 24;
            }
          }

          v38 = [v36 numberWithInt:v37];
          [(NSMutableDictionary *)v132->_gpuConfigurationVariables setObject:v38 forKeyedSubscript:@"EUCoreCount"];
        }

LABEL_43:
        v39 = IORegistryEntryCreateCFProperty([v121 acceleratorPort], @"AGXInternalPerfCounterResourcesPath", 0, 0);
        v40 = v39;
        v41 = @"/AppleInternal/Library/AGX/Performance";
        if (v39)
        {
          v41 = v39;
        }

        v116 = v41;

        v42 = [(__CFString *)v116 stringByAppendingPathComponent:CFProperty];
        v155[0] = v42;
        cFProperty = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle", CFProperty];
        v155[1] = cFProperty;
        cFProperty2 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle/Contents/Resources", CFProperty];
        v155[2] = cFProperty2;
        v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        obj = v109;
        v45 = [obj countByEnumeratingWithState:&v143 objects:v154 count:16];
        if (v45)
        {
          v46 = 0;
          v47 = 0;
          v48 = *v144;
          while (2)
          {
            v49 = 0;
            v50 = v46;
            v51 = v47;
            do
            {
              if (*v144 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v52 = [*(*(&v143 + 1) + 8 * v49) stringByAppendingPathComponent:v133];
              v53 = [v52 stringByAppendingString:@"-counters.plist"];

              v54 = v53;
              v55 = [v52 stringByAppendingString:@"-derived.js"];

              v56 = v55;
              if ([defaultManager fileExistsAtPath:v54] && (objc_msgSend(defaultManager, "fileExistsAtPath:", v55) & 1) != 0)
              {
                v46 = v55;
                v47 = v54;
LABEL_60:

                goto LABEL_61;
              }

              v47 = [v54 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

              v46 = [v56 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

              if ([defaultManager fileExistsAtPath:v47] && objc_msgSend(defaultManager, "fileExistsAtPath:", v46))
              {
                goto LABEL_60;
              }

              ++v49;
              v50 = v46;
              v51 = v47;
            }

            while (v45 != v49);
            v45 = [obj countByEnumeratingWithState:&v143 objects:v154 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }

LABEL_61:
          v110 = v46;
          v114 = v47;

          v112 = 0;
          if (!v47)
          {
            goto LABEL_71;
          }

          v58 = v46;
          if (!v46)
          {
            goto LABEL_73;
          }

          if (![defaultManager fileExistsAtPath:v47] || !objc_msgSend(defaultManager, "fileExistsAtPath:", v46))
          {
            v112 = 0;
LABEL_73:

            p_isa = &v132->super.super.isa;
            if (v112)
            {
              goto LABEL_74;
            }

LABEL_76:
            v67 = 0;
            goto LABEL_75;
          }

          v106 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v47];
          v59 = [v106 objectForKeyedSubscript:@"DerivedCounters"];
          v108 = [v106 objectForKeyedSubscript:@"Instruments"];
          v60 = [v108 objectForKeyedSubscript:@"DefaultSamplingInterval"];
          unsignedIntegerValue = [v60 unsignedIntegerValue];

          v62 = 50;
          if (unsignedIntegerValue > 0x32)
          {
            v62 = unsignedIntegerValue;
          }

          [(DTGPUCounterProfile *)v132 setDefaultSampleInterval:1000 * v62];
          v63 = [v108 objectForKeyedSubscript:@"Profiles"];
          v107 = v63;
          if ([v63 count])
          {
            if (!v113 || ([v63 objectForKeyedSubscript:v113], v64 = objc_claimAutoreleasedReturnValue(), v65 = v64 == 0, v64, v65))
            {
              allKeys = [v63 allKeys];
              v70 = [allKeys objectAtIndexedSubscript:0];

              v66 = v70;
              v63 = v107;
            }

            else
            {
              v66 = v113;
            }

            v113 = v66;
            v71 = [v63 objectForKeyedSubscript:?];
            v72 = v71;
            if (v71)
            {
              v73 = [v71 objectForKeyedSubscript:@"DerivedCounters"];
              v112 = v73 != 0;
              if (v73)
              {
                v104 = v72;
                v105 = v73;
                v74 = [v72 objectForKeyedSubscript:@"Name"];
                [(DTGPUCounterProfile *)v132 setProfileName:v74];

                profileName = [(DTGPUCounterProfile *)v132 profileName];
                LODWORD(v74) = profileName == 0;

                if (v74)
                {
                  [(DTGPUCounterProfile *)v132 setProfileName:v113];
                }

                profileName2 = [(DTGPUCounterProfile *)v132 profileName];
                sourceName = v132->_sourceName;
                v132->_sourceName = profileName2;

                v78 = [v104 objectForKeyedSubscript:@"RawCounterWidth"];
                v141 = 0u;
                v142 = 0u;
                v139 = 0u;
                v140 = 0u;
                v111 = v105;
                v119 = [v111 countByEnumeratingWithState:&v139 objects:v153 count:16];
                if (v119)
                {
                  v118 = *v140;
                  do
                  {
                    for (j = 0; j != v119; ++j)
                    {
                      if (*v140 != v118)
                      {
                        objc_enumerationMutation(v111);
                      }

                      v79 = *(*(&v139 + 1) + 8 * j);
                      v131 = [v79 objectForKeyedSubscript:@"Name"];
                      v123 = [v79 objectForKeyedSubscript:@"GroupIndex"];
                      v124 = [v79 objectForKeyedSubscript:@"Multiplier"];
                      v80 = [v59 objectForKeyedSubscript:v131];
                      if (v80)
                      {
                        v127 = v80;
                        v122 = [v80 objectForKeyedSubscript:@"name"];
                        v81 = [DTGPUCounter alloc];
                        if (v122)
                        {
                          v82 = v122;
                        }

                        else
                        {
                          v82 = v131;
                        }

                        v130 = [(DTGPUCounter *)v81 initWithName:v82 maxValue:0];
                        v83 = [v127 objectForKeyedSubscript:@"description"];
                        [(DTGPUCounter *)v130 setCounterDescription:v83];

                        v84 = [v127 objectForKeyedSubscript:@"type"];
                        [(DTGPUCounter *)v130 setType:v84];

                        if (v123)
                        {
                          v85 = v130;
                          unsignedIntValue = [v123 unsignedIntValue];
                        }

                        else
                        {
                          unsignedIntValue = 0;
                          v85 = v130;
                        }

                        [(DTGPUCounter *)v85 setGroupIndex:unsignedIntValue];
                        if (v124)
                        {
                          unsignedIntValue2 = [v124 unsignedIntValue];
                        }

                        else
                        {
                          unsignedIntValue2 = 1;
                        }

                        [(DTGPUCounter *)v85 setMultiplier:unsignedIntValue2];
                        type = [(DTGPUCounter *)v85 type];
                        v89 = [type isEqualToString:@"Percentage"];

                        if (v89)
                        {
                          [(DTGPUCounter *)v130 setMaxValue:100];
                          [(DTGPUCounter *)v130 setMultiplier:100];
                        }

                        else
                        {
                          [(DTGPUCounter *)v130 setMaxValue:0x225C17D04];
                        }

                        [(DTGPUCounter *)v130 setFunctionName:v131];
                        v90 = objc_opt_new();
                        v91 = [v127 objectForKeyedSubscript:@"counters"];
                        v137 = 0u;
                        v138 = 0u;
                        v135 = 0u;
                        v136 = 0u;
                        v92 = v91;
                        v93 = [v92 countByEnumeratingWithState:&v135 objects:v152 count:16];
                        if (v93)
                        {
                          v94 = *v136;
                          do
                          {
                            for (k = 0; k != v93; ++k)
                            {
                              if (*v136 != v94)
                              {
                                objc_enumerationMutation(v92);
                              }

                              v96 = *(*(&v135 + 1) + 8 * k);
                              v97 = [v59 objectForKeyedSubscript:v96];
                              v98 = v97 == 0;

                              if (v98)
                              {
                                v99 = [v78 objectForKeyedSubscript:v96];
                                v100 = v99 == 0;

                                if (v100)
                                {
                                  unsignedIntValue3 = 32;
                                }

                                else
                                {
                                  v101 = [v78 objectForKeyedSubscript:v96];
                                  unsignedIntValue3 = [v101 unsignedIntValue];
                                }

                                v103 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:v96 width:unsignedIntValue3];
                                [v90 addObject:v103];
                              }
                            }

                            v93 = [v92 countByEnumeratingWithState:&v135 objects:v152 count:16];
                          }

                          while (v93);
                        }

                        [(DTGPUCounter *)v130 setRawCounters:v90];
                        [(DTGPUCounterProfile *)v132 addCounter:v130];

                        v80 = v127;
                      }
                    }

                    v119 = [v111 countByEnumeratingWithState:&v139 objects:v153 count:16];
                  }

                  while (v119);
                }

                [(DTGPUCounterProfile *)v132 setDerivedCounterScriptPath:v110];
                v72 = v104;
                v73 = v105;
              }
            }

            else
            {
              v112 = 0;
            }

            v63 = v107;
          }

          else
          {
            v112 = 0;
          }

          v57 = v106;
        }

        else
        {
          v114 = 0;
          v110 = 0;
          v112 = 0;
          v57 = obj;
        }

LABEL_71:
        v58 = v110;
        goto LABEL_73;
      }

      v133 = v120;
    }

    if (v133)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [(DTGPUCounterProfile *)v132 setDefaultSampleInterval:10000, v8];
LABEL_74:
  v67 = p_isa;
LABEL_75:

  return v67;
}

- (DTGPUCounterProfile_GPURawCounters)initWithLimitersProfile:(id)profile
{
  v51 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = DTGPUCounterProfile_GPURawCounters;
  profileCopy = profile;
  v3 = [(DTGPUCounterProfile *)&v49 initWithProfile:2 device:?];
  v43 = v3;
  if (v3)
  {
    v37 = profileCopy;
    v3->_vendor = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:v37];
    CFProperty = IORegistryEntryCreateCFProperty([v37 acceleratorPort], @"MetalPluginName", 0, 0);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    cFProperty = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle", CFProperty];
    v41 = [defaultManager enumeratorAtPath:cFProperty];

    nextObject = [v41 nextObject];
    if (nextObject)
    {
      while ([nextObject rangeOfString:@"MetalLimiters"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        nextObject2 = [v41 nextObject];

        nextObject = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_5;
        }
      }

      v7 = MEMORY[0x277CCACA8];
      v8 = nextObject;
      v36 = [v7 stringWithFormat:@"/System/Library/Extensions/%@.bundle/%@", CFProperty, v8];
      v34 = v8;

      cFProperty2 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle/AGXMetalPerfCounters.plist", CFProperty];
      if ([defaultManager fileExistsAtPath:v36] && objc_msgSend(defaultManager, "fileExistsAtPath:", cFProperty2))
      {
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v36];
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:cFProperty2];
        v9 = [v33 objectForKeyedSubscript:@"Configuration"];
        v10 = [v9 objectForKeyedSubscript:@"Timer Interval (microseconds)"];
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        v12 = 50;
        if (unsignedIntegerValue > 0x32)
        {
          v12 = unsignedIntegerValue;
        }

        [(DTGPUCounterProfile *)v43 setDefaultSampleInterval:1000 * v12];
        v13 = [v33 objectForKeyedSubscript:@"Profiles"];
        v14 = [v13 objectForKeyedSubscript:@"limiters"];
        v15 = [v14 objectForKeyedSubscript:@"Counters"];

        if (v15)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          obj = v15;
          v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v16)
          {
            v17 = *v46;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v46 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v45 + 1) + 8 * i);
                v20 = [v19 objectForKeyedSubscript:@"Name"];
                v21 = [v19 objectForKeyedSubscript:@"Width"];
                v22 = [v44 objectForKeyedSubscript:v20];
                if (v22)
                {
                  v23 = objc_opt_new();
                  v24 = [DTGPURawCounter_GPURawCounter alloc];
                  if (v21)
                  {
                    unsignedIntValue = [v21 unsignedIntValue];
                  }

                  else
                  {
                    unsignedIntValue = 32;
                  }

                  v26 = [(DTGPURawCounter_GPURawCounter *)v24 initWithName:v20 width:unsignedIntValue];
                  [v23 addObject:v26];

                  v27 = [[DTGPUCounter alloc] initWithName:v20 maxValue:0];
                  [(DTGPUCounter *)v27 setRawCounters:v23];
                  v28 = [v22 objectForKeyedSubscript:@"Description"];
                  v29 = v28;
                  if (v28)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = &stru_285A19CB8;
                  }

                  [(DTGPUCounter *)v27 setCounterDescription:v30];
                  [(DTGPUCounter *)v27 setFunctionName:v20];
                  [(DTGPUCounter *)v27 setMaxValue:0x7FFFFFFFLL];
                  [(DTGPUCounter *)v27 setMultiplier:1];
                  [(DTGPUCounter *)v27 setGroupIndex:1];
                  [(DTGPUCounterProfile *)v43 addCounter:v27];
                }
              }

              v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
            }

            while (v16);
          }

          [(DTGPUCounterProfile *)v43 setDerivedCounterScriptPath:0];
          v3 = v43;
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    else
    {
LABEL_5:
    }

    v31 = 0;
    goto LABEL_30;
  }

LABEL_27:
  v31 = v3;
LABEL_30:

  return v31;
}

- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device sourceName:(id)name profile:(unint64_t)profile
{
  deviceCopy = device;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = DTGPUCounterProfile_GPURawCounters;
  v10 = [(DTGPUCounterProfile *)&v14 initWithProfile:profile device:deviceCopy];
  if (v10)
  {
    lowercaseString = [nameCopy lowercaseString];
    sourceName = v10->_sourceName;
    v10->_sourceName = lowercaseString;

    v10->_vendor = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:deviceCopy];
    [(DTGPUCounterProfile *)v10 setDerivedCounterScriptPath:0];
    [(DTGPUCounterProfile *)v10 setDefaultSampleInterval:50000];
  }

  return v10;
}

- (BOOL)_validateAndConfigureRawCounters
{
  v158 = *MEMORY[0x277D85DE8];
  v95 = GRCCopyAllCounterSourceGroup();
  if (![v95 count])
  {
    goto LABEL_58;
  }

  selfCopy = self;
  if (self->_vendor != 2)
  {
    v145 = 0uLL;
    v146 = 0uLL;
    v143 = 0uLL;
    v144 = 0uLL;
    v103 = v95;
    v20 = [v103 countByEnumeratingWithState:&v143 objects:v157 count:16];
    if (v20)
    {
      v109 = *v144;
      do
      {
        v115 = 0;
        v106 = v20;
        do
        {
          if (*v144 != v109)
          {
            objc_enumerationMutation(v103);
          }

          v21 = *(*(&v143 + 1) + 8 * v115);
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          sourceList = [v21 sourceList];
          v23 = [sourceList countByEnumeratingWithState:&v139 objects:v156 count:16];
          v112 = v21;
          if (!v23)
          {
LABEL_36:

            goto LABEL_38;
          }

          v24 = *v140;
LABEL_30:
          v25 = 0;
          while (1)
          {
            if (*v140 != v24)
            {
              objc_enumerationMutation(sourceList);
            }

            v26 = *(*(&v139 + 1) + 8 * v25);
            name = [v26 name];
            lowercaseString = [name lowercaseString];
            lowercaseString2 = [(NSString *)selfCopy->_sourceName lowercaseString];
            v30 = [lowercaseString isEqualToString:lowercaseString2];

            if (v30)
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [sourceList countByEnumeratingWithState:&v139 objects:v156 count:16];
              if (!v23)
              {
                goto LABEL_36;
              }

              goto LABEL_30;
            }
          }

          objc_storeStrong(&selfCopy->_sourceGroup, v112);
          objc_storeStrong(&selfCopy->_source, v26);

LABEL_38:
          if (selfCopy->_sourceGroup)
          {
            goto LABEL_41;
          }

          ++v115;
        }

        while (v115 != v106);
        v20 = [v103 countByEnumeratingWithState:&v143 objects:v157 count:16];
      }

      while (v20);
    }

LABEL_41:

    goto LABEL_51;
  }

  v137 = 0uLL;
  v138 = 0uLL;
  v135 = 0uLL;
  v136 = 0uLL;
  obj = v95;
  v3 = [obj countByEnumeratingWithState:&v135 objects:v155 count:16];
  if (!v3)
  {
    v111 = 0;
    v114 = 0;
    v105 = 0;
    v108 = 0;
    goto LABEL_44;
  }

  v111 = 0;
  v114 = 0;
  v105 = 0;
  v108 = 0;
  v97 = *v136;
  do
  {
    v4 = 0;
    v98 = v3;
    do
    {
      if (*v136 != v97)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v135 + 1) + 8 * v4);
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      sourceList2 = [v5 sourceList];
      v6 = [sourceList2 countByEnumeratingWithState:&v131 objects:v154 count:16];
      v100 = v4;
      if (v6)
      {
        v7 = *v132;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v132 != v7)
            {
              objc_enumerationMutation(sourceList2);
            }

            v9 = *(*(&v131 + 1) + 8 * i);
            name2 = [v9 name];
            v11 = [name2 rangeOfString:@"RDE"] == 0;

            if (v11)
            {
              v15 = v105;
              v14 = v108;
              v17 = v111;
              v16 = v114;
              v105 = v9;
              v108 = v5;
LABEL_17:
              v18 = v9;

              v19 = v5;
              v111 = v17;
              v114 = v16;
              continue;
            }

            name3 = [v9 name];
            v13 = [name3 isEqualToString:@"Firmware"];

            v15 = v111;
            v14 = v114;
            v16 = v5;
            v17 = v9;
            if (v13)
            {
              goto LABEL_17;
            }
          }

          v6 = [sourceList2 countByEnumeratingWithState:&v131 objects:v154 count:16];
        }

        while (v6);
      }

      v4 = v100 + 1;
    }

    while ((v100 + 1) != v98);
    v3 = [obj countByEnumeratingWithState:&v135 objects:v155 count:16];
  }

  while (v3);
LABEL_44:

  v31 = v105 ? v105 : v111;
  objc_storeStrong(&selfCopy->_source, v31);
  v32 = v105 ? v108 : v114;
  objc_storeStrong(&selfCopy->_sourceGroup, v32);

LABEL_51:
  if (!selfCopy->_sourceGroup || (source = selfCopy->_source) == 0)
  {
LABEL_58:
    v43 = 0;
    goto LABEL_59;
  }

  v34 = 0;
  memset(v129, 0, sizeof(v129));
  v130 = 1065353216;
  while (1)
  {
    availableCounters = [(GPURawCounterSource *)source availableCounters];
    v36 = [availableCounters count] > v34;

    if (!v36)
    {
      break;
    }

    availableCounters2 = [(GPURawCounterSource *)selfCopy->_source availableCounters];
    v38 = [availableCounters2 objectAtIndexedSubscript:v34];

    counterValueType = [v38 counterValueType];
    name4 = [v38 name];
    v41 = name4;
    sub_247F85940(__p, [name4 UTF8String]);
    v147 = __p;
    v42 = sub_247FF84D8(v129, __p, &unk_24803D752, &v147);
    *(v42 + 10) = v34;
    v42[6] = counterValueType;
    if (v153 < 0)
    {
      operator delete(*__p);
    }

    v34 = (v34 + 1);
    source = selfCopy->_source;
  }

  v45 = objc_opt_new();
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  counters = [(DTGPUCounterProfile *)selfCopy counters];
  v107 = [counters countByEnumeratingWithState:&v125 objects:v151 count:16];
  if (v107)
  {
    v104 = *v126;
    v46 = MEMORY[0x277D86220];
    do
    {
      for (j = 0; j != v107; j = j + 1)
      {
        if (*v126 != v104)
        {
          objc_enumerationMutation(counters);
        }

        v47 = *(*(&v125 + 1) + 8 * j);
        v34 = objc_opt_new();
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v110 = v47;
        rawCounters = [v47 rawCounters];
        v49 = [rawCounters countByEnumeratingWithState:&v121 objects:v150 count:16];
        if (v49)
        {
          v50 = *v122;
          do
          {
            for (k = 0; k != v49; ++k)
            {
              if (*v122 != v50)
              {
                objc_enumerationMutation(rawCounters);
              }

              v52 = *(*(&v121 + 1) + 8 * k);
              name5 = [v52 name];
              v54 = name5;
              sub_247F85940(__p, [name5 UTF8String]);
              v55 = sub_247FF8CE4(v129, __p);
              if (v153 < 0)
              {
                operator delete(*__p);
              }

              if (v55)
              {
                [v52 setCounterIdx:*(v55 + 10)];
                [v52 setValueType:v55[6]];
                [v45 addObject:v52];
                [v34 addObject:v52];
              }

              else if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                name6 = [v52 name];
                v57 = name6;
                uTF8String = [name6 UTF8String];
                *__p = 136315138;
                *&__p[4] = uTF8String;
                _os_log_impl(&dword_247F67000, v46, OS_LOG_TYPE_ERROR, "Failed to find counter: failed at %s", __p, 0xCu);
              }
            }

            v49 = [rawCounters countByEnumeratingWithState:&v121 objects:v150 count:16];
          }

          while (v49);
        }

        [v110 setRawCounters:v34];
      }

      v107 = [counters countByEnumeratingWithState:&v125 objects:v151 count:16];
    }

    while (v107);
  }

  if (selfCopy->_vendor != 2)
  {
    counters2 = [(DTGPUCounterProfile *)selfCopy counters];
    v60 = [counters2 count] == 0;

    if (v60)
    {
      for (m = 0; ; m = v81 + 1)
      {
        availableCounters3 = [(GPURawCounterSource *)selfCopy->_source availableCounters];
        v81 = m;
        v82 = [availableCounters3 count] > m;

        if (!v82)
        {
          break;
        }

        availableCounters4 = [(GPURawCounterSource *)selfCopy->_source availableCounters];
        v84 = [availableCounters4 objectAtIndexedSubscript:v81];

        v85 = [DTGPURawCounter_GPURawCounter alloc];
        name7 = [v84 name];
        v87 = [(DTGPURawCounter_GPURawCounter *)v85 initWithName:name7 width:64];

        [(DTGPURawCounter_GPURawCounter *)v87 setCounterIdx:v81];
        -[DTGPURawCounter_GPURawCounter setValueType:](v87, "setValueType:", [v84 counterValueType]);
        [v45 addObject:v87];
        v88 = [DTGPUCounter alloc];
        name8 = [v84 name];
        v90 = [(DTGPUCounter *)v88 initWithName:name8 maxValue:0x7FFFFFFFLL];

        v149 = v87;
        v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
        [(DTGPUCounter *)v90 setRawCounters:v91];

        v92 = [v84 description];
        if (v92)
        {
          v34 = [v84 description];
          v93 = v34;
        }

        else
        {
          v93 = &stru_285A19CB8;
        }

        [(DTGPUCounter *)v90 setCounterDescription:v93];
        if (v92)
        {
        }

        name9 = [v84 name];
        [(DTGPUCounter *)v90 setFunctionName:name9];

        [(DTGPUCounter *)v90 setMaxValue:0x7FFFFFFFLL];
        [(DTGPUCounter *)v90 setMultiplier:1];
        [(DTGPUCounter *)v90 setGroupIndex:1];
        [(DTGPUCounterProfile *)selfCopy addCounter:v90];
      }
    }
  }

  v61 = objc_opt_new();
  if (selfCopy->_vendor == 2)
  {
    v62 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_TIMESTAMP"];
    [v61 addObject:v62];

    v63 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_GPU_CYCLES"];
    [v61 addObject:v63];

    v64 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_ENCODER_ID"];
    [v61 addObject:v64];

    v65 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_KICK_TRACE_ID"];
    [v61 addObject:v65];

    v66 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_SAMPLE_TYPE"];
    [v61 addObject:v66];
  }

  allObjects = [v45 allObjects];
  [v61 addObjectsFromArray:allObjects];

  selfCopy->_gpuTimeIndex = -1;
  if (selfCopy->_vendor)
  {
    selfCopy->_gpuTimeIndex = 0;
    goto LABEL_87;
  }

  [v61 sortUsingComparator:&unk_285A18F60];
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = sub_247FF68F4;
  v120[3] = &unk_278EF4210;
  v120[4] = selfCopy;
  [v61 enumerateObjectsUsingBlock:v120];
  if (selfCopy->_gpuTimeIndex == -1)
  {
    v43 = 0;
  }

  else
  {
LABEL_87:
    objc_storeStrong(&selfCopy->_rawCounters, v61);
    v68 = objc_opt_new();
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v69 = selfCopy->_rawCounters;
    v70 = [(NSArray *)v69 countByEnumeratingWithState:&v116 objects:v148 count:16];
    if (v70)
    {
      v71 = *v117;
      do
      {
        for (n = 0; n != v70; ++n)
        {
          if (*v117 != v71)
          {
            objc_enumerationMutation(v69);
          }

          rawCounterSelect = [*(*(&v116 + 1) + 8 * n) rawCounterSelect];
          [v68 addObject:rawCounterSelect];
        }

        v70 = [(NSArray *)v69 countByEnumeratingWithState:&v116 objects:v148 count:16];
      }

      while (v70);
    }

    if (selfCopy->_vendor == 2)
    {
      v74 = [DTGPUAGXCounterSourceGroup alloc];
      sourceGroup = selfCopy->_sourceGroup;
      profile = [(DTGPUCounterProfile *)selfCopy profile];
      v77 = [(DTGPUAGXCounterSourceGroup *)v74 initWithSourceGroup:sourceGroup selects:v68 apsSelects:MEMORY[0x277CBEBF8] profile:profile];
      agxSource = selfCopy->_agxSource;
      selfCopy->_agxSource = v77;
    }

    v43 = 1;
  }

  sub_247FF8450(v129);
LABEL_59:

  return v43;
}

- (void)_releaseCounterSource
{
  v15 = *MEMORY[0x277D85DE8];
  sourceGroup = self->_sourceGroup;
  if (sourceGroup)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    sourceList = [(GPURawCounterSourceGroup *)sourceGroup sourceList];
    v5 = [sourceList countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(sourceList);
          }

          [*(*(&v10 + 1) + 8 * v7++) setEnabled:0];
        }

        while (v5 != v7);
        v5 = [sourceList countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(GPURawCounterSourceGroup *)self->_sourceGroup stopSampling];
    source = self->_source;
    self->_source = 0;

    v9 = self->_sourceGroup;
    self->_sourceGroup = 0;

    GRCReleaseAllCounterSourceGroup();
  }
}

- (BOOL)start:(unint64_t)start vendorFeatures:(id)features
{
  v33 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  source = self->_source;
  if (!source || !self->_sourceGroup)
  {
    goto LABEL_6;
  }

  if (self->_vendor != 2)
  {
    [(GPURawCounterSource *)source setOptions:featuresCopy];
    v27 = 0;
    v9 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->_rawCounters;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          rawCounterSelect = [*(*(&v23 + 1) + 8 * i) rawCounterSelect];
          [v9 addObject:rawCounterSelect];
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v11);
    }

    if (([(GPURawCounterSource *)self->_source requestCounters:v9 firstErrorIndex:&v27]& 1) != 0)
    {
      if (([(GPURawCounterSource *)self->_source setEnabled:1]& 1) != 0)
      {
        self->_startTime = mach_absolute_time();
        mach_timebase_info(&self->_timeBaseInfo);
        self->_firstGpuTime = 0;
        startSampling = [(GPURawCounterSourceGroup *)self->_sourceGroup startSampling];
LABEL_22:

        goto LABEL_23;
      }

      [(DTGPUCounterProfile_GPURawCounters *)self _releaseDataSource];
    }

    else
    {
      v15 = objc_opt_new();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = [v9 objectAtIndexedSubscript:v27];
        name = [v16 name];
        v18 = name;
        uTF8String = [name UTF8String];
        v20 = v15;
        uTF8String2 = [v15 UTF8String];
        *buf = 136315394;
        v29 = uTF8String;
        v30 = 2080;
        v31 = uTF8String2;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to request counters: failed at %s (%s)", buf, 0x16u);
      }

      [(DTGPUCounterProfile_GPURawCounters *)self _releaseDataSource];
    }

    startSampling = 0;
    goto LABEL_22;
  }

  if (![(DTGPUAGXCounterSourceGroup *)self->_agxSource request:start vendorFeatures:featuresCopy])
  {
LABEL_6:
    startSampling = 0;
    goto LABEL_23;
  }

  [(GPURawCounterSourceGroup *)self->_sourceGroup startSampling];
  [(DTGPUAGXCounterSourceGroup *)self->_agxSource resume];
  startSampling = 1;
LABEL_23:

  return startSampling;
}

- (void)_releaseDataSource
{
  v15 = *MEMORY[0x277D85DE8];
  sourceGroup = self->_sourceGroup;
  if (sourceGroup)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    sourceList = [(GPURawCounterSourceGroup *)sourceGroup sourceList];
    v5 = [sourceList countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(sourceList);
          }

          [*(*(&v10 + 1) + 8 * v7++) setEnabled:0];
        }

        while (v5 != v7);
        v5 = [sourceList countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(GPURawCounterSourceGroup *)self->_sourceGroup stopSampling];
    source = self->_source;
    self->_source = 0;

    v9 = self->_sourceGroup;
    self->_sourceGroup = 0;

    GRCReleaseAllCounterSourceGroup();
  }
}

- (void)stop
{
  [(DTGPUAGXCounterSourceGroup *)self->_agxSource stop];

  [(DTGPUCounterProfile_GPURawCounters *)self _releaseDataSource];
}

- (void)sampleCounters:(unint64_t)counters callback:(id)callback
{
  callbackCopy = callback;
  if (self->_vendor == 2)
  {
    [(DTGPUAGXCounterSourceGroup *)self->_agxSource sampleCounters:counters callback:callbackCopy];
  }

  else
  {
    mach_timebase_info(&info);
    for (i = 0; i < [(GPURawCounterSource *)self->_source ringBufferNum]; i = (i + 1))
    {
      source = self->_source;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_247FF7118;
      v9[3] = &unk_278EF4238;
      v9[4] = self;
      v10 = callbackCopy;
      [(GPURawCounterSource *)source pollCountersAtBufferIndex:i withBlock:v9];
    }
  }
}

- (id)counterProfileForHost
{
  v121 = *MEMORY[0x277D85DE8];
  vendor = self->_vendor;
  v72 = objc_opt_new();
  if (vendor == 2)
  {
    v78 = objc_opt_new();
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v3 = self->_rawCounters;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v103 objects:v120 count:16];
    if (v4)
    {
      v5 = *v104;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v104 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v103 + 1) + 8 * i);
          name = [v7 name];
          [v78 setObject:v7 forKeyedSubscript:name];
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v103 objects:v120 count:16];
      }

      while (v4);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v68 = [obj countByEnumeratingWithState:&v99 objects:v119 count:16];
    if (v68)
    {
      v67 = *v100;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v100 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v76 = *(*(&v99 + 1) + 8 * j);
          v77 = objc_opt_new();
          v9 = objc_opt_new();
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          selects = [v76 selects];
          v11 = [selects countByEnumeratingWithState:&v95 objects:v118 count:16];
          if (v11)
          {
            v12 = *v96;
            do
            {
              for (k = 0; k != v11; ++k)
              {
                if (*v96 != v12)
                {
                  objc_enumerationMutation(selects);
                }

                name2 = [*(*(&v95 + 1) + 8 * k) name];
                v15 = [v78 objectForKeyedSubscript:name2];

                name3 = [v15 name];
                v117[0] = name3;
                v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "valueType") == 1}];
                v117[1] = v17;
                v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
                [v77 addObject:v18];

                name4 = [v15 name];
                [v9 setObject:v15 forKeyedSubscript:name4];
              }

              v11 = [selects countByEnumeratingWithState:&v95 objects:v118 count:16];
            }

            while (v11);
          }

          v73 = objc_opt_new();
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          counters = [(DTGPUCounterProfile *)self counters];
          v20 = [counters countByEnumeratingWithState:&v91 objects:v116 count:16];
          if (v20)
          {
            v75 = *v92;
            do
            {
              for (m = 0; m != v20; ++m)
              {
                if (*v92 != v75)
                {
                  objc_enumerationMutation(counters);
                }

                v22 = *(*(&v91 + 1) + 8 * m);
                v87 = 0u;
                v88 = 0u;
                v89 = 0u;
                v90 = 0u;
                rawCounters = [v22 rawCounters];
                v24 = [rawCounters countByEnumeratingWithState:&v87 objects:v115 count:16];
                if (v24)
                {
                  v25 = *v88;
                  while (2)
                  {
                    for (n = 0; n != v24; ++n)
                    {
                      if (*v88 != v25)
                      {
                        objc_enumerationMutation(rawCounters);
                      }

                      name5 = [*(*(&v87 + 1) + 8 * n) name];
                      v28 = [v9 objectForKeyedSubscript:name5];
                      v29 = v28 == 0;

                      if (v29)
                      {
                        v30 = 0;
                        goto LABEL_36;
                      }
                    }

                    v24 = [rawCounters countByEnumeratingWithState:&v87 objects:v115 count:16];
                    if (v24)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v30 = 1;
LABEL_36:

                source = [v76 source];
                name6 = [source name];
                if ([name6 hasPrefix:@"BMPR"])
                {
                  name7 = [v22 name];
                  v34 = [name7 containsString:@"Bandwidth"];
                }

                else
                {
                  v34 = 0;
                }

                if ((v30 | v34))
                {
                  infoArray = [v22 infoArray];
                  [v73 addObject:infoArray];
                }
              }

              v20 = [counters countByEnumeratingWithState:&v91 objects:v116 count:16];
            }

            while (v20);
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          derivedCounterScriptPath = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
          v38 = [defaultManager fileExistsAtPath:derivedCounterScriptPath];

          v39 = &stru_285A19CB8;
          if (v38)
          {
            v40 = MEMORY[0x277CCACA8];
            derivedCounterScriptPath2 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
            v39 = [v40 stringWithContentsOfFile:derivedCounterScriptPath2 encoding:4 error:0];
          }

          v113[0] = &unk_285A36DB0;
          v113[1] = &unk_285A36DF8;
          v114[0] = v73;
          v114[1] = v77;
          gpuConfigurationVariables = self->_gpuConfigurationVariables;
          v113[2] = &unk_285A36E10;
          v113[3] = &unk_285A36E28;
          if (!gpuConfigurationVariables)
          {
            gpuConfigurationVariables = MEMORY[0x277CBEC10];
          }

          v114[2] = v39;
          v114[3] = gpuConfigurationVariables;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:{4, v67}];
          [v72 addObject:v43];
        }

        v68 = [obj countByEnumeratingWithState:&v99 objects:v119 count:16];
      }

      while (v68);
    }
  }

  else
  {
    obj = objc_opt_new();
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    counters2 = [(DTGPUCounterProfile *)self counters];
    v45 = [counters2 countByEnumeratingWithState:&v83 objects:v112 count:16];
    if (v45)
    {
      v46 = *v84;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v84 != v46)
          {
            objc_enumerationMutation(counters2);
          }

          infoArray2 = [*(*(&v83 + 1) + 8 * ii) infoArray];
          [v72 addObject:infoArray2];
        }

        v45 = [counters2 countByEnumeratingWithState:&v83 objects:v112 count:16];
      }

      while (v45);
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v49 = self->_rawCounters;
    v50 = [(NSArray *)v49 countByEnumeratingWithState:&v79 objects:v111 count:16];
    if (v50)
    {
      v51 = *v80;
      do
      {
        for (jj = 0; jj != v50; ++jj)
        {
          if (*v80 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v79 + 1) + 8 * jj);
          name8 = [v53 name];
          v110[0] = name8;
          v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v53, "valueType") == 1}];
          v110[1] = v55;
          v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
          [obj addObject:v56];
        }

        v50 = [(NSArray *)v49 countByEnumeratingWithState:&v79 objects:v111 count:16];
      }

      while (v50);
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    derivedCounterScriptPath3 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
    v59 = [defaultManager2 fileExistsAtPath:derivedCounterScriptPath3];

    if (v59)
    {
      v60 = MEMORY[0x277CCACA8];
      derivedCounterScriptPath4 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
      v62 = [v60 stringWithContentsOfFile:derivedCounterScriptPath4 encoding:4 error:0];
    }

    else
    {
      v62 = &stru_285A19CB8;
    }

    v107[0] = &unk_285A36DB0;
    v107[1] = &unk_285A36DF8;
    v108[0] = v72;
    v108[1] = obj;
    v107[2] = &unk_285A36E10;
    v107[3] = &unk_285A36E28;
    v63 = self->_gpuConfigurationVariables;
    if (!v63)
    {
      v63 = MEMORY[0x277CBEC10];
    }

    v108[2] = v62;
    v108[3] = v63;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:4];
    v109 = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];

    v78 = v72;
    v72 = v65;
  }

  return v72;
}

- (id)sampleSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (self->_vendor == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    sources = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v5 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(sources);
          }

          v8 = MEMORY[0x277CCABB0];
          selects = [*(*(&v13 + 1) + 8 * i) selects];
          v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(selects, "count")}];
          [v3 addObject:v10];
        }

        v5 = [sources countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_rawCounters, "count")}];
    [v3 addObject:v11];
  }

  return v3;
}

- (id)ringBufferCounts
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_vendor == 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sources = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v6 = [sources countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(sources);
          }

          v9 = MEMORY[0x277CCABB0];
          source = [*(*(&v15 + 1) + 8 * i) source];
          ringBufferNum = [source ringBufferNum];

          if (ringBufferNum <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = ringBufferNum;
          }

          v13 = [v9 numberWithUnsignedInt:v12];
          [v4 addObject:v13];
        }

        v6 = [sources countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [v3 addObject:&unk_285A36DC8];
  }

  return v4;
}

@end