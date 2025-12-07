@interface MPSGPURawCounters
- (MPSGPURawCounters)initWithCommandQueue:(id)queue addQeueuPerfSampleHandler:(BOOL)handler;
- (int)countEncodersInWorkload:(id)workload withExtraRequestedCounter:(id)counter forStatistics:(id)statistics userSpecifiedIterations:(BOOL)iterations includingBlitSamples:(BOOL)samples;
- (int)requestCountersWithExtraRequestedCounter:(id)counter fillStats:(id)stats;
- (void)aggregatePerfSamplesForCommandBuffer:(id)buffer firstCommandBuffer:(id)commandBuffer;
- (void)dealloc;
- (void)getPStateAndFrequency;
@end

@implementation MPSGPURawCounters

- (void)getPStateAndFrequency
{
  memset(v53, 0, sizeof(v53));
  memset(__p, 0, sizeof(__p));
  v3 = IOServiceMatching("AGXAccelerator");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
  v5 = MatchingService;
  if (!MatchingService)
  {
    goto LABEL_8;
  }

  v6 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"PerfStateValues", *MEMORY[0x277CBECE8], 0);
  v8 = IORegistryEntryCreateCFProperty(v5, @"PerfStateMap", v6, 0);
  BytePtr = CFDataGetBytePtr(CFProperty);
  v10 = BytePtr;
  if (!BytePtr)
  {
    CFRelease(CFProperty);
LABEL_8:
    off_2814650E8("Unable to find max frequency or pstate");
    goto LABEL_47;
  }

  if (v8)
  {
    cf = CFProperty;
    v44 = CFDataGetBytePtr(v8);
    v11 = *(v10 + 1);
    v12 = (v10 + 8);
    selfCopy2 = self;
    v42 = v8;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    cf = CFProperty;
    v44 = 0;
    v11 = *(BytePtr + 1);
    v12 = (BytePtr + 8);
    selfCopy2 = self;
    v42 = 0;
    if (v11)
    {
LABEL_5:
      v48 = 8;
      v13 = *v10;
      if (!*v10)
      {
        goto LABEL_41;
      }

      goto LABEL_12;
    }
  }

  v11 = *(v10 + 3);
  if (v11)
  {
    v14 = (v10 + 16);
    v48 = 12;
    v15 = v12;
    v12 = v14;
    v13 = *v15;
    if (*v15)
    {
LABEL_12:
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v47 = ((v13 - 2) + 2) * v48 + 4;
      v46 = v13;
      while (1)
      {
        v23 = *v12;
        v24 = v12[1];
        if (v17 >= v18)
        {
          v25 = v17 - v16;
          v26 = (v17 - v16) >> 2;
          v27 = v26 + 1;
          v49 = v19;
          __src = v16;
          if ((v26 + 1) >> 62)
          {
            sub_23990B450();
          }

          v45 = v20;
          if ((v18 - v16) >> 1 > v27)
          {
            v27 = (v18 - v16) >> 1;
          }

          if (v18 - v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v27;
          }

          if (v28)
          {
            if (!(v28 >> 62))
            {
              operator new();
            }

            sub_23990B4F8();
          }

          v29 = v12[1];
          v30 = v21;
          v16 = 0;
          v31 = (4 * v26);
          v18 = 0;
          *v31 = v23;
          v17 = (v31 + 1);
          memcpy(0, __src, v25);
          v13 = v46;
          v21 = v30;
          v20 = v45;
          v24 = v29;
          v19 = v49;
          if (v45 >= v21)
          {
LABEL_31:
            __srca = v16;
            v32 = v20 - v19;
            v33 = (v20 - v19) >> 2;
            v34 = v33 + 1;
            if ((v33 + 1) >> 62)
            {
              sub_23990B450();
            }

            v35 = v18;
            if ((v21 - v19) >> 1 > v34)
            {
              v34 = (v21 - v19) >> 1;
            }

            if (v21 - v19 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v36 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              if (!(v36 >> 62))
              {
                operator new();
              }

              sub_23990B4F8();
            }

            *(4 * v33) = v24;
            v20 = (4 * v33 + 4);
            v22 = 0;
            memcpy(0, v19, v32);
            v16 = __srca;
            v13 = v46;
            v18 = v35;
            v21 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          *v17 = v23;
          v17 += 4;
          if (v20 >= v21)
          {
            goto LABEL_31;
          }
        }

        *v20 = v24;
        v20 += 4;
        v22 = v19;
LABEL_14:
        if (v13 == 1)
        {
          v12 = (v12 + v48 + 4);
        }

        else
        {
          v12 = (v12 + v47);
        }

        v19 = v22;
        if (!--v11)
        {
          goto LABEL_42;
        }
      }
    }
  }

LABEL_41:
  v20 = 0;
  v22 = 0;
  v17 = 0;
  v16 = 0;
LABEL_42:
  if (v44)
  {
    if (*v44)
    {
      operator new();
    }
  }

  else
  {
    sub_23990B52C(v53, v53[0], v16, v17, (v17 - v16) >> 2);
    sub_23990B52C(__p, 0, v22, v20, (v20 - v22) >> 2);
  }

  CFRelease(cf);
  CFRelease(v42);
  self = selfCopy2;
LABEL_47:
  v37 = off_2814650F0("MPS_BENCHMARK_LOOP_PSTATE");
  if (v37)
  {
    v38 = atol(v37);
    off_2814650E0("\n\n\nMPS_BENCHMARK_LOOP_PSTATE set to %llu ... please make sure agx_util to set p-state to %llu else cycle count will be bogus\n", v38, v38);
    self->_maxPState = *&v53[0][4 * v38];
    maxFrequency = *(__p[0] + v38);
    self->_maxFrequency = maxFrequency;
  }

  else
  {
    self->_maxPState = 6;
    self->_maxFrequency = 1000;
    off_2814650E0("WARNING: MPS_BENCHMARK_LOOP_PSTATE not set. Cycle count will be based on 1GHz. Please use agx_util to set p-state and set MPS_BENCHMARK_LOOP_PSTATE=value env var to let GRC backend know the value you are setting to so that correct cycle count can be computed using timestamp and frequency corresponding to p-state\n");
    maxFrequency = self->_maxFrequency;
  }

  off_2814650E0("Using p-state %llu with frequency %llu\n", self->_maxPState, maxFrequency);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v40 = v53[0];
  if (v53[0])
  {

    operator delete(v40);
  }
}

- (MPSGPURawCounters)initWithCommandQueue:(id)queue addQeueuPerfSampleHandler:(BOOL)handler
{
  v32.receiver = self;
  v32.super_class = MPSGPURawCounters;
  v5 = [(MPSCounters *)&v32 initWithCommandQueue:queue addQeueuPerfSampleHandler:handler];
  v9 = v5;
  if (!v5)
  {
    return v9;
  }

  objc_msgSend_setEncoderCoalescing_(v5, v6, 1, v7, v8);
  objc_msgSend_setUseInterposer_(v9, v10, 0, v11, v12);
  v13 = off_2814650F0("MPS_BENCHMARK_LOOP_ENABLE_INTERPOSER");
  if (v13 && *v13 == 49)
  {
    off_2814650E0("Disabling encoder coalesing as MPS_BENCHMARK_LOOP_ENABLE_INTERPOSER environment variable is set to 1\n");
    v18 = objc_msgSend_device(queue, v14, v15, v16, v17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_msgSend_originalObject(v18, v19, v20, v21, v22);
    }

    if (v18)
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_setDisableComputeEncoderCoalescing_(v18, v19, 1, v21, v22);
      }
    }

    objc_msgSend_setEncoderCoalescing_(v9, v19, 0, v21, v22);
    objc_msgSend_setUseInterposer_(v9, v23, 1, v24, v25);
  }

  v9->super._passList = &unk_284C6A810;
  v26 = off_2814650F0("ATFMTL_TEST_MODE");
  if (v26)
  {
    if (strncmp(v26, "presilicon", 0xAuLL))
    {
      return v9;
    }

    v9->_maxPState = 6;
    v9->_maxFrequency = 1000;
    return v9;
  }

  else
  {
    objc_msgSend_getPStateAndFrequency(v9, v27, v28, v29, v30);
    return v9;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSGPURawCounters;
  [(MPSCounters *)&v2 dealloc];
}

- (int)requestCountersWithExtraRequestedCounter:(id)counter fillStats:(id)stats
{
  counterStatistics = self->super._counterStatistics;
  if (counterStatistics != stats)
  {
    counterCopy = counter;
    self->super._counterStatistics = stats;

    counter = counterCopy;
  }

  return objc_msgSend_requestCountersWithExtraRequestedCounter_(self, a2, counter, stats, v4);
}

- (int)countEncodersInWorkload:(id)workload withExtraRequestedCounter:(id)counter forStatistics:(id)statistics userSpecifiedIterations:(BOOL)iterations includingBlitSamples:(BOOL)samples
{
  iterationsCopy = iterations;
  dispatch_semaphore_wait(self->super._countingEncodersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  self->super._countingEncoders = 1;
  self->super._timePerEncode = 0.0;
  *(statistics + 280) = self->super._encoderCoalescing;
  v167 = 0;
  *(statistics + 36) = 0x3FF0000000000000;
  *(statistics + 296) = 1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_setupWithDevice_resourcesPointer_(workload, v12, self->super._device, &v167, v13) & 1) == 0)
  {
    NSLog(&cfstr_Workloadprovid.isa);
    dispatch_semaphore_signal(self->super._countingEncodersSemaphore);
    objc_msgSend_disableCounters(self, v96, v97, v98, v99);
    return -3;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_initializeWorkload(workload, v15, v16, v17, v18))
  {
    NSLog(&cfstr_WorkloadInitFa.isa);
    dispatch_semaphore_signal(self->super._countingEncodersSemaphore);
    objc_msgSend_disableCounters(self, v19, v20, v21, v22);
    return -4;
  }

  if (self->super._logEncoderInfo)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    *(MPSDevice + 1464) = 1;
    v25 = objc_alloc_init(MPSWorkloadInfoCapture);
    *(statistics + 34) = v25;
    objc_msgSend_captureWithCommandQueue_workload_completionHandler_scheduleHanlder_(v25, v26, self->super._commandQueue, workload, 0, 0);
    if (!self->super._useInterposer)
    {
      objc_msgSend_print(*(statistics + 34), v27, v28, v29, v30);

      *(statistics + 34) = 0;
    }

    *(MPSDevice + 1464) = 0;
  }

  v31 = objc_autoreleasePoolPush();
  self->super._whileCountingData = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = objc_msgSend_commandBufferFromCommandQueue_(MEMORY[0x277CD7208], v32, self->super._commandQueue, v33, v34);
  v40 = objc_msgSend_commandBuffer(v35, v36, v37, v38, v39);
  objc_msgSend_setProfilingEnabled_(v35, v41, 1, v42, v43);
  v44 = CFAbsoluteTimeGetCurrent();
  objc_msgSend_encodeToCommandBuffer_withResources_(workload, v45, v35, v167, v46);
  v47 = CFAbsoluteTimeGetCurrent();
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = sub_23990B1F4;
  v166[3] = &unk_278AA8A60;
  v166[4] = workload;
  v166[5] = v35;
  objc_msgSend_addCompletedHandler_(v35, v48, v166, v49, v50);
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = sub_23990B248;
  v165[3] = &unk_278AA8A60;
  v165[4] = self;
  v165[5] = v40;
  objc_msgSend_addCompletedHandler_(v35, v51, v165, v52, v53);
  objc_msgSend_commit(v35, v54, v55, v56, v57);
  objc_msgSend_waitUntilCompleted(v35, v58, v59, v60, v61);
  v62 = CFAbsoluteTimeGetCurrent();
  v67 = objc_msgSend_profilingResults(v35, v63, v64, v65, v66);
  v71 = objc_msgSend_valueForKey_(v67, v68, *MEMORY[0x277CD6930], v69, v70);
  v76 = objc_msgSend_unsignedLongLongValue(v71, v72, v73, v74, v75);
  v80 = objc_msgSend_valueForKey_(v67, v77, *MEMORY[0x277CD6950], v78, v79);
  v85 = objc_msgSend_unsignedLongLongValue(v80, v81, v82, v83, v84);
  v86 = *&qword_27DF851B8;
  if (*&qword_27DF851B8 != 0.0)
  {
LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (mach_timebase_info(&info))
  {
    v86 = *&qword_27DF851B8;
    goto LABEL_12;
  }

  LODWORD(v87) = info.numer;
  LODWORD(v88) = info.denom;
  v86 = v87 * 0.000000001 / v88;
  *&qword_27DF851B8 = v86;
  if (objc_opt_respondsToSelector())
  {
LABEL_13:
    if ((objc_msgSend_purgeResources_(workload, v89, v167, v90, v91) & 1) == 0)
    {
      NSLog(&cfstr_Workloadprovid_0.isa);
      dispatch_semaphore_signal(self->super._countingEncodersSemaphore);
      objc_msgSend_disableCounters(self, v92, v93, v94, v95);
      objc_autoreleasePoolPop(v31);
      return -5;
    }
  }

LABEL_17:
  v100 = v44 - Current;
  v101 = v47 - v44;
  v102 = v62 - v44;
  v103 = v86 * (v85 - v76);
  self->super._countingEncoders = 0;
  objc_msgSend_initializeWithPassList_numberOfEncodersInCurrentWorkload_numEncodesPerCommandBuffer_extraRequestedCounter_userSpecifiedIterations_vendor_useGRC_(statistics, v89, self->super._passList, self->super._encodersInWorkload, self->super._numEncodesPerCommandBuffer, counter, iterationsCopy, self->super._vendor, 1);
  if (objc_msgSend_count(self->super._whileCountingData, v104, v105, v106, v107))
  {
    v111 = 0;
    v112 = 1;
    do
    {
      v113 = *(statistics + 18);
      *(statistics + 18) = 1;
      v114 = objc_msgSend_objectAtIndexedSubscript_(self->super._whileCountingData, v108, v111, v109, v110);
      objc_msgSend_addMPSCounterData_(statistics, v115, v114, v116, v117);
      *(statistics + 18) = v113;
      v111 = v112++;
    }

    while (objc_msgSend_count(self->super._whileCountingData, v118, v119, v120, v121) > v111);
  }

  self->super._whileCountingData = 0;
  *(statistics + 281) = self->super._useInterposer;
  *(statistics + 280) = self->super._encoderCoalescing;
  GeneralStatistics = objc_msgSend_getGeneralStatistics(statistics, v122, v123, v124, v125);
  inited = objc_msgSend_InitTime(GeneralStatistics, v127, v128, v129, v130);
  objc_msgSend_addValue_(inited, v132, v133, v134, v135, v100);
  v140 = objc_msgSend_EncodeTime(GeneralStatistics, v136, v137, v138, v139);
  objc_msgSend_addValue_(v140, v141, v142, v143, v144, v101);
  v149 = objc_msgSend_QueueTime(GeneralStatistics, v145, v146, v147, v148);
  objc_msgSend_addValue_(v149, v150, v151, v152, v153, v103);
  v158 = objc_msgSend_WallClockTime(GeneralStatistics, v154, v155, v156, v157);
  objc_msgSend_addValue_(v158, v159, v160, v161, v162, v102);
  objc_msgSend_updateNumberOfCommandBuffers_numberOfEncodesPerCommandBuffer_(GeneralStatistics, v163, 1, 1, v164);
  objc_autoreleasePoolPop(v31);
  dispatch_semaphore_signal(self->super._countingEncodersSemaphore);
  return 0;
}

- (void)aggregatePerfSamplesForCommandBuffer:(id)buffer firstCommandBuffer:(id)commandBuffer
{
  self->super._encodersInWorkload = 1;
  v7 = malloc_type_malloc(0x40uLL, 0x100004077774924uLL);
  objc_msgSend_GPUStartTime(commandBuffer, v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_GPUEndTime(buffer, v14, v15, v16, v17);
  v19 = v18;
  maxFrequency = self->_maxFrequency;
  *v7 = 0;
  v7[1] = 0;
  *(v7 + 2) = xmmword_239916DB0;
  v7[2] = (v13 * maxFrequency * 1000000.0);
  v7[6] = (v19 * maxFrequency * 1000000.0);
  *(v7 + 3) = v13;
  *(v7 + 7) = v19;
  v22 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v21, v7, 64, 1);
  v23 = [MPSCounterData alloc];
  v29 = objc_msgSend_initWithData_numberOfSamples_(v23, v24, v22, 2, v25);
  if (self->super._countingEncoders)
  {
    objc_msgSend_addObject_(self->super._whileCountingData, v26, v29, v27, v28);

    if (!self->super._countingEncoders)
    {
      return;
    }
  }

  else
  {
    objc_msgSend_setNumberOfEncodersInCurrentWorkload_(self->super._counterStatistics, v26, self->super._encodersInWorkload, v27, v28);
    objc_msgSend_addMPSCounterData_(self->super._counterStatistics, v30, v29, v31, v32);

    if (!self->super._countingEncoders)
    {
      return;
    }
  }

  v33 = v19 - v13 + self->super._timePerEncode;
  self->super._timePerEncode = v33;
  v34 = 0.1 / v33;
  if (v34 <= 1.0)
  {
    v34 = 1.0;
  }

  self->super._numEncodesPerCommandBuffer = v34;
}

@end