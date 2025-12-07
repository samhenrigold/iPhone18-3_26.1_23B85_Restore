@interface MPSCounters
- (MPSCounters)initWithCommandQueue:(id)queue addQeueuPerfSampleHandler:(BOOL)handler;
- (int)countEncodersInWorkload:(id)workload withExtraRequestedCounter:(id)counter forStatistics:(id)statistics userSpecifiedIterations:(BOOL)iterations includingBlitSamples:(BOOL)samples;
- (int)enableCountersIncludingBlitSamples:(BOOL)samples;
- (int)requestCountersWithExtraRequestedCounter:(id)counter;
- (int)requestCountersWithExtraRequestedCounter:(id)counter fillStats:(id)stats;
- (void)dealloc;
- (void)perfSampleHandlerWithCommandBuffer:(id)buffer data:(id)data numberOfSamples:(unint64_t)samples;
- (void)printAllAvailableCounters;
@end

@implementation MPSCounters

- (MPSCounters)initWithCommandQueue:(id)queue addQeueuPerfSampleHandler:(BOOL)handler
{
  handlerCopy = handler;
  v69.receiver = self;
  v69.super_class = MPSCounters;
  v10 = [(MPSCounters *)&v69 init];
  if (v10)
  {
    v10->_device = objc_msgSend_device(queue, v6, v7, v8, v9);
    v10->_commandQueue = queue;
    v10->_commandQueueSPI = queue;
    *&v10->_encoderCoalescing = 256;
    v10->_logEncoderInfo = 1;
    v11 = off_2814650F0("MPS_BENCHMARK_LOOP_ENABLE_ENCODER_COALESCING");
    if (v11 && *v11 == 49)
    {
      off_2814650E0("MPS_BENCHMARK_LOOP_ENABLE_ENCODER_COALESCING environment variable set\n");
      if ((*(MPSDevice::GetMPSDevice() + 1477) & 4) != 0)
      {
        *&v10->_encoderCoalescing = 1;
      }

      else if (!v10->_encoderCoalescing)
      {
        off_2814650E0("MPS_BENCHMARK_LOOP_ENABLE_ENCODER_COALESCING environment variable was ignored and encoder coalescing will not occur\n");
      }
    }

    v10->_countingEncoders = 0;
    v10->_iterationsDone = 0;
    v10->_counterStatistics = 0;
    v10->_whileCountingData = 0;
    v10->_timePerEncode = 0.0;
    v10->_countingEncodersSemaphore = dispatch_semaphore_create(1);
    v12 = off_2814650F0("ATFMTL_TEST_MODE");
    if (!v12 || strcmp(v12, "presilicon"))
    {
      if (handlerCopy)
      {
        commandQueueSPI = v10->_commandQueueSPI;
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = sub_23990DA64;
        v68[3] = &unk_278AA8AC0;
        v68[4] = v10;
        objc_msgSend_addPerfSampleHandler_(commandQueueSPI, v13, v68, v14, v15);
      }

      v17 = objc_msgSend_conformsToProtocol_(v10->_device, v13, &unk_284C7D428, v14, v15);
      if (v17)
      {
        LOBYTE(v17) = objc_msgSend_conformsToProtocol_(v10->_commandQueue, v18, &unk_284C7DA38, v19, v20);
      }

      v10->_countersSupported = v17;
      v21 = objc_opt_respondsToSelector();
      v10->_supportsMultipass = v21 & 1;
      if (v10->_countersSupported && (v21 & 1) != 0)
      {
        if ((*(MPSDevice::GetMPSDevice() + 1477) & 4) != 0)
        {
          v31 = 0;
          v10->_allCounters = 0;
        }

        else
        {
          v26 = objc_msgSend_availableCounters(v10->_commandQueueSPI, v22, v23, v24, v25);
          v10->_allCounters = v26;
          v31 = objc_msgSend_count(v26, v27, v28, v29, v30);
        }

        v10->_nAvailableCounters = v31;
        device = v10->_device;
        v33 = objc_msgSend_vendorName(device, v22, v23, v24, v25);
        NSLog(&cfstr_DeviceVendor.isa, v33);
        v38 = objc_msgSend_name(device, v34, v35, v36, v37);
        NSLog(&cfstr_DeviceName.isa, v38);
        v43 = objc_msgSend_sharedMemorySize(device, v39, v40, v41, v42);
        NSLog(&cfstr_DeviceMemoryLl.isa, v43 >> 20);
        if ((objc_msgSend_containsString_(v33, v44, @"INTEL", v45, v46) & 1) != 0 || (objc_msgSend_containsString_(v33, v47, @"Intel", v48, v49) & 1) != 0 || objc_msgSend_containsString_(v33, v47, @"intel", v48, v49))
        {
          v10->_vendor = 1;
        }

        if ((objc_msgSend_containsString_(v33, v47, @"AMD", v48, v49) & 1) != 0 || (objc_msgSend_containsString_(v33, v50, @"Amd", v51, v52) & 1) != 0 || objc_msgSend_containsString_(v33, v50, @"amd", v51, v52))
        {
          v10->_vendor = 2;
        }

        if ((objc_msgSend_containsString_(v33, v50, @"NVIDIA", v51, v52) & 1) != 0 || (objc_msgSend_containsString_(v33, v53, @"Nvidia", v54, v55) & 1) != 0 || objc_msgSend_containsString_(v33, v53, @"nvidia", v54, v55))
        {
          v10->_vendor = 3;
          if (!objc_msgSend_supportsFamily_(device, v53, 1001, v54, v55))
          {
LABEL_32:
            v10->_deviceHasCycleCounter = 0;
            if (!v10->_nAvailableCounters)
            {
              return v10;
            }

            goto LABEL_36;
          }
        }

        else if (!objc_msgSend_supportsFamily_(device, v53, 1001, v54, v55))
        {
          goto LABEL_32;
        }

        v10->_vendor = 0;
        v10->_deviceHasCycleCounter = 0;
        if (v10->_nAvailableCounters)
        {
LABEL_36:
          for (i = 0; i < v10->_nAvailableCounters; ++i)
          {
            vendor = v10->_vendor;
            v61 = objc_msgSend_objectAtIndexedSubscript_(v10->_allCounters, v56, i, v57, v58);
            v66 = objc_msgSend_UTF8String(v61, v62, v63, v64, v65);
            if (vendor == 2)
            {
              if (!strcmp(v66, "AMDStat_GPU_Engine_Ticks"))
              {
                goto LABEL_42;
              }
            }

            else if (!strcmp(v66, "MTLStatTotalGPUCycles"))
            {
LABEL_42:
              v10->_deviceHasCycleCounter = 1;
            }
          }
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return v10;
}

- (int)enableCountersIncludingBlitSamples:(BOOL)samples
{
  if (!self->_countersSupported)
  {
    return -1;
  }

  samplesCopy = samples;
  if (objc_msgSend_isStatEnabled(self->_commandQueueSPI, a2, samples, v3, v4))
  {
    NSLog(&cfstr_StatsAlreadyEn.isa);
    return 0;
  }

  objc_msgSend_setStatEnabled_(self->_commandQueueSPI, v7, 1, v8, v9);
  commandQueueSPI = self->_commandQueueSPI;
  if (samplesCopy)
  {
    objc_msgSend_setStatLocations_(commandQueueSPI, v11, 51, v12, v13);
  }

  else
  {
    objc_msgSend_setStatLocations_(commandQueueSPI, v11, 63, v12, v13);
  }

  v19 = self->_commandQueueSPI;
  StatOptions = objc_msgSend_getStatOptions(v19, v15, v16, v17, v18);
  objc_msgSend_setStatOptions_(v19, v21, StatOptions & 0xFFFFFFFFFFFFFFFELL, v22, v23);
  if (!self->_encoderCoalescing)
  {
    return 0;
  }

  v28 = self->_commandQueueSPI;
  v29 = objc_msgSend_getStatOptions(v28, v24, v25, v26, v27);
  objc_msgSend_setStatOptions_(v28, v30, v29 | 0x40000000, v31, v32);
  return 0;
}

- (int)requestCountersWithExtraRequestedCounter:(id)counter fillStats:(id)stats
{
  counterStatistics = self->_counterStatistics;
  if (counterStatistics != stats)
  {
    counterCopy = counter;
    self->_counterStatistics = stats;

    counter = counterCopy;
  }

  return objc_msgSend_requestCountersWithExtraRequestedCounter_(self, a2, counter, stats, v4);
}

- (int)requestCountersWithExtraRequestedCounter:(id)counter
{
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v5, v6, 6, v7, v8);
  if (counter)
  {
    if (!self->_nAvailableCounters)
    {
      goto LABEL_7;
    }

    v13 = 0;
    v14 = 0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_allCounters, v9, v14, v10, v11);
      v13 |= objc_msgSend_isEqualToString_(v15, v16, counter, v17, v18);
      ++v14;
    }

    while (v14 < self->_nAvailableCounters);
    if ((v13 & 1) == 0)
    {
LABEL_7:
      NSLog(&cfstr_ExtraRequested.isa);

      return -1;
    }

    counterCopy = counter;
  }

  else
  {
    counterCopy = @"MTLStatVertexCost";
  }

  self->_extraCounterRequested = &counterCopy->isa;
  objc_msgSend_addObject_(v12, v9, @"MTLStat_nSec", v10, v11);
  objc_msgSend_addObject_(v12, v21, @"MTLStatCommandBufferIndex", v22, v23);
  objc_msgSend_addObject_(v12, v24, @"MTLStatEncoderIndex", v25, v26);
  objc_msgSend_addObject_(v12, v27, @"MTLStatCommandIndex", v28, v29);
  objc_msgSend_addObject_(v12, v30, self->_extraCounterRequested, v31, v32);
  vendor = self->_vendor;
  if (vendor <= 3)
  {
    objc_msgSend_addObject_(v12, v33, off_278AA8B08[vendor], v34, v35);
  }

  self->_counterListsPerPass = objc_msgSend_subdivideCounterList_(self->_commandQueueSPI, v37, v12, v38, v39);
  self->_nPasses = objc_msgSend_count(self->_counterListsPerPass, v40, v41, v42, v43);
  v47 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v44, 0, v45, v46);
  if (!objc_msgSend_count(v47, v48, v49, v50, v51))
  {
    goto LABEL_32;
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v57 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v52, 0, v53, v54);
    v61 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, v55, v59, v60);
    v66 = objc_msgSend_UTF8String(v61, v62, v63, v64, v65);
    v67 = strcmp(v66, "MTLStatTotalGPUCycles");
    v71 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v68, 0, v69, v70);
    v75 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v55, v73, v74);
    v80 = objc_msgSend_UTF8String(v75, v76, v77, v78, v79);
    v81 = strcmp(v80, "GPU_CoreClocks");
    v85 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v82, 0, v83, v84);
    v89 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, v55, v87, v88);
    v94 = objc_msgSend_UTF8String(v89, v90, v91, v92, v93);
    v95 = strcmp(v94, "AMDStat_GPU_Engine_Ticks");
    v99 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v96, 0, v97, v98);
    v103 = objc_msgSend_objectAtIndexedSubscript_(v99, v100, v55, v101, v102);
    v108 = objc_msgSend_UTF8String(v103, v104, v105, v106, v107);
    v109 = strcmp(v108, "MTLStatHostElapsedCycles");
    if (v67)
    {
      v113 = v81 == 0;
    }

    else
    {
      v113 = 1;
    }

    if (v113 || v95 == 0 || v109 == 0)
    {
      v56 = 1;
    }

    ++v55;
    v116 = objc_msgSend_objectAtIndexedSubscript_(self->_counterListsPerPass, v110, 0, v111, v112);
  }

  while (v55 < objc_msgSend_count(v116, v117, v118, v119, v120));
  if (v56)
  {
    v121 = objc_msgSend_objectAtIndex_(self->_counterListsPerPass, v52, 0, v53, v54);
    self->_passList = v121;
    v124 = objc_msgSend_requestCounters_withIndex_(self->_commandQueueSPI, v122, v121, 0, v123);
    if (v124)
    {
      printf("MST: Error %d requesting pass %d\n", v124, 0);
    }

    RequestedCounters = objc_msgSend_getRequestedCounters(self->_commandQueueSPI, v125, v126, v127, v128);
    if (RequestedCounters)
    {
      if (self->_supportsMultipass)
      {
        v133 = objc_msgSend_indexOfObject_(self->_passList, v130, @"MTLStatCommandBufferIndex", v131, v132);
      }

      else
      {
        self->_passList = RequestedCounters;
        v133 = objc_msgSend_indexOfObject_(RequestedCounters, v130, @"MTLStatCommandBufferIndex", v131, v132);
      }

      self->_commandBufferOffset = v133;
      self->_encoderOffset = objc_msgSend_indexOfObject_(self->_passList, v134, @"MTLStatEncoderIndex", v135, v136);
      self->_commandOffset = objc_msgSend_indexOfObject_(self->_passList, v137, @"MTLStatCommandIndex", v138, v139);
      self->_timeOffset = objc_msgSend_indexOfObject_(self->_passList, v140, @"MTLStat_nSec", v141, v142);
      passList = self->_passList;
      v147 = self->_vendor - 1;
      if (v147 > 2)
      {
        v148 = objc_msgSend_indexOfObject_(passList, v143, @"MTLStatTotalGPUCycles", v144, v145);
      }

      else
      {
        v148 = objc_msgSend_indexOfObject_(passList, v143, off_278AA8B28[v147], v144, v145);
      }

      self->_cyclesOffset = v148;
      v152 = objc_msgSend_indexOfObject_(self->_passList, v149, self->_extraCounterRequested, v150, v151);
      result = 0;
      self->_extraOffset = v152;
    }

    else
    {
      puts("ERROR: COULD NOT getRequestedCounters this might mean an unsupported counter was passed in");
      return -1;
    }
  }

  else
  {
LABEL_32:
    puts("Cycle counter not found!!!");
    return -2;
  }

  return result;
}

- (int)countEncodersInWorkload:(id)workload withExtraRequestedCounter:(id)counter forStatistics:(id)statistics userSpecifiedIterations:(BOOL)iterations includingBlitSamples:(BOOL)samples
{
  samplesCopy = samples;
  iterationsCopy = iterations;
  dispatch_semaphore_wait(self->_countingEncodersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_useInterposer)
  {
    *(statistics + 34) = objc_alloc_init(MPSWorkloadInfoCapture);
  }

  self->_countingEncoders = 1;
  self->_timePerEncode = 0.0;
  *(statistics + 280) = self->_encoderCoalescing;
  v168 = 0;
  *(statistics + 36) = 0x3FF0000000000000;
  *(statistics + 296) = 0;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_setupWithDevice_resourcesPointer_(workload, v13, self->_device, &v168, v14) & 1) == 0)
  {
    NSLog(&cfstr_Workloadprovid.isa);
    dispatch_semaphore_signal(self->_countingEncodersSemaphore);
    objc_msgSend_disableCounters(self, v37, v38, v39, v40);
    return -3;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_initializeWorkload(workload, v16, v17, v18, v19))
  {
    NSLog(&cfstr_WorkloadInitFa.isa);
    dispatch_semaphore_signal(self->_countingEncodersSemaphore);
    objc_msgSend_disableCounters(self, v23, v24, v25, v26);
    return -4;
  }

  if (self->_useInterposer)
  {
    objc_msgSend_captureWithCommandQueue_workload_completionHandler_scheduleHanlder_(*(statistics + 34), v20, self->_commandQueue, workload, 0, 0);
  }

  objc_msgSend_enableCountersIncludingBlitSamples_(self, v20, samplesCopy, v21, v22);
  v31 = objc_msgSend_requestCountersWithExtraRequestedCounter_(self, v28, counter, v29, v30);
  if (v31)
  {
    v36 = v31;
    objc_msgSend_disableCounters(self, v32, v33, v34, v35);
    dispatch_semaphore_signal(self->_countingEncodersSemaphore);
    return v36;
  }

  v41 = objc_autoreleasePoolPush();
  self->_whileCountingData = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = objc_msgSend_commandBuffer(self->_commandQueue, v42, v43, v44, v45);
  objc_msgSend_setProfilingEnabled_(v46, v47, 1, v48, v49);
  v50 = CFAbsoluteTimeGetCurrent();
  objc_msgSend_encodeToCommandBuffer_withResources_(workload, v51, v46, v168, v52);
  v53 = CFAbsoluteTimeGetCurrent();
  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = sub_23990E3B8;
  v167[3] = &unk_278AA8A60;
  v167[4] = workload;
  v167[5] = v46;
  objc_msgSend_addCompletedHandler_(v46, v54, v167, v55, v56);
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = sub_23990E40C;
  v166[3] = &unk_278AA8AE8;
  v166[4] = v46;
  objc_msgSend_addCompletedHandler_(v46, v57, v166, v58, v59);
  objc_msgSend_commit(v46, v60, v61, v62, v63);
  objc_msgSend_waitUntilCompleted(v46, v64, v65, v66, v67);
  v68 = CFAbsoluteTimeGetCurrent();
  v73 = objc_msgSend_profilingResults(v46, v69, v70, v71, v72);
  v77 = objc_msgSend_valueForKey_(v73, v74, *MEMORY[0x277CD6930], v75, v76);
  v82 = objc_msgSend_unsignedLongLongValue(v77, v78, v79, v80, v81);
  v86 = objc_msgSend_valueForKey_(v73, v83, *MEMORY[0x277CD6950], v84, v85);
  v91 = objc_msgSend_unsignedLongLongValue(v86, v87, v88, v89, v90);
  v92 = *&qword_27DF851B8;
  if (*&qword_27DF851B8 != 0.0)
  {
LABEL_15:
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (mach_timebase_info(&info))
  {
    v92 = *&qword_27DF851B8;
    goto LABEL_15;
  }

  LODWORD(v93) = info.numer;
  LODWORD(v94) = info.denom;
  v92 = v93 * 0.000000001 / v94;
  *&qword_27DF851B8 = v92;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (!objc_msgSend_purgeResources_(workload, v95, v168, v96, v97))
  {
    NSLog(&cfstr_Workloadprovid_0.isa);
    dispatch_semaphore_signal(self->_countingEncodersSemaphore);
    objc_msgSend_disableCounters(self, v98, v99, v100, v101);
    objc_autoreleasePoolPop(v41);
    return -5;
  }

LABEL_19:
  v102 = v53 - v50;
  self->_countingEncoders = 0;
  objc_msgSend_initializeWithPassList_numberOfEncodersInCurrentWorkload_numEncodesPerCommandBuffer_extraRequestedCounter_userSpecifiedIterations_vendor_useGRC_(statistics, v95, self->_passList, self->_encodersInWorkload, self->_numEncodesPerCommandBuffer, counter, iterationsCopy, self->_vendor, 0);
  if (objc_msgSend_count(self->_whileCountingData, v103, v104, v105, v106))
  {
    v110 = 0;
    do
    {
      v111 = objc_msgSend_objectAtIndexedSubscript_(self->_whileCountingData, v107, v110, v108, v109);
      objc_msgSend_addMPSCounterData_(statistics, v112, v111, v113, v114);
      ++v110;
    }

    while (objc_msgSend_count(self->_whileCountingData, v115, v116, v117, v118) > v110);
  }

  self->_whileCountingData = 0;
  *(statistics + 281) = self->_useInterposer;
  *(statistics + 280) = self->_encoderCoalescing;
  GeneralStatistics = objc_msgSend_getGeneralStatistics(statistics, v119, v120, v121, v122);
  inited = objc_msgSend_InitTime(GeneralStatistics, v124, v125, v126, v127);
  objc_msgSend_addValue_(inited, v129, v130, v131, v132, v50 - Current);
  v137 = objc_msgSend_EncodeTime(GeneralStatistics, v133, v134, v135, v136);
  objc_msgSend_addValue_(v137, v138, v139, v140, v141, v102);
  v146 = objc_msgSend_QueueTime(GeneralStatistics, v142, v143, v144, v145);
  objc_msgSend_addValue_(v146, v147, v148, v149, v150, v92 * (v91 - v82));
  v155 = objc_msgSend_WallClockTime(GeneralStatistics, v151, v152, v153, v154);
  objc_msgSend_addValue_(v155, v156, v157, v158, v159, v68 - v50);
  objc_msgSend_updateNumberOfCommandBuffers_numberOfEncodesPerCommandBuffer_(GeneralStatistics, v160, 1, 1, v161);
  objc_autoreleasePoolPop(v41);
  objc_msgSend_disableCounters(self, v162, v163, v164, v165);
  dispatch_semaphore_signal(self->_countingEncodersSemaphore);
  return 0;
}

- (void)perfSampleHandlerWithCommandBuffer:(id)buffer data:(id)data numberOfSamples:(unint64_t)samples
{
  if (!samples)
  {
    NSLog(&cfstr_NoCounterSampl.isa, a2, buffer, data);
    return;
  }

  v8 = [MPSCounterData alloc];
  v12 = objc_msgSend_initWithData_numberOfSamples_(v8, v9, data, samples, v10);
  if (self->_countingEncoders)
  {
    objc_msgSend_addObject_(self->_whileCountingData, v11, v12, v13, v14);
    if (!self->_countingEncoders)
    {
      return;
    }
  }

  else
  {
    objc_msgSend_addMPSCounterData_(self->_counterStatistics, v11, v12, v13, v14);
    if (!self->_countingEncoders)
    {
      return;
    }
  }

  if (objc_msgSend_count(self->_passList, v15, v16, v17, v18) >= 7)
  {
    puts("Pass list has more counters than expected");
    NSLog(&stru_284C655A8.isa, self->_passList);
  }

  v23 = objc_msgSend_bytes(data, v19, v20, v21, v22);
  v28 = objc_msgSend_count(self->_passList, v24, v25, v26, v27);
  if (self->_countingEncoders)
  {
    v29 = v23 + (8 * samples - 8) * v28;
    v30 = *(v29 + 8 * self->_encoderOffset);
    timeOffset = self->_timeOffset;
    v32 = *(v29 + 8 * timeOffset);
    v33 = *(v23 + 8 * timeOffset);
    self->_encodersInWorkload = v30 + 1;
    v34 = self->_timePerEncode + (v32 - v33) * 0.000000001;
    self->_timePerEncode = v34;
    v35 = 0.1 / v34;
    if (v35 <= 1.0)
    {
      v35 = 1.0;
    }

    self->_numEncodesPerCommandBuffer = v35;
  }
}

- (void)printAllAvailableCounters
{
  NSLog(&cfstr_NumberOfAvaila.isa, a2, self->_nAvailableCounters);
  if (self->_nAvailableCounters)
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(self->_allCounters, v3, v6, v4, v5);
      v12 = objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
      NSLog(&cfstr_Availablecount.isa, v6++, v12);
    }

    while (v6 < self->_nAvailableCounters);
  }
}

- (void)dealloc
{
  countingEncodersSemaphore = self->_countingEncodersSemaphore;
  if (countingEncodersSemaphore)
  {
    dispatch_release(countingEncodersSemaphore);
  }

  v4.receiver = self;
  v4.super_class = MPSCounters;
  [(MPSCounters *)&v4 dealloc];
}

@end