@interface SASamplePrinter
- (BOOL)frame:(uint64_t)frame matchesFrame:;
- (BOOL)hasTargetProcess;
- (BOOL)printLaunchdThrottledProcessesToStream:(uint64_t)stream;
- (BOOL)shouldPrintTimeOutsideSamplingRange:(uint64_t)range;
- (SASamplePrinter)initWithSampleStore:(id)store;
- (SAStack)stackForThread:(void *)thread threadStateIndexes:(void *)indexes task:(uint64_t)task taskSampleCount:(BOOL)count isTarget:;
- (__CFString)displayNameForDispatchQueue:(void *)queue;
- (__CFString)displayNameForPid:(uint64_t)pid aroundTimestamp:(uint64_t)timestamp includePid:(void *)includePid;
- (__CFString)displayNameForTask:(__CFString *)task;
- (__CFString)displayStringForResourceCoalition:(void *)coalition;
- (__CFString)rawNameForTask:(__CFString *)task;
- (__CFString)timeIndexDescriptionForStartSampleIndex:(unint64_t)index endSampleIndex:(int)sampleIndex formattedToLength:;
- (__CFString)timeIndexDescriptionForTimestamp:(uint64_t)timestamp;
- (double)timeSpentAsleepBetweenStartTimestamp:(void *)timestamp endTimestamp:;
- (id)_findIOBefore:(void *)before during:(void *)during after:(void *)after thread:(unint64_t)thread stateIndex:(void *)index inIO:(void *)o nextIO:;
- (id)architectureStringForTask:(uint64_t)task;
- (id)binaryImagesHitByTask:(uint64_t)task;
- (id)callTreeForDispatchQueue:(id)queue andThread:(id)thread inTask:(id)task;
- (id)callTreeForDispatchQueue:(id)queue swiftTask:(id)task thread:(id)thread inTask:(id)inTask;
- (id)callTreeForExecutable:(id)executable;
- (id)callTreeForSwiftTask:(id)task thread:(id)thread inTask:(id)inTask;
- (id)callTreeForTask:(id)task;
- (id)callTreeForThread:(id)thread inTask:(id)task;
- (id)callTreesForThreadsInTask:(id)task;
- (id)copyDescriptionForIOEvents:(id *)events;
- (id)copyDescriptionForTimeRanges:(uint64_t)ranges;
- (id)displayNameForPid:(uint64_t)pid threadId:(void *)id timestamp:;
- (id)displayNameForTask:(int)task includePid:;
- (id)displayNameForTask:(uint64_t)task threadId:;
- (id)displayNameForTask:(void *)task thread:(void *)thread threadState:;
- (id)displayStringForOnBehalfOfForTasks:(unsigned int)tasks includePid:;
- (id)displayedBinaryLoadInfoForBinary:(uint64_t)binary segment:(void *)segment desiredLoadAddress:(uint64_t)address offsetIntoLoadInfo:(unint64_t)info isInKernelAddressSpace:(char)space exclave:(void *)exclave binariesToDisplay:(void *)display extraBinariesToDisplay:(void *)toDisplay;
- (id)displayedBinaryLoadInfoForLoadInfo:(uint64_t)info offsetIntoLoadInfo:(void *)loadInfo binariesToDisplay:(unint64_t)display extraBinariesToDisplay:(void *)toDisplay;
- (id)eventEndTimeWithWallTime;
- (id)eventStartTimeWithWallTime;
- (id)kernelVersionAtWallTime:(uint64_t)time;
- (id)sortedLoadInfosForBinaryImages:(uint64_t)images;
- (id)stacksForTask:(uint64_t)task taskSampleCount:;
- (id)stateChangeStringForThreadState:(unint64_t)state serialDispatchQueue:(unint64_t)queue swiftTaskStates:(void *)states thread:(void *)thread threadStateIndexes:(void *)indexes taskState:(void *)taskState task:(uint64_t)task iteratorIndex:(char)self0 missingStateIsInAnotherStack:(uint64_t)self1 numSamplesOmittedSincePreviousDisplayedSample:(void *)self2 sampleTimestamp:(void *)self3 previousSampleTimestamp:(void *)self4 previousDisplayedTimestamp:(void *)self5 previousTaskState:(void *)self6 previousThread:(char *)self7 previousThreadState:(char)self8 dispatchQueueChanges:(char)self9 swiftTaskChanges:(char)taskChanges priorityChanges:(char)priorityChanges nameChanges:(char)nameChanges threadChanges:(char)threadChanges isTimeJump:(void *)jump ioEventsSincePreviousThreadState:;
- (uint64_t)checkForBadOptions;
- (uint64_t)copyDescriptionForIOEvent:(void *)event;
- (uint64_t)highestPriorityInTask:(char)task useBasePriority:;
- (uint64_t)largestFootprintInTask:(void *)task;
- (uint64_t)numIOsForTask:(void *)task ioSize:;
- (uint64_t)printTaskHeaderForTask:(char *)task specialDispatchQueueId:(uint64_t)id specialThreadId:(int)threadId omitSpecial:(int)special omitOther:;
- (uint64_t)shouldPrintTask:(unint64_t)task thread:(unint64_t)thread dispatchQueue:;
- (uint64_t)taskHasSwallowedAnExceptionNotedByHIException:(uint64_t)exception;
- (void)addHeaderForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(void *)indexes toStack:(void *)stack task:(uint64_t)task taskSampleCount:;
- (void)addStack:(void *)stack toStream:(uint64_t)stream sampleCount:(void *)count binariesToDisplay:(uint64_t)display primaryState:(int)state primaryMicrostackshotState:(char)microstackshotState onlyHeaviestStack:(char)heaviestStack isKernel:;
- (void)addStackForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(uint64_t)indexes task:(void *)task toRootObjects:(char)objects nameChanges:(char)changes dispatchQueueChanges:(char)self0 swiftTaskChanges:(char)self1 threadChanges:(char)self2 priorityChanges:(uint64_t)self3 microstackshotSummary:(unsigned __int8)self4 onlyHeaviestStack:(char)self5 includeState:;
- (void)addStackForSwiftTask:(unint64_t)task andThread:(uint64_t)thread task:(void *)a5 toRootObjects:;
- (void)addTaskHeaderToStream:(void *)stream displayName:(uint64_t)name pid:(void *)pid mainBinary:(void *)binary mainBinaryPath:(void *)path sharedCaches:(uint64_t)caches uid:(double)uid bundleIdentifier:(void *)self0 bundleVersion:(__int128)self1 bundleShortVersion:(void *)self2 bundleBuildVersion:(void *)self3 bundleProjectName:(void *)self4 bundleSourceVersion:(void *)self5 bundleProductBuildVersion:(uint64_t)self6 adamID:(void *)self7 installerVersionID:(char)self8 developerType:(void *)self9 appType:(char)appType isBeta:(void *)beta cohortID:(void *)cohortID vendorID:(void *)vendorID distributorID:(void *)distributorID codesigningID:(void *)codesigningID teamID:(void *)teamID resourceCoalitionSampleCounts:(void *)counts onBehalfOfProcesses:(void *)processes architectureString:(void *)string kernelVersion:(void *)stream0 parentName:(void *)stream1 responsibleName:(void *)stream2 taskExecedFromName:(void *)stream3 taskExecedToName:(void *)stream4 forkTimestamp:(void *)stream5 startTimestamp:(unint64_t)stream6 endTimestamp:(unint64_t)stream7 startSampleIndex:(unint64_t)stream8 endSampleIndex:(unint64_t)stream9 numSamples:(uint64_t)name0 totalNumSamples:(uint64_t)name1 numSamplesSuspended:(unint64_t)name2 numSamplesTerminated:(unint64_t)name3 startingTaskSize:(unint64_t)name4 endingTaskSize:(unint64_t)name5 maxTaskSize:(unint64_t)name6 startSampleIndexOfMaxTaskSize:(unsigned int)name7 endSampleIndexOfMaxTaskSize:(unint64_t)name8 numPageins:(unint64_t)name9 cpuTimeNs:(unint64_t)pid0 cpuInstructions:(unint64_t)pid1 cpuCycles:(unint64_t)pid2 nonThreadCpuTimeNs:(unint64_t)pid3 nonThreadCpuInstructions:(char)pid4 nonThreadCpuCycles:(char)pid5 usesSuddenTermination:(void *)pid6 allowsIdleExit:(void *)pid7 memoryLimitStr:(char)pid8 jetsamPriorityStr:(char)pid9 isTranslocated:(char)binary0 hardenedHeap:(char)binary1 mteCheckedAllocationsEnabled:(char)binary2 mteUserDataAllocationsTagged:(char)binary3 mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:;
- (void)avoidOverlapInBinaryLoadInfos:(int)infos onlyExclaves:(void *)exclaves inTask:;
- (void)copyDescriptionForTruncatedLeafFrame:(uint64_t)frame otherCallTreeDescription:(void *)description binariesToDisplay:(void *)display extraBinariesToDisplay:;
- (void)copyDescriptionsForFrame:(void *)frame binariesToDisplay:(void *)display extraBinariesToDisplay:;
- (void)filterToDisplayTimeIndexStart:(unint64_t)start end:(unint64_t)end;
- (void)filterToMachAbsTimeRangeStart:(unint64_t)start end:(unint64_t)end;
- (void)filterToTimestampRangeStart:(id)start end:(id)end;
- (void)filterToWallTimeRangeStart:(double)start end:(double)end;
- (void)iterateDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread threadStateIndexes:(char *)indexes startingAtIndex:(uint64_t)index endingAfterTimestamp:(void *)timestamp task:(char)task stopAtTimeJumps:(uint64_t)self0 callback:;
- (void)printBinaryImagesForTask:(uint64_t)task;
- (void)printHIDEvent:(uint64_t)event;
- (void)printHeader;
- (void)printLoadInfos:(id *)infos;
- (void)printMultipleTasks:(uint64_t)tasks;
- (void)printReport;
- (void)printSingleStackForTasks:(uint64_t)tasks limitToDispatchQueueIds:(uint64_t)ids limitToThreadIds:(char)threadIds intersection:(uint64_t)intersection sampleCount:;
- (void)printStack:(void *)stack stream:;
- (void)printTask:(uint64_t)task specialDispatchQueueId:(uint64_t)id specialThreadId:(uint64_t)threadId omitSpecial:(uint64_t)special omitOther:;
- (void)printToMutableData:(id)data;
- (void)printToStream:(__sFILE *)stream;
- (void)setOptions:(id)options;
- (void)sortHeavyCallTree:(uint64_t)tree;
- (void)updateIndexes;
@end

@implementation SASamplePrinter

- (void)updateIndexes
{
  v51 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v3 = (self + 32);
  v2 = *(self + 32);
  if (v2 && *(self + 40) && ([v2 le:?] & 1) == 0)
  {
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [*(self + 32) debugDescription];
      uTF8String = [v32 UTF8String];
      v34 = [*(self + 40) debugDescription];
      *buf = 136315394;
      *&buf[4] = uTF8String;
      *&buf[12] = 2080;
      *&buf[14] = [v34 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "reportStartTime %s > reportEndTime %s", buf, 0x16u);
    }

    *__error() = v30;
    v35 = [*(self + 32) debugDescription];
    v36 = v35;
    uTF8String2 = [v35 UTF8String];
    v38 = [*(self + 40) debugDescription];
    v39 = v38;
    _SASetCrashLogMessage(1631, "reportStartTime %s > reportEndTime %s", uTF8String2, [v38 UTF8String]);

    _os_crash();
    __break(1u);
  }

  if (*(self + 48) == 1)
  {
    startTime = [*(self + 168) startTime];
    endTime = [*(self + 168) endTime];
    v6 = *(self + 32);
    if (v6 && startTime && [v6 gt:startTime])
    {
      v7 = [*(self + 168) indexOfFirstSampleOnOrAfterTimestamp:*(self + 32)];
      *(self + 56) = v7;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_18:
        v15 = *(self + 40);
        if (v15 && endTime && [v15 lt:endTime])
        {
          v16 = [*(self + 168) indexOfLastSampleOnOrBeforeTimestamp:*(self + 40)];
          *(self + 64) = v16;
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_25:
            v21 = *(self + 56);
            if (v21 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = 0;
            }

            else
            {
              v22 = 0;
              v23 = *(self + 64);
              if (v23 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = v23 >= v21;
                v25 = v23 - v21;
                if (v24)
                {
                  v22 = v25 + 1;
                }
              }
            }

            *(self + 72) = v22;

            goto LABEL_32;
          }

          sampleTimestamps = [*(self + 168) sampleTimestamps];
          lastObject = [sampleTimestamps objectAtIndexedSubscript:*(self + 64)];
        }

        else
        {
          sampleTimestamps2 = [*(self + 168) sampleTimestamps];
          *(self + 64) = [sampleTimestamps2 count] - 1;

          sampleTimestamps = [*(self + 168) sampleTimestamps];
          lastObject = [sampleTimestamps lastObject];
        }

        v20 = *(self + 40);
        *(self + 40) = lastObject;

        goto LABEL_25;
      }

      sampleTimestamps3 = [*(self + 168) sampleTimestamps];
      firstObject = [sampleTimestamps3 objectAtIndexedSubscript:*(self + 56)];
    }

    else
    {
      *(self + 56) = 0;
      sampleTimestamps3 = [*(self + 168) sampleTimestamps];
      firstObject = [sampleTimestamps3 firstObject];
    }

    v14 = *v3;
    *v3 = firstObject;

    goto LABEL_18;
  }

  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  *(self + 56) = vnegq_f64(v10);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__4;
  v49 = __Block_byref_object_dispose__4;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__4;
  v45 = __Block_byref_object_dispose__4;
  v46 = 0;
  *(self + 72) = 0;
  v11 = *(self + 168);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __32__SASamplePrinter_updateIndexes__block_invoke;
  v40[3] = &unk_1E86F7438;
  v40[4] = self;
  v40[5] = buf;
  v40[6] = &v41;
  [v11 enumerateTasks:v40];
  v12 = *(*&buf[8] + 40);
  if (v12)
  {
    objc_storeStrong(v3, v12);
  }

  v13 = v42[5];
  if (v13)
  {
    objc_storeStrong((self + 40), v13);
  }

  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(buf, 8);
LABEL_32:
  if (*v3 && *(self + 40) && [*v3 le:?])
  {
    targetMainBinaryUUID = [*(self + 168) targetMainBinaryUUID];

    v27 = *(self + 168);
    if (targetMainBinaryUUID)
    {
      v28 = [SATimeRange timeRangeStart:*(self + 32) end:*(self + 40)];
      [(SASampleStore *)v27 findTargetProcessesInTimeRange:v28];
    }

    else
    {
      if ([*(self + 168) targetProcessId] == -1)
      {
        return;
      }

      v29 = *(self + 168);
      v28 = [SATimeRange timeRangeStart:*(self + 32) end:*(self + 40)];
      [(SASampleStore *)v29 findTargetProcessInTimeRange:v28];
    }
  }
}

- (void)printReport
{
  v486 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  context = objc_autoreleasePoolPush();
  if (!*(self + 8))
  {
    v395 = *__error();
    v371 = _sa_logt();
    if (os_log_type_enabled(v371, OS_LOG_TYPE_ERROR))
    {
      *v476 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v371, OS_LOG_TYPE_ERROR, "nil stream", v476, 2u);
    }

    *__error() = v395;
    _SASetCrashLogMessage(2101, "nil stream");
    _os_crash();
    __break(1u);
    goto LABEL_424;
  }

  if ([*(self + 168) isEmpty])
  {
    v3 = *(self + 8);
    v4 = @"No samples\n";
LABEL_11:
    [v3 appendString:v4];
    goto LABEL_12;
  }

  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    goto LABEL_12;
  }

  if (*(self + 48) == 1)
  {
    v5 = *(self + 56);
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v6 = *(self + 64);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || v5 > v6)
    {
      goto LABEL_10;
    }
  }

  else if (!*(self + 72))
  {
LABEL_10:
    v3 = *(self + 8);
    v4 = @"No samples for specified time interval\n";
    goto LABEL_11;
  }

  if (!*(self + 32))
  {
    v396 = *__error();
    v397 = _sa_logt();
    if (os_log_type_enabled(v397, OS_LOG_TYPE_ERROR))
    {
      *v476 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v397, OS_LOG_TYPE_ERROR, "nil reportStartTime", v476, 2u);
    }

    *__error() = v396;
    _SASetCrashLogMessage(2123, "nil reportStartTime");
    _os_crash();
    __break(1u);
    goto LABEL_428;
  }

  if (!*(self + 40))
  {
LABEL_428:
    v398 = *__error();
    v399 = _sa_logt();
    if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
    {
      *v476 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v399, OS_LOG_TYPE_ERROR, "nil reportEndTime", v476, 2u);
    }

    *__error() = v398;
    _SASetCrashLogMessage(2124, "nil reportEndTime");
    _os_crash();
    __break(1u);
    goto LABEL_431;
  }

  [*(self + 168) symbolicate];
  v7 = *(self + 168);
  v446[0] = MEMORY[0x1E69E9820];
  v446[1] = 3221225472;
  v446[2] = __29__SASamplePrinter_preprocess__block_invoke;
  v446[3] = &unk_1E86F5BD0;
  selfCopy = self;
  v446[4] = self;
  [v7 enumerateTasks:v446];
  exclaves = [*(self + 168) exclaves];
  v9 = exclaves == 0;

  if (!v9)
  {
    v10 = [(SASampleStore *)*(self + 168) lastTaskWithPid:?];
    if (v10)
    {
      v11 = [(SASamplePrinter *)self binaryImagesHitByTask:v10];
      *v440 = MEMORY[0x1E69E9820];
      v441 = 3221225472;
      v442 = __29__SASamplePrinter_preprocess__block_invoke_2;
      v443 = &unk_1E86F7688;
      selfCopy2 = self;
      v12 = v11;
      v445 = v12;
      [(SATask *)v10 enumerateFrames:v440];
      v457 = 0u;
      v458 = 0u;
      v455 = 0u;
      v456 = 0u;
      exclaves2 = [*(self + 168) exclaves];
      v14 = [exclaves2 countByEnumeratingWithState:&v455 objects:&v472 count:16];
      if (v14)
      {
        v15 = *v456;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v456 != v15)
            {
              objc_enumerationMutation(exclaves2);
            }

            v17 = *(*(&v455 + 1) + 8 * i);
            v438[0] = MEMORY[0x1E69E9820];
            v438[1] = 3221225472;
            v438[2] = __29__SASamplePrinter_preprocess__block_invoke_3;
            v438[3] = &unk_1E86F7688;
            v438[4] = selfCopy;
            v439 = v12;
            [(SAExclave *)v17 enumerateFrames:v438];
          }

          v14 = [exclaves2 countByEnumeratingWithState:&v455 objects:&v472 count:16];
        }

        while (v14);
      }

      v18 = [(SASamplePrinter *)selfCopy sortedLoadInfosForBinaryImages:v12];
      [(SASamplePrinter *)selfCopy avoidOverlapInBinaryLoadInfos:v18 onlyExclaves:1 inTask:v10];
    }

    else
    {
      v19 = *__error();
      v20 = _sa_logt();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *v476 = 0;
        _os_log_fault_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_FAULT, "no kernel task, though there are exclaves", v476, 2u);
      }

      *__error() = v19;
    }
  }

  cpuSignalHandlerStackLeafKernelFrame = [*(selfCopy + 168) cpuSignalHandlerStackLeafKernelFrame];
  v22 = cpuSignalHandlerStackLeafKernelFrame == 0;

  if (v22)
  {
    [*(selfCopy + 168) findCpuSignalHandlerStackLeafKernelFrame];
  }

  [*(selfCopy + 168) attemptedSamplingInterval];
  v23 = selfCopy;
  if (v24 != 0.0 && *(selfCopy + 48) == 1 && ([*(selfCopy + 168) sampleTimestamps], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count") > 1, v25, v23 = selfCopy, v26))
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = *(selfCopy + 104);
    *(selfCopy + 104) = v27;

    *(selfCopy + 96) = 0;
    v465 = 0u;
    v466 = 0u;
    v467 = 0u;
    v468 = 0u;
    sampleTimestamps = [*(selfCopy + 168) sampleTimestamps];
    v30 = [sampleTimestamps countByEnumeratingWithState:&v465 objects:v476 count:16];
    if (v30)
    {
      v31 = *v466;
      v32 = 0.0;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v466 != v31)
          {
            objc_enumerationMutation(sampleTimestamps);
          }

          v34 = *(*(&v465 + 1) + 8 * j);
          [v34 machAbsTimeSeconds];
          if (v32 > 0.0)
          {
            v36 = v35 - v32;
            v37 = *(selfCopy + 96);
            if (v37 > v36 || v37 == 0.0)
            {
              *(selfCopy + 96) = v36;
            }
          }

          [v34 machAbsTimeSeconds];
          v32 = v38;
        }

        v30 = [sampleTimestamps countByEnumeratingWithState:&v465 objects:v476 count:16];
      }

      while (v30);
    }

    v39 = *(selfCopy + 96);
    [*(selfCopy + 168) attemptedSamplingInterval];
    v40 = selfCopy;
    if (v39 < v41)
    {
      [*(selfCopy + 168) attemptedSamplingInterval];
      v40 = selfCopy;
      *(selfCopy + 96) = v42;
    }

    *&v460 = 0;
    *(&v460 + 1) = &v460;
    *&v461 = 0x3032000000;
    *(&v461 + 1) = __Block_byref_object_copy__4;
    *&v462 = __Block_byref_object_dispose__4;
    *(&v462 + 1) = 0;
    sampleTimestamps2 = [*(v40 + 168) sampleTimestamps];
    *&v451 = MEMORY[0x1E69E9820];
    *(&v451 + 1) = 3221225472;
    *&v452 = __37__SASamplePrinter_calculateTimeJumps__block_invoke;
    *(&v452 + 1) = &unk_1E86F73E8;
    *&v453 = v40;
    *(&v453 + 1) = &v460;
    [sampleTimestamps2 enumerateObjectsUsingBlock:&v451];

    _Block_object_dispose(&v460, 8);
  }

  else
  {
    v44 = *(v23 + 104);
    *(v23 + 104) = 0;
  }

  v45 = *(selfCopy + 136);
  location = (selfCopy + 136);
  *(selfCopy + 136) = 0;

  v46 = *(selfCopy + 144);
  *(selfCopy + 144) = 0;

  if ([*(selfCopy + 168) targetHIDEventMachAbs])
  {
    v453 = 0u;
    v454 = 0u;
    v451 = 0u;
    v452 = 0u;
    obj = [*(selfCopy + 168) hidEvents];
    v47 = [obj countByEnumeratingWithState:&v451 objects:v476 count:16];
    if (v47)
    {
      v48 = *v452;
      while (2)
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v452 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v451 + 1) + 8 * k);
          hidEventTimestamp = [v50 hidEventTimestamp];
          machAbsTime = [hidEventTimestamp machAbsTime];
          if (machAbsTime == [*(selfCopy + 168) targetHIDEventMachAbs])
          {
            if ([*(selfCopy + 168) targetProcessId] == -1)
            {

LABEL_66:
              objc_storeStrong((selfCopy + 120), v50);
              v57 = *(selfCopy + 168);
              if (v57 && (*(v57 + 404) & 1) != 0)
              {
                v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v59 = *(selfCopy + 128);
                *(selfCopy + 128) = v58;

                v406 = objc_alloc_init(MEMORY[0x1E695DF90]);
                hidEventTimestamp2 = [v50 hidEventTimestamp];
                v61 = [*(selfCopy + 168) indexOfLastSampleOnOrBeforeTimestamp:hidEventTimestamp2];
                v470 = 0u;
                v471 = 0u;
                memset(v469, 0, sizeof(v469));
                steps = [*(selfCopy + 120) steps];
                v413 = [steps countByEnumeratingWithState:v469 objects:&v465 count:16];
                if (v413)
                {
                  v405 = 0;
                  v411 = **&v469[16];
                  do
                  {
                    v62 = 0;
                    v431 = hidEventTimestamp2;
                    do
                    {
                      if (**&v469[16] != v411)
                      {
                        v63 = v62;
                        objc_enumerationMutation(steps);
                        v62 = v63;
                      }

                      v418 = v62;
                      v64 = *(*&v469[8] + 8 * v62);
                      v65 = *(selfCopy + 168);
                      timestamp = [v64 timestamp];
                      v421 = [v65 indexOfLastSampleOnOrBeforeTimestamp:timestamp];

                      if (v421 != 0x7FFFFFFFFFFFFFFFLL && (v61 == 0x7FFFFFFFFFFFFFFFLL || v61 < v421))
                      {
                        v67 = *(selfCopy + 168);
                        v68 = [v64 pid];
                        v69 = [v64 tid];
                        timestamp2 = [v64 timestamp];
                        v415 = [(SASampleStore *)v67 taskWithPid:v68 orTid:v69 atTimestamp:timestamp2];

                        if (v415)
                        {
                          if (v61 == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            v71 = 0;
                          }

                          else
                          {
                            v71 = v61 + 1;
                          }

                          v407 = v71;
                          if ([v64 tid])
                          {
                            threads = [v415 threads];
                            v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v64, "tid")}];
                            mainThread = [threads objectForKeyedSubscript:v73];

                            if (!mainThread)
                            {
                              v74 = *__error();
                              v75 = _sa_logt();
                              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                              {
                                v105 = [v64 tid];
                                v106 = [v415 debugDescription];
                                *buf = 134218242;
                                *&buf[4] = v105;
                                *&buf[12] = 2112;
                                *&buf[14] = v106;
                                _os_log_error_impl(&dword_1E0E2F000, v75, OS_LOG_TYPE_ERROR, "No thread %llu in %@ for hid event", buf, 0x16u);
                              }

                              mainThread = 0;
                              *__error() = v74;
                            }
                          }

                          else
                          {
                            mainThread = [v415 mainThread];
                            if (!mainThread)
                            {
                              v449 = 0u;
                              v450 = 0u;
                              v447 = 0u;
                              v448 = 0u;
                              threads2 = [v415 threads];
                              v81 = [threads2 countByEnumeratingWithState:&v447 objects:&v460 count:16];
                              if (v81)
                              {
                                mainThread = 0;
                                v82 = 0;
                                v83 = *v448;
                                do
                                {
                                  for (m = 0; m != v81; ++m)
                                  {
                                    if (*v448 != v83)
                                    {
                                      objc_enumerationMutation(threads2);
                                    }

                                    v85 = *(*(&v447 + 1) + 8 * m);
                                    v86 = [v85 firstThreadStateOnOrAfterTime:v431 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
                                    timestamp3 = [v64 timestamp];
                                    v88 = [v85 lastThreadStateOnOrBeforeTime:timestamp3 sampleIndex:0x7FFFFFFFFFFFFFFFLL];

                                    if (v88)
                                    {
                                      v89 = v86 == 0;
                                    }

                                    else
                                    {
                                      v89 = 1;
                                    }

                                    if (!v89)
                                    {
                                      cpuTimeNs = [v88 cpuTimeNs];
                                      if (cpuTimeNs > [v86 cpuTimeNs])
                                      {
                                        cpuTimeNs2 = [v88 cpuTimeNs];
                                        if (v82 < cpuTimeNs2 - [v86 cpuTimeNs])
                                        {
                                          cpuTimeNs3 = [v88 cpuTimeNs];
                                          cpuTimeNs4 = [v86 cpuTimeNs];
                                          v94 = v85;

                                          v82 = cpuTimeNs3 - cpuTimeNs4;
                                          mainThread = v94;
                                        }
                                      }
                                    }
                                  }

                                  v81 = [threads2 countByEnumeratingWithState:&v447 objects:&v460 count:16];
                                }

                                while (v81);
                              }

                              else
                              {
                                mainThread = 0;
                              }
                            }
                          }

                          v95 = [SAHIDStepSample alloc];
                          v96 = [v64 tid];
                          timestamp4 = [v64 timestamp];
                          if (v95)
                          {
                            *buf = v95;
                            *&buf[8] = SAHIDStepSample;
                            v98 = objc_msgSendSuper2(buf, sel_init);
                            v95 = v98;
                            if (v98)
                            {
                              objc_storeStrong(&v98->_task, v415);
                              v95->_threadId = v96;
                              objc_storeStrong(&v95->_startTimestamp, v431);
                              objc_storeStrong(&v95->_endTimestamp, timestamp4);
                              v95->_startSampleIndex = v407;
                              v95->_endSampleIndex = v421;
                            }
                          }

                          [*(selfCopy + 128) addObject:v95];
                          v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v64, "tid")}];
                          v100 = [v406 objectForKeyedSubscript:v99];
                          unsignedLongValue = [v100 unsignedLongValue];

                          v102 = v421 - v407 + unsignedLongValue + 1;
                          v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v102];
                          v104 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v64, "tid")}];
                          [v406 setObject:v103 forKeyedSubscript:v104];

                          if (v102 > v405)
                          {
                            objc_storeStrong(location, v415);
                            objc_storeStrong((selfCopy + 144), mainThread);
                            v405 = v102;
                          }
                        }

                        else
                        {
                          v76 = *__error();
                          v77 = _sa_logt();
                          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                          {
                            v78 = [v64 pid];
                            v79 = [v64 tid];
                            *buf = 67109376;
                            *&buf[4] = v78;
                            *&buf[8] = 2048;
                            *&buf[10] = v79;
                            _os_log_impl(&dword_1E0E2F000, v77, OS_LOG_TYPE_INFO, "No process [%d] with thread %llu for hid event", buf, 0x12u);
                          }

                          *__error() = v76;
                        }

                        v61 = v421;
                      }

                      hidEventTimestamp2 = [v64 timestamp];

                      v62 = v418 + 1;
                      v431 = hidEventTimestamp2;
                    }

                    while (v418 + 1 != v413);
                    v413 = [steps countByEnumeratingWithState:v469 objects:&v465 count:16];
                  }

                  while (v413);
                }
              }

              goto LABEL_116;
            }

            steps2 = [v50 steps];
            lastObject = [steps2 lastObject];
            v55 = [lastObject pid];
            v56 = v55 == [*(selfCopy + 168) targetProcessId];

            if (v56)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }
        }

        v47 = [obj countByEnumeratingWithState:&v451 objects:v476 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

LABEL_116:
  }

  timestampOfLastStackshot = [*(selfCopy + 168) timestampOfLastStackshot];
  uTF8String = selfCopy;
  if (timestampOfLastStackshot || *(selfCopy + 48) == 1 && ([*(selfCopy + 168) sampleTimestamps], v111 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v111, "lastObject"), timestampOfLastStackshot = objc_claimAutoreleasedReturnValue(), v111, uTF8String = selfCopy, timestampOfLastStackshot))
  {
    v109 = [SADependencyGraphNode dependencyGraphForThreadsInSampleStore:uTF8String[21] atTimestamp:timestampOfLastStackshot];
    v110 = *(selfCopy + 152);
    *(selfCopy + 152) = v109;

    uTF8String = selfCopy;
  }

  if ([uTF8String[2] printJson])
  {
    [uTF8String[1] appendString:@"{"];
  }

  if ([uTF8String[2] displayHeader])
  {
    [SASamplePrinter printHeader];
  }

  if (![uTF8String[2] displayBody])
  {
    goto LABEL_278;
  }

  if ([uTF8String[2] systemstatsFormat])
  {
    options = [uTF8String options];
    printJson = [options printJson];

    if (!printJson)
    {
      [*(selfCopy + 8) appendString:@"\nBinary Images:\n"];
      v114 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:512];
      *&v451 = MEMORY[0x1E69E9820];
      *(&v451 + 1) = 3221225472;
      *&v452 = __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke;
      *(&v452 + 1) = &unk_1E86F7A88;
      v115 = v114;
      *&v453 = v115;
      v116 = MEMORY[0x1E12EBE50](&v451);
      v117 = *(selfCopy + 168);
      *&v455 = MEMORY[0x1E69E9820];
      *(&v455 + 1) = 3221225472;
      *&v456 = __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_2;
      *(&v456 + 1) = &unk_1E86F7AD8;
      v408 = v116;
      *(&v457 + 1) = v408;
      v419 = v115;
      *&v457 = v419;
      [v117 enumerateTasks:&v455];
      allKeys = [v419 allKeys];
      v119 = [allKeys sortedArrayUsingComparator:&__block_literal_global_1971];

      v467 = 0u;
      v468 = 0u;
      v465 = 0u;
      v466 = 0u;
      v410 = v119;
      v414 = [v410 countByEnumeratingWithState:&v465 objects:v476 count:16];
      if (v414)
      {
        v120 = 0;
        v412 = *v466;
        do
        {
          v121 = 0;
          do
          {
            if (*v466 != v412)
            {
              v122 = v121;
              objc_enumerationMutation(v410);
              v121 = v122;
            }

            v416 = v121;
            v123 = *(*(&v465 + 1) + 8 * v121);
            v124 = [v419 objectForKeyedSubscript:v123];
            [v124 sortUsingComparator:&__block_literal_global_1974];
            v462 = 0u;
            v463 = 0u;
            v460 = 0u;
            v461 = 0u;
            v432 = v124;
            v425 = [v432 countByEnumeratingWithState:&v460 objects:&v472 count:16];
            if (v425)
            {
              v422 = *v461;
              while (2)
              {
                for (n = 0; n != v425; n = n + 1)
                {
                  if (*v461 != v422)
                  {
                    objc_enumerationMutation(v432);
                  }

                  v126 = *(*(&v460 + 1) + 8 * n);
                  binary = [v126 binary];
                  v128 = binary == v123;

                  if (!v128)
                  {
                    v167 = *__error();
                    v168 = _sa_logt();
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                    {
                      v169 = [v126 debugDescription];
                      v170 = v169;
                      uTF8String = [v169 UTF8String];
                      v171 = [v123 debugDescription];
                      v172 = v171;
                      uTF8String2 = [v171 UTF8String];
                      *v469 = 136315394;
                      *&v469[4] = uTF8String;
                      *&v469[12] = 2080;
                      *&v469[14] = uTF8String2;
                      _os_log_error_impl(&dword_1E0E2F000, v168, OS_LOG_TYPE_ERROR, "load info %s not using binary %s", v469, 0x16u);
                    }

                    *__error() = v167;
                    v174 = [v126 debugDescription];
                    v175 = v174;
                    uTF8String3 = [v174 UTF8String];
                    v177 = [v123 debugDescription];
                    v178 = v177;
                    _SASetCrashLogMessage(9107, "load info %s not using binary %s", uTF8String3, [v177 UTF8String]);

                    _os_crash();
                    __break(1u);
                    goto LABEL_193;
                  }

                  segment = [v126 segment];
                  isInKernelAddressSpace = [v126 isInKernelAddressSpace];
                  name = [segment name];
                  v132 = *(selfCopy + 88);
                  if (!v132)
                  {
                    v133 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:512];
                    v134 = *(selfCopy + 88);
                    *(selfCopy + 88) = v133;

                    v132 = *(selfCopy + 88);
                  }

                  v135 = [v132 objectForKeyedSubscript:v123];
                  if (!v135)
                  {
                    v135 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
                    [*(selfCopy + 88) setObject:v135 forKeyedSubscript:v123];
                  }

                  v136 = [MEMORY[0x1E696AD98] numberWithLong:v120];
                  if (name)
                  {
                    [v135 setObject:v136 forKeyedSubscript:name];
                  }

                  else
                  {
                    null = [MEMORY[0x1E695DFB0] null];
                    [v135 setObject:v136 forKeyedSubscript:null];
                  }

                  [*(selfCopy + 8) printWithFormat:@"%lu", v120];
                  v138 = *(selfCopy + 8);
                  if (isInKernelAddressSpace)
                  {
                    v139 = "*";
                  }

                  else
                  {
                    v139 = "";
                  }

                  bundleIdentifier = [v123 bundleIdentifier];
                  if (bundleIdentifier)
                  {
                    bundleIdentifier2 = [v123 bundleIdentifier];
                    v142 = SACopySanitizedString(bundleIdentifier2, 1, 0);
                    [v138 printWithFormat:@"\t%s%@", v139, v142];
                  }

                  else
                  {
                    [v138 printWithFormat:@"\t%s%@", v139, &stru_1F5BBF440];
                  }

                  [*(selfCopy + 8) appendString:@"\t"];
                  bundleVersion = [v123 bundleVersion];
                  bundleShortVersion = [v123 bundleShortVersion];
                  binaryVersion = [v123 binaryVersion];
                  v146 = binaryVersion;
                  if (bundleShortVersion || bundleVersion || binaryVersion)
                  {
                    if (bundleShortVersion)
                    {
                      v147 = *(selfCopy + 8);
                      v148 = SACopySanitizedString(bundleShortVersion, 1, 0);
                      [v147 appendString:v148];
                    }

                    if (bundleVersion | v146)
                    {
                      if (bundleVersion)
                      {
                        v149 = bundleVersion;
                      }

                      else
                      {
                        v149 = v146;
                      }

                      v150 = *(selfCopy + 8);
                      v151 = SACopySanitizedString(v149, 1, 0);
                      [v150 printWithFormat:@" (%@)", v151];
                    }
                  }

                  v152 = *(selfCopy + 8);
                  uuid = [v123 uuid];
                  uUIDString = [uuid UUIDString];
                  v155 = uUIDString;
                  v156 = &stru_1F5BBF440;
                  if (uUIDString)
                  {
                    v156 = uUIDString;
                  }

                  [v152 printWithFormat:@"\t<%@>", v156];

                  if (segment && [v432 count] == 1 && objc_msgSend(segment, "hasOffsetIntoBinary") && !objc_msgSend(segment, "offsetIntoBinary"))
                  {

                    segment = 0;
                  }

                  v157 = *(selfCopy + 8);
                  name2 = [segment name];
                  v159 = name2;
                  v160 = &stru_1F5BBF440;
                  if (name2)
                  {
                    v160 = name2;
                  }

                  [v157 printWithFormat:@"\t%@", v160];

                  [*(selfCopy + 8) appendString:@"\t"];
                  uTF8String = [v123 path];
                  if (uTF8String)
                  {
                    if ([*(selfCopy + 168) sanitizePaths])
                    {
                    }

                    v161 = *(selfCopy + 8);
                    v162 = SACopySanitizedString(uTF8String, 1, 0);
                    [v161 appendString:v162];
                  }

                  [*(selfCopy + 8) appendString:@"\n"];

                  ++v120;
                }

                v425 = [v432 countByEnumeratingWithState:&v460 objects:&v472 count:16];
                if (v425)
                {
                  continue;
                }

                break;
              }
            }

            v121 = v416 + 1;
          }

          while (v416 + 1 != v414);
          v414 = [v410 countByEnumeratingWithState:&v465 objects:v476 count:16];
        }

        while (v414);
      }

      uTF8String = selfCopy;
      goto LABEL_180;
    }

LABEL_431:
    v400 = *__error();
    v401 = _sa_logt();
    if (os_log_type_enabled(v401, OS_LOG_TYPE_ERROR))
    {
      *v476 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v401, OS_LOG_TYPE_ERROR, "printSystemStatsStyleBinaryImages doesn't support json output", v476, 2u);
    }

    *__error() = v400;
    _SASetCrashLogMessage(9014, "printSystemStatsStyleBinaryImages doesn't support json output");
    _os_crash();
    __break(1u);
  }

LABEL_180:
  if ([uTF8String[2] printJson])
  {
    [uTF8String[1] appendString:{@", tasks:["}];
  }

  v163 = uTF8String[2];
  if (!v163 || (v164 = v163[21], v164 == 1) || !v164 && *(v163 + 11) != 1)
  {
    if (*location)
    {
      targetProcess = *location;
    }

    else
    {
LABEL_193:
      targetProcess = [uTF8String[21] targetProcess];
      uTF8String = selfCopy;
    }

    v179 = [MEMORY[0x1E695E0F0] mutableCopy];
    v180 = uTF8String[21];
    *&v455 = MEMORY[0x1E69E9820];
    *(&v455 + 1) = 3221225472;
    *&v456 = __41__SASamplePrinter_printTasksIndividually__block_invoke;
    *(&v456 + 1) = &unk_1E86F5418;
    v181 = targetProcess;
    *&v457 = v181;
    *(&v457 + 1) = uTF8String;
    v182 = v179;
    *&v458 = v182;
    [v180 enumerateTasks:&v455];
    processSortAttributes = [*(selfCopy + 16) processSortAttributes];
    *v469 = MEMORY[0x1E69E9820];
    *&v469[8] = 3221225472;
    *&v469[16] = __41__SASamplePrinter_printTasksIndividually__block_invoke_2;
    *&v469[24] = &unk_1E86F77F0;
    *&v470 = selfCopy;
    v184 = processSortAttributes;
    *(&v470 + 1) = v184;
    [v182 sortUsingComparator:v469];
    *&v447 = 0;
    *(&v447 + 1) = &v447;
    *&v448 = 0x2020000000;
    BYTE8(v448) = 1;
    *&v451 = MEMORY[0x1E69E9820];
    *(&v451 + 1) = 3221225472;
    *&v452 = __41__SASamplePrinter_printTasksIndividually__block_invoke_1480;
    *(&v452 + 1) = &unk_1E86F7818;
    *&v453 = selfCopy;
    *&v454 = &v447;
    v185 = v181;
    *(&v453 + 1) = v185;
    v186 = MEMORY[0x1E12EBE50](&v451);
    v187 = v186;
    if (v185)
    {
      (*(v186 + 16))(v186, v185);
    }

    v467 = 0u;
    v468 = 0u;
    v465 = 0u;
    v466 = 0u;
    targetProcesses = [*(selfCopy + 168) targetProcesses];
    v189 = [targetProcesses countByEnumeratingWithState:&v465 objects:v476 count:16];
    if (v189)
    {
      v190 = *v466;
      do
      {
        for (ii = 0; ii != v189; ++ii)
        {
          if (*v466 != v190)
          {
            objc_enumerationMutation(targetProcesses);
          }

          v187[2](v187, *(*(&v465 + 1) + 8 * ii));
        }

        v189 = [targetProcesses countByEnumeratingWithState:&v465 objects:v476 count:16];
      }

      while (v189);
    }

    v462 = 0u;
    v463 = 0u;
    v460 = 0u;
    v461 = 0u;
    v192 = v182;
    v193 = [v192 countByEnumeratingWithState:&v460 objects:&v472 count:16];
    if (v193)
    {
      v194 = *v461;
      do
      {
        for (jj = 0; jj != v193; ++jj)
        {
          if (*v461 != v194)
          {
            objc_enumerationMutation(v192);
          }

          v187[2](v187, *(*(&v460 + 1) + 8 * jj));
        }

        v193 = [v192 countByEnumeratingWithState:&v460 objects:&v472 count:16];
      }

      while (v193);
    }

    _Block_object_dispose(&v447, 8);
    goto LABEL_276;
  }

  if (*location)
  {
    targetProcess2 = *location;
  }

  else
  {
    targetProcess2 = [uTF8String[21] targetProcess];
    uTF8String = selfCopy;
  }

  v197 = uTF8String[21];
  v196 = uTF8String + 21;
  targetProcesses2 = [v197 targetProcesses];
  v199 = [*(selfCopy + 16) taskAggregation] == 3;
  v200 = objc_alloc(MEMORY[0x1E695DF90]);
  tasksByUniquePid = [*v196 tasksByUniquePid];
  v202 = [v200 initWithCapacity:{objc_msgSend(tasksByUniquePid, "count")}];

  v203 = *v196;
  *&v460 = MEMORY[0x1E69E9820];
  *(&v460 + 1) = 3221225472;
  *&v461 = __44__SASamplePrinter_printTasksWithAggregation__block_invoke;
  *(&v461 + 1) = &unk_1E86F7840;
  v433 = targetProcess2;
  *&v462 = v433;
  v426 = targetProcesses2;
  *(&v462 + 1) = v426;
  *&v463 = selfCopy;
  v464 = v199;
  v423 = v202;
  *(&v463 + 1) = v423;
  [v203 enumerateTasks:&v460];
  processSortAttributes2 = [*(selfCopy + 16) processSortAttributes];
  allValues = [v423 allValues];
  *&v447 = MEMORY[0x1E69E9820];
  *(&v447 + 1) = 3221225472;
  *&v448 = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_1486;
  *(&v448 + 1) = &unk_1E86F7868;
  *&v449 = selfCopy;
  v417 = processSortAttributes2;
  *(&v449 + 1) = v417;
  v420 = [allValues sortedArrayUsingComparator:&v447];

  if (!v433)
  {
    goto LABEL_224;
  }

  printJson2 = [*(selfCopy + 16) printJson];
  if (printJson2)
  {
    [*(selfCopy + 8) appendString:@"\n\n\n{"];
  }

  targetDispatchQueueId = [*(selfCopy + 168) targetDispatchQueueId];
  targetThreadId = [*(selfCopy + 168) targetThreadId];
  printTargetThreadOnly = [*(selfCopy + 16) printTargetThreadOnly];
  if (targetDispatchQueueId)
  {
    v210 = 0;
  }

  else
  {
    v210 = printTargetThreadOnly;
  }

  if (v210 != 1 || targetThreadId)
  {
    if (!(targetDispatchQueueId | targetThreadId))
    {
      [(SASamplePrinter *)selfCopy printTask:v433 specialDispatchQueueId:0 specialThreadId:0 omitSpecial:0 omitOther:0];
      goto LABEL_232;
    }

LABEL_226:
    [(SASamplePrinter *)selfCopy printTask:v433 specialDispatchQueueId:targetDispatchQueueId specialThreadId:targetThreadId omitSpecial:0 omitOther:1];
    printTargetThreadOnly2 = [*(selfCopy + 16) printTargetThreadOnly];
    v221 = selfCopy;
    if (printTargetThreadOnly2)
    {
      v222 = *(selfCopy + 168);
      if (!v222 || (*(v222 + 404) & 1) == 0 || !*(selfCopy + 120))
      {
LABEL_233:
        v219 = printJson2 ^ 1;
        if ([*(v221 + 16) printJson])
        {
          [*(selfCopy + 8) appendString:@"}"];
        }

        goto LABEL_235;
      }
    }

    [(SASamplePrinter *)selfCopy printTask:v433 specialDispatchQueueId:targetDispatchQueueId specialThreadId:targetThreadId omitSpecial:1 omitOther:0];
LABEL_232:
    v221 = selfCopy;
    goto LABEL_233;
  }

  mainThread2 = [v433 mainThread];
  targetThreadId = [mainThread2 threadId];

  if (targetThreadId)
  {
    goto LABEL_226;
  }

  v212 = *__error();
  v213 = _sa_logt();
  if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
  {
    v214 = [v433 debugDescription];
    v215 = v214;
    uTF8String4 = [v214 UTF8String];
    *v476 = 136315138;
    v477 = uTF8String4;
    _os_log_error_impl(&dword_1E0E2F000, v213, OS_LOG_TYPE_ERROR, "no target dispatch queue nor thread id, target task %s, but no main thread", v476, 0xCu);
  }

  *__error() = v212;
  v217 = [v433 debugDescription];
  v218 = v217;
  _SASetCrashLogMessage(6452, "no target dispatch queue nor thread id, target task %s, but no main thread", [v217 UTF8String]);

  _os_crash();
  __break(1u);
LABEL_224:
  v219 = 1;
LABEL_235:
  if (v426)
  {
    if ([*(selfCopy + 16) printJson])
    {
      v223 = selfCopy;
      if ((v219 & 1) == 0)
      {
        [*(selfCopy + 8) appendString:{@", "}];
        v223 = selfCopy;
      }

      [*(v223 + 8) appendString:@"\n\n\n{"];
      v219 = 0;
    }

    v224 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v457 = 0u;
    v458 = 0u;
    v455 = 0u;
    v456 = 0u;
    v225 = v426;
    v226 = [v225 countByEnumeratingWithState:&v455 objects:v476 count:16];
    if (v226)
    {
      v227 = *v456;
      do
      {
        for (kk = 0; kk != v226; ++kk)
        {
          if (*v456 != v227)
          {
            objc_enumerationMutation(v225);
          }

          v229 = *(*(&v455 + 1) + 8 * kk);
          mainBinary = [v229 mainBinary];
          uuid2 = [mainBinary uuid];
          v232 = uuid2;
          if (uuid2)
          {
            null2 = uuid2;
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
          }

          v234 = null2;

          v235 = [v224 objectForKeyedSubscript:v234];
          if (!v235)
          {
            v235 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v224 setObject:v235 forKeyedSubscript:v234];
          }

          [v235 addObject:v229];
        }

        v226 = [v225 countByEnumeratingWithState:&v455 objects:v476 count:16];
      }

      while (v226);
    }

    allValues2 = [v224 allValues];
    v237 = [allValues2 sortedArrayUsingComparator:&__block_literal_global_1492];

    v453 = 0u;
    v454 = 0u;
    v451 = 0u;
    v452 = 0u;
    v238 = v237;
    v239 = [v238 countByEnumeratingWithState:&v451 objects:&v472 count:16];
    if (v239)
    {
      v240 = *v452;
      do
      {
        for (mm = 0; mm != v239; ++mm)
        {
          if (*v452 != v240)
          {
            objc_enumerationMutation(v238);
          }

          [(SASamplePrinter *)selfCopy printMultipleTasks:?];
        }

        v239 = [v238 countByEnumeratingWithState:&v451 objects:&v472 count:16];
      }

      while (v239);
    }

    if ([*(selfCopy + 16) printJson])
    {
      [*(selfCopy + 8) appendString:@"}"];
    }
  }

  v470 = 0u;
  v471 = 0u;
  memset(v469, 0, sizeof(v469));
  v242 = v420;
  v243 = [v242 countByEnumeratingWithState:v469 objects:&v465 count:16];
  if (v243)
  {
    v244 = **&v469[16];
    do
    {
      for (nn = 0; nn != v243; ++nn)
      {
        if (**&v469[16] != v244)
        {
          objc_enumerationMutation(v242);
        }

        v246 = *(*&v469[8] + 8 * nn);
        if ([*(selfCopy + 16) printJson])
        {
          if ((v219 & 1) == 0)
          {
            [*(selfCopy + 8) appendString:{@", "}];
          }

          [*(selfCopy + 8) appendString:@"\n\n\n{"];
          v219 = 0;
        }

        [(SASamplePrinter *)selfCopy printMultipleTasks:v246];
        if ([*(selfCopy + 16) printJson])
        {
          [*(selfCopy + 8) appendString:@"}"];
        }
      }

      v243 = [v242 countByEnumeratingWithState:v469 objects:&v465 count:16];
    }

    while (v243);
  }

LABEL_276:
  uTF8String = selfCopy;
  if ([*(selfCopy + 16) printJson])
  {
    [*(selfCopy + 8) appendString:@"]"];
  }

LABEL_278:
  if (![uTF8String[2] displayFooter])
  {
    goto LABEL_405;
  }

  if ([uTF8String[2] printJson])
  {
    [uTF8String[1] appendString:{@", \n\nsharedcaches:["}];
    v472 = 0u;
    v473 = 0u;
    v474 = 0u;
    v475 = 0u;
    sharedCaches = [uTF8String[21] sharedCaches];
    v248 = [sharedCaches countByEnumeratingWithState:&v472 objects:v476 count:16];
    if (v248)
    {
      v249 = 1;
      v250 = *v473;
      do
      {
        for (i1 = 0; i1 != v248; ++i1)
        {
          if (*v473 != v250)
          {
            objc_enumerationMutation(sharedCaches);
          }

          v252 = *(*(&v472 + 1) + 8 * i1);
          null3 = [MEMORY[0x1E695DFB0] null];
          v254 = null3;
          if (v252 == null3)
          {
          }

          else
          {
            binaryLoadInfos = [v252 binaryLoadInfos];
            v256 = [binaryLoadInfos count] == 0;

            if (!v256)
            {
              if ((v249 & 1) == 0)
              {
                [*(selfCopy + 8) appendString:{@", \n\n"}];
              }

              [*(selfCopy + 8) appendString:@"{"];
              v257 = *(selfCopy + 8);
              uuid3 = [v252 uuid];
              uUIDString2 = [uuid3 UUIDString];
              SAJSONWriteDictionaryFirstEntry(v257, @"uuid", uUIDString2);

              v260 = *(selfCopy + 8);
              v261 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v252, "slide")}];
              SAJSONWriteDictionaryEntry(v260, @"slide", v261);

              v262 = *(selfCopy + 8);
              v263 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v252, "slidBaseAddress")}];
              SAJSONWriteDictionaryEntry(v262, @"slidBaseAddress", v263);

              v264 = *(selfCopy + 8);
              binaryLoadInfos2 = [v252 binaryLoadInfos];
              SAJSONWriteDictionaryEntry(v264, @"binaryLoadInfos", binaryLoadInfos2);

              [*(selfCopy + 8) appendString:@"}"];
              v249 = 0;
            }
          }
        }

        v248 = [sharedCaches countByEnumeratingWithState:&v472 objects:v476 count:16];
      }

      while (v248);
    }

    [*(selfCopy + 8) appendString:@"]\n\n"];
LABEL_404:
    uTF8String = selfCopy;
    goto LABEL_405;
  }

  kextStat = [uTF8String[21] kextStat];

  if (kextStat)
  {
    v267 = *(selfCopy + 8);
    kextStat2 = [*(selfCopy + 168) kextStat];
    [v267 printWithFormat:@"\n\nKextstat:\n%@", kextStat2];
  }

  v269 = selfCopy;
  if ([*(selfCopy + 16) displayAllBinaries])
  {
    v453 = 0u;
    v454 = 0u;
    v451 = 0u;
    v452 = 0u;
    sharedCaches2 = [*(selfCopy + 168) sharedCaches];
    v271 = [sharedCaches2 countByEnumeratingWithState:&v451 objects:&v472 count:16];
    if (!v271)
    {
      goto LABEL_308;
    }

    v272 = *v452;
    while (1)
    {
      for (i2 = 0; i2 != v271; ++i2)
      {
        if (*v452 != v272)
        {
          objc_enumerationMutation(sharedCaches2);
        }

        v274 = *(*(&v451 + 1) + 8 * i2);
        null4 = [MEMORY[0x1E695DFB0] null];
        if (v274 != null4)
        {
          binaryLoadInfos3 = [v274 binaryLoadInfos];
          v277 = [binaryLoadInfos3 count] == 0;

          if (v277)
          {
            continue;
          }

          v278 = *(selfCopy + 8);
          v279 = _shared_cache_display_string(v274);
          [v278 printWithFormat:@"\n\nShared Cache %@:\n", v279];

          null4 = [v274 binaryLoadInfos];
          [(SASamplePrinter *)selfCopy printLoadInfos:null4];
        }
      }

      v271 = [sharedCaches2 countByEnumeratingWithState:&v451 objects:&v472 count:16];
      if (!v271)
      {
LABEL_308:

        v269 = selfCopy;
        break;
      }
    }
  }

  if ([*(v269 + 16) displayTrialInformation])
  {
    activeTrials = [*(selfCopy + 168) activeTrials];
    v281 = activeTrials == 0;

    if (!v281)
    {
      printJson3 = [*(selfCopy + 16) printJson];
      v283 = *(selfCopy + 8);
      if (printJson3)
      {
        activeTrials2 = [*(selfCopy + 168) activeTrials];
        SAJSONWriteDictionaryEntry(v283, @"activeTrials", activeTrials2);
      }

      else
      {
        [*(selfCopy + 8) appendString:@"\n\n"];
        v470 = 0u;
        v471 = 0u;
        memset(v469, 0, sizeof(v469));
        activeTrials3 = [*(selfCopy + 168) activeTrials];
        v428 = [activeTrials3 objectForKeyedSubscript:0x1F5BC2440];

        v285 = [v428 countByEnumeratingWithState:v469 objects:&v465 count:16];
        if (v285)
        {
          v434 = **&v469[16];
          do
          {
            for (i3 = 0; i3 != v285; ++i3)
            {
              if (**&v469[16] != v434)
              {
                objc_enumerationMutation(v428);
              }

              v287 = *(*&v469[8] + 8 * i3);
              v288 = objc_opt_class();
              v289 = objc_opt_class();
              v290 = DictGetDictOfClasses(v287, 0x1F5BC24C0, v288, v289);
              v291 = v290;
              if (v290)
              {
                allKeys2 = [v290 allKeys];
                v293 = [allKeys2 sortedArrayUsingComparator:&__block_literal_global_11];
                v294 = [v293 componentsJoinedByString:{@", "}];
              }

              else
              {
                v294 = 0;
              }

              v295 = DictGetString(v287, 0x1F5BC2480);
              v296 = DictGetString(v287, 0x1F5BC24E0);
              v297 = @"unknown";
              if (v294)
              {
                v297 = v294;
              }

              [*(selfCopy + 8) printWithFormat:@"%-*s%@ (treatment:%@ namespaces:%@)\n", 18, "Trial Experiment: ", v295, v296, v297];
            }

            v285 = [v428 countByEnumeratingWithState:v469 objects:&v465 count:16];
          }

          while (v285);
        }

        v449 = 0u;
        v450 = 0u;
        v447 = 0u;
        v448 = 0u;
        activeTrials4 = [*(selfCopy + 168) activeTrials];
        v429 = [activeTrials4 objectForKeyedSubscript:0x1F5BC2460];

        v299 = [v429 countByEnumeratingWithState:&v447 objects:&v460 count:16];
        if (v299)
        {
          v435 = *v448;
          do
          {
            for (i4 = 0; i4 != v299; ++i4)
            {
              if (*v448 != v435)
              {
                objc_enumerationMutation(v429);
              }

              v301 = *(*(&v447 + 1) + 8 * i4);
              v302 = objc_opt_class();
              v303 = objc_opt_class();
              v304 = DictGetDictOfClasses(v301, 0x1F5BC2540, v302, v303);
              v305 = v304;
              if (v304)
              {
                allKeys3 = [v304 allKeys];
                v307 = [allKeys3 sortedArrayUsingComparator:&__block_literal_global_11];
                v308 = [v307 componentsJoinedByString:{@", "}];
              }

              else
              {
                v308 = 0;
              }

              v309 = DictGetString(v301, 0x1F5BC2500);
              v310 = DictGetString(v301, 0x1F5BC2520);
              v311 = @"none";
              if (v310)
              {
                v311 = v310;
              }

              v312 = @"unknown";
              if (v308)
              {
                v312 = v308;
              }

              [*(selfCopy + 8) printWithFormat:@"%-*s%@ (ramp:%@ namespaces:%@)\n", 18, "Trial Rollout: ", v309, v311, v312];
            }

            v299 = [v429 countByEnumeratingWithState:&v447 objects:&v460 count:16];
          }

          while (v299);
        }
      }
    }
  }

  v313 = *(selfCopy + 168);
  if (v313)
  {
    if (v313[404])
    {
      hidEventDisplayOptions = [*(selfCopy + 16) hidEventDisplayOptions];
      v313 = *(selfCopy + 168);
      if ((hidEventDisplayOptions & 0x18) != 0)
      {
        v457 = 0u;
        v458 = 0u;
        v455 = 0u;
        v456 = 0u;
        hidEvents = [v313 hidEvents];
        v316 = [hidEvents countByEnumeratingWithState:&v455 objects:v476 count:16];
        if (v316)
        {
          v317 = *v456;
          v318 = 1;
          do
          {
            for (i5 = 0; i5 != v316; ++i5)
            {
              if (*v456 != v317)
              {
                objc_enumerationMutation(hidEvents);
              }

              v320 = *(*(&v455 + 1) + 8 * i5);
              if (([*(selfCopy + 16) hidEventDisplayOptions] & 0x10) == 0)
              {
                if (([*(selfCopy + 16) hidEventDisplayOptions] & 4) != 0)
                {
                  if ([*(selfCopy + 168) targetHIDEventMachAbs])
                  {
                    hidEventTimestamp3 = [v320 hidEventTimestamp];
                    machAbsTime2 = [hidEventTimestamp3 machAbsTime];
                    LOBYTE(machAbsTime2) = machAbsTime2 == [*(selfCopy + 168) targetHIDEventMachAbs];

                    if (machAbsTime2)
                    {
                      continue;
                    }
                  }
                }

                steps3 = [v320 steps];
                lastObject2 = [steps3 lastObject];
                timestamp5 = [lastObject2 timestamp];
                [timestamp5 machAbsTimeSeconds];
                v328 = v327;
                hidEventTimestamp4 = [v320 hidEventTimestamp];
                [hidEventTimestamp4 machAbsTimeSeconds];
                v331 = v330;

                v323 = v328 - v331;
                if (v328 - v331 < 0.2)
                {
                  continue;
                }
              }

              steps4 = [v320 steps];
              lastObject3 = [steps4 lastObject];
              timestamp6 = [lastObject3 timestamp];
              v335 = [timestamp6 lt:*(selfCopy + 32)];

              if ((v335 & 1) == 0)
              {
                steps5 = [v320 steps];
                firstObject = [steps5 firstObject];
                timestamp7 = [firstObject timestamp];
                v339 = [timestamp7 gt:*(selfCopy + 40)];

                if ((v339 & 1) == 0)
                {
                  v340 = @"\n";
                  if (v318)
                  {
                    hidEventDisplayOptions2 = [*(selfCopy + 16) hidEventDisplayOptions];
                    v340 = @"\n\nAll HID events:\n";
                    if ((hidEventDisplayOptions2 & 0x10) == 0)
                    {
                      if (([*(selfCopy + 16) hidEventDisplayOptions] & 4) == 0 || (v342 = objc_msgSend(*(selfCopy + 168), "targetHIDEventMachAbs"), v340 = @"\n\nOther slow HID events:\n", !v342))
                      {
                        v340 = @"\n\nSlow HID events:\n";
                      }
                    }
                  }

                  [*(selfCopy + 8) appendString:v340];
                  [(SASamplePrinter *)selfCopy printHIDEvent:v320];
                  v318 = 0;
                }
              }
            }

            v316 = [hidEvents countByEnumeratingWithState:&v455 objects:v476 count:{16, v323}];
          }

          while (v316);
        }

        v313 = *(selfCopy + 168);
      }
    }
  }

  ioEvents = [v313 ioEvents];
  v344 = [ioEvents count] == 0;

  if (v344)
  {
    goto LABEL_399;
  }

  inited = init_io_histograms();
  v455 = 0u;
  v456 = 0u;
  v457 = 0u;
  v458 = 0u;
  ioEvents2 = [*(selfCopy + 168) ioEvents];
  v346 = [ioEvents2 countByEnumeratingWithState:&v455 objects:v476 count:16];
  if (!v346)
  {

    goto LABEL_398;
  }

  v347 = 0;
  v348 = *v456;
  while (2)
  {
    for (i6 = 0; i6 != v346; ++i6)
    {
      if (*v456 != v348)
      {
        objc_enumerationMutation(ioEvents2);
      }

      v350 = *(*(&v455 + 1) + 8 * i6);
      endTimestamp = [v350 endTimestamp];
      if (([*(selfCopy + 32) gt:endTimestamp] & 1) == 0)
      {
        if ([*(selfCopy + 40) lt:endTimestamp])
        {

          goto LABEL_388;
        }

        startTimestamp = [v350 startTimestamp];
        [endTimestamp machContTimeSeconds];
        if (v353 == 0.0 || ([startTimestamp machContTimeSeconds], v354 == 0.0))
        {
          [endTimestamp machAbsTimeSeconds];
          if (v358 == 0.0 || ([startTimestamp machAbsTimeSeconds], v359 == 0.0))
          {
            [endTimestamp wallTime];
            if (v361 == 0.0 || ([startTimestamp wallTime], v362 == 0.0))
            {
              v364 = 0;
              goto LABEL_383;
            }

            [endTimestamp wallTime];
            v356 = v363;
            [startTimestamp wallTime];
          }

          else
          {
            [endTimestamp machAbsTimeSeconds];
            v356 = v360;
            [startTimestamp machAbsTimeSeconds];
          }
        }

        else
        {
          [endTimestamp machContTimeSeconds];
          v356 = v355;
          [startTimestamp machContTimeSeconds];
        }

        v364 = ((v356 - v357) * 1000000.0);
LABEL_383:
        update_histograms_stats(inited, [v350 tier], objc_msgSend(v350, "size"), v364, objc_msgSend(v350, "isRead"));

        v347 = 1;
      }
    }

    v346 = [ioEvents2 countByEnumeratingWithState:&v455 objects:v476 count:16];
    if (v346)
    {
      continue;
    }

    break;
  }

LABEL_388:
  if (v347)
  {
    v365 = malloc_type_calloc(1uLL, 0x2000uLL, 0xE506F256uLL);
    if (print_io_histograms(inited, v365, 0x2000, v366, v367))
    {
      LODWORD(v368) = 0x2000;
      while (1)
      {
        free(v365);
        v368 = (2 * v368);
        if (v368 > 0x20000)
        {
          break;
        }

        v365 = malloc_type_calloc(1uLL, v368, 0x5C25DE1DuLL);
        if (!print_io_histograms(inited, v365, v368, v369, v370))
        {
          goto LABEL_393;
        }
      }

      LODWORD(v371) = *__error();
      v1 = _sa_logt();
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
      {
LABEL_397:

        *__error() = v371;
        goto LABEL_398;
      }

LABEL_424:
      *v440 = 0;
      _os_log_fault_impl(&dword_1E0E2F000, v1, OS_LOG_TYPE_FAULT, "io histograms don't fit in 128KB", v440, 2u);
      goto LABEL_397;
    }

LABEL_393:
    if (v365)
    {
      [*(selfCopy + 8) printWithFormat:@"\n\n%s\n", v365];
      free(v365);
    }
  }

LABEL_398:
  free(inited);
LABEL_399:
  uTF8String = selfCopy;
  if (*(selfCopy + 48) == 1)
  {
    v372 = *(selfCopy + 168);
    v373 = *(selfCopy + 56);
    v374 = *(selfCopy + 64);
    forceOneBasedTimeIndexes = [*(selfCopy + 16) forceOneBasedTimeIndexes];
    v376 = v373 + 1;
    uTF8String = selfCopy;
    if (forceOneBasedTimeIndexes)
    {
      v376 -= *(selfCopy + 56);
    }

    if (v372)
    {
      [(SAWSUpdateDataStore *)v372[19] printFrameRateReportWithStartSampleIndex:v373 endSampleIndex:v374 startDisplayIndex:v376 sampleDataStore:v372 toStream:*(selfCopy + 8)];
      goto LABEL_404;
    }
  }

LABEL_405:
  customOutput = [uTF8String[21] customOutput];

  v378 = selfCopy;
  if (customOutput)
  {
    printJson4 = [*(selfCopy + 16) printJson];
    v380 = *(selfCopy + 8);
    if (printJson4)
    {
      customOutput2 = [*(selfCopy + 168) customOutput];
      SAJSONWriteDictionaryEntry(v380, @"customOutput", customOutput2);
    }

    else
    {
      [*(selfCopy + 8) printWithFormat:@"\n\nCustom Output:\n"];
      v382 = *(selfCopy + 8);
      customOutput2 = [*(selfCopy + 168) customOutput];
      [v382 appendString:customOutput2];
    }

    v378 = selfCopy;
  }

  if ([*(v378 + 16) printJson])
  {
    [*(v378 + 8) appendString:@"}"];
  }

  if (*(v378 + 112) == 1 && (*(v378 + 113) & 1) == 0)
  {
    v383 = *__error();
    v384 = _sa_logt();
    if (os_log_type_enabled(v384, OS_LOG_TYPE_FAULT))
    {
      v436 = [*(selfCopy + 16) debugDescription];
      targetProcessId = [*(selfCopy + 168) targetProcessId];
      targetProcess3 = [*(selfCopy + 168) targetProcess];
      v389 = [targetProcess3 debugDescription];
      targetThreadId2 = [*(selfCopy + 168) targetThreadId];
      targetProcess4 = [*(selfCopy + 168) targetProcess];
      threads3 = [targetProcess4 threads];
      v393 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(selfCopy + 168), "targetThreadId")}];
      v394 = [threads3 objectForKeyedSubscript:v393];
      *v476 = 138544386;
      v477 = v436;
      v478 = 1024;
      v479 = targetProcessId;
      v480 = 2114;
      v481 = v389;
      v482 = 2048;
      v483 = targetThreadId2;
      v484 = 2114;
      v485 = v394;
      _os_log_fault_impl(&dword_1E0E2F000, v384, OS_LOG_TYPE_FAULT, "Hit 65324447!\noptions: %{public}@\ntargetTask %d: %{public}@\ntargetThread 0x%llx: %{public}@", v476, 0x30u);
    }

    *__error() = v383;
  }

  v385 = +[SABinaryLocator sharedBinaryLocator];
  v386 = v385;
  if (v385)
  {
    if (v385[25] == 1)
    {
      [(SABinaryLocator *)v385 _saveMappings];
    }
  }

  [v386 done];

LABEL_12:
  objc_autoreleasePoolPop(context);
}

void __29__SASamplePrinter_preprocess__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [(SASamplePrinter *)*(a1 + 32) binaryImagesHitByTask:a2];
    if ([*(v2 + 16) displayAllBinaries])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = [a2 binaryLoadInfos];
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v18 + 1) + 8 * i);
            if ([v10 loadAddress])
            {
              v11 = [SASamplePrinter displayedBinaryLoadInfoForLoadInfo:v2 offsetIntoLoadInfo:v10 binariesToDisplay:0 extraBinariesToDisplay:v4];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);
      }
    }

    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = *(v12 + 168);
      if (v13 != 1 && (v13 || *(v12 + 11) == 1))
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __34__SASamplePrinter_preprocessTask___block_invoke;
        v16[3] = &unk_1E86F76B0;
        v16[4] = a2;
        v16[5] = v2;
        v14 = v4;
        v17 = v14;
        [(SATask *)a2 enumerateFrames:v16];
        v15 = [(SASamplePrinter *)v2 sortedLoadInfosForBinaryImages:v14];
        [(SASamplePrinter *)v2 avoidOverlapInBinaryLoadInfos:v15 onlyExclaves:0 inTask:a2];
      }
    }
  }
}

- (uint64_t)checkForBadOptions
{
  v123 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if ([*(self + 16) callTreeAggregation] >= 4)
  {
    v9 = *(self + 8);
    if (!v9)
    {
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        callTreeAggregation = [*(self + 16) callTreeAggregation];
        *buf = 134217984;
        *&buf[4] = callTreeAggregation;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "unknown callTreeAggregation %llu", buf, 0xCu);
      }

      goto LABEL_26;
    }

    callTreeAggregation2 = [*(self + 16) callTreeAggregation];
    v10 = @"unknown callTreeAggregation %llu";
  }

  else
  {
    if ([*(self + 16) swiftAsyncCallTreeAggregation] < 6)
    {
      v2 = *(self + 16);
      if (!v2 || (v3 = *(v2 + 168), v3 == 1) || !v3 && *(v2 + 11) != 1 || (v4 = *(v2 + 152), v4 == 3) || !v4 && (*(v2 + 11) & 1) != 0)
      {
        targetProcess = [*(self + 168) targetProcess];
        targetProcesses = [*(self + 168) targetProcesses];
        v7 = targetProcesses;
        if (targetProcess && targetProcesses)
        {
          v8 = *(self + 8);
          if (v8)
          {
            [v8 printWithFormat:@"Cannot target a single task and multiple tasks at the same time"];
          }

          else
          {
            v27 = *__error();
            v28 = _sa_logt();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "Cannot target a single task and multiple tasks at the same time", buf, 2u);
            }

            *__error() = v27;
          }

          v14 = 1;
          goto LABEL_110;
        }

        if ([*(self + 168) targetDispatchQueueId])
        {
          if (targetProcess)
          {
            dispatchQueues = [targetProcess dispatchQueues];
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(self + 168), "targetDispatchQueueId")}];
            v18 = [dispatchQueues objectForKeyedSubscript:v17];

            if (v18)
            {
              if (![*(self + 168) targetThreadId])
              {
                goto LABEL_55;
              }

LABEL_39:
              threads = [targetProcess threads];
              v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(self + 168), "targetThreadId")}];
              v107 = [threads objectForKeyedSubscript:v20];

              if (!v107)
              {
                v34 = *(self + 8);
                if (v34)
                {
                  targetThreadId = [*(self + 168) targetThreadId];
                  v36 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                  [v34 printWithFormat:@"targeting thread 0x%llx in %@ but no such thread found", targetThreadId, v36];
                }

                else
                {
                  v56 = *__error();
                  v57 = _sa_logt();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    targetThreadId2 = [*(self + 168) targetThreadId];
                    v83 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                    *buf = 134218242;
                    *&buf[4] = targetThreadId2;
                    *&buf[12] = 2112;
                    *&buf[14] = v83;
                    _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "targeting thread 0x%llx in %@ but no such thread found", buf, 0x16u);
                  }

                  *__error() = v56;
                }

                v112 = 1;

                goto LABEL_109;
              }

              if (v18)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v120) = 0;
                v21 = *(self + 32);
                v22 = *(self + 40);
                v23 = *(self + 56);
                v24 = *(self + 64);
                v109[0] = MEMORY[0x1E69E9820];
                v109[1] = 3221225472;
                v109[2] = __37__SASamplePrinter_checkForBadOptions__block_invoke;
                v109[3] = &unk_1E86F5D58;
                v18 = v18;
                v110 = v18;
                v111 = buf;
                [v107 enumerateThreadStatesBetweenStartTime:v21 startSampleIndex:v23 endTime:v22 endSampleIndex:v24 reverseOrder:0 block:v109];
                if ((*(*&buf[8] + 24) & 1) == 0)
                {
                  v53 = *(self + 8);
                  if (v53)
                  {
                    [v53 printWithFormat:@"Target dispatch queue %llu never runs on target thread 0x%llx", objc_msgSend(v18, "identifier"), objc_msgSend(v107, "threadId")];
                  }

                  else
                  {
                    v63 = *__error();
                    v64 = _sa_logt();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                    {
                      identifier = [v18 identifier];
                      threadId = [v107 threadId];
                      *v117 = 134218240;
                      *&v117[4] = identifier;
                      *&v117[12] = 2048;
                      *&v117[14] = threadId;
                      _os_log_error_impl(&dword_1E0E2F000, v64, OS_LOG_TYPE_ERROR, "Target dispatch queue %llu never runs on target thread 0x%llx", v117, 0x16u);
                    }

                    *__error() = v63;
                  }

                  v112 = 1;

                  _Block_object_dispose(buf, 8);
                  goto LABEL_109;
                }

                _Block_object_dispose(buf, 8);
                v25 = 1;
                v26 = 1;
              }

              else
              {
                v26 = 0;
                v25 = 1;
              }

LABEL_64:
              targetMainBinaryUUID = [*(self + 168) targetMainBinaryUUID];
              v41 = targetMainBinaryUUID == 0;

              if (!v41 && v7 == 0)
              {
                v45 = *(self + 8);
                if (v45)
                {
                  targetMainBinaryUUID2 = [*(self + 168) targetMainBinaryUUID];
                  [v45 printWithFormat:@"targeting main binary %@, but no target tasks", targetMainBinaryUUID2];
                }

                else
                {
                  v50 = *__error();
                  v51 = _sa_logt();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    targetMainBinaryUUID3 = [*(self + 168) targetMainBinaryUUID];
                    *buf = 138412290;
                    *&buf[4] = targetMainBinaryUUID3;
                    _os_log_error_impl(&dword_1E0E2F000, v51, OS_LOG_TYPE_ERROR, "targeting main binary %@, but no target tasks", buf, 0xCu);
                  }

                  *__error() = v50;
                }

                goto LABEL_196;
              }

              if ([*(self + 168) targetHIDEventMachAbs] || objc_msgSend(*(self + 168), "targetHIDEventEndMachAbs"))
              {
                targetProcesses2 = [*(self + 168) targetProcesses];
                v43 = targetProcesses2 == 0;

                if (!v43)
                {
                  v44 = *(self + 8);
                  if (v44)
                  {
                    [v44 printWithFormat:@"targeting a HID event while targeting multiple processes"];
LABEL_196:
                    v112 = 1;

                    goto LABEL_109;
                  }

                  v61 = *__error();
                  v62 = _sa_logt();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "targeting a HID event while targeting multiple processes", buf, 2u);
                  }

                  goto LABEL_195;
                }
              }

              if ([*(self + 16) printHeavyStacks])
              {
LABEL_73:
                if (((v25 | v26 | [*(self + 16) printTargetThreadOnly] ^ 1) & 1) == 0)
                {
                  if (targetProcess)
                  {
                    mainThread = [targetProcess mainThread];
                    v48 = mainThread == 0;

                    if (!v48)
                    {
                      goto LABEL_76;
                    }

                    v71 = *(self + 8);
                    if (v71)
                    {
                      v72 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                      [v71 printWithFormat:@"printTargetThreadOnly, but target task %@ has no main thread", v72];
                    }

                    else
                    {
                      v85 = *__error();
                      v86 = _sa_logt();
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        v101 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                        *buf = 138412290;
                        *&buf[4] = v101;
                        _os_log_error_impl(&dword_1E0E2F000, v86, OS_LOG_TYPE_ERROR, "printTargetThreadOnly, but target task %@ has no main thread", buf, 0xCu);
                      }

                      *__error() = v85;
                    }
                  }

                  else
                  {
                    v67 = *(self + 8);
                    if (v67)
                    {
                      [v67 printWithFormat:@"printTargetThreadOnly, but no target task provided"];
                    }

                    else
                    {
                      v77 = *__error();
                      v78 = _sa_logt();
                      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1E0E2F000, v78, OS_LOG_TYPE_ERROR, "printTargetThreadOnly, but no target task provided", buf, 2u);
                      }

                      *__error() = v77;
                    }
                  }

                  v112 = 1;

                  goto LABEL_109;
                }

LABEL_76:
                if ([*(self + 16) systemstatsFormat])
                {
                  if ([*(self + 16) printJson])
                  {
                    v49 = *(self + 8);
                    if (v49)
                    {
                      [v49 printWithFormat:@"printJson not supported with systemstatsFormat"];
LABEL_178:
                      v112 = 1;

                      goto LABEL_109;
                    }

                    v79 = *__error();
                    v80 = _sa_logt();
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v80, OS_LOG_TYPE_ERROR, "printJson not supported with systemstatsFormat", buf, 2u);
                    }

                    goto LABEL_177;
                  }

                  if ([*(self + 16) displayIOInCallTrees])
                  {
                    v68 = *(self + 8);
                    if (v68)
                    {
                      [v68 printWithFormat:@"displayIOInCallTrees not supported with systemstatsFormat"];
                      goto LABEL_178;
                    }

                    v79 = *__error();
                    v80 = _sa_logt();
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v80, OS_LOG_TYPE_ERROR, "displayIOInCallTrees not supported with systemstatsFormat", buf, 2u);
                    }

LABEL_177:

                    *__error() = v79;
                    goto LABEL_178;
                  }

                  if ([*(self + 16) callTreeTimestampsTimeDomain] && objc_msgSend(*(self + 16), "callTreeTimestampsTimeDomain") != 1)
                  {
                    v91 = *(self + 8);
                    if (v91)
                    {
                      [v91 printWithFormat:@"callTreeTimestampsTimeDomain time domains other than kSATimeDomainWallTime not supported with systemstatsFormat"];
                      goto LABEL_178;
                    }

                    v79 = *__error();
                    v80 = _sa_logt();
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1E0E2F000, v80, OS_LOG_TYPE_ERROR, "callTreeTimestampsTimeDomain time domains other than kSATimeDomainWallTime not supported with systemstatsFormat", buf, 2u);
                    }

                    goto LABEL_177;
                  }
                }

                if ([*(self + 16) swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways] && objc_msgSend(*(self + 16), "swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways"))
                {
                  v74 = *(self + 8);
                  if (v74)
                  {
                    [v74 printWithFormat:@"swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways and swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways both set"];
                    goto LABEL_178;
                  }

                  v79 = *__error();
                  v80 = _sa_logt();
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v80, OS_LOG_TYPE_ERROR, "swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways and swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways both set", buf, 2u);
                  }

                  goto LABEL_177;
                }

                v112 = 0;

LABEL_109:
                v14 = v112;
LABEL_110:

                return v14;
              }

              if ((*(self + 48) & 1) == 0)
              {
                v65 = *(self + 8);
                if (v65)
                {
                  [v65 printWithFormat:@"cannot display timeline format without time indexes"];
                  goto LABEL_196;
                }

                v61 = *__error();
                v62 = _sa_logt();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "cannot display timeline format without time indexes", buf, 2u);
                }

                goto LABEL_195;
              }

              if (([*(self + 16) displayBlockedThreads] & 1) == 0)
              {
                v66 = *(self + 8);
                if (v66)
                {
                  [v66 printWithFormat:@"cannot display timeline format without displaying blocked threads"];
                  goto LABEL_196;
                }

                v61 = *__error();
                v62 = _sa_logt();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "cannot display timeline format without displaying blocked threads", buf, 2u);
                }

                goto LABEL_195;
              }

              if (([*(self + 16) displayRunnableThreads] & 1) == 0)
              {
                v69 = *(self + 8);
                if (v69)
                {
                  [v69 printWithFormat:@"cannot display timeline format without displaying runnable threads"];
                  goto LABEL_196;
                }

                v61 = *__error();
                v62 = _sa_logt();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "cannot display timeline format without displaying runnable threads", buf, 2u);
                }

                goto LABEL_195;
              }

              if (([*(self + 16) displayRunningThreads] & 1) == 0)
              {
                v81 = *(self + 8);
                if (v81)
                {
                  [v81 printWithFormat:@"cannot display timeline format without displaying running threads"];
                  goto LABEL_196;
                }

                v61 = *__error();
                v62 = _sa_logt();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "cannot display timeline format without displaying running threads", buf, 2u);
                }

                goto LABEL_195;
              }

              v58 = *(self + 16);
              if (v58)
              {
                v59 = *(v58 + 152);
                if (v59 == 3 || !v59 && *(v58 + 11) == 1)
                {
                  v60 = *(self + 8);
                  if (v60)
                  {
                    [v60 printWithFormat:@"conflicting display options: kSAAggregateCallTreesByProcess and !printHeavyStacks"];
                    goto LABEL_196;
                  }

                  v61 = *__error();
                  v62 = _sa_logt();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "conflicting display options: kSAAggregateCallTreesByProcess and !printHeavyStacks", buf, 2u);
                  }

LABEL_195:

                  *__error() = v61;
                  goto LABEL_196;
                }

                v87 = *(v58 + 160);
                if (v87)
                {
                  if (v87 != 2)
                  {
                    if (v87 == 4)
                    {
                      v88 = *(self + 8);
                      if (v88)
                      {
                        [v88 printWithFormat:@"conflicting display options: kSAAggregateSwiftAsyncCallTreesByProcess and !printHeavyStacks"];
                        goto LABEL_196;
                      }

                      v61 = *__error();
                      v62 = _sa_logt();
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "conflicting display options: kSAAggregateSwiftAsyncCallTreesByProcess and !printHeavyStacks", buf, 2u);
                      }

                      goto LABEL_195;
                    }

                    goto LABEL_182;
                  }

LABEL_180:
                  v92 = *(self + 8);
                  if (v92)
                  {
                    [v92 printWithFormat:@"conflicting display options: kSAAggregateSwiftAsyncCallTreesByBaseFunction and !printHeavyStacks"];
                    goto LABEL_196;
                  }

                  v61 = *__error();
                  v62 = _sa_logt();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "conflicting display options: kSAAggregateSwiftAsyncCallTreesByBaseFunction and !printHeavyStacks", buf, 2u);
                  }

                  goto LABEL_195;
                }

                if (*(v58 + 14) == 1)
                {
                  goto LABEL_180;
                }
              }

LABEL_182:
              if (v18)
              {
                v93 = v25;
              }

              else
              {
                v93 = 1;
              }

              if ((v93 & 1) == 0 && [v18 hasConcurrentExecution])
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v120 = __Block_byref_object_copy__4;
                v121 = __Block_byref_object_dispose__4;
                v122 = 0;
                *v117 = 0;
                *&v117[8] = v117;
                *&v117[16] = 0x2020000000;
                v118 = 0;
                v94 = *(self + 32);
                v95 = *(self + 40);
                v96 = *(self + 56);
                v97 = *(self + 64);
                v108[0] = MEMORY[0x1E69E9820];
                v108[1] = 3221225472;
                v108[2] = __37__SASamplePrinter_checkForBadOptions__block_invoke_382;
                v108[3] = &unk_1E86F7460;
                v108[4] = buf;
                v108[5] = v117;
                [(SARecipe *)v18 enumerateStatesBetweenStartTime:v94 startSampleIndex:v96 endTime:v95 endSampleIndex:v97 reverseOrder:0 block:v108];
                if (*(*&v117[8] + 24) == 1)
                {
                  v98 = *(self + 8);
                  if (v98)
                  {
                    v99 = [SASamplePrinter displayNameForDispatchQueue:v18];
                    v100 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                    [v98 printWithFormat:@"cannot display timeline format with concurrent target dispatch queue %@ in %@", v99, v100];
                  }

                  else
                  {
                    v102 = *__error();
                    v103 = _sa_logt();
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                    {
                      v104 = [SASamplePrinter displayNameForDispatchQueue:v18];
                      v105 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                      *v113 = 138412546;
                      v114 = v104;
                      v115 = 2112;
                      v116 = v105;
                      _os_log_error_impl(&dword_1E0E2F000, v103, OS_LOG_TYPE_ERROR, "cannot display timeline format with concurrent target dispatch queue %@ in %@", v113, 0x16u);
                    }

                    *__error() = v102;
                  }

                  v112 = 1;
                  _Block_object_dispose(v117, 8);
                  _Block_object_dispose(buf, 8);

                  goto LABEL_109;
                }

                _Block_object_dispose(v117, 8);
                _Block_object_dispose(buf, 8);
              }

              goto LABEL_73;
            }

            v30 = *(self + 8);
            if (v30)
            {
              targetDispatchQueueId = [*(self + 168) targetDispatchQueueId];
              v32 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
              [v30 printWithFormat:@"targeting dispatch queue %llu in %@ but no such dispatch queue found", targetDispatchQueueId, v32];
            }

            else
            {
              v54 = *__error();
              v55 = _sa_logt();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                targetDispatchQueueId2 = [*(self + 168) targetDispatchQueueId];
                v76 = [(SASamplePrinter *)self displayNameForTask:targetProcess];
                *buf = 134218242;
                *&buf[4] = targetDispatchQueueId2;
                *&buf[12] = 2112;
                *&buf[14] = v76;
                _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "targeting dispatch queue %llu in %@ but no such dispatch queue found", buf, 0x16u);
              }

              *__error() = v54;
            }

LABEL_108:
            v112 = 1;
            goto LABEL_109;
          }

          v29 = *(self + 8);
          if (v29)
          {
            [v29 printWithFormat:@"targeting dispatch queue %llu, but no target task", objc_msgSend(*(self + 168), "targetDispatchQueueId")];
            goto LABEL_108;
          }

          v38 = *__error();
          v39 = _sa_logt();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            targetDispatchQueueId3 = [*(self + 168) targetDispatchQueueId];
            *buf = 134217984;
            *&buf[4] = targetDispatchQueueId3;
            _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "targeting dispatch queue %llu, but no target task", buf, 0xCu);
          }
        }

        else
        {
          if (![*(self + 168) targetThreadId])
          {
            v18 = 0;
LABEL_55:
            v25 = 0;
            v107 = 0;
            v26 = v18 != 0;
            goto LABEL_64;
          }

          if (targetProcess)
          {
            v18 = 0;
            goto LABEL_39;
          }

          v37 = *(self + 8);
          if (v37)
          {
            [v37 printWithFormat:@"targeting thread 0x%llx, but no target task", objc_msgSend(*(self + 168), "targetThreadId")];
            goto LABEL_108;
          }

          v38 = *__error();
          v39 = _sa_logt();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            targetThreadId3 = [*(self + 168) targetThreadId];
            *buf = 134217984;
            *&buf[4] = targetThreadId3;
            _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "targeting thread 0x%llx, but no target task", buf, 0xCu);
          }
        }

        *__error() = v38;
        goto LABEL_108;
      }

      v11 = *(self + 8);
      if (v11)
      {
        v10 = @"conflicting display options: aggregation of multiple task instances requires kSAAggregateCallTreesByProcess";
        goto LABEL_20;
      }

      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "conflicting display options: aggregation of multiple task instances requires kSAAggregateCallTreesByProcess", buf, 2u);
      }

LABEL_26:

      *__error() = v12;
      return 1;
    }

    v9 = *(self + 8);
    if (!v9)
    {
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        callTreeAggregation3 = [*(self + 16) callTreeAggregation];
        *buf = 134217984;
        *&buf[4] = callTreeAggregation3;
        _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "unknown swiftAsyncCallTreeAggregation %llu", buf, 0xCu);
      }

      goto LABEL_26;
    }

    callTreeAggregation2 = [*(self + 16) callTreeAggregation];
    v10 = @"unknown swiftAsyncCallTreeAggregation %llu";
  }

  v11 = v9;
LABEL_20:
  [v11 printWithFormat:v10, callTreeAggregation2];
  return 1;
}

void __37__SASamplePrinter_calculateTimeJumps__block_invoke(uint64_t a1, id obj, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    if (-[SASamplePrinter timeSpentAsleepBetweenStartTimestamp:endTimestamp:](*(a1 + 32), v5, obj) > 0.0 || (v9 = *(a1 + 32)) != 0 && *(v9 + 96) > 0.0 && (v10 = *(*(*(a1 + 40) + 8) + 40), [obj machAbsTimeSeconds], v12 = v11, objc_msgSend(v10, "machAbsTimeSeconds"), v12 - v13 >= *(v9 + 96) * 10.0))
    {
      v7 = *(*(a1 + 32) + 104);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v7 addObject:v8];
    }
  }

  v14 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v14, obj);
}

- (void)printHeader
{
  v1 = MEMORY[0x1EEE9AC00]();
  v1684 = *MEMORY[0x1E69E9840];
  v1542 = v1;
  printJson = [*(v1 + 16) printJson];
  if (printJson)
  {
    v2 = *(v1 + 8);
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:67];
    SAJSONWriteDictionaryFirstEntry(v2, @"reportVersion", v3);

    v1 = v1542;
  }

  eventStartTimeWithWallTime = [(SASamplePrinter *)v1 eventStartTimeWithWallTime];
  if (eventStartTimeWithWallTime && ([*(v1542 + 16) omitAbsoluteWallTimes] & 1) == 0)
  {
    v21 = *(v1542 + 8);
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(*(v1542 + 8), @"startTime", eventStartTimeWithWallTime);
    }

    else
    {
      [eventStartTimeWithWallTime wallTime];
      v23 = v22;
      if ([*(v1542 + 16) displayDetailedWallTime])
      {
        v25 = 9;
      }

      else
      {
        v25 = 3;
      }

      v24.i64[0] = v23;
      v26 = _CopyStringForTime(v25, v24);
      [v21 printWithFormat:@"%-*s%@\n", 18, "Date/Time: ", v26];
    }
  }

  else
  {
    [*(v1542 + 8) printWithFormat:@"%-*sUNKNOWN\n", 18, "Date/Time: "];
  }

  eventEndTimeWithWallTime = [(SASamplePrinter *)v1542 eventEndTimeWithWallTime];
  v4 = eventStartTimeWithWallTime == 0;
  if (!eventEndTimeWithWallTime)
  {
    v4 = 1;
  }

  if (v4 || ([eventEndTimeWithWallTime wallTime], v6 = v5, objc_msgSend(eventStartTimeWithWallTime, "wallTime"), v6 <= v7) || (objc_msgSend(*(v1542 + 16), "omitAbsoluteWallTimes") & 1) != 0)
  {
    if (printJson)
    {
      goto LABEL_12;
    }

LABEL_32:
    v33 = (v1542 + 168);
    osProductName = [*(v1542 + 168) osProductName];
    v35 = osProductName;
    v36 = @"???";
    if (osProductName)
    {
      v36 = osProductName;
    }

    osBuildVersion3 = v36;

    osProductVersion = [*v33 osProductVersion];
    v38 = osProductVersion;
    v39 = @"???";
    if (osProductVersion)
    {
      v39 = osProductVersion;
    }

    v40 = v39;

    osBuildVersion = [*v33 osBuildVersion];
    v42 = osBuildVersion;
    v43 = @"???";
    if (osBuildVersion)
    {
      v43 = osBuildVersion;
    }

    v44 = v43;

    v18 = v1542;
    [*(v1542 + 8) printWithFormat:@"%-*s%@ %@", 18, "OS Version: ", osBuildVersion3, v40];
    [*(v1542 + 8) printWithFormat:@" (Build %@)\n", v44];

    goto LABEL_39;
  }

  v27 = *(v1542 + 8);
  if (!printJson)
  {
    [eventEndTimeWithWallTime wallTime];
    v29 = v28;
    if ([*(v1542 + 16) displayDetailedWallTime])
    {
      v31 = 9;
    }

    else
    {
      v31 = 3;
    }

    v30.i64[0] = v29;
    v32 = _CopyStringForTime(v31, v30);
    [v27 printWithFormat:@"%-*s%@\n", 18, "End time: ", v32];

    goto LABEL_32;
  }

  SAJSONWriteDictionaryEntry(*(v1542 + 8), @"endTime", eventEndTimeWithWallTime);
LABEL_12:
  osProductName2 = [*(v1542 + 168) osProductName];

  if (osProductName2)
  {
    v9 = *(v1542 + 8);
    osProductName3 = [*(v1542 + 168) osProductName];
    SAJSONWriteDictionaryEntry(v9, @"osProductName", osProductName3);
  }

  osProductVersion2 = [*(v1542 + 168) osProductVersion];

  if (osProductVersion2)
  {
    v12 = *(v1542 + 8);
    osProductVersion3 = [*(v1542 + 168) osProductVersion];
    SAJSONWriteDictionaryEntry(v12, @"osProductVersion", osProductVersion3);
  }

  osProductVersionExtra = [*(v1542 + 168) osProductVersionExtra];

  if (osProductVersionExtra)
  {
    v15 = *(v1542 + 8);
    osProductVersionExtra2 = [*(v1542 + 168) osProductVersionExtra];
    SAJSONWriteDictionaryEntry(v15, @"osProductVersionExtra", osProductVersionExtra2);
  }

  osBuildVersion2 = [*(v1542 + 168) osBuildVersion];

  v18 = v1542;
  if (osBuildVersion2)
  {
    v19 = *(v1542 + 8);
    osBuildVersion3 = [*(v1542 + 168) osBuildVersion];
    SAJSONWriteDictionaryEntry(v19, @"osBuildVersion", osBuildVersion3);
    v18 = v1542;
LABEL_39:
  }

  v1488 = (v18 + 168);
  machineArchitecture = [*(v18 + 168) machineArchitecture];
  v1430 = machineArchitecture;
  if (machineArchitecture && [machineArchitecture length])
  {
    v46 = v1542;
    v47 = *(v1542 + 8);
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v47, @"arch", v1430);
      goto LABEL_49;
    }

    [v47 printWithFormat:@"%-*s%@\n", 18, "Architecture: ", v1430];
  }

  else
  {
    v46 = v1542;
    if (printJson)
    {
      goto LABEL_49;
    }
  }

  [*(v46 + 8) printWithFormat:@"%-*s%d\n", 18, "Report Version: ", 67];
  if ([*(v46 + 16) systemstatsFormat])
  {
    [*(v46 + 8) printWithFormat:@"%-*scondensed\n", 18, "Report Variant: "];
  }

LABEL_49:
  v48 = *(v46 + 184);
  if (!v48)
  {
    if ((*(v46 + 160) & 1) == 0)
    {
      v52 = (v18 + 168);
      if (printJson)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v52 = (v18 + 168);
    if (printJson)
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  v49 = *(v46 + 8);
  uUIDString = [v48 UUIDString];
  v51 = uUIDString;
  if ((printJson & 1) == 0)
  {
    [v49 printWithFormat:@"%-*s%@\n", 18, "Incident Identifier: ", uUIDString];

    v46 = v1542;
    v52 = (v18 + 168);
    if ((*(v1542 + 160) & 1) == 0)
    {
LABEL_59:
      [*(v46 + 8) appendString:@"\n"];
      goto LABEL_60;
    }

LABEL_57:
    [*(v46 + 8) printWithFormat:@"%-*sYes\n", 18, "Share With Devs: "];
    goto LABEL_59;
  }

  SAJSONWriteDictionaryEntry(v49, @"incidentIdentifier", uUIDString);

  v46 = v1542;
  v52 = (v18 + 168);
  if (*(v1542 + 160))
  {
LABEL_55:
    SAJSONWriteDictionaryEntry(*(v46 + 8), @"shareWithAppDevs", MEMORY[0x1E695E118]);
  }

LABEL_60:
  if ([*v52 dataSource])
  {
    dataSource = [*v52 dataSource];
    v54 = dataSource & 1;
    v55 = v1672;
    if (dataSource)
    {
      strcpy(v1672, "Stackshots");
      v55 = &v1672[10];
    }

    if (([*v52 dataSource] & 2) != 0)
    {
      if (dataSource)
      {
        v55 += __snprintf_chk(v55, &v1673 - v55, 0, 0x80uLL, ", ");
        v52 = v1488;
      }

      v55 += snprintf(v55, &v1673 - v55, "KPerf Lightweight PET");
      v54 = 1;
    }

    if (([*v52 dataSource] & 4) != 0)
    {
      v56 = v1488;
      if (v54)
      {
        v55 += snprintf(v55, &v1673 - v55, ", ");
      }

      v55 += snprintf(v55, &v1673 - v55, "Microstackshots");
      v54 = 1;
    }

    else
    {
      v56 = v1488;
    }

    if (([*v56 dataSource] & 8) != 0)
    {
      v57 = v1488;
      if (v54)
      {
        v55 += snprintf(v55, &v1673 - v55, ", ");
      }

      v55 += snprintf(v55, &v1673 - v55, "KPerf non-PET");
      v54 = 1;
    }

    else
    {
      v57 = v1488;
    }

    dataSource2 = [*v57 dataSource];
    v46 = v1542;
    if ((dataSource2 & 0x10) != 0)
    {
      if (v54)
      {
        v55 += snprintf(v55, &v1673 - v55, ", ");
      }

      snprintf(v55, &v1673 - v55, "Custom callstacks");
    }
  }

  else
  {
    strcpy(v1672, "Unknown");
  }

  v61 = *(v46 + 8);
  teamID = (v46 + 8);
  uuid = v61;
  p_isa = &teamID->isa;
  if (printJson)
  {
    sharedCaches = SANSStringForCString(v1672);
    SAJSONWriteDictionaryEntry(uuid, @"dataSource", sharedCaches);
  }

  else
  {
    [uuid printWithFormat:@"%-*s%s\n", 18, "Data Source: ", v1672];
    v1648 = 0u;
    v1647 = 0u;
    v1646 = 0u;
    v1645 = 0u;
    obj = [*v1488 kernelCaches];
    v63 = [obj countByEnumeratingWithState:&v1645 objects:v1671 count:16];
    if (v63)
    {
      v64 = *v1646;
      j = "Kernel Cache: ";
      teamID = @"%-*s0x%llx %@\n";
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v1646 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v1645 + 1) + 8 * i);
          v67 = *p_isa;
          loadAddress = [v66 loadAddress];
          uuid = [v66 uuid];
          uUIDString2 = [uuid UUIDString];
          [v67 printWithFormat:@"%-*s0x%llx %@\n", 18, "Kernel Cache: ", loadAddress, uUIDString2];
        }

        v63 = [obj countByEnumeratingWithState:&v1645 objects:v1671 count:16];
      }

      while (v63);
    }

    v1644 = 0u;
    v1643 = 0u;
    v1642 = 0u;
    v1641 = 0u;
    sharedCaches = [*v1488 sharedCaches];
    v70 = [sharedCaches countByEnumeratingWithState:&v1641 objects:v1670 count:16];
    if (v70)
    {
      v71 = *v1642;
      teamID = @"%-*s%@\n";
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v1642 != v71)
          {
            objc_enumerationMutation(sharedCaches);
          }

          v72 = *p_isa;
          uuid = _shared_cache_display_string(*(*(&v1641 + 1) + 8 * j));
          [v72 printWithFormat:@"%-*s%@\n", 18, "Shared Cache: ", uuid];
        }

        v70 = [sharedCaches countByEnumeratingWithState:&v1641 objects:v1670 count:16];
      }

      while (v70);
    }
  }

  reason = [*v1488 reason];

  if (reason)
  {
    uuid = *p_isa;
    reason2 = [*v1488 reason];
    v75 = reason2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(uuid, @"reason", reason2);

      goto LABEL_105;
    }

    v76 = SACopySanitizedString(reason2, 1, 0xFFuLL);
    [uuid printWithFormat:@"%-*s%@\n", 18, "Reason: ", v76];

    goto LABEL_104;
  }

  if ((printJson & 1) == 0)
  {
LABEL_104:
    [*p_isa appendString:@"\n"];
  }

LABEL_105:
  if ([*v1488 targetHIDEventMachAbs])
  {
    v77 = *(v1542 + 120);
    if (v77)
    {
      hidEventTimestamp = [v77 hidEventTimestamp];
      steps = [*(v1542 + 120) steps];
      uuid = [steps lastObject];
      timestamp = [uuid timestamp];
    }

    else
    {
      uuid = [*v1488 targetHIDEventMachAbs];
      hidEventTimestamp = +[SATimestamp timestampWithMachAbsTime:machContTime:wallTime:machTimebase:](SATimestamp, "timestampWithMachAbsTime:machContTime:wallTime:machTimebase:", uuid, 0, [*v1488 machTimebase], 0.0);
      if ([*v1488 targetHIDEventEndMachAbs])
      {
        uuid = [*v1488 targetHIDEventEndMachAbs];
        timestamp = +[SATimestamp timestampWithMachAbsTime:machContTime:wallTime:machTimebase:](SATimestamp, "timestampWithMachAbsTime:machContTime:wallTime:machTimebase:", uuid, 0, [*v1488 machTimebase], 0.0);
      }

      else
      {
        timestamp = 0;
      }
    }
  }

  else
  {
    timestamp = 0;
    hidEventTimestamp = 0;
  }

  if (![(SASamplePrinter *)v1542 hasTargetProcess])
  {
    v1442 = 0;
    v86 = 0.0;
    goto LABEL_234;
  }

  targetProcesses = [*v1488 targetProcesses];
  if ([targetProcesses count])
  {
    if (printJson)
    {
      v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
      v1640 = 0u;
      v1639 = 0u;
      v1638 = 0u;
      v1637 = 0u;
      v80 = targetProcesses;
      teamID = [v80 countByEnumeratingWithState:&v1637 objects:v1669 count:16];
      if (teamID)
      {
        v81 = *v1638;
        do
        {
          for (k = 0; k != teamID; k = (k + 1))
          {
            if (*v1638 != v81)
            {
              objc_enumerationMutation(v80);
            }

            v83 = [(SASamplePrinter *)v1542 displayNameForTask:?];
            [v79 addObject:v83];
          }

          teamID = [v80 countByEnumeratingWithState:&v1637 objects:v1669 count:16];
        }

        while (teamID);
      }

      v84 = *p_isa;
      v85 = [v79 componentsJoinedByString:{@", "}];
      SAJSONWriteDictionaryEntry(v84, @"targetTasks", v85);

      goto LABEL_231;
    }

    lastObject = [targetProcesses lastObject];
    mainBinary = [lastObject mainBinary];

    v1449 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v1436 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1433 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1443 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    obja = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1519 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(targetProcesses, "count")}];
    v1636 = 0u;
    v1635 = 0u;
    v1634 = 0u;
    v1633 = 0u;
    v1439 = targetProcesses;
    v1452 = [v1439 countByEnumeratingWithState:&v1633 objects:v1668 count:16];
    if (!v1452)
    {
      v1474 = 0;
      v1470 = 0;
      v1466 = 0;
      v1479 = 0;
      v1463 = 0;
      v1456 = 0;
LABEL_203:

      v1512 = [(SASamplePrinter *)v1542 displayStringForOnBehalfOfForTasks:v1439 includePid:0];
      if ([obja count])
      {
        uuid = [obja allObjects];
        v1498 = [uuid sortedArrayUsingComparator:&__block_literal_global_11];
      }

      else
      {
        v1498 = 0;
      }

      if ([v1519 count])
      {
        uuid = [v1519 allObjects];
        v1490 = [uuid sortedArrayUsingComparator:&__block_literal_global_11];
      }

      else
      {
        v1490 = 0;
      }

      if ([v1449 count])
      {
        allObjects = [v1449 allObjects];
        uuid = [allObjects sortedArrayUsingComparator:&__block_literal_global_11];
        v1484 = [uuid componentsJoinedByString:{@", "}];
      }

      else
      {
        v1484 = @"UNKNOWN PROCESS";
      }

      if ([v1436 count])
      {
        allObjects2 = [v1436 allObjects];
        uuid = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_11];
        v1460 = [uuid componentsJoinedByString:{@", "}];
      }

      else
      {
        v1460 = 0;
      }

      if ([v1433 count])
      {
        allObjects3 = [v1433 allObjects];
        uuid = [allObjects3 sortedArrayUsingComparator:&__block_literal_global_11];
        v139 = [uuid componentsJoinedByString:{@", "}];
      }

      else
      {
        v139 = 0;
      }

      if (mainBinary)
      {
        lastObject2 = [v1439 lastObject];
        v1411 = *p_isa;
        path = [mainBinary path];
        uuid = path;
        v142 = @"UNKNOWN PATH";
        if (path)
        {
          v142 = path;
        }

        v1410 = v142;
      }

      else
      {
        lastObject2 = 0;
        v1411 = *p_isa;
        v1410 = @"MULTIPLE PATHS";
      }

      bundleIdentifier = [mainBinary bundleIdentifier];
      bundleVersion = [mainBinary bundleVersion];
      bundleShortVersion = [mainBinary bundleShortVersion];
      bundleBuildVersion = [lastObject2 bundleBuildVersion];
      bundleProjectName = [lastObject2 bundleProjectName];
      bundleSourceVersion = [lastObject2 bundleSourceVersion];
      bundleProductBuildVersion = [lastObject2 bundleProductBuildVersion];
      adamID = [lastObject2 adamID];
      installerVersionID = [lastObject2 installerVersionID];
      developerType = [lastObject2 developerType];
      appType = [lastObject2 appType];
      j = [lastObject2 isBeta];
      cohortID = [lastObject2 cohortID];
      vendorID = [lastObject2 vendorID];
      distributorID = [lastObject2 distributorID];
      codesigningID = [lastObject2 codesigningID];
      teamID = [lastObject2 teamID];
      if (lastObject2)
      {
        v146 = [(SASamplePrinter *)v1542 architectureStringForTask:lastObject2];
      }

      else
      {
        v146 = 0;
      }

      *&v1405 = bundleVersion;
      *(&v1405 + 1) = bundleShortVersion;
      -[SASamplePrinter addTaskHeaderToStream:displayName:pid:mainBinary:mainBinaryPath:sharedCaches:uid:bundleIdentifier:bundleVersion:bundleShortVersion:bundleBuildVersion:bundleProjectName:bundleSourceVersion:bundleProductBuildVersion:adamID:installerVersionID:developerType:appType:isBeta:cohortID:vendorID:distributorID:codesigningID:teamID:resourceCoalitionSampleCounts:onBehalfOfProcesses:architectureString:kernelVersion:parentName:responsibleName:taskExecedFromName:taskExecedToName:forkTimestamp:startTimestamp:endTimestamp:startSampleIndex:endSampleIndex:numSamples:totalNumSamples:numSamplesSuspended:numSamplesTerminated:startingTaskSize:endingTaskSize:maxTaskSize:startSampleIndexOfMaxTaskSize:endSampleIndexOfMaxTaskSize:numPageins:cpuTimeNs:cpuInstructions:cpuCycles:nonThreadCpuTimeNs:nonThreadCpuInstructions:nonThreadCpuCycles:usesSuddenTermination:allowsIdleExit:memoryLimitStr:jetsamPriorityStr:isTranslocated:hardenedHeap:mteCheckedAllocationsEnabled:mteUserDataAllocationsTagged:mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:](v1542, v1411, v1484, 0xFFFFFFFFLL, mainBinary, v1410, 0, 4294966982, 0.0, bundleIdentifier, v1405, bundleBuildVersion, bundleProjectName, bundleSourceVersion, bundleProductBuildVersion, adamID, installerVersionID, developerType, appType, j, cohortID, vendorID, codesigningID, teamID, v1443, v1512, v146, v1456, v1460, v139, 0, 0, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, [lastObject2 isTranslocated], v1463 & 1, v1479 & 1, v1466 & 1, v1470 & 1, v1474 & 1);
      if (lastObject2)
      {
      }

      if (mainBinary)
      {
      }

      [*p_isa printWithFormat:@"%-*s%lu\n", 18, "Number of Instances: ", objc_msgSend(v1439, "count")];
      [*p_isa appendString:@"\n"];

      goto LABEL_231;
    }

    v1474 = 0;
    v1470 = 0;
    v1466 = 0;
    v1479 = 0;
    v1463 = 0;
    v1456 = 0;
    v1445 = *v1634;
LABEL_128:
    v89 = 0;
    while (1)
    {
      if (*v1634 != v1445)
      {
        v90 = v89;
        objc_enumerationMutation(v1439);
        v89 = v90;
      }

      v1459 = v89;
      v1511 = *(*(&v1633 + 1) + 8 * v89);
      startTimestamp = [v1511 startTimestamp];
      endTimestamp = [v1511 endTimestamp];
      if (!mainBinary)
      {
        mainBinary = 0;
        goto LABEL_143;
      }

      mainBinary2 = [v1511 mainBinary];
      v92 = mainBinary2;
      if (!mainBinary2)
      {
        goto LABEL_140;
      }

      uuid2 = [mainBinary2 uuid];
      uuid3 = [mainBinary uuid];
      if (([uuid2 isEqual:uuid3] & 1) == 0)
      {

LABEL_140:
        path6 = mainBinary;
        mainBinary = 0;
        goto LABEL_141;
      }

      path2 = [v92 path];
      if (!path2)
      {
        goto LABEL_188;
      }

      path3 = [mainBinary path];
      if (!path3)
      {
        break;
      }

      path4 = [v92 path];
      path5 = [mainBinary path];
      v99 = [path4 isEqual:path5];

      if ((v99 & 1) == 0)
      {
        goto LABEL_140;
      }

LABEL_189:
      path6 = [mainBinary path];
      if (!path6)
      {
        path7 = [v92 path];
        v130 = path7 == 0;

        if (v130)
        {
          goto LABEL_142;
        }

        v131 = v92;
        path6 = mainBinary;
        mainBinary = v131;
      }

LABEL_141:

LABEL_142:
LABEL_143:
      uuid = [(SASamplePrinter *)v1542 rawNameForTask:v1511];
      v101 = SACopySanitizedStringWhitespaceOnlyNullable(uuid);
      v102 = v101;
      v103 = @"UNKNOWN PROCESS";
      if (v101)
      {
        v103 = v101;
      }

      v1496 = v103;

      [v1449 addObject:v1496];
      ppid = [v1511 ppid];
      if (ppid != -1 && ppid != [v1511 pid])
      {
        v105 = [(SASampleStore *)*v1488 lastTaskWithPid:ppid onOrBeforeTimestamp:endTimestamp];
        if (v105)
        {
          v106 = v105;

          goto LABEL_150;
        }

        v106 = [(SASampleStore *)*v1488 firstTaskWithPid:ppid];

        if (v106)
        {
LABEL_150:
          v107 = [(SASamplePrinter *)v1542 displayNameForTask:v106];
          [v1436 addObject:v107];
        }

        else
        {
          v106 = [(SASamplePrinter *)v1542 displayNameForPid:ppid threadId:0 timestamp:startTimestamp];
          [v1436 addObject:v106];
        }
      }

      rpid = [v1511 rpid];
      if (rpid < 1 || rpid == [v1511 pid])
      {
        goto LABEL_159;
      }

      v109 = [(SASampleStore *)*v1488 lastTaskWithPid:rpid onOrBeforeTimestamp:endTimestamp];
      if (v109)
      {
        v110 = v109;
      }

      else
      {
        v110 = [(SASampleStore *)*v1488 firstTaskWithPid:rpid];

        if (!v110)
        {
          v110 = [(SASamplePrinter *)v1542 displayNameForPid:rpid threadId:0 timestamp:startTimestamp];
          [v1433 addObject:v110];
          goto LABEL_158;
        }
      }

      v111 = [(SASamplePrinter *)v1542 displayNameForTask:v110];
      [v1433 addObject:v111];

LABEL_158:
LABEL_159:
      if ([v1511 resourceCoalitionID])
      {
        v112 = [SASamplePrinter displayStringForResourceCoalition:v1511];
        [v1443 setObject:&unk_1F5BDCA90 forKeyedSubscript:v112];
      }

      v1632 = 0u;
      v1631 = 0u;
      v1630 = 0u;
      v1629 = 0u;
      threads = [v1511 threads];
      v114 = [threads countByEnumeratingWithState:&v1629 objects:v1667 count:16];
      if (v114)
      {
        v115 = *v1630;
        do
        {
          v116 = 0;
          do
          {
            if (*v1630 != v115)
            {
              objc_enumerationMutation(threads);
            }

            v117 = [*(v1542 + 152) objectForKeyedSubscript:*(*(&v1629 + 1) + 8 * v116)];
            v118 = v117;
            if (v117)
            {
              threadState = [v117 threadState];
              startTimestamp2 = [threadState startTimestamp];
              if ([startTimestamp2 gt:*(v1542 + 40)])
              {

LABEL_169:
                goto LABEL_171;
              }

              threadState2 = [v118 threadState];
              endTimestamp2 = [threadState2 endTimestamp];
              uuid = [endTimestamp2 lt:*(v1542 + 32)];

              if ((uuid & 1) == 0)
              {
                if ([v118 isPartOfADeadlock])
                {
                  uuid = [v118 thread];
                  threadState3 = [v118 threadState];
                  threadState = [(SASamplePrinter *)v1542 displayNameForTask:uuid thread:threadState3 threadState:?];

                  [obja addObject:threadState];
                  goto LABEL_169;
                }

                if ([v118 isBlockedByADeadlock])
                {
                  uuid = [v118 thread];
                  threadState4 = [v118 threadState];
                  threadState = [(SASamplePrinter *)v1542 displayNameForTask:uuid thread:threadState4 threadState:?];

                  [v1519 addObject:threadState];
                  goto LABEL_169;
                }
              }
            }

LABEL_171:

            ++v116;
          }

          while (v114 != v116);
          v125 = [threads countByEnumeratingWithState:&v1629 objects:v1667 count:16];
          v114 = v125;
        }

        while (v125);
      }

      if (![v1511 pid] && !v1456)
      {
        [startTimestamp wallTime];
        v127 = [(SASamplePrinter *)v1542 kernelVersionAtWallTime:v126];
        uuid = v127;
        if (!v127 || (SACopySanitizedString(v127, 1, 0), v1456 = objc_claimAutoreleasedReturnValue(), uuid, !v1456))
        {
          v1456 = @"???";
        }
      }

      hardenedHeap = [v1511 hardenedHeap];
      if (v1511)
      {
        v1479 |= v1511[75];
        v1466 |= v1511[76];
        v1470 |= v1511[77];
        v1474 |= v1511[78];
      }

      v1463 |= hardenedHeap;
      v89 = v1459 + 1;
      if (v1459 + 1 == v1452)
      {
        v132 = [v1439 countByEnumeratingWithState:&v1633 objects:v1668 count:16];
        v1452 = v132;
        if (!v132)
        {
          goto LABEL_203;
        }

        goto LABEL_128;
      }
    }

LABEL_188:
    goto LABEL_189;
  }

  v87 = *(v1542 + 136);
  if (v87)
  {
    targetProcess = v87;
  }

  else
  {
    targetProcess = [*v1488 targetProcess];

    if (!targetProcess)
    {
      v375 = *__error();
      v376 = _sa_logt();
      if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
      {
        targetProcessId = [*v1488 targetProcessId];
        *v1677 = 67109120;
        *&v1677[4] = targetProcessId;
        _os_log_error_impl(&dword_1E0E2F000, v376, OS_LOG_TYPE_ERROR, "No task for target pid %d", v1677, 8u);
      }

      v1442 = 0;
      *__error() = v375;
      goto LABEL_232;
    }
  }

  if (printJson)
  {
    v133 = *p_isa;
    v134 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(targetProcess, "pid")}];
    SAJSONWriteDictionaryEntry(v133, @"targetTaskPid", v134);

LABEL_231:
    v1442 = 0;
LABEL_232:
    v86 = 0.0;
    goto LABEL_233;
  }

  startTimestamp3 = [targetProcess startTimestamp];
  endTimestamp3 = [targetProcess endTimestamp];
  ppid2 = [targetProcess ppid];
  if (ppid2 == -1 || ppid2 == [targetProcess pid])
  {
    v1497 = 0;
  }

  else
  {
    v377 = [(SASampleStore *)*v1488 lastTaskWithPid:ppid2 onOrBeforeTimestamp:endTimestamp3];
    if (v377)
    {
      v378 = v377;
    }

    else
    {
      v378 = [(SASampleStore *)*v1488 firstTaskWithPid:ppid2];

      if (!v378)
      {
        v1497 = [(SASamplePrinter *)v1542 displayNameForPid:ppid2 threadId:0 timestamp:startTimestamp3];
        goto LABEL_1307;
      }
    }

    v1497 = [(SASamplePrinter *)v1542 displayNameForTask:v378];
  }

LABEL_1307:
  rpid2 = [targetProcess rpid];
  if (rpid2 < 1 || rpid2 == [targetProcess pid])
  {
    v1494 = 0;
  }

  else
  {
    v1198 = [(SASampleStore *)*v1488 lastTaskWithPid:rpid2 onOrBeforeTimestamp:endTimestamp3];
    if (v1198)
    {
      v1199 = v1198;
    }

    else
    {
      v1199 = [(SASampleStore *)*v1488 firstTaskWithPid:rpid2];

      if (!v1199)
      {
        v1494 = [(SASamplePrinter *)v1542 displayNameForPid:rpid2 threadId:0 timestamp:startTimestamp3];
        goto LABEL_1314;
      }
    }

    v1494 = [(SASamplePrinter *)v1542 displayNameForTask:v1199];
  }

LABEL_1314:
  if ([targetProcess resourceCoalitionID])
  {
    v1200 = [SASamplePrinter displayStringForResourceCoalition:targetProcess];
    v1665 = v1200;
    v1666 = &unk_1F5BDCA90;
    v1486 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1666 forKeys:&v1665 count:1];
  }

  else
  {
    v1486 = 0;
  }

  v1664 = targetProcess;
  v1201 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1664 count:1];
  v1481 = [(SASamplePrinter *)v1542 displayStringForOnBehalfOfForTasks:v1201 includePid:1u];

  v1628 = 0u;
  v1627 = 0u;
  v1626 = 0u;
  v1625 = 0u;
  threads2 = [targetProcess threads];
  v1203 = [threads2 countByEnumeratingWithState:&v1625 objects:v1663 count:16];
  if (!v1203)
  {
    v1516 = 0;
    objj = 0;
    goto LABEL_1340;
  }

  v1516 = 0;
  objj = 0;
  v1204 = *v1626;
  do
  {
    v1205 = 0;
    do
    {
      if (*v1626 != v1204)
      {
        objc_enumerationMutation(threads2);
      }

      v1206 = [*(v1542 + 152) objectForKeyedSubscript:*(*(&v1625 + 1) + 8 * v1205)];
      v1207 = v1206;
      if (v1206)
      {
        threadState5 = [v1206 threadState];
        startTimestamp4 = [threadState5 startTimestamp];
        if ([startTimestamp4 gt:*(v1542 + 40)])
        {

          goto LABEL_1325;
        }

        threadState6 = [v1207 threadState];
        endTimestamp4 = [threadState6 endTimestamp];
        v1212 = [endTimestamp4 lt:*(v1542 + 32)];

        if ((v1212 & 1) == 0)
        {
          if ([v1207 isPartOfADeadlock])
          {
            thread = [v1207 thread];
            threadState7 = [v1207 threadState];
            threadState5 = [(SASamplePrinter *)v1542 displayNameForTask:thread thread:threadState7 threadState:?];

            v1215 = objj;
            if (objj)
            {
              goto LABEL_1331;
            }

            objj = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState5, 0}];
            goto LABEL_1325;
          }

          if ([v1207 isBlockedByADeadlock])
          {
            thread2 = [v1207 thread];
            threadState8 = [v1207 threadState];
            threadState5 = [(SASamplePrinter *)v1542 displayNameForTask:thread2 thread:threadState8 threadState:?];

            v1215 = v1516;
            if (v1516)
            {
LABEL_1331:
              [v1215 addObject:threadState5];
            }

            else
            {
              v1516 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState5, 0}];
            }

LABEL_1325:
          }
        }
      }

      ++v1205;
    }

    while (v1203 != v1205);
    v1218 = [threads2 countByEnumeratingWithState:&v1625 objects:v1663 count:16];
    v1203 = v1218;
  }

  while (v1218);
LABEL_1340:

  [objj sortUsingComparator:&__block_literal_global_64];
  [v1516 sortUsingComparator:&__block_literal_global_64];
  if ([targetProcess pid])
  {
    v1509 = 0;
  }

  else
  {
    startTimestamp5 = [targetProcess startTimestamp];
    [startTimestamp5 wallTime];
    v1221 = [(SASamplePrinter *)v1542 kernelVersionAtWallTime:v1220];

    if (!v1221 || (SACopySanitizedString(v1221, 1, 0), v1509 = objc_claimAutoreleasedReturnValue(), v1221, !v1509))
    {
      v1509 = @"???";
    }
  }

  v1435 = *(v1542 + 8);
  v1222 = [(SASamplePrinter *)v1542 rawNameForTask:targetProcess];
  v1223 = SACopySanitizedStringWhitespaceOnlyNullable(v1222);
  v1224 = v1223;
  v1225 = @"UNKNOWN PROCESS";
  if (v1223)
  {
    v1225 = v1223;
  }

  v1425 = v1225;
  v1423 = [targetProcess pid];
  mainBinaryPath = [targetProcess mainBinaryPath];
  j = mainBinaryPath;
  v1227 = @"UNKNOWN PATH";
  if (mainBinaryPath)
  {
    v1227 = mainBinaryPath;
  }

  v1421 = v1227;
  bundleIdentifier2 = [targetProcess bundleIdentifier];
  bundleVersion2 = [targetProcess bundleVersion];
  bundleShortVersion2 = [targetProcess bundleShortVersion];
  bundleBuildVersion2 = [targetProcess bundleBuildVersion];
  bundleProjectName2 = [targetProcess bundleProjectName];
  bundleSourceVersion2 = [targetProcess bundleSourceVersion];
  bundleProductBuildVersion2 = [targetProcess bundleProductBuildVersion];
  adamID2 = [targetProcess adamID];
  installerVersionID2 = [targetProcess installerVersionID];
  developerType2 = [targetProcess developerType];
  appType2 = [targetProcess appType];
  isBeta = [targetProcess isBeta];
  cohortID2 = [targetProcess cohortID];
  vendorID2 = [targetProcess vendorID];
  distributorID2 = [targetProcess distributorID];
  codesigningID2 = [targetProcess codesigningID];
  teamID2 = [targetProcess teamID];
  teamID = [(SASamplePrinter *)v1542 architectureStringForTask:targetProcess];
  forkTimestamp = [targetProcess forkTimestamp];
  *&v1406 = bundleVersion2;
  *(&v1406 + 1) = bundleShortVersion2;
  -[SASamplePrinter addTaskHeaderToStream:displayName:pid:mainBinary:mainBinaryPath:sharedCaches:uid:bundleIdentifier:bundleVersion:bundleShortVersion:bundleBuildVersion:bundleProjectName:bundleSourceVersion:bundleProductBuildVersion:adamID:installerVersionID:developerType:appType:isBeta:cohortID:vendorID:distributorID:codesigningID:teamID:resourceCoalitionSampleCounts:onBehalfOfProcesses:architectureString:kernelVersion:parentName:responsibleName:taskExecedFromName:taskExecedToName:forkTimestamp:startTimestamp:endTimestamp:startSampleIndex:endSampleIndex:numSamples:totalNumSamples:numSamplesSuspended:numSamplesTerminated:startingTaskSize:endingTaskSize:maxTaskSize:startSampleIndexOfMaxTaskSize:endSampleIndexOfMaxTaskSize:numPageins:cpuTimeNs:cpuInstructions:cpuCycles:nonThreadCpuTimeNs:nonThreadCpuInstructions:nonThreadCpuCycles:usesSuddenTermination:allowsIdleExit:memoryLimitStr:jetsamPriorityStr:isTranslocated:hardenedHeap:mteCheckedAllocationsEnabled:mteUserDataAllocationsTagged:mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:](v1542, v1435, v1425, v1423, 0, v1421, 0, 4294966982, 0.0, bundleIdentifier2, v1406, bundleBuildVersion2, bundleProjectName2, bundleSourceVersion2, bundleProductBuildVersion2, adamID2, installerVersionID2, developerType2, appType2, isBeta, cohortID2, vendorID2, codesigningID2, teamID2, v1486, v1481, teamID, v1509, v1497, v1494, 0, 0, forkTimestamp, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, [targetProcess isTranslocated], objc_msgSend(targetProcess, "hardenedHeap"), targetProcess[75] & 1, targetProcess[76] & 1, targetProcess[77] & 1, targetProcess[78] & 1);

  [*(v1542 + 8) appendString:@"\n"];
  if (hidEventTimestamp && *v1488 && (*(*v1488 + 404) & 1) != 0)
  {
    v86 = 0.0;
    if ([hidEventTimestamp lt:*(v1542 + 32)] && (objc_msgSend(*(v1542 + 32), "machAbsTimeSeconds"), v1233 = v1232, objc_msgSend(hidEventTimestamp, "machAbsTimeSeconds"), v1235 = v1233 - v1234, -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](v1542, v1235)))
    {
      v1236 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v1235 >= 0.1)
      {
        v1237 = [v1236 initWithFormat:@"HID event started %.1f seconds before sampling", *&v1235];
      }

      else
      {
        v1237 = [v1236 initWithFormat:@"HID event started <0.1 seconds before sampling"];
      }

      v1242 = v1237;
      v86 = v1235 + 0.0;
    }

    else
    {
      v1242 = 0;
    }

    v1442 = v1242;
    if (timestamp)
    {
      if ([timestamp gt:*(v1542 + 40)])
      {
        [timestamp machAbsTimeSeconds];
        v1358 = v1357;
        [*(v1542 + 40) machAbsTimeSeconds];
        v1360 = v1358 - v1359;
        if ([(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:v1360])
        {
          v1361 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (v1360 >= 0.1)
          {
            v1362 = [v1361 initWithFormat:@"HID event ended %.1f seconds after sampling", *&v1360];
          }

          else
          {
            v1362 = [v1361 initWithFormat:@"HID event ended <0.1 seconds after sampling"];
          }

          v1363 = v1362;
          if (v1442)
          {
            v1362 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", v1442, v1362];

            v1442 = v1362;
          }

          else
          {
            v1442 = v1362;
          }

          v86 = v86 + v1360;
        }
      }
    }
  }

  else
  {
    v86 = 0.0;
    if ([targetProcess isUnresponsive] && (objc_msgSend(targetProcess, "timeOfLastResponse"), v1239 = v1238, v1238 > 0.0) && (objc_msgSend(*(v1542 + 32), "wallTime"), v1239 < v1240) && (v1241 = v1240 - v1239, -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](v1542, v1241)))
    {
      v1442 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"process was unresponsive for %.0f seconds before sampling", *&v1241];
      v86 = v1241;
    }

    else
    {
      v1442 = 0;
    }
  }

LABEL_233:
LABEL_234:
  targetProcess2 = [*v1488 targetProcess];
  if (targetProcess2 && (v148 = *(v1542 + 136)) != 0)
  {
    targetProcess3 = [*v1488 targetProcess];
    v150 = v148 == targetProcess3;

    if (!v150)
    {
      v151 = *(v1542 + 8);
      targetProcess2 = [*(v1542 + 168) targetProcess];
      v152 = [(SASamplePrinter *)v1542 displayNameForTask:targetProcess2];
      v153 = v152;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v151, @"affectedProcess", v152);
      }

      else
      {
        [v151 printWithFormat:@"%-*s%@\n", 18, "Affected Process: ", v152];
      }

      goto LABEL_241;
    }
  }

  else
  {
LABEL_241:
  }

  event = [*v1488 event];
  eventNote = [*v1488 eventNote];
  v1450 = eventNote;
  if (__PAIR128__(event, eventNote) != 0)
  {
    if (eventNote)
    {
      v155 = objc_alloc(MEMORY[0x1E696AEC0]);
      v156 = event;
      if (!event)
      {
        v156 = @"???";
      }

      v1450 = [v155 initWithFormat:@"%@ (%@)", v156, v1450];
    }

    else
    {
      v1450 = event;
    }

    v158 = v1450;
    v159 = *p_isa;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v159, @"event", v158);
    }

    else
    {
      [v159 printWithFormat:@"%-*s%@\n", 18, "Event: ", v158];
    }
  }

  signature = [*v1488 signature];

  if (signature)
  {
    v161 = *p_isa;
    signature2 = [*v1488 signature];
    v163 = signature2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v161, @"signature", signature2);
    }

    else
    {
      v164 = SACopySanitizedString(signature2, 1, 0xFFuLL);
      [v161 printWithFormat:@"%-*s%@\n", 18, "Signature: ", v164];
    }
  }

  if ([*v1488 targetDispatchQueueId])
  {
    targetProcess4 = [*v1488 targetProcess];
    dispatchQueues = [targetProcess4 dispatchQueues];
    teamID = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetDispatchQueueId")}];
    v167 = [dispatchQueues objectForKeyedSubscript:teamID];

    if (v167)
    {
      v168 = *p_isa;
      if (printJson)
      {
        v169 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetDispatchQueueId")}];
        SAJSONWriteDictionaryEntry(v168, @"targetDispatchQueueId", v169);

        dispatchQueueLabel = [v167 dispatchQueueLabel];

        if (dispatchQueueLabel)
        {
          v171 = *p_isa;
          dispatchQueueLabel2 = [v167 dispatchQueueLabel];
          SAJSONWriteDictionaryEntry(v171, @"targetDispatchQueueLabel", dispatchQueueLabel2);
          goto LABEL_263;
        }
      }

      else
      {
        dispatchQueueLabel2 = [SASamplePrinter displayNameForDispatchQueue:v167];
        [v168 printWithFormat:@"%-*s%@\n", 18, "Dispatch Queue: ", dispatchQueueLabel2];
LABEL_263:
      }
    }
  }

  if ([*v1488 targetThreadId])
  {
    v173 = *p_isa;
    if (printJson)
    {
      v174 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetThreadId")}];
      SAJSONWriteDictionaryEntry(v173, @"targetThreadId", v174);
    }

    else
    {
      [v173 printWithFormat:@"%-*s0x%llx\n", 18, "Thread: ", objc_msgSend(*v1488, "targetThreadId")];
    }
  }

  issueType = [*v1488 issueType];

  if (issueType)
  {
    v176 = *p_isa;
    issueType2 = [*v1488 issueType];
    v178 = issueType2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v176, @"issueType", issueType2);
    }

    else
    {
      v179 = SACopySanitizedString(issueType2, 1, 0);
      [v176 printWithFormat:@"%-*s%@\n", 18, "Issue type: ", v179];
    }
  }

  mitigationReason = [*v1488 mitigationReason];

  if (mitigationReason)
  {
    v181 = *p_isa;
    mitigationReason2 = [*v1488 mitigationReason];
    v183 = mitigationReason2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v181, @"mitigationReason", mitigationReason2);
    }

    else
    {
      v184 = SACopySanitizedString(mitigationReason2, 1, 0);
      [v181 printWithFormat:@"%-*s%@\n", 18, "Mitigation reason: ", v184];
    }
  }

  actionTaken = [*v1488 actionTaken];

  if (actionTaken)
  {
    v186 = *p_isa;
    actionTaken2 = [*v1488 actionTaken];
    v188 = actionTaken2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v186, @"actionTaken", actionTaken2);
    }

    else
    {
      v189 = SACopySanitizedString(actionTaken2, 1, 0);
      [v186 printWithFormat:@"%-*s%@\n", 18, "Action taken: ", v189];
    }
  }

  detector = [*v1488 detector];

  if (detector)
  {
    v191 = *p_isa;
    detector2 = [*v1488 detector];
    v193 = detector2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v191, @"detector", detector2);
    }

    else
    {
      v194 = SACopySanitizedString(detector2, 1, 0);
      [v191 printWithFormat:@"%-*s%@\n", 18, "Detector: ", v194];
    }
  }

  [*v1488 cpuUsed];
  if (v195 > 0.0)
  {
    [*v1488 cpuDuration];
    if (v196 > 0.0)
    {
      if (printJson)
      {
        v197 = *p_isa;
        v198 = MEMORY[0x1E696AD98];
        [*v1488 cpuUsed];
        v199 = [v198 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v197, @"cpuUsed", v199);

        v200 = *p_isa;
        v201 = MEMORY[0x1E696AD98];
        [*v1488 cpuDuration];
        v202 = [v201 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v200, @"cpuDuration", v202);

        v203 = *p_isa;
        v204 = MEMORY[0x1E696AD98];
        [*v1488 cpuLimit];
        v205 = [v204 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v203, @"cpuLimit", v205);

        v206 = *p_isa;
        v207 = MEMORY[0x1E696AD98];
        [*v1488 cpuLimitDuration];
        v208 = [v207 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v206, @"cpuLimitDuration", v208);
      }

      else
      {
        v209 = *(v1542 + 168);
        *(v1542 + 112) = 1;
        [v209 cpuUsed];
        v211 = v210;
        [*(v1542 + 168) cpuDuration];
        v213 = v212;
        v214 = *(v1542 + 8);
        [*(v1542 + 168) cpuUsed];
        v216 = v215;
        [*(v1542 + 168) cpuDuration];
        [v214 printWithFormat:@"%-*s%.0f seconds cpu time over %.0f seconds (%.0f%% cpu average)", 18, "CPU: ", v216, v217, v211 * 100.0 / v213];
        [*(v1542 + 168) cpuLimit];
        if (v218 <= 0.0 || ([*v1488 cpuLimitDuration], v219 <= 0.0))
        {
          [*p_isa appendString:@"\n"];
        }

        else
        {
          [*v1488 cpuLimit];
          v221 = v220;
          [*v1488 cpuLimitDuration];
          v223 = v222;
          v224 = *p_isa;
          [*v1488 cpuLimitDuration];
          [v224 printWithFormat:@", exceeding limit of %.0f%% cpu over %.0f seconds\n", v221 * 100.0 / v223, v225];
        }

        v226 = *p_isa;
        [*v1488 cpuLimit];
        [v226 printWithFormat:@"%-*s%.0fs\n", 18, "CPU limit: ", v227];
        v228 = *p_isa;
        [*v1488 cpuLimitDuration];
        [v228 printWithFormat:@"%-*s%.0fs\n", 18, "Limit duration: ", v229];
        v230 = *p_isa;
        [*v1488 cpuUsed];
        [v230 printWithFormat:@"%-*s%.0fs\n", 18, "CPU used: ", v231];
        v232 = *p_isa;
        [*v1488 cpuDuration];
        [v232 printWithFormat:@"%-*s%.0fs\n", 18, "CPU duration: ", v233];
      }
    }
  }

  if ([*v1488 numWakeups])
  {
    [*v1488 wakeupsDuration];
    if (v234 > 0.0)
    {
      if (printJson)
      {
        v235 = *p_isa;
        v236 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "numWakeups")}];
        SAJSONWriteDictionaryEntry(v235, @"numWakeups", v236);

        v237 = *p_isa;
        v238 = MEMORY[0x1E696AD98];
        [*v1488 wakeupsDuration];
        v239 = [v238 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v237, @"wakeupsDuration", v239);

        v240 = *p_isa;
        v241 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "numWakeupsLimit")}];
        SAJSONWriteDictionaryEntry(v240, @"numWakeupsLimit", v241);

        v242 = *p_isa;
        v243 = MEMORY[0x1E696AD98];
        [*v1488 wakeupsLimitDuration];
        v244 = [v243 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v242, @"wakeupsLimitDuration", v244);
      }

      else
      {
        teamID = (v1542 + 168);
        v245 = *(v1542 + 168);
        *(v1542 + 112) = 1;
        numWakeups = [v245 numWakeups];
        [*(v1542 + 168) wakeupsDuration];
        v248 = v247;
        v249 = *(v1542 + 8);
        numWakeups2 = [*(v1542 + 168) numWakeups];
        [*(v1542 + 168) wakeupsDuration];
        [v249 printWithFormat:@"%-*s%llu wakeups over the last %.0f seconds (%.0f wakeups per second average)", 18, "Wakeups: ", numWakeups2, v251, numWakeups / v248];
        if ([*(v1542 + 168) numWakeupsLimit] && (objc_msgSend(*v1488, "wakeupsLimitDuration"), v252 > 0.0))
        {
          numWakeupsLimit = [*v1488 numWakeupsLimit];
          [*v1488 wakeupsLimitDuration];
          v255 = v254;
          v256 = *p_isa;
          [*v1488 wakeupsLimitDuration];
          [v256 printWithFormat:@", exceeding limit of %.0f wakeups per second over %.0f seconds\n", numWakeupsLimit / v255, v257];
        }

        else
        {
          [*p_isa appendString:@"\n"];
        }

        [*p_isa printWithFormat:@"%-*s%llu\n", 18, "Wakeups limit: ", objc_msgSend(*v1488, "numWakeupsLimit")];
        v258 = *p_isa;
        [*v1488 wakeupsLimitDuration];
        [v258 printWithFormat:@"%-*s%.0fs\n", 18, "Limit duration: ", v259];
        [*p_isa printWithFormat:@"%-*s%llu\n", 18, "Wakeups caused: ", objc_msgSend(*v1488, "numWakeups")];
        v260 = *p_isa;
        [*v1488 wakeupsDuration];
        [v260 printWithFormat:@"%-*s%.0fs\n", 18, "Wakeups duration: ", v261];
      }
    }
  }

  if ([*v1488 bytesWritten])
  {
    [*v1488 writeDuration];
    if (v262 > 0.0)
    {
      if (printJson)
      {
        v263 = *p_isa;
        v264 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "bytesWritten")}];
        SAJSONWriteDictionaryEntry(v263, @"bytesWritten", v264);

        v265 = *p_isa;
        v266 = MEMORY[0x1E696AD98];
        [*v1488 writeDuration];
        v267 = [v266 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v265, @"writeDuration", v267);

        v268 = *p_isa;
        v269 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "bytesWrittenLimit")}];
        SAJSONWriteDictionaryEntry(v268, @"bytesWrittenLimit", v269);

        v270 = *p_isa;
        v271 = MEMORY[0x1E696AD98];
        [*v1488 writeLimitDuration];
        v272 = [v271 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v270, @"writeLimitDuration", v272);
      }

      else
      {
        v273 = *(v1542 + 168);
        *(v1542 + 112) = 1;
        teamID = [v273 bytesWritten];
        [*(v1542 + 168) writeDuration];
        v275 = v274;
        v276 = *(v1542 + 8);
        v277 = SAFormattedBytesEx([*(v1542 + 168) bytesWritten], 0, 0, 1, 0);
        [*(v1542 + 168) writeDuration];
        v279 = v278;
        v280 = SAFormattedBytesDouble(0, 0, teamID / v275);
        [v276 printWithFormat:@"%-*s%@ of file backed memory dirtied over %.0f seconds (%@ per second average)", 18, "Writes: ", v277, v279, v280];

        if ([*(v1542 + 168) bytesWrittenLimit] && (objc_msgSend(*v1488, "writeLimitDuration"), v281 > 0.0))
        {
          bytesWrittenLimit = [*v1488 bytesWrittenLimit];
          [*v1488 writeLimitDuration];
          v284 = *p_isa;
          v285 = SAFormattedBytesDouble(0, 0, bytesWrittenLimit / v283);
          [*v1488 writeLimitDuration];
          [v284 printWithFormat:@", exceeding limit of %@ per second over %.0f seconds\n", v285, v286];
        }

        else
        {
          [*p_isa appendString:@"\n"];
        }

        v287 = *p_isa;
        v288 = SAFormattedBytesEx([*v1488 bytesWrittenLimit], 0, 0, 1, 0);
        [v287 printWithFormat:@"%-*s%@\n", 18, "Writes limit: ", v288];

        v289 = *p_isa;
        [*v1488 writeLimitDuration];
        [v289 printWithFormat:@"%-*s%.0fs\n", 18, "Limit duration: ", v290];
        v291 = *p_isa;
        v292 = SAFormattedBytesEx([*v1488 bytesWritten], 0, 0, 1, 0);
        [v291 printWithFormat:@"%-*s%@\n", 18, "Writes caused: ", v292];

        v293 = *p_isa;
        [*v1488 writeDuration];
        [v293 printWithFormat:@"%-*s%.0fs\n", 18, "Writes duration: ", v294];
      }
    }
  }

  [*(v1542 + 168) attemptedSamplingInterval];
  v296 = v295;
  eventTimeRange = [*(v1542 + 168) eventTimeRange];
  [eventTimeRange deltaSecondsWithTimeDomainPriorityList:&unk_1F5BDCCB8 timeDomainUsed:0];
  v299 = v298;

  [*(v1542 + 32) deltaSecondsTo:*(v1542 + 40) timeDomainPriorityList:&unk_1F5BDCCD0 timeDomainUsed:0];
  v301 = v300;
  v302 = v296 + v300;
  if (v299 <= 0.0)
  {
    [*v1488 extraDuration];
    v299 = v86 + v302 + v303;
  }

  durationNote = [*v1488 durationNote];

  if (durationNote)
  {
    if (v1442)
    {
      v305 = objc_alloc(MEMORY[0x1E696AEC0]);
      durationNote2 = [*v1488 durationNote];
      v1442 = [v305 initWithFormat:@"%@, %@", durationNote2, v1442];
    }

    else
    {
      v1442 = [*v1488 durationNote];
    }

    goto LABEL_324;
  }

  if (v1442)
  {
    v1442 = v1442;
    goto LABEL_324;
  }

  eventTimeRange2 = [*v1488 eventTimeRange];

  if (!eventTimeRange2)
  {
    v1442 = 0;
    goto LABEL_324;
  }

  eventTimeRange3 = [*(v1542 + 168) eventTimeRange];
  startTime = [eventTimeRange3 startTime];
  [startTime deltaSecondsTo:*(v1542 + 32) timeDomainPriorityList:&unk_1F5BDCCE8 timeDomainUsed:0];
  v340 = v339;

  teamID = (v1542 + 168);
  eventTimeRange4 = [*(v1542 + 168) eventTimeRange];
  startTime2 = [eventTimeRange4 startTime];
  [startTime2 deltaSecondsTo:*(v1542 + 40) timeDomainPriorityList:&unk_1F5BDCD00 timeDomainUsed:0];
  v344 = v343;

  eventTimeRange5 = [*(v1542 + 168) eventTimeRange];
  endTime = [eventTimeRange5 endTime];
  [endTime deltaSecondsTo:*(v1542 + 32) timeDomainPriorityList:&unk_1F5BDCD18 timeDomainUsed:0];
  v348 = v347;

  eventTimeRange6 = [*(v1542 + 168) eventTimeRange];
  endTime2 = [eventTimeRange6 endTime];
  [endTime2 deltaSecondsTo:*(v1542 + 40) timeDomainPriorityList:&unk_1F5BDCD30 timeDomainUsed:0];
  v352 = v351;

  if (v348 > 0.0)
  {
    v353 = objc_alloc(MEMORY[0x1E696AEC0]);
    v354 = seconds_string_for_nanoseconds((v348 * 1000000000.0), 2);
    v1442 = [v353 initWithFormat:@"no overlap, event ends %@ before samples start", v354];

    goto LABEL_324;
  }

  if (v344 < 0.0)
  {
    v373 = objc_alloc(MEMORY[0x1E696AEC0]);
    v374 = seconds_string_for_nanoseconds((v344 * -1000000000.0), 2);
    v1442 = [v373 initWithFormat:@"no overlap, event starts %@ after samples end", v374];

    goto LABEL_324;
  }

  v379 = v296 + v352;
  if (![(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:?])
  {
    v340 = 0.0;
  }

  if (![(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:?])
  {
    v379 = 0.0;
  }

  if (v340 > 0.0)
  {
    v380 = @"event starts %@ before samples";
    v381 = 1000000000.0;
    goto LABEL_415;
  }

  if (v340 >= 0.0)
  {
    v385 = 0;
  }

  else
  {
    v380 = @"event starts %@ after samples start";
    v381 = -1000000000.0;
LABEL_415:
    v384 = objc_alloc(MEMORY[0x1E696AEC0]);
    v385 = seconds_string_for_nanoseconds((v340 * v381), 2);
    v385 = [v384 initWithFormat:v380, v385];
  }

  v1351 = v1542;
  if (v379 > 0.0)
  {
    v1352 = @"event ends %@ before samples end";
    v1353 = 1000000000.0;
    goto LABEL_1541;
  }

  if (v379 >= 0.0)
  {
    if (v385)
    {
      goto LABEL_1547;
    }

    v1355 = 0;
LABEL_1569:
    v1442 = 0;
    goto LABEL_1570;
  }

  v1352 = @"event ends %@ after samples";
  v1353 = -1000000000.0;
LABEL_1541:
  v1354 = objc_alloc(MEMORY[0x1E696AEC0]);
  teamID = seconds_string_for_nanoseconds((v379 * v1353), 2);
  v1355 = [v1354 initWithFormat:v1352, teamID];

  if (!v385)
  {
    v1351 = v1542;
    if (v1355)
    {
      v1355 = v1355;
      v1442 = v1355;
      goto LABEL_1570;
    }

    goto LABEL_1569;
  }

  v1351 = v1542;
  if (v1355)
  {
    v1442 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", v385, v1355];
    v1351 = v1542;
    goto LABEL_1570;
  }

LABEL_1547:
  v1442 = v385;
  v1355 = 0;
LABEL_1570:
  if (v340 > 0.0 || v379 < 0.0)
  {
    eventTimeRange7 = [*(v1351 + 168) eventTimeRange];
    startTime3 = [eventTimeRange7 startTime];
    if ([startTime3 isComparable:*(v1542 + 32)])
    {
      eventTimeRange8 = [*(v1542 + 168) eventTimeRange];
      startTime4 = [eventTimeRange8 startTime];
      if ([startTime4 ge:*(v1542 + 32)])
      {
        eventTimeRange9 = [*v1488 eventTimeRange];
        teamID = [eventTimeRange9 startTime];
      }

      else
      {
        teamID = *(v1542 + 32);
      }
    }

    else
    {
      teamID = 0;
    }

    eventTimeRange10 = [*(v1542 + 168) eventTimeRange];
    endTime3 = [eventTimeRange10 endTime];
    if ([endTime3 isComparable:*(v1542 + 40)])
    {
      eventTimeRange11 = [*(v1542 + 168) eventTimeRange];
      j = [eventTimeRange11 endTime];
      if ([j le:*(v1542 + 40)])
      {
        eventTimeRange12 = [*v1488 eventTimeRange];
        endTime4 = [eventTimeRange12 endTime];
      }

      else
      {
        endTime4 = *(v1542 + 40);
      }
    }

    else
    {
      endTime4 = 0;
    }

    if (teamID)
    {
      if (endTime4)
      {
        [(__CFString *)teamID deltaSecondsTo:endTime4 timeDomainPriorityList:&unk_1F5BDCD48 timeDomainUsed:0];
        v1376 = v296 + v1375;
        if ([(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:v299), v296 + v1375)])
        {
          v1377 = objc_alloc(MEMORY[0x1E696AEC0]);
          v1378 = seconds_string_for_nanoseconds((v1376 * 1000000000.0), 2);
          v1447 = [v1377 initWithFormat:@"%@ overlap, %@", v1378, v1442];

          v1442 = v1447;
        }
      }
    }
  }

LABEL_324:
  v307 = *p_isa;
  if (printJson)
  {
    v308 = [MEMORY[0x1E696AD98] numberWithDouble:v299];
    SAJSONWriteDictionaryEntry(v307, @"duration", v308);

    if (v299 > v302)
    {
      v309 = *p_isa;
      v310 = [MEMORY[0x1E696AD98] numberWithDouble:v302];
      SAJSONWriteDictionaryEntry(v309, @"sampledDuration", v310);
    }

    if (v1442)
    {
      SAJSONWriteDictionaryEntry(*p_isa, @"durationNote", v1442);
    }

    v311 = *(v1542 + 8);
    v312 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v1542 + 72)];
    SAJSONWriteDictionaryEntry(v311, @"numSamples", v312);

    v313 = *(v1542 + 168);
    if (v313 && v313[139])
    {
      v314 = *p_isa;
      v315 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      SAJSONWriteDictionaryEntry(v314, @"numPMIMicrostackshotsLost", v315);

      v313 = *v1488;
    }

    [v313 attemptedSamplingInterval];
    if (v316 > 0.0)
    {
      v317 = *p_isa;
      v318 = MEMORY[0x1E696AD98];
      [*v1488 attemptedSamplingInterval];
      v319 = [v318 numberWithDouble:?];
      SAJSONWriteDictionaryEntry(v317, @"attemptedSamplingInterval", v319);
    }

    kperfTriggers = [*v1488 kperfTriggers];

    if (kperfTriggers)
    {
      v321 = *p_isa;
      kperfTriggers2 = [*v1488 kperfTriggers];
      SAJSONWriteDictionaryEntry(v321, @"kperfTriggers", kperfTriggers2);
    }

    v323 = v1488;
    v324 = *v1488;
    if (*v1488)
    {
      if (!v324[137] || (v325 = *p_isa, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?], v326 = objc_claimAutoreleasedReturnValue(), SAJSONWriteDictionaryEntry(v325, @"pmiCycleIntervalMin", v326), v326, v323 = v1488, (v324 = *v1488) != 0))
      {
        if (v324[138])
        {
          v327 = *p_isa;
          v328 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(v327, @"pmiCycleIntervalMax", v328);

          goto LABEL_449;
        }
      }
    }

    goto LABEL_450;
  }

  [v307 printWithFormat:@"%-*s", 18, "Duration: "];
  v329 = *p_isa;
  v330 = (v299 * 1000000000.0);
  if (v299 >= 0.01)
  {
    v331 = 10000000;
    v332 = 2;
  }

  else
  {
    v331 = 1000000;
    v332 = 3;
  }

  if (v330 < v331)
  {
    [*p_isa appendString:@"<"];
    v330 = v331;
  }

  [v329 printWithFormat:@"%.*fs", v332, v330 / 1000000000.0];
  if (v299 != v302 && [(SASamplePrinter *)v1542 shouldPrintTimeOutsideSamplingRange:v302)])
  {
    [*p_isa appendString:@"\n"];
    [*p_isa printWithFormat:@"%-*s%.02fs", 18, "Duration Sampled: ", *&v302];
  }

  if (v1442)
  {
    v333 = *p_isa;
    v334 = SACopySanitizedString(v1442, 1, 0);
    [v333 printWithFormat:@" (%@)", v334];
  }

  [*(v1542 + 8) appendString:@"\n"];
  [*(v1542 + 8) printWithFormat:@"%-*s%lu", 18, "Steps: ", *(v1542 + 72)];
  if (![*(v1542 + 16) displayBody])
  {
    objb = 0;
    goto LABEL_365;
  }

  timeWhenTransitionedToSamplingAllProcesses = [*v1488 timeWhenTransitionedToSamplingAllProcesses];
  if (timeWhenTransitionedToSamplingAllProcesses)
  {
    teamID = [*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses];
    if (([(__CFString *)teamID lt:*(v1542 + 40)]& 1) != 0)
    {
      objb = 1;
      goto LABEL_363;
    }
  }

  timeWhenTransitionedToSamplingAllThreads = [*v1488 timeWhenTransitionedToSamplingAllThreads];
  if (!timeWhenTransitionedToSamplingAllThreads)
  {
    objb = 0;
    if (!timeWhenTransitionedToSamplingAllProcesses)
    {
      goto LABEL_364;
    }

    goto LABEL_363;
  }

  timeWhenTransitionedToSamplingAllThreads2 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
  objb = [timeWhenTransitionedToSamplingAllThreads2 lt:*(v1542 + 40)];

  if (timeWhenTransitionedToSamplingAllProcesses)
  {
LABEL_363:
  }

LABEL_364:

LABEL_365:
  if (v296 > 0.0)
  {
    goto LABEL_369;
  }

  stepsNote = [*v1488 stepsNote];
  if ((stepsNote != 0) | objb & 1 || ([*v1488 kperfTriggers], stepsNote = objc_claimAutoreleasedReturnValue(), objc_msgSend(stepsNote, "count")))
  {

    goto LABEL_369;
  }

  if (!*v1488)
  {

    goto LABEL_448;
  }

  v372 = *(*v1488 + 137) == 0;

  if (!v372)
  {
LABEL_369:
    objc_msgSend(*p_isa, "appendString:", @" (");
    kperfTriggers3 = [*v1488 kperfTriggers];
    v359 = [kperfTriggers3 count] == 0;

    if (!v359)
    {
      v1624 = 0u;
      v1623 = 0u;
      v1622 = 0u;
      v1621 = 0u;
      kperfTriggers4 = [*v1488 kperfTriggers];
      v361 = [kperfTriggers4 countByEnumeratingWithState:&v1621 objects:v1662 count:16];
      v1520 = v361 != 0;
      if (v361)
      {
        LOBYTE(j) = 0;
        v362 = *v1622;
        do
        {
          for (m = 0; m != v361; ++m)
          {
            if (*v1622 != v362)
            {
              objc_enumerationMutation(kperfTriggers4);
            }

            v364 = *(*(&v1621 + 1) + 8 * m);
            if (j)
            {
              [*p_isa appendString:{@", "}];
            }

            type = [v364 type];
            v366 = *p_isa;
            if (type == 2)
            {
              saos_printf_time_scaled(v366, [v364 timerPeriodNs]);
              [*p_isa appendString:@" sampling interval (on-cpu only)"];
            }

            else if (type == 1)
            {
              saos_printf_time_scaled(v366, [v364 timerPeriodNs]);
              [*p_isa appendString:@" sampling interval"];
            }

            else
            {
              [v366 printWithFormat:@"unknown trigger %llu", objc_msgSend(v364, "type")];
            }

            j = 1;
          }

          v361 = [kperfTriggers4 countByEnumeratingWithState:&v1621 objects:v1662 count:16];
        }

        while (v361);
      }

      goto LABEL_426;
    }

    if (v296 > 0.0)
    {
      saos_printf_time_scaled(*p_isa, (v296 * 1000000000.0));
      [*p_isa appendString:@" sampling interval"];
LABEL_425:
      v1520 = 1;
LABEL_426:
      v367 = v1488;
      goto LABEL_427;
    }

    v367 = v1488;
    v368 = *v1488;
    if (!*v1488 || (v369 = *(v368 + 1096)) == 0)
    {
      v1520 = 0;
      goto LABEL_427;
    }

    v370 = *(v368 + 1104);
    if (v369 % 0x3B9ACA00)
    {
      if (v369 != v370)
      {
        v371 = *p_isa;
        goto LABEL_417;
      }

LABEL_412:
      v383 = *p_isa;
      goto LABEL_418;
    }

    v382 = v370 % 0x3B9ACA00;
    if (v369 == v370)
    {
      if (v382)
      {
        goto LABEL_412;
      }

      v1356 = *p_isa;
    }

    else
    {
      v371 = *p_isa;
      if (v382)
      {
LABEL_417:
        [v371 printWithFormat:@"%llu-", v369];
        v368 = *v1488;
        v383 = *p_isa;
        if (!*v1488)
        {
LABEL_419:
          [v383 printWithFormat:@"%llu cycles/step", v368];
          goto LABEL_420;
        }

LABEL_418:
        v368 = *(v368 + 1104);
        goto LABEL_419;
      }

      [v371 printWithFormat:@"%llu-", v369 / 0x3B9ACA00];
      v368 = *v1488;
      v1356 = *p_isa;
      if (!*v1488)
      {
LABEL_1553:
        [v1356 printWithFormat:@"%llu gigacycles/step", v368];
LABEL_420:
        v367 = v1488;
        if (!*v1488 || !*(*v1488 + 139))
        {
          v1520 = 1;
LABEL_427:
          stepsNote2 = [*v367 stepsNote];

          if (stepsNote2)
          {
            if (v1520)
            {
              [*p_isa appendString:{@", "}];
            }

            v389 = *p_isa;
            stepsNote3 = [*v1488 stepsNote];
            v391 = SACopySanitizedString(stepsNote3, 1, 0);
            [v389 appendString:v391];

            if ((objb & 1) == 0)
            {
              goto LABEL_447;
            }
          }

          else
          {
            if ((objb & 1) == 0)
            {
LABEL_447:
              [*p_isa appendString:@""]);
              goto LABEL_448;
            }

            if (!v1520)
            {
LABEL_435:
              timeWhenTransitionedToSamplingAllProcesses2 = [*v1488 timeWhenTransitionedToSamplingAllProcesses];
              if (timeWhenTransitionedToSamplingAllProcesses2 && ([*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses], v393 = objc_claimAutoreleasedReturnValue(), v394 = objc_msgSend(v393, "lt:", *(v1542 + 40)), v393, timeWhenTransitionedToSamplingAllProcesses2, v394))
              {
                timeWhenTransitionedToSamplingAllThreads3 = [*v1488 timeWhenTransitionedToSamplingAllThreads];
                if (timeWhenTransitionedToSamplingAllThreads3 && ([*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads], v396 = objc_claimAutoreleasedReturnValue(), v397 = objc_msgSend(v396, "lt:", *(v1542 + 40)), v396, timeWhenTransitionedToSamplingAllThreads3, v397))
                {
                  timeWhenTransitionedToSamplingAllProcesses3 = [*v1488 timeWhenTransitionedToSamplingAllProcesses];
                  timeWhenTransitionedToSamplingAllThreads4 = [*v1488 timeWhenTransitionedToSamplingAllThreads];
                  v400 = [timeWhenTransitionedToSamplingAllProcesses3 ne:timeWhenTransitionedToSamplingAllThreads4];

                  if (v400)
                  {
                    v401 = *__error();
                    v402 = _sa_logt();
                    if (os_log_type_enabled(v402, OS_LOG_TYPE_DEBUG))
                    {
                      targetProcessId2 = [*(v1542 + 168) targetProcessId];
                      timeWhenTransitionedToSamplingAllThreads5 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
                      [timeWhenTransitionedToSamplingAllThreads5 machAbsTimeSeconds];
                      v1385 = v1384;
                      [*(v1542 + 32) machAbsTimeSeconds];
                      v1387 = v1386;
                      timeWhenTransitionedToSamplingAllProcesses4 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses];
                      [timeWhenTransitionedToSamplingAllProcesses4 machAbsTimeSeconds];
                      v1390 = v1389;
                      [*(v1542 + 32) machAbsTimeSeconds];
                      *v1677 = 67109632;
                      *&v1677[4] = targetProcessId2;
                      *&v1677[8] = 2048;
                      *&v1677[10] = v1385 - v1387;
                      *&v1677[18] = 2048;
                      *&v1677[20] = v1390 - v1391;
                      _os_log_debug_impl(&dword_1E0E2F000, v402, OS_LOG_TYPE_DEBUG, "[%d] Don't know how to report transitioning to non-main thread at a separate time than transitioning to all processes: threads %.3f processes %.3f", v1677, 0x1Cu);
                    }

                    *__error() = v401;
                  }

                  v403 = *(v1542 + 8);
                  timeWhenTransitionedToSamplingAllThreads6 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
                  [timeWhenTransitionedToSamplingAllThreads6 machAbsTimeSeconds];
                  v406 = v405;
                  [*(v1542 + 32) machAbsTimeSeconds];
                  [v403 printWithFormat:@"sampled only the main thread of the target process for %.2f seconds", v406 - v407];
                }

                else
                {
                  v412 = *(v1542 + 8);
                  timeWhenTransitionedToSamplingAllThreads6 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllProcesses];
                  [timeWhenTransitionedToSamplingAllThreads6 machAbsTimeSeconds];
                  v414 = v413;
                  [*(v1542 + 32) machAbsTimeSeconds];
                  [v412 printWithFormat:@"sampled only the target process for %.2f seconds", v414 - v415];
                }
              }

              else
              {
                v408 = *(v1542 + 8);
                timeWhenTransitionedToSamplingAllThreads6 = [*(v1542 + 168) timeWhenTransitionedToSamplingAllThreads];
                [timeWhenTransitionedToSamplingAllThreads6 machAbsTimeSeconds];
                v410 = v409;
                [*(v1542 + 32) machAbsTimeSeconds];
                [v408 printWithFormat:@"sampled only main threads for %.2f seconds", v410 - v411];
              }

              goto LABEL_447;
            }
          }

          [*p_isa appendString:{@", "}];
          goto LABEL_435;
        }

        [*p_isa appendString:{@", "}];
        v387 = *v1488;
        if (*v1488)
        {
          v387 = v387[139];
        }

        [*p_isa printWithFormat:@"%llu samples lost", v387];
        goto LABEL_425;
      }
    }

    v368 = *(v368 + 1104) / 0x3B9ACA00uLL;
    goto LABEL_1553;
  }

LABEL_448:
  [*p_isa appendString:@"\n"];
LABEL_449:
  v323 = v1488;
LABEL_450:
  v416 = *(v1542 + 16);
  if (v416)
  {
    v417 = *(v416 + 168);
    if (v417 != 1 && (v417 || *(v416 + 11) == 1))
    {
      *v1677 = 0;
      *&v1677[8] = v1677;
      *&v1677[16] = 0x2020000000;
      *&v1677[24] = 0;
      v418 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v419 = *(v1542 + 168);
      v1618[0] = MEMORY[0x1E69E9820];
      v1618[1] = 3221225472;
      v1618[2] = __30__SASamplePrinter_printHeader__block_invoke;
      v1618[3] = &unk_1E86F7550;
      v1618[4] = v1542;
      v1620 = v1677;
      v420 = v418;
      v1619 = v420;
      [v419 enumerateTasks:v1618];
      v421 = *(*&v1677[8] + 24);
      if (v421)
      {
        v422 = *p_isa;
        if (printJson)
        {
          v423 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*&v1677[8] + 24)];
          SAJSONWriteDictionaryEntry(v422, @"numStepsMissing", v423);

          SAJSONWriteDictionaryEntry(*p_isa, @"stepsMissingDetails", v420);
        }

        else
        {
          v424 = [v420 componentsJoinedByString:{@", "}];
          [v422 printWithFormat:@"%-*s%lu (%@)\n", 18, "Steps Missing: ", v421, v424];
        }
      }

      _Block_object_dispose(v1677, 8);
      v323 = v1488;
    }
  }

  [*v323 reportTimeThreshold];
  if (v425 <= 0.0)
  {
    if ((printJson & 1) == 0)
    {
      goto LABEL_465;
    }
  }

  else
  {
    v426 = *p_isa;
    if (printJson)
    {
      v427 = MEMORY[0x1E696AD98];
      [*v1488 reportTimeThreshold];
      v428 = [v427 numberWithDouble:?];
      SAJSONWriteDictionaryEntry(v426, @"reportTimeThreshold", v428);

      goto LABEL_466;
    }

    [*v1488 reportTimeThreshold];
    [v426 printWithFormat:@"%-*s%.3gs\n", 18, "Report threshold: ", v429];
LABEL_465:
    [*p_isa appendString:@"\n"];
  }

LABEL_466:
  wrWorkflowName = [*v1488 wrWorkflowName];

  if (wrWorkflowName)
  {
    v431 = *p_isa;
    wrWorkflowName2 = [*v1488 wrWorkflowName];
    v433 = wrWorkflowName2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v431, @"wrWorkflowName", wrWorkflowName2);
    }

    else
    {
      [v431 printWithFormat:@"%-*s%@\n", 18, "Workflow Name: ", wrWorkflowName2];
    }

    wrError = [*v1488 wrError];
    v435 = wrError;
    if (wrError)
    {
      userInfo = [wrError userInfo];
      v437 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
      v438 = v437;
      if (v437)
      {
        v439 = v437;
      }

      else
      {
        v439 = [v435 description];
      }

      v440 = *p_isa;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v440, @"wrError", v439);
      }

      else
      {
        [v440 printWithFormat:@"%-*s%@\n", 18, "Workflow Error: ", v439];
      }
    }

    wrDiagnosticName = [*v1488 wrDiagnosticName];

    if (wrDiagnosticName)
    {
      v442 = *p_isa;
      wrDiagnosticName2 = [*v1488 wrDiagnosticName];
      v444 = wrDiagnosticName2;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v442, @"wrDiagnosticName", wrDiagnosticName2);
      }

      else
      {
        [v442 printWithFormat:@"%-*s%@\n", 18, "Triggering Diagnostic: ", wrDiagnosticName2];
      }
    }

    [*v1488 wrWorkflowDuration];
    if (v445 > 0.0)
    {
      [*v1488 wrWorkflowDurationThreshold];
      if (v446 > 0.0)
      {
        [*v1488 wrWorkflowDuration];
        v448 = v447;
        [*v1488 wrWorkflowDurationThreshold];
        if (v448 >= v449)
        {
          v450 = *p_isa;
          if (printJson)
          {
            v451 = MEMORY[0x1E696AD98];
            [*v1488 wrWorkflowDuration];
            v452 = [v451 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v450, @"wrWorkflowDuration", v452);

            v453 = *p_isa;
            v454 = MEMORY[0x1E696AD98];
            [*v1488 wrWorkflowDurationThreshold];
            v455 = [v454 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v453, @"wrWorkflowDurationThreshold", v455);
          }

          else
          {
            [v450 printWithFormat:@"%-*sWorkflow event duration ", 18, "Trigger: "];
            v456 = *(v1542 + 8);
            [*(v1542 + 168) wrWorkflowDuration];
            v458 = v457;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v459 = 9;
            }

            else
            {
              v459 = 3;
            }

            saos_printf_seconds(v456, (v458 * 1000000000.0), v459);
            [*(v1542 + 8) appendString:{@", above threshold "}];
            v460 = *(v1542 + 8);
            [*(v1542 + 168) wrWorkflowDurationThreshold];
            v462 = v461;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v463 = 9;
            }

            else
            {
              v463 = 3;
            }

            saos_printf_seconds(v460, (v462 * 1000000000.0), v463);
            [*(v1542 + 8) appendString:@"\n"];
          }
        }
      }
    }

    [*v1488 wrWorkflowDurationOmittingNetworkBoundIntervals];
    if (v464 > 0.0 && ([*v1488 wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold], v465 > 0.0) && (objc_msgSend(*v1488, "wrWorkflowDurationOmittingNetworkBoundIntervals"), v467 = v466, objc_msgSend(*v1488, "wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold"), v467 >= v468))
    {
      v473 = *p_isa;
      if (printJson)
      {
        v474 = MEMORY[0x1E696AD98];
        [*v1488 wrWorkflowDurationOmittingNetworkBoundIntervals];
        v475 = [v474 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v473, @"wrWorkflowDurationOmittingNetworkBoundIntervals", v475);

        v476 = *p_isa;
        v477 = MEMORY[0x1E696AD98];
        [*v1488 wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold];
        v478 = [v477 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v476, @"wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold", v478);

        [*v1488 wrWorkflowTimeoutDuration];
        if (v479 > 0.0)
        {
LABEL_500:
          v470 = *p_isa;
          v471 = MEMORY[0x1E696AD98];
          [*v1488 wrWorkflowTimeoutDuration];
          v472 = [v471 numberWithDouble:?];
          SAJSONWriteDictionaryEntry(v470, @"wrWorkflowTimeoutDuration", v472);
        }
      }

      else
      {
        [v473 printWithFormat:@"%-*sWorkflow event duration (omitting network bound intervals) ", 18, "Trigger: "];
        v480 = *(v1542 + 8);
        [*(v1542 + 168) wrWorkflowDurationOmittingNetworkBoundIntervals];
        v482 = v481;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v483 = 9;
        }

        else
        {
          v483 = 3;
        }

        saos_printf_seconds(v480, (v482 * 1000000000.0), v483);
        [*(v1542 + 8) appendString:{@", above threshold "}];
        v484 = *(v1542 + 8);
        [*(v1542 + 168) wrWorkflowDurationOmittingNetworkBoundIntervalsThreshold];
        v486 = v485;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v487 = 9;
        }

        else
        {
          v487 = 3;
        }

        saos_printf_seconds(v484, (v486 * 1000000000.0), v487);
        [*(v1542 + 8) appendString:@"\n"];
        [*(v1542 + 168) wrWorkflowTimeoutDuration];
        if (v488 > 0.0)
        {
          goto LABEL_511;
        }
      }
    }

    else
    {
      [*v1488 wrWorkflowTimeoutDuration];
      if (v469 > 0.0)
      {
        if (printJson)
        {
          goto LABEL_500;
        }

LABEL_511:
        [*(v1542 + 8) printWithFormat:@"%-*sWorkflow event timed out after", 18, "Trigger: "];
        v489 = *(v1542 + 8);
        [*(v1542 + 168) wrWorkflowTimeoutDuration];
        v491 = v490;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v492 = 9;
        }

        else
        {
          v492 = 3;
        }

        saos_printf_seconds(v489, (v491 * 1000000000.0), v492);
        [*(v1542 + 8) appendString:@"\n"];
      }
    }

    wrSignpostName = [*v1488 wrSignpostName];

    if (wrSignpostName)
    {
      if (printJson)
      {
        v494 = *p_isa;
        wrSignpostName2 = [*v1488 wrSignpostName];
        SAJSONWriteDictionaryEntry(v494, @"wrSignpostName", wrSignpostName2);

        wrSignpostSubsystem = [*v1488 wrSignpostSubsystem];

        if (wrSignpostSubsystem)
        {
          v497 = *p_isa;
          wrSignpostSubsystem2 = [*v1488 wrSignpostSubsystem];
          SAJSONWriteDictionaryEntry(v497, @"wrSignpostSubsystem", wrSignpostSubsystem2);
        }

        wrSignpostCategory = [*v1488 wrSignpostCategory];

        if (wrSignpostCategory)
        {
          v500 = *p_isa;
          wrSignpostCategory2 = [*v1488 wrSignpostCategory];
          SAJSONWriteDictionaryEntry(v500, @"wrSignpostCategory", wrSignpostCategory2);
          goto LABEL_525;
        }
      }

      else
      {
        wrSignpostCategory2 = [*v1488 wrSignpostName];
        wrSignpostSubsystem3 = [*v1488 wrSignpostSubsystem];
        if (wrSignpostSubsystem3)
        {
          wrSignpostCategory3 = [*v1488 wrSignpostCategory];
          v504 = wrSignpostCategory3 == 0;

          if (!v504)
          {
            wrSignpostSubsystem4 = [*v1488 wrSignpostSubsystem];
            wrSignpostCategory4 = [*v1488 wrSignpostCategory];
            v506 = [wrSignpostCategory2 stringByAppendingFormat:@" [%@:%@]", wrSignpostSubsystem4, wrSignpostCategory4];

            wrSignpostCategory2 = v506;
          }
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Signpost: ", wrSignpostCategory2];
LABEL_525:
      }
    }

    wrTriggeringSignpostName = [*v1488 wrTriggeringSignpostName];
    if (wrTriggeringSignpostName)
    {
      wrSignpostName3 = [*v1488 wrSignpostName];
      if (wrSignpostName3)
      {
        wrTriggeringSignpostName2 = [*v1488 wrTriggeringSignpostName];
        wrSignpostName4 = [*v1488 wrSignpostName];
        v512 = [wrTriggeringSignpostName2 isEqualToString:wrSignpostName4];

        if (v512)
        {
          goto LABEL_541;
        }
      }

      else
      {
      }

      if (printJson)
      {
        v513 = *p_isa;
        wrTriggeringSignpostName3 = [*v1488 wrTriggeringSignpostName];
        SAJSONWriteDictionaryEntry(v513, @"wrTriggeringSignpostName", wrTriggeringSignpostName3);

        wrTriggeringSignpostSubsystem = [*v1488 wrTriggeringSignpostSubsystem];

        if (wrTriggeringSignpostSubsystem)
        {
          v516 = *p_isa;
          wrTriggeringSignpostSubsystem2 = [*v1488 wrTriggeringSignpostSubsystem];
          SAJSONWriteDictionaryEntry(v516, @"wrTriggeringSignpostSubsystem", wrTriggeringSignpostSubsystem2);
        }

        wrTriggeringSignpostCategory = [*v1488 wrTriggeringSignpostCategory];

        if (wrTriggeringSignpostCategory)
        {
          v519 = *p_isa;
          wrTriggeringSignpostCategory2 = [*v1488 wrTriggeringSignpostCategory];
          SAJSONWriteDictionaryEntry(v519, @"wrTriggeringSignpostCategory", wrTriggeringSignpostCategory2);
          goto LABEL_540;
        }
      }

      else
      {
        wrTriggeringSignpostCategory2 = [*v1488 wrTriggeringSignpostName];
        wrTriggeringSignpostSubsystem3 = [*v1488 wrTriggeringSignpostSubsystem];
        if (wrTriggeringSignpostSubsystem3)
        {
          wrTriggeringSignpostCategory3 = [*v1488 wrTriggeringSignpostCategory];
          v523 = wrTriggeringSignpostCategory3 == 0;

          if (!v523)
          {
            wrTriggeringSignpostSubsystem4 = [*v1488 wrTriggeringSignpostSubsystem];
            wrTriggeringSignpostCategory4 = [*v1488 wrTriggeringSignpostCategory];
            v525 = [wrTriggeringSignpostCategory2 stringByAppendingFormat:@" [%@:%@]", wrTriggeringSignpostSubsystem4, wrTriggeringSignpostCategory4];

            wrTriggeringSignpostCategory2 = v525;
          }
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Triggering Signpost: ", wrTriggeringSignpostCategory2];
LABEL_540:
      }
    }

LABEL_541:
    if ([*v1488 wrSignpostCount])
    {
      if ([*v1488 wrSignpostCountThreshold])
      {
        wrSignpostCount = [*v1488 wrSignpostCount];
        if (wrSignpostCount >= [*v1488 wrSignpostCountThreshold])
        {
          v528 = *p_isa;
          if (printJson)
          {
            v529 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "wrSignpostCount")}];
            SAJSONWriteDictionaryEntry(v528, @"wrSignpostCount", v529);

            v530 = *p_isa;
            v531 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "wrSignpostCountThreshold")}];
            SAJSONWriteDictionaryEntry(v530, @"wrSignpostCountThreshold", v531);
          }

          else
          {
            [v528 printWithFormat:@"%-*sSignpost count %llu, above threshold %llu\n", 18, "Trigger: ", objc_msgSend(*v1488, "wrSignpostCount"), objc_msgSend(*v1488, "wrSignpostCountThreshold")];
          }
        }
      }
    }

    [*v1488 wrSignpostDurationUnion];
    if (v532 > 0.0)
    {
      [*v1488 wrSignpostDurationUnionThreshold];
      if (v533 > 0.0)
      {
        [*v1488 wrSignpostDurationUnion];
        v535 = v534;
        [*v1488 wrSignpostDurationUnionThreshold];
        if (v535 >= v536)
        {
          v537 = *p_isa;
          if (printJson)
          {
            v538 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationUnion];
            v539 = [v538 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v537, @"wrSignpostDurationUnion", v539);

            v540 = *p_isa;
            v541 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationUnionThreshold];
            v542 = [v541 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v540, @"wrSignpostDurationUnionThreshold", v542);
          }

          else
          {
            [v537 printWithFormat:@"%-*sSignpost interval duration (union) ", 18, "Trigger: "];
            v543 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationUnion];
            v545 = v544;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v546 = 9;
            }

            else
            {
              v546 = 3;
            }

            saos_printf_seconds(v543, (v545 * 1000000000.0), v546);
            [*(v1542 + 8) appendString:{@", above threshold "}];
            v547 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationUnionThreshold];
            v549 = v548;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v550 = 9;
            }

            else
            {
              v550 = 3;
            }

            saos_printf_seconds(v547, (v549 * 1000000000.0), v550);
            [*(v1542 + 8) appendString:@"\n"];
          }
        }
      }
    }

    [*v1488 wrSignpostDurationSum];
    if (v551 > 0.0)
    {
      [*v1488 wrSignpostDurationSumThreshold];
      if (v552 > 0.0)
      {
        [*v1488 wrSignpostDurationSum];
        v554 = v553;
        [*v1488 wrSignpostDurationSumThreshold];
        if (v554 >= v555)
        {
          v556 = *p_isa;
          if (printJson)
          {
            v557 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationSum];
            v558 = [v557 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v556, @"wrSignpostDurationSum", v558);

            v559 = *p_isa;
            v560 = MEMORY[0x1E696AD98];
            [*v1488 wrSignpostDurationSumThreshold];
            v561 = [v560 numberWithDouble:?];
            SAJSONWriteDictionaryEntry(v559, @"wrSignpostDurationSumThreshold", v561);
          }

          else
          {
            [v556 printWithFormat:@"%-*sSignpost interval duration (sum) ", 18, "Trigger: "];
            v562 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationSum];
            v564 = v563;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v565 = 9;
            }

            else
            {
              v565 = 3;
            }

            saos_printf_seconds(v562, (v564 * 1000000000.0), v565);
            [*(v1542 + 8) appendString:{@", above threshold "}];
            v566 = *(v1542 + 8);
            [*(v1542 + 168) wrSignpostDurationSumThreshold];
            v568 = v567;
            if ([*(v1542 + 16) displayDetailedWallTime])
            {
              v569 = 9;
            }

            else
            {
              v569 = 3;
            }

            saos_printf_seconds(v566, (v568 * 1000000000.0), v569);
            [*(v1542 + 8) appendString:@"\n"];
          }
        }
      }
    }

    [*v1488 wrSignpostDurationSingle];
    if (v570 > 0.0 && ([*v1488 wrSignpostDurationSingleThreshold], v571 > 0.0) && (objc_msgSend(*v1488, "wrSignpostDurationSingle"), v573 = v572, objc_msgSend(*v1488, "wrSignpostDurationSingleThreshold"), v573 >= v574))
    {
      v644 = *p_isa;
      if (printJson)
      {
        v645 = MEMORY[0x1E696AD98];
        [*v1488 wrSignpostDurationSingle];
        v646 = [v645 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v644, @"wrSignpostDurationSingle", v646);

        v647 = *p_isa;
        v648 = MEMORY[0x1E696AD98];
        [*v1488 wrSignpostDurationSingleThreshold];
        v649 = [v648 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v647, @"wrSignpostDurationSingleThreshold", v649);
      }

      else
      {
        [v644 printWithFormat:@"%-*sSignpost interval duration (single) ", 18, "Trigger: "];
        v888 = *(v1542 + 8);
        [*(v1542 + 168) wrSignpostDurationSingle];
        v890 = v889;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v891 = 9;
        }

        else
        {
          v891 = 3;
        }

        saos_printf_seconds(v888, (v890 * 1000000000.0), v891);
        [*(v1542 + 8) appendString:{@", above threshold "}];
        v892 = *(v1542 + 8);
        [*(v1542 + 168) wrSignpostDurationSingleThreshold];
        v894 = v893;
        if ([*(v1542 + 16) displayDetailedWallTime])
        {
          v895 = 9;
        }

        else
        {
          v895 = 3;
        }

        saos_printf_seconds(v892, (v894 * 1000000000.0), v895);
        [*(v1542 + 8) appendString:@"\n"];
LABEL_575:
        [*p_isa appendString:@"\n"];
      }
    }

    else if ((printJson & 1) == 0)
    {
      goto LABEL_575;
    }
  }

  hardwareModel = [*v1488 hardwareModel];
  if (hardwareModel || [*v1488 numActiveCPUs] || objc_msgSend(*v1488, "memSize") || objc_msgSend(*v1488, "hwPageSize") || objc_msgSend(*v1488, "vmPageSize"))
  {
LABEL_582:

    goto LABEL_583;
  }

  hardwareModel = [*v1488 bootArgs];
  if (!hardwareModel)
  {
    if (([*(v1542 + 16) displayEmptyBootArgs] & 1) == 0)
    {
      goto LABEL_625;
    }

LABEL_583:
    hardwareModel2 = [*v1488 hardwareModel];

    if (hardwareModel2)
    {
      v577 = *p_isa;
      hardwareModel3 = [*v1488 hardwareModel];
      v579 = hardwareModel3;
      if (printJson)
      {
        SAJSONWriteDictionaryEntry(v577, @"hardwareModel", hardwareModel3);

        if (![*v1488 numActiveCPUs])
        {
LABEL_592:
          if ([*v1488 memSize])
          {
            v583 = *p_isa;
            if (printJson)
            {
              v584 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "memSize")}];
              SAJSONWriteDictionaryEntry(v583, @"memSize", v584);

              if (![*v1488 hwPageSize])
              {
LABEL_601:
                if ([*v1488 vmPageSize])
                {
                  v588 = *p_isa;
                  if (printJson)
                  {
                    v589 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v1488, "vmPageSize")}];
                    SAJSONWriteDictionaryEntry(v588, @"vmPageSize", v589);

                    if (![*v1488 sharedCacheResidentSizeInBytes])
                    {
LABEL_611:
                      bootArgs = [*v1488 bootArgs];
                      if (bootArgs)
                      {
                        bootArgs2 = [*v1488 bootArgs];
                        if ([bootArgs2 length])
                        {

LABEL_617:
                          bootArgs3 = [*v1488 bootArgs];
                          v604 = bootArgs3;
                          v605 = @"???";
                          if (bootArgs3)
                          {
                            v605 = bootArgs3;
                          }

                          v606 = v605;

                          v607 = *p_isa;
                          if (printJson)
                          {
                            SAJSONWriteDictionaryEntry(*p_isa, @"bootArgs", v606);
                          }

                          else
                          {
                            v608 = SACopySanitizedString(v606, 1, 0);
                            [v607 printWithFormat:@"%-*s%@\n", 18, "Boot args: ", v608];
                          }

                          goto LABEL_623;
                        }

                        displayEmptyBootArgs = [*(v1542 + 16) displayEmptyBootArgs];

                        if (displayEmptyBootArgs)
                        {
                          goto LABEL_617;
                        }
                      }

                      else if ([*(v1542 + 16) displayEmptyBootArgs])
                      {
                        goto LABEL_617;
                      }

LABEL_623:
                      if ((printJson & 1) == 0)
                      {
                        [*p_isa appendString:@"\n"];
                      }

                      goto LABEL_625;
                    }

                    goto LABEL_607;
                  }

                  [v588 printWithFormat:@"%-*s%d\n", 18, "VM page size: ", objc_msgSend(*v1488, "vmPageSize")];
                  if (![*v1488 sharedCacheResidentSizeInBytes])
                  {
                    goto LABEL_611;
                  }
                }

                else
                {
                  if (![*v1488 sharedCacheResidentSizeInBytes])
                  {
                    goto LABEL_611;
                  }

                  if (printJson)
                  {
LABEL_607:
                    v590 = *p_isa;
                    v591 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "sharedCacheResidentSizeInBytes")}];
                    SAJSONWriteDictionaryEntry(v590, @"sharedCacheResidentSize", v591);

                    v592 = *p_isa;
                    v593 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "sharedCacheVirtualSizeInBytes")}];
                    SAJSONWriteDictionaryEntry(v592, @"sharedCacheVirtualSize", v593);

                    v594 = *p_isa;
                    v595 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(*v1488, "sharedCacheResidentSizeInBytes") * 100.0 / objc_msgSend(*v1488, "sharedCacheVirtualSizeInBytes")}];
                    SAJSONWriteDictionaryEntry(v594, @"sharedCacheResidencyPercent", v595);
LABEL_610:

                    goto LABEL_611;
                  }
                }

                v596 = *p_isa;
                sharedCacheResidentSizeInBytes = [*v1488 sharedCacheResidentSizeInBytes];
                sharedCacheVirtualSizeInBytes = [*v1488 sharedCacheVirtualSizeInBytes];
                v595 = SAFormattedBytesEx([*v1488 sharedCacheResidentSizeInBytes], 1, 0, 1, 0);
                v599 = SAFormattedBytesEx([*v1488 sharedCacheVirtualSizeInBytes], 1, 0, 1, 0);
                [v596 printWithFormat:@"%-*s%0.02f%% (%@ / %@)\n", 18, "Shared cache residency: ", sharedCacheResidentSizeInBytes * 100.0 / sharedCacheVirtualSizeInBytes, v595, v599];

                goto LABEL_610;
              }

LABEL_598:
              v585 = *p_isa;
              v586 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v1488, "hwPageSize")}];
              SAJSONWriteDictionaryEntry(v585, @"hwPageSize", v586);

              goto LABEL_601;
            }

            v587 = SAFormattedBytesEx([*v1488 memSize], 1, 0, 1, 0x40000000uLL);
            [v583 printWithFormat:@"%-*s%@\n", 18, "Memory size: ", v587];

            if (![*v1488 hwPageSize])
            {
              goto LABEL_601;
            }
          }

          else
          {
            if (![*v1488 hwPageSize])
            {
              goto LABEL_601;
            }

            if (printJson)
            {
              goto LABEL_598;
            }
          }

          [*p_isa printWithFormat:@"%-*s%d\n", 18, "HW page size: ", objc_msgSend(*v1488, "hwPageSize")];
          goto LABEL_601;
        }

LABEL_589:
        v580 = *p_isa;
        v581 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*v1488, "numActiveCPUs")}];
        SAJSONWriteDictionaryEntry(v580, @"numActiveCPUs", v581);

        goto LABEL_592;
      }

      v582 = SACopySanitizedString(hardwareModel3, 1, 0);
      [v577 printWithFormat:@"%-*s%@\n", 18, "Hardware model: ", v582];

      if (![*v1488 numActiveCPUs])
      {
        goto LABEL_592;
      }
    }

    else
    {
      if (![*v1488 numActiveCPUs])
      {
        goto LABEL_592;
      }

      if (printJson)
      {
        goto LABEL_589;
      }
    }

    [*p_isa printWithFormat:@"%-*s%d\n", 18, "Active cpus: ", objc_msgSend(*v1488, "numActiveCPUs")];
    goto LABEL_592;
  }

  bootArgs4 = [*v1488 bootArgs];
  if ([bootArgs4 length])
  {

    goto LABEL_582;
  }

  displayEmptyBootArgs2 = [*(v1542 + 16) displayEmptyBootArgs];

  if (displayEmptyBootArgs2)
  {
    goto LABEL_583;
  }

LABEL_625:
  [*v1488 lastWakeTime];
  v610 = v609;
  eventTimeRange13 = [*v1488 eventTimeRange];
  startTime5 = [eventTimeRange13 startTime];

  if (!startTime5 || ([startTime5 machAbsTimeSeconds], v613 == 0.0) && (objc_msgSend(startTime5, "machContTimeSeconds"), v614 == 0.0) || ((objc_msgSend(startTime5, "machAbsTimeSeconds"), v615 == 0.0) || (objc_msgSend(startTime5, "machContTimeSeconds"), v616 == 0.0)) && (objc_msgSend(*(v1542 + 32), "machAbsTimeSeconds"), v617 != 0.0) && (objc_msgSend(*(v1542 + 32), "machContTimeSeconds"), v618 != 0.0))
  {
    v619 = *(v1542 + 32);

    startTime5 = v619;
  }

  v1464 = startTime5;
  [v1464 wallTime];
  v620 = v1464;
  v1441 = v1464;
  if (v621 == 0.0)
  {
    v1441 = *(v1542 + 32);

    v620 = v1464;
  }

  [v620 machAbsTimeSeconds];
  if (v622 != 0.0 || ([v1464 machContTimeSeconds], v623 != 0.0) || v610 != 0.0 && (v610 < 0.0 || (objc_msgSend(v1441, "wallTime"), v643 > v610)))
  {
    [v1464 machContTimeSeconds];
    if (v624 == 0.0)
    {
      [v1464 machAbsTimeSeconds];
      if (v629 == 0.0)
      {
        goto LABEL_646;
      }

      if (printJson)
      {
        goto LABEL_643;
      }
    }

    else
    {
      v625 = *p_isa;
      if (printJson)
      {
        v626 = MEMORY[0x1E696AD98];
        [v1464 machContTimeSeconds];
        v627 = [v626 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v625, @"timeSinceBoot", v627);

        [v1464 machAbsTimeSeconds];
        if (v628 == 0.0)
        {
LABEL_646:
          if (v610 >= 0.0)
          {
            if (v610 == 0.0 || ([v1441 wallTime], v638 <= v610))
            {
              if (printJson)
              {
                goto LABEL_664;
              }
            }

            else
            {
              v639 = *p_isa;
              if (printJson)
              {
                v640 = MEMORY[0x1E696AD98];
                [v1441 wallTime];
                v610 = [v640 numberWithDouble:v641 - v610];
                SAJSONWriteDictionaryEntry(v639, @"timeSinceWake", v610);

                goto LABEL_664;
              }

              [v1441 wallTime];
              [v639 printWithFormat:@"%-*s%.0fs\n", 18, "Time Since Wake: ", v650 - v610];
            }
          }

          else
          {
            v637 = *p_isa;
            if (printJson)
            {
              SAJSONWriteDictionaryEntry(v637, @"timeSinceWake", @"n/a");
              goto LABEL_664;
            }

            [v637 printWithFormat:@"%-*sn/a (machine hasn't slept)\n", 18, "Time Since Wake: "];
          }

          [*p_isa appendString:@"\n"];
          goto LABEL_664;
        }

LABEL_643:
        v630 = *p_isa;
        v631 = MEMORY[0x1E696AD98];
        [v1464 machAbsTimeSeconds];
        v632 = [v631 numberWithDouble:?];
        SAJSONWriteDictionaryEntry(v630, @"timeAwakeSinceBoot", v632);

        goto LABEL_646;
      }

      [v1464 machContTimeSeconds];
      [v625 printWithFormat:@"%-*s%.0fs\n", 18, "Time Since Boot: ", v633];
      [v1464 machAbsTimeSeconds];
      if (v634 == 0.0)
      {
        goto LABEL_646;
      }
    }

    v635 = *p_isa;
    [v1464 machAbsTimeSeconds];
    [v635 printWithFormat:@"%-*s%.0fs\n", 18, "Time Awake Since Boot: ", v636];
    goto LABEL_646;
  }

LABEL_664:
  v1457 = [*(v1542 + 168) fanSpeedClosestToTimestamp:*(v1542 + 32)];
  v1461 = [*(v1542 + 168) fanSpeedClosestToTimestamp:*(v1542 + 40)];
  if (v1461 && ([v1461 fanSpeedIsValid] & 1) != 0 || v1457 && objc_msgSend(v1457, "fanSpeedIsValid"))
  {
    fanSpeedIsValid = [v1457 fanSpeedIsValid];
    if (printJson)
    {
      if (fanSpeedIsValid)
      {
        v652 = *p_isa;
        v653 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1457, "fanSpeed")}];
        SAJSONWriteDictionaryEntry(v652, @"startFanSpeed", v653);
      }

      if ([v1461 fanSpeedIsValid])
      {
        v654 = *p_isa;
        v655 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1461, "fanSpeed")}];
        SAJSONWriteDictionaryEntry(v654, @"endFanSpeed", v655);
      }
    }

    else
    {
      if (fanSpeedIsValid)
      {
        v656 = v1457;
      }

      else
      {
        v656 = v1461;
      }

      fanSpeed = [v656 fanSpeed];
      [*p_isa printWithFormat:@"%-*s%d rpm", 18, "Fan speed: ", fanSpeed];
      if ([v1461 fanSpeedIsValid])
      {
        fanSpeed2 = [v1461 fanSpeed];
        v659 = fanSpeed2 - fanSpeed >= 0 ? fanSpeed2 - fanSpeed : fanSpeed - fanSpeed2;
        if (v659 >= 0x64)
        {
          [*p_isa printWithFormat:@" -> %d (%+d)", fanSpeed2, (fanSpeed2 - fanSpeed)];
        }
      }

      [*p_isa appendString:@"\n"];
    }
  }

  v1438 = [SATimeRange timeRangeStart:*(v1542 + 32) end:*(v1542 + 40)];
  if ([v1438 deltaMachAbsTime])
  {
    *v1677 = 0;
    *&v1677[8] = v1677;
    *&v1677[16] = 0x2020000000;
    *&v1677[24] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000uLL;
    *&v1673 = 0;
    *(&v1673 + 1) = &v1673;
    v1674 = 0x2020000000uLL;
    v660 = *(v1542 + 32);
    v661 = *(v1542 + 40);
    v662 = *(v1542 + 168);
    v1612[0] = MEMORY[0x1E69E9820];
    v1612[1] = 3221225472;
    v1612[2] = __30__SASamplePrinter_printHeader__block_invoke_2;
    v1612[3] = &unk_1E86F7578;
    v663 = v660;
    v1613 = v663;
    v664 = v661;
    v1614 = v664;
    v1615 = v1677;
    v1616 = buf;
    v1617 = &v1673;
    [v662 enumerateTasks:v1612];
    if (!*(*&v1677[8] + 24))
    {
      goto LABEL_690;
    }

    v665 = *p_isa;
    if (printJson)
    {
      v666 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      SAJSONWriteDictionaryEntry(v665, @"totalCpuNanoseconds", v666);

      if (*(*&buf[8] + 24))
      {
        v667 = *p_isa;
        v668 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        SAJSONWriteDictionaryEntry(v667, @"totalCpuInstructions", v668);
      }

      if (*(*(&v1673 + 1) + 24))
      {
        v669 = *p_isa;
        v670 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        SAJSONWriteDictionaryEntry(v669, @"totalCpuCycles", v670);
      }

LABEL_690:
      v1499 = 0;
    }

    else
    {
      [v665 printWithFormat:@"%-*s", 18, "Total CPU Time: "];
      v671 = *(*&v1677[8] + 24);
      v672 = *(v1542 + 8);
      if ([*(v1542 + 16) displayDetailedCpuTime])
      {
        v673 = 9;
      }

      else
      {
        v673 = 3;
      }

      saos_printf_seconds(v672, v671, v673);
      v674 = *(*(&v1673 + 1) + 24);
      if (v674)
      {
        saos_printf_cycles_instructions(*(v1542 + 8), v674, *(*&buf[8] + 24), [*(v1542 + 16) displayDetailedCpuTime]);
      }

      [*p_isa appendString:@"\n"];
      v1499 = 1;
    }

    _Block_object_dispose(&v1673, 8);
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v1677, 8);
  }

  else
  {
    v1499 = 0;
  }

  memoryPressureEvents = [*v1488 memoryPressureEvents];
  v676 = [memoryPressureEvents count] == 0;

  if (!v676)
  {
    v1611 = 0u;
    v1610 = 0u;
    v1609 = 0u;
    v1608 = 0u;
    memoryPressureEvents2 = [*v1488 memoryPressureEvents];
    v677 = [memoryPressureEvents2 countByEnumeratingWithState:&v1608 objects:v1661 count:16];
    if (!v677)
    {
      goto LABEL_718;
    }

    v678 = 0;
    j = 0;
    v679 = 0;
    v680 = *v1609;
    memoryStatusLevel = 100;
    objc = -1;
    do
    {
      for (n = 0; n != v677; ++n)
      {
        if (*v1609 != v680)
        {
          objc_enumerationMutation(memoryPressureEvents2);
        }

        v683 = *(*(&v1608 + 1) + 8 * n);
        v684 = *(v1542 + 32);
        timestamp2 = [v683 timestamp];
        LOBYTE(v684) = [v684 gt:timestamp2];

        if ((v684 & 1) == 0)
        {
          v686 = *(v1542 + 40);
          timestamp3 = [v683 timestamp];
          LOBYTE(v686) = [v686 lt:timestamp3];

          if (v686)
          {
            goto LABEL_714;
          }

          if ([v683 availableBytes] < objc)
          {
            objc = [v683 availableBytes];
          }

          if ([v683 memoryStatusLevel] < memoryStatusLevel)
          {
            memoryStatusLevel = [v683 memoryStatusLevel];
          }

          v679 += [v683 memoryStatusLevel];
          v678 += [v683 availableBytes];
          ++j;
        }
      }

      v677 = [memoryPressureEvents2 countByEnumeratingWithState:&v1608 objects:v1661 count:16];
    }

    while (v677);
LABEL_714:

    if (j)
    {
      v688 = v679 / j;
      v689 = *p_isa;
      if (printJson)
      {
        v688 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 - v688];
        SAJSONWriteDictionaryEntry(v689, @"averageMemoryPressure", v688);

        v691 = *p_isa;
        v692 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v678 / j];
        SAJSONWriteDictionaryEntry(v691, @"averageAvailableBytes", v692);

        v693 = *p_isa;
        v681 = [MEMORY[0x1E696AD98] numberWithInt:100 - memoryStatusLevel];
        SAJSONWriteDictionaryEntry(v693, @"highestMemoryPressure", v681);

        v695 = *p_isa;
        v1522 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:objc];
        SAJSONWriteDictionaryEntry(v695, @"minimumAvailableBytes", v1522);

        goto LABEL_719;
      }

      [v689 printWithFormat:@"%-*saverage %u%%, highest %u%%\n", 18, "Memory pressure: ", 100 - v688, 100 - memoryStatusLevel];
      v696 = *p_isa;
      memoryPressureEvents2 = SAFormattedBytesEx(v678 / j, 1, 0, 1, 0);
      v697 = SAFormattedBytesEx(objc, 1, 0, 1, 0);
      [v696 printWithFormat:@"%-*saverage %@, lowest %@\n", 18, "Available memory: ", memoryPressureEvents2, v697];

      v1499 = 1;
LABEL_718:
    }
  }

LABEL_719:
  lostPerfEvents = [*v1488 lostPerfEvents];
  v699 = [lostPerfEvents count] == 0;

  if (!v699)
  {
    objd = objc_alloc_init(MEMORY[0x1E695DF90]);
    v1607 = 0u;
    v1606 = 0u;
    v1605 = 0u;
    v1604 = 0u;
    lostPerfEvents2 = [*v1488 lostPerfEvents];
    v701 = [lostPerfEvents2 countByEnumeratingWithState:&v1604 objects:v1660 count:16];
    if (v701)
    {
      v702 = *v1605;
      v703 = 0.0;
      do
      {
        for (ii = 0; ii != v701; ++ii)
        {
          if (*v1605 != v702)
          {
            objc_enumerationMutation(lostPerfEvents2);
          }

          v705 = *(*(&v1604 + 1) + 8 * ii);
          endTime5 = [v705 endTime];
          if (endTime5)
          {
            v707 = *(v1542 + 32);
            endTime6 = [v705 endTime];
            LOBYTE(v707) = [v707 ge:endTime6];

            if (v707)
            {
              continue;
            }
          }

          startTime6 = [v705 startTime];
          if (startTime6)
          {
            v710 = *(v1542 + 40);
            startTime7 = [v705 startTime];
            LOBYTE(v710) = [v710 le:startTime7];

            if (v710)
            {
              goto LABEL_748;
            }
          }

          startTime8 = [v705 startTime];
          v713 = *(v1542 + 32);
          if (startTime8)
          {
            startTime9 = [v705 startTime];
            if ([v713 le:startTime9])
            {
              startTime10 = [v705 startTime];
            }

            else
            {
              startTime10 = *(v1542 + 32);
            }
          }

          else
          {
            startTime10 = v713;
          }

          endTime7 = [v705 endTime];
          v717 = *(v1542 + 40);
          if (endTime7)
          {
            endTime8 = [v705 endTime];
            if ([v717 ge:endTime8])
            {
              endTime9 = [v705 endTime];
            }

            else
            {
              endTime9 = *(v1542 + 40);
            }
          }

          else
          {
            endTime9 = v717;
          }

          [startTime10 deltaSecondsTo:endTime9 timeDomainPriorityList:&unk_1F5BDCD60 timeDomainUsed:0];
          v721 = v720;
          lostPerf = [v705 lostPerf];
          v723 = lostPerf;
          v724 = @"No lost perf";
          if (lostPerf)
          {
            v724 = lostPerf;
          }

          v725 = v724;

          v726 = MEMORY[0x1E696AD98];
          v727 = [objd objectForKeyedSubscript:v725];
          [v727 doubleValue];
          j = [v726 numberWithDouble:v721 + v728];
          [objd setObject:j forKeyedSubscript:v725];

          v703 = v703 + v721;
        }

        v701 = [lostPerfEvents2 countByEnumeratingWithState:&v1604 objects:v1660 count:16];
      }

      while (v701);
    }

    else
    {
      v703 = 0.0;
    }

LABEL_748:

    if ([objd count])
    {
      if (v703 + 0.001 < v301)
      {
        v703 = [MEMORY[0x1E696AD98] numberWithDouble:v301 - v703];
        [objd setObject:v703 forKeyedSubscript:@"Unknown"];
      }

      v730 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objd, "count")}];
      v1603 = 0u;
      v1602 = 0u;
      v1601 = 0u;
      v1600 = 0u;
      v731 = [objd keysSortedByValueUsingSelector:sel_compare_];
      reverseObjectEnumerator = [v731 reverseObjectEnumerator];

      v732 = [reverseObjectEnumerator countByEnumeratingWithState:&v1600 objects:v1659 count:16];
      if (v732)
      {
        j = *v1601;
        do
        {
          for (jj = 0; jj != v732; ++jj)
          {
            if (*v1601 != j)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v734 = *(*(&v1600 + 1) + 8 * jj);
            v735 = [objd objectForKeyedSubscript:v734];
            [v735 doubleValue];
            v737 = v736;

            v738 = objc_alloc(MEMORY[0x1E696AEC0]);
            if ([*(v1542 + 16) displayDetailedCpuTime])
            {
              v739 = 9;
            }

            else
            {
              v739 = 3;
            }

            v740 = seconds_string_for_nanoseconds((v737 * 1000000000.0), v739);
            v301 = [v738 initWithFormat:@"%@ %@ (%.0f%%)", v734, v740, v737 * 100.0 / v301];
            [v730 addObject:v301];
          }

          v732 = [reverseObjectEnumerator countByEnumeratingWithState:&v1600 objects:v1659 count:16];
        }

        while (v732);
      }

      v742 = *p_isa;
      v743 = [v730 componentsJoinedByString:{@", "}];
      [v742 printWithFormat:@"%-*s%@\n", 18, "Lost Perf: ", v743];
    }
  }

  ioEvents = [*v1488 ioEvents];
  v745 = [ioEvents count] == 0;

  if (!v745)
  {
    obje = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v1524 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v1599 = 0u;
    v1598 = 0u;
    v1597 = 0u;
    v1596 = 0u;
    ioEvents2 = [*v1488 ioEvents];
    v746 = [ioEvents2 countByEnumeratingWithState:&v1596 objects:v1658 count:16];
    if (v746)
    {
      v1513 = 0;
      v747 = 0;
      v748 = *v1597;
      do
      {
        for (kk = 0; kk != v746; ++kk)
        {
          if (*v1597 != v748)
          {
            objc_enumerationMutation(ioEvents2);
          }

          v750 = *(*(&v1596 + 1) + 8 * kk);
          v751 = *(v1542 + 32);
          endTimestamp5 = [v750 endTimestamp];
          LOBYTE(v751) = [v751 gt:endTimestamp5];

          if ((v751 & 1) == 0)
          {
            v753 = *(v1542 + 40);
            endTimestamp6 = [v750 endTimestamp];
            LOBYTE(v753) = [v753 lt:endTimestamp6];

            if (v753)
            {
              goto LABEL_776;
            }

            tier = [v750 tier];
            v756 = MEMORY[0x1E696AD98];
            v757 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            v758 = [obje objectForKeyedSubscript:v757];
            v759 = [v756 numberWithUnsignedLongLong:{objc_msgSend(v758, "unsignedLongLongValue") + 1}];
            v760 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            [obje setObject:v759 forKeyedSubscript:v760];

            v761 = MEMORY[0x1E696AD98];
            v762 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            v763 = [v1524 objectForKeyedSubscript:v762];
            v764 = [v761 numberWithUnsignedLongLong:{objc_msgSend(v750, "size") + objc_msgSend(v763, "unsignedLongLongValue")}];
            j = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:tier];
            [v1524 setObject:v764 forKeyedSubscript:j];

            ++v1513;
            v747 += [v750 size];
          }
        }

        v746 = [ioEvents2 countByEnumeratingWithState:&v1596 objects:v1658 count:16];
      }

      while (v746);
    }

    else
    {
      v1513 = 0;
      v747 = 0;
    }

LABEL_776:

    if ([obje count])
    {
      [*(v1542 + 40) machAbsTimeSeconds];
      v766 = v765;
      [*(v1542 + 32) machAbsTimeSeconds];
      v768 = *(v1542 + 8);
      if (printJson)
      {
        v769 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v1513];
        SAJSONWriteDictionaryEntry(v768, @"ioCountTotal", v769);

        v770 = *p_isa;
        v771 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v747];
        SAJSONWriteDictionaryEntry(v770, @"ioBytesTotal", v771);

        v1595 = 0u;
        v1594 = 0u;
        v1593 = 0u;
        v1592 = 0u;
        allKeys = [obje allKeys];
        v1506 = [allKeys sortedArrayUsingSelector:sel_compare_];

        v773 = [v1506 countByEnumeratingWithState:&v1592 objects:v1657 count:16];
        if (v773)
        {
          v774 = *v1593;
          do
          {
            for (mm = 0; mm != v773; ++mm)
            {
              if (*v1593 != v774)
              {
                objc_enumerationMutation(v1506);
              }

              v776 = *(*(&v1592 + 1) + 8 * mm);
              v777 = *p_isa;
              v778 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ioCountTier%d", objc_msgSend(v776, "intValue")];
              v779 = [obje objectForKeyedSubscript:v776];
              SAJSONWriteDictionaryEntry(v777, v778, v779);

              v780 = *p_isa;
              v781 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ioBytesTier%d", objc_msgSend(v776, "intValue")];
              v782 = [v1524 objectForKeyedSubscript:v776];
              SAJSONWriteDictionaryEntry(v780, v781, v782);
            }

            v773 = [v1506 countByEnumeratingWithState:&v1592 objects:v1657 count:16];
          }

          while (v773);
        }
      }

      else
      {
        v783 = v767;
        [v768 printWithFormat:@"I/O statistics:\n"];
        v784 = v766 - v783;
        v785 = *p_isa;
        v786 = SAFormattedBytesEx(v747, 1, 0, 1, 0);
        if (v784 <= 0.0)
        {
          v787 = 0.0;
          v788 = 0.0;
        }

        else
        {
          v787 = v1513 / v784;
          v788 = v747 / v784;
        }

        v789 = SAFormattedBytesDouble(1, 0, v788);
        [v785 printWithFormat:@"%-*s%llu IOs (%.0f IOs/s), %@ (%@/s)\n", 18, "  Overall: ", v1513, *&v787, v786, v789];

        v1591 = 0u;
        v1590 = 0u;
        v1589 = 0u;
        v1588 = 0u;
        allKeys2 = [obje allKeys];
        v1506 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

        v1500 = [v1506 countByEnumeratingWithState:&v1588 objects:v1656 count:16];
        if (v1500)
        {
          v1491 = *v1589;
          do
          {
            for (nn = 0; nn != v1500; ++nn)
            {
              if (*v1589 != v1491)
              {
                objc_enumerationMutation(v1506);
              }

              v792 = *(*(&v1588 + 1) + 8 * nn);
              v793 = *p_isa;
              v794 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%-*sTier%d: ", 2, ", objc_msgSend(v792, "intValue"")];
              v795 = v794;
              uTF8String = [v794 UTF8String];
              v797 = [obje objectForKeyedSubscript:v792];
              v798 = 0.0;
              if (v784 > 0.0)
              {
                v1513 = [obje objectForKeyedSubscript:v792];
                [v1513 doubleValue];
                v798 = v799 / v784;
              }

              v800 = [v1524 objectForKeyedSubscript:v792];
              [v800 doubleValue];
              v802 = SAFormattedBytesDouble(1, 0, v801);
              v803 = 0.0;
              if (v784 > 0.0)
              {
                j = [v1524 objectForKeyedSubscript:{v792, 0.0}];
                [j doubleValue];
                v803 = v804 / v784;
              }

              v805 = SAFormattedBytesDouble(1, 0, v803);
              [v793 printWithFormat:@"%-*s%@ IOs (%.0f IOs/s), %@ (%@/s)\n", 18, uTF8String, v797, *&v798, v802, v805];

              if (v784 > 0.0)
              {

                v802 = v800;
                v800 = v1513;
              }
            }

            v1500 = [v1506 countByEnumeratingWithState:&v1588 objects:v1656 count:16];
          }

          while (v1500);
        }

        v1499 = 1;
      }
    }
  }

  nandGarbageCollectionEvents = [*v1488 nandGarbageCollectionEvents];
  v807 = [nandGarbageCollectionEvents count] == 0;

  if (!v807)
  {
    if (printJson)
    {
      v808 = *p_isa;
      nandGarbageCollectionEvents2 = [*v1488 nandGarbageCollectionEvents];
      SAJSONWriteDictionaryEntry(v808, @"nandGarbageCollectionEvents", nandGarbageCollectionEvents2);
      goto LABEL_837;
    }

    nandGarbageCollectionEvents2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v1587 = 0u;
    v1586 = 0u;
    v1585 = 0u;
    v1584 = 0u;
    objf = [*v1488 nandGarbageCollectionEvents];
    v810 = [objf countByEnumeratingWithState:&v1584 objects:v1655 count:16];
    if (v810)
    {
      v811 = *v1585;
      v812 = 0.0;
      do
      {
        for (i1 = 0; i1 != v810; ++i1)
        {
          if (*v1585 != v811)
          {
            objc_enumerationMutation(objf);
          }

          v814 = *(*(&v1584 + 1) + 8 * i1);
          endTimestamp7 = [v814 endTimestamp];
          if (endTimestamp7)
          {
            v816 = *(v1542 + 32);
            endTimestamp8 = [v814 endTimestamp];
            LOBYTE(v816) = [v816 ge:endTimestamp8];

            if (v816)
            {
              continue;
            }
          }

          startTimestamp6 = [v814 startTimestamp];
          if (startTimestamp6)
          {
            v819 = *(v1542 + 40);
            startTimestamp7 = [v814 startTimestamp];
            LOBYTE(v819) = [v819 le:startTimestamp7];

            if (v819)
            {
              goto LABEL_834;
            }
          }

          startTimestamp8 = [v814 startTimestamp];
          if (startTimestamp8)
          {
            startTimestamp9 = [v814 startTimestamp];
            if ([startTimestamp9 ge:*(v1542 + 32)])
            {
              startTimestamp10 = [v814 startTimestamp];
            }

            else
            {
              startTimestamp10 = *(v1542 + 32);
            }
          }

          else
          {
            startTimestamp10 = *(v1542 + 32);
          }

          endTimestamp9 = [v814 endTimestamp];
          if (endTimestamp9)
          {
            endTimestamp10 = [v814 endTimestamp];
            if ([endTimestamp10 le:*(v1542 + 40)])
            {
              endTimestamp11 = [v814 endTimestamp];
            }

            else
            {
              endTimestamp11 = *(v1542 + 40);
            }
          }

          else
          {
            endTimestamp11 = *(v1542 + 40);
          }

          [startTimestamp10 deltaSecondsTo:endTimestamp11 timeDomainPriorityList:&unk_1F5BDCD78 timeDomainUsed:0];
          v828 = v827;
          reason3 = [v814 reason];
          v830 = reason3;
          v831 = @"unknown";
          if (reason3)
          {
            v831 = reason3;
          }

          v832 = v831;

          v833 = MEMORY[0x1E696AD98];
          v834 = [nandGarbageCollectionEvents2 objectForKeyedSubscript:v832];
          [v834 doubleValue];
          v812 = v812 + v828;
          v835 = [v833 numberWithDouble:v812 + v835];
          [nandGarbageCollectionEvents2 setObject:v835 forKeyedSubscript:v832];
        }

        v810 = [objf countByEnumeratingWithState:&v1584 objects:v1655 count:16];
      }

      while (v810);
LABEL_834:

      if (v812 > 0.0)
      {
        objf = [nandGarbageCollectionEvents2 keysSortedByValueUsingComparator:&__block_literal_global_1164];
        v837 = *p_isa;
        v838 = [objf componentsJoinedByString:{@", "}];
        [v837 printWithFormat:@"%-*s%.0f%% (%.2fs/%.2fs, %@)\n", 18, "NAND Garbage Collection: ", v812 * 100.0 / v301, *&v812, *&v301, v838];

        v1499 = 1;
        goto LABEL_836;
      }
    }

    else
    {
LABEL_836:
    }

LABEL_837:
  }

  systemAdvisoryLevels = [*v1488 systemAdvisoryLevels];

  if (systemAdvisoryLevels)
  {
    if (printJson)
    {
      systemAdvisoryLevels2 = [*(v1542 + 168) systemAdvisoryLevels];
      v1583[0] = MEMORY[0x1E69E9820];
      v1583[1] = 3221225472;
      v1583[2] = __30__SASamplePrinter_printHeader__block_invoke_4;
      v1583[3] = &unk_1E86F75C0;
      v1583[4] = v1542;
      [systemAdvisoryLevels2 enumerateKeysAndObjectsUsingBlock:v1583];
    }

    else
    {
      v841 = objc_alloc_init(MEMORY[0x1E696AD60]);
      systemAdvisoryLevels3 = [*v1488 systemAdvisoryLevels];
      v1581[0] = MEMORY[0x1E69E9820];
      v1581[1] = 3221225472;
      v1581[2] = __30__SASamplePrinter_printHeader__block_invoke_5;
      v1581[3] = &unk_1E86F75C0;
      v843 = v841;
      v1582 = v843;
      [systemAdvisoryLevels3 enumerateKeysAndObjectsUsingBlock:v1581];

      if ([v843 hasSuffix:{@", "}])
      {
        v844 = [@" "];
        [v843 replaceCharactersInRange:objc_msgSend(v843 withString:{"length") - v844, v844, &stru_1F5BBF440}];
      }

      v845 = *p_isa;
      v846 = v843;
      [v845 printWithFormat:@"%-*s%s\n", 18, "Advisory levels: ", objc_msgSend(v843, "UTF8String")];

      v1499 = 1;
    }
  }

  homeVolumeSpace = [*v1488 homeVolumeSpace];

  if (homeVolumeSpace)
  {
    homeVolumeSpace2 = [*v1488 homeVolumeSpace];
    v849 = [homeVolumeSpace2 objectForKeyedSubscript:0x1F5BBF8A0];

    homeVolumeSpace3 = [*v1488 homeVolumeSpace];
    v851 = [homeVolumeSpace3 objectForKeyedSubscript:0x1F5BBF8C0];

    homeVolumeSpace4 = [*v1488 homeVolumeSpace];
    v853 = [homeVolumeSpace4 objectForKeyedSubscript:0x1F5BBF8E0];

    if (v849)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v851 != 0)) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v853)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v853 = 0;
            }
          }

          v854 = *p_isa;
          if (printJson)
          {
            SAJSONWriteDictionaryEntry(*p_isa, @"homeVolumeTotalSpace", v849);
            SAJSONWriteDictionaryEntry(*p_isa, @"homeVolumeAvailableSpace", v851);
            if (v853)
            {
              SAJSONWriteDictionaryEntry(*p_isa, @"homeVolumeLowSpaceThreshold", v853);
            }
          }

          else
          {
            v855 = SAFormattedBytesEx([v851 unsignedLongLongValue], 1, 0, 1, 0);
            v856 = SAFormattedBytesEx([v849 unsignedLongLongValue], 1, 0, 1, 0);
            [v854 printWithFormat:@"%-*s%@/%@", 18, "Free disk space: ", v855, v856];

            if (v853)
            {
              v857 = *p_isa;
              v858 = SAFormattedBytesEx([v853 unsignedLongLongValue], 1, 0, 1, 0);
              [v857 printWithFormat:@", low space threshold %@", v858];
            }

            [*p_isa printWithFormat:@"\n"];
            v1499 = 1;
          }
        }
      }
    }
  }

  powerModeTransitions = [*v1488 powerModeTransitions];
  v860 = [powerModeTransitions count] == 0;

  if (v860)
  {
    goto LABEL_915;
  }

  if (printJson)
  {
    v862 = *p_isa;
    powerModeTransitions2 = [*v1488 powerModeTransitions];
    SAJSONWriteDictionaryEntry(v862, @"powerModeTransitions", powerModeTransitions2);

    goto LABEL_915;
  }

  *v1677 = 0;
  v1577 = 0u;
  v1578 = 0u;
  v1579 = 0u;
  v1580 = 0u;
  powerModeTransitions3 = [*v1488 powerModeTransitions];
  v865 = [powerModeTransitions3 countByEnumeratingWithState:&v1577 objects:v1654 count:16];
  if (!v865)
  {

    v870 = 0;
    goto LABEL_914;
  }

  v866 = 0;
  v867 = 0;
  lowPowerMode2 = 0;
  v869 = 0;
  v870 = 0;
  v871 = *v1578;
  v872 = 0.0;
  while (2)
  {
    v873 = 0;
    while (2)
    {
      if (*v1578 != v871)
      {
        objc_enumerationMutation(powerModeTransitions3);
      }

      v874 = *(*(&v1577 + 1) + 8 * v873);
      if ([v874 lowPowerModeChanged])
      {
        timestamp4 = [v874 timestamp];
        v876 = timestamp4;
        if (!timestamp4)
        {
          goto LABEL_879;
        }

        if ([timestamp4 isComparable:*(v1542 + 40)] && objc_msgSend(v876, "gt:", *(v1542 + 40)))
        {
          if (v869)
          {

LABEL_888:
            if (v867)
            {
              if (lowPowerMode2)
              {
                [*(v1542 + 40) wallTime];
                v885 = v884;
                [v870 wallTime];
                v872 = v872 + v885 - v886;
                if (v867 == 1)
                {
                  asprintf(v1677, "(for last %.1fs of samples)", v872);
                  goto LABEL_909;
                }

LABEL_908:
                [*(v1542 + 40) wallTime];
                v898 = v897;
                [*(v1542 + 32) wallTime];
                asprintf(v1677, "(for %.1fs out of %.1fs of samples)", v872, v898 - v899);
              }

              else
              {
                if (v867 != 1)
                {
                  goto LABEL_908;
                }

                asprintf(v1677, "(for first %.1fs of samples)", v872);
              }

LABEL_909:
              [*p_isa printWithFormat:@"%-*sEnabled", 18, "Low Power Mode: "];
              v896 = *p_isa;
              if (!*v1677)
              {
LABEL_912:
                [v896 appendString:@"\n"];
                goto LABEL_913;
              }

LABEL_905:
              [v896 printWithFormat:@" %s\n", *v1677];
LABEL_913:
              v1499 = 1;
              goto LABEL_914;
            }

            *v1677 = 0;
            if (lowPowerMode2)
            {
              goto LABEL_909;
            }
          }

          else
          {
            lowPowerMode = [v874 lowPowerMode];

            if ((lowPowerMode & 1) == 0)
            {
              goto LABEL_909;
            }
          }

LABEL_903:
          if ([*(v1542 + 16) displayDefaultPowerModes])
          {
            [*p_isa printWithFormat:@"%-*sDisabled", 18, "Low Power Mode: "];
            v896 = *p_isa;
            if (!*v1677)
            {
              goto LABEL_912;
            }

            goto LABEL_905;
          }

          goto LABEL_913;
        }

        if ([v876 isComparable:*(v1542 + 32)] && (objc_msgSend(v876, "lt:", *(v1542 + 32)) & 1) == 0)
        {
          if ((v869 & 1) == 0 || (lowPowerMode2 & 1) != [v874 lowPowerMode])
          {
            if (([v874 lowPowerMode] & 1) == 0)
            {
              timestamp5 = [v874 timestamp];
              [timestamp5 wallTime];
              v879 = v878;
              v880 = v870;
              if (!v870)
              {
                v880 = *(v1542 + 32);
              }

              [v880 wallTime];
              v882 = v881;

              v872 = v872 + v879 - v882;
            }

            v883 = v876;

            ++v867;
            v870 = v883;
            goto LABEL_879;
          }
        }

        else
        {
LABEL_879:
          lowPowerMode2 = [v874 lowPowerMode];
        }

        v866 = 1;
        v869 = 1;
      }

      if (v865 != ++v873)
      {
        continue;
      }

      break;
    }

    v865 = [powerModeTransitions3 countByEnumeratingWithState:&v1577 objects:v1654 count:16];
    if (v865)
    {
      continue;
    }

    break;
  }

  if (v866)
  {
    if (v869)
    {
      goto LABEL_888;
    }

    goto LABEL_903;
  }

LABEL_914:

LABEL_915:
  Property = *v1488;
  if (*v1488)
  {
    Property = objc_getProperty(Property, v861, 1176, 1);
  }

  v901 = Property;

  if (v901)
  {
    if (printJson)
    {
      v903 = *p_isa;
      v904 = *v1488;
      if (*v1488)
      {
        v904 = objc_getProperty(v904, v902, 1176, 1);
      }

      v905 = v904;
      SAJSONWriteDictionaryEntry(v903, @"_powerMitigationLevelAtTailspinCapture", v905);

      v906 = *v1488;
      if (!*v1488 || !v906[145])
      {
LABEL_941:
        models = [v906 models];

        if (models)
        {
          v927 = *p_isa;
          models2 = [*v1488 models];
          SAJSONWriteDictionaryEntry(v927, @"models", models2);
        }

        objh = [(SASamplePrinter *)v1542 printLaunchdThrottledProcessesToStream:?];
        goto LABEL_1087;
      }

LABEL_933:
      v915 = *p_isa;
      v916 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v906[142]];
      SAJSONWriteDictionaryEntry(v915, @"numVnodesAllocated", v916);

      v917 = *p_isa;
      if (*v1488)
      {
        v918 = *(*v1488 + 143);
      }

      else
      {
        v918 = 0;
      }

      v919 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v918];
      SAJSONWriteDictionaryEntry(v917, @"numVnodesFree", v919);

      v920 = *p_isa;
      if (*v1488)
      {
        v921 = *(*v1488 + 144);
      }

      else
      {
        v921 = 0;
      }

      v922 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v921];
      SAJSONWriteDictionaryEntry(v920, @"numVnodesSoftLimit", v922);

      v923 = *p_isa;
      if (*v1488)
      {
        v924 = *(*v1488 + 145);
      }

      else
      {
        v924 = 0;
      }

      v925 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v924];
      SAJSONWriteDictionaryEntry(v923, @"numVnodesHardLimit", v925);

      v906 = *v1488;
      goto LABEL_941;
    }

    isAnyPowerMitigationEnabledAtTailspinCapture = [(SASampleStore *)*v1488 isAnyPowerMitigationEnabledAtTailspinCapture];
    v909 = v1488;
    if ((isAnyPowerMitigationEnabledAtTailspinCapture & 1) != 0 || (v910 = [*(v1542 + 16) displayDefaultPowerModes], v909 = v1488, v910))
    {
      v911 = *p_isa;
      v912 = *v909;
      if (*v909)
      {
        v912 = objc_getProperty(v912, v908, 1176, 1);
      }

      v913 = v912;
      [v911 printWithFormat:@"%-*s%@\n", 18, "Power Management Mitigation Level (at tailspin capture): ", v913];

      v1499 = 1;
      goto LABEL_929;
    }
  }

  else
  {
LABEL_929:
    v909 = v1488;
  }

  v906 = *v909;
  if (*v909 && (v914 = v906[145]) != 0)
  {
    if (printJson)
    {
      goto LABEL_933;
    }

    v929 = v906[143] - v906[142] + v914;
    objc_msgSend(*p_isa, "printWithFormat:", @"%-*s%.2f%% (%llu/%llu"), 18, "Vnodes Available: ", v929 * 100.0 / v914, v929, v914;
    v930 = *v1488;
    if (*v1488)
    {
      v931 = v930[142];
      if (v931 == v930[145] || ([*p_isa printWithFormat:@", %llu allocated", v931], (v930 = *v1488) != 0))
      {
        v932 = v930[144];
        if (v932 != v930[145])
        {
          [*p_isa printWithFormat:@", %llu soft limit", v932];
        }
      }
    }

    [*p_isa printWithFormat:@"\n"]);
    v906 = *v1488;
    v1499 = 1;
  }

  else if (printJson)
  {
    goto LABEL_941;
  }

  eventTimeRange14 = [v906 eventTimeRange];
  startTime11 = [eventTimeRange14 startTime];
  v935 = startTime11;
  if (!startTime11)
  {
    v935 = *(v1542 + 32);
  }

  objg = v935;

  eventTimeRange15 = [*v1488 eventTimeRange];
  endTime10 = [eventTimeRange15 endTime];
  v938 = endTime10;
  if (!endTime10)
  {
    v938 = *(v1542 + 40);
  }

  v1525 = v938;

  if (objg && v1525)
  {
    models3 = [*v1488 models];
    v1434 = models3;
    if (!models3)
    {
      v1020 = @"%-*sUNKNOWN\n";
      goto LABEL_1081;
    }

    if (![models3 count])
    {
      goto LABEL_1080;
    }

    v1576 = 0u;
    v1575 = 0u;
    v1574 = 0u;
    v1573 = 0u;
    v1467 = v1434;
    v1475 = [v1467 countByEnumeratingWithState:&v1573 objects:v1653 count:16];
    if (!v1475)
    {

      goto LABEL_1080;
    }

    v1485 = 0;
    v1471 = *v1574;
LABEL_959:
    v940 = 0;
LABEL_960:
    if (*v1574 != v1471)
    {
      v941 = v940;
      objc_enumerationMutation(v1467);
      v940 = v941;
    }

    v1480 = v940;
    v1514 = *(*(&v1573 + 1) + 8 * v940);
    v1501 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    loadedChanges = [v1514 loadedChanges];
    v943 = [loadedChanges count] == 0;

    if (v943)
    {
      timestamp6 = 0;
      v947 = 0;
      goto LABEL_1027;
    }

    v944 = 0;
    v945 = 0;
    v946 = 0;
    v947 = 0;
    while (1)
    {
      loadedChanges2 = [v1514 loadedChanges];
      v949 = [loadedChanges2 objectAtIndexedSubscript:v944];

      loaded = [v949 loaded];
      if (loaded)
      {
        if ((v946 & 1) == 0)
        {
          timestamp6 = [v949 timestamp];

          if (timestamp6)
          {
            if ([timestamp6 isComparable:v1525] && (objc_msgSend(timestamp6, "gt:", v1525) & 1) != 0)
            {

              goto LABEL_1027;
            }

            v945 = timestamp6;
          }

          else
          {
            v945 = 0;
          }
        }

        loadedRequesters = [v949 loadedRequesters];
        if (loadedRequesters)
        {
          loadedRequesters2 = [v949 loadedRequesters];
          [v1501 addObjectsFromArray:loadedRequesters2];
        }

        goto LABEL_1006;
      }

      if (v946)
      {
        break;
      }

LABEL_1005:
      [v1501 removeAllObjects];
      loadedRequesters = v945;
      v945 = 0;
LABEL_1006:

      loadedChanges3 = [v1514 loadedChanges];
      v976 = [loadedChanges3 count];

      ++v944;
      v946 = loaded;
      if (v944 >= v976)
      {
        if (loaded)
        {
          if ((v947 & 1) == 0)
          {
            v977 = *p_isa;
            identifier = [v1514 identifier];
            [v977 printWithFormat:@"%-*s%@\n", 18, "Model: ", identifier];
          }

          [*p_isa printWithFormat:@"%-*s", 18, "  Loaded: "];
          if (v945)
          {
            *v1677 = 0;
            [objg deltaSecondsTo:v945 timeDomainPriorityList:&unk_1F5BDCDC0 timeDomainUsed:v1677];
            if (*v1677)
            {
              v980 = v979;
            }

            else
            {
              v980 = NAN;
            }

            v981 = *p_isa;
            if (v980 == 0.0)
            {
              v982 = 2;
            }

            else
            {
              v983 = -v980;
              if (v980 >= 0.0)
              {
                v983 = v980;
              }

              v982 = 2 - vcvtpd_s64_f64(log10(v983));
              v984 = __exp10(v982);
              v980 = round(v980 * v984) / v984;
            }

            [v981 printWithFormat:@"%.*fs", v982 & ~(v982 >> 31), *&v980];
          }

          else
          {
            [*p_isa printWithFormat:@"???"];
          }

          [*p_isa printWithFormat:@" - N/A"];
          v985 = [v1501 count];
          v986 = *p_isa;
          if (v985)
          {
            allObjects4 = [v1501 allObjects];
            v988 = [allObjects4 sortedArrayUsingComparator:&__block_literal_global_11];
            v989 = [v988 componentsJoinedByString:{@", "}];
            [v986 printWithFormat:@", requested by %@", v989];
          }

          else
          {
            [*p_isa printWithFormat:@", requested by UNKNOWN"];
          }

          [*p_isa printWithFormat:@"\n"];
          v947 = 1;
        }

        timestamp6 = v945;
LABEL_1027:
        v1572 = 0u;
        v1571 = 0u;
        v1570 = 0u;
        v1569 = 0u;
        executions = [v1514 executions];
        v990 = [executions countByEnumeratingWithState:&v1569 objects:v1652 count:16];
        if (!v990)
        {
          goto LABEL_1072;
        }

        v991 = *v1570;
        while (2)
        {
          v992 = 0;
LABEL_1030:
          if (*v1570 != v991)
          {
            objc_enumerationMutation(executions);
          }

          v993 = *(*(&v1569 + 1) + 8 * v992);
          startTime12 = [v993 startTime];
          endTime11 = [v993 endTime];
          v996 = endTime11;
          if (startTime12)
          {
            if ([startTime12 isComparable:v1525] && (objc_msgSend(startTime12, "gt:", v1525) & 1) != 0)
            {

              goto LABEL_1072;
            }

            *v1677 = 0;
            [objg deltaSecondsTo:startTime12 timeDomainPriorityList:&unk_1F5BDCDD8 timeDomainUsed:v1677];
            if (*v1677)
            {
              v998 = v997;
            }

            else
            {
              v998 = NAN;
            }

            if (v996)
            {
LABEL_1039:
              *v1677 = 0;
              [objg deltaSecondsTo:v996 timeDomainPriorityList:&unk_1F5BDCDF0 timeDomainUsed:v1677];
              if (*v1677)
              {
                v1000 = v999;
              }

              else
              {
                v1000 = NAN;
              }

              v1001 = 1;
              if (v1000 < -10.0)
              {
                goto LABEL_1068;
              }

              goto LABEL_1046;
            }
          }

          else
          {
            v998 = NAN;
            if (endTime11)
            {
              goto LABEL_1039;
            }
          }

          v1001 = 0;
          v1000 = NAN;
LABEL_1046:
          if (v998 >= -10.0)
          {
            if ((v947 & 1) == 0)
            {
              v1002 = *p_isa;
              identifier2 = [v1514 identifier];
              [v1002 printWithFormat:@"%-*s%@\n", 18, "Model: ", identifier2];
            }

            [*p_isa printWithFormat:@"%-*s", 18, "  Executing: "];
            v1004 = *p_isa;
            if (v998 == 0.0)
            {
              v1005 = 2;
            }

            else
            {
              v1006 = -v998;
              if (v998 >= 0.0)
              {
                v1006 = v998;
              }

              v1005 = 2 - vcvtpd_s64_f64(log10(v1006));
              v1007 = __exp10(v1005);
              v998 = round(v998 * v1007) / v1007;
            }

            [v1004 printWithFormat:@"%.*fs", v1005 & ~(v1005 >> 31), *&v998];
            [*p_isa printWithFormat:@" - "];
            v1008 = *p_isa;
            if (v1001)
            {
              if (v1000 == 0.0)
              {
                v1009 = 2;
              }

              else
              {
                v1010 = -v1000;
                if (v1000 >= 0.0)
                {
                  v1010 = v1000;
                }

                v1009 = 2 - vcvtpd_s64_f64(log10(v1010));
                v1011 = __exp10(v1009);
                v1000 = round(v1000 * v1011) / v1011;
              }

              [v1008 printWithFormat:@"%.*fs", v1009 & ~(v1009 >> 31), *&v1000];
            }

            else
            {
              [*p_isa printWithFormat:@"N/A"];
            }

            v1012 = *p_isa;
            requester = [v993 requester];
            v1014 = requester;
            if (requester)
            {
              v1015 = requester;
            }

            else
            {
              v1015 = @"UNKNOWN";
            }

            useCaseID = [v993 useCaseID];
            v1017 = useCaseID;
            v1018 = @"UNKNOWN";
            if (useCaseID)
            {
              v1018 = useCaseID;
            }

            [v1012 printWithFormat:@", requested by %@ use case %@", v1015, v1018];

            [*p_isa printWithFormat:@"\n"];
            v947 = 1;
          }

LABEL_1068:

          if (v990 == ++v992)
          {
            v990 = [executions countByEnumeratingWithState:&v1569 objects:v1652 count:16];
            if (v990)
            {
              continue;
            }

LABEL_1072:

            v1485 |= v947;
            v940 = v1480 + 1;
            if (v1480 + 1 == v1475)
            {
              v1019 = [v1467 countByEnumeratingWithState:&v1573 objects:v1653 count:16];
              v1475 = v1019;
              if (!v1019)
              {

                if (v1485)
                {
LABEL_1082:

                  v1499 = 1;
                  goto LABEL_1083;
                }

LABEL_1080:
                v1020 = @"%-*snone\n";
LABEL_1081:
                [*p_isa printWithFormat:v1020, 18, "Models: "];
                goto LABEL_1082;
              }

              goto LABEL_959;
            }

            goto LABEL_960;
          }

          goto LABEL_1030;
        }
      }
    }

    timestamp7 = [v949 timestamp];
    if (timestamp7)
    {
      *v1677 = 0;
      [objg deltaSecondsTo:timestamp7 timeDomainPriorityList:&unk_1F5BDCD90 timeDomainUsed:v1677];
      if (*v1677)
      {
        v953 = v952;
      }

      else
      {
        v953 = NAN;
      }

      if (v953 >= -10.0)
      {
        if (v947)
        {
LABEL_981:
          [*p_isa printWithFormat:@"%-*s", 18, "  Loaded: "];
          if (v945)
          {
            *v1677 = 0;
            [objg deltaSecondsTo:v945 timeDomainPriorityList:&unk_1F5BDCDA8 timeDomainUsed:v1677];
            if (*v1677)
            {
              v959 = v958;
            }

            else
            {
              v959 = NAN;
            }

            v960 = *p_isa;
            if (v959 == 0.0)
            {
              v961 = 2;
            }

            else
            {
              v964 = -v959;
              if (v959 >= 0.0)
              {
                v964 = v959;
              }

              v961 = 2 - vcvtpd_s64_f64(log10(v964));
              v965 = __exp10(v961);
              v959 = round(v959 * v965) / v965;
            }

            [v960 printWithFormat:@"%.*fs", v961 & ~(v961 >> 31), *&v959];
          }

          else
          {
            [*p_isa printWithFormat:@"???"];
          }

          [*p_isa printWithFormat:@" - "];
          v966 = *p_isa;
          if (v953 == 0.0)
          {
            v967 = 2;
          }

          else
          {
            v968 = -v953;
            if (v953 >= 0.0)
            {
              v968 = v953;
            }

            v967 = 2 - vcvtpd_s64_f64(log10(v968));
            v969 = __exp10(v967);
            v953 = round(v953 * v969) / v969;
          }

          [v966 printWithFormat:@"%.*fs", v967 & ~(v967 >> 31), *&v953];
          v970 = [v1501 count];
          v971 = *p_isa;
          if (v970)
          {
            allObjects5 = [v1501 allObjects];
            v973 = [allObjects5 sortedArrayUsingComparator:&__block_literal_global_11];
            v974 = [v973 componentsJoinedByString:{@", "}];
            [v971 printWithFormat:@", requested by %@", v974];
          }

          else
          {
            [*p_isa printWithFormat:@", requested by UNKNOWN"];
          }

          [*p_isa printWithFormat:@"\n"];
          v947 = 1;
          goto LABEL_1004;
        }

LABEL_980:
        v956 = *p_isa;
        identifier3 = [v1514 identifier];
        [v956 printWithFormat:@"%-*s%@\n", 18, "Model: ", identifier3];

        goto LABEL_981;
      }
    }

    else
    {
      loadedChanges4 = [v1514 loadedChanges];
      v955 = v944 < [loadedChanges4 count] - 1;

      if (!v955)
      {
        v953 = NAN;
        if (v947)
        {
          goto LABEL_981;
        }

        goto LABEL_980;
      }
    }

LABEL_1004:

    goto LABEL_1005;
  }

LABEL_1083:

  if (!(printJson & 1 | ((v1499 & 1) == 0)))
  {
    [*p_isa printWithFormat:@"\n"];
  }

  v1050 = *(v1542 + 8);
  v1051 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *&v1673 = MEMORY[0x1E69E9820];
  *(&v1673 + 1) = 3221225472;
  *&v1674 = __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke;
  *(&v1674 + 1) = &unk_1E86F74B0;
  *&v1675 = v1542;
  v1052 = v1051;
  *(&v1675 + 1) = v1052;
  v1053 = MEMORY[0x1E12EBE50](&v1673);
  targetProcess5 = [*(v1542 + 168) targetProcess];
  if (targetProcess5)
  {
    (v1053)[2](v1053, targetProcess5);
  }

  else
  {
    v1682 = 0u;
    v1683 = 0u;
    memset(buf, 0, sizeof(buf));
    targetProcesses2 = [*v1488 targetProcesses];
    v1125 = [targetProcesses2 countByEnumeratingWithState:buf objects:v1677 count:16];
    if (v1125)
    {
      v1126 = **&buf[16];
      do
      {
        for (i2 = 0; i2 != v1125; ++i2)
        {
          if (**&buf[16] != v1126)
          {
            objc_enumerationMutation(targetProcesses2);
          }

          v1053[2](v1053, *(*&buf[8] + 8 * i2));
        }

        v1125 = [targetProcesses2 countByEnumeratingWithState:buf objects:v1677 count:16];
      }

      while (v1125);
    }
  }

  v1128 = [v1052 count];
  if (v1128)
  {
    options = [v1542 options];
    printJson2 = [options printJson];

    if (!printJson2)
    {
      v1131 = [v1052 componentsJoinedByString:{@", "}];
      [v1050 printWithFormat:@"%-*s%@\n", 18, "Target/responsible processes that have swallowed at least one exception: ", v1131];

      goto LABEL_1229;
    }

LABEL_1605:
    v1403 = *__error();
    v1404 = _sa_logt();
    if (os_log_type_enabled(v1404, OS_LOG_TYPE_ERROR))
    {
      *v1649 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1404, OS_LOG_TYPE_ERROR, "printProcessesWithHIESwallowedExceptions doesn't support json output", v1649, 2u);
    }

    *__error() = v1403;
    _SASetCrashLogMessage(2247, "printProcessesWithHIESwallowedExceptions doesn't support json output");
    _os_crash();
    __break(1u);
  }

LABEL_1229:

  v1132 = [(SASamplePrinter *)v1542 printLaunchdThrottledProcessesToStream:?];
  v1133 = *(v1542 + 8);
  v1134 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1135 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1136 = *(v1542 + 168);
  *v1677 = MEMORY[0x1E69E9820];
  *&v1677[8] = 3221225472;
  *&v1677[16] = __63__SASamplePrinter_printProcessesHittingWQThreadLimitsToStream___block_invoke;
  *&v1677[24] = &unk_1E86F5418;
  v1678 = v1542;
  v1137 = v1134;
  v1679 = v1137;
  v1138 = v1135;
  v1680 = v1138;
  [v1136 enumerateTasks:v1677];
  options2 = [v1542 options];
  LODWORD(v1136) = [options2 printJson];

  if (v1136)
  {
    v1399 = *__error();
    v1400 = _sa_logt();
    if (os_log_type_enabled(v1400, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1400, OS_LOG_TYPE_ERROR, "printProcessesHittingWQThreadLimits doesn't support json output", buf, 2u);
    }

    *__error() = v1399;
    _SASetCrashLogMessage(2430, "printProcessesHittingWQThreadLimits doesn't support json output");
    _os_crash();
    __break(1u);
    goto LABEL_1602;
  }

  if ([v1137 count])
  {
    workQueueHardThreadLimit = [*v1488 workQueueHardThreadLimit];
    v1141 = [v1137 componentsJoinedByString:{@", "}];
    [v1133 printWithFormat:@"Processes reached dispatch thread hard limit (%u): %@\n", workQueueHardThreadLimit, v1141];
  }

  if ([v1138 count])
  {
    workQueueSoftThreadLimit = [*v1488 workQueueSoftThreadLimit];
    v1143 = [v1138 componentsJoinedByString:{@", "}];
    [v1133 printWithFormat:@"Processes reached dispatch thread soft limit (%u): %@\n", workQueueSoftThreadLimit, v1143];
  }

  v1144 = v1128 != 0;
  v1145 = [v1137 count];
  v1146 = [v1138 count];

  if (v1145 + v1146)
  {
    v1147 = 1;
  }

  else
  {
    v1147 = v1132;
  }

  v1148 = *(v1542 + 8);
  v1149 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1150 = *(v1542 + 168);
  *v1677 = MEMORY[0x1E69E9820];
  *&v1677[8] = 3221225472;
  *&v1677[16] = __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke;
  *&v1677[24] = &unk_1E86F5D08;
  v1678 = v1542;
  v1151 = v1149;
  v1679 = v1151;
  [v1150 enumerateTasks:v1677];
  options3 = [v1542 options];
  printJson3 = [options3 printJson];

  if (printJson3)
  {
LABEL_1602:
    v1401 = *__error();
    v1402 = _sa_logt();
    if (os_log_type_enabled(v1402, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v1402, OS_LOG_TYPE_ERROR, "printRunawayMitigatedProcesses doesn't support json output", buf, 2u);
    }

    *__error() = v1401;
    _SASetCrashLogMessage(2456, "printRunawayMitigatedProcesses doesn't support json output");
    _os_crash();
    __break(1u);
    goto LABEL_1605;
  }

  if ([v1151 count])
  {
    v1154 = [v1151 componentsJoinedByString:{@", "}];
    [v1148 printWithFormat:@"%-*s%@\n", 18, "Processes runaway mitigated: ", v1154];
  }

  v1155 = [v1151 count];

  objh = (v1155 != 0) | v1144 | v1147;
LABEL_1087:
  v1021 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1022 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1023 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1024 = *(v1542 + 152);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __34__SASamplePrinter_printDeadlocks___block_invoke;
  *&buf[24] = &unk_1E86F7270;
  *&v1682 = v1542;
  v1025 = v1023;
  *(&v1682 + 1) = v1025;
  v1526 = v1022;
  *&v1683 = v1526;
  v1026 = v1021;
  *(&v1683 + 1) = v1026;
  [v1024 enumerateKeysAndObjectsUsingBlock:buf];
  v1027 = [v1026 count];
  v1028 = v1027 != 0;
  if (v1027)
  {
    options4 = [v1542 options];
    printJson4 = [options4 printJson];

    if (printJson4)
    {
      SAJSONWriteDictionaryEntry(*p_isa, @"deadlocks", v1026);
    }

    else
    {
      v1676 = 0u;
      v1675 = 0u;
      v1674 = 0u;
      v1673 = 0u;
      v1031 = v1026;
      v1032 = [v1031 countByEnumeratingWithState:&v1673 objects:v1677 count:16];
      if (v1032)
      {
        v1033 = *v1674;
        do
        {
          for (i3 = 0; i3 != v1032; ++i3)
          {
            if (*v1674 != v1033)
            {
              objc_enumerationMutation(v1031);
            }

            [*p_isa printWithFormat:@"%-*s%@\n", 18, "Deadlock: ", *(*(&v1673 + 1) + 8 * i3)];
          }

          v1032 = [v1031 countByEnumeratingWithState:&v1673 objects:v1677 count:16];
        }

        while (v1032);
      }
    }
  }

  if ([v1025 count])
  {
    options5 = [v1542 options];
    printJson5 = [options5 printJson];

    v1037 = *(v1542 + 8);
    if (printJson5)
    {
      allObjects6 = [v1025 allObjects];
      v1039 = [allObjects6 sortedArrayUsingComparator:&__block_literal_global_11];
      SAJSONWriteDictionaryEntry(v1037, @"blockedByDeadlock", v1039);
    }

    else
    {
      v1040 = [v1025 count];
      if ([v1025 count] == 1)
      {
        v1041 = "";
      }

      else
      {
        v1041 = "s";
      }

      allObjects6 = [v1025 allObjects];
      v1039 = [allObjects6 sortedArrayUsingComparator:&__block_literal_global_11];
      v1042 = [v1039 componentsJoinedByString:{@", "}];
      [v1037 printWithFormat:@"%-*s%lu task%s - %@\n", 18, "Blocked by Deadlock: ", v1040, v1041, v1042];
    }

    v1028 = 1;
  }

  if (!(printJson & 1 | (((v1028 | objh) & 1) == 0)))
  {
    [*p_isa printWithFormat:@"\n"];
  }

  if ([*v1488 appleInternalIsKnown])
  {
    if (printJson)
    {
      v1043 = *p_isa;
      if ([*v1488 isAppleInternal])
      {
        v1044 = MEMORY[0x1E695E118];
      }

      else
      {
        v1044 = MEMORY[0x1E695E110];
      }

      SAJSONWriteDictionaryEntry(v1043, @"isAppleInternal", v1044);
    }

    else if ([*v1488 isAppleInternal])
    {
      v1045 = *p_isa;
      if ([*v1488 isAppleInternal])
      {
        v1046 = "Yes";
      }

      else
      {
        v1046 = "No";
      }

      [v1045 printWithFormat:@"%-*s%s\n", 18, "Apple Internal: ", v1046];
    }

    if ([*v1488 isAppleInternal] && objc_msgSend(*v1488, "hasInternalCarryDeviceDistinction"))
    {
      v1047 = *p_isa;
      isInternalCarryDevice = [*v1488 isInternalCarryDevice];
      if (printJson)
      {
        if (isInternalCarryDevice)
        {
          v1049 = MEMORY[0x1E695E118];
        }

        else
        {
          v1049 = MEMORY[0x1E695E110];
        }

        SAJSONWriteDictionaryEntry(v1047, @"isInternalCarryDevice", v1049);
      }

      else
      {
        if (isInternalCarryDevice)
        {
          v1055 = "Yes";
        }

        else
        {
          v1055 = "No";
        }

        [v1047 printWithFormat:@"%-*s%s\n", 18, "Internal Carry Device: ", v1055];
      }
    }
  }

  automatedDeviceGroup = [*v1488 automatedDeviceGroup];

  if (automatedDeviceGroup)
  {
    v1057 = *p_isa;
    automatedDeviceGroup2 = [*v1488 automatedDeviceGroup];
    v1059 = automatedDeviceGroup2;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v1057, @"automatedDeviceGroup", automatedDeviceGroup2);
    }

    else
    {
      v1060 = SACopySanitizedString(automatedDeviceGroup2, 1, 0xFFuLL);
      [v1057 printWithFormat:@"%-*s%@\n", 18, "Automated Device Group: ", v1060];
    }
  }

  nonDefaultFeatureFlags = [*v1488 nonDefaultFeatureFlags];

  if (nonDefaultFeatureFlags)
  {
    if (printJson)
    {
      nonDefaultFeatureFlags2 = [*(v1542 + 168) nonDefaultFeatureFlags];
      v1568[0] = MEMORY[0x1E69E9820];
      v1568[1] = 3221225472;
      v1568[2] = __30__SASamplePrinter_printHeader__block_invoke_6;
      v1568[3] = &unk_1E86F75C0;
      v1568[4] = v1542;
      [nonDefaultFeatureFlags2 enumerateKeysAndObjectsUsingBlock:v1568];
    }

    else
    {
      v1063 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v1064 = objc_alloc_init(MEMORY[0x1E696AD60]);
      nonDefaultFeatureFlags3 = [*v1488 nonDefaultFeatureFlags];
      v1565[0] = MEMORY[0x1E69E9820];
      v1565[1] = 3221225472;
      v1565[2] = __30__SASamplePrinter_printHeader__block_invoke_7;
      v1565[3] = &unk_1E86F75E8;
      v1066 = v1063;
      v1566 = v1066;
      v1067 = v1064;
      v1567 = v1067;
      [nonDefaultFeatureFlags3 enumerateKeysAndObjectsUsingBlock:v1565];

      if ([v1066 length])
      {
        if ([v1066 hasSuffix:{@", "}])
        {
          v1068 = [@" "];
          [v1066 replaceCharactersInRange:objc_msgSend(v1066 withString:{"length") - v1068, v1068, &stru_1F5BBF440}];
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Enabled Features: ", v1066];
      }

      if ([v1067 length])
      {
        if ([v1067 hasSuffix:{@", "}])
        {
          v1069 = [@" "];
          [v1067 replaceCharactersInRange:objc_msgSend(v1067 withString:{"length") - v1069, v1069, &stru_1F5BBF440}];
        }

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Disabled Features: ", v1067];
      }
    }
  }

  preferredLanguages = [*v1488 preferredLanguages];

  if (preferredLanguages)
  {
    if (printJson)
    {
      v1071 = *p_isa;
      preferredLanguages2 = [*v1488 preferredLanguages];
      SAJSONWriteDictionaryEntry(v1071, @"preferredLanguages", preferredLanguages2);
    }

    else
    {
      preferredLanguages3 = [*v1488 preferredLanguages];
      preferredLanguages2 = preferredLanguages3;
      if (preferredLanguages3)
      {
        v1074 = [preferredLanguages3 componentsJoinedByString:{@", "}];
        v1075 = SACopySanitizedString(v1074, 1, 0);

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Preferred User Language: ", v1075];
      }

      else
      {
        v1076 = *__error();
        v1077 = _sa_logt();
        if (os_log_type_enabled(v1077, OS_LOG_TYPE_DEBUG))
        {
          *v1677 = 0;
          _os_log_debug_impl(&dword_1E0E2F000, v1077, OS_LOG_TYPE_DEBUG, "preferredLang nil!", v1677, 2u);
        }

        preferredLanguages2 = 0;
        *__error() = v1076;
      }
    }
  }

  countryCode = [*v1488 countryCode];

  if (countryCode)
  {
    if (printJson)
    {
      v1079 = *p_isa;
      countryCode2 = [*v1488 countryCode];
      SAJSONWriteDictionaryEntry(v1079, @"countryCode", countryCode2);
    }

    else
    {
      countryCode3 = [*v1488 countryCode];
      v1082 = countryCode3;
      if (countryCode3)
      {
        v1083 = [countryCode3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5BBF440];

        v1084 = [v1083 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_1F5BBF440];

        v1085 = SACopySanitizedString(v1084, 1, 0);

        [*p_isa printWithFormat:@"%-*s%@\n", 18, "Country Code: ", v1085];
      }

      else
      {
        v1086 = *__error();
        v1087 = _sa_logt();
        if (os_log_type_enabled(v1087, OS_LOG_TYPE_DEBUG))
        {
          *v1677 = 0;
          _os_log_debug_impl(&dword_1E0E2F000, v1087, OS_LOG_TYPE_DEBUG, "countryCode nil!", v1677, 2u);
        }

        *__error() = v1086;
      }
    }
  }

  keyboardLanguages = [*v1488 keyboardLanguages];
  v1089 = [keyboardLanguages count] == 0;

  if (v1089)
  {
    if (([*v1488 hasHardwareKeyboardInfo] & 1) == 0)
    {
      goto LABEL_1187;
    }

    if (printJson)
    {
      goto LABEL_1172;
    }

    goto LABEL_1182;
  }

  if ((printJson & 1) == 0)
  {
    keyboardLanguages2 = [*v1488 keyboardLanguages];
    v1095 = [keyboardLanguages2 componentsJoinedByString:{@", "}];

    if (v1095)
    {
      v1096 = SACopySanitizedString(v1095, 1, 0);

      [*p_isa printWithFormat:@"%-*s%@\n", 18, "Keyboards: ", v1096];
    }

    else
    {
      v1097 = *__error();
      v1098 = _sa_logt();
      if (os_log_type_enabled(v1098, OS_LOG_TYPE_DEBUG))
      {
        *v1677 = 0;
        _os_log_debug_impl(&dword_1E0E2F000, v1098, OS_LOG_TYPE_DEBUG, "keyboardLang nil!", v1677, 2u);
      }

      *__error() = v1097;
    }

    if (([*v1488 hasHardwareKeyboardInfo] & 1) == 0)
    {
      goto LABEL_1187;
    }

LABEL_1182:
    if ([*v1488 hardwareKeyboard])
    {
      v1099 = *p_isa;
      if ([*v1488 hardwareKeyboard])
      {
        v1100 = "Yes";
      }

      else
      {
        v1100 = "No";
      }

      [v1099 printWithFormat:@"%-*s%s\n", 18, "HW Keyboard: ", v1100];
    }

    goto LABEL_1187;
  }

  v1090 = *p_isa;
  keyboardLanguages3 = [*v1488 keyboardLanguages];
  SAJSONWriteDictionaryEntry(v1090, @"keyboardLanguages", keyboardLanguages3);

  if (([*v1488 hasHardwareKeyboardInfo] & 1) == 0)
  {
    goto LABEL_1187;
  }

LABEL_1172:
  v1092 = *p_isa;
  if ([*v1488 hardwareKeyboard])
  {
    v1093 = MEMORY[0x1E695E118];
  }

  else
  {
    v1093 = MEMORY[0x1E695E110];
  }

  SAJSONWriteDictionaryEntry(v1092, @"hardwareKeyboard", v1093);
LABEL_1187:
  if ([*v1488 isRootInstalled])
  {
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(*p_isa, @"isRootInstalled", MEMORY[0x1E695E118]);
      installedRootNames = [*v1488 installedRootNames];
      v1102 = [installedRootNames count] == 0;

      if (!v1102)
      {
        v1103 = *p_isa;
        installedRootNames2 = [*v1488 installedRootNames];
        SAJSONWriteDictionaryEntry(v1103, @"installedRootNames", installedRootNames2);
      }

      goto LABEL_1191;
    }

    installedRootNames3 = [*v1488 installedRootNames];
    v1108 = [installedRootNames3 count] == 0;

    if (v1108 || ([*v1488 installedRootNames], v1109 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1109, "componentsJoinedByString:", @", "), v1110 = objc_claimAutoreleasedReturnValue(), v1109, !v1110))
    {
      v1111 = 0;
    }

    else
    {
      v1111 = SACopySanitizedString(v1110, 1, 0);
    }

    v1112 = [v1111 length];
    v1113 = *p_isa;
    if (v1112)
    {
      [v1113 printWithFormat:@"%-*s%@\n", 18, "Installed Roots: ", v1111];
    }

    else
    {
      [v1113 printWithFormat:@"%-*sYes\n", 18, "Installed Roots: "];
    }

    if ([*v1488 numOSCryptexFileExtents])
    {
LABEL_1203:
      [*p_isa printWithFormat:@"%-*s%d\n", 18, "OS Cryptex File Extents: ", objc_msgSend(*v1488, "numOSCryptexFileExtents")];
    }

LABEL_1204:
    if ([*v1488 gpuRestartCount])
    {
      if (printJson)
      {
        goto LABEL_1206;
      }

      [*p_isa printWithFormat:@"%-*s%llu\n", 18, "GPU Restart Count: ", objc_msgSend(*v1488, "gpuRestartCount")];
      if ([*v1488 gpuRestartLastMachAbs] && objc_msgSend(*v1488, "machTimebase") && objc_msgSend(*v1488, "machTimebase") >> 32 && objc_msgSend(*(v1542 + 32), "machAbsTime"))
      {
        gpuRestartLastMachAbs = [*(v1542 + 168) gpuRestartLastMachAbs];
        if (gpuRestartLastMachAbs >= [*(v1542 + 32) machAbsTime])
        {
          gpuRestartLastMachAbs2 = [*(v1542 + 168) gpuRestartLastMachAbs];
          machAbsTime = [*(v1542 + 32) machAbsTime];
          machTimebase = [*(v1542 + 168) machTimebase];
          v1159 = 0;
          if (HIDWORD(machTimebase))
          {
            if (machTimebase)
            {
              v1159 = gpuRestartLastMachAbs2 - machAbsTime;
              if (machTimebase != HIDWORD(machTimebase))
              {
                v1159 = __udivti3();
              }
            }
          }

          v1123 = v1159 / -1000000000.0 + 0.0;
        }

        else
        {
          machAbsTime2 = [*(v1542 + 32) machAbsTime];
          gpuRestartLastMachAbs3 = [*(v1542 + 168) gpuRestartLastMachAbs];
          machTimebase2 = [*(v1542 + 168) machTimebase];
          v1122 = 0;
          if (HIDWORD(machTimebase2))
          {
            if (machTimebase2)
            {
              v1122 = machAbsTime2 - gpuRestartLastMachAbs3;
              if (machTimebase2 != HIDWORD(machTimebase2))
              {
                v1122 = __udivti3();
              }
            }
          }

          v1123 = v1122 / 1000000000.0;
        }

        [*p_isa printWithFormat:@"%-*s%.0fs\n", 18, "Time Since GPU Restart: ", *&v1123];
      }
    }
  }

  else
  {
LABEL_1191:
    if (![*v1488 numOSCryptexFileExtents])
    {
      goto LABEL_1204;
    }

    if ((printJson & 1) == 0)
    {
      goto LABEL_1203;
    }

    v1105 = *p_isa;
    v1106 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*v1488, "numOSCryptexFileExtents")}];
    SAJSONWriteDictionaryEntry(v1105, @"numOSCryptexFileExtents", v1106);

    if ([*v1488 gpuRestartCount])
    {
LABEL_1206:
      v1114 = *p_isa;
      v1115 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "gpuRestartCount")}];
      SAJSONWriteDictionaryEntry(v1114, @"gpuRestartCount", v1115);

      if ([*v1488 gpuRestartLastMachAbs])
      {
        v1116 = *p_isa;
        v1117 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "gpuRestartLastMachAbs")}];
        SAJSONWriteDictionaryEntry(v1116, @"gpuRestartLastMachAbs", v1117);
      }
    }
  }

  if ([*v1488 hasEnterprisePersona])
  {
    v1160 = *p_isa;
    if (printJson)
    {
      SAJSONWriteDictionaryEntry(v1160, @"hasEnterprisePersona", MEMORY[0x1E695E118]);
      goto LABEL_1262;
    }

    [v1160 printWithFormat:@"%-*sYes\n", 18, "Has Enterprise Persona: "];
  }

  else if (printJson)
  {
    goto LABEL_1262;
  }

  if ([*v1488 sanitizePaths])
  {
    v1161 = os_variant_has_internal_diagnostics() ^ 1;
  }

  else
  {
    v1161 = 0;
  }

  *v1677 = 0;
  *&v1677[8] = v1677;
  *&v1677[16] = 0x2020000000;
  v1677[24] = 0;
  mountStatusTracker = [*v1488 mountStatusTracker];
  v1163 = *(v1542 + 32);
  v1164 = *(v1542 + 40);
  v1563[0] = MEMORY[0x1E69E9820];
  v1563[1] = 3221225472;
  v1563[2] = __30__SASamplePrinter_printHeader__block_invoke_1352;
  v1563[3] = &unk_1E86F7610;
  v1564 = v1161;
  v1563[4] = v1542;
  v1563[5] = v1677;
  [(SAMountStatusTracker *)mountStatusTracker enumerateUnresponsiveMountsBetweenStartTime:v1163 endTime:v1164 block:v1563];

  if (*(*&v1677[8] + 24) == 1)
  {
    [*p_isa appendString:@"\n"];
  }

  _Block_object_dispose(v1677, 8);
  v1165 = printJson;
  if (!*(v1542 + 176))
  {
    v1165 = 1;
  }

  if ((v1165 & 1) == 0)
  {
    [*p_isa printWithFormat:@"\n%@\n\n", *(v1542 + 176)];
  }

LABEL_1262:
  if ([*(v1542 + 16) printSpinSignatureStack] && -[SASamplePrinter hasTargetProcess](v1542))
  {
    targetProcesses3 = [*v1488 targetProcesses];
    if (targetProcesses3)
    {
      isMainThread = 0;
      obji = 0;
      goto LABEL_1266;
    }

    v1179 = v1542;
    v1180 = *(v1542 + 136);
    if (v1180)
    {
      obji = v1180;
      v1181 = v1488;
      goto LABEL_1290;
    }

    obji = [*v1488 targetProcess];

    v1179 = v1542;
    v1181 = v1488;
    if (obji)
    {
LABEL_1290:
      if (!*(v1179 + 136))
      {
        if ([*v1181 targetThreadId])
        {
          threads3 = [obji threads];
          v1195 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetThreadId")}];
          mainThread = [threads3 objectForKeyedSubscript:v1195];

          if (mainThread)
          {
            isMainThread = [mainThread isMainThread];
            v1168 = 1;
          }

          else
          {
            v1245 = *__error();
            v1246 = _sa_logt();
            if (os_log_type_enabled(v1246, OS_LOG_TYPE_DEFAULT))
            {
              targetThreadId = [*v1488 targetThreadId];
              *v1677 = 134217984;
              *&v1677[4] = targetThreadId;
              _os_log_impl(&dword_1E0E2F000, v1246, OS_LOG_TYPE_DEFAULT, "WARNING: Target thread 0x%llx not found", v1677, 0xCu);
            }

            v1168 = 0;
            isMainThread = 0;
            mainThread = 0;
            *__error() = v1245;
          }
        }

        else
        {
          v1168 = 0;
          isMainThread = 0;
          mainThread = 0;
        }

        if ([*v1488 targetDispatchQueueId])
        {
          dispatchQueues2 = [obji dispatchQueues];
          v1249 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*v1488, "targetDispatchQueueId")}];
          v1250 = [dispatchQueues2 objectForKeyedSubscript:v1249];

          if (v1250)
          {
            v1167 = v1250;
            goto LABEL_1268;
          }

          v1251 = *__error();
          v1252 = _sa_logt();
          if (os_log_type_enabled(v1252, OS_LOG_TYPE_DEFAULT))
          {
            targetDispatchQueueId = [*v1488 targetDispatchQueueId];
            *v1677 = 134217984;
            *&v1677[4] = targetDispatchQueueId;
            _os_log_impl(&dword_1E0E2F000, v1252, OS_LOG_TYPE_DEFAULT, "WARNING: Target dispatch queue %llu not found", v1677, 0xCu);
          }

          *__error() = v1251;
        }

        if (!mainThread)
        {
          v1254 = *(v1542 + 16);
          if (v1254)
          {
            v1255 = *(v1254 + 152);
            if (v1255 == 3 || !v1255 && (*(v1254 + 11) & 1) != 0)
            {
LABEL_1266:
              mainThread = 0;
              goto LABEL_1267;
            }
          }

          if (![*v1488 targetThreadId])
          {
            mainThread = [obji mainThread];
            if (mainThread)
            {
              v1167 = 0;
              v1168 = 1;
              isMainThread = 1;
            }

            else
            {
              v1395 = *__error();
              v1396 = _sa_logt();
              if (os_log_type_enabled(v1396, OS_LOG_TYPE_DEFAULT))
              {
                v1397 = [(SASamplePrinter *)v1542 displayNameForTask:?];
                *v1677 = 138412290;
                *&v1677[4] = v1397;
                _os_log_impl(&dword_1E0E2F000, v1396, OS_LOG_TYPE_DEFAULT, "WARNING: Signature stack requested, but target process %@ doesn't have a main thread", v1677, 0xCu);
              }

              v1398 = __error();
              mainThread = 0;
              v1167 = 0;
              *v1398 = v1395;
            }

            goto LABEL_1269;
          }

          mainThread = 0;
        }

        v1167 = 0;
        goto LABEL_1269;
      }

      v1193 = *(v1179 + 144);
      if (v1193)
      {
        mainThread = v1193;
        isMainThread = [v1193 isMainThread];
LABEL_1267:
        v1167 = 0;
LABEL_1268:
        v1168 = 1;
LABEL_1269:
        if (((printJson | v1168 ^ 1) & 1) == 0)
        {
          v1493 = v1167;
          [*p_isa appendString:@"\n"];
          v1527 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *v1677 = 0;
          *&v1677[8] = v1677;
          *&v1677[16] = 0x3032000000;
          *&v1677[24] = __Block_byref_object_copy__4;
          v1678 = __Block_byref_object_dispose__4;
          v1679 = 0;
          if (targetProcesses3)
          {
            firstObject = [targetProcesses3 firstObject];
            v1170 = [(SASamplePrinter *)v1542 binaryImagesHitByTask:firstObject];
            v1171 = *(*&v1677[8] + 40);
            *(*&v1677[8] + 40) = v1170;

            v1562 = 0u;
            v1561 = 0u;
            v1560 = 0u;
            v1559 = 0u;
            v1515 = targetProcesses3;
            v1172 = [v1515 countByEnumeratingWithState:&v1559 objects:v1651 count:16];
            if (v1172)
            {
              v1173 = *v1560;
              v1174 = 1;
              do
              {
                for (i4 = 0; i4 != v1172; ++i4)
                {
                  if (*v1560 != v1173)
                  {
                    objc_enumerationMutation(v1515);
                  }

                  v1176 = *(*(&v1559 + 1) + 8 * i4);
                  v1177 = [v1176 pid] == 0;
                  threads4 = [v1176 threads];
                  v1554[0] = MEMORY[0x1E69E9820];
                  v1554[1] = 3221225472;
                  v1554[2] = __30__SASamplePrinter_printHeader__block_invoke_1379;
                  v1554[3] = &unk_1E86F7638;
                  v1554[4] = v1542;
                  v1555 = obji;
                  v1556 = v1527;
                  v1557 = v1176;
                  v1558 = v1677;
                  [threads4 enumerateKeysAndObjectsUsingBlock:v1554];

                  v1174 &= v1177;
                }

                v1172 = [v1515 countByEnumeratingWithState:&v1559 objects:v1651 count:16];
              }

              while (v1172);
            }

            else
            {
              v1174 = 1;
            }

            if (*(*&v1677[8] + 40))
            {
              [*p_isa appendString:@"Heaviest stack for the target processes:\n"];
              v1196 = v1542;
              goto LABEL_1387;
            }

LABEL_1386:
            v1196 = v1542;
          }

          else
          {
            v1174 = [obji pid] == 0;
            v1182 = [(SASamplePrinter *)v1542 binaryImagesHitByTask:?];
            v1183 = *(*&v1677[8] + 40);
            *(*&v1677[8] + 40) = v1182;

            v1184 = *p_isa;
            if (v1493)
            {
              if (mainThread)
              {
                v1185 = [SASamplePrinter displayNameForDispatchQueue:v1493];
                [v1184 printWithFormat:@"Heaviest stack for dispatch queue %@ thread 0x%llx:\n", v1185, objc_msgSend(mainThread, "threadId")];

                v1186 = objc_alloc_init(MEMORY[0x1E695DF70]);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                buf[24] = 1;
                v1187 = *(v1542 + 32);
                v1188 = *(v1542 + 40);
                v1190 = *(v1542 + 56);
                v1189 = *(v1542 + 64);
                v1550[0] = MEMORY[0x1E69E9820];
                v1550[1] = 3221225472;
                v1550[2] = __30__SASamplePrinter_printHeader__block_invoke_1386;
                v1550[3] = &unk_1E86F7660;
                v1551 = v1493;
                v1191 = v1186;
                v1552 = v1191;
                v1553 = buf;
                [mainThread enumerateThreadStatesBetweenStartTime:v1187 startSampleIndex:v1190 endTime:v1188 endSampleIndex:v1189 reverseOrder:0 block:v1550];
                if ([v1191 count])
                {
                  if (*(*&buf[8] + 24))
                  {
                    v1192 = 0;
                  }

                  else
                  {
                    v1192 = v1191;
                  }

                  [(SASamplePrinter *)v1542 addStackForDispatchQueue:0 orSwiftTaskStates:mainThread orThread:v1192 andThreadStateIndexes:obji task:v1527 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:1u onlyHeaviestStack:0 includeState:?];
                }

                _Block_object_dispose(buf, 8);
                goto LABEL_1386;
              }

              v1243 = [SASamplePrinter displayNameForDispatchQueue:v1493];
              [v1184 printWithFormat:@"Heaviest stack for dispatch queue %@:\n", v1243];

              v1196 = v1542;
              [(SASamplePrinter *)v1542 addStackForDispatchQueue:v1493 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 task:obji toRootObjects:v1527 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1u includeState:0];
            }

            else
            {
              v1196 = v1542;
              if (!mainThread)
              {
                [v1184 appendString:@"Heaviest stack for the target process:\n"];
                threads5 = [obji threads];
                v1547[0] = MEMORY[0x1E69E9820];
                v1547[1] = 3221225472;
                v1547[2] = __30__SASamplePrinter_printHeader__block_invoke_2_1399;
                v1547[3] = &unk_1E86F80A0;
                v1547[4] = v1542;
                v1548 = obji;
                v1549 = v1527;
                [threads5 enumerateKeysAndObjectsUsingBlock:v1547];

                goto LABEL_1386;
              }

              if (isMainThread)
              {
                [*p_isa appendString:@"Heaviest stack for the main thread of the target process:\n"];
              }

              else
              {
                [v1184 printWithFormat:@"Heaviest stack for thread 0x%llx:\n", objc_msgSend(mainThread, "threadId")];
              }

              [(SASamplePrinter *)v1542 addStackForDispatchQueue:0 orSwiftTaskStates:mainThread orThread:0 andThreadStateIndexes:obji task:v1527 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:1u onlyHeaviestStack:0 includeState:?];
            }
          }

LABEL_1387:
          if (*(*&v1677[8] + 40))
          {
            if ([v1527 count])
            {
              [(SASamplePrinter *)v1196 sortHeavyCallTree:v1527];
              v1545 = 0u;
              v1546 = 0u;
              v1543 = 0u;
              v1544 = 0u;
              v1257 = v1527;
              v1258 = [v1257 countByEnumeratingWithState:&v1543 objects:v1650 count:16];
              if (v1258)
              {
                v1259 = *v1544;
                while (2)
                {
                  for (i5 = 0; i5 != v1258; i5 = i5 + 1)
                  {
                    if (*v1544 != v1259)
                    {
                      objc_enumerationMutation(v1257);
                    }

                    v1261 = *(*(&v1543 + 1) + 8 * i5);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v1258 = v1261;
                      goto LABEL_1399;
                    }
                  }

                  v1258 = [v1257 countByEnumeratingWithState:&v1543 objects:v1650 count:16];
                  if (v1258)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_1399:

              v1262 = *p_isa;
              sampleCount = [v1258 sampleCount];
              [(SASamplePrinter *)v1542 addStack:v1257 toStream:v1262 sampleCount:sampleCount binariesToDisplay:*(*&v1677[8] + 40) primaryState:0 primaryMicrostackshotState:0 onlyHeaviestStack:1 isKernel:v1174];

              v1264 = v1542;
            }

            else
            {
              if (targetProcesses3)
              {
                v1265 = *__error();
                v1266 = _sa_logt();
                if (os_log_type_enabled(v1266, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E0E2F000, v1266, OS_LOG_TYPE_ERROR, "No heaviest callstack for target tasks", buf, 2u);
                }

                v1267 = __error();
                v1264 = v1542;
              }

              else
              {
                v1265 = *__error();
                v1268 = _sa_logt();
                if (os_log_type_enabled(v1268, OS_LOG_TYPE_ERROR))
                {
                  v1392 = [(SASamplePrinter *)v1542 displayNameForTask:?];
                  v1393 = [SASamplePrinter displayNameForDispatchQueue:v1493];
                  threadId = [mainThread threadId];
                  *buf = 138412802;
                  *&buf[4] = v1392;
                  *&buf[12] = 2112;
                  *&buf[14] = v1393;
                  *&buf[22] = 2048;
                  *&buf[24] = threadId;
                  _os_log_error_impl(&dword_1E0E2F000, v1268, OS_LOG_TYPE_ERROR, "No heaviest callstack for %@, dispatch queue %@, thread 0x%llx", buf, 0x20u);
                }

                v1267 = __error();
                v1264 = v1542;
              }

              *v1267 = v1265;
            }

            if (([*(v1264 + 16) displayBody] & 1) == 0)
            {
              [(SASamplePrinter *)v1264 printBinaryImagesForTask:?];
              *(v1264 + 113) = 1;
            }
          }

          _Block_object_dispose(v1677, 8);

          v1167 = v1493;
        }
      }

      else
      {
        v1167 = 0;
        mainThread = 0;
      }
    }

    else
    {
      v1167 = 0;
      mainThread = 0;
      obji = 0;
    }
  }

  if (printJson)
  {
    goto LABEL_1527;
  }

  if (([*(v1542 + 16) hidEventDisplayOptions] & 3) == 0)
  {
    goto LABEL_1417;
  }

  if (([*(v1542 + 16) hidEventDisplayOptions] & 2) == 0)
  {
    targetProcess6 = [*v1488 targetProcess];
    v1270 = targetProcess6;
    if (targetProcess6)
    {
      v1503 = [targetProcess6 pid];

      goto LABEL_1419;
    }

LABEL_1417:
    v1271 = 0;
    goto LABEL_1524;
  }

  v1503 = -1;
LABEL_1419:
  hidEvents = [*v1488 hidEvents];
  objk = [hidEvents mutableCopy];

  v1274 = *v1488;
  if (*v1488)
  {
    v1274 = objc_getProperty(v1274, v1273, 72, 1);
  }

  v1275 = v1274;
  [objk addObjectsFromArray:v1275];

  [objk sortUsingComparator:&__block_literal_global_2762];
  if (![objk count])
  {
    v1510 = 0;
    goto LABEL_1523;
  }

  v1276 = 0;
  v1510 = 0;
  v1277 = 0;
  while (2)
  {
    v1278 = [objk objectAtIndexedSubscript:v1277];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v1280 = v1278;
    v1282 = v1280;
    if (isKindOfClass)
    {
      if (v1280)
      {
        steps2 = [v1280 steps];
        lastObject3 = [steps2 lastObject];

        if (lastObject3)
        {
          hidEventTimestamp2 = [v1282 hidEventTimestamp];
          timestamp8 = [lastObject3 timestamp];
          v1287 = [lastObject3 pid];

          v1288 = 0;
          v1528 = v1282;
          goto LABEL_1433;
        }

        v1288 = v1282;
        v1528 = v1282;
LABEL_1451:

        goto LABEL_1514;
      }

LABEL_1519:
      v1288 = 0;
      v1289 = 0;
      v1290 = 1;
    }

    else
    {
      if (!v1280)
      {
        goto LABEL_1519;
      }

      v1289 = objc_getProperty(v1280, v1281, 32, 1);
      v1290 = 0;
      v1288 = v1282;
    }

    v1291 = v1289;
    hidEventTimestamp2 = [v1291 startTime];

    if (v1290)
    {
      v1293 = 0;
    }

    else
    {
      v1293 = objc_getProperty(v1288, v1292, 32, 1);
    }

    v1294 = v1293;
    timestamp8 = [v1294 endTime];

    v1528 = 0;
    if (v1290)
    {
      v1287 = 0;
    }

    else
    {
      v1287 = v1288[4];
    }

LABEL_1433:
    eventTimeRange16 = [*v1488 eventTimeRange];
    startTime13 = [eventTimeRange16 startTime];
    v1297 = startTime13;
    if (!startTime13)
    {
      v1297 = *(v1542 + 32);
    }

    v1298 = v1297;

    [v1298 machAbsTimeSeconds];
    if (v1299 == 0.0 || ([timestamp8 machAbsTimeSeconds], v1300 == 0.0))
    {
      if (![v1298 isComparable:timestamp8] || (objc_msgSend(v1298, "gt:", timestamp8) & 1) != 0)
      {
LABEL_1441:

        goto LABEL_1451;
      }
    }

    else
    {
      [v1298 machAbsTimeSeconds];
      v1302 = v1301;
      [timestamp8 machAbsTimeSeconds];
      if (v1302 > v1303 + 0.25)
      {
        goto LABEL_1441;
      }
    }

    eventTimeRange17 = [*v1488 eventTimeRange];
    endTime12 = [eventTimeRange17 endTime];
    v1306 = endTime12;
    if (!endTime12)
    {
      v1306 = *(v1542 + 40);
    }

    v1517 = v1306;

    if ([v1517 isComparable:hidEventTimestamp2] && (objc_msgSend(v1517, "lt:", hidEventTimestamp2) & 1) != 0)
    {
      v1308 = 2;
      goto LABEL_1513;
    }

    if (v1503 != -1 && v1287 != v1503)
    {
      v1308 = 4;
      goto LABEL_1513;
    }

    if (!v1510)
    {
      v1510 = objc_alloc_init(MEMORY[0x1E696AD60]);
    }

    if (v1276)
    {
      [v1510 appendString:{@", "}];
    }

    if (v1288)
    {
      if (*(v1542 + 120))
      {
        v1682 = 0u;
        v1683 = 0u;
        memset(buf, 0, sizeof(buf));
        v1309 = objc_getProperty(v1288, v1307, 8, 1);
        v1310 = [v1309 countByEnumeratingWithState:buf objects:v1677 count:16];
        if (v1310)
        {
          v1311 = **&buf[16];
          while (2)
          {
            for (i6 = 0; i6 != v1310; ++i6)
            {
              if (**&buf[16] != v1311)
              {
                objc_enumerationMutation(v1309);
              }

              if (*(v1542 + 120) == *(*&buf[8] + 8 * i6))
              {
                v1313 = 1;
                goto LABEL_1489;
              }
            }

            v1310 = [v1309 countByEnumeratingWithState:buf objects:v1677 count:16];
            if (v1310)
            {
              continue;
            }

            break;
          }
        }

        v1313 = 0;
LABEL_1489:
      }

      else
      {
        v1313 = 0;
      }

      v1329 = objc_getProperty(v1288, v1307, 24, 1);
      [v1510 appendString:v1329];

      v1331 = objc_getProperty(v1288, v1330, 8, 1);
      v1332 = [v1331 count] == 0;

      if (!v1332)
      {
        v1334 = objc_getProperty(v1288, v1333, 8, 1);
        [v1510 appendFormat:@" (%lu HID events)", objc_msgSend(v1334, "count")];
      }

      if (v1503 == -1)
      {
        v1335 = v1288[4];
        if (v1335 != -1)
        {
          v1336 = objc_getProperty(v1288, v1333, 32, 1);
          startTime14 = [v1336 startTime];
          v1338 = [(SASamplePrinter *)v1542 displayNameForPid:v1335 threadId:0 timestamp:startTime14];
          [v1510 appendFormat:@" to %@", v1338];
        }
      }

      if (v1313)
      {
        [v1510 appendString:@"*"];
      }

      goto LABEL_1512;
    }

    steps3 = [v1528 steps];
    lastObject4 = [steps3 lastObject];

    v1477 = v1528 == *(v1542 + 120);
    [v1528 thresholdToGroupSameEventType];
    v1316 = v1315;
    if (v1315 <= 0.0 || !lastObject4)
    {
      v1473 = 0;
      goto LABEL_1502;
    }

    if ([lastObject4 pid] == -1 || (objc_msgSend(timestamp8, "machAbsTimeSeconds"), v1317 == 0.0))
    {
      v1473 = 0;
      goto LABEL_1502;
    }

    v1469 = timestamp8;
    v1318 = v1277 + 1;
    if (v1277 + 1 >= [objk count])
    {
      v1473 = 0;
      goto LABEL_1501;
    }

    v1473 = 0;
    v1495 = v1277;
    while (2)
    {
      v1319 = [objk objectAtIndexedSubscript:v1318];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v1495 = v1318;
        goto LABEL_1486;
      }

      hidEventTimestamp3 = [v1319 hidEventTimestamp];
      [hidEventTimestamp3 machAbsTimeSeconds];
      if (v1320 == 0.0)
      {
        v1495 = v1318;
        goto LABEL_1485;
      }

      [v1469 machAbsTimeSeconds];
      v1322 = v1321;
      [hidEventTimestamp3 machAbsTimeSeconds];
      if (v1316 + v1322 >= v1323)
      {
        steps4 = [v1319 steps];
        lastObject5 = [steps4 lastObject];

        v1326 = lastObject5;
        if (lastObject5)
        {
          v1327 = [lastObject5 pid];
          if (v1327 == [lastObject4 pid])
          {
            v1429 = v1319 == *(v1542 + 120);
            timestamp9 = [lastObject5 timestamp];

            [objk removeObjectAtIndex:v1318];
            ++v1473;
            v1477 |= v1429;
            v1469 = timestamp9;
          }

          else
          {
            v1495 = v1318;
          }

          v1326 = lastObject5;
        }

        else
        {
          v1495 = v1318;
        }

LABEL_1485:
LABEL_1486:

        v1318 = v1495 + 1;
        if (v1495 + 1 >= [objk count])
        {
          goto LABEL_1501;
        }

        continue;
      }

      break;
    }

    v1344 = *__error();
    v1345 = _sa_logt();
    if (os_log_type_enabled(v1345, OS_LOG_TYPE_DEBUG))
    {
      [hidEventTimestamp3 machAbsTimeSeconds];
      v1347 = v1346;
      [v1469 machAbsTimeSeconds];
      LODWORD(v1673) = 134217984;
      *(&v1673 + 4) = v1347 - v1348;
      _os_log_debug_impl(&dword_1E0E2F000, v1345, OS_LOG_TYPE_DEBUG, "breaking grouping due to gap of %.3fs", &v1673, 0xCu);
    }

    *__error() = v1344;
LABEL_1501:

LABEL_1502:
    hidEventTypeString = [v1528 hidEventTypeString];
    [v1510 appendString:hidEventTypeString];

    if (v1477)
    {
      [v1510 appendString:@"*"];
    }

    if (v1473)
    {
      [v1510 appendFormat:@" x%llu", v1473 + 1];
    }

    if (v1503 == -1)
    {
      v1340 = lastObject4;
      if (lastObject4)
      {
        v1341 = [lastObject4 pid];
        v1340 = lastObject4;
      }

      else
      {
        v1341 = 0xFFFFFFFFLL;
      }

      timestamp10 = [v1340 timestamp];
      v1343 = [(SASamplePrinter *)v1542 displayNameForPid:v1341 threadId:0 timestamp:timestamp10];
      [v1510 appendFormat:@" to %@", v1343];
    }

LABEL_1512:
    v1308 = 0;
    v1276 = 1;
LABEL_1513:

    if ((v1308 | 4) == 4)
    {
LABEL_1514:
      if (++v1277 >= [objk count])
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_1523:

  v1271 = v1510;
LABEL_1524:
  v1349 = v1271;
  if ([v1271 length])
  {
    [*p_isa printWithFormat:@"\n"];
    [*p_isa printWithFormat:@"%-*s%@\n", 18, "HID Events: ", v1349];
  }

LABEL_1527:
  if (*(v1542 + 120) && *v1488 && (*(*v1488 + 404) & 1) != 0)
  {
    if (([*(v1542 + 16) hidEventDisplayOptions] & 4) != 0)
    {
      v1350 = printJson;
    }

    else
    {
      v1350 = 1;
    }

    if ((v1350 & 1) == 0)
    {
      [*(v1542 + 8) appendString:@"\nSlow HID event:\n"];
      [(SASamplePrinter *)v1542 printHIDEvent:?];
    }
  }
}

- (id)eventStartTimeWithWallTime
{
  eventTimeRange = [*(self + 168) eventTimeRange];
  startTime = [eventTimeRange startTime];

  if (startTime)
  {
    [startTime wallTime];
    if (v4 != 0.0)
    {
      goto LABEL_6;
    }
  }

  v5 = *(self + 32);

  if (v5)
  {
    [v5 wallTime];
    if (v6 != 0.0)
    {
      startTime = v5;
LABEL_6:
      v7 = startTime;
      v5 = v7;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)eventEndTimeWithWallTime
{
  eventTimeRange = [*(self + 168) eventTimeRange];
  endTime = [eventTimeRange endTime];

  if (endTime)
  {
    [endTime wallTime];
    if (v4 != 0.0)
    {
      goto LABEL_6;
    }
  }

  v5 = *(self + 40);

  if (v5)
  {
    [v5 wallTime];
    if (v6 != 0.0)
    {
      endTime = v5;
LABEL_6:
      v7 = endTime;
      v5 = v7;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)hasTargetProcess
{
  if (*(self + 136) || ([*(self + 168) targetProcessId] & 0x80000000) == 0)
  {
    return 1;
  }

  targetProcesses = [*(self + 168) targetProcesses];
  v2 = [targetProcesses count] != 0;

  return v2;
}

void *__30__SASamplePrinter_printHeader__block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  *a3 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  result = [a2 cpuTimeNs:&v7 cpuInstructions:&v6 cpuCycles:&v5 betweenStartTime:a1[4] endTime:a1[5]];
  *(*(a1[6] + 8) + 24) += v7;
  *(*(a1[7] + 8) + 24) += v6;
  *(*(a1[8] + 8) + 24) += v5;
  return result;
}

void *__30__SASamplePrinter_printHeader__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) appendFormat:@"%@ -> %@, ", a2, a3];
  *a4 = 0;
  return result;
}

uint64_t __44__SASamplePrinter_displayStringForHIDEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a2 hidEventTimestamp];
  }

  else
  {
    if (a2)
    {
      Property = objc_getProperty(a2, v5, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    v6 = [v8 startTime];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a3 hidEventTimestamp];
  }

  else
  {
    if (a3)
    {
      v11 = objc_getProperty(a3, v9, 32, 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v10 = [v12 startTime];
  }

  v13 = [v6 compare:v10];

  return v13;
}

void __41__SASamplePrinter_printTasksIndividually__block_invoke(void *a1, void *a2)
{
  if (a1[4] != a2)
  {
    v4 = [*(a1[5] + 168) targetProcesses];
    v5 = [v4 containsObject:a2];

    if ((v5 & 1) == 0)
    {
      if ([(SASamplePrinter *)a1[5] shouldPrintTask:a2 thread:0 dispatchQueue:0])
      {
        v6 = a1[6];

        [v6 addObject:a2];
      }
    }
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_3;
  v40[3] = &unk_1E86F7750;
  v40[4] = *(a1 + 32);
  v40[5] = a2;
  v40[6] = a3;
  v27 = MEMORY[0x1E12EBE50](v40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_4;
  v39[3] = &unk_1E86F7778;
  v39[4] = a2;
  v39[5] = a3;
  v26 = MEMORY[0x1E12EBE50](v39);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_5;
  v38[3] = &unk_1E86F7778;
  v38[4] = a2;
  v38[5] = a3;
  v25 = MEMORY[0x1E12EBE50](v38);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_6;
  v37[3] = &unk_1E86F7750;
  v37[4] = *(a1 + 32);
  v37[5] = a2;
  v37[6] = a3;
  v24 = MEMORY[0x1E12EBE50](v37);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_7;
  v36[3] = &unk_1E86F7778;
  v36[4] = a2;
  v36[5] = a3;
  v28 = MEMORY[0x1E12EBE50](v36);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_8;
  v35[3] = &unk_1E86F77A0;
  v35[4] = *(a1 + 32);
  v35[5] = a2;
  v35[6] = a3;
  v6 = MEMORY[0x1E12EBE50](v35);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_9;
  v34[3] = &unk_1E86F7750;
  v34[4] = *(a1 + 32);
  v34[5] = a2;
  v34[6] = a3;
  v23 = MEMORY[0x1E12EBE50](v34);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __41__SASamplePrinter_printTasksIndividually__block_invoke_10;
  v33[3] = &unk_1E86F77C8;
  v7 = *(a1 + 32);
  v33[4] = a2;
  v33[5] = v7;
  v33[6] = a3;
  v8 = MEMORY[0x1E12EBE50](v33);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v22 = v27 + 2;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [*(*(&v29 + 1) + 8 * v13) unsignedLongLongValue];
      v15 = v14;
      v16 = v14 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 5)
      {
        if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 2)
        {
          if (v16 == 1)
          {
            v18 = v27[2];
            goto LABEL_27;
          }

          if (v16 == 2)
          {
            v18 = v26[2];
            goto LABEL_27;
          }
        }

        else
        {
          switch(v16)
          {
            case 3:
              v17 = v6[2](v6, 1);
              goto LABEL_28;
            case 4:
              v17 = v6[2](v6, 0);
              goto LABEL_28;
            case 5:
              v18 = v23[2];
              goto LABEL_27;
          }
        }
      }

      else
      {
        if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) < 0xA)
        {
          v17 = v8[2](v8);
          goto LABEL_28;
        }

        switch(v16)
        {
          case 10:
            v18 = v28[2];
            goto LABEL_27;
          case 11:
            v18 = v24[2];
LABEL_27:
            v17 = v18();
LABEL_28:
            if (v17)
            {
              if (v15 >= 0)
              {
                v20 = v17;
              }

              else
              {
                v20 = -v17;
              }

              goto LABEL_52;
            }

            break;
          case 12:
            v18 = v25[2];
            goto LABEL_27;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((([*(a1 + 40) containsObject:&unk_1F5BDCAA8] & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAC0) & 1) != 0 || (v19 = (v28[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCA78) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAD8) & 1) != 0 || (v19 = (v27[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAF0) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB08) & 1) != 0 || (v19 = (v26[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB20) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB38) & 1) != 0 || (v19 = (v25[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB50) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB68) & 1) != 0 || (v19 = (v24[2])()) == 0))
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

LABEL_52:

  return v20;
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_7(uint64_t a1)
{
  if ([*(a1 + 32) uniquePid])
  {
    v2 = [*(a1 + 32) pid] == 0;
  }

  else
  {
    v2 = 1;
  }

  if ([*(a1 + 40) uniquePid])
  {
    v3 = [*(a1 + 40) pid] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = 1;
  if (!v2)
  {
    v4 = -1;
  }

  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_3(void *a1)
{
  v2 = [(SASamplePrinter *)a1[4] rawNameForTask:?];
  v3 = [(SASamplePrinter *)a1[4] rawNameForTask:?];
  if (![v2 length])
  {

    v2 = 0;
  }

  if ([v3 length])
  {
    v4 = v2 != 0;
    if (v2 && v3)
    {
      v5 = [v2 compare:v3 options:577];
      goto LABEL_11;
    }
  }

  else
  {

    v3 = 0;
    v4 = v2 != 0;
  }

  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

LABEL_11:

  return v5;
}

- (void)setOptions:(id)options
{
  if (options)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = objc_alloc_init(SASamplePrintOptions);
  }

  options = self->_options;
  self->_options = optionsCopy;
}

- (SASamplePrinter)initWithSampleStore:(id)store
{
  v19.receiver = self;
  v19.super_class = SASamplePrinter;
  v4 = [(SASamplePrinter *)&v19 init];
  if (v4)
  {
    v5 = objc_alloc_init(SASamplePrintOptions);
    options = v4->_options;
    v4->_options = v5;

    objc_storeStrong(&v4->_sampleStore, store);
    v7 = objc_alloc(MEMORY[0x1E695DF90]);
    tasksByPid = [store tasksByPid];
    v9 = [v7 initWithCapacity:{objc_msgSend(tasksByPid, "count")}];
    binaryImagesHit = v4->_binaryImagesHit;
    v4->_binaryImagesHit = v9;

    startTime = [(SASampleStore *)v4->_sampleStore startTime];
    reportStartTime = v4->_reportStartTime;
    v4->_reportStartTime = startTime;

    endTime = [(SASampleStore *)v4->_sampleStore endTime];
    reportEndTime = v4->_reportEndTime;
    v4->_reportEndTime = endTime;

    sampleTimestamps = [store sampleTimestamps];
    v4->_hasTimeIndexes = [sampleTimestamps count] != 0;

    if (v4->_hasTimeIndexes)
    {
      v4->_reportStartSampleIndex = 0;
      sampleTimestamps2 = [(SASampleStore *)v4->_sampleStore sampleTimestamps];
      v4->_reportEndSampleIndex = [sampleTimestamps2 count] - 1;
    }

    else
    {
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      *&v4->_reportStartSampleIndex = vnegq_f64(v17);
    }

    v4->_numSamples = [(SASampleStore *)v4->_sampleStore numSamples];
  }

  return v4;
}

- (double)timeSpentAsleepBetweenStartTimestamp:(void *)timestamp endTimestamp:
{
  v3 = 0.0;
  if (self)
  {
    [timestamp machContTimeSeconds];
    if (v6 > 0.0)
    {
      [a2 machContTimeSeconds];
      if (v7 > 0.0)
      {
        [timestamp machContTimeSeconds];
        v9 = v8;
        [a2 machContTimeSeconds];
        goto LABEL_8;
      }
    }

    [timestamp wallTime];
    if (v11 > 0.0)
    {
      [a2 wallTime];
      if (v12 > 0.0)
      {
        [timestamp wallTime];
        v9 = v13;
        [a2 wallTime];
LABEL_8:
        v14 = v9 - v10;
        [timestamp machAbsTimeSeconds];
        v16 = v15;
        [a2 machAbsTimeSeconds];
        v18 = v14 - (v16 - v17);
        if (v18 >= 1.0)
        {
          return v18;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v3;
}

- (__CFString)rawNameForTask:(__CFString *)task
{
  if (task)
  {
    if ([a2 pid])
    {
      task = [a2 name];
    }

    else
    {
      task = @"kernel_task";
    }

    v2 = vars8;
  }

  return task;
}

void __32__SASamplePrinter_updateIndexes__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 taskStates];
  v5 = [v4 count];

  if (!v5)
  {
    v20 = [a2 threads];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __32__SASamplePrinter_updateIndexes__block_invoke_2;
    v23[3] = &unk_1E86F7410;
    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    [v20 enumerateKeysAndObjectsUsingBlock:v23];

    return;
  }

  v6 = [a2 indexOfFirstTaskStateOnOrAfterTime:*(*(a1 + 32) + 32) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [a2 indexOfLastTaskStateOnOrBeforeTime:*(*(a1 + 32) + 40) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8 >= v7)
    {
      v10 = v8;
      *(*(a1 + 32) + 72) += v8 - v7 + 1;
      v11 = [a2 taskStates];
      v12 = [v11 objectAtIndexedSubscript:v7];
      obj = [v12 startTimestamp];

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      if (v14)
      {
        if (![v14 gt:obj])
        {
          goto LABEL_12;
        }

        v13 = *(*(a1 + 40) + 8);
      }

      objc_storeStrong((v13 + 40), obj);
LABEL_12:
      v15 = [a2 taskStates];
      v16 = [v15 objectAtIndexedSubscript:v10];
      v17 = [v16 endTimestamp];

      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      if (v19)
      {
        if (![v19 lt:v17])
        {
LABEL_16:

          return;
        }

        v18 = *(*(a1 + 48) + 8);
      }

      objc_storeStrong((v18 + 40), v17);
      goto LABEL_16;
    }
  }
}

void __32__SASamplePrinter_updateIndexes__block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = [a3 indexOfFirstThreadStateOnOrAfterTime:*(a1[4] + 32) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [a3 indexOfLastThreadStateOnOrBeforeTime:*(a1[4] + 40) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 >= v6)
    {
      v9 = v7;
      *(a1[4] + 72) += v7 - v6 + 1;
      v10 = [a3 threadStates];
      v11 = [v10 objectAtIndexedSubscript:v6];
      obj = [v11 startTimestamp];

      v12 = *(a1[5] + 8);
      v13 = *(v12 + 40);
      if (v13)
      {
        if (![v13 gt:obj])
        {
          goto LABEL_11;
        }

        v12 = *(a1[5] + 8);
      }

      objc_storeStrong((v12 + 40), obj);
LABEL_11:
      v14 = [a3 threadStates];
      v15 = [v14 objectAtIndexedSubscript:v9];
      v16 = [v15 endTimestamp];

      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      if (v18)
      {
        if (![v18 lt:v16])
        {
LABEL_15:

          return;
        }

        v17 = *(a1[6] + 8);
      }

      objc_storeStrong((v17 + 40), v16);
      goto LABEL_15;
    }
  }
}

- (void)filterToTimestampRangeStart:(id)start end:(id)end
{
  self->_hasFilterApplied = 1;
  objc_storeStrong(&self->_reportStartTime, start);
  objc_storeStrong(&self->_reportEndTime, end);

  [(SASamplePrinter *)self updateIndexes];
}

- (void)filterToMachAbsTimeRangeStart:(unint64_t)start end:(unint64_t)end
{
  self->_hasFilterApplied = 1;
  if (start)
  {
    v6 = [SATimestamp timestampWithMachAbsTime:start machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:0.0];
    reportStartTime = self->_reportStartTime;
    self->_reportStartTime = v6;
  }

  if (end)
  {
    v8 = [SATimestamp timestampWithMachAbsTime:end machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:0.0];
    reportEndTime = self->_reportEndTime;
    self->_reportEndTime = v8;
  }

  [(SASamplePrinter *)self updateIndexes];
}

- (void)filterToWallTimeRangeStart:(double)start end:(double)end
{
  self->_hasFilterApplied = 1;
  if (start != 0.0)
  {
    v6 = [SATimestamp timestampWithMachAbsTime:0 machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:start];
    reportStartTime = self->_reportStartTime;
    self->_reportStartTime = v6;
  }

  if (end != 0.0)
  {
    v8 = [SATimestamp timestampWithMachAbsTime:0 machContTime:0 wallTime:[(SASampleStore *)self->_sampleStore machTimebase] machTimebase:end];
    reportEndTime = self->_reportEndTime;
    self->_reportEndTime = v8;
  }

  [(SASamplePrinter *)self updateIndexes];
}

- (void)filterToDisplayTimeIndexStart:(unint64_t)start end:(unint64_t)end
{
  v36 = *MEMORY[0x1E69E9840];
  if (end && end < start)
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      startCopy2 = start;
      v32 = 2048;
      endCopy3 = end;
      _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Passed invalid sample index range %lu-%lu", buf, 0x16u);
    }

    *__error() = v7;
  }

  else if (self && self->_hasTimeIndexes)
  {
    self->_hasFilterApplied = 1;
    if (start)
    {
      v9 = start - 1;
    }

    else
    {
      v9 = 0;
    }

    endCopy2 = end;
    if (!end)
    {
      sampleTimestamps = [(SASampleStore *)self->_sampleStore sampleTimestamps];
      endCopy2 = [sampleTimestamps count];
    }

    v12 = endCopy2 - 1;
    sampleTimestamps2 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
    v14 = [sampleTimestamps2 count];

    if (v12 >= v14)
    {
      v25 = *__error();
      v26 = _sa_logt();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sampleTimestamps3 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
        *buf = 134218496;
        startCopy2 = start;
        v32 = 2048;
        endCopy3 = end;
        v34 = 2048;
        v35 = [sampleTimestamps3 count];
        _os_log_error_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_ERROR, "Requested sample index range %lu-%lu outside valid range 1-%lu", buf, 0x20u);
      }

      *__error() = v25;
    }

    else
    {
      self->_reportStartSampleIndex = v9;
      sampleTimestamps4 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
      v16 = [sampleTimestamps4 objectAtIndexedSubscript:v9];
      reportStartTime = self->_reportStartTime;
      self->_reportStartTime = v16;

      self->_reportEndSampleIndex = v12;
      sampleTimestamps5 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
      v19 = [sampleTimestamps5 objectAtIndexedSubscript:v12];
      reportEndTime = self->_reportEndTime;
      self->_reportEndTime = v19;

      self->_numSamples = self->_reportEndSampleIndex - self->_reportStartSampleIndex + 1;
      if (self->_reportStartTime && self->_reportEndTime)
      {
        targetMainBinaryUUID = [(SASampleStore *)self->_sampleStore targetMainBinaryUUID];

        sampleStore = self->_sampleStore;
        if (targetMainBinaryUUID)
        {
          v29 = [SATimeRange timeRangeStart:self->_reportStartTime end:self->_reportEndTime];
          [(SASampleStore *)sampleStore findTargetProcessesInTimeRange:v29];
        }

        else
        {
          if ([(SASampleStore *)self->_sampleStore targetProcessId]== -1)
          {
            return;
          }

          v27 = self->_sampleStore;
          v29 = [SATimeRange timeRangeStart:self->_reportStartTime end:self->_reportEndTime];
          [(SASampleStore *)v27 findTargetProcessInTimeRange:v29];
        }
      }
    }
  }

  else
  {
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "Requested sample index range on sample store without sample indexes", buf, 2u);
    }

    *__error() = v23;
  }
}

- (void)printToStream:(__sFILE *)stream
{
  v4 = [[SAFileOutputStream alloc] initWithFileStream:stream];
  stream = self->_stream;
  self->_stream = v4;

  [(SASamplePrinter *)self printReport];
  v6 = self->_stream;
  self->_stream = 0;
}

- (void)printToMutableData:(id)data
{
  v4 = [[SAMutableDataOutputStream alloc] initWithMutableData:data];
  stream = self->_stream;
  self->_stream = v4;

  [(SASamplePrinter *)self printReport];
  v6 = self->_stream;
  self->_stream = 0;
}

- (__CFString)displayNameForTask:(__CFString *)task
{
  if (task)
  {
    task = [(SASamplePrinter *)task displayNameForTask:a2 includePid:1];
    v2 = vars8;
  }

  return task;
}

void __37__SASamplePrinter_checkForBadOptions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 dispatchQueue];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __37__SASamplePrinter_checkForBadOptions__block_invoke_382(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (v5)
  {
    v7 = [a2 threadState];
    v8 = [v7 startTimestamp];
    v9 = [v5 gt:v8];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  v13 = [a2 threadState];
  v10 = [v13 endTimestamp];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (__CFString)displayNameForDispatchQueue:(void *)queue
{
  if (queue)
  {
    dispatchQueueLabel = [queue dispatchQueueLabel];

    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (dispatchQueueLabel)
    {
      dispatchQueueLabel2 = [queue dispatchQueueLabel];
      v5 = SACopySanitizedString(dispatchQueueLabel2, 1, 0);
      v6 = [v3 initWithFormat:@"%@(%llu)", v5, objc_msgSend(queue, "identifier")];
    }

    else
    {
      v6 = [v3 initWithFormat:@"%llu", objc_msgSend(queue, "identifier")];
    }
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

- (uint64_t)taskHasSwallowedAnExceptionNotedByHIException:(uint64_t)exception
{
  exceptionCopy = exception;
  if (exception)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    threads = [a2 threads];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__SASamplePrinter_taskHasSwallowedAnExceptionNotedByHIException___block_invoke;
    v5[3] = &unk_1E86F5B80;
    v5[4] = exceptionCopy;
    v5[5] = &v6;
    [threads enumerateKeysAndObjectsUsingBlock:v5];

    LOBYTE(exceptionCopy) = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return exceptionCopy & 1;
}

void __65__SASamplePrinter_taskHasSwallowedAnExceptionNotedByHIException___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 lastThreadStateOnOrBeforeTime:*(*(a1 + 32) + 40) sampleIndex:*(*(a1 + 32) + 64)];
  if (v6)
  {
    v9 = v6;
    v7 = [v6 name];
    v8 = [v7 hasPrefix:@"HIE: "];

    v6 = v9;
    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke(uint64_t a1, void *a2)
{
  if ([(SASamplePrinter *)*(a1 + 32) taskHasSwallowedAnExceptionNotedByHIException:a2])
  {
    v4 = *(a1 + 40);
    v5 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:a2];
    [v4 addObject:v5];
  }

  v6 = [a2 pid];
  if (v6 >= 2)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 168);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke_2;
    v10[3] = &unk_1E86F7488;
    v12 = v6;
    v10[4] = a2;
    v10[5] = v8;
    v11 = v7;
    [v9 enumerateTasks:v10];
  }
}

void __60__SASamplePrinter_printProcessesWithHIESwallowedExceptions___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != a2 && ([a2 rpid] == *(a1 + 56) || objc_msgSend(a2, "ppid") == *(a1 + 56)) && -[SASamplePrinter taskHasSwallowedAnExceptionNotedByHIException:](*(a1 + 40), a2))
  {
    v4 = *(a1 + 48);
    v5 = [(SASamplePrinter *)*(a1 + 40) displayNameForTask:a2];
    [v4 addObject:v5];
  }
}

- (BOOL)printLaunchdThrottledProcessesToStream:(uint64_t)stream
{
  v57 = *MEMORY[0x1E69E9840];
  v31 = *(stream + 48);
  v24 = [*(stream + 168) dataStyle] != 1 && objc_msgSend(*(stream + 168), "dataStyle") != 0;
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  tasksByPid = [*(stream + 168) tasksByPid];
  obj = [tasksByPid objectForKeyedSubscript:&unk_1F5BDCA30];

  v28 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v28)
  {
    v27 = *v52;
    do
    {
      v4 = 0;
      do
      {
        if (*v52 != v27)
        {
          v5 = v4;
          objc_enumerationMutation(obj);
          v4 = v5;
        }

        v29 = v4;
        v6 = *(*(&v51 + 1) + 8 * v4);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v34 = v6;
        threads = [v6 threads];
        allKeys = [threads allKeys];
        v30 = [allKeys sortedArrayUsingSelector:sel_compare_];

        v9 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v9)
        {
          v33 = *v48;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v48 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v11 = *(*(&v47 + 1) + 8 * i);
              threads2 = [v34 threads];
              v13 = [threads2 objectForKeyedSubscript:v11];

              v45[0] = 0;
              v45[1] = v45;
              v45[2] = 0x3032000000;
              v45[3] = __Block_byref_object_copy__4;
              v45[4] = __Block_byref_object_dispose__4;
              v46 = 0;
              v43[0] = 0;
              v43[1] = v43;
              v43[2] = 0x3032000000;
              v43[3] = __Block_byref_object_copy__4;
              v43[4] = __Block_byref_object_dispose__4;
              v44 = 0;
              v14 = *(stream + 32);
              v15 = *(stream + 40);
              v16 = *(stream + 56);
              v17 = *(stream + 64);
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v38[2] = __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke;
              v38[3] = &unk_1E86F74D8;
              v42 = v31;
              v38[4] = stream;
              v40 = v45;
              v41 = v43;
              v39 = v32;
              [v13 enumerateThreadStatesBetweenStartTime:v14 startSampleIndex:v16 endTime:v15 endSampleIndex:v17 reverseOrder:0 block:v38];

              _Block_object_dispose(v43, 8);
              _Block_object_dispose(v45, 8);
            }

            v9 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v9);
        }

        v4 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v28);
  }

  v18 = [v32 count];
  if (v18)
  {
    options = [stream options];
    printJson = [options printJson];

    if (printJson)
    {
      v21 = *(stream + 8);
      allKeys2 = [v32 allKeys];
      SAJSONWriteDictionaryEntry(v21, @"launchdThrottledProcesses", allKeys2);
    }

    else
    {
      [a2 printWithFormat:@"Launchd throttled processes:\n"];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke_2;
      v35[3] = &unk_1E86F7500;
      v36 = v24;
      v37 = v31;
      v35[4] = stream;
      v35[5] = a2;
      [v32 enumerateKeysAndObjectsUsingBlock:v35];
    }
  }

  return v18 != 0;
}

void __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 name];
  obj = v4;
  if (*(a1 + 64) == 1)
  {
    v5 = *(*(a1 + 32) + 56);
    v6 = [a2 startSampleIndex];
    if (v5 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = *(*(a1 + 32) + 64);
    v9 = [a2 endSampleIndex];
    if (v8 >= v9)
    {
      v8 = v9;
    }

    v4 = obj;
    if (!obj)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if ([v4 containsString:@"throttled"])
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (v10 && [v10 isEqual:obj])
    {
      v11 = [a2 endTimestamp];
      [*(*(*(a1 + 56) + 8) + 40) setEndTime:v11];

      [*(*(*(a1 + 56) + 8) + 40) setEndSampleIndex:v8];
    }

    else
    {
      v16 = [SATimeRangeOfSamples alloc];
      v17 = [a2 startTimestamp];
      v18 = [a2 endTimestamp];
      v19 = [(SATimeRangeOfSamples *)v16 initWithStartTime:v17 endTime:v18 startSampleIndex:v7 endSampleIndex:v8];
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
      v22 = [*(a1 + 40) objectForKeyedSubscript:obj];
      v23 = v22;
      if (v22)
      {
        [v22 addObject:*(*(*(a1 + 56) + 8) + 40)];
      }

      else
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(*(a1 + 56) + 8) + 40), 0}];
        [*(a1 + 40) setObject:v24 forKeyedSubscript:obj];
      }
    }

    goto LABEL_19;
  }

LABEL_14:
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

LABEL_19:
}

void __58__SASamplePrinter_printLaunchdThrottledProcessesToStream___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v6 appendFormat:@"%@", a2];
  if (*(a1 + 48) == 1)
  {
    [v6 appendFormat:@":"];
    v7 = *(a1 + 32);
    v69 = v6;
    if (*(a1 + 49) == 1)
    {
      v8 = *(v7 + 56);
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v9 = a3;
      v10 = [v9 countByEnumeratingWithState:&v74 objects:v79 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v75;
        v65 = v9;
        do
        {
          v14 = 0;
          do
          {
            if (*v75 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v74 + 1) + 8 * v14);
            if ([v15 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v15, "endSampleIndex") != 0x7FFFFFFFFFFFFFFFLL)
            {
              obj = v12;
              if (v12 >= 1)
              {
                [v69 appendFormat:@", "];
              }

              if (v8 >= [v15 startSampleIndex])
              {
                goto LABEL_31;
              }

              v16 = [v15 startSampleIndex] - 1;
              v17 = *(a1 + 32);
              if (v8 == v16)
              {
                if (v17)
                {
                  if (*(v17 + 48) == 1)
                  {
                    v18 = [*(v17 + 16) forceOneBasedTimeIndexes];
                    v19 = v8 + 1;
                    if (v18)
                    {
                      v19 -= *(v17 + 56);
                    }
                  }

                  else
                  {
                    v19 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v19 = 0;
                }

                [v69 appendFormat:@" not throttled sample %lu, ", v19];
                goto LABEL_31;
              }

              if (v17)
              {
                if (*(v17 + 48) == 1)
                {
                  v20 = v8 + 1;
                  if ([*(v17 + 16) forceOneBasedTimeIndexes])
                  {
                    v20 -= *(v17 + 56);
                  }
                }

                else
                {
                  v20 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v21 = *(a1 + 32);
                v22 = [v15 startSampleIndex];
                if (v21)
                {
                  if (*(v21 + 48) == 1)
                  {
                    v23 = v22;
                    if ([*(v21 + 16) forceOneBasedTimeIndexes])
                    {
                      v23 -= *(v21 + 56);
                    }
                  }

                  else
                  {
                    v23 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  goto LABEL_30;
                }
              }

              else
              {
                [v15 startSampleIndex];
                v20 = 0;
              }

              v23 = 0;
LABEL_30:
              [v69 appendFormat:@" not throttled samples %lu-%lu, ", v20, v23];
              v9 = v65;
LABEL_31:
              v24 = [v15 startSampleIndex];
              v25 = [v15 endSampleIndex];
              v26 = a1;
              v27 = *(a1 + 32);
              v28 = [v15 startSampleIndex];
              if (v24 >= v25)
              {
                if (v27)
                {
                  v30 = obj;
                  if (*(v27 + 48) == 1)
                  {
                    v31 = [*(v27 + 16) forceOneBasedTimeIndexes];
                    v32 = v28 + 1;
                    if (v31)
                    {
                      v32 -= *(v27 + 56);
                    }
                  }

                  else
                  {
                    v32 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v32 = 0;
                  v30 = obj;
                }

                [v69 appendFormat:@" throttled sample %lu", v32];
                a1 = v26;
              }

              else
              {
                if (v27)
                {
                  if (*(v27 + 48) == 1)
                  {
                    v29 = v28 + 1;
                    if ([*(v27 + 16) forceOneBasedTimeIndexes])
                    {
                      v29 -= *(v27 + 56);
                    }
                  }

                  else
                  {
                    v29 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v29 = 0;
                }

                a1 = v26;
                v33 = *(v26 + 32);
                v34 = [v15 endSampleIndex];
                if (v33)
                {
                  if (*(v33 + 48) == 1)
                  {
                    v35 = v34;
                    v36 = [*(v33 + 16) forceOneBasedTimeIndexes];
                    v37 = v35 + 1;
                    if (v36)
                    {
                      v37 -= *(v33 + 56);
                    }
                  }

                  else
                  {
                    v37 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v37 = 0;
                }

                [v69 appendFormat:@" throttled samples %lu-%lu", v29, v37];
                v9 = v65;
                v30 = obj;
              }

              v8 = [v15 endSampleIndex] + 1;
              v12 = v30 + 1;
            }

            ++v14;
          }

          while (v11 != v14);
          v38 = [v9 countByEnumeratingWithState:&v74 objects:v79 count:16];
          v11 = v38;
        }

        while (v38);
      }

      v39 = *(a1 + 32);
      v40 = *(v39 + 64);
      v6 = v69;
      if (v8 <= v40)
      {
        if (v8 == v40)
        {
          if (*(v39 + 48))
          {
            v41 = [*(v39 + 16) forceOneBasedTimeIndexes];
            v42 = v8 + 1;
            if (v41)
            {
              v42 -= *(v39 + 56);
            }
          }

          else
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          [v69 appendFormat:@", not throttled sample %lu", v42, v64];
        }

        else
        {
          if (*(v39 + 48))
          {
            v59 = v8 + 1;
            if ([*(v39 + 16) forceOneBasedTimeIndexes])
            {
              v59 -= *(v39 + 56);
            }
          }

          else
          {
            v59 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v60 = *(a1 + 32);
          if (*(v60 + 48) == 1)
          {
            v61 = *(v60 + 64);
            v62 = [*(v60 + 16) forceOneBasedTimeIndexes];
            v63 = v61 + 1;
            if (v62)
            {
              v63 -= *(v60 + 56);
            }
          }

          else
          {
            v63 = 0x7FFFFFFFFFFFFFFFLL;
          }

          [v69 appendFormat:@", not throttled samples %lu-%lu", v59, v63];
        }
      }
    }

    else
    {
      v43 = *(v7 + 32);
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obja = a3;
      v44 = [obja countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = 0;
        v47 = *v71;
        do
        {
          v48 = 0;
          v49 = v43;
          v66 = v46;
          do
          {
            if (*v71 != v47)
            {
              objc_enumerationMutation(obja);
            }

            v50 = *(*(&v70 + 1) + 8 * v48);
            if (v46 >= 1)
            {
              [v6 appendFormat:@", "];
            }

            v51 = [v50 startTime];
            [v49 deltaSecondsTo:v51 timeDomainPriorityList:&unk_1F5BDCC70 timeDomainUsed:0];
            v53 = v52;

            if (v53 > 0.0)
            {
              [v6 appendFormat:@" not throttled %.2fs, ", *&v53];
            }

            v54 = [v50 startTime];
            v55 = [v50 endTime];
            [v54 deltaSecondsTo:v55 timeDomainPriorityList:&unk_1F5BDCC88 timeDomainUsed:0];
            v57 = v56;

            v6 = v69;
            if (v57 > 0.0)
            {
              [v69 appendFormat:@" throttled %.2fs", *&v57];
            }

            v43 = [v50 endTime];

            ++v46;
            ++v48;
            v49 = v43;
          }

          while (v45 != v48);
          v46 = v66 + v45;
          v45 = [obja countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v45);
      }

      [v43 deltaSecondsTo:*(*(a1 + 32) + 40) timeDomainPriorityList:&unk_1F5BDCCA0 timeDomainUsed:0];
      if (v58 > 0.0)
      {
        [v6 appendFormat:@", not throttled %.2fs", *&v58];
      }
    }
  }

  [*(a1 + 40) printWithFormat:@"  %@\n", v6];
}

void __63__SASamplePrinter_printProcessesHittingWQThreadLimitsToStream___block_invoke(void **a1, void *a2)
{
  v4 = [a2 lastTaskStateOnOrBeforeTime:*(a1[4] + 5) sampleIndex:*(a1[4] + 8)];
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    if (([v4 wqExceededTotalThreadLimit] & 1) != 0 || (v6 = objc_msgSend(v8, "wqExceededConstrainedThreadLimit"), v5 = v8, v6))
    {
      v7 = [(SASamplePrinter *)a1[4] displayNameForTask:a2];
      if ([v8 wqExceededTotalThreadLimit])
      {
        [a1[5] addObject:v7];
      }

      if ([v8 wqExceededConstrainedThreadLimit])
      {
        [a1[6] addObject:v7];
      }

      v5 = v8;
    }
  }
}

void __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[7];
  v8 = v4[8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke_2;
  v9[3] = &unk_1E86F7528;
  v9[4] = v4;
  v9[5] = a2;
  v10 = v3;
  [a2 enumerateTaskStatesBetweenStartTime:v5 startSampleIndex:v7 endTime:v6 endSampleIndex:v8 reverseOrder:0 block:v9];
}

void __50__SASamplePrinter_printRunawayMitigatedProcesses___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isRunawayMitigated])
  {
    v6 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:?];
    [*(a1 + 48) addObject:v6];
    *a4 = 1;
  }
}

void __34__SASamplePrinter_printDeadlocks___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([a3 isPartOfADeadlock] & 1) == 0 && !objc_msgSend(v3, "isBlockedByADeadlock"))
  {
    return;
  }

  v59 = [v3 threadState];
  v6 = [v59 startTimestamp];
  if ([v6 gt:*(*(a1 + 32) + 40)])
  {
    goto LABEL_4;
  }

  v7 = [v3 threadState];
  v8 = [v7 endTimestamp];
  v9 = [v8 lt:*(*(a1 + 32) + 32)];

  if ((v9 & 1) == 0)
  {
    if ([v3 isBlockedByADeadlock])
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = [v3 task];
      v13 = [(SASamplePrinter *)v11 displayNameForTask:v12];
      [v10 addObject:v13];
    }

    if ([v3 isPartOfADeadlock] && (objc_msgSend(*(a1 + 48), "containsObject:", a2) & 1) == 0)
    {
      [*(a1 + 48) addObject:a2];
      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = *(a1 + 32);
      v15 = [v3 task];
      v16 = [v3 thread];
      v17 = [v3 threadState];
      v18 = [(SASamplePrinter *)v14 displayNameForTask:v15 thread:v16 threadState:v17];
      [v59 addObject:v18];

      v54 = [v59 count] - 1;
      v19 = *(a1 + 32);
      v20 = [v3 task];
      v21 = [(SASamplePrinter *)v19 displayNameForTask:v20 includePid:0];

      v22 = [v3 threadState];
      v56 = [v22 name];

      v23 = [v3 threadState];
      v24 = [v23 dispatchQueue];
      v57 = [v24 dispatchQueueLabel];

      v25 = [v3 dependency];
      v26 = v25;
      if (!v25 || v25 == v3)
      {
        v46 = v25;
LABEL_36:
        v47 = v21;

        if (v54)
        {
          v48 = [v59 subarrayWithRange:{0, v54}];
          [v59 removeObjectsInRange:{0, v54}];
          [v59 addObjectsFromArray:v48];
        }

        v49 = *(a1 + 56);
        v50 = objc_alloc(MEMORY[0x1E696AEC0]);
        v51 = [v59 componentsJoinedByString:@" -> "];
        v52 = [v59 objectAtIndexedSubscript:0];
        v53 = [v50 initWithFormat:@"%@ -> %@", v51, v52];
        [v49 addObject:v53];

        v6 = v47;
LABEL_4:

        return;
      }

      v55 = v3;
      while (1)
      {
        v27 = [v26 task];
        v28 = [v26 thread];
        v29 = [v26 threadState];
        v30 = *(a1 + 48);
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v28, "threadId")}];
        [v30 addObject:v31];

        v32 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:v27 thread:v28 threadState:v29];
        [v59 addObject:v32];

        v58 = v27;
        v33 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:v27 includePid:0];
        v34 = [v29 name];
        [v29 dispatchQueue];
        v36 = v35 = v21;
        v37 = [v36 dispatchQueueLabel];

        v21 = v35;
        v38 = [v35 compare:v33 options:577];
        if (v38)
        {
          v39 = v59;
          v40 = v34;
          goto LABEL_18;
        }

        if (!v57)
        {
          break;
        }

        v40 = v34;
        if (v37)
        {
          v38 = [v57 compare:v37 options:577];
          v39 = v59;
          if (v38)
          {
            goto LABEL_18;
          }

LABEL_29:
          if (v56)
          {
            if (v40)
            {
              v38 = [v56 compare:v40 options:577];
              if (v38)
              {
                v39 = v59;
LABEL_18:
                if (v38 == 1)
                {
LABEL_19:
                  v54 = [v39 count] - 1;
                  v41 = v33;
                  v42 = v21;
                  v21 = v41;

                  v43 = v40;
                  v44 = a1;
                  v45 = v37;

                  v56 = v43;
                  v57 = v45;
                  a1 = v44;
                  v40 = v34;
                }
              }
            }
          }

          else
          {
            if (v40)
            {
              goto LABEL_19;
            }

            v56 = 0;
          }

          v3 = v55;
        }

        v46 = [v26 dependency];

        if (v46)
        {
          v26 = v46;
          if (v46 != v3)
          {
            continue;
          }
        }

        goto LABEL_36;
      }

      v39 = v59;
      v40 = v34;
      if (!v37)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }
}

- (id)displayNameForTask:(void *)task thread:(void *)thread threadState:
{
  if (self)
  {
    if (a2)
    {
      v5 = -[SASamplePrinter displayNameForTask:threadId:](self, a2, [task threadId]);
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ 0x%llx", @"Thread", objc_msgSend(task, "threadId")];
    }

    v6 = v5;
    name = [thread name];
    v8 = name;
    if (name)
    {
      v9 = [v6 stringByAppendingFormat:@" %@", name];

      v6 = v9;
    }

    dispatchQueue = [thread dispatchQueue];
    v11 = dispatchQueue;
    if (dispatchQueue)
    {
      v12 = [SASamplePrinter displayNameForDispatchQueue:dispatchQueue];
      v13 = [v6 stringByAppendingFormat:@" %@ %@", @"DispatchQueue", v12];

      v6 = v13;
    }

    swiftTask = [thread swiftTask];
    v15 = swiftTask;
    if (swiftTask)
    {
      if ([swiftTask identifier] == -1)
      {
        [v6 stringByAppendingFormat:@" %@ %@", @"Swift Task", @"UNKNOWN"];
      }

      else
      {
        [v6 stringByAppendingFormat:@" %@ %llu", @"Swift Task", objc_msgSend(v15, "identifier")];
      }
      v16 = ;

      v6 = v16;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)displayNameForTask:(int)task includePid:
{
  if (self)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:64];
    v7 = [(SASamplePrinter *)self rawNameForTask:a2];
    v8 = SACopySanitizedStringWhitespaceOnlyNullable(v7);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"UNKNOWN";
    }

    [v6 appendString:v10];

    bundleName = [a2 bundleName];

    if (bundleName)
    {
      bundleName2 = [a2 bundleName];
      v13 = SACopySanitizedString(bundleName2, 1, 0);
      [v6 appendFormat:@" (%@)", v13];
    }

    if (task)
    {
      [v6 appendFormat:@" [%d]", objc_msgSend(a2, "pid")];
      if ([a2 uniquePid] != -1)
      {
        uniquePid = [a2 uniquePid];
        if (uniquePid != [a2 pid])
        {
          [v6 appendFormat:@" [unique pid %llu]", objc_msgSend(a2, "uniquePid")];
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)kernelVersionAtWallTime:(uint64_t)time
{
  v21 = *MEMORY[0x1E69E9840];
  bootCycles = [*(time + 168) bootCycles];

  if (a2 == 0.0 || bootCycles == 0)
  {
    kernelVersion = [*(time + 168) kernelVersion];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    bootCycles2 = [*(time + 168) bootCycles];
    reverseObjectEnumerator = [bootCycles2 reverseObjectEnumerator];

    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          [v13 wallTimeAtMachAbsZero];
          if (v14 <= a2)
          {
            kernelVersion = [v13 kernelVersion];

            goto LABEL_17;
          }
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    kernelVersion = 0;
  }

LABEL_17:

  return kernelVersion;
}

- (id)displayNameForPid:(uint64_t)pid threadId:(void *)id timestamp:
{
  if (self)
  {
    if (a2 == -1 && !pid)
    {
      goto LABEL_4;
    }

    info = self[5].info;
    if (id)
    {
      [(SASampleStore *)info taskWithPid:a2 orTid:pid atTimestamp:id];
    }

    else
    {
      [(SASampleStore *)info lastTaskWithPid:a2 orTid:pid];
    }
    v10 = ;
    if (!v10)
    {
      if (pid)
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (a2 == -1)
        {
          v7 = [v12 initWithFormat:@"UNKNOWN TASK thread 0x%llx", pid, v17, v18];
        }

        else
        {
          v13 = @"UNKNOWN";
          if (!a2)
          {
            v13 = @"kernel_task";
          }

          v7 = [v12 initWithFormat:@"%@ [%d] thread 0x%llx", v13, a2, pid];
        }

        goto LABEL_5;
      }

      if (a2 != -1)
      {
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = @"UNKNOWN";
        if (!a2)
        {
          v15 = @"kernel_task";
        }

        v7 = [v14 initWithFormat:@"%@ [%d]", v15, a2, v18];
        goto LABEL_5;
      }

LABEL_4:
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN TASK", v16, v17, v18];
LABEL_5:
      v8 = v7;
      goto LABEL_11;
    }

    v8 = [(SASamplePrinter *)self displayNameForTask:v10 threadId:pid];
  }

  else
  {
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (__CFString)displayStringForResourceCoalition:(void *)coalition
{
  if ([coalition resourceCoalitionID])
  {
    resourceCoalitionName = [coalition resourceCoalitionName];

    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (resourceCoalitionName)
    {
      resourceCoalitionName2 = [coalition resourceCoalitionName];
      v5 = [v3 initWithFormat:@"%@(%llu)", resourceCoalitionName2, objc_msgSend(coalition, "resourceCoalitionID")];
    }

    else
    {
      v5 = [v3 initWithFormat:@"%llu", objc_msgSend(coalition, "resourceCoalitionID")];
    }
  }

  else
  {
    v5 = @"none";
  }

  return v5;
}

- (id)displayStringForOnBehalfOfForTasks:(unsigned int)tasks includePid:
{
  v55 = *MEMORY[0x1E69E9840];
  v36 = objc_alloc_init(SAOnBehalfOfMultiple);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__4;
  v52 = __Block_byref_object_dispose__4;
  v53 = 0;
  sampleTimestamps = [*(self + 168) sampleTimestamps];
  v5 = [sampleTimestamps count];
  v6 = *(self + 168);
  if ((v5 & 7) != 0)
  {
    sampleTimestamps2 = [v6 sampleTimestamps];
    v8 = ([sampleTimestamps2 count] >> 3) + 1;
  }

  else
  {
    sampleTimestamps2 = [v6 sampleTimestamps];
    v8 = [sampleTimestamps2 count] >> 3;
  }

  v9 = *(self + 168);
  if ((v8 & 7) != 0)
  {
    sampleTimestamps3 = [v9 sampleTimestamps];
    v11 = [sampleTimestamps3 count];
    v12 = *(self + 168);
    if ((v11 & 7) != 0)
    {
      sampleTimestamps4 = [v12 sampleTimestamps];
      v14 = ([sampleTimestamps4 count] >> 3) + 1;
    }

    else
    {
      sampleTimestamps4 = [v12 sampleTimestamps];
      v14 = [sampleTimestamps4 count] >> 3;
    }

    sampleTimestamps5 = [*(self + 168) sampleTimestamps];
    v19 = [sampleTimestamps5 count];
    v20 = *(self + 168);
    if ((v19 & 7) != 0)
    {
      sampleTimestamps6 = [v20 sampleTimestamps];
      v22 = [sampleTimestamps6 count];

      v23 = ((v22 >> 3) + 1) & 7;
    }

    else
    {
      sampleTimestamps7 = [v20 sampleTimestamps];
      v25 = [sampleTimestamps7 count];

      v23 = (v25 >> 3) & 7;
    }

    v17 = v14 - v23 + 8;
  }

  else
  {
    sampleTimestamps3 = [v9 sampleTimestamps];
    v15 = [sampleTimestamps3 count];
    v16 = *(self + 168);
    if ((v15 & 7) != 0)
    {
      sampleTimestamps4 = [v16 sampleTimestamps];
      v17 = ([sampleTimestamps4 count] >> 3) + 1;
    }

    else
    {
      sampleTimestamps4 = [v16 sampleTimestamps];
      v17 = [sampleTimestamps4 count] >> 3;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = a2;
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v27)
  {
    v28 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v26);
        }

        threads = [*(*(&v44 + 1) + 8 * i) threads];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke;
        v40[3] = &unk_1E86F7F90;
        v40[4] = self;
        v41 = v36;
        v42 = &v48;
        v43 = v17;
        [threads enumerateKeysAndObjectsUsingBlock:v40];
      }

      v27 = [v26 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v27);
  }

  if ([v49[5] count])
  {
    v31 = v49[5];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_3;
    v37[3] = &unk_1E86F7FB8;
    v39 = v17;
    v38 = v36;
    [v31 enumerateKeysAndObjectsUsingBlock:v37];
  }

  if (v36 && v36->_count)
  {
    v32 = [(SAOnBehalfOfMultiple *)v36 displayStringWithPids:tasks];
  }

  else
  {
    v32 = 0;
  }

  _Block_object_dispose(&v48, 8);

  return v32;
}

- (id)architectureStringForTask:(uint64_t)task
{
  architectureString = [a2 architectureString];
  v5 = *(task + 168);
  if (v5)
  {
    v6 = *(v5 + 240);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  objc_copyStruct(&dest, (a2 + 288), 8, 1, 0);
  if (v6)
  {
    if (dest)
    {
      CSArchitectureGetFamily();
      CSArchitectureGetFamily();
      if ((CSArchitectureMatchesArchitecture() & 1) == 0)
      {
        v7 = [architectureString stringByAppendingString:@" (translated)"];

        architectureString = v7;
      }
    }
  }

LABEL_7:

  return architectureString;
}

- (void)addTaskHeaderToStream:(void *)stream displayName:(uint64_t)name pid:(void *)pid mainBinary:(void *)binary mainBinaryPath:(void *)path sharedCaches:(uint64_t)caches uid:(double)uid bundleIdentifier:(void *)self0 bundleVersion:(__int128)self1 bundleShortVersion:(void *)self2 bundleBuildVersion:(void *)self3 bundleProjectName:(void *)self4 bundleSourceVersion:(void *)self5 bundleProductBuildVersion:(uint64_t)self6 adamID:(void *)self7 installerVersionID:(char)self8 developerType:(void *)self9 appType:(char)appType isBeta:(void *)beta cohortID:(void *)cohortID vendorID:(void *)vendorID distributorID:(void *)distributorID codesigningID:(void *)codesigningID teamID:(void *)teamID resourceCoalitionSampleCounts:(void *)counts onBehalfOfProcesses:(void *)processes architectureString:(void *)string kernelVersion:(void *)stream0 parentName:(void *)stream1 responsibleName:(void *)stream2 taskExecedFromName:(void *)stream3 taskExecedToName:(void *)stream4 forkTimestamp:(void *)stream5 startTimestamp:(unint64_t)stream6 endTimestamp:(unint64_t)stream7 startSampleIndex:(unint64_t)stream8 endSampleIndex:(unint64_t)stream9 numSamples:(uint64_t)name0 totalNumSamples:(uint64_t)name1 numSamplesSuspended:(unint64_t)name2 numSamplesTerminated:(unint64_t)name3 startingTaskSize:(unint64_t)name4 endingTaskSize:(unint64_t)name5 maxTaskSize:(unint64_t)name6 startSampleIndexOfMaxTaskSize:(unsigned int)name7 endSampleIndexOfMaxTaskSize:(unint64_t)name8 numPageins:(unint64_t)name9 cpuTimeNs:(unint64_t)pid0 cpuInstructions:(unint64_t)pid1 cpuCycles:(unint64_t)pid2 nonThreadCpuTimeNs:(unint64_t)pid3 nonThreadCpuInstructions:(char)pid4 nonThreadCpuCycles:(char)pid5 usesSuddenTermination:(void *)pid6 allowsIdleExit:(void *)pid7 memoryLimitStr:(char)pid8 jetsamPriorityStr:(char)pid9 isTranslocated:(char)binary0 hardenedHeap:(char)binary1 mteCheckedAllocationsEnabled:(char)binary2 mteUserDataAllocationsTagged:(char)binary3 mteSoftModeEnabled:mteInheritanceTurnedOn:isRunningBoardManaged:isUnresponsive:timeOfLastResponse:numThreads:numIdleWorkQueueThreads:numOtherHiddenThreads:hieSwallowedException:numSamplesWQExceededConstrainedThreadLimit:numSamplesWQExceededTotalThreadLimit:numSamplesWQExceededCooperativeThreadLimit:numSamplesWQExceededActiveConstrainedThreadLimit:numSamplesTALEngaged:isRunawayMitigated:threadsDeadlocked:threadsBlockedByADeadlock:ioSize:numIOs:isReportHeader:
{
  selfCopy = self;
  v86 = a77;
  cyclesCopy = cycles;
  v349 = *MEMORY[0x1E69E9840];
  if (a80)
  {
    if ([self[2] printJson])
    {
      v305 = *__error();
      v306 = _sa_logt();
      if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v306, OS_LOG_TYPE_ERROR, "printing report target task header with json", buf, 2u);
      }

      *__error() = v305;
      _SASetCrashLogMessage(7736, "printing report target task header with json");
      _os_crash();
      __break(1u);
    }

    else if (![selfCopy[2] systemstatsFormat])
    {
      goto LABEL_4;
    }

    v307 = *__error();
    v308 = _sa_logt();
    if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v308, OS_LOG_TYPE_ERROR, "printing report target task header with systemstats format", buf, 2u);
    }

    *__error() = v307;
    _SASetCrashLogMessage(7737, "printing report target task header with systemstats format");
    _os_crash();
    __break(1u);
    goto LABEL_505;
  }

LABEL_4:
  if (!iD)
  {
    if (!type)
    {
      v87 = 0;
      v88 = 0;
      goto LABEL_14;
    }

    if (([type isEqualToString:@"System"] & 1) == 0 && (objc_msgSend(type, "isEqualToString:", @"Internal") & 1) == 0)
    {
      v87 = [type isEqualToString:@"Hidden"];
      goto LABEL_13;
    }

LABEL_12:
    v87 = 1;
    goto LABEL_13;
  }

  if (iD == 1)
  {
    goto LABEL_12;
  }

  v87 = 0;
  v88 = 1;
  if (identifier && iD == -1)
  {
    v87 = [identifier hasPrefix:@"com.apple."];
LABEL_13:
    v88 = 1;
  }

LABEL_14:
  v325 = v88;
  v323 = v87;
  if ([selfCopy[2] printJson])
  {
    SAJSONWriteDictionaryFirstEntry(a2, @"name", stream);
    if (pid)
    {
      uuid = [pid uuid];
      uUIDString = [uuid UUIDString];
      SAJSONWriteDictionaryEntry(a2, @"uuid", uUIDString);
    }

    if (binary)
    {
      SAJSONWriteDictionaryEntry(a2, @"path", binary);
    }

    vendorIDCopy2 = vendorID;
    if (path)
    {
      SAJSONWriteDictionaryEntry(a2, @"sharedcaches", path);
    }

    if (caches != -314)
    {
      v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      SAJSONWriteDictionaryEntry(a2, @"uid", v92);
    }

    if (!productBuildVersion)
    {
LABEL_50:
      if (d)
      {
        v106 = SACopySanitizedString(d, 1, 0);
        SAJSONWriteDictionaryEntry(a2, @"appExternalID", v106);
      }

      if (v325)
      {
        if (v323)
        {
          v107 = MEMORY[0x1E695E118];
        }

        else
        {
          v107 = MEMORY[0x1E695E110];
        }

        SAJSONWriteDictionaryEntry(a2, @"isFirstParty", v107);
      }

      if (appType)
      {
        SAJSONWriteDictionaryEntry(a2, @"isBeta", MEMORY[0x1E695E118]);
        if (beta)
        {
          SAJSONWriteDictionaryEntry(a2, @"cohort", beta);
        }
      }

      if (cohortID)
      {
        SAJSONWriteDictionaryEntry(a2, @"betaIdentifier", cohortID);
      }

      if (identifier)
      {
        v108 = SACopySanitizedString(identifier, 1, 0);
        SAJSONWriteDictionaryEntry(a2, @"bundleIdentifier", v108);
      }

      if (processes)
      {
        SAJSONWriteDictionaryEntry(a2, @"version", processes);
        toNameCopy2 = toName;
LABEL_90:
        if (shortVersion)
        {
          v127 = SACopySanitizedString(shortVersion, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"buildVersion", v127);
        }

        if (sourceVersion)
        {
          v128 = SACopySanitizedString(sourceVersion, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"productBuildVersion", v128);
        }

        if (buildVersion)
        {
          v129 = SACopySanitizedString(buildVersion, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"projectName", v129);
        }

        if (projectName)
        {
          v130 = SACopySanitizedString(projectName, 1, 0);
          SAJSONWriteDictionaryEntry(a2, @"sourceVersion", v130);
        }

        if (vendorIDCopy2)
        {
          SAJSONWriteDictionaryEntry(a2, @"codesigningID", vendorIDCopy2);
        }

        if (distributorID)
        {
          SAJSONWriteDictionaryEntry(a2, @"teamID", distributorID);
        }

        if ([codesigningID count] > 1 || objc_msgSend(codesigningID, "count") == 1 && (objc_msgSend(codesigningID, "allKeys"), v131 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v131, "firstObject"), v132 = objc_claimAutoreleasedReturnValue(), v133 = objc_msgSend(v132, "isEqualToString:", @"none"), v132, v131, (v133 & 1) == 0))
        {
          SAJSONWriteDictionaryEntry(a2, @"resourceCoalitionSampleCounts", codesigningID);
        }

        if (teamID)
        {
          SAJSONWriteDictionaryEntry(a2, @"onBehalfOf", teamID);
        }

        if (string)
        {
          SAJSONWriteDictionaryEntry(a2, @"parent", string);
        }

        if (kernelVersion)
        {
          SAJSONWriteDictionaryEntry(a2, @"responsible", kernelVersion);
        }

        if (parentName)
        {
          SAJSONWriteDictionaryEntry(a2, @"taskExecedFrom", parentName);
        }

        if (responsibleName)
        {
          SAJSONWriteDictionaryEntry(a2, @"taskExecedTo", responsibleName);
        }

        if (counts)
        {
          SAJSONWriteDictionaryEntry(a2, @"arch", counts);
        }

        if (toNameCopy2)
        {
          SAJSONWriteDictionaryEntry(a2, @"startTime", toNameCopy2);
        }

        if (timestamp)
        {
          SAJSONWriteDictionaryEntry(a2, @"endTime", timestamp);
        }

        if (startTimestamp != 0x7FFFFFFFFFFFFFFFLL)
        {
          v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"startSampleIndex", v134);
        }

        if (endTimestamp != 0x7FFFFFFFFFFFFFFFLL)
        {
          v135 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"endSampleIndex", v135);
        }

        v136 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
        SAJSONWriteDictionaryEntry(a2, @"numSamples", v136);

        if (samples)
        {
          v137 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesSuspended", v137);
        }

        if (numSamples)
        {
          v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesTerminated", v138);
        }

        if (suspended)
        {
          v139 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"startingTaskSize", v139);
        }

        if (terminated)
        {
          v140 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"endingTaskSize", v140);
        }

        if (size)
        {
          v141 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"maxTaskSize", v141);
        }

        if (taskSize != 0x7FFFFFFFFFFFFFFFLL)
        {
          v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"startSampleIndexOfMaxTaskSize", v142);
        }

        if (maxTaskSize != 0x7FFFFFFFFFFFFFFFLL)
        {
          v143 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"endSampleIndexOfMaxTaskSize", v143);
        }

        if (ofMaxTaskSize)
        {
          v144 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          SAJSONWriteDictionaryEntry(a2, @"numPageins", v144);
        }

        if (indexOfMaxTaskSize)
        {
          v145 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"cpuNanoseconds", v145);
        }

        if (pageins)
        {
          v146 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"cpuInstructions", v146);
        }

        if (ns)
        {
          v147 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          SAJSONWriteDictionaryEntry(a2, @"cpuCycles", v147);
        }

        if (cpuInstructions)
        {
          SAJSONWriteDictionaryEntry(a2, @"usesSuddenTermination", MEMORY[0x1E695E118]);
        }

        if (cpuCycles)
        {
          SAJSONWriteDictionaryEntry(a2, @"allowsIdleExit", MEMORY[0x1E695E118]);
        }

        if (termination)
        {
          SAJSONWriteDictionaryEntry(a2, @"memoryLimitStr", termination);
        }

        if (exit)
        {
          SAJSONWriteDictionaryEntry(a2, @"jetsamPriorityStr", exit);
        }

        if (str)
        {
          SAJSONWriteDictionaryEntry(a2, @"isTranslocated", MEMORY[0x1E695E118]);
        }

        if (priorityStr)
        {
          SAJSONWriteDictionaryEntry(a2, @"hardenedHeap", MEMORY[0x1E695E118]);
        }

        if (translocated)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteCheckedAllocationsEnabled", MEMORY[0x1E695E118]);
        }

        if (heap)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteUserDataAllocationsTagged", MEMORY[0x1E695E118]);
        }

        if (enabled)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteSoftModeEnabled", MEMORY[0x1E695E118]);
        }

        if (tagged)
        {
          SAJSONWriteDictionaryEntry(a2, @"mteInheritanceTurnedOn", MEMORY[0x1E695E118]);
        }

        if (a64)
        {
          SAJSONWriteDictionaryEntry(a2, @"isRunningBoardManaged", MEMORY[0x1E695E118]);
        }

        if (a65)
        {
          SAJSONWriteDictionaryEntry(a2, @"isUnresponsive", MEMORY[0x1E695E118]);
          if (uid > 0.0)
          {
            v148 = [MEMORY[0x1E696AD98] numberWithDouble:uid];
            SAJSONWriteDictionaryEntry(a2, @"timeOfLastResponseCF", v148);
          }
        }

        if (a66)
        {
          v149 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numThreads", v149);
        }

        if (a67)
        {
          v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numIdleWorkQueueThreads", v150);
        }

        if (a68)
        {
          v151 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numOtherHiddenThreads", v151);
        }

        if (a69)
        {
          SAJSONWriteDictionaryEntry(a2, @"hieSwallowedException", MEMORY[0x1E695E118]);
        }

        if (a70)
        {
          v152 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededConstrainedThreadLimit", v152);
        }

        if (a71)
        {
          v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededTotalThreadLimit", v153);
        }

        if (a72)
        {
          v154 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededCooperativeThreadLimit", v154);
        }

        if (a73)
        {
          v155 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesWQExceededActiveConstrainedThreadLimit", v155);
        }

        if (a74)
        {
          v156 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numSamplesTALEngaged", v156);
        }

        if (a75)
        {
          SAJSONWriteDictionaryEntry(a2, @"isRunawayMitigated", MEMORY[0x1E695E118]);
        }

        if ([a76 count])
        {
          SAJSONWriteDictionaryEntry(a2, @"threadsDeadlocked", a76);
        }

        if ([a77 count])
        {
          SAJSONWriteDictionaryEntry(a2, @"threadsBlockedByADeadlock", a77);
        }

        if (a79)
        {
          v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          SAJSONWriteDictionaryEntry(a2, @"numIOs", v157);

          v331 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a78];
          SAJSONWriteDictionaryEntry(a2, @"ioSize", v331);
        }

        return;
      }

      versionCopy2 = version;
      toNameCopy2 = toName;
      if (version == 0)
      {
        goto LABEL_90;
      }

      if (*(&version + 1))
      {
        v111 = SACopySanitizedString(*(&version + 1), 1, 0);

        versionCopy2 = version;
        if (version)
        {
LABEL_69:
          v112 = SACopySanitizedString(versionCopy2, 1, 0);

LABEL_89:
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (%@)", v111, v112];
          SAJSONWriteDictionaryEntry(a2, @"version", v112);

          vendorIDCopy2 = vendorID;
          goto LABEL_90;
        }
      }

      else
      {
        v111 = @"???";
        if (version)
        {
          goto LABEL_69;
        }
      }

      v112 = @"???";
      goto LABEL_89;
    }

    osProductName = [selfCopy[21] osProductName];

    if (osProductName)
    {
      osProductName2 = [selfCopy[21] osProductName];
      v95 = SAIsEmbeddedPlatform(osProductName2);

      v96 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:productBuildVersion];
      if (!v95)
      {
        v97 = @"appItemID";
LABEL_49:
        SAJSONWriteDictionaryEntry(a2, v97, v96);

        goto LABEL_50;
      }
    }

    else
    {
      v96 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:productBuildVersion];
    }

    v97 = @"adamID";
    goto LABEL_49;
  }

  if (a80)
  {
    [a2 printWithFormat:@"%-*s%@\n", 18, "Command: ", stream];
  }

  else
  {
    v98 = "Powerstats for: ";
    if (([selfCopy[2] microstackshotsFormat] & 1) == 0 && !objc_msgSend(selfCopy[2], "systemstatsFormat"))
    {
      v98 = "Process: ";
    }

    [a2 printWithFormat:@"%-*s%@", 18, v98, stream];
    *(selfCopy + 113) = 1;
    if (([selfCopy[2] systemstatsFormat] & 1) == 0)
    {
      indexCopy2 = index;
      if (index && samples == index)
      {
        [a2 appendString:@" (suspended)"];
        indexCopy2 = index;
      }

      if (indexCopy2 && numSamples == index)
      {
        [a2 appendString:@" (zombie)"];
      }
    }

    [a2 appendString:@"\n"];
  }

  streamCopy = stream;
  pathCopy3 = path;
  if (!pid)
  {
LABEL_73:
    systemstatsFormat = [selfCopy[2] systemstatsFormat];
    if (binary && (systemstatsFormat & 1) == 0)
    {
      sanitizePaths = [selfCopy[21] sanitizePaths];
      binaryCopy = binary;
      v117 = binaryCopy;
      if (sanitizePaths)
      {
      }

      v118 = SACopySanitizedString(v117, 1, 0);
      [a2 printWithFormat:@"%-*s%@\n", 18, "Path: ", v118];
    }

    if (identifier)
    {
      v119 = SACopySanitizedString(identifier, 1, 0);
      [a2 printWithFormat:@"%-*s%@\n", 18, "Identifier: ", v119];
    }

    codesigningIDCopy2 = codesigningID;
    vendorIDCopy4 = vendorID;
    if (processes)
    {
      [a2 printWithFormat:@"%-*s%@\n", 18, "Version: ", processes];
      toNameCopy6 = toName;
      goto LABEL_204;
    }

    versionCopy4 = version;
    toNameCopy6 = toName;
    if (version == 0)
    {
LABEL_204:
      if (shortVersion)
      {
        v158 = SACopySanitizedString(shortVersion, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Build Version: ", v158];
      }

      if (sourceVersion)
      {
        v159 = SACopySanitizedString(sourceVersion, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Product Build Version: ", v159];
      }

      if (buildVersion)
      {
        v160 = SACopySanitizedString(buildVersion, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Project Name: ", v160];
      }

      if (projectName)
      {
        v161 = SACopySanitizedString(projectName, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "Source Version: ", v161];
      }

      if (vendorIDCopy4 && (!identifier || ![vendorIDCopy4 isEqualToString:identifier] || objc_msgSend(selfCopy[2], "displayCodesigningIDsMatchingBundleIDs")))
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Codesigning ID: ", vendorIDCopy4];
      }

      if (distributorID)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Team ID: ", distributorID];
      }

      if (productBuildVersion)
      {
        osProductName3 = [selfCopy[21] osProductName];

        v163 = "Adam ID: ";
        if (osProductName3)
        {
          osProductName4 = [selfCopy[21] osProductName];
          v165 = SAIsEmbeddedPlatform(osProductName4);

          if (!v165)
          {
            v163 = "App Item ID: ";
          }
        }

        [a2 printWithFormat:@"%-*s%llu\n", 18, v163, productBuildVersion];
      }

      if (d)
      {
        v166 = SACopySanitizedString(d, 1, 0);
        [a2 printWithFormat:@"%-*s%@\n", 18, "App External ID: ", v166];
      }

      if (v325)
      {
        v167 = "No";
        if (v323)
        {
          v167 = "Yes";
        }

        [a2 printWithFormat:@"%-*s%s\n", 18, "Is First Party: ", v167];
      }

      if (appType)
      {
        [a2 printWithFormat:@"%-*sYes\n", 18, "Is Beta: "];
        if (beta)
        {
          [a2 printWithFormat:@"%-*s%@\n", 18, "Cohort: ", beta];
        }
      }

      if (cohortID)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Beta Identifier: ", cohortID];
      }

      v328 = selfCopy;
      if ([pathCopy3 count])
      {
        sharedCaches = [selfCopy[21] sharedCaches];
        if ([sharedCaches count] > 1)
        {

LABEL_239:
          v339 = 0u;
          v340 = 0u;
          v337 = 0u;
          v338 = 0u;
          v170 = pathCopy3;
          v171 = [v170 countByEnumeratingWithState:&v337 objects:v348 count:16];
          if (v171)
          {
            v172 = v171;
            v173 = *v338;
            do
            {
              for (i = 0; i != v172; ++i)
              {
                if (*v338 != v173)
                {
                  objc_enumerationMutation(v170);
                }

                v175 = _shared_cache_display_string(*(*(&v337 + 1) + 8 * i));
                [a2 printWithFormat:@"%-*s%@\n", 18, "Shared Cache: ", v175];
              }

              v172 = [v170 countByEnumeratingWithState:&v337 objects:v348 count:16];
            }

            while (v172);
          }

          toNameCopy6 = toName;
          codesigningIDCopy2 = codesigningID;
          goto LABEL_247;
        }

        v169 = [pathCopy3 count];

        if (v169 > 1)
        {
          goto LABEL_239;
        }

        sharedCaches2 = [selfCopy[21] sharedCaches];
        if ([sharedCaches2 count])
        {
          firstObject = [pathCopy3 firstObject];
          null = [MEMORY[0x1E695DFB0] null];

          v207 = firstObject == null;
          pathCopy3 = path;
          if (v207)
          {
            [a2 printWithFormat:@"%-*s%@\n", 18, "Shared Cache: ", @"None"];
            goto LABEL_247;
          }
        }

        else
        {
        }

        if ([selfCopy[2] displayAllBinaries])
        {
          firstObject2 = [pathCopy3 firstObject];
          v235 = _shared_cache_display_string(firstObject2);
          [a2 printWithFormat:@"%-*s%@\n", 18, "Shared Cache: ", v235];
        }
      }

LABEL_247:
      if ([codesigningIDCopy2 count] > 1 || objc_msgSend(codesigningIDCopy2, "count") == 1 && (objc_msgSend(codesigningIDCopy2, "allKeys"), v190 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v190, "firstObject"), v191 = objc_claimAutoreleasedReturnValue(), v192 = objc_msgSend(v191, "isEqualToString:", @"none"), v191, v190, (v192 & 1) == 0))
      {
        allKeys = [codesigningIDCopy2 allKeys];
        v336[0] = MEMORY[0x1E69E9820];
        v336[1] = 3221225472;
        v336[2] = __1459__SASamplePrinter_addTaskHeaderToStream_displayName_pid_mainBinary_mainBinaryPath_sharedCaches_uid_bundleIdentifier_bundleVersion_bundleShortVersion_bundleBuildVersion_bundleProjectName_bundleSourceVersion_bundleProductBuildVersion_adamID_installerVersionID_developerType_appType_isBeta_cohortID_vendorID_distributorID_codesigningID_teamID_resourceCoalitionSampleCounts_onBehalfOfProcesses_architectureString_kernelVersion_parentName_responsibleName_taskExecedFromName_taskExecedToName_forkTimestamp_startTimestamp_endTimestamp_startSampleIndex_endSampleIndex_numSamples_totalNumSamples_numSamplesSuspended_numSamplesTerminated_startingTaskSize_endingTaskSize_maxTaskSize_startSampleIndexOfMaxTaskSize_endSampleIndexOfMaxTaskSize_numPageins_cpuTimeNs_cpuInstructions_cpuCycles_nonThreadCpuTimeNs_nonThreadCpuInstructions_nonThreadCpuCycles_usesSuddenTermination_allowsIdleExit_memoryLimitStr_jetsamPriorityStr_isTranslocated_hardenedHeap_mteCheckedAllocationsEnabled_mteUserDataAllocationsTagged_mteSoftModeEnabled_mteInheritanceTurnedOn_isRunningBoardManaged_isUnresponsive_timeOfLastResponse_numThreads_numIdleWorkQueueThreads_numOtherHiddenThreads_hieSwallowedException_numSamplesWQExceededConstrainedThreadLimit_numSamplesWQExceededTotalThreadLimit_numSamplesWQExceededCooperativeThreadLimit_numSamplesWQExceededActiveConstrainedThreadLimit_numSamplesTALEngaged_isRunawayMitigated_threadsDeadlocked_threadsBlockedByADeadlock_ioSize_numIOs_isReportHeader___block_invoke;
        v336[3] = &unk_1E86F7A18;
        v336[4] = codesigningIDCopy2;
        v177 = [allKeys sortedArrayUsingComparator:v336];

        if (index)
        {
          v327 = v86;
          v178 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v177, "count")}];
          v332 = 0u;
          v333 = 0u;
          v334 = 0u;
          v335 = 0u;
          v326 = v177;
          obj = v177;
          v179 = [obj countByEnumeratingWithState:&v332 objects:v347 count:16];
          if (v179)
          {
            v180 = v179;
            v181 = *v333;
            do
            {
              for (j = 0; j != v180; ++j)
              {
                if (*v333 != v181)
                {
                  objc_enumerationMutation(obj);
                }

                v183 = *(*(&v332 + 1) + 8 * j);
                v184 = [codesigningID objectForKeyedSubscript:v183];
                unsignedLongLongValue = [v184 unsignedLongLongValue];

                v186 = objc_alloc(MEMORY[0x1E696AEC0]);
                if (unsignedLongLongValue == 1)
                {
                  v187 = "";
                }

                else
                {
                  v187 = "s";
                }

                v183 = [v186 initWithFormat:@"%llu sample%s %@", unsignedLongLongValue, v187, v183];
                [v178 addObject:v183];
              }

              v180 = [obj countByEnumeratingWithState:&v332 objects:v347 count:16];
            }

            while (v180);
          }

          v189 = v178;
          v86 = v327;
          toNameCopy6 = toName;
          v177 = v326;
        }

        else
        {
          v189 = v177;
        }

        v193 = [v189 componentsJoinedByString:{@", "}];
        [a2 printWithFormat:@"%-*s%@\n", 18, "Resource Coalition: ", v193];

        selfCopy = v328;
      }

      if (teamID)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "On Behalf Of: ", teamID];
      }

      timestampCopy3 = timestamp;
      if ([selfCopy[2] systemstatsFormat])
      {
        goto LABEL_382;
      }

      if (counts)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Architecture: ", counts];
      }

      if (parentName)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Execed from: ", parentName];
      }

      if (responsibleName)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Execed to: ", responsibleName];
      }

      if (string)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Parent: ", string];
      }

      if (kernelVersion)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Responsible: ", kernelVersion];
      }

      if (a64)
      {
        [a2 printWithFormat:@"%-*sYes\n", 18, "RunningBoard Mgd: "];
      }

      if (name != -1)
      {
        [a2 printWithFormat:@"%-*s%i\n", 18, "PID: ", name];
      }

      if (caches != -314)
      {
        [a2 printWithFormat:@"%-*s%d\n", 18, "UID: ", caches];
      }

      if (cpuInstructions)
      {
        [a2 printWithFormat:@"%-*sTracked", 18, "Sudden Term: "];
        if (cpuCycles)
        {
          [a2 appendString:@" (allows idle exit)"];
        }

        [a2 appendString:@"\n"];
      }

      if (termination)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Memory Limit: ", termination];
      }

      if (exit)
      {
        [a2 printWithFormat:@"%-*s%@\n", 18, "Jetsam Priority: ", exit];
      }

      if (!suspended)
      {
LABEL_316:
        if (ofMaxTaskSize)
        {
          [a2 printWithFormat:@"%-*s%u pages\n", 18, "Pageins: ", ofMaxTaskSize];
        }

        if (a79)
        {
          if (a79 == 1)
          {
            v215 = "";
          }

          else
          {
            v215 = "s";
          }

          v216 = SAFormattedBytesEx(a78, 1, 0, 1, 0);
          [a2 printWithFormat:@"%-*s%lu I/O%s (%@)\n", 18, "I/O: ", a79, v215, v216, streamCopy, cycles];
        }

        [fromName wallTime];
        selfCopy = v328;
        if (v217 != 0.0)
        {
          [v328[4] wallTime];
          if (v218 != 0.0)
          {
            [v328[4] wallTime];
            v220 = v219;
            [fromName wallTime];
            v222 = v220 - v221;
            if (v222 < 0.0)
            {
              v222 = 0.0;
            }

            [a2 printWithFormat:@"%-*s%.0fs\n", 18, "Time Since Fork: ", *&v222];
          }
        }

        if (!toNameCopy6 || ([toNameCopy6 gt:v328[4]] & 1) == 0 && !objc_msgSend(v328[2], "microstackshotsFormat"))
        {
          goto LABEL_357;
        }

        if ([toNameCopy6 gt:v328[4]])
        {
          v223 = toNameCopy6;
        }

        else
        {
          v223 = v328[4];
        }

        [v223 wallTime];
        v225 = v224;
        if (v224 == 0.0)
        {
          [v328[4] wallTime];
          if (v226 != 0.0)
          {
            [v328[4] machContTimeSeconds];
            if (v227 != 0.0)
            {
              [toNameCopy6 machContTimeSeconds];
              if (v228 != 0.0)
              {
                [v328[4] wallTime];
                v230 = v229;
                [toNameCopy6 machContTimeSeconds];
                v232 = v231;
                [v328[4] machContTimeSeconds];
LABEL_345:
                v225 = v230 + v232 - v233;
                goto LABEL_346;
              }
            }

            [v328[4] machAbsTimeSeconds];
            if (v236 != 0.0)
            {
              [toNameCopy6 machAbsTimeSeconds];
              if (v237 != 0.0)
              {
                [v328[4] wallTime];
                v230 = v238;
                [toNameCopy6 machAbsTimeSeconds];
                v232 = v239;
                [v328[4] machAbsTimeSeconds];
                goto LABEL_345;
              }
            }
          }
        }

LABEL_346:
        if (v225 != 0.0)
        {
          if ([v328[2] omitAbsoluteWallTimes])
          {
            [v328[4] wallTime];
            if (v240 != 0.0)
            {
              displayDetailedWallTime = [v328[2] displayDetailedWallTime];
              [v328[4] wallTime];
              v207 = displayDetailedWallTime == 0;
              selfCopy = v328;
              if (v207)
              {
                v243 = 3;
              }

              else
              {
                v243 = 9;
              }

              [a2 printWithFormat:@"%-*s%.*fs\n", 18, "Start time: ", v243, v225 - v242];
            }
          }

          else
          {
            if ([v328[2] displayDetailedWallTime])
            {
              v245 = 9;
            }

            else
            {
              v245 = 3;
            }

            *v244.i64 = v225;
            v246 = _CopyStringForTime(v245, v244);
            [a2 printWithFormat:@"%-*s%@\n", 18, "Start time: ", v246];

            selfCopy = v328;
          }
        }

LABEL_357:
        if (timestampCopy3 && (([timestampCopy3 lt:selfCopy[5]] & 1) != 0 || objc_msgSend(selfCopy[2], "microstackshotsFormat")))
        {
          if ([timestampCopy3 lt:selfCopy[5]])
          {
            v247 = timestampCopy3;
          }

          else
          {
            v247 = selfCopy[5];
          }

          [v247 wallTime];
          v249 = v248;
          if (v248 == 0.0)
          {
            [selfCopy[5] wallTime];
            if (v250 != 0.0)
            {
              [selfCopy[5] machContTimeSeconds];
              if (v251 == 0.0 || ([timestampCopy3 machContTimeSeconds], v252 == 0.0))
              {
                [selfCopy[5] machAbsTimeSeconds];
                if (v258 != 0.0)
                {
                  [timestampCopy3 machAbsTimeSeconds];
                  if (v259 != 0.0)
                  {
                    [selfCopy[5] wallTime];
                    v261 = v260;
                    [selfCopy[5] machAbsTimeSeconds];
                    v263 = v262;
                    [timestampCopy3 machAbsTimeSeconds];
                    v249 = v261 + v263 - v264;
                  }
                }
              }

              else
              {
                [selfCopy[5] wallTime];
                v254 = v253;
                [selfCopy[5] machContTimeSeconds];
                v256 = v255;
                [timestampCopy3 machContTimeSeconds];
                v249 = v254 - (v256 - v257);
              }
            }
          }

          if (v249 != 0.0)
          {
            if ([selfCopy[2] omitAbsoluteWallTimes])
            {
              [selfCopy[4] wallTime];
              if (v265 != 0.0)
              {
                displayDetailedWallTime2 = [selfCopy[2] displayDetailedWallTime];
                [v328[4] wallTime];
                v207 = displayDetailedWallTime2 == 0;
                selfCopy = v328;
                if (v207)
                {
                  v268 = 3;
                }

                else
                {
                  v268 = 9;
                }

                [a2 printWithFormat:@"%-*s%.*fs\n", 18, "End time: ", v268, v249 - v267];
              }
            }

            else
            {
              if ([selfCopy[2] displayDetailedWallTime])
              {
                v270 = 9;
              }

              else
              {
                v270 = 3;
              }

              *v269.i64 = v249;
              v271 = _CopyStringForTime(v270, v269);
              [a2 printWithFormat:@"%-*s%@\n", 18, "End time: ", v271];

              selfCopy = v328;
            }
          }
        }

LABEL_382:
        if (a80)
        {
          goto LABEL_405;
        }

        [a2 printWithFormat:@"%-*s%lu", 18, "Num samples: ", index];
        if (*(selfCopy + 48) == 1)
        {
          if (startTimestamp == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (toNameCopy6 && [toNameCopy6 gt:selfCopy[5]])
            {
              v272 = toNameCopy6;
            }

            else
            {
              v272 = timestampCopy3;
              if (!v272)
              {
                goto LABEL_405;
              }
            }

            v278 = [(SASamplePrinter *)selfCopy timeIndexDescriptionForTimestamp:v272];
            [a2 printWithFormat:@" (task existed only %@)\n", v278];

            selfCopy = v328;
LABEL_405:
            if (([selfCopy[2] systemstatsFormat] & 1) == 0)
            {
              if (indexOfMaxTaskSize)
              {
                [a2 printWithFormat:@"%-*s", 18, "CPU Time: "];
                if ([selfCopy[2] displayDetailedCpuTime])
                {
                  v279 = 9;
                }

                else
                {
                  v279 = 3;
                }

                saos_printf_seconds(a2, indexOfMaxTaskSize, v279);
                if (ns)
                {
                  saos_printf_cycles_instructions(a2, ns, pageins, [selfCopy[2] displayDetailedCpuTime]);
                }

                [a2 appendString:@"\n"];
                displayDetailedCpuTime = [selfCopy[2] displayDetailedCpuTime];
                if (instructions)
                {
                  v281 = displayDetailedCpuTime;
                }

                else
                {
                  v281 = 0;
                }

                if (instructions > 0x98967F || v281)
                {
                  [a2 printWithFormat:@"%-*s", 18, "CPU Time (exited threads): "];
                  if ([selfCopy[2] displayDetailedCpuTime])
                  {
                    v282 = 9;
                  }

                  else
                  {
                    v282 = 3;
                  }

                  saos_printf_seconds(a2, instructions, v282);
                  if (timeNs)
                  {
                    saos_printf_cycles_instructions(a2, timeNs, cyclesCopy, [selfCopy[2] displayDetailedCpuTime]);
                  }

                  [a2 appendString:@"\n"];
                }
              }

              if (str)
              {
                [a2 printWithFormat:@"%-*sTranslocated\n", 18, "Note: "];
              }

              if (priorityStr)
              {
                [a2 printWithFormat:@"%-*sHas hardened heap\n", 18, "Note: "];
              }

              if ((translocated & 1) != 0 || (heap & 1) != 0 || (enabled & 1) != 0 || tagged)
              {
                v283 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v284 = v283;
                if (translocated)
                {
                  [v283 addObject:@"enabled"];
                }

                if (heap)
                {
                  [v284 addObject:@"pure-data"];
                }

                if (enabled)
                {
                  [v284 addObject:@"soft-mode"];
                }

                if (tagged)
                {
                  [v284 addObject:@"inheritance"];
                }

                v285 = [v284 componentsJoinedByString:{@", "}];
                [a2 printWithFormat:@"%-*s%@\n", 18, "MTE Config: ", v285];

                selfCopy = v328;
              }

              if (samples)
              {
                v286 = "s";
                if (samples == 1)
                {
                  v286 = "";
                }

                [a2 printWithFormat:@"%-*sSuspended for %lu sample%s\n", 18, "Note: ", samples, v286];
              }

              if (numSamples)
              {
                v287 = "s";
                if (numSamples == 1)
                {
                  v287 = "";
                }

                [a2 printWithFormat:@"%-*sTerminated (zombie) for %lu sample%s\n", 18, "Note: ", numSamples, v287];
              }

              if (a65)
              {
                [a2 printWithFormat:@"%-*sUnresponsive", 18, "Note: "];
                if (uid > 0.0)
                {
                  [selfCopy[4] wallTime];
                  if (v288 + -2.0 >= uid)
                  {
                    [a2 printWithFormat:@" for %.0f seconds before sampling", v288 - uid];
                  }
                }

                [a2 appendString:@"\n"];
              }

              if (a66)
              {
                [a2 printWithFormat:@"%-*s%lu\n", 18, "Num threads: ", a66];
              }

              displayIdleWorkQueueThreads = [selfCopy[2] displayIdleWorkQueueThreads];
              if (a67 && (displayIdleWorkQueueThreads & 1) == 0)
              {
                v290 = "s";
                if (a67 == 1)
                {
                  v290 = "";
                }

                [a2 printWithFormat:@"%-*s%lu idle work queue thread%s omitted\n", 18, "Note: ", a67, v290];
              }

              if (a68)
              {
                v291 = "s";
                if (a68 == 1)
                {
                  v291 = "";
                }

                [a2 printWithFormat:@"%-*s%lu other thread%s omitted\n", 18, "Note: ", a68, v291];
              }

              if (a69)
              {
                [a2 printWithFormat:@"%-*sProcess has swallowed at least one exception\n", 18, "Note: "];
              }

              if (a75)
              {
                [a2 printWithFormat:@"%-*sProcess is runaway mitigated\n", 18, "Note: "];
              }

              if (a74)
              {
                v292 = "s";
                if (a74 == 1)
                {
                  v292 = "";
                }

                [a2 printWithFormat:@"%-*sProcess clamped to Utility QoS for %lu sample%s\n", 18, "Note: ", a74, v292];
              }

              if (a70)
              {
                [a2 printWithFormat:@"%-*s%4d  (too many dispatch threads blocked in synchronous operations)\n", 18, "Dispatch Thread Soft Limit Reached: ", objc_msgSend(selfCopy[21], "workQueueSoftThreadLimit")];
                workQueueSoftThreadLimit = [v328[21] workQueueSoftThreadLimit];
                v294 = "s";
                if (a70 == 1)
                {
                  v294 = "";
                }

                selfCopy = v328;
                [a2 printWithFormat:@"%-*sWorkqueue exceeded constrained thread limit (%u) for %lu sample%s (too many dispatch threads blocked in synchronous operations)\n", 18, "Note: ", workQueueSoftThreadLimit, a70, v294];
              }

              if (a71)
              {
                [a2 printWithFormat:@"%-*s%4d  (too many dispatch threads blocked in synchronous operations)\n", 18, "Dispatch Thread Hard Limit Reached: ", objc_msgSend(selfCopy[21], "workQueueHardThreadLimit")];
                workQueueHardThreadLimit = [selfCopy[21] workQueueHardThreadLimit];
                v296 = "s";
                if (a71 == 1)
                {
                  v296 = "";
                }

                [a2 printWithFormat:@"%-*sWorkqueue exceeded total thread limit (%u) for %lu sample%s (too many dispatch threads blocked in synchronous operations)\n", 18, "Note: ", workQueueHardThreadLimit, a71, v296];
              }

              if (a72)
              {
                v297 = "s";
                if (a72 == 1)
                {
                  v297 = "";
                }

                [a2 printWithFormat:@"%-*sWorkqueue exceeded cooperative thread limit for %lu sample%s (more swift tasks runnable than allowed to run concurrently)\n", 18, "Note: ", a72, v297];
              }

              if (a73)
              {
                v298 = "s";
                if (a73 == 1)
                {
                  v298 = "";
                }

                [a2 printWithFormat:@"%-*sWorkqueue exceeded active constrained thread limit for %lu sample%s (more dispatch items runnable than allowed to run concurrently)\n", 18, "Note: ", a73, v298];
              }

              if ([a76 count])
              {
                v299 = [a76 count];
                if ([a76 count] == 1)
                {
                  v300 = "";
                }

                else
                {
                  v300 = "s";
                }

                v301 = [a76 componentsJoinedByString:{@", "}];
                [a2 printWithFormat:@"%-*s%lu thread%s - %@\n", 18, "Deadlocked: ", v299, v300, v301];
              }

              if ([v86 count])
              {
                v302 = [v86 count];
                if ([v86 count] == 1)
                {
                  v303 = "";
                }

                else
                {
                  v303 = "s";
                }

                v304 = [v86 componentsJoinedByString:{@", "}];
                [a2 printWithFormat:@"%-*s%lu thread%s - %@\n", 18, "Blocked by Deadlock: ", v302, v303, v304];
              }
            }

            return;
          }

          forceOneBasedTimeIndexes = [selfCopy[2] forceOneBasedTimeIndexes];
          v275 = startTimestamp + 1;
          if (forceOneBasedTimeIndexes)
          {
            v275 -= selfCopy[7];
          }

          objc_msgSend(a2, "printWithFormat:", @" (%lu"), v275;
          if (startTimestamp < endTimestamp)
          {
            if (*(selfCopy + 48) == 1)
            {
              forceOneBasedTimeIndexes2 = [selfCopy[2] forceOneBasedTimeIndexes];
              v277 = endTimestamp + 1;
              if (forceOneBasedTimeIndexes2)
              {
                v277 -= selfCopy[7];
              }
            }

            else
            {
              v277 = 0x7FFFFFFFFFFFFFFFLL;
            }

            [a2 printWithFormat:@"-%lu", v277];
          }

          v273 = @"\n");
LABEL_404:
          [a2 appendString:v273];
          goto LABEL_405;
        }

        if (!sampleIndex || ([selfCopy[2] systemstatsFormat] & 1) != 0)
        {
          v273 = @"\n";
          goto LABEL_404;
        }

        if (sampleIndex >= index)
        {
          [a2 printWithFormat:@" (%.0f%%)\n", index * 100.0 / sampleIndex];
          goto LABEL_405;
        }

LABEL_505:
        v309 = *__error();
        v310 = _sa_logt();
        if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
        {
          uTF8String = [streamCopy UTF8String];
          *buf = 136315650;
          v342 = uTF8String;
          v343 = 2048;
          sampleIndexCopy = sampleIndex;
          v345 = 2048;
          indexCopy3 = index;
          _os_log_error_impl(&dword_1E0E2F000, v310, OS_LOG_TYPE_ERROR, "%s: totalNumSamples %lu < numSamples %lu", buf, 0x20u);
        }

        *__error() = v309;
        _SASetCrashLogMessage(8334, "%s: totalNumSamples %lu < numSamples %lu", [streamCopy UTF8String], sampleIndex, index);
        _os_crash();
        __break(1u);
      }

      v195 = SAFormattedBytesEx(suspended, 1, 0, 1, 0);
      [a2 printWithFormat:@"%-*s%@", 18, "Footprint: ", v195];

      if (!terminated || (displayAllTaskSizeChanges = 1, suspended * 1.05 > terminated) && terminated * 1.05 > suspended)
      {
        displayAllTaskSizeChanges = [v328[2] displayAllTaskSizeChanges];
      }

      v197 = terminated - suspended;
      if (terminated >= suspended && displayAllTaskSizeChanges)
      {
        suspendedCopy = terminated;
      }

      else
      {
        suspendedCopy = suspended;
      }

      if (suspendedCopy * 1.05 <= size)
      {
        v208 = SAFormattedBytesEx(terminated, 1, 0, 1, 0);
        v209 = SAFormattedSignedBytes(v197, 1, 0);
        [a2 printWithFormat:@" -> %@ (%@)", v208, v209];

        timestampCopy3 = timestamp;
      }

      else
      {
        displayAllTaskSizeChanges2 = [v328[2] displayAllTaskSizeChanges];
        v200 = displayAllTaskSizeChanges | displayAllTaskSizeChanges2;
        timestampCopy3 = timestamp;
        if ((v200 & 1) == 0 || (v201 = displayAllTaskSizeChanges2, SAFormattedBytesEx(terminated, 1, 0, 1, 0), v202 = objc_claimAutoreleasedReturnValue(), SAFormattedSignedBytes(v197, 1, 0), v203 = objc_claimAutoreleasedReturnValue(), [a2 printWithFormat:@" -> %@ (%@)", v202, v203], v203, v202, (v201 & 1) == 0))
        {
LABEL_315:
          [a2 appendString:@"\n"];
          goto LABEL_316;
        }
      }

      v210 = [(SASamplePrinter *)v328 timeIndexDescriptionForStartSampleIndex:taskSize endSampleIndex:maxTaskSize formattedToLength:0];
      v211 = SAFormattedBytesEx(size, 1, 0, 1, 0);
      v212 = v211;
      v213 = " ";
      if (!v210)
      {
        v213 = "";
      }

      v214 = &stru_1F5BBF440;
      if (v210)
      {
        v214 = v210;
      }

      [a2 printWithFormat:@" (max %@%s%@)", v211, v213, v214];

      goto LABEL_315;
    }

    if (*(&version + 1))
    {
      v124 = SACopySanitizedString(*(&version + 1), 1, 0);

      versionCopy4 = version;
      if (version)
      {
LABEL_85:
        v125 = SACopySanitizedString(versionCopy4, 1, 0);

LABEL_203:
        [a2 printWithFormat:@"%-*s%@ (%@)\n", 18, "Version: ", v124, v125];

        vendorIDCopy4 = vendorID;
        goto LABEL_204;
      }
    }

    else
    {
      v124 = @"???";
      if (version)
      {
        goto LABEL_85;
      }
    }

    v125 = @"???";
    goto LABEL_203;
  }

  if (![selfCopy[2] systemstatsFormat])
  {
    uuid2 = [pid uuid];
    uUIDString2 = [uuid2 UUIDString];
    [a2 printWithFormat:@"%-*s%@\n", 18, "UUID: ", uUIDString2];

LABEL_72:
    goto LABEL_73;
  }

  v101 = [selfCopy[11] objectForKeyedSubscript:pid];
  if (v101)
  {
    v102 = v101;
    null2 = [MEMORY[0x1E695DFB0] null];
    uuid2 = [v102 objectForKeyedSubscript:null2];

    if (uuid2)
    {

      v86 = a77;
LABEL_71:
      [a2 printWithFormat:@"%-*s%lu\n", 18, "UUID: ", objc_msgSend(uuid2, "unsignedLongValue")];
      pathCopy3 = path;
      goto LABEL_72;
    }

    allValues = [v102 allValues];
    uuid2 = [allValues firstObject];

    v86 = a77;
    if (uuid2)
    {
      goto LABEL_71;
    }
  }

  v312 = *__error();
  v313 = _sa_logt();
  if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
  {
    uTF8String2 = [streamCopy UTF8String];
    uuid3 = [pid uuid];
    uUIDString3 = [uuid3 UUIDString];
    *buf = 136315394;
    v342 = uTF8String2;
    v343 = 2080;
    sampleIndexCopy = [uUIDString3 UTF8String];
    _os_log_error_impl(&dword_1E0E2F000, v313, OS_LOG_TYPE_ERROR, "%s: no index for main binary %s, required by systemstats format", buf, 0x16u);
  }

  *__error() = v312;
  uTF8String3 = [streamCopy UTF8String];
  uuid4 = [pid uuid];
  uUIDString4 = [uuid4 UUIDString];
  _SASetCrashLogMessage(8026, "%s: no index for main binary %s, required by systemstats format", uTF8String3, [uUIDString4 UTF8String]);

  _os_crash();
  __break(1u);
}

- (BOOL)shouldPrintTimeOutsideSamplingRange:(uint64_t)range
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 < 0.0)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v9 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "negative timeOutsideSamplingRange %f", buf, 0xCu);
    }

    *__error() = v6;
    _SASetCrashLogMessage(13775, "negative timeOutsideSamplingRange %f", a2);
    _os_crash();
    __break(1u);
  }

  [*(range + 168) attemptedSamplingInterval];
  v4 = v3 != 0.0;
  if (v3 >= a2)
  {
    v4 = 0;
  }

  return a2 > 0.2 || v4;
}

void __30__SASamplePrinter_printHeader__block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(*(a1 + 32) + 168) targetProcess];
  if (v4 != a2)
  {
    v14 = v4;
    v5 = [*(*(a1 + 32) + 168) targetProcesses];
    v6 = [v5 containsObject:a2];

    if (v6)
    {
      return;
    }

    v4 = [a2 mainBinary];
    if (!v4)
    {
      v7 = *(a1 + 32);
      if (v7 && *(v7 + 48) == 1)
      {
        v8 = [a2 sampleCountInSampleIndexRangeStart:*(v7 + 56) end:*(v7 + 64)];
      }

      else
      {
        v8 = [a2 sampleCountInTimestampRangeStart:*(v7 + 32) end:*(v7 + 40)];
      }

      v9 = v8;
      if (v8)
      {
        *(*(*(a1 + 48) + 8) + 24) += v8;
        v10 = *(a1 + 40);
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [(SASamplePrinter *)*(a1 + 32) displayNameForTask:a2];
        v13 = [v11 initWithFormat:@"%lu from %@ due to missing load infos", v9, v12];
        [v10 addObject:v13];
      }

      v4 = 0;
    }
  }
}

void __30__SASamplePrinter_printHeader__block_invoke_4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"systemAdvisoryLevel%@", a2];
  SAJSONWriteDictionaryEntry(v6, v7, a3);

  *a4 = 0;
}

uint64_t __30__SASamplePrinter_printHeader__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 BOOLValue];
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  return [*(a1 + v6) appendFormat:@"%@, ", a2];
}

void __30__SASamplePrinter_printHeader__block_invoke_1352(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if ([a4 count])
  {
    v26 = a3;
    v8 = [a4 sortedArrayUsingComparator:&__block_literal_global_1355];
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:32];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [*(*(&v27 + 1) + 8 * i) unsignedLongLongValue];
          if (-v13 == i)
          {
            v17 = @"0x%llx";
          }

          else
          {
            v17 = @", 0x%llx";
          }

          [v9 appendFormat:v17, v16];
        }

        v13 += v12;
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    a3 = v26;
  }

  else
  {
    v9 = 0;
  }

  [*(*(a1 + 32) + 8) printWithFormat:@"%-*s", 18, "Network mount: "];
  if ((*(a1 + 48) & 1) == 0)
  {
    v18 = *(*(a1 + 32) + 8);
    v19 = SACopySanitizedString(a2, 1, 0);
    [v18 printWithFormat:@"%@ ", v19];
  }

  v20 = *(*(a1 + 32) + 8);
  v21 = SACopySanitizedString(a3, 1, 0);
  [v20 printWithFormat:@"(%@)", v21];

  v22 = *(a1 + 32);
  v23 = *(v22 + 8);
  if (v9)
  {
    v24 = [a4 count];
    v25 = "s";
    if (v24 == 1)
    {
      v25 = "";
    }

    [v23 printWithFormat:@" blocking thread%s %@", v25, v9];
  }

  else
  {
    [*(v22 + 8) appendString:@" unresponsive"];
  }

  [*(*(a1 + 32) + 8) appendString:@"\n"];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)binaryImagesHitByTask:(uint64_t)task
{
  if (!task)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v4 = *(task + 136);
  if (v4)
  {
    if (v4 == a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    targetProcess = [*(task + 168) targetProcess];

    if (targetProcess == a2)
    {
      goto LABEL_13;
    }
  }

  v6 = *(task + 16);
  if (v6)
  {
    v7 = *(v6 + 168);
    if (v7 != 1 && (v7 || (*(v6 + 11) & 1) != 0))
    {
      targetProcesses = [*(task + 168) targetProcesses];
      v9 = [targetProcesses containsObject:a2];

      mainBinary = [a2 mainBinary];
      if (mainBinary)
      {
        if (([*(task + 16) taskAggregation] != 3) | v9 & 1)
        {
          sharedCache = 0;
          resourceCoalitionID = 0;
        }

        else
        {
          resourceCoalitionID = [a2 resourceCoalitionID];
          if (resourceCoalitionID)
          {
            sharedCache = [a2 sharedCache];
          }

          else
          {
            sharedCache = 0;
          }
        }

        v13 = [[SATaskAggregationIdentifier alloc] initWithBinary:mainBinary sharedCache:sharedCache rcid:resourceCoalitionID isTarget:v9];
      }

      else
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
      }

      goto LABEL_20;
    }
  }

LABEL_13:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
LABEL_20:
  v14 = [*(task + 80) objectForKeyedSubscript:v13];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    [*(task + 80) setObject:v14 forKeyedSubscript:v13];
  }

LABEL_23:

  return v14;
}

void __30__SASamplePrinter_printHeader__block_invoke_1379(uint64_t a1, uint64_t a2, char *a3)
{
  [(SASamplePrinter *)*(a1 + 32) addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 40) task:*(a1 + 48) toRootObjects:1 nameChanges:1 dispatchQueueChanges:0 swiftTaskChanges:1 threadChanges:1 priorityChanges:0 microstackshotSummary:1u onlyHeaviestStack:0 includeState:?];
  v4 = [(SASamplePrinter *)*(a1 + 32) binaryImagesHitByTask:?];
  v5 = v4;
  v6 = *(*(*(a1 + 64) + 8) + 40);
  if (v6)
  {
    v7 = v6 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Target tasks do not share the same displayed load info, cannot merge stacks", buf, 2u);
    }

    *__error() = v8;
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

- (void)addStackForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(uint64_t)indexes task:(void *)task toRootObjects:(char)objects nameChanges:(char)changes dispatchQueueChanges:(char)self0 swiftTaskChanges:(char)self1 threadChanges:(char)self2 priorityChanges:(uint64_t)self3 microstackshotSummary:(unsigned __int8)self4 onlyHeaviestStack:(char)self5 includeState:
{
  v161 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  LOBYTE(v15) = objects;
  statesCopy = self;
  LODWORD(v20) = summary;
  v21 = objc_autoreleasePoolPush();
  if ((summary & 1) == 0)
  {
    printHeavyStacks = [*(statesCopy + 2) printHeavyStacks];
    if (queue)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (!a2 && states)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  printHeavyStacks = 1;
  if (!queue)
  {
    goto LABEL_6;
  }

LABEL_8:
  if ((queue || !a2 || states) && (a2 || states || !queue))
  {
    goto LABEL_62;
  }

LABEL_14:
  LODWORD(v22) = [*(statesCopy + 2) displayBlockedReasons];
  if (v22)
  {
    displayBlockedReasonsLackingProcessOwners = [*(statesCopy + 2) displayBlockedReasonsLackingProcessOwners];
    if ([*(statesCopy + 2) displayAddressesInBlockedReasons])
    {
      displayBlockedReasonsLackingProcessOwners |= 2uLL;
    }
  }

  else
  {
    displayBlockedReasonsLackingProcessOwners = 0;
  }

  patchTruncatedStacks = [*(statesCopy + 2) patchTruncatedStacks];
  displayBlockedThreads = [*(statesCopy + 2) displayBlockedThreads];
  displayRunnableThreads = [*(statesCopy + 2) displayRunnableThreads];
  displayRunningThreads = [*(statesCopy + 2) displayRunningThreads];
  displayKernelFrames = [*(statesCopy + 2) displayKernelFrames];
  displayExclaveFrames = [*(statesCopy + 2) displayExclaveFrames];
  displayUserFrames = [*(statesCopy + 2) displayUserFrames];
  displayIOInCallTrees = [*(statesCopy + 2) displayIOInCallTrees];
  v64 = [*(statesCopy + 2) callTreeTimestampsTimeDomain] != 0;
  displayOnBehalfOfInCallTrees = [*(statesCopy + 2) displayOnBehalfOfInCallTrees];
  showThreadStateAsLeafFrame = [*(statesCopy + 2) showThreadStateAsLeafFrame];
  includeUserIdleAndBatteryStateInStacks = [*(statesCopy + 2) includeUserIdleAndBatteryStateInStacks];
  omitStacksOnAC = [*(statesCopy + 2) omitStacksOnAC];
  omitStacksOnBattery = [*(statesCopy + 2) omitStacksOnBattery];
  omitStacksWithUserIdle = [*(statesCopy + 2) omitStacksWithUserIdle];
  omitStacksWithUserActive = [*(statesCopy + 2) omitStacksWithUserActive];
  omitStacksWithPCore = [*(statesCopy + 2) omitStacksWithPCore];
  omitStacksWithECore = [*(statesCopy + 2) omitStacksWithECore];
  omitStacksBelowBasePriority = [*(statesCopy + 2) omitStacksBelowBasePriority];
  omitStacksAboveBasePriority = [*(statesCopy + 2) omitStacksAboveBasePriority];
  if ([*(statesCopy + 2) swiftAsyncDisplayCRootCallstacks])
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = 1;
  }

  else
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = [*(statesCopy + 2) swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
  }

  v25 = *(statesCopy + 2);
  v50 = swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways;
  if (!v25)
  {
    goto LABEL_74;
  }

  v26 = *(v25 + 152);
  if (!v26)
  {
    v26 = 3;
    if (!*(v25 + 11))
    {
      v26 = 1;
    }
  }

  v49 = v26;
  v27 = *(v25 + 160);
  if (!v27)
  {
    v27 = 2;
    if (!*(v25 + 14))
    {
      v27 = 3;
    }
  }

  for (i = v27; ; i = 0)
  {
    v71 = v15;
    v70 = displayBlockedReasonsLackingProcessOwners;
    v47 = (([v25 printTargetThreadOnly] & 1) != 0 || v20) && (v28 = *(statesCopy + 21)) != 0 && (*(v28 + 404) & 1) != 0 && *(statesCopy + 15) != 0;
    options = [statesCopy options];
    tidsToPrint = [options tidsToPrint];

    indexesCopy = indexes;
    if (((printHeavyStacks ^ 1 | (stack & showThreadStateAsLeafFrame)) & 1) == 0)
    {
      indexesCopy = 0;
    }

    v20 = v20 ? 0 : indexesCopy;
    if (a2)
    {
      break;
    }

    if (queue)
    {
      v31 = 0;
      goto LABEL_46;
    }

    v34 = [states indexOfFirstThreadStateOnOrAfterTime:*(statesCopy + 4) sampleIndex:*(statesCopy + 7)];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_54;
    }

    v31 = v34;
    if (!thread)
    {
      goto LABEL_46;
    }

    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
    v36 = [thread indexOfObject:v35 inSortedRange:0 options:objc_msgSend(thread usingComparator:{"count"), 1280, &__block_literal_global_2430}];

    v31 = v36;
    if (v36 < [thread count])
    {
      goto LABEL_46;
    }

    v21 = v36;
    v37 = *__error();
    v38 = _sa_logt();
    statesCopy = states;
    queue = thread;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [states debugDescription];
      uTF8String = [v39 UTF8String];
      v41 = [thread count];
      *buf = 136315650;
      *&buf[4] = uTF8String;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      v158 = v41;
      _os_log_error_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_ERROR, "%s: startingIndex %lu < threadStateIndexes.count %lu", buf, 0x20u);
    }

    states = thread;
    *__error() = v37;
    v42 = [statesCopy debugDescription];
    v43 = v42;
    _SASetCrashLogMessage(11793, "%s: startingIndex %lu < threadStateIndexes.count %lu", [v42 UTF8String], v21, objc_msgSend(thread, "count"));

    _os_crash();
    __break(1u);
LABEL_62:
    v15 = *__error();
    displayBlockedReasonsLackingProcessOwners = _sa_logt();
    if (os_log_type_enabled(displayBlockedReasonsLackingProcessOwners, OS_LOG_TYPE_ERROR))
    {
      if (states)
      {
        v22 = "y";
      }

      else
      {
        v22 = "n";
      }

      if (a2)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }

      *buf = 136315650;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = states;
      if (queue)
      {
        v44 = "y";
      }

      else
      {
        v44 = "n";
      }

      *&buf[22] = 2080;
      v158 = v44;
      _os_log_error_impl(&dword_1E0E2F000, displayBlockedReasonsLackingProcessOwners, OS_LOG_TYPE_ERROR, "aThread %s, dispatchQueue %s, swiftTaskStates %s", buf, 0x20u);
    }

    else
    {
      if (states)
      {
        v22 = "y";
      }

      else
      {
        v22 = "n";
      }

      if (a2)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }

      if (queue)
      {
        v44 = "y";
      }

      else
      {
        v44 = "n";
      }
    }

    *__error() = v15;
    _SASetCrashLogMessage(11727, "aThread %s, dispatchQueue %s, swiftTaskStates %s", v22, states, v44);
    v25 = _os_crash();
    __break(1u);
LABEL_74:
    v49 = 0;
  }

  v31 = [(SARecipe *)a2 indexOfFirstStateOnOrAfterTime:*(statesCopy + 7) sampleIndex:?];
  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

LABEL_46:
  v156[0] = 0;
  v156[1] = v156;
  v156[2] = 0x2020000000;
  v156[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v158 = __Block_byref_object_copy__4;
  v159 = __Block_byref_object_dispose__4;
  v160 = 0;
  v154[0] = 0;
  v154[1] = v154;
  v154[2] = 0x3032000000;
  v154[3] = __Block_byref_object_copy__4;
  v154[4] = __Block_byref_object_dispose__4;
  v155 = 0;
  v152[0] = 0;
  v152[1] = v152;
  v152[2] = 0x3032000000;
  v152[3] = __Block_byref_object_copy__4;
  v152[4] = __Block_byref_object_dispose__4;
  v153 = 0;
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x3032000000;
  v150[3] = __Block_byref_object_copy__4;
  v150[4] = __Block_byref_object_dispose__4;
  v151 = 0;
  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x3032000000;
  v148[3] = __Block_byref_object_copy__4;
  v148[4] = __Block_byref_object_dispose__4;
  v149 = 0;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x3032000000;
  v146[3] = __Block_byref_object_copy__4;
  v146[4] = __Block_byref_object_dispose__4;
  v147 = 0;
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x2020000000;
  v145[3] = 0x7FFFFFFFFFFFFFFFLL;
  v143[0] = 0;
  v143[1] = v143;
  v143[2] = 0x3032000000;
  v143[3] = __Block_byref_object_copy__4;
  v143[4] = __Block_byref_object_dispose__4;
  v144 = 0;
  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = __Block_byref_object_copy__4;
  v141 = __Block_byref_object_dispose__4;
  v142 = 0;
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x2020000000;
  v132[3] = 0x7FFFFFFFFFFFFFFFLL;
  v130[0] = 0;
  v130[1] = v130;
  v130[2] = 0x2020000000;
  v131 = 0;
  v46 = *(statesCopy + 5);
  v45 = statesCopy[48] & (printHeavyStacks ^ 1);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __245__SASamplePrinter_addStackForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_task_toRootObjects_nameChanges_dispatchQueueChanges_swiftTaskChanges_threadChanges_priorityChanges_microstackshotSummary_onlyHeaviestStack_includeState___block_invoke_2433;
  v78[3] = &unk_1E86F7DB8;
  v101 = 0;
  v78[4] = statesCopy;
  v78[5] = indexes;
  v95 = v31;
  v78[6] = states;
  v78[7] = thread;
  v78[8] = a2;
  v78[9] = queue;
  v79 = tidsToPrint;
  v102 = v47;
  priorityChangesCopy = priorityChanges;
  v82 = v132;
  v83 = v145;
  v84 = &v133;
  v103 = displayRunningThreads;
  v104 = displayRunnableThreads;
  v105 = displayBlockedThreads;
  v99 = omitStacksAboveBasePriority;
  v100 = omitStacksBelowBasePriority;
  v106 = omitStacksWithUserActive;
  v107 = omitStacksWithUserIdle;
  v108 = omitStacksOnBattery;
  v109 = omitStacksOnAC;
  v110 = omitStacksWithPCore;
  v111 = omitStacksWithECore;
  v112 = v50;
  v96 = i;
  v97 = v49;
  v113 = displayIOInCallTrees;
  v85 = v130;
  v86 = v156;
  v87 = buf;
  v88 = v154;
  v89 = &v137;
  stackCopy = stack;
  v115 = printHeavyStacks;
  v90 = v143;
  v91 = v146;
  v92 = v150;
  changesCopy = changes;
  queueChangesCopy = queueChanges;
  threadChangesCopy = threadChanges;
  v119 = v71;
  taskChangesCopy = taskChanges;
  v121 = displayUserFrames;
  v122 = displayKernelFrames;
  v123 = displayExclaveFrames;
  taskCopy = task;
  v93 = v148;
  v94 = v152;
  v124 = patchTruncatedStacks;
  v125 = v22;
  v126 = displayOnBehalfOfInCallTrees;
  v127 = showThreadStateAsLeafFrame;
  v128 = includeUserIdleAndBatteryStateInStacks;
  v98 = v70;
  v129 = v64;
  [(SASamplePrinter *)statesCopy iterateDispatchQueue:a2 orSwiftTaskStates:queue orThread:states threadStateIndexes:thread startingAtIndex:v31 endingAfterTimestamp:v46 task:v20 stopAtTimeJumps:v45 callback:v78];
  if (stack)
  {
    if ((printHeavyStacks & 1) == 0)
    {
      v32 = v134[3];
      if (v138[5] || v32)
      {
        v33 = [(SASamplePrinter *)statesCopy stateChangeStringForThreadState:a2 serialDispatchQueue:queue swiftTaskStates:0 thread:0 threadStateIndexes:0 taskState:0 task:0 iteratorIndex:0 missingStateIsInAnotherStack:v32 numSamplesOmittedSincePreviousDisplayedSample:0 sampleTimestamp:0 previousSampleTimestamp:0 previousDisplayedTimestamp:0 previousTaskState:0 previousThread:0 previousThreadState:0 dispatchQueueChanges:0 swiftTaskChanges:0 priorityChanges:0 nameChanges:0 threadChanges:0 isTimeJump:v138[5] ioEventsSincePreviousThreadState:?];
        if (v33)
        {
          [task addObject:v33];
        }
      }
    }
  }

  _Block_object_dispose(v130, 8);
  _Block_object_dispose(v132, 8);
  _Block_object_dispose(&v133, 8);
  _Block_object_dispose(&v137, 8);

  _Block_object_dispose(v143, 8);
  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v146, 8);

  _Block_object_dispose(v148, 8);
  _Block_object_dispose(v150, 8);

  _Block_object_dispose(v152, 8);
  _Block_object_dispose(v154, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v156, 8);
LABEL_54:

  objc_autoreleasePoolPop(v21);
}

void __30__SASamplePrinter_printHeader__block_invoke_1386(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 dispatchQueue];
  v6 = a1[4];

  if (v5 == v6)
  {
    v7 = a1[5];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v7 addObject:v8];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)sortHeavyCallTree:(uint64_t)tree
{
  if (tree)
  {
    [a2 sortUsingComparator:&__block_literal_global_2784];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __37__SASamplePrinter_sortHeavyCallTree___block_invoke_2796;
    v3[3] = &unk_1E86F8028;
    v4 = &__block_literal_global_2784;
    v5 = &__block_literal_global_2793;
    [SACallTreeFrame enumerateTree:a2 block:v3];
  }
}

- (void)addStack:(void *)stack toStream:(uint64_t)stream sampleCount:(void *)count binariesToDisplay:(uint64_t)display primaryState:(int)state primaryMicrostackshotState:(char)microstackshotState onlyHeaviestStack:(char)heaviestStack isKernel:
{
  v15 = objc_autoreleasePoolPush();
  v16 = 1;
  if (([*(self + 16) printHeavyStacks] & 1) == 0 && (microstackshotState & 1) == 0)
  {
    v16 = *(self + 48) ^ 1;
  }

  printJson = [*(self + 16) printJson];
  if ([*(self + 16) displayBlockedReasons])
  {
    displayBlockedReasonsLackingProcessOwners = [*(self + 16) displayBlockedReasonsLackingProcessOwners];
    displayAddressesInBlockedReasons = [*(self + 16) displayAddressesInBlockedReasons];
    v20 = displayBlockedReasonsLackingProcessOwners | 2;
    if (!displayAddressesInBlockedReasons)
    {
      v20 = displayBlockedReasonsLackingProcessOwners;
    }

    v40 = v20;
  }

  else
  {
    v40 = 0;
  }

  showThreadStateAsLeafFrame = [*(self + 16) showThreadStateAsLeafFrame];
  v38 = [*(self + 16) callTreeTimestampsTimeDomain] != 0;
  displayOnBehalfOfInCallTrees = [*(self + 16) displayOnBehalfOfInCallTrees];
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v103 = 1;
  if (printJson)
  {
    [stack appendString:{@", \n\nstack:["}];
  }

  displayCopy = display;
  v36 = a2;
  v22 = log10(stream + 1.0);
  if (heaviestStack)
  {
    countCopy = count;
  }

  else
  {
    v24 = [(SASampleStore *)*(self + 168) lastTaskWithPid:?];
    if (v24)
    {
      countCopy = [(SASamplePrinter *)self binaryImagesHitByTask:v24];
    }

    else
    {
      countCopy = 0;
    }
  }

  if ([*(self + 16) omitFramesBelowSampleCount] < 1)
  {
    omitFramesBelowSampleCount = 0;
  }

  else
  {
    omitFramesBelowSampleCount = [*(self + 16) omitFramesBelowSampleCount];
  }

  if ([*(self + 16) omitFramesBelowPercentOfStackSamples] >= 1)
  {
    omitFramesBelowPercentOfStackSamples = [*(self + 16) omitFramesBelowPercentOfStackSamples];
    if (omitFramesBelowSampleCount <= omitFramesBelowPercentOfStackSamples * stream / 0x64uLL)
    {
      omitFramesBelowSampleCount = omitFramesBelowPercentOfStackSamples * stream / 0x64uLL;
    }
  }

  if ([*(self + 16) omitFramesAfterLineCount] < 1)
  {
    omitFramesAfterLineCount = 0;
  }

  else
  {
    omitFramesAfterLineCount = [*(self + 16) omitFramesAfterLineCount];
  }

  LODWORD(stream) = vcvtpd_u64_f64(v22);
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v101[3] = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v100 = -1;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v94 = 0;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x2020000000;
  v92 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__4;
  v81 = __Block_byref_object_dispose__4;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0x7FFFFFFFFFFFFFFFLL;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0x7FFFFFFFFFFFFFFFLL;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke;
  v43[3] = &unk_1E86F7E30;
  microstackshotStateCopy = microstackshotState;
  v46 = v101;
  v47 = v99;
  v48 = v93;
  v49 = &v95;
  v57 = omitFramesAfterLineCount;
  v58 = omitFramesBelowSampleCount;
  v64 = printJson;
  v50 = v91;
  v51 = v102;
  v43[4] = self;
  v43[5] = stack;
  v65 = v16 & 1;
  v52 = &v69;
  v53 = &v83;
  streamCopy = stream;
  v54 = &v73;
  v55 = &v87;
  v56 = &v77;
  v28 = countCopy;
  v44 = v28;
  countCopy2 = count;
  v66 = showThreadStateAsLeafFrame;
  v67 = displayOnBehalfOfInCallTrees;
  stateCopy = state;
  v59 = displayCopy;
  v60 = v40;
  v68 = v38;
  [SACallTreeFrame enumerateTree:v36 block:v43];
  v29 = v96[3];
  if (v29)
  {
    free(v29);
    v96[3] = 0;
  }

  if (printJson)
  {
    v30 = @"]\n";
LABEL_30:
    [stack appendString:v30];
    goto LABEL_39;
  }

  v31 = v70[3];
  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_39;
  }

  if (v16)
  {
    v32 = v74[3];
    v33 = v78[5];
    _saos_printf_indent_and_kernel_dot(stack, *(v84 + 6), *(v88 + 24), 0);
    [stack printWithFormat:@"%-*lu  ", stream, v31 - v32 + 1];
    [stack appendString:v33];
    v30 = @"\n";
    goto LABEL_30;
  }

  if (*(self + 48) == 1)
  {
    forceOneBasedTimeIndexes = [*(self + 16) forceOneBasedTimeIndexes];
    v35 = v31 + 1;
    if (forceOneBasedTimeIndexes)
    {
      v35 -= *(self + 56);
    }
  }

  else
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  saos_printf_timeline_frame(stack, *(v84 + 6), stream, v70[3] - v74[3] + 1, *(v88 + 24), v78[5], v35);
LABEL_39:

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(v91, 8);
  _Block_object_dispose(v93, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(v99, 8);
  _Block_object_dispose(v101, 8);

  _Block_object_dispose(v102, 8);
  objc_autoreleasePoolPop(v15);
}

- (void)printBinaryImagesForTask:(uint64_t)task
{
  v13 = [(SASamplePrinter *)task binaryImagesHitByTask:a2];
  mainBinaryLoadInfo = [a2 mainBinaryLoadInfo];
  v5 = mainBinaryLoadInfo;
  if (mainBinaryLoadInfo)
  {
    if ([mainBinaryLoadInfo loadAddress])
    {
      binary = [v5 binary];
      v7 = [v13 objectForKeyedSubscript:binary];
      v8 = [v7 count];

      if (!v8)
      {
        v9 = [SASamplePrinter displayedBinaryLoadInfoForLoadInfo:task offsetIntoLoadInfo:v5 binariesToDisplay:0 extraBinariesToDisplay:v13];
      }
    }
  }

  if ([v13 count])
  {
    v10 = [(SASamplePrinter *)task sortedLoadInfosForBinaryImages:v13];
    if ([v10 count])
    {
      printJson = [*(task + 16) printJson];
      v12 = *(task + 8);
      if (printJson)
      {
        [v12 appendString:{@", binaryImages:"}];
      }

      else
      {
        [v12 printWithFormat:@"\n%*sBinary Images:\n", 2, ""];
      }

      [(SASamplePrinter *)task printLoadInfos:v10];
    }
  }
}

- (void)printHIDEvent:(uint64_t)event
{
  v76 = *MEMORY[0x1E69E9840];
  options = [event options];
  printJson = [options printJson];

  if (printJson)
  {
    v63 = *__error();
    v64 = _sa_logt();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v64, OS_LOG_TYPE_ERROR, "printHIDEvent doesn't support json output", buf, 2u);
    }

    *__error() = v63;
    _SASetCrashLogMessage(13617, "printHIDEvent doesn't support json output");
    _os_crash();
    __break(1u);
  }

  hidEventTimestamp = [a2 hidEventTimestamp];
  v7 = *(event + 8);
  hidEventTypeString = [a2 hidEventTypeString];
  [v7 printWithFormat:@"HID event %@", hidEventTypeString];

  if (*(event + 48) == 1)
  {
    v9 = *(event + 8);
    v10 = [(SASamplePrinter *)event timeIndexDescriptionForTimestamp:hidEventTimestamp];
    [v9 printWithFormat:@" started %@\n", v10];

    goto LABEL_19;
  }

  [hidEventTimestamp machAbsTimeSeconds];
  v11 = 0.0;
  if (v12 == 0.0 || ([*(event + 32) machAbsTimeSeconds], v13 == 0.0))
  {
    v17 = 0;
  }

  else
  {
    [hidEventTimestamp machAbsTimeSeconds];
    v15 = v14;
    [*(event + 32) machAbsTimeSeconds];
    v11 = v15 - v16;
    v17 = 1;
  }

  [hidEventTimestamp machContTimeSeconds];
  if (v18 != 0.0)
  {
    [*(event + 32) machContTimeSeconds];
    if (v19 != 0.0)
    {
      [hidEventTimestamp machContTimeSeconds];
      v21 = v20;
      [*(event + 32) machContTimeSeconds];
      v11 = v21 - v22;
      v17 = 1;
    }
  }

  [hidEventTimestamp wallTime];
  if (v23 == 0.0 || ([*(event + 32) wallTime], v24 == 0.0))
  {
    if (!v17)
    {
      [*(event + 8) printWithFormat:@"\n", v65];
      goto LABEL_19;
    }
  }

  else
  {
    [hidEventTimestamp wallTime];
    v26 = v25;
    [*(event + 32) wallTime];
    v11 = v26 - v27;
  }

  v28 = *(event + 8);
  if (v11 >= 0.0)
  {
    [v28 printWithFormat:@" started %.1f seconds after start of sampling\n", *&v11];
  }

  else
  {
    [v28 printWithFormat:@" started %.1f seconds before sampling\n", -v11];
  }

LABEL_19:
  [*(event + 8) printWithFormat:@"%-48s %-11s %11s  %s\n", "Event", "Time Index", "Delay", "Process/Thread"];
  v29 = *(event + 8);
  v30 = [(SASamplePrinter *)event displayNameForPid:0 threadId:*(event + 32) timestamp:?];
  [v29 printWithFormat:@"%-48s %-11s %11s  %s\n", "handleReport", "No samples", "N/A", objc_msgSend(v30, "UTF8String")];

  timestamp = hidEventTimestamp;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [a2 steps];
  v66 = timestamp;
  v69 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v69)
  {
    v68 = *v71;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        v33 = timestamp;
        if (*v71 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v70 + 1) + 8 * i);
        timestamp = [v34 timestamp];
        debugidString = [v34 debugidString];
        [timestamp machAbsTimeSeconds];
        v37 = v36;
        [v33 machAbsTimeSeconds];
        v39 = (v37 - v38) * 1000.0;
        if (v39 != 0.0)
        {
          v40 = -v39;
          if (v39 >= 0.0)
          {
            v40 = v39;
          }

          v41 = log10(v40);
          v42 = __exp10((2 - vcvtpd_s64_f64(v41)));
          v39 = round(v39 * v42) / v42;
        }

        v43 = &stru_1F5BBF440;
        if (*(event + 48) == 1)
        {
          v44 = [*(event + 168) indexOfFirstSampleOnOrAfterTimestamp:v33];
          v45 = [*(event + 168) indexOfLastSampleOnOrBeforeTimestamp:timestamp];
          v46 = 0x7FFFFFFFFFFFFFFFLL;
          if (v44 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v47 = *(event + 56);
            v48 = *(event + 64);
            if (v47 <= v44)
            {
              v49 = v44;
            }

            else
            {
              v49 = *(event + 56);
            }

            if (v47 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v50 = v44;
            }

            else
            {
              v50 = v49;
            }

            if (v48 >= v50)
            {
              v51 = v50;
            }

            else
            {
              v51 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v48 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v46 = v50;
            }

            else
            {
              v46 = v51;
            }
          }

          v43 = @"No samples";
          if (v45 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v53 = *(event + 56);
            v52 = *(event + 64);
            v54 = v52 >= v45 ? v45 : *(event + 64);
            v55 = v52 == 0x7FFFFFFFFFFFFFFFLL ? v45 : v54;
            v56 = v53 <= v55 ? v55 : 0x7FFFFFFFFFFFFFFFLL;
            v57 = v53 == 0x7FFFFFFFFFFFFFFFLL ? v55 : v56;
            if (v46 != 0x7FFFFFFFFFFFFFFFLL && v57 != 0x7FFFFFFFFFFFFFFFLL && v46 <= v57)
            {
              v43 = [(SASamplePrinter *)event timeIndexDescriptionForStartSampleIndex:v46 endSampleIndex:v57 formattedToLength:11];
            }
          }
        }

        v59 = [v34 pid];
        v60 = [v34 tid];
        timestamp2 = [v34 timestamp];
        v62 = [(SASamplePrinter *)event displayNameForPid:v59 threadId:v60 timestamp:timestamp2];

        [*(event + 8) printWithFormat:@"%-48s %-11s %9.3fms  %@\n", objc_msgSend(debugidString, "UTF8String"), -[__CFString UTF8String](v43, "UTF8String"), *&v39, v62];
      }

      v69 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v69);
  }
}

- (void)printLoadInfos:(id *)infos
{
  v126 = *MEMORY[0x1E69E9840];
  if (![infos[2] printJson])
  {
    if ([infos[2] tabDelineateBinaryImageSections])
    {
      v97 = 0;
      v98 = 0;
      v99 = 0;
      goto LABEL_60;
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v93 = a2;
    obj = a2;
    v102 = [obj countByEnumeratingWithState:&v112 objects:v125 count:16];
    if (!v102)
    {
      v97 = 0;
      v98 = 0;
      v99 = 0;
      goto LABEL_59;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = *v113;
    v5 = 1;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v113 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v112 + 1) + 8 * v6);
        binary = [v7 binary];
        bundleIdentifier = [binary bundleIdentifier];
        v10 = bundleIdentifier;
        if (bundleIdentifier)
        {
          name = bundleIdentifier;
        }

        else
        {
          name = [binary name];
        }

        if (([infos[2] displayBinaryImagesLackingNameOrPath] & 1) == 0 && !name)
        {
          if (((v5 | [infos[2] displayBinaryImageAddresses]) & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_21:
          v104 = name;
          v13 = [@"???" length];
          goto LABEL_22;
        }

        if (!name)
        {
          goto LABEL_21;
        }

        v104 = name;
        v12 = SACopySanitizedString(name, 1, 0);
        v13 = [v12 length];

LABEL_22:
        bundleVersion = [binary bundleVersion];
        bundleShortVersion = [binary bundleShortVersion];
        binaryVersion = [binary binaryVersion];
        v106 = binaryVersion;
        if (bundleShortVersion || bundleVersion || binaryVersion)
        {
          ++v13;
          if (bundleShortVersion)
          {
            v17 = bundleVersion | binaryVersion;
            v18 = SACopySanitizedString(bundleShortVersion, 1, 0);
            v19 = [v18 length];

            if (v17)
            {
              v20 = v13 + 1;
            }

            else
            {
              v20 = v13;
            }

            v13 = v20 + v19;
            if (!v17)
            {
              goto LABEL_34;
            }

LABEL_30:
            if (bundleVersion)
            {
              v21 = bundleVersion;
            }

            else
            {
              v21 = v106;
            }

            v22 = SACopySanitizedString(v21, 1, 0);
            v13 += [v22 length] + 2;

            goto LABEL_34;
          }

          if (bundleVersion | binaryVersion)
          {
            goto LABEL_30;
          }
        }

LABEL_34:
        if (v99 <= v13)
        {
          v23 = v13;
        }

        else
        {
          v23 = v99;
        }

        v99 = v23;
        exclave = [v7 exclave];
        v25 = exclave;
        if (exclave)
        {
          name2 = [exclave name];

          if (name2)
          {
            name3 = [v25 name];
            v28 = [name3 length] + 9;
          }

          else
          {
            v28 = 27;
          }

          if (v98 <= v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v98;
          }

          v98 = v29;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 isZerothAndOnlySegment] & 1) == 0)
        {
          segment = [v7 segment];
          name4 = [segment name];
          v32 = [name4 length];

          if (v97 <= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v97;
          }

          v97 = v33;
        }

        name = v104;
LABEL_52:

        v5 = 0;
        ++v6;
      }

      while (v102 != v6);
      v34 = [obj countByEnumeratingWithState:&v112 objects:v125 count:16];
      v5 = 0;
      v102 = v34;
      if (!v34)
      {
LABEL_59:

        a2 = v93;
LABEL_60:
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v92 = a2;
        obja = [v92 countByEnumeratingWithState:&v108 objects:v124 count:16];
        if (!obja)
        {
          goto LABEL_164;
        }

        v94 = *v109;
        v35 = 1;
        while (2)
        {
          v36 = 0;
LABEL_63:
          if (*v109 != v94)
          {
            objc_enumerationMutation(v92);
          }

          v37 = *(*(&v108 + 1) + 8 * v36);
          binary2 = [v37 binary];
          segment2 = [v37 segment];
          exclave2 = [v37 exclave];
          bundleIdentifier2 = [binary2 bundleIdentifier];
          v42 = bundleIdentifier2;
          if (bundleIdentifier2)
          {
            name5 = bundleIdentifier2;
          }

          else
          {
            name5 = [binary2 name];
          }

          if (([infos[2] displayBinaryImagesLackingNameOrPath] & 1) == 0 && !name5 && ((v35 | objc_msgSend(infos[2], "displayBinaryImageAddresses")) & 1) == 0)
          {
            goto LABEL_158;
          }

          v107 = name5;
          memset(v122, 0, sizeof(v122));
          if ([v37 isInKernelAddressSpace])
          {
            LOWORD(v122[0]) = 42;
            v44 = v122 + 1;
            v45 = 1;
          }

          else
          {
            v45 = 0;
            v44 = v122;
          }

          v105 = segment2;
          if ([infos[2] displayBinaryImageAddresses])
          {
            if ([v37 loadAddress])
            {
              v46 = v45 + __snprintf_chk(v44, 64 - v45, 0, 0x40uLL, "0x%llx", [v37 loadAddress]);
              if (v46 >= 64)
              {
                v86 = *__error();
                v87 = _sa_logt();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v117 = v46;
                  v118 = 2080;
                  v119 = v122;
                  _os_log_error_impl(&dword_1E0E2F000, v87, OS_LOG_TYPE_ERROR, "ran off end of adornment  (%ld): '%s'", buf, 0x16u);
                }

                *__error() = v86;
                _SASetCrashLogMessage(8871, "ran off end of adornment  (%ld): '%s'", v46, v122);
                _os_crash();
                __break(1u);
LABEL_168:
                v89 = *__error();
                v90 = _sa_logt();
                if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v117 = v46;
                  v118 = 2080;
                  v119 = v122;
                  _os_log_error_impl(&dword_1E0E2F000, v90, OS_LOG_TYPE_ERROR, "ran off end of adornment  (%ld): '%s'", buf, 0x16u);
                }

                *__error() = v89;
                _SASetCrashLogMessage(8874, "ran off end of adornment  (%ld): '%s'", v46, v122);
                _os_crash();
                __break(1u);
              }
            }

            else
            {
              v46 = v45 + __snprintf_chk(v44, &v123 - v44, 0, 0x40uLL, "%s", "???");
              if (v46 >= 64)
              {
                goto LABEL_168;
              }
            }

            [infos[1] printWithFormat:@"%*s", 22, v122];
            if (segment2)
            {
              v50 = [segment2 length];
              v47 = v107;
              if (!v50)
              {
LABEL_85:
                v50 = [binary2 length];
                if (!v50)
                {
                  goto LABEL_101;
                }
              }

LABEL_95:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || [v37 highestOffset] < v50)
              {
                [infos[1] printWithFormat:@" - %#18llx", v50 + objc_msgSend(v37, "loadAddress") - 1];
                goto LABEL_102;
              }

              v54 = *__error();
              v55 = _sa_logt();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                v82 = [v37 debugDescription];
                uTF8String = [v82 UTF8String];
                highestOffset = [v37 highestOffset];
                *buf = 136315650;
                v117 = uTF8String;
                v118 = 2048;
                v119 = v50;
                v120 = 2048;
                v121 = highestOffset;
                _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "load info %s length 0x%llx has a hit at 0x%llx", buf, 0x20u);

                v47 = v107;
              }

              *__error() = v54;
              segment2 = v105;
            }

            else
            {
              v47 = v107;
              if ([binary2 length])
              {
                goto LABEL_85;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                highestOffset2 = [v37 highestOffset];
              }

              else
              {
                highestOffset2 = 0;
              }

              v52 = [(SABinary *)binary2 segmentAtOffsetIntoBinary:?];
              v53 = v52;
              if (v52 && [v52 hasOffsetIntoBinary] && !objc_msgSend(v53, "offsetIntoBinary") && objc_msgSend(v53, "length") && highestOffset2 < objc_msgSend(v53, "length"))
              {
                v50 = [v53 length];
              }

              else
              {
                v50 = 0;
              }

              if (v50)
              {
                goto LABEL_95;
              }
            }

LABEL_101:
            [infos[1] printWithFormat:@" - %18s", "???"];
LABEL_102:
            if ([infos[2] tabDelineateBinaryImageSections])
            {
              v56 = @"\t";
            }

            else
            {
              v56 = @"  ";
            }

            [infos[1] appendString:v56];
            if (!v47)
            {
LABEL_106:
              v49 = [@"???" mutableCopy];
LABEL_107:
              v103 = exclave2;
              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [v49 appendString:@"\t"];
              }

              bundleVersion2 = [binary2 bundleVersion];
              bundleShortVersion2 = [binary2 bundleShortVersion];
              binaryVersion2 = [binary2 binaryVersion];
              v60 = binaryVersion2;
              v101 = binaryVersion2;
              if (bundleShortVersion2 || bundleVersion2 || binaryVersion2)
              {
                if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0)
                {
                  [v49 appendString:@" "];
                }

                if (bundleShortVersion2)
                {
                  v61 = bundleVersion2 | v60;
                  v62 = SACopySanitizedString(bundleShortVersion2, 1, 0);
                  [v49 appendFormat:@"%@", v62];

                  v60 = v101;
                  if (v61)
                  {
                    [v49 appendString:@" "];
                    goto LABEL_118;
                  }
                }

                else if (bundleVersion2 | v60)
                {
LABEL_118:
                  if (bundleVersion2)
                  {
                    v63 = bundleVersion2;
                  }

                  else
                  {
                    v63 = v60;
                  }

                  v64 = SACopySanitizedString(v63, 1, 0);
                  [v49 appendFormat:@"(%@)", v64];
                }
              }

              [infos[1] printWithFormat:@"%-*s", v99, objc_msgSend(v49, "UTF8String")];
              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [infos[1] appendString:@"\t"];
              }

              if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0 && v98 >= 1)
              {
                v65 = infos[1];
                if (v103)
                {
                  name6 = [v103 name];
                  if (name6)
                  {
                    name7 = [v103 name];
                  }

                  else
                  {
                    name7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%#18llx", objc_msgSend(v103, "identifier")];
                  }

                  v68 = name7;
                  [v65 printWithFormat:@" exclave %-*s", (v98 - 9), objc_msgSend(name7, "UTF8String")];

                  segment2 = v105;
                }

                else
                {
                  [v65 printWithFormat:@"%-*s", v98, ""];
                }
              }

              uuid = [binary2 uuid];

              if (uuid)
              {
                if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0)
                {
                  [infos[1] appendString:@" "];
                }

                v70 = infos[1];
                uuid2 = [binary2 uuid];
                uUIDString = [uuid2 UUIDString];
                [v70 printWithFormat:@"<%@>", uUIDString];

                segment2 = v105;
              }

              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [infos[1] appendString:@"\t"];
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                isZerothAndOnlySegment = [v37 isZerothAndOnlySegment];
              }

              else
              {
                isZerothAndOnlySegment = 0;
              }

              if ([infos[2] tabDelineateBinaryImageSections])
              {
                if (!((segment2 == 0) | isZerothAndOnlySegment & 1))
                {
                  v74 = infos[1];
                  name8 = [segment2 name];
                  [v74 printWithFormat:@"%s", objc_msgSend(name8, "UTF8String"), v91];
                  goto LABEL_148;
                }
              }

              else if (v97 >= 1)
              {
                v76 = (segment2 == 0) | isZerothAndOnlySegment;
                v77 = infos[1];
                if (v76)
                {
                  [v77 printWithFormat:@"%-*s", v97, ""];
                }

                else
                {
                  name8 = [segment2 name];
                  [v77 printWithFormat:@"%-*s", v97, objc_msgSend(name8, "UTF8String")];
LABEL_148:
                }
              }

              if ([infos[2] tabDelineateBinaryImageSections])
              {
                [infos[1] appendString:@"\t"];
              }

              path = [binary2 path];
              if (path)
              {
                v79 = path;
                if (([infos[2] tabDelineateBinaryImageSections] & 1) == 0)
                {
                  [infos[1] appendString:@"  "];
                }

                if ([infos[21] sanitizePaths])
                {
                }

                v80 = infos[1];
                v81 = SACopySanitizedString(v79, 1, 0);
                [v80 printWithFormat:@"%@", v81];

                segment2 = v105;
              }

              [infos[1] appendString:@"\n"];

              exclave2 = v103;
              name5 = v107;
LABEL_158:

              v35 = 0;
              if (obja == ++v36)
              {
                v85 = [v92 countByEnumeratingWithState:&v108 objects:v124 count:16];
                v35 = 0;
                obja = v85;
                if (!v85)
                {
LABEL_164:

                  return;
                }

                continue;
              }

              goto LABEL_63;
            }
          }

          else
          {
            [infos[1] printWithFormat:@"%*s", 4, v122];
            v47 = v107;
            if (!v107)
            {
              goto LABEL_106;
            }
          }

          break;
        }

        v48 = SACopySanitizedString(v47, 1, 0);
        v49 = [v48 mutableCopy];

        goto LABEL_107;
      }
    }
  }

  v4 = infos[1];

  SAJSONWriteArray(v4, a2);
}

- (void)avoidOverlapInBinaryLoadInfos:(int)infos onlyExclaves:(void *)exclaves inTask:
{
  v86 = *MEMORY[0x1E69E9840];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = a2;
  v5 = [obj countByEnumeratingWithState:&v63 objects:v85 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69E9AC8];
    v62 = *v64;
    *&v6 = 138414338;
    v41 = v6;
    do
    {
      v11 = 0;
      v59 = v7;
      do
      {
        if (*v64 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v63 + 1) + 8 * v11);
        segment = [v12 segment];
        v14 = [segment length];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          binary = [v12 binary];
          v15 = [binary length];

          v10 = MEMORY[0x1E69E9AC8];
          if (!v15)
          {
            if ([v12 highestOffset])
            {
              highestOffset = [v12 highestOffset];
              if (highestOffset >= 0x10000000)
              {
                v15 = 0x10000000;
              }

              else
              {
                v15 = highestOffset;
              }
            }

            else
            {
              vmPageSize = [*(self + 168) vmPageSize];
              if (vmPageSize)
              {
                v15 = vmPageSize;
              }

              else
              {
                v15 = *v10;
              }
            }
          }
        }

        vmPageSize2 = [*(self + 168) vmPageSize];
        v20 = vmPageSize2;
        if (!vmPageSize2)
        {
          v20 = *v10;
        }

        if (v15 % v20)
        {
          vmPageSize3 = [*(self + 168) vmPageSize];
          if (vmPageSize3)
          {
            v22 = vmPageSize3;
          }

          else
          {
            v22 = *v10;
          }

          vmPageSize4 = [*(self + 168) vmPageSize];
          v24 = vmPageSize4;
          if (!vmPageSize4)
          {
            v24 = *v10;
          }

          v15 = v22 + v15 / v24 * v24;
        }

        v25 = [v12 loadAddress] + v15;
        if ([v12 loadAddress] < v9)
        {
          if (infos && ([v12 exclave], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
          {
            exclave = [v8 exclave];

            if (exclave)
            {
              v31 = *__error();
              v32 = _sa_logt();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v58 = [exclaves debugDescription];
                binary2 = [v8 binary];
                name = [binary2 name];
                binary3 = [v8 binary];
                uuid = [binary3 uuid];
                loadAddress = [v8 loadAddress];
                binary4 = [v12 binary];
                name2 = [binary4 name];
                binary5 = [v12 binary];
                uuid2 = [binary5 uuid];
                loadAddress2 = [v12 loadAddress];
                *buf = v41;
                v68 = v58;
                v69 = 2112;
                v70 = name;
                v71 = 2112;
                v72 = uuid;
                v73 = 2048;
                v74 = loadAddress;
                v75 = 2048;
                v76 = v25;
                v77 = 2112;
                v78 = name2;
                v79 = 2112;
                v80 = uuid2;
                v81 = 2048;
                v82 = loadAddress2;
                v83 = 2048;
                v84 = v25;
                _os_log_debug_impl(&dword_1E0E2F000, v32, OS_LOG_TYPE_DEBUG, "%@: adjusted load address of %@ <%@> from 0x%llx to 0x%llx to avoid overlapping with %@ <%@> 0x%llx - 0x%llx", buf, 0x5Cu);

                v7 = v59;
              }

              *__error() = v31;
              loadAddress3 = [v8 loadAddress];
              if (v8)
              {
                v8[3] = v25;
              }

              v9 = v25 + v9 - loadAddress3;
              v10 = MEMORY[0x1E69E9AC8];
            }
          }

          else
          {
            v27 = *__error();
            v28 = _sa_logt();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v57 = [exclaves debugDescription];
              binary6 = [v12 binary];
              name3 = [binary6 name];
              binary7 = [v12 binary];
              uuid3 = [binary7 uuid];
              loadAddress4 = [v12 loadAddress];
              binary8 = [v8 binary];
              name4 = [binary8 name];
              binary9 = [v8 binary];
              uuid4 = [binary9 uuid];
              loadAddress5 = [v8 loadAddress];
              *buf = v41;
              v68 = v57;
              v69 = 2112;
              v70 = name3;
              v71 = 2112;
              v72 = uuid3;
              v73 = 2048;
              v74 = loadAddress4;
              v75 = 2048;
              v76 = v9;
              v77 = 2112;
              v78 = name4;
              v79 = 2112;
              v80 = uuid4;
              v81 = 2048;
              v82 = loadAddress5;
              v83 = 2048;
              v84 = v9;
              _os_log_debug_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_DEBUG, "%@: adjusted load address of %@ <%@> from 0x%llx to 0x%llx to avoid overlapping with %@ <%@> 0x%llx - 0x%llx", buf, 0x5Cu);

              v10 = MEMORY[0x1E69E9AC8];
            }

            *__error() = v27;
            if (v12)
            {
              v12[3] = v9;
            }

            v25 = v15 + v9;
            v7 = v59;
          }
        }

        if (v9 < v25)
        {
          v29 = v12;

          v8 = v29;
          v9 = v25;
        }

        ++v11;
      }

      while (v7 != v11);
      v40 = [obj countByEnumeratingWithState:&v63 objects:v85 count:16];
      v7 = v40;
    }

    while (v40);
  }

  else
  {
    v8 = 0;
  }
}

void __29__SASamplePrinter_preprocess__block_invoke_2(uint64_t a1, id *a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 3);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v6 = -[SASamplePrinter displayedBinaryLoadInfoForLoadInfo:offsetIntoLoadInfo:binariesToDisplay:extraBinariesToDisplay:](*(a1 + 32), v7, [a2 address] - objc_msgSend(v7, "loadAddress"), *(a1 + 40));
      WeakRetained = v7;
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

- (id)displayedBinaryLoadInfoForLoadInfo:(uint64_t)info offsetIntoLoadInfo:(void *)loadInfo binariesToDisplay:(unint64_t)display extraBinariesToDisplay:(void *)toDisplay
{
  if (info)
  {
    binary = [loadInfo binary];
    segment = [loadInfo segment];
    loadAddress = [loadInfo loadAddress];
    isInKernelAddressSpace = [loadInfo isInKernelAddressSpace];
    exclave = [loadInfo exclave];
    v12 = [SASamplePrinter displayedBinaryLoadInfoForBinary:binary segment:segment desiredLoadAddress:loadAddress offsetIntoLoadInfo:display isInKernelAddressSpace:isInKernelAddressSpace exclave:exclave binariesToDisplay:toDisplay extraBinariesToDisplay:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __29__SASamplePrinter_preprocess__block_invoke_3(uint64_t a1, id *a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 3);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v6 = -[SASamplePrinter displayedBinaryLoadInfoForLoadInfo:offsetIntoLoadInfo:binariesToDisplay:extraBinariesToDisplay:](*(a1 + 32), v7, [a2 address] - objc_msgSend(v7, "loadAddress"), *(a1 + 40));
      WeakRetained = v7;
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

- (id)sortedLoadInfosForBinaryImages:(uint64_t)images
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__SASamplePrinter_sortedLoadInfosForBinaryImages___block_invoke;
  v12 = &unk_1E86F7A40;
  imagesCopy = images;
  v5 = v4;
  v14 = v5;
  [a2 enumerateKeysAndObjectsUsingBlock:&v9];
  [v5 sortUsingComparator:{&__block_literal_global_1926, v9, v10, v11, v12, imagesCopy}];
  v6 = v14;
  v7 = v5;

  return v5;
}

void __34__SASamplePrinter_preprocessTask___block_invoke(uint64_t a1, id *a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 3);
    if (!WeakRetained)
    {
      goto LABEL_8;
    }

    v15 = WeakRetained;
    v6 = [*(a1 + 32) binaryLoadInfos];
    v7 = [v6 indexOfObjectIdenticalTo:v15];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_7:
      WeakRetained = v15;
LABEL_8:

      goto LABEL_10;
    }

    v8 = -[SASamplePrinter displayedBinaryLoadInfoForLoadInfo:offsetIntoLoadInfo:binariesToDisplay:extraBinariesToDisplay:](*(a1 + 40), v15, [a2 address] - objc_msgSend(v15, "loadAddress"), *(a1 + 48));
    v9 = [*(a1 + 32) mainBinaryLoadInfo];
    if (v9 == v15)
    {
      v10 = [*(a1 + 32) pid];

      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = [v8 loadAddress];
      v12 = [*(a1 + 32) mainBinaryLoadInfo];
      v13 = [v12 loadAddress];

      if (v11 <= v13)
      {
        goto LABEL_6;
      }

      v9 = [*(a1 + 32) mainBinaryLoadInfo];
      v14 = [v9 loadAddress];
      if (v8)
      {
        v8[3] = v14;
      }
    }

LABEL_6:
    goto LABEL_7;
  }

  WeakRetained = 0;

LABEL_10:
}

- (uint64_t)shouldPrintTask:(unint64_t)task thread:(unint64_t)thread dispatchQueue:
{
  v93 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  options = [self options];
  pidsToPrint = [options pidsToPrint];

  options2 = [self options];
  uniquePidsToPrint = [options2 uniquePidsToPrint];

  options3 = [self options];
  processNamesToPrint = [options3 processNamesToPrint];

  options4 = [self options];
  processUUIDsToPrint = [options4 processUUIDsToPrint];

  options5 = [self options];
  tidsToPrint = [options5 tidsToPrint];

  if (!pidsToPrint && !uniquePidsToPrint && !tidsToPrint && !processNamesToPrint && !processUUIDsToPrint)
  {
    options6 = [self options];
    printTargetThreadOnly = [options6 printTargetThreadOnly];

    if (!printTargetThreadOnly)
    {
      goto LABEL_100;
    }
  }

  targetProcess = [*(self + 168) targetProcess];

  if (targetProcess != a2)
  {
    goto LABEL_9;
  }

  if (!(task | thread))
  {
    goto LABEL_100;
  }

  options7 = [self options];
  printTargetThreadOnly2 = [options7 printTargetThreadOnly];

  if (!printTargetThreadOnly2)
  {
    goto LABEL_100;
  }

  if ([*(self + 168) targetThreadId] && objc_msgSend(*(self + 168), "targetDispatchQueueId"))
  {
    if (!task)
    {
      goto LABEL_9;
    }

    if (!thread)
    {
      goto LABEL_9;
    }

    threadId = [task threadId];
    if (threadId != [*(self + 168) targetThreadId])
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ([*(self + 168) targetThreadId])
    {
      if (!task)
      {
        goto LABEL_9;
      }

      threadId2 = [task threadId];
      targetThreadId = [*(self + 168) targetThreadId];
      goto LABEL_46;
    }

    if (![*(self + 168) targetDispatchQueueId])
    {
      if ([task isMainThread])
      {
        goto LABEL_100;
      }

      goto LABEL_9;
    }

    if (!thread)
    {
      goto LABEL_9;
    }
  }

  threadId2 = [thread identifier];
  targetThreadId = [*(self + 168) targetDispatchQueueId];
LABEL_46:
  if (threadId2 == targetThreadId)
  {
    goto LABEL_100;
  }

LABEL_9:
  targetProcesses = [*(self + 168) targetProcesses];
  v21 = [targetProcesses containsObject:a2];

  if (v21)
  {
    goto LABEL_100;
  }

  if (pidsToPrint)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "pid")}];
    v23 = [pidsToPrint containsObject:v22];

    if (v23)
    {
      goto LABEL_100;
    }
  }

  if (uniquePidsToPrint)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "uniquePid")}];
    v25 = [uniquePidsToPrint containsObject:v24];

    if (v25)
    {
      goto LABEL_100;
    }
  }

  if (processNamesToPrint)
  {
    name = [a2 name];
    if (name && ([processNamesToPrint containsObject:name] & 1) != 0 || !objc_msgSend(a2, "pid") && (objc_msgSend(processNamesToPrint, "containsObject:", @"kernel_task") & 1) != 0)
    {
      goto LABEL_23;
    }
  }

  if (processUUIDsToPrint)
  {
    mainBinary = [a2 mainBinary];
    name = [mainBinary uuid];

    if (name && [processUUIDsToPrint containsObject:name])
    {
LABEL_23:

      goto LABEL_100;
    }
  }

  options8 = [self options];
  printProblematicProcessesAndThreads = [options8 printProblematicProcessesAndThreads];

  if (!printProblematicProcessesAndThreads)
  {
    goto LABEL_58;
  }

  v35 = [a2 lastTaskStateOnOrBeforeTime:*(self + 40) sampleIndex:*(self + 64)];
  v67 = v35;
  v36 = v35;
  if (!v35 || ([v35 wqExceededTotalThreadLimit] & 1) == 0 && (objc_msgSend(v36, "wqExceededConstrainedThreadLimit") & 1) == 0)
  {
    if (!task)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = [a2 threads];
      v69 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      if (!v69)
      {
        goto LABEL_56;
      }

      v68 = *v87;
LABEL_50:
      v40 = 0;
      while (1)
      {
        if (*v87 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v41 = [*(self + 152) objectForKeyedSubscript:*(*(&v86 + 1) + 8 * v40)];
        isPartOfADeadlock = [v41 isPartOfADeadlock];

        if (isPartOfADeadlock)
        {
          break;
        }

        if (v69 == ++v40)
        {
          v69 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
          if (!v69)
          {
LABEL_56:

            goto LABEL_57;
          }

          goto LABEL_50;
        }
      }

      v36 = v67;
      goto LABEL_99;
    }

    v37 = *(self + 152);
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(task, "threadId")}];
    v39 = [v37 objectForKeyedSubscript:v38];
    LOBYTE(v37) = [v39 isPartOfADeadlock];

    v36 = v67;
    if ((v37 & 1) == 0)
    {
LABEL_57:
      v82 = 0;
      v83 = &v82;
      v84 = 0x2020000000;
      v85 = 0;
      v43 = *(self + 32);
      v44 = *(self + 40);
      v45 = *(self + 56);
      v46 = *(self + 64);
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __56__SASamplePrinter_shouldPrintTask_thread_dispatchQueue___block_invoke;
      v81[3] = &unk_1E86F76D8;
      v81[4] = &v82;
      [a2 enumerateTaskStatesBetweenStartTime:v43 startSampleIndex:v45 endTime:v44 endSampleIndex:v46 reverseOrder:0 block:v81];
      v47 = *(v83 + 24);
      _Block_object_dispose(&v82, 8);

      if (v47)
      {
        goto LABEL_100;
      }

LABEL_58:
      if (!tidsToPrint)
      {
        goto LABEL_71;
      }

      if (task)
      {
        v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(task, "threadId")}];
        v49 = [tidsToPrint containsObject:v48];

        if ((v49 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_100;
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      threads = [a2 threads];
      v50 = [threads countByEnumeratingWithState:&v77 objects:v91 count:16];
      if (!v50)
      {
        goto LABEL_70;
      }

      v51 = *v78;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v78 != v51)
          {
            objc_enumerationMutation(threads);
          }

          if ([tidsToPrint containsObject:*(*(&v77 + 1) + 8 * i)])
          {

            goto LABEL_100;
          }
        }

        v50 = [threads countByEnumeratingWithState:&v77 objects:v91 count:16];
      }

      while (v50);
LABEL_70:

LABEL_71:
      options9 = [self options];
      if (![options9 printTargetThreadOnly])
      {

LABEL_93:
        v64 = 0;
        goto LABEL_101;
      }

      v54 = [*(self + 128) count] == 0;

      if (v54)
      {
        goto LABEL_93;
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = *(self + 128);
      v56 = [v71 countByEnumeratingWithState:&v73 objects:v90 count:16];
      if (!v56)
      {
        goto LABEL_91;
      }

      v57 = *v74;
LABEL_75:
      v58 = 0;
      while (1)
      {
        if (*v74 != v57)
        {
          objc_enumerationMutation(v71);
        }

        v59 = *(*(&v73 + 1) + 8 * v58);
        if (task)
        {
          if (v59)
          {
            if (v59[2])
            {
              threadId3 = [task threadId];
              v61 = v59[2];
              if (threadId3 == v61)
              {
                goto LABEL_97;
              }

              if (v61)
              {
                goto LABEL_87;
              }
            }

LABEL_85:
            Property = objc_getProperty(v59, v55, 8, 1);
            goto LABEL_86;
          }
        }

        else if (v59)
        {
          goto LABEL_85;
        }

        Property = 0;
LABEL_86:
        if (Property == a2)
        {
LABEL_97:

          goto LABEL_100;
        }

LABEL_87:
        if (v56 == ++v58)
        {
          v63 = [v71 countByEnumeratingWithState:&v73 objects:v90 count:16];
          v56 = v63;
          if (!v63)
          {
LABEL_91:

            goto LABEL_93;
          }

          goto LABEL_75;
        }
      }
    }
  }

LABEL_99:

LABEL_100:
  v64 = 1;
LABEL_101:

  return v64;
}

void *__56__SASamplePrinter_shouldPrintTask_thread_dispatchQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isRunawayMitigated];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void *__59__SASamplePrinter_highestPriorityInThread_useBasePriority___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    result = [a2 basePriority];
    if (result <= *(*(*(a1 + 32) + 8) + 24))
    {
      return result;
    }

    result = [a2 basePriority];
  }

  else
  {
    result = [a2 scheduledPriority];
    if (result <= *(*(*(a1 + 32) + 8) + 24))
    {
      return result;
    }

    result = [a2 scheduledPriority];
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (uint64_t)highestPriorityInTask:(char)task useBasePriority:
{
  if (!self)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  threads = [a2 threads];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__SASamplePrinter_highestPriorityInTask_useBasePriority___block_invoke;
  v8[3] = &unk_1E86F7728;
  taskCopy = task;
  v8[4] = self;
  v8[5] = &v10;
  [threads enumerateKeysAndObjectsUsingBlock:v8];

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __57__SASamplePrinter_highestPriorityInTask_useBasePriority___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 48);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = v4[4];
    v6 = v4[5];
    v8 = v4[7];
    v9 = v4[8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__SASamplePrinter_highestPriorityInThread_useBasePriority___block_invoke;
    v12[3] = &unk_1E86F7700;
    v13 = v5;
    v12[4] = &v14;
    [a3 enumerateThreadStatesBetweenStartTime:v7 startSampleIndex:v8 endTime:v6 endSampleIndex:v9 reverseOrder:0 block:v12];
    v10 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a1 + 40) + 8);
  if (v10 > *(v11 + 24))
  {
    *(v11 + 24) = v10;
  }
}

- (uint64_t)largestFootprintInTask:(void *)task
{
  if (!task)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = task[4];
  v3 = task[5];
  v4 = task[7];
  v5 = task[8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SASamplePrinter_largestFootprintInTask___block_invoke;
  v8[3] = &unk_1E86F76D8;
  v8[4] = &v9;
  [a2 enumerateTaskStatesBetweenStartTime:v2 startSampleIndex:v4 endTime:v3 endSampleIndex:v5 reverseOrder:0 block:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void *__42__SASamplePrinter_largestFootprintInTask___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 taskSizeInBytes];
  if (result > *(*(*(a1 + 32) + 8) + 24))
  {
    result = [a2 taskSizeInBytes];
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) uniquePid];
  if (v2 < [*(a1 + 40) uniquePid])
  {
    return -1;
  }

  v4 = [*(a1 + 32) uniquePid];
  if (v4 > [*(a1 + 40) uniquePid])
  {
    return 1;
  }

  v5 = [*(a1 + 32) pid];
  if (v5 < [*(a1 + 40) pid])
  {
    return -1;
  }

  v6 = [*(a1 + 32) pid];
  return v6 > [*(a1 + 40) pid];
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) startTimestamp];
  v3 = [*(a1 + 40) startTimestamp];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v2)
    {
      v6 = -1;
    }

    else
    {
      v6 = v3 != 0;
    }
  }

  else
  {
    v6 = [v2 compare:v3];
  }

  return v6;
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 48) == 1)
  {
    v3 = [*(a1 + 40) sampleCountInSampleIndexRangeStart:*(v2 + 56) end:*(v2 + 64)];
    v4 = [*(a1 + 48) sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)];
  }

  else
  {
    v3 = [*(a1 + 40) sampleCountInTimestampRangeStart:*(v2 + 32) end:*(v2 + 40)];
    v4 = [*(a1 + 48) sampleCountInTimestampRangeStart:*(*(a1 + 32) + 32) end:*(*(a1 + 32) + 40)];
  }

  if (v3 > v4)
  {
    return -1;
  }

  else
  {
    return v3 < v4;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_8(uint64_t a1, char a2)
{
  v4 = [(SASamplePrinter *)*(a1 + 32) highestPriorityInTask:a2 useBasePriority:?];
  v5 = [(SASamplePrinter *)*(a1 + 32) highestPriorityInTask:a2 useBasePriority:?];
  if (v4 <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 < v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_9(uint64_t a1)
{
  v2 = [(SASamplePrinter *)*(a1 + 32) largestFootprintInTask:?];
  v3 = [(SASamplePrinter *)*(a1 + 32) largestFootprintInTask:?];
  if (v2 <= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 < v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t __41__SASamplePrinter_printTasksIndividually__block_invoke_10(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  [*(a1 + 32) cpuTimeNs:&v16 cpuInstructions:&v15 cpuCycles:&v14 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  [*(a1 + 48) cpuTimeNs:&v13 cpuInstructions:&v12 cpuCycles:&v11 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
  if (a2 > 7)
  {
    if (a2 != 8)
    {
      if (a2 == 9)
      {
        v6 = 0.0;
        v7 = 0.0;
        if (v15)
        {
          v7 = v14 / v15;
        }

        if (v12)
        {
          v6 = v11 / v12;
        }

        if (v7 < v6)
        {
          return 1;
        }

        if (v7 <= v6)
        {
          return 0;
        }

        return -1;
      }

      goto LABEL_21;
    }

    v4 = v14;
    v5 = v11;
LABEL_16:
    if (v4 < v5)
    {
      return 1;
    }

    if (v4 <= v5)
    {
      return 0;
    }

    return -1;
  }

  if (a2 == 6)
  {
    v4 = v16;
    v5 = v13;
    goto LABEL_16;
  }

  if (a2 == 7)
  {
    v4 = v15;
    v5 = v12;
    goto LABEL_16;
  }

LABEL_21:
  v9 = *__error();
  v10 = _sa_logt();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v18 = a2;
    _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "invalid sort option 0x%llx", buf, 0xCu);
  }

  *__error() = v9;
  _SASetCrashLogMessage(5934, "invalid sort option 0x%llx", a2);
  result = _os_crash();
  __break(1u);
  return result;
}

void *__41__SASamplePrinter_printTasksIndividually__block_invoke_1480(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if ([*(a1[4] + 16) printJson])
  {
    v4 = *(a1[6] + 8);
    if ((*(v4 + 24) & 1) == 0)
    {
      [*(a1[4] + 8) appendString:{@", "}];
      v4 = *(a1[6] + 8);
    }

    *(v4 + 24) = 0;
    [*(a1[4] + 8) appendString:@"\n\n\n{"];
  }

  if (a1[5] != a2 || ![*(a1[4] + 16) printTargetThreadOnly])
  {
    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = a1[4];
  v6 = *(v5 + 168);
  if (v6 && (*(v6 + 404) & 1) != 0 && *(v5 + 120))
  {
LABEL_13:
    [(SASamplePrinter *)v5 printTask:a2 specialDispatchQueueId:0 specialThreadId:0 omitSpecial:0 omitOther:0];
    goto LABEL_14;
  }

  v7 = [*(v5 + 168) targetDispatchQueueId];
  if (v7)
  {
    v8 = [a2 dispatchQueues];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  v13 = [*(a1[4] + 168) targetThreadId];
  if (v13)
  {
    v14 = [a2 threads];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
    v16 = [v14 objectForKeyedSubscript:v15];
  }

  else
  {
    v16 = 0;
  }

  if (!(v13 | v7))
  {
    v17 = [a2 mainThread];

    v16 = v17;
  }

  if (!(v10 | v16))
  {
    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [a2 debugDescription];
      *buf = 134218498;
      v23 = v7;
      v24 = 2048;
      v25 = v13;
      v26 = 2080;
      v27 = [v20 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "target dispatch queue %llu, thread id 0x%llx, target task %s: no target dispatch queue nor thread", buf, 0x20u);
    }

    *__error() = v18;
    v21 = [a2 debugDescription];
    _SASetCrashLogMessage(6065, "target dispatch queue %llu, thread id 0x%llx, target task %s: no target dispatch queue nor thread", v7, v13, [v21 UTF8String]);

    _os_crash();
    __break(1u);
  }

  -[SASamplePrinter printTask:specialDispatchQueueId:specialThreadId:omitSpecial:omitOther:](a1[4], a2, [v10 identifier], objc_msgSend(v16, "threadId"), 0, 0);

LABEL_14:
  result = [*(a1[4] + 16) printJson];
  if (result)
  {
    v12 = *(a1[4] + 8);

    return [v12 appendString:@"}"];
  }

  return result;
}

- (void)printTask:(uint64_t)task specialDispatchQueueId:(uint64_t)id specialThreadId:(uint64_t)threadId omitSpecial:(uint64_t)special omitOther:
{
  v68 = *MEMORY[0x1E69E9840];
  if (self)
  {
    specialCopy = special;
    threadIdCopy = threadId;
    v12 = objc_autoreleasePoolPush();
    if (threadIdCopy && specialCopy)
    {
      v54 = *__error();
      v55 = _sa_logt();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "Omitting special and other", buf, 2u);
      }

      *__error() = v54;
      _SASetCrashLogMessage(6909, "Omitting special and other");
      _os_crash();
      __break(1u);
    }

    v13 = [(SASamplePrinter *)self printTaskHeaderForTask:a2 specialDispatchQueueId:task specialThreadId:id omitSpecial:threadIdCopy omitOther:specialCopy];
    if (v13 < 0)
    {
      goto LABEL_49;
    }

    v14 = v13;
    if ([*(self + 16) binaryImagesBeforeStacks])
    {
      [(SASamplePrinter *)self printBinaryImagesForTask:a2];
    }

    v15 = *(self + 16);
    if (!v15 || (v16 = *(v15 + 152), v16 != 3) && (v16 || *(v15 + 11) != 1))
    {
      v23 = objc_autoreleasePoolPush();
      v24 = [(SASamplePrinter *)self stacksForTask:a2 taskSampleCount:v14];
      if ([*(self + 16) printJson])
      {
        [*(self + 8) appendString:{@", threads:["}];
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v62 objects:buf count:16];
      if (v26)
      {
        v27 = v26;
        v56 = v23;
        v59 = a2;
        v61 = v12;
        v28 = 0;
        v29 = *v63;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v63 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v62 + 1) + 8 * i);
            if (!v31 || (*(v31 + 8) & 1) == 0)
            {
              printJson = [*(self + 16) printJson];
              v33 = @"\n";
              if (printJson)
              {
                if (v28)
                {
                  [*(self + 8) appendString:{@", "}];
                }

                v33 = @"{";
              }

              [*(self + 8) appendString:v33];
              [(SASamplePrinter *)self printStack:v31 stream:*(self + 8)];
              if ([*(self + 16) printJson])
              {
                [*(self + 8) appendString:@"}"];
              }

              ++v28;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v62 objects:buf count:16];
        }

        while (v27);
        v34 = v28 == 0;
        a2 = v59;
        v12 = v61;
        v23 = v56;
      }

      else
      {
        v34 = 1;
      }

      if ([*(self + 16) printJson])
      {
        [*(self + 8) appendString:@"]\n\n"];
      }

      else if (v34)
      {
        if (*(self + 48) != 1 || ([a2 taskStates], v57 = v23, v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "firstObject"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v12, v38 = objc_msgSend(v36, "endSampleIndex"), objc_msgSend(a2, "taskStates"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "lastObject"), v40 = objc_claimAutoreleasedReturnValue(), v41 = a2, v42 = objc_msgSend(v40, "endSampleIndex"), v40, v39, v36, v35, v23 = v57, v43 = v38 >= v42, v12 = v37, a2 = v41, !v43))
        {
          [*(self + 8) appendString:@"\n"];
          [*(self + 8) printWithFormat:@"%*sNo threads sampled\n", 2, ""];
        }
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_47;
    }

    if (!(id | task))
    {
      *buf = a2;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
      [(SASamplePrinter *)self printSingleStackForTasks:v44 limitToDispatchQueueIds:0 limitToThreadIds:0 intersection:0 sampleCount:v14];

      goto LABEL_47;
    }

    v60 = v12;
    if (specialCopy)
    {
      v17 = objc_alloc(MEMORY[0x1E695DFD8]);
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
      v19 = [v17 initWithObjects:{v18, 0}];

      v20 = objc_alloc(MEMORY[0x1E695DFD8]);
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:task];
      v22 = [v20 initWithObjects:{v21, 0}];
    }

    else
    {
      v45 = objc_alloc(MEMORY[0x1E695DFA8]);
      [a2 threads];
      v47 = v46 = a2;
      allKeys = [v47 allKeys];
      v58 = [v45 initWithArray:allKeys];

      v49 = objc_alloc(MEMORY[0x1E695DFA8]);
      dispatchQueues = [v46 dispatchQueues];
      allKeys2 = [dispatchQueues allKeys];
      v22 = [v49 initWithArray:allKeys2];

      if (!threadIdCopy)
      {
        a2 = v46;
        v12 = v60;
        v19 = v58;
        goto LABEL_46;
      }

      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
      v19 = v58;
      [v58 removeObject:v52];

      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:task];
      [v22 removeObject:v21];
      a2 = v46;
    }

    v12 = v60;
LABEL_46:
    v66 = a2;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    [(SASamplePrinter *)self printSingleStackForTasks:v53 limitToDispatchQueueIds:v22 limitToThreadIds:v19 intersection:specialCopy sampleCount:v14];

LABEL_47:
    if (([*(self + 16) binaryImagesBeforeStacks] & 1) == 0)
    {
      [(SASamplePrinter *)self printBinaryImagesForTask:a2];
    }

LABEL_49:
    objc_autoreleasePoolPop(v12);
  }
}

void __44__SASamplePrinter_printTasksWithAggregation__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != a2 && ([*(a1 + 40) containsObject:a2] & 1) == 0)
  {
    v4 = [a2 threads];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [a2 mainBinary];
      if (v6)
      {
        if ([(SASamplePrinter *)*(a1 + 48) shouldPrintTask:a2 thread:0 dispatchQueue:0])
        {
          if (*(a1 + 64) == 1)
          {
            v7 = [a2 resourceCoalitionID];
            if (v7)
            {
              v8 = [a2 sharedCache];
            }

            else
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 0;
            v7 = 0;
          }

          v14 = [[SATaskAggregationIdentifier alloc] initWithBinary:v6 sharedCache:v8 rcid:v7 isTarget:0];
          v15 = [*(a1 + 56) objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 56) setObject:v15 forKeyedSubscript:v14];
          }

          [v15 addObject:a2];
        }
      }

      else
      {
        v11 = *__error();
        v12 = _sa_logt();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(SASamplePrinter *)*(a1 + 48) displayNameForTask:a2 includePid:1];
          v17 = 138412290;
          v18 = v13;
          _os_log_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEFAULT, "WARNING: No main binary for %@, not including in report", &v17, 0xCu);
        }

        *__error() = v11;
      }
    }

    else
    {
      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = [(SASamplePrinter *)*(a1 + 48) displayNameForTask:a2 includePid:1];
        v17 = 138412290;
        v18 = v16;
        _os_log_debug_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEBUG, "No threads for %@, not including in report", &v17, 0xCu);
      }

      *__error() = v9;
    }
  }
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_1486(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_2;
  v42[3] = &unk_1E86F7750;
  v42[4] = *(a1 + 32);
  v42[5] = a2;
  v42[6] = a3;
  v29 = MEMORY[0x1E12EBE50](v42);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_3;
  v41[3] = &unk_1E86F7778;
  v41[4] = a2;
  v41[5] = a3;
  v27 = MEMORY[0x1E12EBE50](v41);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_4;
  v40[3] = &unk_1E86F7778;
  v40[4] = a2;
  v40[5] = a3;
  v28 = MEMORY[0x1E12EBE50](v40);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_5;
  v39[3] = &unk_1E86F7750;
  v39[4] = *(a1 + 32);
  v39[5] = a2;
  v39[6] = a3;
  v30 = MEMORY[0x1E12EBE50](v39);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_6;
  v38[3] = &unk_1E86F7778;
  v38[4] = a2;
  v38[5] = a3;
  v26 = MEMORY[0x1E12EBE50](v38);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_7;
  v37[3] = &unk_1E86F77A0;
  v6 = *(a1 + 32);
  v37[4] = a2;
  v37[5] = v6;
  v37[6] = a3;
  v7 = MEMORY[0x1E12EBE50](v37);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_8;
  v36[3] = &unk_1E86F7750;
  v8 = *(a1 + 32);
  v36[4] = a2;
  v36[5] = v8;
  v36[6] = a3;
  v25 = MEMORY[0x1E12EBE50](v36);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __44__SASamplePrinter_printTasksWithAggregation__block_invoke_9;
  v35[3] = &unk_1E86F77C8;
  v9 = *(a1 + 32);
  v35[4] = a2;
  v35[5] = v9;
  v35[6] = a3;
  v10 = MEMORY[0x1E12EBE50](v35);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    v24 = v29 + 2;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = [*(*(&v31 + 1) + 8 * v15) unsignedLongLongValue];
      v17 = v16;
      v18 = v16 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 5)
      {
        if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 2)
        {
          if (v18 == 1)
          {
            v20 = v29[2];
            goto LABEL_27;
          }

          if (v18 == 2)
          {
            v20 = v27[2];
            goto LABEL_27;
          }
        }

        else
        {
          switch(v18)
          {
            case 3:
              v19 = v7[2](v7, 1);
              goto LABEL_28;
            case 4:
              v19 = v7[2](v7, 0);
              goto LABEL_28;
            case 5:
              v20 = v25[2];
              goto LABEL_27;
          }
        }
      }

      else
      {
        if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0xA)
        {
          v19 = v10[2](v10);
          goto LABEL_28;
        }

        switch(v18)
        {
          case 10:
            v20 = v26[2];
            goto LABEL_27;
          case 11:
            v20 = v30[2];
LABEL_27:
            v19 = v20();
LABEL_28:
            if (v19)
            {
              if (v17 >= 0)
              {
                v22 = v19;
              }

              else
              {
                v22 = -v19;
              }

              goto LABEL_49;
            }

            break;
          case 12:
            v20 = v28[2];
            goto LABEL_27;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((([*(a1 + 40) containsObject:&unk_1F5BDCB50] & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB68) & 1) != 0 || (v21 = (v30[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCA78) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAD8) & 1) != 0 || (v21 = (v29[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB20) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB38) & 1) != 0 || (v21 = (v28[2])()) == 0) && ((objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCAF0) & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", &unk_1F5BDCB08) & 1) != 0 || (v21 = (v27[2])()) == 0))
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

LABEL_49:

  return v22;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) firstObject];
  v4 = [(SASamplePrinter *)v2 rawNameForTask:v3];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 48) firstObject];
  v7 = [(SASamplePrinter *)v5 rawNameForTask:v6];

  if (![v4 length])
  {

    v4 = 0;
  }

  if ([v7 length])
  {
    v8 = v4 != 0;
    if (v4 && v7)
    {
      v9 = [v4 compare:v7 options:577];
      goto LABEL_11;
    }
  }

  else
  {

    v7 = 0;
    v8 = v4 != 0;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_11:

  return v9;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [*(a1 + 40) firstObject];
  v4 = [v2 uniquePid];
  if (v4 >= [v3 uniquePid])
  {
    v6 = [v2 uniquePid];
    if (v6 > [v3 uniquePid])
    {
      v5 = 1;
      goto LABEL_7;
    }

    v7 = [v2 pid];
    if (v7 >= [v3 pid])
    {
      v8 = [v2 pid];
      v5 = v8 > [v3 pid];
      goto LABEL_7;
    }
  }

  v5 = -1;
LABEL_7:

  return v5;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 startTimestamp];

  v4 = [*(a1 + 40) firstObject];
  v5 = [v4 startTimestamp];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3)
    {
      v7 = -1;
    }

    else
    {
      v7 = v5 != 0;
    }
  }

  else
  {
    v7 = [v3 compare:v5];
  }

  return v7;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_5(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 48) == 1)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v38;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v38 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v37 + 1) + 8 * i) sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)];
        }

        v5 = [v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = *(a1 + 48);
    v20 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v17 = 0;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v17 += [*(*(&v33 + 1) + 8 * j) sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)];
        }

        v21 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v21);
      goto LABEL_38;
    }

LABEL_37:
    v17 = 0;
    goto LABEL_38;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v6 = 0;
    v12 = *v30;
    do
    {
      for (k = 0; k != v11; ++k)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v6 += [*(*(&v29 + 1) + 8 * k) sampleCountInTimestampRangeStart:*(*(a1 + 32) + 32) end:*(*(a1 + 32) + 40)];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v11);
  }

  else
  {
    v6 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = *(a1 + 48);
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v26;
  do
  {
    for (m = 0; m != v16; ++m)
    {
      if (*v26 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v17 += [*(*(&v25 + 1) + 8 * m) sampleCountInTimestampRangeStart:*(*(a1 + 32) + 32) end:{*(*(a1 + 32) + 40), v25}];
    }

    v16 = [v14 countByEnumeratingWithState:&v25 objects:v41 count:16];
  }

  while (v16);
LABEL_38:

  if (v6 > v17)
  {
    return -1;
  }

  else
  {
    return v6 < v17;
  }
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [*(a1 + 40) firstObject];
  if ([v2 uniquePid])
  {
    v4 = [v2 pid] == 0;
  }

  else
  {
    v4 = 1;
  }

  if ([v3 uniquePid])
  {
    v5 = [v3 pid] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = 1;
  if (!v4)
  {
    v6 = -1;
  }

  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_7(uint64_t a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(SASamplePrinter *)*(a1 + 40) highestPriorityInTask:a2 useBasePriority:?];
        if (v10 > v7)
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [(SASamplePrinter *)*(a1 + 40) highestPriorityInTask:a2 useBasePriority:?];
        if (v17 > v14)
        {
          v14 = v17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if (v7 <= v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  if (v7 < v14)
  {
    return 1;
  }

  else
  {
    return v18;
  }
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_8(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [(SASamplePrinter *)*(a1 + 40) largestFootprintInTask:?];
        if (v8 > v5)
        {
          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(SASamplePrinter *)*(a1 + 40) largestFootprintInTask:?];
        if (v15 > v12)
        {
          v12 = v15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (v5 <= v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  if (v5 < v12)
  {
    return 1;
  }

  else
  {
    return v16;
  }
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_9(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        *buf = 0;
        v32 = 0;
        v33 = 0;
        [v11 cpuTimeNs:buf cpuInstructions:&v33 cpuCycles:&v32 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
        v8 += *buf;
        v7 += v33;
        v6 += v32;
      }

      v5 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 48);
  v12 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *v29;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        *buf = 0;
        v32 = 0;
        v33 = 0;
        [v19 cpuTimeNs:buf cpuInstructions:&v33 cpuCycles:&v32 betweenStartTime:*(*(a1 + 40) + 32) endTime:*(*(a1 + 40) + 40)];
        v16 += *buf;
        v15 += v33;
        v14 += v32;
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  if (a2 > 7)
  {
    if (a2 == 8)
    {
      v20 = v6 > v14;
      if (v6 >= v14)
      {
        goto LABEL_36;
      }

      return 1;
    }

    if (a2 == 9)
    {
      v21 = 0.0;
      v22 = 0.0;
      if (v7)
      {
        v22 = v6 / v7;
      }

      if (v15)
      {
        v21 = v14 / v15;
      }

      if (v22 >= v21)
      {
        if (v22 <= v21)
        {
          return 0;
        }

        return -1;
      }

      return 1;
    }
  }

  else
  {
    if (a2 == 6)
    {
      v20 = v8 > v16;
      if (v8 >= v16)
      {
        goto LABEL_36;
      }

      return 1;
    }

    if (a2 == 7)
    {
      v20 = v7 > v15;
      if (v7 >= v15)
      {
LABEL_36:
        if (!v20)
        {
          return 0;
        }

        return -1;
      }

      return 1;
    }
  }

  v24 = *__error();
  v25 = _sa_logt();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "invalid sort option 0x%llx", buf, 0xCu);
  }

  *__error() = v24;
  _SASetCrashLogMessage(6335, "invalid sort option 0x%llx", a2);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __44__SASamplePrinter_printTasksWithAggregation__block_invoke_1490(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 firstObject];
  v5 = [v4 name];

  v6 = [a3 firstObject];
  v7 = [v6 name];

  if (v5 == v7)
  {
    v8 = 0;
  }

  else if (v5)
  {
    if (v7)
    {
      v8 = [v5 compare:v7 options:577];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)printMultipleTasks:(uint64_t)tasks
{
  v169 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v122 = *(tasks + 48);
  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy__4;
  v162 = __Block_byref_object_dispose__4;
  v163 = 0;
  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = __Block_byref_object_copy__4;
  v156 = __Block_byref_object_dispose__4;
  v157 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2020000000;
  v151 = 0x7FFFFFFFFFFFFFFFLL;
  v144 = 0;
  v145 = &v144;
  v146 = 0x2020000000;
  v147 = 0x7FFFFFFFFFFFFFFFLL;
  v140 = 0;
  v141 = &v140;
  v142 = 0x2020000000;
  v143 = 0;
  v113 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v121 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a2, "count")}];
  firstObject = [a2 firstObject];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = a2;
  v4 = [obj countByEnumeratingWithState:&v136 objects:v168 count:16];
  if (v4)
  {
    v110 = 0;
    v109 = 0;
    v108 = 0;
    v107 = 0;
    v106 = 0;
    v105 = 0;
    v120 = 0;
    v119 = 0;
    v118 = 0;
    v117 = 0;
    v116 = 0;
    v112 = 0;
    v114 = *v137;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v137 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v136 + 1) + 8 * i);
        if ([v6 pid])
        {
          sharedCache = [v6 sharedCache];
          v8 = sharedCache;
          if (sharedCache)
          {
            null = sharedCache;
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          v10 = null;

          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v11 = v113;
          v12 = [v11 countByEnumeratingWithState:&v132 objects:v167 count:16];
          if (v12)
          {
            v13 = *v133;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v133 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                if (*(*(&v132 + 1) + 8 * j) == v10)
                {

                  goto LABEL_20;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v132 objects:v167 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          [v11 addObject:v10];
LABEL_20:
        }

        if (([*(tasks + 168) dataSource] != 8 || objc_msgSend(*(tasks + 168), "haveKPerfSched")) && objc_msgSend(*(tasks + 168), "dataStyle") != 1 && objc_msgSend(*(tasks + 168), "dataStyle"))
        {
          *&buf = 0;
          v131 = 0;
          v130 = 0;
          v129 = 0;
          v128 = 0;
          v127 = 0;
          [(SATask *)v6 cpuTimeNs:&v131 cpuInstructions:&v130 cpuCycles:&v129 nonThreadCpuTimeNs:&v128 nonThreadCpuInstructions:&v127 nonThreadCpuCycles:*(tasks + 32) betweenStartTime:*(tasks + 40) endTime:?];
          v105 += buf;
          v106 += v131;
          v107 += v130;
          v108 += v129;
          v109 += v128;
          v110 += v127;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v165 = 0x2020000000;
        v166 = 0;
        taskStates = [v6 taskStates];
        v16 = [taskStates count] == 0;

        if (v16)
        {
          threads = [v6 threads];
          v124[0] = MEMORY[0x1E69E9820];
          v124[1] = 3221225472;
          v124[2] = __51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke_2;
          v124[3] = &unk_1E86F78B0;
          v124[4] = tasks;
          v124[5] = &v158;
          v125 = v122;
          v124[6] = &v148;
          v124[7] = &v152;
          v124[8] = &v144;
          v124[9] = &buf;
          [threads enumerateKeysAndObjectsUsingBlock:v124];
        }

        else
        {
          v17 = [v6 indexOfFirstTaskStateOnOrAfterTime:*(tasks + 32) sampleIndex:*(tasks + 56)];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_48;
          }

          v18 = [v6 indexOfLastTaskStateOnOrBeforeTime:*(tasks + 40) sampleIndex:*(tasks + 64)];
          v19 = v18;
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_48;
          }

          v20 = v18 - v17;
          if (v18 < v17)
          {
            goto LABEL_48;
          }

          taskStates2 = [v6 taskStates];
          v22 = [taskStates2 objectAtIndexedSubscript:v17];

          if (!v159[5] || ([v22 startTimestamp], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "lt:", v159[5]), v23, v24))
          {
            startTimestamp = [v22 startTimestamp];
            v26 = v159[5];
            v159[5] = startTimestamp;

            if (v122)
            {
              startSampleIndex = [v22 startSampleIndex];
              v149[3] = startSampleIndex;
              if (startSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                v28 = [v22 endSampleIndex] + 1;
                v149[3] = v28;
              }
            }
          }

          taskStates3 = [v6 taskStates];
          v30 = [taskStates3 objectAtIndexedSubscript:v19];

          if (!v153[5] || ([v30 endTimestamp], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "gt:", v153[5]), v31, v32))
          {
            endTimestamp = [v30 endTimestamp];
            v34 = v153[5];
            v153[5] = endTimestamp;

            if (v122)
            {
              endSampleIndex = [v30 endSampleIndex];
              v145[3] = endSampleIndex;
            }
          }

          if ((v141[3] & 1) == 0)
          {
            v36 = *(tasks + 32);
            v37 = *(tasks + 40);
            v38 = *(tasks + 56);
            v39 = *(tasks + 64);
            v126[0] = MEMORY[0x1E69E9820];
            v126[1] = 3221225472;
            v126[2] = __51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke;
            v126[3] = &unk_1E86F76D8;
            v126[4] = &v140;
            [v6 enumerateTaskStatesBetweenStartTime:v36 startSampleIndex:v38 endTime:v37 endSampleIndex:v39 reverseOrder:0 block:v126];
          }

          *(*(&buf + 1) + 24) += v20 + 1;
        }

        if ((v122 & 1) == 0)
        {
          v112 += *(*(&buf + 1) + 24);
        }

        v41 = [SASamplePrinter displayStringForResourceCoalition:v6];
        v42 = [v121 objectForKeyedSubscript:v41];
        v43 = MEMORY[0x1E696AD98];
        unsignedLongLongValue = [v42 unsignedLongLongValue];
        v45 = [v43 numberWithUnsignedLongLong:*(*(&buf + 1) + 24) + unsignedLongLongValue];
        [v121 setObject:v45 forKeyedSubscript:v41];

        v46 = [(SASamplePrinter *)tasks numIOsForTask:v6 ioSize:&v131];
        hardenedHeap = [v6 hardenedHeap];
        if (v6)
        {
          LOBYTE(v119) = v6[75] | v119;
          BYTE4(v119) |= v6[76];
          LOBYTE(v120) = v6[77] | v120;
          BYTE4(v120) |= v6[78];
        }

        v117 += v46;
        v116 += v46;
        v118 |= hardenedHeap;
LABEL_48:
        _Block_object_dispose(&buf, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v136 objects:v168 count:16];
      if (!v4)
      {
        goto LABEL_52;
      }
    }
  }

  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v112 = 0;
LABEL_52:

  if (v122)
  {
    v48 = v149[3];
    if (v48 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v49 = v145[3];
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v49 >= *(tasks + 64))
        {
          v49 = *(tasks + 64);
        }

        if (v48 <= *(tasks + 56))
        {
          v48 = *(tasks + 56);
        }

        v112 = v49 - v48 + 1;
      }
    }
  }

  targetProcesses = [*(tasks + 168) targetProcesses];
  v51 = [targetProcesses isEqual:obj];

  if (v51)
  {
    goto LABEL_61;
  }

  if (!v112 && ![*(tasks + 16) displayTasksWithZeroCount])
  {
    goto LABEL_88;
  }

  if ([*(tasks + 16) omitTasksBelowSampleCount] < 1)
  {
    omitTasksBelowSampleCount = 0;
  }

  else
  {
    omitTasksBelowSampleCount = [*(tasks + 16) omitTasksBelowSampleCount];
  }

  if ([*(tasks + 16) omitTasksBelowPercentOfTotalSamples] >= 1)
  {
    v70 = *(tasks + 72);
    omitTasksBelowPercentOfTotalSamples = [*(tasks + 16) omitTasksBelowPercentOfTotalSamples];
    if (omitTasksBelowSampleCount <= v70 * omitTasksBelowPercentOfTotalSamples / 0x64uLL)
    {
      omitTasksBelowSampleCount = v70 * omitTasksBelowPercentOfTotalSamples / 0x64uLL;
    }
  }

  if (!omitTasksBelowSampleCount || v112 > omitTasksBelowSampleCount)
  {
LABEL_61:
    mainBinary = [firstObject mainBinary];
    if (!mainBinary)
    {
      v75 = *__error();
      v76 = _sa_logt();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = [firstObject debugDescription];
        v78 = v77;
        uTF8String = [v77 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = uTF8String;
        _os_log_error_impl(&dword_1E0E2F000, v76, OS_LOG_TYPE_ERROR, "%s: No main binary printing multiple tasks", &buf, 0xCu);
      }

      *__error() = v75;
      v80 = [firstObject debugDescription];
      v81 = v80;
      _SASetCrashLogMessage(6788, "%s: No main binary printing multiple tasks", [v80 UTF8String]);

      _os_crash();
      __break(1u);
    }

    v53 = *(tasks + 136);
    if (v53)
    {
      targetProcess = *(tasks + 136);
    }

    else
    {
      targetProcess = [*(tasks + 168) targetProcess];
    }

    mainBinary2 = [targetProcess mainBinary];

    if (!v53)
    {
    }

    if (mainBinary2 == mainBinary)
    {
      v57 = objc_alloc(MEMORY[0x1E696AEC0]);
      v58 = [(SASamplePrinter *)tasks displayNameForTask:firstObject includePid:0];
      v104 = [v57 initWithFormat:@"%@ (other tasks)", v58];
    }

    else
    {
      v104 = [(SASamplePrinter *)tasks displayNameForTask:firstObject includePid:0];
    }

    v103 = [(SASamplePrinter *)tasks architectureStringForTask:firstObject];
    if (([*(tasks + 16) printJson] & 1) == 0)
    {
      [*(tasks + 8) appendString:@"\n\n"];
    }

    v115 = mainBinary;
    v101 = [(SASamplePrinter *)tasks displayStringForOnBehalfOfForTasks:1u includePid:?];
    if ([firstObject pid])
    {
      v123 = 0;
    }

    else
    {
      startTimestamp2 = [firstObject startTimestamp];
      [startTimestamp2 wallTime];
      v61 = [(SASamplePrinter *)tasks kernelVersionAtWallTime:v60];

      if (!v61 || (SACopySanitizedString(v61, 1, 0), v123 = objc_claimAutoreleasedReturnValue(), v61, !v123))
      {
        v123 = @"???";
      }
    }

    v87 = *(tasks + 8);
    mainBinaryPath = [firstObject mainBinaryPath];
    bundleIdentifier = [firstObject bundleIdentifier];
    bundleVersion = [firstObject bundleVersion];
    bundleShortVersion = [firstObject bundleShortVersion];
    bundleBuildVersion = [firstObject bundleBuildVersion];
    bundleProjectName = [firstObject bundleProjectName];
    bundleSourceVersion = [firstObject bundleSourceVersion];
    bundleProductBuildVersion = [firstObject bundleProductBuildVersion];
    adamID = [firstObject adamID];
    installerVersionID = [firstObject installerVersionID];
    developerType = [firstObject developerType];
    appType = [firstObject appType];
    isBeta = [firstObject isBeta];
    cohortID = [firstObject cohortID];
    vendorID = [firstObject vendorID];
    distributorID = [firstObject distributorID];
    codesigningID = [firstObject codesigningID];
    teamID = [firstObject teamID];
    v64 = v159[5];
    v65 = v153[5];
    v66 = v149[3];
    v67 = v145[3];
    v68 = *(tasks + 72);
    isTranslocated = [firstObject isTranslocated];
    [firstObject isRunningBoardManaged];
    *&v82 = bundleVersion;
    *(&v82 + 1) = bundleShortVersion;
    [SASamplePrinter addTaskHeaderToStream:tasks displayName:v87 pid:v104 mainBinary:0xFFFFFFFFLL mainBinaryPath:v115 sharedCaches:mainBinaryPath uid:v113 bundleIdentifier:4294966982 bundleVersion:0.0 bundleShortVersion:bundleIdentifier bundleBuildVersion:v82 bundleProjectName:bundleBuildVersion bundleSourceVersion:bundleProjectName bundleProductBuildVersion:bundleSourceVersion adamID:bundleProductBuildVersion installerVersionID:adamID developerType:installerVersionID appType:developerType isBeta:appType cohortID:isBeta vendorID:cohortID distributorID:vendorID codesigningID:codesigningID teamID:teamID resourceCoalitionSampleCounts:v121 onBehalfOfProcesses:v101 architectureString:v103 kernelVersion:v123 parentName:0 responsibleName:0 taskExecedFromName:0 taskExecedToName:0 forkTimestamp:0 startTimestamp:v64 endTimestamp:v65 startSampleIndex:v66 endSampleIndex:v67 numSamples:v112 totalNumSamples:v68 numSamplesSuspended:0 numSamplesTerminated:0 startingTaskSize:0 endingTaskSize:0 maxTaskSize:0 startSampleIndexOfMaxTaskSize:0x7FFFFFFFFFFFFFFFuLL endSampleIndexOfMaxTaskSize:0x7FFFFFFFFFFFFFFFuLL numPageins:0 cpuTimeNs:v105 cpuInstructions:v106 cpuCycles:v107 nonThreadCpuTimeNs:v108 nonThreadCpuInstructions:v109 nonThreadCpuCycles:v110 usesSuddenTermination:0 allowsIdleExit:0 memoryLimitStr:0 jetsamPriorityStr:0 isTranslocated:isTranslocated hardenedHeap:v118 & 1 mteCheckedAllocationsEnabled:v119 & 1 mteUserDataAllocationsTagged:BYTE4(v119) & 1 mteSoftModeEnabled:v120 & 1 mteInheritanceTurnedOn:BYTE4(v120) & 1 isRunningBoardManaged:? isUnresponsive:? timeOfLastResponse:? numThreads:? numIdleWorkQueueThreads:? numOtherHiddenThreads:? hieSwallowedException:? numSamplesWQExceededConstrainedThreadLimit:? numSamplesWQExceededTotalThreadLimit:? numSamplesWQExceededCooperativeThreadLimit:? numSamplesWQExceededActiveConstrainedThreadLimit:? numSamplesTALEngaged:? isRunawayMitigated:? threadsDeadlocked:? threadsBlockedByADeadlock:? ioSize:? numIOs:? isReportHeader:?];
  }

  else
  {
LABEL_88:
    v112 = -1;
  }

  _Block_object_dispose(&v140, 8);
  _Block_object_dispose(&v144, 8);
  _Block_object_dispose(&v148, 8);
  _Block_object_dispose(&v152, 8);

  _Block_object_dispose(&v158, 8);
  if ((v112 & 0x8000000000000000) == 0)
  {
    v72 = *(tasks + 16);
    if (v72)
    {
      v73 = *(v72 + 152);
      if (v73 == 3 || !v73 && *(v72 + 11) == 1)
      {
        if (v112)
        {
          [(SASamplePrinter *)tasks printSingleStackForTasks:0 limitToDispatchQueueIds:0 limitToThreadIds:0 intersection:v112 sampleCount:?];
          v72 = *(tasks + 16);
        }

        if (([v72 systemstatsFormat] & 1) == 0)
        {
          firstObject2 = [obj firstObject];
          [(SASamplePrinter *)tasks printBinaryImagesForTask:firstObject2];
        }
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)printSingleStackForTasks:(uint64_t)tasks limitToDispatchQueueIds:(uint64_t)ids limitToThreadIds:(char)threadIds intersection:(uint64_t)intersection sampleCount:
{
  v152 = *MEMORY[0x1E69E9840];
  if (([*(self + 16) printHeavyStacks] & 1) == 0)
  {
    v75 = *__error();
    v76 = _sa_logt();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      LOWORD(dest.receiver) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v76, OS_LOG_TYPE_ERROR, "!printHeavyStacks", &dest, 2u);
    }

    *__error() = v75;
    _SASetCrashLogMessage(9155, "!printHeavyStacks");
    _os_crash();
    __break(1u);
    goto LABEL_93;
  }

  if (![a2 count])
  {
LABEL_93:
    v77 = *__error();
    v78 = _sa_logt();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      LOWORD(dest.receiver) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v78, OS_LOG_TYPE_ERROR, "Printing single stack for 0 tasks", &dest, 2u);
    }

    *__error() = v77;
    _SASetCrashLogMessage(9156, "Printing single stack for 0 tasks");
    _os_crash();
    __break(1u);
    goto LABEL_96;
  }

  if (tasks | ids && [a2 count] != 1)
  {
LABEL_96:
    v79 = *__error();
    v80 = _sa_logt();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      LOWORD(dest.receiver) = 0;
      _os_log_error_impl(&dword_1E0E2F000, v80, OS_LOG_TYPE_ERROR, "Limiting to specific dispatch queues/threads, but with multiple tasks", &dest, 2u);
    }

    *__error() = v79;
    _SASetCrashLogMessage(9157, "Limiting to specific dispatch queues/threads, but with multiple tasks");
    _os_crash();
    __break(1u);
    goto LABEL_99;
  }

  v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  if (([*(self + 16) microstackshotsFormat] & 1) != 0 || objc_msgSend(*(self + 16), "systemstatsFormat"))
  {
    self = objc_alloc_init(SAMicrostackshotSummary);
  }

  else
  {
    self = 0;
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = a2;
  v12 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
  if (v12)
  {
    v13 = *v141;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v141 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v140 + 1) + 8 * i);
        threads = [v15 threads];
        v136[0] = MEMORY[0x1E69E9820];
        v136[1] = 3221225472;
        v136[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke;
        v136[3] = &unk_1E86F7B48;
        v136[4] = tasks;
        v136[5] = ids;
        threadIdsCopy = threadIds;
        v136[6] = selfCopy;
        v136[7] = v15;
        v137 = v105;
        selfCopy2 = self;
        [threads enumerateKeysAndObjectsUsingBlock:v136];
      }

      v12 = [obj countByEnumeratingWithState:&v140 objects:v151 count:16];
    }

    while (v12);
  }

  firstObject = [obj firstObject];
  v98 = [(SASamplePrinter *)selfCopy binaryImagesHitByTask:firstObject];
  if ([firstObject pid])
  {
    v17 = 0;
  }

  else
  {
    if (firstObject)
    {
      objc_copyStruct(&dest, (firstObject + 288), 8, 1, 0);
    }

    v17 = CSArchitectureIs32Bit() ^ 1;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  mainBinary = obj;
  v18 = [mainBinary countByEnumeratingWithState:&v132 objects:v150 count:16];
  if (!v18)
  {
    obja = 0;
    goto LABEL_68;
  }

  obja = 0;
  p_dest = &dest;
  v19 = *v133;
  do
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v133 != v19)
      {
        objc_enumerationMutation(mainBinary);
      }

      v21 = *(*(&v132 + 1) + 8 * j);
      mainBinaryLoadInfo = [v21 mainBinaryLoadInfo];
      v23 = mainBinaryLoadInfo;
      if (mainBinaryLoadInfo)
      {
        if (!obja)
        {
          goto LABEL_32;
        }

        loadAddress = [mainBinaryLoadInfo loadAddress];
        mainBinaryLoadInfo2 = [obja mainBinaryLoadInfo];
        loadAddress2 = [mainBinaryLoadInfo2 loadAddress];

        if (!v17)
        {
          if (loadAddress >= loadAddress2)
          {
            goto LABEL_33;
          }

LABEL_32:
          v27 = v21;

          obja = v27;
          goto LABEL_33;
        }

        if (loadAddress > loadAddress2)
        {
          goto LABEL_32;
        }
      }

LABEL_33:
    }

    v18 = [mainBinary countByEnumeratingWithState:&v132 objects:v150 count:16];
  }

  while (v18);

  if (!obja)
  {
    obja = 0;
    goto LABEL_69;
  }

  mainBinary = [firstObject mainBinary];
  if (!mainBinary)
  {
LABEL_99:
    v81 = *__error();
    v82 = _sa_logt();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [firstObject debugDescription];
      v84 = v83;
      uTF8String = [v83 UTF8String];
      mainBinaryLoadInfo3 = [firstObject mainBinaryLoadInfo];
      v87 = [mainBinaryLoadInfo3 debugDescription];
      v88 = v87;
      uTF8String2 = [v87 UTF8String];
      LODWORD(dest.receiver) = 136315394;
      *(&p_dest->receiver + 4) = uTF8String;
      WORD2(dest.super_class) = 2080;
      *(&p_dest->super_class + 6) = uTF8String2;
      _os_log_error_impl(&dword_1E0E2F000, v82, OS_LOG_TYPE_ERROR, "No main binary for %s with main binary load info %s", &dest, 0x16u);
    }

    *__error() = v81;
    v90 = [firstObject debugDescription];
    v91 = v90;
    uTF8String3 = [v90 UTF8String];
    mainBinaryLoadInfo4 = [firstObject mainBinaryLoadInfo];
    v94 = [mainBinaryLoadInfo4 debugDescription];
    v95 = v94;
    _SASetCrashLogMessage(9227, "No main binary for %s with main binary load info %s", uTF8String3, [v94 UTF8String]);

    _os_crash();
    __break(1u);
  }

  v96 = [v98 objectForKeyedSubscript:?];
  if ([v96 count])
  {
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    mainBinaryLoadInfo5 = [v98 objectForKeyedSubscript:mainBinary];
    v102 = [mainBinaryLoadInfo5 countByEnumeratingWithState:&v128 objects:v149 count:16];
    if (v102)
    {
      v101 = *v129;
      do
      {
        v29 = 0;
        do
        {
          if (*v129 != v101)
          {
            v30 = v29;
            objc_enumerationMutation(mainBinaryLoadInfo5);
            v29 = v30;
          }

          v103 = v29;
          v31 = *(*(&v128 + 1) + 8 * v29);
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          binaryLoadInfos = [obja binaryLoadInfos];
          v33 = [binaryLoadInfos countByEnumeratingWithState:&v124 objects:v148 count:16];
          if (v33)
          {
            v34 = *v125;
            while (2)
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v125 != v34)
                {
                  objc_enumerationMutation(binaryLoadInfos);
                }

                v36 = *(*(&v124 + 1) + 8 * k);
                binary = [v36 binary];
                binary2 = [v31 binary];
                v39 = binary2;
                if (binary == binary2)
                {
                  segment = [v36 segment];
                  segment2 = [v31 segment];
                  v42 = segment == segment2;

                  if (v42)
                  {
                    loadAddress3 = [v36 loadAddress];
                    if (v31)
                    {
                      v31[3] = loadAddress3;
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
                }
              }

              v33 = [binaryLoadInfos countByEnumeratingWithState:&v124 objects:v148 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

LABEL_56:

          v29 = v103 + 1;
        }

        while (v103 + 1 != v102);
        v102 = [mainBinaryLoadInfo5 countByEnumeratingWithState:&v128 objects:v149 count:16];
      }

      while (v102);
    }
  }

  else
  {
    if (!v96)
    {
      v96 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      [v98 setObject:v96 forKeyedSubscript:mainBinary];
    }

    v44 = [SABinaryLoadInfoToDisplay alloc];
    mainBinaryLoadInfo5 = [obja mainBinaryLoadInfo];
    if (v44)
    {
      binary3 = [mainBinaryLoadInfo5 binary];
      segment3 = [mainBinaryLoadInfo5 segment];
      loadAddress4 = [mainBinaryLoadInfo5 loadAddress];
      dest.receiver = v44;
      dest.super_class = SABinaryLoadInfoToDisplay;
      v44 = objc_msgSendSuper2(&dest, sel_initWithBinary_segment_loadAddress_, binary3, segment3, loadAddress4);

      if (v44)
      {
        v44->_isInKernelAddressSpace = [mainBinaryLoadInfo5 isInKernelAddressSpace];
        exclave = [mainBinaryLoadInfo5 exclave];
        exclave = v44->_exclave;
        v44->_exclave = exclave;
      }
    }

    [v96 addObject:v44];
  }

LABEL_68:
LABEL_69:
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  dest.receiver = 0;
  dest.super_class = &dest;
  v145 = 0x2810000000;
  v146 = "";
  v147 = 0;
  v50 = selfCopy;
  if (self)
  {
    v116 = 0;
    v117 = &v116;
    v118 = 0x2020000000;
    v119 = 0;
    v51 = objc_getProperty(self, v28, 8, 1);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_1998;
    v115[3] = &unk_1E86F7B70;
    v115[4] = &v116;
    v115[5] = &v120;
    [v51 enumerateKeysAndObjectsUsingBlock:v115];

    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0;
    v53 = objc_getProperty(self, v52, 16, 1);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2_2000;
    v110[3] = &unk_1E86F7B70;
    v110[4] = &v111;
    v110[5] = &dest;
    [v53 enumerateKeysAndObjectsUsingBlock:v110];

    v50 = selfCopy;
    printJson = [*(selfCopy + 16) printJson];
    v55 = *(selfCopy + 8);
    if (printJson)
    {
      [v55 appendString:{@", primaryMicrostackshotState:{"}];
      v56 = *(selfCopy + 8);
      v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v117[3]];
      SAJSONWriteDictionaryFirstEntry(v56, @"count", v57);

      +[SACallTreeState writeJSONDictionaryEntriesToStream:microstackshotState:primaryMicrostackshotState:includeIdleAndBattery:](SACallTreeState, *(selfCopy + 8), *(v121 + 6), ~*(v121 + 6), [*(selfCopy + 16) includeUserIdleAndBatteryStateInStacks]);
      [*(selfCopy + 8) appendString:@"}"];
      [*(selfCopy + 8) appendString:{@", primaryCountedState:{"}];
      v58 = *(selfCopy + 8);
      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v112[3]];
      SAJSONWriteDictionaryFirstEntry(v58, @"count", v59);

      v50 = selfCopy;
      [SACallTreeState writeJSONDictionaryEntriesToStream:*(dest.super_class + 4) state:0 primaryState:?];
      [*(selfCopy + 8) appendString:@"}"];
      if (([*(selfCopy + 16) includeUserIdleAndBatteryStateInStacks] & 1) == 0)
      {
        v60 = *(selfCopy + 8);
        v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userActiveCount];
        SAJSONWriteDictionaryEntry(v60, @"userActiveSampleCount", v61);

        v62 = *(selfCopy + 8);
        v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userIdleCount];
        SAJSONWriteDictionaryEntry(v62, @"userIdleSampleCount", v63);

        v64 = *(selfCopy + 8);
        v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_onBatteryCount];
        SAJSONWriteDictionaryEntry(v64, @"onBatterySampleCount", v65);

        v66 = *(selfCopy + 8);
        v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_onACCount];
        SAJSONWriteDictionaryEntry(v66, @"onACSampleCount", v67);

        v50 = selfCopy;
      }
    }

    else
    {
      [v55 printWithFormat:@"%-*s%lu samples ", 18, "Primary state: ", v117[3]];
      saos_printf_microstackshot_state(*(selfCopy + 8), *(v121 + 6), ~*(v121 + 6), [*(selfCopy + 16) systemstatsFormat], objc_msgSend(*(selfCopy + 16), "includeUserIdleAndBatteryStateInStacks"));
      super_class = dest.super_class;
      systemstatsFormat = [*(selfCopy + 16) systemstatsFormat];
      if ((*(super_class + 4) & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v70 = systemstatsFormat;
      }

      else
      {
        v70 = 1;
      }

      if ((v70 & 1) == 0)
      {
        [*(selfCopy + 8) appendString:{@", "}];
        _saos_printf_state_appended_noparens(*(selfCopy + 8), *(dest.super_class + 4), 0, 0);
      }

      [*(selfCopy + 8) appendString:@"\n"];
      if (([*(selfCopy + 16) includeUserIdleAndBatteryStateInStacks] & 1) == 0)
      {
        [*(selfCopy + 8) printWithFormat:@"%-*s%lu samples Idle, %lu samples Active", 18, "User Activity: ", self->_userIdleCount, self->_userActiveCount];
        v71 = *(selfCopy + 8);
        v72 = intersection - (self->_userActiveCount + self->_userIdleCount);
        if (v72)
        {
          [v71 printWithFormat:@", %lu samples Unknown\n", v72];
        }

        else
        {
          [v71 appendString:@"\n"];
        }

        [*(selfCopy + 8) printWithFormat:@"%-*s%lu samples on Battery, %lu samples on AC", 18, "Power Source: ", self->_onBatteryCount, self->_onACCount];
        v73 = *(selfCopy + 8);
        v74 = intersection - (self->_onACCount + self->_onBatteryCount);
        if (v74)
        {
          [v73 printWithFormat:@", %lu samples Unknown\n", v74];
        }

        else
        {
          [v73 appendString:@"\n"];
        }

        *(v121 + 6) &= 0xFFFFFFE3;
      }
    }

    _Block_object_dispose(&v111, 8);
    _Block_object_dispose(&v116, 8);
  }

  if ([*(v50 + 16) printHeavyStacks])
  {
    [(SASamplePrinter *)v50 sortHeavyCallTree:v105];
  }

  -[SASamplePrinter addStack:toStream:sampleCount:binariesToDisplay:primaryState:primaryMicrostackshotState:onlyHeaviestStack:isKernel:](v50, v105, *(v50 + 8), intersection, v98, dest.super_class + 32, *(v121 + 6), 0, [firstObject pid] == 0);
  _Block_object_dispose(&dest, 8);
  _Block_object_dispose(&v120, 8);
}

void *__51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isRunawayMitigated];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __51__SASamplePrinter_printTaskHeaderForMultipleTasks___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [a3 indexOfFirstThreadStateOnOrAfterTime:*(*(a1 + 32) + 32) sampleIndex:*(*(a1 + 32) + 56)];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [a3 indexOfLastThreadStateOnOrBeforeTime:*(*(a1 + 32) + 40) sampleIndex:*(*(a1 + 32) + 64)];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      v9 = v7 - v6;
      if (v7 < v6)
      {
        v23 = *__error();
        v24 = _sa_logt();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [*(*(a1 + 32) + 32) debugDescription];
          v26 = [v25 UTF8String];
          v27 = [*(*(a1 + 32) + 40) debugDescription];
          *buf = 134218754;
          v33 = v6;
          v34 = 2080;
          v35 = v26;
          v36 = 2048;
          v37 = v8;
          v38 = 2080;
          v39 = [v27 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "firstThreadStateIndex %lu after reportStartTime %s > lastThreadStateIndex %lu before reportEndTime %s", buf, 0x2Au);
        }

        *__error() = v23;
        v28 = [*(*(a1 + 32) + 32) debugDescription];
        v29 = [v28 UTF8String];
        v30 = [*(*(a1 + 32) + 40) debugDescription];
        _SASetCrashLogMessage(6700, "firstThreadStateIndex %lu after reportStartTime %s > lastThreadStateIndex %lu before reportEndTime %s", v6, v29, v8, [v30 UTF8String]);

        _os_crash();
        __break(1u);
      }

      v10 = [a3 threadStates];
      v31 = [v10 objectAtIndexedSubscript:v6];

      if (!*(*(*(a1 + 40) + 8) + 40) || ([v31 startTimestamp], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "lt:", *(*(*(a1 + 40) + 8) + 40)), v11, v12))
      {
        v13 = [v31 startTimestamp];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        if (*(a1 + 80) == 1)
        {
          *(*(*(a1 + 48) + 8) + 24) = [v31 startSampleIndex];
          if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
          {
            *(*(*(a1 + 48) + 8) + 24) = [v31 endSampleIndex] + 1;
          }
        }
      }

      v16 = [a3 threadStates];
      v17 = [v16 objectAtIndexedSubscript:v8];

      if (!*(*(*(a1 + 56) + 8) + 40) || ([v17 endTimestamp], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "gt:", *(*(*(a1 + 56) + 8) + 40)), v18, v19))
      {
        v20 = [v17 endTimestamp];
        v21 = *(*(a1 + 56) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        if (*(a1 + 80) == 1)
        {
          *(*(*(a1 + 64) + 8) + 24) = [v17 endSampleIndex];
        }
      }

      *(*(*(a1 + 72) + 8) + 24) += v9 + 1;
    }
  }
}

- (uint64_t)numIOsForTask:(void *)task ioSize:
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  threads = [a2 threads];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SASamplePrinter_numIOsForTask_ioSize___block_invoke;
  v8[3] = &unk_1E86F7410;
  v8[4] = self;
  v8[5] = &v13;
  v8[6] = &v9;
  [threads enumerateKeysAndObjectsUsingBlock:v8];

  *task = v14[3];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

- (uint64_t)printTaskHeaderForTask:(char *)task specialDispatchQueueId:(uint64_t)id specialThreadId:(int)threadId omitSpecial:(int)special omitOther:
{
  LODWORD(v7) = threadId;
  taskCopy = task;
  v10 = buf;
  v457 = *MEMORY[0x1E69E9840];
  v317 = a2;
  if (threadId && special)
  {
    v198 = *__error();
    v199 = _sa_logt();
    if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
    {
      id = [v317 debugDescription];
      uTF8String = [id UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_error_impl(&dword_1E0E2F000, v199, OS_LOG_TYPE_ERROR, "%s: omitSpecialThreadId and omitOtherThreads", buf, 0xCu);
    }

    *__error() = v198;
    v201 = [v317 debugDescription];
    v202 = v201;
    _SASetCrashLogMessage(6979, "%s: omitSpecialThreadId and omitOtherThreads", [v201 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_262;
  }

  v11 = *(self + 48);
  if (!task)
  {
    goto LABEL_10;
  }

  dispatchQueues = [a2 dispatchQueues];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:taskCopy];
  v320 = [dispatchQueues objectForKeyedSubscript:v13];

  a2 = v317;
  if (!v320)
  {
    goto LABEL_277;
  }

  if (id)
  {
    while (1)
    {
      threads = [a2 threads];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
      v311 = [threads objectForKeyedSubscript:v15];

      if (v311)
      {
        break;
      }

      v16 = *__error();
      v7 = _sa_logt();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        taskCopy = [v317 debugDescription];
        uTF8String2 = [taskCopy UTF8String];
        *buf = 136315394;
        *&buf[4] = uTF8String2;
        *&buf[12] = 2048;
        *&buf[14] = id;
        _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "%s: specialThreadId 0x%llx doesn't exist", buf, 0x16u);
      }

      *__error() = v16;
      v18 = [v317 debugDescription];
      v19 = v18;
      _SASetCrashLogMessage(6992, "%s: specialThreadId 0x%llx doesn't exist", [v18 UTF8String], id);

      _os_crash();
      __break(1u);
LABEL_10:
      v320 = 0;
      if (!id)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v311 = 0;
  }

  v305 = id | taskCopy;
  if (id | taskCopy)
  {
    if (v7)
    {
      v20 = @"(other dispatch queues/threads)";
      if (!taskCopy)
      {
        v20 = @"(other threads)";
      }

      v308 = v20;
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v22 = v21;
      if (taskCopy)
      {
        v23 = [SASamplePrinter displayNameForDispatchQueue:v320];
        v24 = v23;
        if (id)
        {
          v253 = [v22 initWithFormat:@"%@ 0x%llx, %@ %@", @"Thread", id, @"DispatchQueue", v23];
        }

        else
        {
          v253 = [v22 initWithFormat:@"%@ %@", @"DispatchQueue", v23, v252, v253];
        }

        v308 = v253;
      }

      else
      {
        v308 = [v21 initWithFormat:@"%@ 0x%llx", @"Thread", id];
      }
    }
  }

  else
  {
    v308 = 0;
  }

  v434 = 0;
  v435 = &v434;
  v436 = 0x2020000000;
  v437 = 0;
  v430 = 0;
  v431 = &v430;
  v432 = 0x2020000000;
  v433 = 0;
  v426 = 0;
  v427 = &v426;
  v428 = 0x2020000000;
  v429 = 0;
  v425[0] = 0;
  v425[1] = v425;
  v425[2] = 0x2020000000;
  v425[3] = 0;
  v424[0] = 0;
  v424[1] = v424;
  v424[2] = 0x2020000000;
  v424[3] = 0;
  v423[0] = 0;
  v423[1] = v423;
  v423[2] = 0x2020000000;
  v423[3] = 0;
  v422[0] = 0;
  v422[1] = v422;
  v422[2] = 0x2020000000;
  v422[3] = 0;
  v421[0] = 0;
  v421[1] = v421;
  v421[2] = 0x2020000000;
  v421[3] = 0;
  v419[0] = 0;
  v419[1] = v419;
  v419[2] = 0x2020000000;
  v420 = 0;
  v415 = 0;
  v416 = &v415;
  v417 = 0x2020000000;
  v418 = 0;
  v411 = 0;
  v412 = &v411;
  v413 = 0x2020000000;
  v414 = 0x7FFFFFFFFFFFFFFFLL;
  v407 = 0;
  v408 = &v407;
  v409 = 0x2020000000;
  v410 = 0x7FFFFFFFFFFFFFFFLL;
  id = &v401;
  v401 = 0;
  v402 = &v401;
  v403 = 0x3032000000;
  v404 = __Block_byref_object_copy__4;
  v405 = __Block_byref_object_dispose__4;
  v406 = 0;
  v395 = 0;
  v396 = &v395;
  v397 = 0x3032000000;
  v398 = __Block_byref_object_copy__4;
  v399 = __Block_byref_object_dispose__4;
  v400 = 0;
  v391 = 0;
  v392 = &v391;
  v393 = 0x2020000000;
  v394 = 0x80000000;
  v387 = 0;
  v388 = &v387;
  v389 = 0x2020000000;
  v390 = 0x80000000;
  v383 = 0;
  v384 = &v383;
  v385 = 0x2020000000;
  v386 = 0x80000000;
  v379 = 0;
  v380 = &v379;
  v381 = 0x2020000000;
  v382 = 0x80000000;
  v375 = 0;
  v376 = &v375;
  v377 = 0x2020000000;
  v378 = 0;
  v371 = 0;
  v372 = &v371;
  v373 = 0x2020000000;
  v374 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3810000000;
  v453 = "";
  v454 = 0;
  v455 = 0;
  v456 = 0;
  v312 = (v311 | v320) != 0;
  if (v311 | v320)
  {
    v26 = *(self + 32);
    v27 = *(self + 40);
    v28 = *(self + 56);
    v29 = *(self + 64);
    v370[0] = MEMORY[0x1E69E9820];
    v370[1] = 3221225472;
    v370[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke;
    v370[3] = &unk_1E86F78D8;
    v370[4] = self;
    v370[5] = &v375;
    v370[6] = &v371;
    v370[7] = buf;
    [(SATask *)v317 enumerateThreadStatesForThread:v311 dispatchQueue:v320 betweenStartTime:v26 startSampleIndex:v28 endTime:v27 endSampleIndex:v29 reverseOrder:0 block:v370];
  }

  v30 = *(self + 32);
  v31 = *(self + 40);
  v32 = *(self + 56);
  v33 = *(self + 64);
  v369[0] = MEMORY[0x1E69E9820];
  v369[1] = 3221225472;
  v369[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2;
  v369[3] = &unk_1E86F7900;
  v369[4] = self;
  v369[5] = &v401;
  v369[6] = &v395;
  v369[7] = &v415;
  v369[8] = &v411;
  v369[9] = &v407;
  v369[10] = &v426;
  v369[11] = &v434;
  v369[12] = &v430;
  v369[13] = v425;
  v369[14] = v424;
  v369[15] = v423;
  v369[16] = v422;
  v369[17] = v421;
  v369[18] = v419;
  v369[19] = &v391;
  v369[20] = &v387;
  v369[21] = &v383;
  v369[22] = &v379;
  [v317 enumerateTaskStatesBetweenStartTime:v30 startSampleIndex:v32 endTime:v31 endSampleIndex:v33 reverseOrder:0 block:v369];
  v6 = v440;
  if ((v402[5] != 0) != (v396[5] != 0))
  {
LABEL_262:
    v203 = *__error();
    v204 = _sa_logt();
    taskCopy = "y";
    v10 = "n";
    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
    {
      id = [v317 debugDescription];
      idCopy = id;
      uTF8String3 = [id UTF8String];
      if (v402[5])
      {
        v207 = "y";
      }

      else
      {
        v207 = "n";
      }

      if (v396[5])
      {
        v208 = "y";
      }

      else
      {
        v208 = "n";
      }

      *v440 = 136315650;
      *(v6 + 4) = uTF8String3;
      WORD2(v441) = 2080;
      *(v6 + 14) = v207;
      HIWORD(v442) = 2080;
      taskSizeInBytes3 = v208;
      _os_log_error_impl(&dword_1E0E2F000, v204, OS_LOG_TYPE_ERROR, "%s: firstTaskState %s, lastTaskState %s", v440, 0x20u);
    }

    *__error() = v203;
    v209 = [v317 debugDescription];
    v210 = v209;
    uTF8String4 = [v209 UTF8String];
    if (v402[5])
    {
      v212 = "y";
    }

    else
    {
      v212 = "n";
    }

    if (v396[5])
    {
      v213 = "y";
    }

    else
    {
      v213 = "n";
    }

    _SASetCrashLogMessage(7121, "%s: firstTaskState %s, lastTaskState %s", uTF8String4, v212, v213);

    _os_crash();
    __break(1u);
LABEL_277:
    v214 = *__error();
    v215 = _sa_logt();
    if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
    {
      id = [v317 debugDescription];
      uTF8String5 = [id UTF8String];
      *buf = 136315394;
      *(v10 + 4) = uTF8String5;
      *&buf[12] = 2048;
      *(v10 + 14) = taskCopy;
      _os_log_error_impl(&dword_1E0E2F000, v215, OS_LOG_TYPE_ERROR, "%s: specialDispatchQueue %llu doesn't exist", buf, 0x16u);
    }

    *__error() = v214;
    v217 = [v317 debugDescription];
    v218 = v217;
    _SASetCrashLogMessage(6986, "%s: specialDispatchQueue %llu doesn't exist", [v217 UTF8String], taskCopy);

    _os_crash();
    __break(1u);
    goto LABEL_280;
  }

  startTimestamp = [v317 startTimestamp];
  endTimestamp = [v317 endTimestamp];
  specialCopy = special;
  v35 = v7;
  if (!v402[5])
  {
    v44 = -1;
    if (!startTimestamp || !endTimestamp || ([startTimestamp gt:*(self + 40)] & 1) != 0 || (objc_msgSend(endTimestamp, "lt:", *(self + 32)) & 1) != 0)
    {
      goto LABEL_256;
    }
  }

  if ((v11 & 1) != 0 || ([v317 taskStates], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "count") == 0, v36, specialCopy = special, !v37))
  {
    if (!v305)
    {
      goto LABEL_50;
    }

    if (v35)
    {
      if (v11)
      {
        goto LABEL_50;
      }

      v38 = v427[3];
      v39 = v376[3];
      v40 = v38 >= v39;
      v41 = v38 - v39;
      if (!v40)
      {
        goto LABEL_287;
      }

      v427[3] = v41;
      v42 = v435;
      v43 = v435[3] - v372[3];
      goto LABEL_48;
    }

    if (!specialCopy)
    {
      goto LABEL_50;
    }

    v427[3] = v376[3];
LABEL_47:
    v43 = v372[3];
    v42 = v435;
LABEL_48:
    v42[3] = v43;
    v431[3] = 0;
    goto LABEL_50;
  }

  if (v427[3])
  {
    goto LABEL_284;
  }

  if (v305 && (special & 1) != 0)
  {
    v427[3] = v376[3];
    goto LABEL_47;
  }

  threads2 = [v317 threads];
  v363[0] = MEMORY[0x1E69E9820];
  v363[1] = 3221225472;
  v363[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1537;
  v363[3] = &unk_1E86F7950;
  v363[4] = self;
  v368 = v35;
  v364 = v320;
  v365 = v311;
  v366 = &v426;
  v367 = &v434;
  [threads2 enumerateKeysAndObjectsUsingBlock:v363];

LABEL_50:
  v46 = *(self + 136);
  targetProcess = v46;
  if (!v46)
  {
    targetProcess = [*(self + 168) targetProcess];
  }

  v48 = v35;
  if (targetProcess != v317)
  {
    targetProcesses = [*(self + 168) targetProcesses];
    v50 = [targetProcesses containsObject:v317];

    v48 = v50 ^ 1 | v35;
  }

  if (!v46)
  {
  }

  v51 = v317;
  if (v48)
  {
    if (!v427[3])
    {
      v51 = v317;
      if (![*(self + 16) displayTasksWithZeroCount])
      {
        goto LABEL_74;
      }
    }

    if ([*(self + 16) omitTasksBelowSampleCount] < 1)
    {
      omitTasksBelowSampleCount = 0;
    }

    else
    {
      omitTasksBelowSampleCount = [*(self + 16) omitTasksBelowSampleCount];
    }

    if ([*(self + 16) omitTasksBelowPercentOfTotalSamples] >= 1)
    {
      v53 = *(self + 72);
      omitTasksBelowPercentOfTotalSamples = [*(self + 16) omitTasksBelowPercentOfTotalSamples];
      if (omitTasksBelowSampleCount <= v53 * omitTasksBelowPercentOfTotalSamples / 0x64uLL)
      {
        omitTasksBelowSampleCount = v53 * omitTasksBelowPercentOfTotalSamples / 0x64uLL;
      }
    }

    if (omitTasksBelowSampleCount && v427[3] <= omitTasksBelowSampleCount)
    {
LABEL_74:
      v44 = -1;
      goto LABEL_256;
    }
  }

  v359 = 0;
  v360 = &v359;
  v361 = 0x2020000000;
  v362 = 0x7FFFFFFFFFFFFFFFLL;
  v355 = 0;
  v356 = &v355;
  v357 = 0x2020000000;
  v358 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11)
  {
    v55 = v402[5];
    if (v55)
    {
      startSampleIndex = [v55 startSampleIndex];
      v57 = *(self + 56);
      if (startSampleIndex > v57)
      {
        v57 = startSampleIndex;
      }

      v360[3] = v57;
      endSampleIndex = [v396[5] endSampleIndex];
      v59 = *(self + 64);
      if (endSampleIndex < v59)
      {
        v59 = endSampleIndex;
      }

      v356[3] = v59;
    }

    else
    {
      threads3 = [v51 threads];
      v354[0] = MEMORY[0x1E69E9820];
      v354[1] = 3221225472;
      v354[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1541;
      v354[3] = &unk_1E86F7978;
      v354[4] = &v359;
      v354[5] = &v355;
      [threads3 enumerateKeysAndObjectsUsingBlock:v354];

      v61 = v360[3];
      if (v61 <= *(self + 56))
      {
        v61 = *(self + 56);
      }

      v360[3] = v61;
      v62 = v356[3];
      if (v62 >= *(self + 64))
      {
        v62 = *(self + 64);
      }

      v356[3] = v62;
      v51 = v317;
    }
  }

  tasksByUniquePid = [*(self + 168) tasksByUniquePid];
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v51, "uniquePid")}];
  v65 = [tasksByUniquePid objectForKeyedSubscript:v64];
  v66 = v65;
  if (v65)
  {
    v67 = v65;
  }

  else
  {
    tasksByPid = [*(self + 168) tasksByPid];
    v69 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v51, "pid")}];
    v67 = [tasksByPid objectForKeyedSubscript:v69];
  }

  v353 = 0u;
  v352 = 0u;
  v351 = 0u;
  v350 = 0u;
  id = v67;
  v70 = [id countByEnumeratingWithState:&v350 objects:v451 count:16];
  if (!v70)
  {
LABEL_280:

    goto LABEL_281;
  }

  v71 = 0;
  v72 = 0;
  v73 = *v351;
LABEL_85:
  v74 = 0;
  while (1)
  {
    if (*v351 != v73)
    {
      objc_enumerationMutation(id);
    }

    v75 = *(*(&v350 + 1) + 8 * v74);
    if (v72)
    {
      break;
    }

    v72 = v75 == v317;
    if (v75 != v317)
    {
      v76 = v75;

      v71 = v76;
    }

    if (v70 == ++v74)
    {
      v70 = [id countByEnumeratingWithState:&v350 objects:v451 count:16];
      if (!v70)
      {

        if (v75 == v317)
        {
          v77 = 0;
          goto LABEL_96;
        }

LABEL_281:
        v219 = *__error();
        v220 = _sa_logt();
        if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
        {
          v221 = [v317 debugDescription];
          v222 = v221;
          uTF8String6 = [v221 UTF8String];
          v224 = [id debugDescription];
          v225 = v224;
          uTF8String7 = [v224 UTF8String];
          *v440 = 136315394;
          *(v6 + 4) = uTF8String6;
          WORD2(v441) = 2080;
          *(v6 + 14) = uTF8String7;
          _os_log_error_impl(&dword_1E0E2F000, v220, OS_LOG_TYPE_ERROR, "%s not in tasksWithSamePid %s", v440, 0x16u);
        }

        *__error() = v219;
        v227 = [v317 debugDescription];
        v228 = v227;
        uTF8String8 = [v227 UTF8String];
        v230 = [id debugDescription];
        v231 = v230;
        _SASetCrashLogMessage(7281, "%s not in tasksWithSamePid %s", uTF8String8, [v230 UTF8String]);

        _os_crash();
        __break(1u);
LABEL_284:
        v232 = *__error();
        v233 = _sa_logt();
        if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
        {
          v234 = [v317 debugDescription];
          v235 = v234;
          uTF8String9 = [v234 UTF8String];
          v237 = v427[3];
          *v440 = 136315394;
          *(v6 + 4) = uTF8String9;
          WORD2(v441) = 2048;
          *(v6 + 14) = v237;
          _os_log_error_impl(&dword_1E0E2F000, v233, OS_LOG_TYPE_ERROR, "%s: %lu numSamples (!hasTimeIndexes, no task states)", v440, 0x16u);
        }

        *__error() = v232;
        v238 = [v317 debugDescription];
        v239 = v238;
        uTF8String10 = [v238 UTF8String];
        _SASetCrashLogMessage(7142, "%s: %lu numSamples (!hasTimeIndexes, no task states)", uTF8String10, v427[3]);

        _os_crash();
        __break(1u);
LABEL_287:
        v241 = *__error();
        v242 = _sa_logt();
        if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
        {
          v243 = [v317 debugDescription];
          v244 = v243;
          uTF8String11 = [v243 UTF8String];
          v246 = v427[3];
          v247 = v376[3];
          *v440 = 136315650;
          *(v6 + 4) = uTF8String11;
          WORD2(v441) = 2048;
          *(v6 + 14) = v246;
          HIWORD(v442) = 2048;
          taskSizeInBytes3 = v247;
          _os_log_error_impl(&dword_1E0E2F000, v242, OS_LOG_TYPE_ERROR, "%s: numSamples %lu >= specialNumSamples %lu", v440, 0x20u);
        }

        *__error() = v241;
        v248 = [v317 debugDescription];
        v249 = v248;
        uTF8String12 = [v248 UTF8String];
        _SASetCrashLogMessage(7189, "%s: numSamples %lu >= specialNumSamples %lu", uTF8String12, v427[3], v376[3]);

        _os_crash();
        __break(1u);
      }

      goto LABEL_85;
    }
  }

  v77 = v75;

LABEL_96:
  v78 = v317;
  if (!v71)
  {
    v306 = 0;
    goto LABEL_103;
  }

  sharedCache = [v71 sharedCache];
  sharedCache2 = [v317 sharedCache];
  v81 = sharedCache2;
  if (sharedCache == sharedCache2)
  {
    endTimestamp2 = [v71 endTimestamp];
    v83 = [endTimestamp2 ge:*(self + 32)];

    if (v83)
    {
      v306 = [(SASamplePrinter *)self displayNameForTask:v71];
      v78 = v317;
      goto LABEL_103;
    }
  }

  else
  {
  }

  v306 = 0;
  v78 = v317;
LABEL_103:
  if (!v77)
  {
LABEL_108:
    v304 = 0;
    goto LABEL_109;
  }

  sharedCache3 = [v77 sharedCache];
  sharedCache4 = [v78 sharedCache];
  v86 = sharedCache4;
  if (sharedCache3 != sharedCache4)
  {

    goto LABEL_108;
  }

  startTimestamp2 = [v77 startTimestamp];
  v88 = [startTimestamp2 le:*(self + 40)];

  if (!v88)
  {
    goto LABEL_108;
  }

  v304 = [(SASamplePrinter *)self displayNameForTask:v77];
LABEL_109:

  v89 = v317;
  startTimestamp3 = [v317 startTimestamp];
  selfCopy3 = self;
  ppid = [v317 ppid];
  if (ppid == -1 || ppid == [v317 pid])
  {
    v303 = 0;
  }

  else
  {
    v93 = [(SASampleStore *)*(self + 168) lastTaskWithPid:ppid onOrBeforeTimestamp:startTimestamp3];
    if (v93)
    {
      v94 = v93;
    }

    else
    {
      v94 = [(SASampleStore *)*(self + 168) firstTaskWithPid:ppid];

      if (!v94)
      {
        selfCopy3 = self;
        v303 = [(SASamplePrinter *)self displayNameForPid:ppid threadId:0 timestamp:startTimestamp3];
        v89 = v317;
        goto LABEL_116;
      }
    }

    v303 = [(SASamplePrinter *)self displayNameForTask:v94];

    v89 = v317;
    selfCopy3 = self;
  }

LABEL_116:
  rpid = [v89 rpid];
  if (rpid < 1 || rpid == [v89 pid])
  {
    v302 = 0;
    goto LABEL_123;
  }

  v96 = [(SASampleStore *)*(selfCopy3 + 168) lastTaskWithPid:rpid onOrBeforeTimestamp:startTimestamp3];
  if (v96)
  {
    v97 = v96;

LABEL_122:
    v302 = [(SASamplePrinter *)self displayNameForTask:v97];

    goto LABEL_123;
  }

  v97 = [(SASampleStore *)*(selfCopy3 + 168) firstTaskWithPid:rpid];

  if (v97)
  {
    goto LABEL_122;
  }

  v302 = [(SASamplePrinter *)self displayNameForPid:rpid threadId:0 timestamp:startTimestamp3];
LABEL_123:

  v98 = v317;
  selfCopy5 = self;
  if ([v317 pid])
  {
    v307 = 0;
  }

  else
  {
    startTimestamp4 = [v317 startTimestamp];
    [startTimestamp4 wallTime];
    v102 = [(SASamplePrinter *)self kernelVersionAtWallTime:v101];

    v98 = v317;
    selfCopy5 = self;
    if (!v102 || (SACopySanitizedString(v102, 1, 0), v307 = objc_claimAutoreleasedReturnValue(), v102, v98 = v317, selfCopy5 = self, !v307))
    {
      v307 = @"???";
    }
  }

  v103 = v402;
  v104 = v402[5];
  if (v104)
  {
    taskSizeInBytes = [v104 taskSizeInBytes];
    specialCopy3 = special;
    v103 = v402;
    if (taskSizeInBytes)
    {
      taskSizeInBytes2 = [v402[5] taskSizeInBytes];
      *v440 = 0;
      v441 = v440;
      v442 = 0x2020000000;
      taskSizeInBytes3 = [v396[5] taskSizeInBytes];
      v107 = *(v441 + 3);
      if (!v107)
      {
        v108 = *(selfCopy5 + 32);
        v109 = *(selfCopy5 + 40);
        v110 = *(selfCopy5 + 56);
        v111 = *(selfCopy5 + 64);
        v349[0] = MEMORY[0x1E69E9820];
        v349[1] = 3221225472;
        v349[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1544;
        v349[3] = &unk_1E86F76D8;
        v349[4] = v440;
        [v98 enumerateTaskStatesBetweenStartTime:v108 startSampleIndex:v110 endTime:v109 endSampleIndex:v111 reverseOrder:1 block:v349];
        v107 = *(v441 + 3);
      }

      v277 = v107;
      _Block_object_dispose(v440, 8);
      v103 = v402;
    }

    else
    {
      taskSizeInBytes2 = 0;
      v277 = 0;
    }
  }

  else
  {
    taskSizeInBytes2 = 0;
    v277 = 0;
    specialCopy3 = special;
  }

  if (v103[5])
  {
    pageins = [v396[5] pageins];
    v276 = pageins - [v402[5] pageins];
  }

  else
  {
    v276 = 0;
  }

  v348 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  if ([*(selfCopy5 + 168) dataSource] != 8 || (objc_msgSend(*(selfCopy5 + 168), "haveKPerfSched") | specialCopy3) == 1)
  {
    if ([*(selfCopy5 + 168) dataStyle] == 1)
    {
      if (!specialCopy3)
      {
        goto LABEL_153;
      }
    }

    else if (![*(selfCopy5 + 168) dataStyle] && (specialCopy3 & 1) == 0)
    {
      goto LABEL_153;
    }

    if ((((v311 | v320) != 0) & specialCopy3) == 0)
    {
      [(SATask *)v98 cpuTimeNs:&v347 cpuInstructions:&v346 cpuCycles:&v345 nonThreadCpuTimeNs:&v344 nonThreadCpuInstructions:&v343 nonThreadCpuCycles:*(selfCopy5 + 32) betweenStartTime:*(selfCopy5 + 40) endTime:?];
    }

    if (((v35 | specialCopy3) & v312) == 1)
    {
      if (v35)
      {
        v113 = *(*&buf[8] + 40);
        v348 -= *(*&buf[8] + 32);
        v347 -= v113;
        v114 = v346 - *(*&buf[8] + 48);
LABEL_152:
        v346 = v114;
        goto LABEL_153;
      }

      if (specialCopy3)
      {
        v115 = *(*&buf[8] + 40);
        v348 = *(*&buf[8] + 32);
        v347 = v115;
        v114 = *(*&buf[8] + 48);
        goto LABEL_152;
      }
    }
  }

LABEL_153:
  v342[0] = 0;
  v342[1] = v342;
  v342[2] = 0x2020000000;
  v342[3] = 0;
  if (!(v311 | v320) || (v35 & 1) != 0 || (specialCopy3 & 1) != 0)
  {
    threads4 = [v98 threads];
    v327[0] = MEMORY[0x1E69E9820];
    v327[1] = 3221225472;
    v327[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_3;
    v327[3] = &unk_1E86F5B80;
    v327[4] = selfCopy5;
    v327[5] = v342;
    [threads4 enumerateKeysAndObjectsUsingBlock:v327];
  }

  else if (v320)
  {
    threads5 = [v98 threads];
    v314 = [threads5 count];

    if (v311)
    {
      v341 = 0u;
      v340 = 0u;
      v339 = 0u;
      v338 = 0u;
      threadStates = [v311 threadStates];
      v118 = [threadStates countByEnumeratingWithState:&v338 objects:v450 count:16];
      if (v118)
      {
        v119 = *v339;
LABEL_160:
        v120 = 0;
        while (1)
        {
          if (*v339 != v119)
          {
            objc_enumerationMutation(threadStates);
          }

          dispatchQueue = [*(*(&v338 + 1) + 8 * v120) dispatchQueue];
          v122 = dispatchQueue == v320;

          if (!v122)
          {
            break;
          }

          if (v118 == ++v120)
          {
            v118 = [threadStates countByEnumeratingWithState:&v338 objects:v450 count:16];
            if (v118)
            {
              goto LABEL_160;
            }

            break;
          }
        }
      }
    }

    else
    {
      v125 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v126 = *(self + 32);
      v127 = *(self + 40);
      v128 = *(self + 56);
      v129 = *(self + 64);
      v336[0] = MEMORY[0x1E69E9820];
      v336[1] = 3221225472;
      v336[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1545;
      v336[3] = &unk_1E86F79A0;
      v130 = v125;
      v337 = v130;
      [(SARecipe *)v320 enumerateStatesBetweenStartTime:v126 startSampleIndex:v128 endTime:v127 endSampleIndex:v129 reverseOrder:0 block:v336];
      v335 = 0u;
      v334 = 0u;
      v333 = 0u;
      v332 = 0u;
      v131 = v130;
      v132 = [v131 countByEnumeratingWithState:&v332 objects:v449 count:16];
      if (v132)
      {
        v133 = *v333;
        do
        {
          for (i = 0; i != v132; ++i)
          {
            if (*v333 != v133)
            {
              objc_enumerationMutation(v131);
            }

            v135 = *(*(&v332 + 1) + 8 * i);
            threads6 = [v317 threads];
            v137 = [threads6 objectForKeyedSubscript:v135];

            v331 = 0u;
            v330 = 0u;
            v329 = 0u;
            v328 = 0u;
            threadStates2 = [v137 threadStates];
            v139 = [threadStates2 countByEnumeratingWithState:&v328 objects:v448 count:16];
            if (v139)
            {
              v140 = *v329;
              while (2)
              {
                for (j = 0; j != v139; ++j)
                {
                  if (*v329 != v140)
                  {
                    objc_enumerationMutation(threadStates2);
                  }

                  dispatchQueue2 = [*(*(&v328 + 1) + 8 * j) dispatchQueue];
                  v143 = dispatchQueue2 == v320;

                  if (!v143)
                  {

                    goto LABEL_185;
                  }
                }

                v139 = [threadStates2 countByEnumeratingWithState:&v328 objects:v448 count:16];
                if (v139)
                {
                  continue;
                }

                break;
              }
            }

            --v314;
LABEL_185:
          }

          v132 = [v131 countByEnumeratingWithState:&v332 objects:v449 count:16];
        }

        while (v132);
      }
    }
  }

  else
  {
    threads7 = [v98 threads];
    [threads7 count];
  }

  selfCopy9 = self;
  v145 = v317;
  v301 = [(SASamplePrinter *)self architectureStringForTask:v317];
  if (v308)
  {
    v146 = objc_alloc(MEMORY[0x1E696AEC0]);
    v147 = [(SASamplePrinter *)self displayNameForTask:v317];
    v308 = [v146 initWithFormat:@"%@ %@", v147, v308];

    v145 = v317;
    selfCopy9 = self;
  }

  else
  {
    v308 = [(SASamplePrinter *)self displayNameForTask:v317];
  }

  if ([v145 pid])
  {
    sharedCache5 = [v317 sharedCache];
    v149 = sharedCache5;
    if (sharedCache5)
    {
      null = sharedCache5;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v299 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{null, 0}];
    selfCopy9 = self;
  }

  else
  {
    v299 = 0;
  }

  if ([v317 resourceCoalitionID])
  {
    v151 = [SASamplePrinter displayStringForResourceCoalition:v317];
    v446 = v151;
    v152 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v427[3]];
    v447 = v152;
    v298 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v447 forKeys:&v446 count:1];

    selfCopy9 = self;
  }

  else
  {
    v298 = 0;
  }

  if ([*(selfCopy9 + 168) dataStyle] == 1 || !objc_msgSend(*(selfCopy9 + 168), "dataStyle"))
  {
    if ([*(selfCopy9 + 168) dataSource] == 8)
    {
      v274 = 0;
      goto LABEL_207;
    }

    v153 = [*(selfCopy9 + 168) dataSource] != 0;
  }

  else
  {
    v153 = 1;
  }

  v274 = v153;
LABEL_207:
  v326 = 0;
  [(SASamplePrinter *)selfCopy9 numIOsForTask:v317 ioSize:&v326];
  if ((v312 & special) == 1)
  {
    *v440 = 0;
    v441 = v440;
    v442 = 0x3032000000;
    taskSizeInBytes3 = __Block_byref_object_copy__4;
    v444 = __Block_byref_object_dispose__4;
    v445 = 0;
    v154 = *(selfCopy9 + 32);
    v155 = *(selfCopy9 + 40);
    v156 = *(selfCopy9 + 56);
    v157 = *(selfCopy9 + 64);
    v325[0] = MEMORY[0x1E69E9820];
    v325[1] = 3221225472;
    v325[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_5;
    v325[3] = &unk_1E86F79F0;
    v325[4] = selfCopy9;
    v325[5] = v440;
    [(SATask *)v317 enumerateThreadStatesForThread:v311 dispatchQueue:v320 betweenStartTime:v154 startSampleIndex:v156 endTime:v155 endSampleIndex:v157 reverseOrder:0 block:v325];
    v158 = *(v441 + 5);
    if (v158 && v158[2])
    {
      v297 = [(SAOnBehalfOfMultiple *)v158 displayStringWithPids:?];
    }

    else
    {
      v297 = 0;
    }

    _Block_object_dispose(v440, 8);
  }

  else
  {
    v439 = v317;
    v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v439 count:1];
    v297 = [(SASamplePrinter *)selfCopy9 displayStringForOnBehalfOfForTasks:v159 includePid:1u];
  }

  v324 = 0u;
  v323 = 0u;
  v321 = 0u;
  v322 = 0u;
  [v317 threads];
  v161 = selfCopy10 = self;
  v162 = [v161 countByEnumeratingWithState:&v321 objects:v438 count:16];
  if (v162)
  {
    v316 = 0;
    v313 = 0;
    v163 = *v322;
    while (1)
    {
      v164 = 0;
      do
      {
        if (*v322 != v163)
        {
          objc_enumerationMutation(v161);
        }

        v165 = [*(selfCopy10 + 152) objectForKeyedSubscript:*(*(&v321 + 1) + 8 * v164)];
        v166 = v165;
        if (v165)
        {
          threadState = [v165 threadState];
          startTimestamp5 = [threadState startTimestamp];
          if ([startTimestamp5 gt:*(self + 40)])
          {

            goto LABEL_222;
          }

          threadState2 = [v166 threadState];
          endTimestamp3 = [threadState2 endTimestamp];
          v171 = [endTimestamp3 lt:*(self + 32)];

          if ((v171 & 1) == 0)
          {
            if ([v166 isPartOfADeadlock])
            {
              thread = [v166 thread];
              threadState3 = [v166 threadState];
              threadState = [(SASamplePrinter *)self displayNameForTask:thread thread:threadState3 threadState:?];

              v174 = v316;
              if (v316)
              {
                goto LABEL_228;
              }

              v316 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState, 0}];
              goto LABEL_222;
            }

            if ([v166 isBlockedByADeadlock])
            {
              thread2 = [v166 thread];
              threadState4 = [v166 threadState];
              threadState = [(SASamplePrinter *)self displayNameForTask:thread2 thread:threadState4 threadState:?];

              v174 = v313;
              if (v313)
              {
LABEL_228:
                [v174 addObject:threadState];
              }

              else
              {
                v313 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{threadState, 0}];
              }

LABEL_222:
            }
          }
        }

        ++v164;
        selfCopy10 = self;
      }

      while (v162 != v164);
      v177 = [v161 countByEnumeratingWithState:&v321 objects:v438 count:16];
      v162 = v177;
      if (!v177)
      {
        goto LABEL_237;
      }
    }
  }

  v316 = 0;
  v313 = 0;
LABEL_237:

  [v316 sortUsingComparator:&__block_literal_global_64];
  [v313 sortUsingComparator:&__block_literal_global_64];
  selfCopy13 = self;
  [(SASamplePrinter *)self taskHasSwallowedAnExceptionNotedByHIException:v317];
  v179 = *(v392 + 6);
  if (v179 == 0x80000000)
  {
    v182 = 0;
  }

  else if (*(v388 + 6) <= v179)
  {
    v182 = SAFormattedBytesEx(v179 << 20, 1, 0, 0, 0x100000uLL);
  }

  else
  {
    v180 = objc_alloc(MEMORY[0x1E696AEC0]);
    v181 = SAFormattedBytesEx(*(v392 + 6) << 20, 1, 0, 0, 0x100000uLL);
    v182 = SAFormattedBytesEx(*(v388 + 6) << 20, 1, 0, 0, 0x100000uLL);
    v182 = [v180 initWithFormat:@"%@ - %@", v181, v182];

    selfCopy13 = self;
  }

  v183 = *(v384 + 6);
  if (v183 == 0x80000000)
  {
    v295 = 0;
  }

  else
  {
    if (*(v380 + 6) <= v183)
    {
      v185 = objc_alloc(MEMORY[0x1E696AEC0]);
      v295 = [v185 initWithFormat:@"%d", *(v384 + 6)];
    }

    else
    {
      v184 = objc_alloc(MEMORY[0x1E696AEC0]);
      v295 = [v184 initWithFormat:@"%d - %d", *(v384 + 6), *(v380 + 6)];
    }

    selfCopy13 = self;
  }

  if (([*(selfCopy13 + 16) printJson] & 1) == 0)
  {
    [*(self + 8) appendString:@"\n\n"];
  }

  v273 = *(self + 8);
  mainBinary = [v317 mainBinary];
  mainBinaryPath = [v317 mainBinaryPath];
  v272 = [v317 uid];
  bundleIdentifier = [v317 bundleIdentifier];
  bundleVersion = [v317 bundleVersion];
  bundleShortVersion = [v317 bundleShortVersion];
  bundleBuildVersion = [v317 bundleBuildVersion];
  bundleProjectName = [v317 bundleProjectName];
  bundleSourceVersion = [v317 bundleSourceVersion];
  bundleProductBuildVersion = [v317 bundleProductBuildVersion];
  adamID = [v317 adamID];
  installerVersionID = [v317 installerVersionID];
  developerType = [v317 developerType];
  appType = [v317 appType];
  isBeta = [v317 isBeta];
  cohortID = [v317 cohortID];
  vendorID = [v317 vendorID];
  distributorID = [v317 distributorID];
  codesigningID = [v317 codesigningID];
  teamID = [v317 teamID];
  forkTimestamp = [v317 forkTimestamp];
  if (v274)
  {
    v275 = *(self + 72);
  }

  else
  {
    v275 = 0;
  }

  v186 = v317;
  v318 = v360[3];
  v268 = v356[3];
  v267 = v427[3];
  v266 = v435[3];
  v265 = v431[3];
  v264 = v416[3];
  v263 = v412[3];
  v262 = v408[3];
  v261 = v348;
  v260 = v347;
  v259 = v346;
  v258 = v345;
  v257 = v344;
  v187 = v343;
  usesSuddenTermination = [v186 usesSuddenTermination];
  allowsIdleExit = [v186 allowsIdleExit];
  isTranslocated = [v186 isTranslocated];
  hardenedHeap = [v186 hardenedHeap];
  if (v186)
  {
    v190 = v186[75];
    v191 = v186[76];
    v192 = v186[77];
    v193 = v186[78];
  }

  else
  {
    v192 = 0;
    v190 = 0;
    v191 = 0;
    v193 = 0;
  }

  [v186 isRunningBoardManaged];
  [v186 isUnresponsive];
  [v186 timeOfLastResponse];
  v195 = v194;
  threads8 = [v186 threads];
  [threads8 count];
  *&v251 = bundleVersion;
  *(&v251 + 1) = bundleShortVersion;
  [SASamplePrinter addTaskHeaderToStream:self displayName:v273 pid:v308 mainBinary:0xFFFFFFFFLL mainBinaryPath:mainBinary sharedCaches:mainBinaryPath uid:v299 bundleIdentifier:v272 bundleVersion:v195 bundleShortVersion:bundleIdentifier bundleBuildVersion:v251 bundleProjectName:bundleBuildVersion bundleSourceVersion:bundleProjectName bundleProductBuildVersion:bundleSourceVersion adamID:bundleProductBuildVersion installerVersionID:adamID developerType:installerVersionID appType:developerType isBeta:appType cohortID:isBeta vendorID:cohortID distributorID:vendorID codesigningID:codesigningID teamID:teamID resourceCoalitionSampleCounts:v298 onBehalfOfProcesses:v297 architectureString:v301 kernelVersion:v307 parentName:v303 responsibleName:v302 taskExecedFromName:v306 taskExecedToName:v304 forkTimestamp:forkTimestamp startTimestamp:startTimestamp endTimestamp:endTimestamp startSampleIndex:v318 endSampleIndex:v268 numSamples:v267 totalNumSamples:v275 numSamplesSuspended:v266 numSamplesTerminated:v265 startingTaskSize:taskSizeInBytes2 endingTaskSize:v277 maxTaskSize:v264 startSampleIndexOfMaxTaskSize:v263 endSampleIndexOfMaxTaskSize:v262 numPageins:v276 cpuTimeNs:v261 cpuInstructions:v260 cpuCycles:v259 nonThreadCpuTimeNs:v258 nonThreadCpuInstructions:v257 nonThreadCpuCycles:v187 usesSuddenTermination:usesSuddenTermination allowsIdleExit:allowsIdleExit memoryLimitStr:v182 jetsamPriorityStr:v295 isTranslocated:isTranslocated hardenedHeap:hardenedHeap mteCheckedAllocationsEnabled:v190 & 1 mteUserDataAllocationsTagged:v191 & 1 mteSoftModeEnabled:v192 & 1 mteInheritanceTurnedOn:v193 & 1 isRunningBoardManaged:? isUnresponsive:? timeOfLastResponse:? numThreads:? numIdleWorkQueueThreads:? numOtherHiddenThreads:? hieSwallowedException:? numSamplesWQExceededConstrainedThreadLimit:? numSamplesWQExceededTotalThreadLimit:? numSamplesWQExceededCooperativeThreadLimit:? numSamplesWQExceededActiveConstrainedThreadLimit:? numSamplesTALEngaged:? isRunawayMitigated:? threadsDeadlocked:? threadsBlockedByADeadlock:? ioSize:? numIOs:? isReportHeader:?];

  v44 = v427[3];
  _Block_object_dispose(v342, 8);

  _Block_object_dispose(&v355, 8);
  _Block_object_dispose(&v359, 8);
LABEL_256:

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v371, 8);
  _Block_object_dispose(&v375, 8);
  _Block_object_dispose(&v379, 8);
  _Block_object_dispose(&v383, 8);
  _Block_object_dispose(&v387, 8);
  _Block_object_dispose(&v391, 8);
  _Block_object_dispose(&v395, 8);

  _Block_object_dispose(&v401, 8);
  _Block_object_dispose(&v407, 8);
  _Block_object_dispose(&v411, 8);
  _Block_object_dispose(&v415, 8);
  _Block_object_dispose(v419, 8);
  _Block_object_dispose(v421, 8);
  _Block_object_dispose(v422, 8);
  _Block_object_dispose(v423, 8);
  _Block_object_dispose(v424, 8);
  _Block_object_dispose(v425, 8);
  _Block_object_dispose(&v426, 8);
  _Block_object_dispose(&v430, 8);
  _Block_object_dispose(&v434, 8);

  return v44;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke(void *a1, void *a2, void *a3, char *a4)
{
  v8 = [a3 sampleCountInSampleIndexRangeStart:*(a1[4] + 56) end:*(a1[4] + 64)];
  *(*(a1[5] + 8) + 24) += v8;
  if ([a3 isSuspended])
  {
    *(*(a1[6] + 8) + 24) += v8;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  [(SAThread *)a2 cpuTimeForThreadStateIndex:a4 inTimestampRangeStart:*(a1[4] + 32) end:*(a1[4] + 40), &v10];
  v9 = v11;
  *(*(a1[7] + 8) + 32) += v10;
  *(*(a1[7] + 8) + 40) += v9;
  *(*(a1[7] + 8) + 48) += v12;
}

void *__103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2(void *a1, void *a2)
{
  result = [a2 sampleCountInSampleIndexRangeStart:*(a1[4] + 56) end:*(a1[4] + 64)];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a2);
  }

  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v9 = *(*(a1[7] + 8) + 24);
  if (v9 && v9 >= [a2 taskSizeInBytes])
  {
    v19 = *(*(a1[7] + 8) + 24);
    if (v19 != [a2 taskSizeInBytes])
    {
      goto LABEL_12;
    }

    v14 = a1 + 9;
    v20 = *(*(a1[9] + 8) + 24) + 1;
    if (v20 != [a2 startSampleIndex])
    {
      goto LABEL_12;
    }

    v21 = [a2 endSampleIndex];
    v13 = *(a1[4] + 64);
    if (v21 < v13)
    {
      v13 = v21;
    }
  }

  else
  {
    *(*(a1[7] + 8) + 24) = [a2 taskSizeInBytes];
    v10 = [a2 startSampleIndex];
    v11 = *(a1[4] + 56);
    if (v10 > v11)
    {
      v11 = v10;
    }

    *(*(a1[8] + 8) + 24) = v11;
    v12 = [a2 endSampleIndex];
    v13 = *(a1[4] + 64);
    if (v12 < v13)
    {
      v13 = v12;
    }

    v14 = a1 + 9;
  }

  *(*(*v14 + 8) + 24) = v13;
LABEL_12:
  *(*(a1[10] + 8) + 24) += v5;
  if ([a2 isSuspended])
  {
    *(*(a1[11] + 8) + 24) += v5;
  }

  if (([a2 isTerminatedSnapshot] & 1) != 0 || objc_msgSend(a2, "transitionIsTerminated"))
  {
    *(*(a1[12] + 8) + 24) += v5;
  }

  if ([a2 wqExceededTotalThreadLimit])
  {
    *(*(a1[13] + 8) + 24) += v5;
  }

  if ([a2 wqExceededConstrainedThreadLimit])
  {
    *(*(a1[14] + 8) + 24) += v5;
  }

  if ([a2 wqExceededCooperativeThreadLimit])
  {
    *(*(a1[15] + 8) + 24) += v5;
  }

  if ([a2 wqExceededActiveConstrainedThreadLimit])
  {
    *(*(a1[16] + 8) + 24) += v5;
  }

  if ([a2 isTALEngaged])
  {
    *(*(a1[17] + 8) + 24) += v5;
  }

  if ([a2 isRunawayMitigated])
  {
    *(*(a1[18] + 8) + 24) = 1;
  }

  if ([a2 memoryLimitMB] != 0x80000000)
  {
    v15 = *(*(a1[19] + 8) + 24);
    if (v15 == 0x80000000 || v15 > [a2 memoryLimitMB])
    {
      *(*(a1[19] + 8) + 24) = [a2 memoryLimitMB];
    }

    v16 = *(*(a1[20] + 8) + 24);
    if (v16 == 0x80000000 || v16 < [a2 memoryLimitMB])
    {
      *(*(a1[20] + 8) + 24) = [a2 memoryLimitMB];
    }
  }

  result = [a2 effectiveJetsamPriority];
  if (result != 0x80000000)
  {
    v17 = *(*(a1[21] + 8) + 24);
    if (v17 == 0x80000000 || v17 > [a2 effectiveJetsamPriority])
    {
      *(*(a1[21] + 8) + 24) = [a2 effectiveJetsamPriority];
    }

    v18 = *(*(a1[22] + 8) + 24);
    if (v18 == 0x80000000 || (result = [a2 effectiveJetsamPriority], v18 < result))
    {
      result = [a2 effectiveJetsamPriority];
      *(*(a1[22] + 8) + 24) = result;
    }
  }

  return result;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1537(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[7];
  v9 = v5[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1538;
  v10[3] = &unk_1E86F7928;
  v16 = *(a1 + 72);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = a3;
  v14 = *(a1 + 32);
  v15 = *(a1 + 56);
  [a3 enumerateThreadStatesBetweenStartTime:v6 startSampleIndex:v8 endTime:v7 endSampleIndex:v9 reverseOrder:0 block:v10];
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1538(uint64_t a1, void *a2)
{
  if (*(a1 + 80) != 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (!v5)
  {
    if (v4 && v4 == *(a1 + 48))
    {
      return;
    }

LABEL_9:
    v7 = [a2 sampleCountInSampleIndexRangeStart:*(*(a1 + 56) + 56) end:*(*(a1 + 56) + 64)];
    *(*(*(a1 + 64) + 8) + 24) += v7;
    if ([a2 isSuspended])
    {
      *(*(*(a1 + 72) + 8) + 24) += v7;
    }

    return;
  }

  if (v4 && v4 != *(a1 + 48))
  {
    goto LABEL_9;
  }

  v6 = [a2 dispatchQueue];

  if (v5 != v6)
  {
    goto LABEL_9;
  }
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1541(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 threadStates];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [a3 threadStates];
    v18 = [v7 firstObject];

    v8 = [v18 startSampleIndex];
    v9 = [a3 threadStates];
    v10 = [v9 lastObject];

    v11 = [v10 endSampleIndex];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 24);
      if (v13 == 0x7FFFFFFFFFFFFFFFLL || v13 > v8)
      {
        *(v12 + 24) = v8;
      }
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 24);
    if (v16 == 0x7FFFFFFFFFFFFFFFLL || v16 < v11)
    {
      *(v15 + 24) = v11;
    }
  }
}

void *__103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_1544(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 taskSizeInBytes];
  if (result)
  {
    result = [a2 taskSizeInBytes];
    *(*(*(a1 + 32) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_2_1545(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v5 = [a2 thread];
  v4 = [v3 numberWithUnsignedLongLong:{objc_msgSend(v5, "threadId")}];
  [v2 addObject:v4];
}

uint64_t __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[7];
  v8 = v4[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_4;
  v10[3] = &unk_1E86F79C8;
  v10[4] = *(a1 + 40);
  return [a3 enumerateThreadStatesBetweenStartTime:v5 startSampleIndex:v7 endTime:v6 endSampleIndex:v8 reverseOrder:0 block:v10];
}

void *__103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isIdleWorkQueue];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    *a4 = 1;
  }

  return result;
}

void __103__SASamplePrinter_printTaskHeaderForTask_specialDispatchQueueId_specialThreadId_omitSpecial_omitOther___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 originPid];
  v6 = [a3 proximatePid];
  v7 = v6;
  if (v5 != -1 || v6 != -1)
  {
    v8 = *(a1 + 32);
    v9 = [a3 endTimestamp];
    v17 = [SASamplePrinter displayNameForPid:v8 aroundTimestamp:v5 includePid:v9];

    v10 = *(a1 + 32);
    v11 = [a3 endTimestamp];
    v12 = [SASamplePrinter displayNameForPid:v10 aroundTimestamp:v7 includePid:v11];

    v13 = *(*(*(a1 + 40) + 8) + 40);
    if (!v13)
    {
      v14 = objc_alloc_init(SAOnBehalfOfMultiple);
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v13 = *(*(*(a1 + 40) + 8) + 40);
    }

    [(SAOnBehalfOfMultiple *)v13 addProximateName:v12 proximatePid:v7 originName:v17 originPid:v5 count:1];
  }
}

- (__CFString)displayNameForPid:(uint64_t)pid aroundTimestamp:(uint64_t)timestamp includePid:(void *)includePid
{
  v75 = *MEMORY[0x1E69E9840];
  if (pid)
  {
    tasksByPid = [*(pid + 168) tasksByPid];
    v7 = 0x1E696A000uLL;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:timestamp];
    v9 = [tasksByPid objectForKeyedSubscript:v8];

    if (includePid)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v11)
      {
        v12 = v11;
        timestampCopy = timestamp;
        v67 = v9;
        endTimestamp = 0;
        lastObject = 0;
        v15 = *v69;
LABEL_5:
        v16 = 0;
        v17 = endTimestamp;
        v18 = lastObject;
        while (1)
        {
          if (*v69 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v68 + 1) + 8 * v16);
          endTimestamp = [v19 endTimestamp];
          if (([endTimestamp ge:includePid] & 1) == 0)
          {
            break;
          }

          lastObject = v19;

          ++v16;
          v17 = endTimestamp;
          v18 = lastObject;
          if (v12 == v16)
          {
            v12 = [v10 countByEnumeratingWithState:&v68 objects:v74 count:16];
            if (v12)
            {
              goto LABEL_5;
            }

            goto LABEL_27;
          }
        }

        if (!v18)
        {
          v18 = v19;
          goto LABEL_26;
        }

        startTimestamp = [v19 startTimestamp];
        if ([startTimestamp le:includePid])
        {
          goto LABEL_14;
        }

        if (v17)
        {
          [v17 machContTimeSeconds];
          if (v30 == 0.0 || ([includePid machContTimeSeconds], v31 == 0.0))
          {
            [v17 machAbsTimeSeconds];
            if (v35 == 0.0 || ([includePid machAbsTimeSeconds], v36 == 0.0))
            {
              [v17 wallTime];
              if (v38 == 0.0)
              {
                goto LABEL_58;
              }

              [includePid wallTime];
              if (v39 == 0.0)
              {
                goto LABEL_58;
              }

              [v17 wallTime];
              v33 = v40;
              [includePid wallTime];
            }

            else
            {
              [v17 machAbsTimeSeconds];
              v33 = v37;
              [includePid machAbsTimeSeconds];
            }
          }

          else
          {
            [v17 machContTimeSeconds];
            v33 = v32;
            [includePid machContTimeSeconds];
          }

          v41 = v33 - v34;
          if (v41 >= 0.0)
          {
            v42 = v41;
          }

          else
          {
            v42 = -v41;
          }

          if (v41 != 0.0)
          {
            [startTimestamp machContTimeSeconds];
            if (v43 == 0.0 || ([includePid machContTimeSeconds], v44 == 0.0))
            {
              [startTimestamp machAbsTimeSeconds];
              if (v48 == 0.0 || ([includePid machAbsTimeSeconds], v49 == 0.0))
              {
                [startTimestamp wallTime];
                if (v51 == 0.0)
                {
                  goto LABEL_58;
                }

                [includePid wallTime];
                if (v52 == 0.0)
                {
                  goto LABEL_58;
                }

                [startTimestamp wallTime];
                v46 = v53;
                [includePid wallTime];
              }

              else
              {
                [startTimestamp machAbsTimeSeconds];
                v46 = v50;
                [includePid machAbsTimeSeconds];
              }
            }

            else
            {
              [startTimestamp machContTimeSeconds];
              v46 = v45;
              [includePid machContTimeSeconds];
            }

            v54 = v46 - v47;
            if (v54 != 0.0)
            {
              if (v54 < 0.0)
              {
                v54 = -v54;
              }

              if (v42 < v54)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }

LABEL_58:
          if ([v17 machContTime] && objc_msgSend(includePid, "machContTime"))
          {
            machContTime = [v17 machContTime];
            machContTime2 = [includePid machContTime];
          }

          else
          {
            if (![v17 machAbsTime] || !objc_msgSend(includePid, "machAbsTime"))
            {
              goto LABEL_14;
            }

            machContTime = [v17 machAbsTime];
            machContTime2 = [includePid machAbsTime];
          }

          if (machContTime - machContTime2 >= 0)
          {
            v57 = machContTime - machContTime2;
          }

          else
          {
            v57 = machContTime2 - machContTime;
          }

          if (machContTime != machContTime2)
          {
            if ([startTimestamp machContTime] && objc_msgSend(includePid, "machContTime"))
            {
              machContTime3 = [startTimestamp machContTime];
              machContTime4 = [includePid machContTime];
              goto LABEL_74;
            }

            if ([startTimestamp machAbsTime] && objc_msgSend(includePid, "machAbsTime"))
            {
              machContTime3 = [startTimestamp machAbsTime];
              machContTime4 = [includePid machAbsTime];
LABEL_74:
              v60 = machContTime3 - machContTime4;
              if (machContTime3 - machContTime4 < 0)
              {
                v60 = machContTime4 - machContTime3;
              }

              if (v57 < v60)
              {
                goto LABEL_15;
              }
            }
          }

LABEL_14:
          v21 = v19;

          v18 = v21;
LABEL_15:

LABEL_26:
          endTimestamp = v17;
          lastObject = v18;
LABEL_27:

          v9 = v67;
          timestamp = timestampCopy;
          v7 = 0x1E696A000;
          goto LABEL_28;
        }

        v61 = *__error();
        v62 = _sa_logt();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = [v10 debugDescription];
          uTF8String = [v63 UTF8String];
          *buf = 136315138;
          v73 = uTF8String;
          _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "no earlierTaskEndTimestamp in %s", buf, 0xCu);
        }

        *__error() = v61;
        v65 = [v10 debugDescription];
        _SASetCrashLogMessage(14008, "no earlierTaskEndTimestamp in %s", [v65 UTF8String]);

        _os_crash();
        __break(1u);
        goto LABEL_85;
      }

      lastObject = 0;
LABEL_28:

      if (lastObject)
      {
        goto LABEL_29;
      }
    }

    else
    {
      lastObject = [v9 lastObject];
      if (lastObject)
      {
LABEL_29:
        v28 = [(SASamplePrinter *)pid displayNameForTask:lastObject includePid:0];
LABEL_30:

        goto LABEL_31;
      }
    }

    Property = *(pid + 168);
    if (Property)
    {
      Property = objc_getProperty(Property, v22, 1128, 1);
    }

    v24 = Property;
    v25 = [*(v7 + 3480) numberWithInt:timestamp];
    v26 = [v24 objectForKeyedSubscript:v25];

    if (!v26)
    {
      v27 = @"UNKNOWN";
      if (!timestamp)
      {
        v27 = @"kernel_task";
      }

      v26 = v27;
    }

    v28 = v26;

    goto LABEL_30;
  }

LABEL_85:
  v28 = 0;
LABEL_31:

  return v28;
}

uint64_t __1459__SASamplePrinter_addTaskHeaderToStream_displayName_pid_mainBinary_mainBinaryPath_sharedCaches_uid_bundleIdentifier_bundleVersion_bundleShortVersion_bundleBuildVersion_bundleProjectName_bundleSourceVersion_bundleProductBuildVersion_adamID_installerVersionID_developerType_appType_isBeta_cohortID_vendorID_distributorID_codesigningID_teamID_resourceCoalitionSampleCounts_onBehalfOfProcesses_architectureString_kernelVersion_parentName_responsibleName_taskExecedFromName_taskExecedToName_forkTimestamp_startTimestamp_endTimestamp_startSampleIndex_endSampleIndex_numSamples_totalNumSamples_numSamplesSuspended_numSamplesTerminated_startingTaskSize_endingTaskSize_maxTaskSize_startSampleIndexOfMaxTaskSize_endSampleIndexOfMaxTaskSize_numPageins_cpuTimeNs_cpuInstructions_cpuCycles_nonThreadCpuTimeNs_nonThreadCpuInstructions_nonThreadCpuCycles_usesSuddenTermination_allowsIdleExit_memoryLimitStr_jetsamPriorityStr_isTranslocated_hardenedHeap_mteCheckedAllocationsEnabled_mteUserDataAllocationsTagged_mteSoftModeEnabled_mteInheritanceTurnedOn_isRunningBoardManaged_isUnresponsive_timeOfLastResponse_numThreads_numIdleWorkQueueThreads_numOtherHiddenThreads_hieSwallowedException_numSamplesWQExceededConstrainedThreadLimit_numSamplesWQExceededTotalThreadLimit_numSamplesWQExceededCooperativeThreadLimit_numSamplesWQExceededActiveConstrainedThreadLimit_numSamplesTALEngaged_isRunawayMitigated_threadsDeadlocked_threadsBlockedByADeadlock_ioSize_numIOs_isReportHeader___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = [v6 compare:v7];

  if (v8)
  {
    return v8;
  }

  return [a2 compare:a3 options:577];
}

- (__CFString)timeIndexDescriptionForStartSampleIndex:(unint64_t)index endSampleIndex:(int)sampleIndex formattedToLength:
{
  v48 = *MEMORY[0x1E69E9840];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_1F5BBF440;
    goto LABEL_76;
  }

  if (a2 != 0x7FFFFFFFFFFFFFFFLL && a2 > index)
  {
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v45 = a2;
      v46 = 2048;
      indexCopy = index;
      _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "startSampleIndex %lu > endSampleIndex %lu", buf, 0x16u);
    }

    *__error() = v38;
    _SASetCrashLogMessage(13794, "startSampleIndex %lu > endSampleIndex %lu", a2, index);
    _os_crash();
    __break(1u);
  }

  v8 = *(self + 64);
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 <= index)
    {
      goto LABEL_7;
    }
  }

  else if (v8 < a2)
  {
LABEL_7:
    if (!sampleIndex)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (*(self + 48) == 1)
      {
        v10 = *(self + 64);
        forceOneBasedTimeIndexes = [*(self + 16) forceOneBasedTimeIndexes];
        v12 = v10 + 1;
        if (forceOneBasedTimeIndexes)
        {
          v12 -= *(self + 56);
        }
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v40 = v12;
      v23 = @"after time index %lu";
LABEL_38:
      v24 = v9;
LABEL_75:
      v4 = [v24 initWithFormat:v23, v40, v41, v42, v43];
      goto LABEL_76;
    }

    goto LABEL_33;
  }

  if (*(self + 56) > index)
  {
    if (!sampleIndex)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (*(self + 48) == 1)
      {
        v13 = *(self + 56);
        forceOneBasedTimeIndexes2 = [*(self + 16) forceOneBasedTimeIndexes];
        v15 = v13 + 1;
        if (forceOneBasedTimeIndexes2)
        {
          v15 -= *(self + 56);
        }
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v40 = v15;
      v23 = @"before time index %lu";
      goto LABEL_38;
    }

LABEL_33:
    v4 = @"No samples";
    goto LABEL_76;
  }

  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (sampleIndex)
    {
      if (sampleIndex >> 1 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = sampleIndex >> 1;
      }

      v18 = (sampleIndex & 1) == 0 && sampleIndex > 3;
      v19 = (v16 - v18);
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (a2 == index)
      {
        if (*(self + 48))
        {
          forceOneBasedTimeIndexes3 = [*(self + 16) forceOneBasedTimeIndexes];
          v22 = index + 1;
          if (forceOneBasedTimeIndexes3)
          {
            v22 -= *(self + 56);
          }
        }

        else
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v42 = v16;
        v43 = v22;
        v40 = v19;
        v41 = "";
        v23 = @"%*s %-*lu";
      }

      else
      {
        if (*(self + 48))
        {
          v29 = a2 + 1;
          if ([*(self + 16) forceOneBasedTimeIndexes])
          {
            v29 -= *(self + 56);
          }
        }

        else
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(self + 48) == 1)
        {
          forceOneBasedTimeIndexes4 = [*(self + 16) forceOneBasedTimeIndexes];
          v34 = index + 1;
          if (forceOneBasedTimeIndexes4)
          {
            v34 -= *(self + 56);
          }
        }

        else
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v42 = v16;
        v43 = v34;
        v40 = v19;
        v41 = v29;
        v23 = @"%*lu-%-*lu";
      }
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (a2 == index)
      {
        if (*(self + 48))
        {
          forceOneBasedTimeIndexes5 = [*(self + 16) forceOneBasedTimeIndexes];
          v26 = index + 1;
          if (forceOneBasedTimeIndexes5)
          {
            v26 -= *(self + 56);
          }
        }

        else
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v40 = v26;
        v23 = @"at time index %lu";
      }

      else
      {
        if (*(self + 48))
        {
          v30 = a2 + 1;
          if ([*(self + 16) forceOneBasedTimeIndexes])
          {
            v30 -= *(self + 56);
          }
        }

        else
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(self + 48) == 1)
        {
          forceOneBasedTimeIndexes6 = [*(self + 16) forceOneBasedTimeIndexes];
          v36 = index + 1;
          if (forceOneBasedTimeIndexes6)
          {
            v36 -= *(self + 56);
          }
        }

        else
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v40 = v30;
        v41 = v36;
        v23 = @"at time indexes %lu-%lu";
      }
    }

    v24 = v20;
    goto LABEL_75;
  }

  if (sampleIndex)
  {
    goto LABEL_33;
  }

  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(self + 48) == 1)
  {
    v28 = index + 1;
    if ([*(self + 16) forceOneBasedTimeIndexes])
    {
      v28 -= *(self + 56);
    }
  }

  else
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (*(self + 48) == 1)
  {
    forceOneBasedTimeIndexes7 = [*(self + 16) forceOneBasedTimeIndexes];
    v32 = index + 2;
    if (forceOneBasedTimeIndexes7)
    {
      v32 -= *(self + 56);
    }
  }

  else
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [v27 initWithFormat:@"between time indexes %lu and %lu", v28, v32, v42, v43];
LABEL_76:

  return v4;
}

- (__CFString)timeIndexDescriptionForTimestamp:(uint64_t)timestamp
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(timestamp + 48) != 1)
  {
    v12 = &stru_1F5BBF440;
    goto LABEL_46;
  }

  if ([a2 lt:*(timestamp + 32)])
  {
    [*(timestamp + 32) machAbsTimeSeconds];
    v5 = v4;
    [a2 machAbsTimeSeconds];
    v7 = v5 - v6;
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v7 >= 0.1)
    {
      if (*(timestamp + 48))
      {
        v20 = *(timestamp + 56);
        forceOneBasedTimeIndexes = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v22 = v20 + 1;
        if (forceOneBasedTimeIndexes)
        {
          v22 -= *(timestamp + 56);
        }
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v42 = v22;
      v41 = v7;
      v28 = @"%.1fs before time index %lu";
    }

    else
    {
      if (*(timestamp + 48))
      {
        v9 = *(timestamp + 56);
        forceOneBasedTimeIndexes2 = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v11 = v9 + 1;
        if (forceOneBasedTimeIndexes2)
        {
          v11 -= *(timestamp + 56);
        }
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v41 = *&v11;
      v28 = @"<0.1s before time index %lu";
    }
  }

  else
  {
    if (![a2 gt:*(timestamp + 40)])
    {
      v23 = [*(timestamp + 168) indexOfLastSampleOnOrBeforeTimestamp:a2];
      v24 = [*(timestamp + 168) indexOfFirstSampleOnOrAfterTimestamp:a2];
      if (v23 > v24)
      {
        v37 = *__error();
        v38 = _sa_logt();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [a2 debugDescription];
          *buf = 134218498;
          v44 = v23;
          v45 = 2048;
          v46 = v24;
          v47 = 2080;
          uTF8String = [v39 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_ERROR, "indexBefore %lu > indexAfter %lu for %s", buf, 0x20u);
        }

        *__error() = v37;
        v40 = [a2 debugDescription];
        _SASetCrashLogMessage(13933, "indexBefore %lu > indexAfter %lu for %s", v23, v24, [v40 UTF8String]);

        _os_crash();
        __break(1u);
      }

      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v24 == v23)
      {
        if (*(timestamp + 48))
        {
          forceOneBasedTimeIndexes3 = [*(timestamp + 16) forceOneBasedTimeIndexes];
          v27 = v23 + 1;
          if (forceOneBasedTimeIndexes3)
          {
            v27 -= *(timestamp + 56);
          }
        }

        else
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v41 = *&v27;
        v28 = @"at time index %lu";
      }

      else
      {
        if (*(timestamp + 48))
        {
          v32 = v23 + 1;
          if ([*(timestamp + 16) forceOneBasedTimeIndexes])
          {
            v32 -= *(timestamp + 56);
          }
        }

        else
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(timestamp + 48) == 1)
        {
          forceOneBasedTimeIndexes4 = [*(timestamp + 16) forceOneBasedTimeIndexes];
          v35 = v24 + 1;
          if (forceOneBasedTimeIndexes4)
          {
            v35 -= *(timestamp + 56);
          }
        }

        else
        {
          v35 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v41 = *&v32;
        v42 = v35;
        v28 = @"between time indexes %lu and %lu";
      }

      v33 = v25;
      goto LABEL_45;
    }

    [a2 machAbsTimeSeconds];
    v14 = v13;
    [*(timestamp + 40) machAbsTimeSeconds];
    v16 = v14 - v15;
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v16 >= 0.1)
    {
      if (*(timestamp + 48))
      {
        v29 = *(timestamp + 64);
        forceOneBasedTimeIndexes5 = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v31 = v29 + 1;
        if (forceOneBasedTimeIndexes5)
        {
          v31 -= *(timestamp + 56);
        }
      }

      else
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v42 = v31;
      v41 = v16;
      v28 = @"%.1fs after time index %lu";
    }

    else
    {
      if (*(timestamp + 48))
      {
        v17 = *(timestamp + 64);
        forceOneBasedTimeIndexes6 = [*(timestamp + 16) forceOneBasedTimeIndexes];
        v19 = v17 + 1;
        if (forceOneBasedTimeIndexes6)
        {
          v19 -= *(timestamp + 56);
        }
      }

      else
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v41 = *&v19;
      v28 = @"<0.1s after time index %lu";
    }
  }

  v33 = v8;
LABEL_45:
  v12 = [v33 initWithFormat:v28, *&v41, v42];
LABEL_46:

  return v12;
}

- (id)displayedBinaryLoadInfoForBinary:(uint64_t)binary segment:(void *)segment desiredLoadAddress:(uint64_t)address offsetIntoLoadInfo:(unint64_t)info isInKernelAddressSpace:(char)space exclave:(void *)exclave binariesToDisplay:(void *)display extraBinariesToDisplay:(void *)toDisplay
{
  v71 = *MEMORY[0x1E69E9840];
  if (display == toDisplay)
  {
    toDisplayCopy = 0;
  }

  else
  {
    toDisplayCopy = toDisplay;
  }

  v13 = toDisplayCopy;
  displayCopy = display;
  v14 = [display objectForKeyedSubscript:binary];
  v59 = v13;
  binaryCopy = binary;
  v15 = [v13 objectForKeyedSubscript:binary];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v17)
  {
    v18 = *v65;
    while (2)
    {
      for (i = 0; i != v17; i = (i + 1))
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v64 + 1) + 8 * i);
        segment = [v20 segment];
        v22 = segment;
        if (segment == segment)
        {
          exclave = [v20 exclave];

          if (exclave == exclave)
          {
            v17 = v20;
            v24 = 1;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_16:

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (!v26)
  {
    v34 = 0;
LABEL_33:

    if (!v17)
    {
      v37 = [SABinaryLoadInfoToDisplay alloc];
      if (v37)
      {
        *v68 = v37;
        *&v68[8] = SABinaryLoadInfoToDisplay;
        v38 = objc_msgSendSuper2(v68, sel_initWithBinary_segment_loadAddress_, binaryCopy, segment, address);
        v17 = v38;
        if (v38)
        {
          *(v38 + 40) = space;
          objc_storeStrong(v38 + 4, exclave);
        }
      }

      else
      {
        v17 = 0;
      }
    }

    infoCopy2 = info;
    v35 = v59;
    goto LABEL_38;
  }

  v27 = v26;
  v55 = v24;
  v56 = v17;
  v28 = *v61;
LABEL_18:
  v29 = 0;
  while (1)
  {
    if (*v61 != v28)
    {
      objc_enumerationMutation(v25);
    }

    v30 = *(*(&v60 + 1) + 8 * v29);
    segment2 = [v30 segment];
    v32 = segment2;
    if (segment2 == segment)
    {
      break;
    }

LABEL_24:
    if (v27 == ++v29)
    {
      v27 = [v25 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v27)
      {
        goto LABEL_18;
      }

      v34 = 0;
      v17 = v56;
      goto LABEL_32;
    }
  }

  exclave2 = [v30 exclave];

  if (exclave2 != exclave)
  {
    goto LABEL_24;
  }

  v17 = v56;
  if (!v56)
  {
    v17 = v30;
    v34 = 1;
LABEL_32:
    v24 = v55;
    goto LABEL_33;
  }

  if (v56 != v30)
  {
    v43 = *__error();
    v44 = _sa_logt();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [v56 debugDescription];
      uTF8String = [v45 UTF8String];
      v47 = [v30 debugDescription];
      uTF8String2 = [v47 UTF8String];
      *v68 = 136315394;
      *&v68[4] = uTF8String;
      *&v68[12] = 2080;
      *&v68[14] = uTF8String2;
      _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "mismatch between binaries and extra binaries: %s vs %s", v68, 0x16u);
    }

    *__error() = v43;
    v49 = [v56 debugDescription];
    uTF8String3 = [v49 UTF8String];
    v51 = [v30 debugDescription];
    _SASetCrashLogMessage(8549, "mismatch between binaries and extra binaries: %s vs %s", uTF8String3, [v51 UTF8String]);

    _os_crash();
    __break(1u);
  }

  v34 = 1;
  infoCopy2 = info;
  v35 = v59;
  v24 = v55;
LABEL_38:
  if ([v17 highestOffset] < infoCopy2)
  {
    [v17 setHighestOffset:infoCopy2];
  }

  if ((v24 & 1) == 0)
  {
    if (v16)
    {
      [v16 addObject:v17];
    }

    else
    {
      v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
      [displayCopy setObject:v39 forKeyedSubscript:binaryCopy];
    }
  }

  if (v35)
  {
    v40 = v34;
  }

  else
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    if (v25)
    {
      [v25 addObject:v17];
    }

    else
    {
      v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
      [v35 setObject:v41 forKeyedSubscript:binaryCopy];
    }
  }

  return v17;
}

void __50__SASamplePrinter_sortedLoadInfosForBinaryImages___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a3 count] == 1)
  {
    v17 = [a3 firstObject];
    if (([*(*(a1 + 32) + 16) displayAllBinaries] & 1) == 0)
    {
      v5 = [v17 segment];
      if (v5)
      {
        v6 = v5;
        v7 = [v17 segment];
        if ([v7 hasOffsetIntoBinary])
        {
          v8 = [v17 segment];
          v9 = [v8 offsetIntoBinary];

          if (!v9)
          {
            v10 = v17;
            v11 = 1;
LABEL_17:
            [v10 setIsZerothAndOnlySegment:v11];
            [*(a1 + 40) addObject:v17];

            return;
          }
        }

        else
        {
        }
      }
    }

    v10 = v17;
    v11 = 0;
    goto LABEL_17;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = a3;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * i) setIsZerothAndOnlySegment:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [*(a1 + 40) addObjectsFromArray:v12];
}

uint64_t __50__SASamplePrinter_sortedLoadInfosForBinaryImages___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a2 isInKernelAddressSpace] && !objc_msgSend(a3, "isInKernelAddressSpace"))
  {
    return 1;
  }

  if ([a2 isInKernelAddressSpace] & 1) == 0 && (objc_msgSend(a3, "isInKernelAddressSpace"))
  {
    return -1;
  }

  v5 = [a2 loadAddress];
  v6 = [a3 loadAddress];
  if (v5)
  {
    if (v6 - 1 >= v5)
    {
      return -1;
    }

    if (v5 > v6)
    {
      return 1;
    }
  }

  else if (v6)
  {
    return 1;
  }

  *uu1 = 0;
  v22 = 0;
  *uu2 = 0;
  v20 = 0;
  v8 = [a2 binary];
  v9 = [v8 uuid];
  [v9 getUUIDBytes:uu1];

  v10 = [a3 binary];
  v11 = [v10 uuid];
  [v11 getUUIDBytes:uu2];

  v12 = uuid_compare(uu1, uu2);
  if (v12 > 0)
  {
    return -1;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v14 = [a2 segment];
    v15 = [v14 name];

    v16 = [a3 segment];
    v17 = [v16 name];

    if (![v15 length])
    {

      v15 = 0;
    }

    if ([v17 length])
    {
      v18 = v15 != 0;
      if (v15 && v17)
      {
        v7 = [v15 compare:v17 options:577];
LABEL_25:

        return v7;
      }
    }

    else
    {

      v17 = 0;
      v18 = v15 != 0;
    }

    if (v18)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_25;
  }

  return 1;
}

void __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a2 binary];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = [a2 segment];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) segment];

        if (v12 == v6)
        {

          goto LABEL_13;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [v7 addObject:a2];
LABEL_13:
}

void __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_2(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_3;
  v12[3] = &unk_1E86F7AB0;
  v13 = *(a1 + 40);
  [(SATask *)a2 enumerateFrames:v12];
  v4 = [a2 mainBinaryLoadInfo];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [v4 binary];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (!v8)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v9 = [a2 mainBinary];
    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v9 loadAddress:0 isInKernelAddressSpace:1 exclave:0];
        (*(*(a1 + 40) + 16))();
      }
    }
  }
}

void __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 24));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      (*(*(a1 + 32) + 16))();
      WeakRetained = v5;
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

uint64_t __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v12 = 0;
  *uu2 = 0;
  v10 = 0;
  v4 = [a2 uuid];
  [v4 getUUIDBytes:uu1];

  v5 = [a3 uuid];
  [v5 getUUIDBytes:uu2];

  v6 = uuid_compare(uu1, uu2);
  v7 = v6 >> 31;
  if (v6 >= 1)
  {
    return 1;
  }

  return v7;
}

uint64_t __52__SASamplePrinter_printSystemStatsStyleBinaryImages__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 segment];
  v5 = [a3 segment];
  v6 = v5;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else if (v4)
  {
    if (v5)
    {
      v7 = [v4 name];
      v8 = [v6 name];
      v9 = [v7 compare:v8 options:577];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 80);
    v8 = [v5 containsObject:a2];
    if (v7 == 1)
    {
      if ((v8 & 1) == 0)
      {
        return;
      }

LABEL_14:
      v11 = *(a1 + 48);
      v10 = *(a1 + 56);
      v12 = v11[4];
      v13 = v11[5];
      v14 = v11[7];
      v15 = v11[8];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2;
      v17[3] = &unk_1E86F7B20;
      v17[4] = *(a1 + 32);
      v17[5] = v11;
      v16 = *(a1 + 64);
      v17[6] = a3;
      v17[7] = v10;
      v18 = v16;
      v19 = *(a1 + 72);
      [a3 enumerateThreadStatesBetweenStartTime:v12 startSampleIndex:v14 endTime:v13 endSampleIndex:v15 reverseOrder:0 block:v17];

      return;
    }

    if (!v8 || ![(SASamplePrinter *)*(a1 + 48) shouldPrintTask:a3 thread:0 dispatchQueue:?])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ((!v5 || [v5 containsObject:a2]) && -[SASamplePrinter shouldPrintTask:thread:dispatchQueue:](*(a1 + 48), *(a1 + 56), a3, 0))
  {
LABEL_12:
    v9 = *(a1 + 48);
    if (v9)
    {
      [(SASamplePrinter *)v9 addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 56) task:*(a1 + 64) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:*(a1 + 72) microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }
}

void __110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AD98];
  v7 = [a2 dispatchQueue];
  v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v7, "identifier")}];
  LODWORD(v5) = [v5 containsObject:v8];

  if (v5)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v13[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    if (v10)
    {
      [(SASamplePrinter *)v10 addStackForDispatchQueue:0 orSwiftTaskStates:v9 orThread:v12 andThreadStateIndexes:*(a1 + 56) task:*(a1 + 64) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:*(a1 + 72) microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }
}

void *__110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_1998(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 unsignedIntValue];
  result = [a3 unsignedLongValue];
  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 24) < result)
  {
    *(v7 + 24) = result;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  return result;
}

void *__110__SASamplePrinter_printSingleStackForTasks_limitToDispatchQueueIds_limitToThreadIds_intersection_sampleCount___block_invoke_2_2000(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 unsignedLongLongValue];
  result = [a3 unsignedLongValue];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  if (v8 < result)
  {
    *(v7 + 24) = result;
    v9 = (*(*(a1 + 40) + 8) + 32);
LABEL_3:
    *v9 = v5;
    return result;
  }

  if (v8 == result)
  {
    v10 = *(*(a1 + 40) + 8);
    v12 = *(v10 + 32);
    v9 = (v10 + 32);
    v11 = v12;
    v13 = WORD2(v12);
    if (WORD2(v12) < WORD2(v5))
    {
      goto LABEL_3;
    }

    if (v13 <= WORD2(v5))
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        if ((v5 & 0x1000000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x400000000000000) != 0)
      {
        if ((v5 & 0x400000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x400000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x800000000000000) != 0)
      {
        if ((v5 & 0x800000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x800000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x100000000000000) != 0)
      {
        if ((v5 & 0x100000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x100000000000000) != 0)
      {
        goto LABEL_3;
      }

      if ((v11 & 0x200000000000000) != 0)
      {
        if ((v5 & 0x200000000000000) == 0)
        {
          return result;
        }
      }

      else if ((v5 & 0x200000000000000) != 0)
      {
        goto LABEL_3;
      }

      if (BYTE6(v11))
      {
        if (!BYTE6(v5))
        {
          return result;
        }

        if ((BYTE6(v11) - 1) != (BYTE6(v5) - 1))
        {
          if ((BYTE6(v11) - 1) < (BYTE6(v5) - 1))
          {
            goto LABEL_3;
          }

          return result;
        }
      }

      else if ((v5 & 0xFF000000000000) != 0)
      {
        goto LABEL_3;
      }

      if (v11 < v5)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

- (id)stacksForTask:(uint64_t)task taskSampleCount:
{
  selfCopy = self;
  v55 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = selfCopy[2];
    if (v7)
    {
      v8 = v7[19];
      if (v8)
      {
        goto LABEL_8;
      }

      if (*(v7 + 11) == 1)
      {
        do
        {
          task = *__error();
          v6 = _sa_logt();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v9 = [selfCopy[2] debugDescription];
            uTF8String = [v9 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "stacksForTask without kSAAggregateCallTreesByProcess: %s", buf, 0xCu);
          }

          *__error() = task;
          selfCopy = [selfCopy[2] debugDescription];
          _SASetCrashLogMessage(9379, "stacksForTask without kSAAggregateCallTreesByProcess: %s", [selfCopy UTF8String]);

          _os_crash();
          __break(1u);
LABEL_8:
          ;
        }

        while (v8 == 3);
      }
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = selfCopy[2];
    if (!v12 || v12[20] != 1 && (v13 = v12[19], v13 != 3) && (v13 || (*(v12 + 11) & 1) == 0))
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      swiftTasks = [a2 swiftTasks];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke;
      v47[3] = &unk_1E86F7E80;
      v47[4] = selfCopy;
      v48 = v14;
      v16 = v14;
      [swiftTasks enumerateKeysAndObjectsUsingBlock:v47];

      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_3;
      v50 = &unk_1E86F7EC8;
      v51 = selfCopy;
      v18 = v17;
      v52 = v18;
      v53 = a2;
      taskCopy = task;
      [v16 enumerateKeysAndObjectsUsingBlock:buf];
      v19 = v18;

      [v11 addObjectsFromArray:v19];
      v12 = selfCopy[2];
      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v20 = v12[19];
    if (v20)
    {
      if (v20 != 1)
      {
        if (v20 == 2)
        {
          threads = [a2 threads];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke;
          v45[3] = &unk_1E86F7B98;
          v45[4] = selfCopy;
          v45[5] = a2;
          v22 = v46;
          v46[0] = v11;
          v46[1] = task;
          [threads enumerateKeysAndObjectsUsingBlock:v45];

LABEL_21:
          callTreeSortAttributes = [selfCopy[2] callTreeSortAttributes];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2048;
          v38[3] = &unk_1E86F7C38;
          v39 = callTreeSortAttributes;
          v27 = callTreeSortAttributes;
          [v11 sortUsingComparator:v38];
          selfCopy = [v11 copy];

          objc_autoreleasePoolPop(v6);
          goto LABEL_22;
        }

LABEL_25:
        v29 = *__error();
        v30 = _sa_logt();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = selfCopy[2];
          if (v31)
          {
            v32 = v31[19];
            if (!v32)
            {
              if (*(v31 + 11))
              {
                v32 = 3;
              }

              else
              {
                v32 = 1;
              }
            }
          }

          else
          {
            v32 = 0;
          }

          v33 = [v31 debugDescription];
          uTF8String2 = [v33 UTF8String];
          *buf = 134218242;
          *&buf[4] = v32;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String2;
          _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "stacksForTask with not kSAAggregateCallTreesByDispatchQueue nor Thread %llu: %s", buf, 0x16u);
        }

        *__error() = v29;
        v35 = selfCopy[2];
        callTreeAggregationResolved = [(SASamplePrintOptions *)v35 callTreeAggregationResolved];
        v37 = [v35 debugDescription];
        _SASetCrashLogMessage(9406, "stacksForTask with not kSAAggregateCallTreesByDispatchQueue nor Thread %llu: %s", callTreeAggregationResolved, [v37 UTF8String]);

        _os_crash();
        __break(1u);
      }
    }

    else if (*(v12 + 11))
    {
      goto LABEL_25;
    }

    dispatchQueues = [a2 dispatchQueues];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2;
    v43[3] = &unk_1E86F7BC0;
    v43[4] = selfCopy;
    v43[5] = a2;
    v22 = v44;
    v24 = v11;
    v44[0] = v24;
    v44[1] = task;
    [dispatchQueues enumerateKeysAndObjectsUsingBlock:v43];

    threads2 = [a2 threads];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3;
    v40[3] = &unk_1E86F7B98;
    v40[4] = selfCopy;
    v40[5] = a2;
    v41 = v24;
    taskCopy2 = task;
    [threads2 enumerateKeysAndObjectsUsingBlock:v40];

    goto LABEL_21;
  }

LABEL_22:

  return selfCopy;
}

- (void)printStack:(void *)stack stream:
{
  selfCopy = self;
  v240 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_295;
  }

  v6 = objc_getProperty(self, self, 56, 1);
  v8 = objc_getProperty(selfCopy, v7, 40, 1);
  v10 = objc_getProperty(selfCopy, v9, 48, 1);
  v11 = *(selfCopy + 11);
  v210 = objc_getProperty(selfCopy, v12, 64, 1);
  v197 = *(selfCopy + 12);
  v198 = *(selfCopy + 4);
  v190 = *(selfCopy + 9);
  v187 = *(selfCopy + 10);
  v14 = objc_getProperty(selfCopy, v13, 88, 1);
  v202 = selfCopy[4];
  v194 = selfCopy[5];
  v199 = selfCopy[6];
  v188 = selfCopy[7];
  v204 = *(selfCopy + 12);
  v205 = v14;
  v189 = *(selfCopy + 13);
  v201 = *(selfCopy + 13);
  v193 = *(selfCopy + 14);
  v195 = *(selfCopy + 14);
  v196 = *(selfCopy + 17);
  v203 = *(selfCopy + 18);
  v16 = *(selfCopy + 19);
  for (i = *(selfCopy + 20); ; i = 0.0)
  {
    context = objc_autoreleasePoolPush();
    stackCopy = stack;
    v208 = v6;
    selfCopy2 = self;
    v206 = v10;
    v207 = v8;
    if ([*(self + 16) printJson])
    {
      [stack appendString:@"\n\n"];
      if (![v6 count] && (objc_msgSend(v8, "count") || objc_msgSend(v10, "count")))
      {
        if (![v8 count])
        {
          if (![v10 count])
          {
LABEL_167:
            if (v204)
            {
              v118 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
              v119 = @"cpuTimeNs";
              if (v193)
              {
                v119 = @"cpuForcedIdleTimeNs";
              }

              if (v201)
              {
                v120 = @"cpuIdleTimeNs";
              }

              else
              {
                v120 = v119;
              }

              SAJSONWriteDictionaryEntry(stack, v120, v118);

              v121 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v195];
              SAJSONWriteDictionaryEntry(stack, @"cycles", v121);

              v122 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v189];
              SAJSONWriteDictionaryEntry(stack, @"intructions", v122);
            }

            if ((v202 & 0x80000000) == 0)
            {
              v123 = [MEMORY[0x1E696AD98] numberWithInt:?];
              SAJSONWriteDictionaryEntry(stack, @"minPriority", v123);

              v124 = [MEMORY[0x1E696AD98] numberWithInt:v194];
              SAJSONWriteDictionaryEntry(stack, @"maxPriority", v124);

              if ((v199 & 0x80000000) == 0)
              {
                v125 = [MEMORY[0x1E696AD98] numberWithInt:v199];
                SAJSONWriteDictionaryEntry(stack, @"minBasePriority", v125);

                v126 = [MEMORY[0x1E696AD98] numberWithInt:v188];
                SAJSONWriteDictionaryEntry(stack, @"maxBasePriority", v126);
              }
            }

            if (v210)
            {
              SAJSONWriteDictionaryEntry(stack, @"threadName", v210);
              if (v197)
              {
                SAJSONWriteDictionaryEntry(stack, @"threadNameChanges", MEMORY[0x1E695E118]);
              }
            }

            if ([v8 count])
            {
              v127 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
              v215 = 0u;
              v216 = 0u;
              v217 = 0u;
              v218 = 0u;
              v128 = v8;
              v129 = [v128 countByEnumeratingWithState:&v215 objects:v233 count:16];
              if (v129)
              {
                v130 = v129;
                v131 = *v216;
                do
                {
                  for (j = 0; j != v130; ++j)
                  {
                    if (*v216 != v131)
                    {
                      objc_enumerationMutation(v128);
                    }

                    v133 = *(*(&v215 + 1) + 8 * j);
                    null = [MEMORY[0x1E695DFB0] null];

                    if (v133 != null)
                    {
                      dispatchQueueLabel = [v133 dispatchQueueLabel];
                      if (dispatchQueueLabel)
                      {
                        [v127 addObject:dispatchQueueLabel];
                      }
                    }
                  }

                  v130 = [v128 countByEnumeratingWithState:&v215 objects:v233 count:16];
                }

                while (v130);
              }

              stack = stackCopy;
              v6 = v208;
              self = selfCopy2;
              if ([v127 count])
              {
                if ([v127 count] == 1)
                {
                  firstObject = [v127 firstObject];
                  SAJSONWriteDictionaryEntry(stackCopy, @"dispatchQueueLabel", firstObject);
                }

                else
                {
                  SAJSONWriteDictionaryEntry(stackCopy, @"dispatchQueueLabel", v127);
                }
              }

              v8 = v207;
            }

            v137 = v206;
            if (*(self + 48) == 1)
            {
              v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v198];
              SAJSONWriteDictionaryEntry(stack, @"numSamples", v138);

              v139 = MEMORY[0x1E696AD98];
              if (*(self + 48) == 1)
              {
                forceOneBasedTimeIndexes = [*(self + 16) forceOneBasedTimeIndexes];
                v141 = v190 + 1;
                if (forceOneBasedTimeIndexes)
                {
                  v141 -= *(self + 56);
                }
              }

              else
              {
                v141 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v142 = [v139 numberWithUnsignedInteger:v141];
              SAJSONWriteDictionaryEntry(stack, @"firstSampleIndex", v142);

              v143 = MEMORY[0x1E696AD98];
              if (*(self + 48) == 1)
              {
                forceOneBasedTimeIndexes2 = [*(self + 16) forceOneBasedTimeIndexes];
                v145 = v187 + 1;
                if (forceOneBasedTimeIndexes2)
                {
                  v145 -= *(self + 56);
                }
              }

              else
              {
                v145 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v146 = [v143 numberWithUnsignedInteger:v145];
              SAJSONWriteDictionaryEntry(stack, @"lastSampleIndex", v146);
            }

            if (v203)
            {
              v147 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
              SAJSONWriteDictionaryEntry(stack, @"numIOs", v147);

              v148 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v196];
              SAJSONWriteDictionaryEntry(stack, @"ioSize", v148);
            }

            goto LABEL_284;
          }

          if ([v10 count] == 1)
          {
            firstObject2 = [v10 firstObject];
            null2 = [MEMORY[0x1E695DFB0] null];

            if (firstObject2 == null2)
            {
              goto LABEL_152;
            }

            identifier = [firstObject2 identifier];
            if (!identifier)
            {
              goto LABEL_152;
            }

            v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
            SAJSONWriteDictionaryFirstEntry(stack, @"swiftTaskID", v99);
            goto LABEL_151;
          }

          v192 = selfCopy;
          v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
          v234 = 0u;
          v235 = 0u;
          v236 = 0u;
          v237 = 0u;
          v153 = v10;
          v154 = [v153 countByEnumeratingWithState:&v234 objects:v238 count:16];
          if (v154)
          {
            v155 = v154;
            v156 = *v235;
            do
            {
              for (k = 0; k != v155; ++k)
              {
                if (*v235 != v156)
                {
                  objc_enumerationMutation(v153);
                }

                v158 = *(*(&v234 + 1) + 8 * k);
                null3 = [MEMORY[0x1E695DFB0] null];

                if (v158 == null3)
                {
                  [v83 addObject:&unk_1F5BDCA90];
                }

                else
                {
                  v160 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v158, "identifier")}];
                  [v83 addObject:v160];
                }
              }

              v155 = [v153 countByEnumeratingWithState:&v234 objects:v238 count:16];
            }

            while (v155);
          }

          stack = stackCopy;
          SAJSONWriteDictionaryFirstEntry(stackCopy, @"swiftTaskID", v83);
LABEL_166:

          selfCopy = v192;
          v6 = v208;
          self = selfCopy2;
          v8 = v207;
          goto LABEL_167;
        }

        if ([v8 count] == 1)
        {
          firstObject3 = [v8 firstObject];
          null4 = [MEMORY[0x1E695DFB0] null];

          if (firstObject3 != null4)
          {
            identifier2 = [firstObject3 identifier];
            if (identifier2)
            {
              v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier2];
              SAJSONWriteDictionaryFirstEntry(stack, @"dispatchQueueID", v30);
            }
          }
        }

        else
        {
          v100 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
          v223 = 0u;
          v224 = 0u;
          v225 = 0u;
          v226 = 0u;
          v101 = v8;
          v102 = [v101 countByEnumeratingWithState:&v223 objects:v238 count:16];
          if (v102)
          {
            v103 = v102;
            v104 = *v224;
            do
            {
              for (m = 0; m != v103; ++m)
              {
                if (*v224 != v104)
                {
                  objc_enumerationMutation(v101);
                }

                v106 = *(*(&v223 + 1) + 8 * m);
                null5 = [MEMORY[0x1E695DFB0] null];

                if (v106 == null5)
                {
                  [v100 addObject:&unk_1F5BDCA90];
                }

                else
                {
                  v108 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v106, "identifier")}];
                  [v100 addObject:v108];
                }
              }

              v103 = [v101 countByEnumeratingWithState:&v223 objects:v238 count:16];
            }

            while (v103);
          }

          stack = stackCopy;
          SAJSONWriteDictionaryFirstEntry(stackCopy, @"dispatchQueueID", v100);

          v6 = v208;
          self = selfCopy2;
          v10 = v206;
          v8 = v207;
        }

        if (![v10 count])
        {
          goto LABEL_167;
        }

        if ([v10 count] == 1)
        {
          goto LABEL_148;
        }

        v192 = selfCopy;
        v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v84 = v10;
        v111 = [v84 countByEnumeratingWithState:&v219 objects:&v234 count:16];
        if (v111)
        {
          v112 = v111;
          v113 = *v220;
          do
          {
            for (n = 0; n != v112; ++n)
            {
              if (*v220 != v113)
              {
                objc_enumerationMutation(v84);
              }

              v115 = *(*(&v219 + 1) + 8 * n);
              null6 = [MEMORY[0x1E695DFB0] null];

              if (v115 == null6)
              {
                [v83 addObject:&unk_1F5BDCA90];
              }

              else
              {
                v117 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v115, "identifier")}];
                [v83 addObject:v117];
              }
            }

            v112 = [v84 countByEnumeratingWithState:&v219 objects:&v234 count:16];
          }

          while (v112);
        }
      }

      else
      {
        if ([v6 count] == 1)
        {
          firstObject4 = [v6 firstObject];
          SAJSONWriteDictionaryFirstEntry(stack, @"threadID", firstObject4);
        }

        else
        {
          SAJSONWriteDictionaryFirstEntry(stack, @"threadID", v6);
        }

        if ([v8 count])
        {
          if ([v8 count] == 1)
          {
            firstObject5 = [v8 firstObject];
            null7 = [MEMORY[0x1E695DFB0] null];

            if (firstObject5 != null7)
            {
              identifier3 = [firstObject5 identifier];
              if (identifier3)
              {
                v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier3];
                SAJSONWriteDictionaryEntry(stack, @"dispatchQueueID", v34);
              }
            }
          }

          else
          {
            v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
            v223 = 0u;
            v224 = 0u;
            v225 = 0u;
            v226 = 0u;
            v75 = v8;
            v76 = [v75 countByEnumeratingWithState:&v223 objects:v238 count:16];
            if (v76)
            {
              v77 = v76;
              v78 = *v224;
              do
              {
                for (ii = 0; ii != v77; ++ii)
                {
                  if (*v224 != v78)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v80 = *(*(&v223 + 1) + 8 * ii);
                  null8 = [MEMORY[0x1E695DFB0] null];

                  if (v80 == null8)
                  {
                    [v74 addObject:&unk_1F5BDCA90];
                  }

                  else
                  {
                    v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v80, "identifier")}];
                    [v74 addObject:v82];
                  }
                }

                v77 = [v75 countByEnumeratingWithState:&v223 objects:v238 count:16];
              }

              while (v77);
            }

            stack = stackCopy;
            SAJSONWriteDictionaryEntry(stackCopy, @"dispatchQueueID", v74);

            v6 = v208;
            self = selfCopy2;
            v10 = v206;
            v8 = v207;
          }
        }

        if (![v10 count])
        {
          goto LABEL_167;
        }

        if ([v10 count] == 1)
        {
LABEL_148:
          firstObject2 = [v10 firstObject];
          null9 = [MEMORY[0x1E695DFB0] null];

          if (firstObject2 == null9)
          {
            goto LABEL_152;
          }

          identifier4 = [firstObject2 identifier];
          if (!identifier4)
          {
            goto LABEL_152;
          }

          v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier4];
          SAJSONWriteDictionaryEntry(stack, @"swiftTaskID", v99);
LABEL_151:

LABEL_152:
          goto LABEL_167;
        }

        v192 = selfCopy;
        v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v84 = v10;
        v85 = [v84 countByEnumeratingWithState:&v219 objects:&v234 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = *v220;
          do
          {
            for (jj = 0; jj != v86; ++jj)
            {
              if (*v220 != v87)
              {
                objc_enumerationMutation(v84);
              }

              v89 = *(*(&v219 + 1) + 8 * jj);
              null10 = [MEMORY[0x1E695DFB0] null];

              if (v89 == null10)
              {
                [v83 addObject:&unk_1F5BDCA90];
              }

              else
              {
                v91 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v89, "identifier")}];
                [v83 addObject:v91];
              }
            }

            v86 = [v84 countByEnumeratingWithState:&v219 objects:&v234 count:16];
          }

          while (v86);
        }
      }

      stack = stackCopy;
      SAJSONWriteDictionaryEntry(stackCopy, @"swiftTaskID", v83);
      goto LABEL_166;
    }

    [stack printWithFormat:@"%*s", 2, ""];
    v191 = selfCopy;
    if ([v6 count])
    {
      obj = v11;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v18 = v6;
      v19 = [v18 countByEnumeratingWithState:&v223 objects:v238 count:16];
      if (v19)
      {
        v20 = v19;
        v161 = 0;
        v22 = *v224;
        v23 = @"Thread ";
        do
        {
          for (kk = 0; kk != v20; ++kk)
          {
            if (*v224 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v223 + 1) + 8 * kk);
            v26 = [stackCopy appendString:v23] + v161;
            v161 = v26 + [stackCopy printWithFormat:@"0x%llx", objc_msgSend(v25, "unsignedLongLongValue")];
            v23 = @",";
          }

          v20 = [v18 countByEnumeratingWithState:&v223 objects:v238 count:16];
          v23 = @",";
        }

        while (v20);
      }

      else
      {
        v161 = 0;
      }

      stack = stackCopy;
      if (obj)
      {
        v161 += [stackCopy appendString:@" (idle work queue)"];
      }

      self = selfCopy2;
      v10 = v206;
    }

    else
    {
      v161 = 0;
    }

    if ([v10 count] > 1 || objc_msgSend(v10, "count") == 1 && (objc_msgSend(v10, "firstObject"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFB0], "null"), v36 = objc_claimAutoreleasedReturnValue(), v36, v35, v35 != v36))
    {
      if (v161)
      {
        [stack printWithFormat:@"%*s", 4, ""];
      }

      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v37 = v10;
      v38 = [v37 countByEnumeratingWithState:&v219 objects:&v234 count:16];
      if (v38)
      {
        v39 = v38;
        v161 = 0;
        v40 = *v220;
        v41 = 1;
        do
        {
          for (mm = 0; mm != v39; ++mm)
          {
            if (*v220 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v43 = *(*(&v219 + 1) + 8 * mm);
            if (v41)
            {
              v44 = stackCopy;
              v45 = [stackCopy appendString:@"Swift Task"] + v161;
              v46 = v45 + [stackCopy appendString:@" "];
            }

            else
            {
              v44 = stackCopy;
              v46 = [stackCopy appendString:{@", "}] + v161;
            }

            null11 = [MEMORY[0x1E695DFB0] null];

            if (v43 == null11)
            {
              v48 = [v44 appendString:@"none"];
            }

            else if ([v43 identifier] == -1)
            {
              v48 = [v44 printWithFormat:@"%@", @"UNKNOWN"];
            }

            else
            {
              v48 = [v44 printWithFormat:@"%llu", objc_msgSend(v43, "identifier")];
            }

            v41 = 0;
            v161 = v48 + v46;
          }

          v39 = [v37 countByEnumeratingWithState:&v219 objects:&v234 count:16];
          v41 = 0;
        }

        while (v39);
      }

      else
      {
        v161 = 0;
      }

      stack = stackCopy;
      v6 = v208;
      self = selfCopy2;
      v8 = v207;
    }

    if ([v8 count] > 1 || objc_msgSend(v8, "count") == 1 && (objc_msgSend(v8, "firstObject"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFB0], "null"), v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v49 != v50))
    {
      if (v161)
      {
        [stack printWithFormat:@"%*s", 4, ""];
      }

      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      obja = v8;
      v51 = [obja countByEnumeratingWithState:&v215 objects:v233 count:16];
      if (v51)
      {
        v52 = v51;
        v161 = 0;
        v53 = 1;
        v54 = *v216;
        do
        {
          for (nn = 0; nn != v52; ++nn)
          {
            if (*v216 != v54)
            {
              objc_enumerationMutation(obja);
            }

            v56 = *(*(&v215 + 1) + 8 * nn);
            null12 = [MEMORY[0x1E695DFB0] null];
            if (v56 == null12)
            {
              v58 = 0;
            }

            else
            {
              v58 = v56;
            }

            v59 = v58;

            if (v53)
            {
              v60 = [stackCopy appendString:@"DispatchQueue"] + v161;
              v61 = v60 + [stackCopy appendString:@" "];
            }

            else
            {
              v61 = [stackCopy appendString:{@", "}] + v161;
            }

            v62 = [SASamplePrinter displayNameForDispatchQueue:v59];
            v161 = [stackCopy printWithFormat:@"%@", v62] + v61;

            v53 = 0;
          }

          v52 = [obja countByEnumeratingWithState:&v215 objects:v233 count:16];
          v53 = 0;
        }

        while (v52);
      }

      else
      {
        v161 = 0;
      }

      stack = stackCopy;
      v6 = v208;
      self = selfCopy2;
      v8 = v207;
    }

    if (v210)
    {
      if (v161)
      {
        [stack printWithFormat:@"%*s", 4, ""];
      }

      v63 = SACopySanitizedString(v210, 1, 0);
      v64 = v63;
      if (v197)
      {
        v65 = @"Thread name %@ (changed)";
      }

      else
      {
        v65 = @"Thread name %@";
      }

      v161 = [stack printWithFormat:v65, v63];
    }

    if (*(self + 48) != 1)
    {
      if (v205)
      {
        [v205 machAbsTimeSeconds];
        v70 = v69;
        [*(self + 32) machAbsTimeSeconds];
        v72 = v70 - v71;
        if (v72 > 0.0)
        {
          if (v72 >= 0.01)
          {
            v73 = [stack printWithFormat:@"(not sampled for first %.2fs)", *&v72];
          }

          else
          {
            v73 = [stack appendString:@"(not sampled for first <0.01s)"];
          }

          v161 += v73;
        }
      }

      goto LABEL_236;
    }

    if (v161)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    if (v198 == 1)
    {
      v66 = "";
    }

    else
    {
      v66 = "s";
    }

    v161 = [stack printWithFormat:@"%lu sample%s", v198, v66];
    if (v190 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_236;
    }

    if (*(self + 48) == 1)
    {
      forceOneBasedTimeIndexes3 = [*(self + 16) forceOneBasedTimeIndexes];
      v68 = v190 + 1;
      if (forceOneBasedTimeIndexes3)
      {
        v68 -= *(self + 56);
      }
    }

    else
    {
      v68 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v92 = objc_msgSend(stack, "printWithFormat:", @" (%lu"), v68 + v161;
    v93 = v187 - v190;
    selfCopy = v198;
    if (v187 != v190)
    {
      if (*(self + 48) == 1)
      {
        forceOneBasedTimeIndexes4 = [*(self + 16) forceOneBasedTimeIndexes];
        v95 = v187 + 1;
        if (forceOneBasedTimeIndexes4)
        {
          v95 -= *(self + 56);
        }
      }

      else
      {
        v95 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v92 += [stack printWithFormat:@"-%lu", v95];
    }

    if ([*(self + 16) printHeavyStacks])
    {
      goto LABEL_215;
    }

    if (v93 + 1 >= v198)
    {
      break;
    }

    v182 = *__error();
    v183 = _sa_logt();
    if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v228 = v187;
      v229 = 2048;
      v230 = v190;
      v231 = 2048;
      v232 = v198;
      _os_log_error_impl(&dword_1E0E2F000, v183, OS_LOG_TYPE_ERROR, "lastSampleIndex %lu - firstSampleIndex %lu + 1 < count %lu", buf, 0x20u);
    }

    *__error() = v182;
    _SASetCrashLogMessage(10684, "lastSampleIndex %lu - firstSampleIndex %lu + 1 < count %lu", v187, v190, v198);
    _os_crash();
    __break(1u);
LABEL_295:
    v195 = 0;
    v196 = 0;
    v201 = 0;
    v188 = 0;
    v189 = 0;
    v194 = 0;
    v204 = 0;
    v205 = 0;
    v190 = 0;
    v197 = 0;
    v11 = 0;
    v8 = 0;
    v6 = 0;
    v10 = 0;
    v210 = 0;
    v198 = 0;
    v199 = 0;
    v187 = 0;
    v202 = 0;
    v203 = 0;
    v193 = 0;
    v16 = 0.0;
  }

  if (v93 + 1 != v198)
  {
    v92 += [stack printWithFormat:@" with gaps of %d", v93 + 1 - v198];
  }

LABEL_215:
  if (v205)
  {
    v149 = [*(self + 168) indexOfFirstSampleOnOrAfterTimestamp:?];
    if (v149)
    {
      v150 = v149;
      if (v149 != 0x7FFFFFFFFFFFFFFFLL && v149 <= v190)
      {
        if (*(self + 48) == 1)
        {
          forceOneBasedTimeIndexes5 = [*(self + 16) forceOneBasedTimeIndexes];
          v152 = v150 + 1;
          if (forceOneBasedTimeIndexes5)
          {
            v152 -= *(self + 56);
          }
        }

        else
        {
          v152 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v92 += [stack printWithFormat:@", not sampled before %lu", v152];
      }
    }
  }

  v161 = [stack appendString:@""]) + v92;
LABEL_236:
  v161 = v202;
  if ((v202 & 0x80000000) == 0)
  {
    if (v161)
    {
      [stack printWithFormat:@"%*s", 4, ""];
      v161 = v202;
    }

    v162 = v161;
    v161 = [stack printWithFormat:@"priority %d", v161];
    if (v162 != v194)
    {
      v161 += [stack printWithFormat:@"-%d", v194];
    }

    if ((v199 & 0x80000000) == 0)
    {
      v163 = objc_msgSend(stack, "printWithFormat:", @" (base %d"), v199 + v161;
      if (v199 != v188)
      {
        v163 += [stack printWithFormat:@"-%d", v188];
      }

      v161 = [stack appendString:@""]) + v163;
    }
  }

  if (v204)
  {
    if (v161)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    v164 = @"cpu time ";
    if (v193)
    {
      v164 = @"forced idle time ";
    }

    if (v201)
    {
      v165 = @"idle time ";
    }

    else
    {
      v165 = v164;
    }

    v166 = [stack appendString:v165];
    if ([*(self + 16) displayDetailedCpuTime])
    {
      v167 = 9;
    }

    else
    {
      v167 = 3;
    }

    v161 = saos_printf_seconds(stack, v204, v167) + v166;
    if (v195)
    {
      v161 += saos_printf_cycles_instructions(stack, v195, v189, [*(self + 16) displayDetailedCpuTime]);
    }
  }

  if (v16 > 0.0 && (([*(self + 16) displayDetailedCpuTime] & 1) != 0 || -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](self, v16)))
  {
    if (v161)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    v168 = [stack appendString:@"last ran "];
    if ([*(self + 16) displayDetailedCpuTime])
    {
      v169 = 9;
    }

    else
    {
      v169 = 3;
    }

    v170 = saos_printf_seconds(stack, (v16 * 1000000000.0), v169);
    v161 = v170 + v168 + [stack appendString:@" ago"];
  }

  if (!(v201 & 1 | (i <= 0.0)) && (([*(self + 16) displayDetailedCpuTime] & 1) != 0 || -[SASamplePrinter shouldPrintTimeOutsideSamplingRange:](self, i)))
  {
    if (v161)
    {
      [stack printWithFormat:@"%*s", 4, ""];
    }

    v171 = [stack appendString:@"runnable before first sample for "];
    if ([*(self + 16) displayDetailedCpuTime])
    {
      v172 = 9;
    }

    else
    {
      v172 = 3;
    }

    v161 = saos_printf_seconds(stack, (i * 1000000000.0), v172) + v171;
  }

  v173 = v203;
  if (v203)
  {
    if (v161)
    {
      [stack printWithFormat:@"%*s", 4, ""];
      v173 = v203;
    }

    if (v173 == 1)
    {
      v174 = "";
    }

    else
    {
      v174 = "s";
    }

    v175 = v173;
    v176 = SAFormattedBytesEx(v196, 1, 0, 1, 0);
    [stack printWithFormat:@"%lu I/O%s (%@)", v175, v174, v176];
  }

  [stack appendString:@"\n"];
  selfCopy = v191;
  v137 = v206;
LABEL_284:
  objc_autoreleasePoolPop(context);

  if (selfCopy)
  {
    if (*(selfCopy + 4) && !objc_getProperty(selfCopy, v177, 120, 1))
    {
      v184 = *__error();
      v185 = _sa_logt();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        v186 = *(selfCopy + 4);
        *v238 = 134217984;
        v239 = v186;
        _os_log_error_impl(&dword_1E0E2F000, v185, OS_LOG_TYPE_ERROR, "%lu count, but no rootObjects", v238, 0xCu);
      }

      *__error() = v184;
      _SASetCrashLogMessage(9966, "%lu count, but no rootObjects", *(selfCopy + 4));
      _os_crash();
      __break(1u);
    }

    else if (objc_getProperty(selfCopy, v177, 120, 1))
    {
      v214 = objc_getProperty(selfCopy, v178, 120, 1);
      v179 = *(selfCopy + 4);
      v181 = objc_getProperty(selfCopy, v180, 128, 1);
      [(SASamplePrinter *)self addStack:v214 toStream:stack sampleCount:v179 binariesToDisplay:v181 primaryState:0 primaryMicrostackshotState:0 onlyHeaviestStack:0 isKernel:*(selfCopy + 15) & 1];
    }
  }
}

void __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    v5 = *(a1 + 48);
    v6 = -[SASamplePrinter stackForThread:threadStateIndexes:task:taskSampleCount:isTarget:](*(a1 + 32), a3, 0, *(a1 + 40), *(a1 + 56), [a3 threadId] == objc_msgSend(*(*(a1 + 32) + 168), "targetThreadId"));
    [v5 addObject:v6];
  }
}

- (SAStack)stackForThread:(void *)thread threadStateIndexes:(void *)indexes task:(uint64_t)task taskSampleCount:(BOOL)count isTarget:
{
  if (self)
  {
    v12 = objc_alloc_init(SAStack);
    v13 = [indexes pid];
    if (v12)
    {
      v12->_isKernel = v13 == 0;
      v12->_isMainThread = [a2 isMainThread];
      v12->_isTargetCallTree = count;
    }

    else
    {
      [a2 isMainThread];
    }

    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadId")}];
    v17 = [v14 initWithObjects:{v15, 0}];
    if (v12)
    {
      objc_setProperty_atomic(v12, v16, v17, 56);
    }

    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (v12)
    {
      objc_setProperty_atomic(v12, v18, v19, 40);
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v12)
    {
      objc_setProperty_atomic(v12, v20, v21, 48);
    }

    v22 = [(SASamplePrinter *)self binaryImagesHitByTask:indexes];
    v24 = v22;
    if (v12)
    {
      objc_setProperty_atomic(v12, v23, v22, 128);

      [(SASamplePrinter *)self addHeaderForDispatchQueue:0 orSwiftTaskStates:a2 orThread:thread andThreadStateIndexes:v12 toStack:indexes task:task taskSampleCount:?];
      if (!v12->_omit && v12->_count)
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
        threadNameChanges = v12->_threadNameChanges;
        v27 = [(NSMutableArray *)v12->_dispatchQueues count];
        v28 = [(NSMutableArray *)v12->_swiftTasks count];
        v29 = [(NSMutableArray *)v12->_threadIds count];
        v30 = v12->_minPriority != v12->_maxPriority || v12->_minBasePriority != v12->_maxBasePriority;
        [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:a2 orThread:thread andThreadStateIndexes:indexes task:v25 toRootObjects:threadNameChanges nameChanges:v27 > 1 dispatchQueueChanges:v28 > 1 swiftTaskChanges:v29 > 1 threadChanges:v30 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
        if ([*(self + 16) printHeavyStacks])
        {
          [(SASamplePrinter *)self sortHeavyCallTree:v25];
        }

        objc_setProperty_atomic(v12, v31, v25, 120);
      }
    }

    else
    {

      [(SASamplePrinter *)self addHeaderForDispatchQueue:0 orSwiftTaskStates:a2 orThread:thread andThreadStateIndexes:0 toStack:indexes task:task taskSampleCount:?];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (!v3 || [a3 hasConcurrentExecution] && !objc_msgSend(*(v3 + 16), "printHeavyStacks"))
  {
    return;
  }

  v6 = a1[5];
  v7 = [*(a1[4] + 168) targetProcess];
  if (v6 == v7)
  {
    v9 = [a3 identifier];
    v8 = v9 == [*(a1[4] + 168) targetDispatchQueueId];
  }

  else
  {
    v8 = 0;
  }

  v10 = a1[6];
  v11 = a1[4];
  if (v11)
  {
    v12 = *(v11 + 16);
    if (!v12 || (v13 = a1[5], v14 = a1[7], v15 = *(v12 + 152), v15 != 1) && (v15 || *(v12 + 11) == 1))
    {
      v33 = *__error();
      v34 = _sa_logt();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(v11 + 16);
        if (v35)
        {
          v36 = *(v35 + 152);
          if (!v36)
          {
            if (*(v35 + 11))
            {
              v36 = 3;
            }

            else
            {
              v36 = 1;
            }
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = [v35 debugDescription];
        *buf = 134218242;
        v44 = v36;
        v45 = 2080;
        v46 = [v37 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v34, OS_LOG_TYPE_ERROR, "stackForDispatchQueue, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", buf, 0x16u);
      }

      *__error() = v33;
      v38 = *(v11 + 16);
      v39 = [(SASamplePrintOptions *)v38 callTreeAggregationResolved];
      v40 = [v38 debugDescription];
      _SASetCrashLogMessage(13117, "stackForDispatchQueue, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", v39, [v40 UTF8String]);

      _os_crash();
      __break(1u);
    }

    self = objc_alloc_init(SAStack);
    v16 = [v13 pid];
    if (self)
    {
      self->_isKernel = v16 == 0;
      self->_isTargetCallTree = v8;
    }

    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      objc_setProperty_atomic(self, v17, v18, 56);
    }

    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a3, 0}];
    if (self)
    {
      objc_setProperty_atomic(self, v19, v20, 40);
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self)
    {
      objc_setProperty_atomic(self, v21, v22, 48);
    }

    v24 = [(SASamplePrinter *)v11 binaryImagesHitByTask:v13];
    if (self)
    {
      objc_setProperty_atomic(self, v23, v24, 128);

      [(SASamplePrinter *)v11 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 toStack:self task:v13 taskSampleCount:v14];
      v25 = self;
      if (!self->_omit && self->_count)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        threadNameChanges = self->_threadNameChanges;
        v28 = [(NSMutableArray *)self->_dispatchQueues count];
        v29 = [(NSMutableArray *)self->_swiftTasks count];
        v30 = [(NSMutableArray *)self->_threadIds count];
        v31 = self->_minPriority != self->_maxPriority || self->_minBasePriority != self->_maxBasePriority;
        [(SASamplePrinter *)v11 addStackForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 task:v13 toRootObjects:v26 nameChanges:threadNameChanges dispatchQueueChanges:v28 > 1 swiftTaskChanges:v29 > 1 threadChanges:v30 > 1 priorityChanges:v31 microstackshotSummary:0 onlyHeaviestStack:0 includeState:1];
        if ([*(v11 + 16) printHeavyStacks])
        {
          [(SASamplePrinter *)v11 sortHeavyCallTree:v26];
        }

        objc_setProperty_atomic(self, v32, v26, 120);

        v25 = self;
      }

      goto LABEL_30;
    }

    [(SASamplePrinter *)v11 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 toStack:0 task:v13 taskSampleCount:v14];
  }

  v25 = 0;
LABEL_30:
  selfa = v25;
  [v10 addObject:v25];
}

void __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v57 = *MEMORY[0x1E69E9840];
  if (![(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    return;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (!v9)
  {
    v42 = 0;
    [v8 addObjectsFromArray:0];
    goto LABEL_43;
  }

  v10 = *(v9 + 16);
  if (!v10 || (v3 = *(a1 + 40), v11 = *(a1 + 56), v12 = *(v10 + 152), v12 != 1) && (v12 || *(v10 + 11) == 1))
  {
    v11 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v9 + 16);
      if (v34)
      {
        v3 = *(v34 + 152);
        if (!v3)
        {
          if (*(v34 + 11))
          {
            v3 = 3;
          }

          else
          {
            v3 = 1;
          }
        }
      }

      else
      {
        v3 = 0;
      }

      v6 = [v34 debugDescription];
      *buf = 134218242;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = [v6 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "stacksForThread, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", buf, 0x16u);
    }

    *__error() = v11;
    v35 = *(v9 + 16);
    v9 = [(SASamplePrintOptions *)v35 callTreeAggregationResolved];
    v8 = [v35 debugDescription];
    v36 = v8;
    _SASetCrashLogMessage(9779, "stacksForThread, but not kSAAggregateCallTreesByDispatchQueue %llu: %s", v9, [v8 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  v13 = [*(v9 + 168) targetDispatchQueueId];
  if (!v13)
  {
    if ([v6 isMainThread])
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v14 = [*(v9 + 168) targetProcess];
  v5 = v14;
  if (v14 == v3)
  {

LABEL_18:
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 1;
    v20 = *(v9 + 32);
    v21 = *(v9 + 40);
    v22 = *(v9 + 56);
    v23 = *(v9 + 64);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke;
    v51 = &unk_1E86F7C60;
    v52 = v9;
    v53 = v3;
    v56 = &v46;
    v54 = v6;
    v4 = v19;
    v55 = v4;
    [v6 enumerateThreadStatesBetweenStartTime:v20 startSampleIndex:v22 endTime:v21 endSampleIndex:v23 reverseOrder:0 block:buf];
    if ([v4 count] != 1 || *(v47 + 24) != 1)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke_2;
      v43[3] = &unk_1E86F7C88;
      v43[4] = v9;
      v43[5] = v3;
      v43[6] = v6;
      v30 = v29;
      v44 = v30;
      v45 = v11;
      [v4 enumerateKeysAndObjectsUsingBlock:v43];
      v31 = v44;
      v32 = v30;

      v42 = v32;
LABEL_42:

      _Block_object_dispose(&v46, 8);
      [v8 addObjectsFromArray:v42];
      goto LABEL_43;
    }

    v24 = [*(v9 + 168) targetThreadId];
    v25 = *(v9 + 168);
    if (!v24)
    {
      if ([v25 targetDispatchQueueId])
      {
        v27 = [*(v9 + 168) targetProcess];
        if (v27 != v3)
        {
          v28 = 0;
          goto LABEL_40;
        }

LABEL_39:
        v38 = [v4 allKeys];
        v39 = [v38 firstObject];
        v40 = [v39 unsignedLongLongValue];
        v28 = v40 == [*(v9 + 168) targetDispatchQueueId];

        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if ([v25 targetDispatchQueueId])
    {
      v26 = [v6 threadId];
      if (v26 == [*(v9 + 168) targetThreadId])
      {
        v27 = [*(v9 + 168) targetProcess];
        if (v27 != v3)
        {
          v28 = 0;
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_39;
      }

LABEL_29:
      v28 = 0;
LABEL_41:
      v41 = objc_alloc(MEMORY[0x1E695DEC8]);
      v32 = [(SASamplePrinter *)v9 stackForThread:v6 threadStateIndexes:0 task:v3 taskSampleCount:v11 isTarget:v28];
      v42 = [v41 initWithObjects:{v32, 0}];
      goto LABEL_42;
    }

LABEL_38:
    v37 = [v6 threadId];
    v28 = v37 == [*(v9 + 168) targetThreadId];
    goto LABEL_41;
  }

  if (([v6 isMainThread] & 1) == 0)
  {
LABEL_13:
    v15 = [v6 threadId];
    v16 = [*(v9 + 168) targetThreadId];
    if (v13)
    {
    }

    if (v15 == v16)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_16:
  v17 = objc_alloc(MEMORY[0x1E695DEC8]);
  v18 = -[SASamplePrinter stackForThread:threadStateIndexes:task:taskSampleCount:isTarget:](v9, v6, 0, v3, v11, [v6 threadId] == objc_msgSend(*(v9 + 168), "targetThreadId"));
  v42 = [v17 initWithObjects:{v18, 0}];

  [v8 addObjectsFromArray:v42];
LABEL_43:
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (a2 && (*(a2 + 10) & 1) != 0)
  {
    if (!a3 || (*(a3 + 10) & 1) == 0)
    {
      v7 = -1;
      goto LABEL_69;
    }
  }

  else if (a3 && (*(a3 + 10) & 1) != 0)
  {
    v7 = 1;
    goto LABEL_69;
  }

  context = v6;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2_2049;
  v39[3] = &unk_1E86F7778;
  v39[4] = a2;
  v39[5] = a3;
  v28 = MEMORY[0x1E12EBE50](v39);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3_2050;
  v38[3] = &unk_1E86F7778;
  v38[4] = a2;
  v38[5] = a3;
  v27 = MEMORY[0x1E12EBE50](v38);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_4;
  v37[3] = &unk_1E86F7778;
  v37[4] = a2;
  v37[5] = a3;
  v26 = MEMORY[0x1E12EBE50](v37);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_5;
  v36[3] = &unk_1E86F7778;
  v36[4] = a2;
  v36[5] = a3;
  v24 = MEMORY[0x1E12EBE50](v36);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_6;
  v35[3] = &unk_1E86F7778;
  v35[4] = a2;
  v35[5] = a3;
  v25 = MEMORY[0x1E12EBE50](v35);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_7;
  v34[3] = &unk_1E86F7BE8;
  v34[4] = a2;
  v34[5] = a3;
  v8 = MEMORY[0x1E12EBE50](v34);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_8;
  v33[3] = &unk_1E86F7C10;
  v33[4] = a2;
  v33[5] = a3;
  v9 = MEMORY[0x1E12EBE50](v33);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = a1;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*(*(&v29 + 1) + 8 * v14) unsignedLongLongValue];
      v16 = v15;
      v17 = v15 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v15 & 0x7FFFFFFFFFFFFFFFuLL) > 5)
      {
        if ((v17 - 7) >= 4)
        {
          if (v17 == 6)
          {
            v18 = v8[2](v8, 0);
LABEL_36:
            if (v18)
            {
LABEL_64:
              if (v16 >= 0)
              {
                v7 = v18;
              }

              else
              {
                v7 = -v18;
              }

              goto LABEL_68;
            }

            goto LABEL_37;
          }

          if (v17 == 11)
          {
            v19 = v24[2];
            goto LABEL_33;
          }
        }

        else
        {
          v18 = v9[2](v9);
          if (v18)
          {
            goto LABEL_64;
          }
        }
      }

      else if ((v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 2)
      {
        if (v17 == 1)
        {
          v18 = v28[2]();
          if (v18)
          {
            goto LABEL_64;
          }
        }

        else if (v17 == 2)
        {
          v19 = v27[2];
          goto LABEL_33;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            v19 = v26[2];
LABEL_33:
            v18 = v19();
            if (v18)
            {
              goto LABEL_64;
            }

            break;
          case 4:
            v19 = v25[2];
            goto LABEL_33;
          case 5:
            v18 = v8[2](v8, 1);
            goto LABEL_36;
        }
      }

LABEL_37:
      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
        if (v12)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  if ((([*(v22 + 32) containsObject:&unk_1F5BDCA78] & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCAD8) & 1) != 0 || (v20 = v28[2]()) == 0) && ((objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCB80) & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCB98) & 1) != 0 || (v20 = (v9[2])(v9, 7)) == 0) && ((objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCBB0) & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCBC8) & 1) != 0 || (v20 = v8[2](v8, 0)) == 0) && ((objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCBE0) & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCBF8) & 1) != 0 || (v20 = v8[2](v8, 1)) == 0) && ((objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCAF0) & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCB08) & 1) != 0 || (v20 = (v27[2])()) == 0) && ((objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCC10) & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCC28) & 1) != 0 || (v20 = (v26[2])()) == 0) && ((objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCB50) & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCB68) & 1) != 0 || (v20 = (v24[2])()) == 0) && ((objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCA48) & 1) != 0 || (objc_msgSend(*(v22 + 32), "containsObject:", &unk_1F5BDCC40) & 1) != 0 || (v20 = (v25[2])()) == 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = v20;
  }

LABEL_68:

  v6 = context;
LABEL_69:
  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_2_2049(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 9) & 1) != 0)
  {
    v2 = *(a1 + 40);
    if (!v2 || (*(v2 + 9) & 1) == 0)
    {
      return -1;
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4 && (*(v4 + 9) & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_3_2050(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (v2 == v4)
  {
    return 0;
  }

  if (v1)
  {
    v1 = *(v1 + 32);
  }

  if (v3)
  {
    v3 = *(v3 + 32);
  }

  if (v1 > v3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 40, 1);
  }

  v5 = Property;
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 40, 1);
  }

  v7 = v6;
  v8 = [v5 count];
  v9 = [v7 count];
  if (!(v8 | v9))
  {
    goto LABEL_16;
  }

  v10 = v9;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v11 = [v5 firstObject];
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = v11 == v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  if ([v7 count])
  {
    if ([v7 count] != 1)
    {
      if (v13)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v14 = [v7 firstObject];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = v14 == v15;
  }

  else
  {
    v16 = 1;
  }

  if (v13 && v16)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (!v16 && !v13)
  {
LABEL_24:
    if (v10 < v8)
    {
      v17 = -1;
      goto LABEL_17;
    }

    if (v8 < v10)
    {
LABEL_27:
      v17 = 1;
      goto LABEL_17;
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    for (i = 0; v8 != i; ++i)
    {
      v20 = [v5 objectAtIndexedSubscript:i];
      v21 = [MEMORY[0x1E695DFB0] null];

      if (v20 == v21)
      {

        v20 = 0;
      }

      v22 = [v7 objectAtIndexedSubscript:i];
      v23 = [MEMORY[0x1E695DFB0] null];

      if (v22 == v23)
      {

        v22 = 0;
      }

      v24 = [v20 dispatchQueueLabel];
      v25 = [v22 dispatchQueueLabel];
      v26 = v25;
      if (v24 && v25)
      {
        v27 = [v24 compare:v25 options:577];
        if (v27)
        {
          v28 = 0;
          v32 = v27;
          goto LABEL_53;
        }
      }

      else
      {
        v29 = -1;
        if (!v24)
        {
          v29 = 1;
        }

        if (v24 | v25)
        {
LABEL_48:
          v28 = 0;
          goto LABEL_49;
        }
      }

      v30 = [v20 identifier];
      v31 = [v22 identifier];
      if (v30 && v31)
      {
        if (v30 < v31)
        {
          v28 = 0;
          v29 = -1;
LABEL_49:
          v32 = v29;
          goto LABEL_53;
        }

        if (v30 > v31)
        {
          v28 = 0;
          v29 = 1;
          goto LABEL_49;
        }
      }

      else
      {
        v29 = -1;
        if (!v30)
        {
          v29 = 1;
        }

        if (v30 | v31)
        {
          goto LABEL_48;
        }
      }

      v28 = 1;
LABEL_53:

      if ((v28 & 1) == 0)
      {
        v17 = v32;
        break;
      }

      v17 = 0;
    }
  }

LABEL_17:

  return v17;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_5(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 48, 1);
  }

  v5 = Property;
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 48, 1);
  }

  v7 = v6;
  v8 = [v5 count];
  v9 = [v7 count];
  if (!(v8 | v9))
  {
    goto LABEL_16;
  }

  v10 = v9;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v11 = [v5 firstObject];
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = v11 == v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  if ([v7 count])
  {
    if ([v7 count] != 1)
    {
      if (v13)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v14 = [v7 firstObject];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = v14 == v15;
  }

  else
  {
    v16 = 1;
  }

  if (v13 && v16)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v19 = v16 || v13;
  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (v19)
  {
    goto LABEL_17;
  }

LABEL_24:
  if (v10 < v8)
  {
    v17 = -1;
    goto LABEL_17;
  }

  if (v8 < v10)
  {
LABEL_27:
    v17 = 1;
    goto LABEL_17;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  v20 = 0;
  while (1)
  {
    v21 = [v5 objectAtIndexedSubscript:v20];
    v22 = [MEMORY[0x1E695DFB0] null];

    if (v21 == v22)
    {

      v21 = 0;
    }

    v23 = [v7 objectAtIndexedSubscript:v20];
    v24 = [MEMORY[0x1E695DFB0] null];

    if (v23 == v24)
    {

      v23 = 0;
    }

    v25 = [v21 identifier];
    v26 = [v23 identifier];
    if (!v25 || !v26)
    {
      break;
    }

    if (v25 < v26)
    {
      v17 = -1;
      goto LABEL_46;
    }

    if (v25 > v26)
    {
      v17 = 1;
      goto LABEL_46;
    }

LABEL_40:

    v17 = 0;
    if (v8 == ++v20)
    {
      goto LABEL_17;
    }
  }

  if (!(v25 | v26))
  {
    goto LABEL_40;
  }

  if (v25)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

LABEL_46:

LABEL_17:
  return v17;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_6(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 56, 1);
  }

  v5 = Property;
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 56, 1);
  }

  v7 = v6;
  v8 = [v5 count];
  v9 = [v7 count];
  if (!(v8 | v9))
  {
    goto LABEL_16;
  }

  if (v9 >= v8)
  {
    if (v8 < v9)
    {
LABEL_9:
      v10 = 1;
      goto LABEL_17;
    }

    if (v8)
    {
      v11 = 0;
      while (1)
      {
        v12 = [v5 objectAtIndexedSubscript:v11];
        v13 = [v7 objectAtIndexedSubscript:v11];
        v14 = [v12 unsignedLongLongValue];
        if (v14 < [v13 unsignedLongLongValue])
        {
          break;
        }

        v15 = [v12 unsignedLongLongValue];
        v16 = [v13 unsignedLongLongValue];

        if (v15 > v16)
        {
          goto LABEL_9;
        }

        v10 = 0;
        if (v8 == ++v11)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_7;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

LABEL_7:
  v10 = -1;
LABEL_17:

  return v10;
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_7(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      LODWORD(v2) = *(v2 + 28);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      v3 += 7;
LABEL_10:
      LODWORD(v3) = *v3;
    }
  }

  else
  {
    if (v2)
    {
      LODWORD(v2) = *(v2 + 20);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      v3 += 5;
      goto LABEL_10;
    }
  }

  v4 = v2 < v3;
  if (v2 <= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t __49__SASamplePrinter_stacksForTask_taskSampleCount___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 <= 8)
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v2 = *(a1 + 32);
        if (v2)
        {
          v3 = v2[13];
          goto LABEL_6;
        }

LABEL_49:
        v3 = 0;
LABEL_6:
        v4 = *(a1 + 40);
        if (v4)
        {
          v5 = v4[13];
        }

        else
        {
          v5 = 0;
        }

        if (v3 >= v5)
        {
          if (v2)
          {
            v2 = v2[13];
          }

          if (v4)
          {
            v4 = v4[13];
          }

          goto LABEL_43;
        }

        return 1;
      }

LABEL_46:
      v17 = *__error();
      v18 = _sa_logt();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = a2;
        _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "invalid sort option 0x%llx", buf, 0xCu);
      }

      *__error() = v17;
      _SASetCrashLogMessage(9646, "invalid sort option 0x%llx", a2);
      a1 = _os_crash();
      __break(1u);
      goto LABEL_49;
    }

    v2 = *(a1 + 32);
    if (v2)
    {
      v13 = v2[12];
    }

    else
    {
      v13 = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v14 = v4[12];
    }

    else
    {
      v14 = 0;
    }

    if (v13 < v14)
    {
      return 1;
    }

    if (v2)
    {
      v2 = v2[12];
    }

    if (v4)
    {
      v4 = v4[12];
    }

LABEL_43:
    if (v2 <= v4)
    {
      return 0;
    }

    return -1;
  }

  if (a2 == 9)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v15 = v2[14];
    }

    else
    {
      v15 = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v16 = v4[14];
    }

    else
    {
      v16 = 0;
    }

    if (v15 < v16)
    {
      return 1;
    }

    if (v2)
    {
      v2 = v2[14];
    }

    if (v4)
    {
      v4 = v4[14];
    }

    goto LABEL_43;
  }

  if (a2 != 10)
  {
    goto LABEL_46;
  }

  v6 = *(a1 + 32);
  v7 = 0.0;
  v8 = 0.0;
  if (v6)
  {
    v9 = *(v6 + 104);
    if (v9)
    {
      v8 = *(v6 + 112) / v9;
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 104);
    if (v11)
    {
      v7 = *(v10 + 112) / v11;
    }
  }

  if (v8 < v7)
  {
    return 1;
  }

  if (v8 > v7)
  {
    return -1;
  }

  return 0;
}

void __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 isIdleWorkQueue] && (objc_msgSend(*(*(a1 + 32) + 16), "displayIdleWorkQueueThreads") & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return;
  }

  v6 = [a2 dispatchQueue];
  v24 = v6;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      if ([v6 hasConcurrentExecution])
      {
        LODWORD(v7) = [*(v7 + 16) printHeavyStacks];
      }

      else
      {
        LODWORD(v7) = 1;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if ([a2 isIdleWorkQueue])
  {
    v8 = -3;
  }

  else
  {
    v8 = [v24 identifier];
  }

  if (![*(*(a1 + 32) + 168) targetDispatchQueueId] || (v9 = *(a1 + 40), objc_msgSend(*(*(a1 + 32) + 168), "targetProcess"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9 != v10))
  {
    if ([*(a1 + 48) isMainThread])
    {
      v8 = 0;
LABEL_31:
      v17 = *(a1 + 56);
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
      v19 = [v17 objectForKeyedSubscript:v18];

      if (v19)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [v19 addObject:v20];
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x1E695DF70]);
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        v19 = [v21 initWithObjects:{v22, 0}];

        v23 = *(a1 + 56);
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [v23 setObject:v19 forKeyedSubscript:v20];
      }

      goto LABEL_35;
    }

    v11 = [*(a1 + 48) threadId];
    v12 = [*(*(a1 + 32) + 168) targetThreadId];
    if (v11 == v12)
    {
      v8 = 0;
    }

    if (((v11 != v12) & v7) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (![*(*(a1 + 32) + 168) targetThreadId])
  {
    v15 = [v24 identifier];
    if (v15 == [*(*(a1 + 32) + 168) targetDispatchQueueId])
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v13 = [*(a1 + 48) threadId];
  if (v13 != [*(*(a1 + 32) + 168) targetThreadId])
  {
LABEL_26:
    v16 = [*(a1 + 48) isMainThread];
    if (v16)
    {
      v8 = 0;
    }

    if (((v16 ^ 1) & v7 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v14 = [v24 identifier];
  if (v14 == [*(*(a1 + 32) + 168) targetDispatchQueueId])
  {
    v8 = [v24 identifier];
    goto LABEL_31;
  }

  if (!v7)
  {
    goto LABEL_31;
  }

LABEL_29:
  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_35:
}

void __56__SASamplePrinter_stacksForThread_task_taskSampleCount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if ([*(*(a1 + 32) + 168) targetThreadId] && objc_msgSend(*(*(a1 + 32) + 168), "targetDispatchQueueId") && (v6 = *(a1 + 40), objc_msgSend(*(*(a1 + 32) + 168), "targetProcess"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6 == v7) && (v8 = objc_msgSend(*(a1 + 48), "threadId"), v8 == objc_msgSend(*(*(a1 + 32) + 168), "targetThreadId")))
  {
    v9 = [a2 unsignedLongLongValue];
    v10 = v9 == [*(*(a1 + 32) + 168) targetDispatchQueueId];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 56);
  v12 = [(SASamplePrinter *)*(a1 + 32) stackForThread:a3 threadStateIndexes:*(a1 + 40) task:*(a1 + 64) taskSampleCount:v10 isTarget:?];
  [v11 addObject:v12];
}

- (void)addHeaderForDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread andThreadStateIndexes:(void *)indexes toStack:(void *)stack task:(uint64_t)task taskSampleCount:
{
  v246 = *MEMORY[0x1E69E9840];
  v16 = objc_autoreleasePoolPush();
  if ((queue || a2 || !states) && (queue || !a2 || states) && (a2 || states || !queue))
  {
    self = *__error();
    v86 = _sa_logt();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      if (states)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }

      if (a2)
      {
        v87 = "y";
      }

      else
      {
        v87 = "n";
      }

      *buf = 136315650;
      *&buf[4] = states;
      *&buf[12] = 2080;
      *&buf[14] = v87;
      if (queue)
      {
        a2 = "y";
      }

      else
      {
        a2 = "n";
      }

      *&buf[22] = 2080;
      v243 = a2;
      _os_log_error_impl(&dword_1E0E2F000, v86, OS_LOG_TYPE_ERROR, "aThread %s, aDispatchQueue %s, swiftTaskStates %s", buf, 0x20u);
    }

    else
    {
      if (states)
      {
        states = "y";
      }

      else
      {
        states = "n";
      }

      if (a2)
      {
        v87 = "y";
      }

      else
      {
        v87 = "n";
      }

      if (queue)
      {
        a2 = "y";
      }

      else
      {
        a2 = "n";
      }
    }

    *__error() = self;
    _SASetCrashLogMessage(10007, "aThread %s, aDispatchQueue %s, swiftTaskStates %s", states, v87, a2);
    _os_crash();
    __break(1u);
    goto LABEL_131;
  }

  context = v16;
  omitStacksOnAC = [*(self + 16) omitStacksOnAC];
  omitStacksOnBattery = [*(self + 16) omitStacksOnBattery];
  omitStacksWithUserIdle = [*(self + 16) omitStacksWithUserIdle];
  omitStacksWithUserActive = [*(self + 16) omitStacksWithUserActive];
  omitStacksWithPCore = [*(self + 16) omitStacksWithPCore];
  omitStacksWithECore = [*(self + 16) omitStacksWithECore];
  omitStacksBelowBasePriority = [*(self + 16) omitStacksBelowBasePriority];
  omitStacksAboveBasePriority = [*(self + 16) omitStacksAboveBasePriority];
  if ([*(self + 16) swiftAsyncDisplayCRootCallstacks])
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = 1;
  }

  else
  {
    swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways = [*(self + 16) swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
  }

  v18 = *(self + 16);
  self = indexes;
  taskCopy = task;
  if (!v18)
  {
LABEL_131:
    v19 = 0;
    v20 = 0;
    goto LABEL_22;
  }

  v19 = *(v18 + 152);
  if (!v19)
  {
    if (*(v18 + 11))
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }
  }

  v20 = *(v18 + 160);
  if (!v20)
  {
    if (*(v18 + 14))
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }
  }

LABEL_22:
  v236 = 0;
  v237 = &v236;
  v238 = 0x2020000000;
  v239 = 0x7FFFFFFFFFFFFFFFLL;
  v232 = 0;
  v233 = &v232;
  v234 = 0x2020000000;
  v235 = 0x7FFFFFFFFFFFFFFFLL;
  v228 = 0;
  v229 = &v228;
  v230 = 0x2020000000;
  v231 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v243 = __Block_byref_object_copy__4;
  v244 = __Block_byref_object_dispose__4;
  v245 = 0;
  selfCopy = self;
  queueCopy = queue;
  v105 = omitStacksOnBattery;
  if (self)
  {
    v21 = objc_getProperty(self, v17, 40, 1);
    v92 = objc_getProperty(self, v22, 48, 1);
    Property = objc_getProperty(self, v23, 56, 1);
    v91 = v21;
    v25 = omitStacksOnAC;
  }

  else
  {
    v25 = omitStacksOnAC;
    v91 = 0;
    v92 = 0;
    Property = 0;
  }

  v26 = Property;
  v222 = 0;
  v223 = &v222;
  v224 = 0x3032000000;
  v225 = __Block_byref_object_copy__4;
  v226 = __Block_byref_object_dispose__4;
  v227 = 0;
  v218 = 0;
  v219 = &v218;
  v220 = 0x2020000000;
  v221 = 0;
  v214 = 0;
  v215 = &v214;
  v216 = 0x2020000000;
  v217 = 0;
  v210 = 0;
  v211 = &v210;
  v212 = 0x2020000000;
  v213 = 0;
  v206 = 0;
  v207 = &v206;
  v208 = 0x2020000000;
  v209 = -1;
  v202 = 0;
  v203 = &v202;
  v204 = 0x2020000000;
  v205 = -1;
  v198 = 0;
  v199 = &v198;
  v200 = 0x2020000000;
  v201 = -1;
  v194 = 0;
  v195 = &v194;
  v196 = 0x2020000000;
  v197 = -1;
  v190 = 0;
  v191 = &v190;
  v192 = 0x2020000000;
  v193 = 0;
  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v189 = 0;
  v182 = 0;
  v183 = &v182;
  v184 = 0x2020000000;
  v185 = 0;
  v178 = 0;
  v179 = &v178;
  v180 = 0x2020000000;
  v181 = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x2020000000;
  v177 = 0;
  v173[0] = 0;
  v173[1] = v173;
  v173[2] = 0x2020000000;
  v173[3] = 0;
  v171[0] = 0;
  v171[1] = v171;
  v171[2] = 0x3032000000;
  v171[3] = __Block_byref_object_copy__4;
  v171[4] = __Block_byref_object_dispose__4;
  v172 = 0;
  creationTimestamp2 = v169;
  v169[0] = 0;
  v169[1] = v169;
  v169[2] = 0x3032000000;
  v169[3] = __Block_byref_object_copy__4;
  v169[4] = __Block_byref_object_dispose__4;
  v170 = 0;
  v165 = 0;
  v166 = &v165;
  v167 = 0x2020000000;
  v168 = 0;
  v160 = 1;
  v161 = 0;
  v162 = &v161;
  v163 = 0x2020000000;
  v164 = 0;
  v159[0] = 0;
  v159[1] = v159;
  v159[2] = 0x2020000000;
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke;
  v121[3] = &unk_1E86F7CB0;
  v125 = &v210;
  v126 = v159;
  v150 = omitStacksAboveBasePriority;
  v151 = omitStacksBelowBasePriority;
  v152 = omitStacksWithUserActive;
  v153 = omitStacksWithUserIdle;
  v154 = v25;
  v155 = v105;
  v156 = omitStacksWithPCore;
  v157 = omitStacksWithECore;
  v158 = swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways;
  v148 = v20;
  v149 = v19;
  v127 = &v228;
  v102 = a2;
  v121[4] = a2;
  v121[5] = selfCopy;
  v121[6] = stack;
  v121[7] = queueCopy;
  v121[8] = states;
  v98 = v26;
  v122 = v98;
  v106 = v91;
  v123 = v106;
  v104 = v92;
  v124 = v104;
  v128 = &v236;
  v129 = buf;
  v130 = &v232;
  v131 = &v218;
  v132 = &v222;
  v133 = &v214;
  v134 = &v206;
  v135 = &v202;
  v136 = &v198;
  v137 = &v194;
  v138 = &v190;
  v139 = &v186;
  v140 = &v182;
  v141 = v173;
  v142 = v171;
  v143 = v169;
  v144 = &v178;
  v145 = &v174;
  v146 = &v165;
  v147 = &v161;
  v28 = MEMORY[0x1E12EBE50](v121);
  v29 = v28;
  if (a2)
  {
    v30 = *(selfCopy + 32);
    v31 = *(selfCopy + 40);
    v32 = *(selfCopy + 56);
    v33 = *(selfCopy + 64);
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke_2;
    v119[3] = &unk_1E86F8050;
    v120 = v28;
    [(SARecipe *)v102 enumerateStatesBetweenStartTime:v30 startSampleIndex:v32 endTime:v31 endSampleIndex:v33 reverseOrder:0 block:v119];
    threadCopy = v120;
  }

  else if (queueCopy)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    threadCopy = queueCopy;
    v42 = [threadCopy countByEnumeratingWithState:&v115 objects:v241 count:16];
    if (v42)
    {
      creationTimestamp2 = *v116;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v116 != creationTimestamp2)
          {
            objc_enumerationMutation(threadCopy);
          }

          v44 = *(*(&v115 + 1) + 8 * i);
          thread = [v44 thread];
          threadState = [v44 threadState];
          (v29)[2](v29, thread, threadState, [v44 threadStateIndex]);
        }

        v42 = [threadCopy countByEnumeratingWithState:&v115 objects:v241 count:16];
      }

      while (v42);
    }
  }

  else if (thread)
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    threadCopy = thread;
    v47 = [threadCopy countByEnumeratingWithState:&v111 objects:v240 count:16];
    if (v47)
    {
      creationTimestamp2 = *v112;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v112 != creationTimestamp2)
          {
            objc_enumerationMutation(threadCopy);
          }

          unsignedLongValue = [*(*(&v111 + 1) + 8 * j) unsignedLongValue];
          threadStates = [states threadStates];
          v51 = [threadStates objectAtIndexedSubscript:unsignedLongValue];
          (v29)[2](v29, states, v51, unsignedLongValue);
        }

        v47 = [threadCopy countByEnumeratingWithState:&v111 objects:v240 count:16];
      }

      while (v47);
    }
  }

  else
  {
    v76 = *(selfCopy + 32);
    v77 = *(selfCopy + 40);
    v78 = *(selfCopy + 56);
    v79 = *(selfCopy + 64);
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke_3;
    v109[3] = &unk_1E86F7CD8;
    v109[4] = states;
    v110 = v28;
    [states enumerateThreadStatesBetweenStartTime:v76 startSampleIndex:v78 endTime:v77 endSampleIndex:v79 reverseOrder:0 block:v109];
    threadCopy = v110;
  }

  v35 = v237[3];
  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v35 <= *(selfCopy + 56))
    {
      v35 = *(selfCopy + 56);
    }

    v237[3] = v35;
  }

  v36 = v233[3];
  if (v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = *(selfCopy + 64);
    if (v36 < v37)
    {
      v37 = v233[3];
    }

    v233[3] = v37;
  }

  if (self)
  {
    *(self + 4) = v215[3];
  }

  if (states && [*(selfCopy + 168) targetThreadId])
  {
    threadId = [states threadId];
    targetThreadId = [*(selfCopy + 168) targetThreadId];
    if (!v102 || threadId == targetThreadId)
    {
      if (threadId == targetThreadId)
      {
        goto LABEL_77;
      }

      goto LABEL_65;
    }
  }

  else if (!v102)
  {
    goto LABEL_65;
  }

  if ([*(selfCopy + 168) targetDispatchQueueId])
  {
    targetProcess = [*(selfCopy + 168) targetProcess];
    v41 = targetProcess;
    if (targetProcess == stack)
    {
      identifier = [v102 identifier];
      v53 = identifier == [*(selfCopy + 168) targetDispatchQueueId];

      if (v53)
      {
        goto LABEL_77;
      }
    }

    else
    {
    }
  }

LABEL_65:
  if (v215[3] || *(v211 + 24) == 1 && ([*(selfCopy + 16) displayCallTreesWithZeroCount] & 1) != 0)
  {
    if ([*(selfCopy + 16) omitStacksBelowSampleCount] < 1)
    {
      omitStacksBelowSampleCount = 0;
    }

    else
    {
      omitStacksBelowSampleCount = [*(selfCopy + 16) omitStacksBelowSampleCount];
    }

    if ([*(selfCopy + 16) omitStacksBelowPercentOfTaskSamples] >= 1)
    {
      omitStacksBelowPercentOfTaskSamples = [*(selfCopy + 16) omitStacksBelowPercentOfTaskSamples];
      if (omitStacksBelowSampleCount <= omitStacksBelowPercentOfTaskSamples * taskCopy / 0x64uLL)
      {
        omitStacksBelowSampleCount = omitStacksBelowPercentOfTaskSamples * taskCopy / 0x64uLL;
      }
    }

    if (!omitStacksBelowSampleCount || v215[3] > omitStacksBelowSampleCount)
    {
LABEL_77:
      if ([v106 count] == 1)
      {
        firstObject = [v106 firstObject];
        null = [MEMORY[0x1E695DFB0] null];
        v58 = firstObject == null;

        if (v58)
        {
          [v106 removeAllObjects];
        }
      }

      if ([v104 count] == 1)
      {
        firstObject2 = [v104 firstObject];
        null2 = [MEMORY[0x1E695DFB0] null];
        v62 = firstObject2 == null2;

        if (v62)
        {
          [v104 removeAllObjects];
        }
      }

      startTimestamp = *(*&buf[8] + 40);
      if (!startTimestamp)
      {
        goto LABEL_111;
      }

      timeWhenTransitionedToSamplingAllThreads = [*(selfCopy + 168) timeWhenTransitionedToSamplingAllThreads];
      if (timeWhenTransitionedToSamplingAllThreads)
      {
      }

      else
      {
        timeWhenTransitionedToSamplingAllProcesses = [*(selfCopy + 168) timeWhenTransitionedToSamplingAllProcesses];
        v66 = timeWhenTransitionedToSamplingAllProcesses == 0;

        if (v66)
        {
          startTimestamp = 0;
LABEL_111:
          if (self)
          {
            *(self + 11) = *(v229 + 24);
            objc_setProperty_atomic(self, v59, v223[5], 64);
            *(self + 12) = *(v219 + 24);
            *(self + 4) = v215[3];
            *(self + 9) = v237[3];
            *(self + 10) = v233[3];
            objc_setProperty_atomic(self, v83, startTimestamp, 88);
            *(self + 4) = *(v207 + 6);
            *(self + 5) = *(v203 + 6);
            *(self + 6) = *(v199 + 6);
            *(self + 7) = *(v195 + 6);
            *(self + 12) = v191[3];
            *(self + 13) = v187[3];
            *(self + 14) = v183[3];
          }

          isProcessorIdleThread = [states isProcessorIdleThread];
          if (self)
          {
            *(self + 13) = isProcessorIdleThread;
          }

          isGlobalForcedIdle = [states isGlobalForcedIdle];
          if (self)
          {
            *(self + 14) = isGlobalForcedIdle;
            *(self + 17) = v179[3];
            *(self + 18) = v175[3];
            *(self + 19) = v166[3];
            *(self + 20) = v162[3];
          }

          goto LABEL_118;
        }
      }

      if (*(selfCopy + 48))
      {
        v67 = 0;
      }

      else
      {
        v67 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v68 = [startTimestamp firstThreadStateOnOrAfterTime:0 sampleIndex:v67];
      v69 = v68;
      if (!v68)
      {
        goto LABEL_107;
      }

      if (*(selfCopy + 48) == 1)
      {
        if ([v68 startSampleIndex] > *(selfCopy + 56))
        {
LABEL_97:
          creationTimestamp = [startTimestamp creationTimestamp];
          if (!creationTimestamp)
          {
LABEL_109:
            startTimestamp = [v69 startTimestamp];
            goto LABEL_110;
          }

          v73 = *(selfCopy + 48);
          if (v73 != 1)
          {
            goto LABEL_105;
          }

          v74 = *(selfCopy + 168);
          creationTimestamp2 = [startTimestamp creationTimestamp];
          v75 = [v74 indexOfFirstSampleOnOrAfterTimestamp:creationTimestamp2];
          if (v75 < [v69 startSampleIndex])
          {

            goto LABEL_109;
          }

          if (*(selfCopy + 48))
          {
          }

          else
          {
LABEL_105:
            creationTimestamp3 = [startTimestamp creationTimestamp];
            startTimestamp2 = [v69 startTimestamp];
            v82 = [creationTimestamp3 lt:startTimestamp2];

            if (v73)
            {

              if (v82)
              {
                goto LABEL_109;
              }
            }

            else
            {

              if (v82)
              {
                goto LABEL_109;
              }
            }
          }

LABEL_107:
          startTimestamp = 0;
LABEL_110:

          goto LABEL_111;
        }

        if (*(selfCopy + 48))
        {
          goto LABEL_107;
        }
      }

      startTimestamp3 = [v69 startTimestamp];
      v71 = [startTimestamp3 gt:*(selfCopy + 32)];

      if (!v71)
      {
        goto LABEL_107;
      }

      goto LABEL_97;
    }
  }

  if (self)
  {
    *(self + 8) = 1;
  }

LABEL_118:

  _Block_object_dispose(v159, 8);
  _Block_object_dispose(&v161, 8);
  _Block_object_dispose(&v165, 8);
  _Block_object_dispose(v169, 8);

  _Block_object_dispose(v171, 8);
  _Block_object_dispose(v173, 8);
  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(&v178, 8);
  _Block_object_dispose(&v182, 8);
  _Block_object_dispose(&v186, 8);
  _Block_object_dispose(&v190, 8);
  _Block_object_dispose(&v194, 8);
  _Block_object_dispose(&v198, 8);
  _Block_object_dispose(&v202, 8);
  _Block_object_dispose(&v206, 8);
  _Block_object_dispose(&v210, 8);
  _Block_object_dispose(&v214, 8);
  _Block_object_dispose(&v218, 8);
  _Block_object_dispose(&v222, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v228, 8);
  _Block_object_dispose(&v232, 8);
  _Block_object_dispose(&v236, 8);
  objc_autoreleasePoolPop(context);
}

void __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke(uint64_t a1, void *a2, void *a3, char *a4)
{
  v123 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    goto LABEL_10;
  }

  if ([*(*(a1 + 40) + 168) targetDispatchQueueId])
  {
    v8 = *(a1 + 48);
    v9 = [*(*(a1 + 40) + 168) targetProcess];
    v10 = v9;
    if (v8 == v9)
    {
      v11 = [*(a1 + 32) identifier];
      v12 = [*(*(a1 + 40) + 168) targetDispatchQueueId];

      if (v11 == v12)
      {
        if (![*(*(a1 + 40) + 168) targetThreadId])
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if ([a2 isMainThread])
  {
    return;
  }

LABEL_9:
  v13 = [a2 threadId];
  if (v13 == [*(*(a1 + 40) + 168) targetThreadId])
  {
    return;
  }

LABEL_10:
  *(*(*(a1 + 96) + 8) + 24) = 1;
  v14 = *(a1 + 296);
  if (!v14 || v14 >= [a3 basePriority])
  {
    v15 = *(a1 + 300);
    if ((!v15 || v15 <= [a3 basePriority]) && (*(a1 + 304) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || (objc_msgSend(a3, "isUserActive") & 1) == 0) && (*(a1 + 305) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || objc_msgSend(a3, "isUserActive")) && (*(a1 + 306) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || objc_msgSend(a3, "isOnBattery")) && (*(a1 + 307) != 1 || !objc_msgSend(a3, "isBatteryAndUserActivityValid") || (objc_msgSend(a3, "isOnBattery") & 1) == 0))
    {
      if ((*(a1 + 308) & 1) == 0 && *(a1 + 309) != 1 || ![a3 isRunning] || (v16 = objc_msgSend(a3, "cpuNum"), v16 == -1) || ((v17 = v16, *(a1 + 308) != 1) || (-[SASampleStore clusterFlagsForCPUNum:](*(*(a1 + 40) + 168), v16) & 2) == 0) && (*(a1 + 309) != 1 || (-[SASampleStore clusterFlagsForCPUNum:](*(*(a1 + 40) + 168), v17) & 1) == 0))
      {
        if (([a3 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a3, "startSampleIndex") <= *(*(a1 + 40) + 64)) && (objc_msgSend(a3, "endSampleIndex") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a3, "endSampleIndex") >= *(*(a1 + 40) + 56)))
        {
          if ((*(a1 + 310) & 1) != 0 || *(a1 + 280) == 1 || *(a1 + 288) == 3 || *(a1 + 56) || ![a3 hasSwiftTask] || (objc_msgSend(a2, "isMainThread") & 1) != 0 || (v18 = objc_msgSend(a2, "threadId"), v18 == objc_msgSend(*(*(a1 + 40) + 168), "targetThreadId")))
          {
            v19 = *(a1 + 40);
            v20 = *(a1 + 48);
            v21 = [a3 dispatchQueue];
            LODWORD(v19) = [(SASamplePrinter *)v19 shouldPrintTask:v20 thread:a2 dispatchQueue:v21];

            if (v19)
            {
              if (!*(a1 + 32) && !*(a1 + 56) && *(*(*(a1 + 104) + 8) + 24) == 1 && [a3 isIdleWorkQueue])
              {
                *(*(*(a1 + 112) + 8) + 24) = 1;
              }

              if (!*(a1 + 64))
              {
                v22 = *(a1 + 72);
                v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadId")}];
                LOBYTE(v22) = [v22 containsObject:v23];

                if ((v22 & 1) == 0)
                {
                  v24 = *(a1 + 72);
                  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadId")}];
                  [v24 addObject:v25];
                }
              }

              if (!*(a1 + 32))
              {
                v26 = [a3 dispatchQueue];
                v27 = *(a1 + 80);
                if (v26)
                {
                  if (([*(a1 + 80) containsObject:v26] & 1) == 0)
                  {
                    [*(a1 + 80) addObject:v26];
                  }
                }

                else
                {
                  v28 = [MEMORY[0x1E695DFB0] null];
                  v29 = [v27 containsObject:v28];

                  if ((v29 & 1) == 0)
                  {
                    v30 = *(a1 + 80);
                    v31 = [MEMORY[0x1E695DFB0] null];
                    [v30 addObject:v31];
                  }
                }
              }

              v32 = [a3 swiftTask];
              v33 = *(a1 + 88);
              if (v32)
              {
                if (([*(a1 + 88) containsObject:v32] & 1) == 0)
                {
                  [*(a1 + 88) addObject:v32];
                }
              }

              else
              {
                v34 = [MEMORY[0x1E695DFB0] null];
                v35 = [v33 containsObject:v34];

                if ((v35 & 1) == 0)
                {
                  v36 = *(a1 + 88);
                  v37 = [MEMORY[0x1E695DFB0] null];
                  [v36 addObject:v37];
                }
              }

              if ([a3 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v38 = *(*(*(a1 + 120) + 8) + 24);
                if (v38 == 0x7FFFFFFFFFFFFFFFLL || v38 > [a3 startSampleIndex])
                {
                  *(*(*(a1 + 120) + 8) + 24) = [a3 startSampleIndex];
                  objc_storeStrong((*(*(a1 + 128) + 8) + 40), a2);
                }

                v39 = *(*(*(a1 + 136) + 8) + 24);
                if (v39 == 0x7FFFFFFFFFFFFFFFLL || v39 < [a3 endSampleIndex])
                {
                  *(*(*(a1 + 136) + 8) + 24) = [a3 endSampleIndex];
                }
              }

              v102 = v32;
              if ((*(*(*(a1 + 144) + 8) + 24) & 1) == 0)
              {
                v40 = [a3 name];

                v41 = *(*(*(a1 + 152) + 8) + 40);
                if (!v40)
                {
                  if (!v41)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_82;
                }

                v42 = [a3 name];
                v43 = v42;
                v44 = *(*(a1 + 152) + 8);
                v45 = *(v44 + 40);
                if (v41)
                {
                  if (v42 == v45)
                  {

                    goto LABEL_84;
                  }

                  v46 = [a3 name];
                  v47 = [v46 isEqualToString:*(*(*(a1 + 152) + 8) + 40)];

                  if (v47)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_82;
                }

                *(v44 + 40) = v42;

                if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
                {
LABEL_82:
                  *(*(*(a1 + 144) + 8) + 24) = 1;
                }
              }

LABEL_84:
              *(*(*(a1 + 160) + 8) + 24) += [a3 sampleCountInSampleIndexRangeStart:*(*(a1 + 40) + 56) end:*(*(a1 + 40) + 64)];
              if ([*(*(a1 + 40) + 168) dataSource] != 8 || objc_msgSend(*(*(a1 + 40) + 168), "haveKPerfSched"))
              {
                if ((*(*(*(a1 + 168) + 8) + 24) & 0x80000000) != 0 || [a3 scheduledPriority] < *(*(*(a1 + 168) + 8) + 24))
                {
                  *(*(*(a1 + 168) + 8) + 24) = [a3 scheduledPriority];
                }

                if ((*(*(*(a1 + 176) + 8) + 24) & 0x80000000) != 0 || [a3 scheduledPriority] > *(*(*(a1 + 176) + 8) + 24))
                {
                  *(*(*(a1 + 176) + 8) + 24) = [a3 scheduledPriority];
                }

                if ((*(*(*(a1 + 184) + 8) + 24) & 0x80000000) != 0 || [a3 basePriority] < *(*(*(a1 + 184) + 8) + 24))
                {
                  *(*(*(a1 + 184) + 8) + 24) = [a3 basePriority];
                }

                if ((*(*(*(a1 + 192) + 8) + 24) & 0x80000000) != 0 || [a3 basePriority] > *(*(*(a1 + 192) + 8) + 24))
                {
                  *(*(*(a1 + 192) + 8) + 24) = [a3 basePriority];
                }

                v117 = 0;
                v118 = 0;
                v119 = 0;
                [(SAThread *)a2 cpuTimeForThreadStateIndex:a4 inTimestampRangeStart:*(*(a1 + 40) + 32) end:*(*(a1 + 40) + 40), &v117];
                v48 = v118;
                *(*(*(a1 + 200) + 8) + 24) += v117;
                *(*(*(a1 + 208) + 8) + 24) += v48;
                *(*(*(a1 + 216) + 8) + 24) += v119;
              }

              v116 = 0;
              v117 = 0;
              v115 = 0;
              v49 = *(*(*(a1 + 224) + 8) + 24);
              if (v49 != [a2 threadId])
              {
                *(*(*(a1 + 224) + 8) + 24) = [a2 threadId];
                Property = *(*(a1 + 40) + 168);
                if (Property)
                {
                  Property = objc_getProperty(Property, v50, 1120, 1);
                }

                v52 = Property;
                v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(*(a1 + 224) + 8) + 24)];
                v54 = [v52 objectForKeyedSubscript:v53];
                v55 = [v54 objectEnumerator];
                v56 = *(*(a1 + 232) + 8);
                v57 = *(v56 + 40);
                *(v56 + 40) = v55;

                v58 = [*(*(*(a1 + 232) + 8) + 40) nextObject];
                v59 = *(*(a1 + 240) + 8);
                v60 = *(v59 + 40);
                *(v59 + 40) = v58;
              }

              v61 = *(*(*(a1 + 240) + 8) + 40);
              if (v61)
              {
                v62 = [(SASamplePrinter *)*(a1 + 40) _findIOBefore:&v116 during:&v115 after:a2 thread:a4 stateIndex:*(*(*(a1 + 232) + 8) + 40) inIO:v61 nextIO:?];
                v63 = *(*(a1 + 240) + 8);
                v64 = *(v63 + 40);
                *(v63 + 40) = v62;

                v65 = v117;
              }

              else
              {
                v65 = 0;
              }

              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v66 = v65;
              v67 = [v66 countByEnumeratingWithState:&v111 objects:v122 count:16];
              if (v67)
              {
                v68 = v67;
                v69 = *v112;
                do
                {
                  for (i = 0; i != v68; ++i)
                  {
                    if (*v112 != v69)
                    {
                      objc_enumerationMutation(v66);
                    }

                    *(*(*(a1 + 248) + 8) + 24) += [*(*(&v111 + 1) + 8 * i) size];
                  }

                  v68 = [v66 countByEnumeratingWithState:&v111 objects:v122 count:16];
                }

                while (v68);
              }

              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v71 = v116;
              v72 = [v71 countByEnumeratingWithState:&v107 objects:v121 count:16];
              if (v72)
              {
                v73 = v72;
                v74 = *v108;
                do
                {
                  for (j = 0; j != v73; ++j)
                  {
                    if (*v108 != v74)
                    {
                      objc_enumerationMutation(v71);
                    }

                    *(*(*(a1 + 248) + 8) + 24) += [*(*(&v107 + 1) + 8 * j) size];
                  }

                  v73 = [v71 countByEnumeratingWithState:&v107 objects:v121 count:16];
                }

                while (v73);
              }

              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v76 = v115;
              v77 = [v76 countByEnumeratingWithState:&v103 objects:v120 count:16];
              if (v77)
              {
                v78 = v77;
                v79 = *v104;
                do
                {
                  for (k = 0; k != v78; ++k)
                  {
                    if (*v104 != v79)
                    {
                      objc_enumerationMutation(v76);
                    }

                    *(*(*(a1 + 248) + 8) + 24) += [*(*(&v103 + 1) + 8 * k) size];
                  }

                  v78 = [v76 countByEnumeratingWithState:&v103 objects:v120 count:16];
                }

                while (v78);
              }

              v81 = [v66 count];
              v82 = [v71 count] + v81;
              *(*(*(a1 + 256) + 8) + 24) += v82 + [v76 count];
              if (*(*(*(a1 + 104) + 8) + 24) != 1 || ([a3 isRunning] & 1) != 0)
              {
                goto LABEL_151;
              }

              v83 = [a3 timestampLastRan];
              if (v83)
              {
                v84 = v83;
                if (a4)
                {
                  v85 = [a2 threadStates];
                  v86 = [v85 objectAtIndexedSubscript:a4 - 1];
                  v87 = [v86 endTimestamp];
                  v101 = [v87 lt:*(*(a1 + 40) + 32)];

                  if (!v101)
                  {
                    goto LABEL_141;
                  }
                }

                else
                {
                }

                v88 = [a3 startTimestamp];
                if ([v88 gt:*(*(a1 + 40) + 32)])
                {
                  v89 = [a3 startTimestamp];
                }

                else
                {
                  v89 = *(*(a1 + 40) + 32);
                }

                if (v89)
                {
                  v90 = [a3 timestampLastRan];
                  [v90 deltaSecondsTo:v89 timeDomainPriorityList:&unk_1F5BDCE08 timeDomainUsed:0];
                  *(*(*(a1 + 264) + 8) + 24) = v91;

                  v92 = *(*(a1 + 264) + 8);
                  if (*(v92 + 24) < 0.0)
                  {
                    *(v92 + 24) = 0;
                  }
                }
              }

LABEL_141:
              if ([a3 isRunnable])
              {
                v93 = [a3 timestampLastMadeRunnable];
                if (v93)
                {
                  v94 = v93;
                  v95 = [a2 isProcessorIdleThread];

                  if ((v95 & 1) == 0)
                  {
                    v96 = [a3 startTimestamp];
                    if ([v96 gt:*(*(a1 + 40) + 32)])
                    {
                      v97 = [a3 startTimestamp];
                    }

                    else
                    {
                      v97 = *(*(a1 + 40) + 32);
                    }

                    if (v97)
                    {
                      v98 = [a3 timestampLastMadeRunnable];
                      [v98 deltaSecondsTo:v97 timeDomainPriorityList:&unk_1F5BDCE20 timeDomainUsed:0];
                      *(*(*(a1 + 272) + 8) + 24) = v99;

                      v100 = *(*(a1 + 272) + 8);
                      if (*(v100 + 24) < 0.0)
                      {
                        *(v100 + 24) = 0;
                      }
                    }
                  }
                }
              }

LABEL_151:
              *(*(*(a1 + 104) + 8) + 24) = 0;
            }
          }
        }
      }
    }
  }
}

- (id)_findIOBefore:(void *)before during:(void *)during after:(void *)after thread:(unint64_t)thread stateIndex:(void *)index inIO:(void *)o nextIO:
{
  if (!self)
  {
    o = 0;
    goto LABEL_59;
  }

  threadStates = [after threadStates];
  v17 = [threadStates objectAtIndexedSubscript:thread];

  afterCopy = after;
  threadCopy = thread;
  if (thread)
  {
    threadStates2 = [after threadStates];
    v19 = [threadStates2 objectAtIndexedSubscript:thread - 1];

    endTimestamp = [v19 endTimestamp];
    if ([v19 isIdleWorkQueue])
    {
      isIdleWorkQueue = 0;
    }

    else
    {
      isIdleWorkQueue = [v17 isIdleWorkQueue];
    }
  }

  else
  {
    endTimestamp = [after creationTimestamp];
    isIdleWorkQueue = 0;
  }

  beforeCopy = before;
  duringCopy = during;
  v60 = a2;
  if (!endTimestamp || *(self + 32) && ([endTimestamp lt:?] & 1) != 0)
  {
    nextObject = *(self + 32);

    oCopy = o;
    if (!nextObject)
    {
      endTimestamp = 0;
      v30 = 0;
      v31 = 0;
      o = oCopy;
      goto LABEL_58;
    }

    selfCopy2 = self;
    v24 = 0;
    endTimestamp = nextObject;
  }

  else
  {
    selfCopy2 = self;
    oCopy2 = o;
    v24 = 1;
  }

  while (v24)
  {
    startTimestamp = [o startTimestamp];
    v27 = [startTimestamp lt:endTimestamp];

    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    nextObject = [index nextObject];

    o = nextObject;
    if (!nextObject)
    {
      v30 = 0;
      v31 = 0;
      goto LABEL_58;
    }
  }

  endTimestamp2 = [o endTimestamp];
  v29 = [endTimestamp2 le:endTimestamp];

  if (v29)
  {
    goto LABEL_18;
  }

LABEL_20:
  v31 = 0;
  nextObject = 0;
  while (1)
  {
    startTimestamp2 = [o startTimestamp];
    endTimestamp3 = [v17 endTimestamp];
    v34 = [startTimestamp2 lt:endTimestamp3];

    if (!v34)
    {
      break;
    }

    endTimestamp4 = [o endTimestamp];
    startTimestamp3 = [v17 startTimestamp];
    v37 = [endTimestamp4 le:startTimestamp3];

    if (!v37)
    {
      if (!nextObject)
      {
        nextObject = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{o, 0}];
        goto LABEL_31;
      }

      v38 = nextObject;
      goto LABEL_28;
    }

    if ((isIdleWorkQueue & 1) == 0)
    {
      if (!v31)
      {
        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{o, 0}];
        goto LABEL_31;
      }

      v38 = v31;
LABEL_28:
      [v38 addObject:o];
    }

LABEL_31:
    nextObject2 = [index nextObject];

    o = nextObject2;
    if (!nextObject2)
    {
      v30 = 0;
      goto LABEL_58;
    }
  }

  threadStates3 = [afterCopy threadStates];
  v41 = [threadStates3 count] - 1;

  if (v41 <= threadCopy)
  {
    exitTimestamp = [afterCopy exitTimestamp];
    goto LABEL_39;
  }

  threadStates4 = [afterCopy threadStates];
  endTimestamp5 = [threadStates4 objectAtIndexedSubscript:threadCopy + 1];

  exitTimestamp = [endTimestamp5 startTimestamp];
  if (([v17 isIdleWorkQueue] & 1) != 0 || (objc_msgSend(endTimestamp5, "isIdleWorkQueue") & 1) == 0)
  {
    v30 = 0;
LABEL_44:

LABEL_57:
  }

  else
  {

LABEL_39:
    if (exitTimestamp && ![exitTimestamp gt:*(selfCopy2 + 40)])
    {
      v59 = 1;
      goto LABEL_46;
    }

    v30 = *(selfCopy2 + 40);

    if (v30)
    {
      v59 = 0;
      exitTimestamp = v30;
LABEL_46:
      v30 = 0;
      v45 = exitTimestamp;
      while (1)
      {
        if (v59)
        {
          endTimestamp5 = [o endTimestamp];
          if (![endTimestamp5 le:exitTimestamp])
          {
            goto LABEL_44;
          }
        }

        else
        {
          startTimestamp4 = [o startTimestamp];
          v47 = [startTimestamp4 lt:exitTimestamp];

          if (!v47)
          {
            exitTimestamp = v45;
            goto LABEL_57;
          }
        }

        if (v30)
        {
          [v30 addObject:o];
        }

        else
        {
          v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{o, 0}];
        }

        exitTimestamp = v45;
        nextObject3 = [index nextObject];

        o = nextObject3;
        if (!nextObject3)
        {
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  v49 = *v60;
  *v60 = v31;
  v50 = v31;

  v51 = *beforeCopy;
  *beforeCopy = nextObject;
  v52 = nextObject;

  v53 = *duringCopy;
  *duringCopy = v30;
  v54 = v30;

LABEL_59:

  return o;
}

void __123__SASamplePrinter_addHeaderForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_toStack_task_taskSampleCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 thread];
  v4 = [a2 threadState];
  (*(v3 + 16))(v3, v5, v4, [a2 threadStateIndex]);
}

- (void)iterateDispatchQueue:(void *)queue orSwiftTaskStates:(char *)states orThread:(void *)thread threadStateIndexes:(char *)indexes startingAtIndex:(uint64_t)index endingAfterTimestamp:(void *)timestamp task:(char)task stopAtTimeJumps:(uint64_t)self0 callback:
{
  statesCopy = states;
  v13 = a2;
  v130 = *MEMORY[0x1E69E9840];
  if (queue || a2 || !states)
  {
    if (queue || !a2 || states)
    {
      if (a2 || states || !queue)
      {
        goto LABEL_125;
      }

      threadCopy = queue;
      goto LABEL_14;
    }

    states = [a2 states];
LABEL_16:
    v18 = states;
    v17 = [states count];

    goto LABEL_17;
  }

  if (!thread)
  {
    states = [states threadStates];
    goto LABEL_16;
  }

  threadCopy = thread;
LABEL_14:
  v17 = [threadCopy count];
LABEL_17:
  if (v17 <= indexes)
  {
    return;
  }

  v108 = statesCopy;
  v19 = 0;
  v20 = 0;
  v110 = 0;
  v119 = 0;
  v112 = 1;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v113 = v17;
  v114 = v13;
  do
  {
    v22 = objc_autoreleasePoolPush();
    v121 = v21;
    if (v13)
    {
      states2 = [v13 states];
      v24 = [states2 objectAtIndexedSubscript:indexes];

      thread = [v24 thread];
      if (![*(self + 168) targetDispatchQueueId])
      {
        v123 = v24;
        v120 = thread;
        if (([thread isMainThread] & 1) != 0 || (v26 = objc_msgSend(thread, "threadId"), v50 = v26 == objc_msgSend(*(self + 168), "targetThreadId"), thread = v120, v50))
        {
          v119 = 1;
          v21 = v121;
          goto LABEL_117;
        }
      }

      goto LABEL_27;
    }

    if (queue)
    {
      v24 = [queue objectAtIndexedSubscript:indexes];
      thread = [v24 thread];
LABEL_27:
      threadStateIndex = [v24 threadStateIndex];
      goto LABEL_28;
    }

    thread = v108;
    if (!thread)
    {
      indexesCopy = indexes;
      goto LABEL_29;
    }

    v24 = [thread objectAtIndexedSubscript:indexes];
    threadStateIndex = [v24 unsignedLongValue];
LABEL_28:
    indexesCopy = threadStateIndex;

LABEL_29:
    v120 = thread;
    threadStates = [thread threadStates];
    v30 = [threadStates objectAtIndexedSubscript:indexesCopy];

    startSampleIndex = [v30 startSampleIndex];
    v32 = startSampleIndex;
    v123 = v30;
    context = v22;
    if (*(self + 48) == 1)
    {
      if (startSampleIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        startTimestamp = 0;
        v21 = v121;
        goto LABEL_116;
      }

      if (startSampleIndex <= *(self + 56))
      {
        v32 = *(self + 56);
      }

      sampleTimestamps = [*(self + 168) sampleTimestamps];
      startTimestamp = [sampleTimestamps objectAtIndexedSubscript:v32];
    }

    else
    {
      startTimestamp = [v30 startTimestamp];
    }

    indexesCopy2 = indexes;
    endTimestamp = [v30 endTimestamp];
    if (![startTimestamp le:endTimestamp])
    {
      startTimestamp5 = startTimestamp;
      v82 = v119;
      goto LABEL_106;
    }

    do
    {
      v36 = [startTimestamp le:index];

      if (!v36)
      {
        goto LABEL_107;
      }

      indexes = indexesCopy2;
      if (timestamp)
      {
        taskStates = [timestamp taskStates];
        v38 = [taskStates count];

        if (v38)
        {
          if (!v20 || ([v20 endTimestamp], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "lt:", startTimestamp), v39, v40))
          {

            v41 = v19 + ((v112 & 1) == 0);
            taskStates2 = [timestamp taskStates];
            v43 = [taskStates2 count];

            if (v41 >= v43)
            {
              v20 = 0;
              goto LABEL_52;
            }

            while (1)
            {
              taskStates3 = [timestamp taskStates];
              v20 = [taskStates3 objectAtIndexedSubscript:v41];

              if (*(self + 48) != 1 || [v20 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
              {
                endTimestamp2 = [v20 endTimestamp];
                v46 = [endTimestamp2 ge:startTimestamp];

                if (v46)
                {
                  break;
                }
              }

              ++v41;
              taskStates4 = [timestamp taskStates];
              v48 = [taskStates4 count];

              if (v41 >= v48)
              {
                v20 = 0;
                v112 = 0;
                goto LABEL_51;
              }
            }

            startTimestamp2 = [v20 startTimestamp];
            v13 = [startTimestamp2 le:startTimestamp];

            if ((v13 & 1) == 0)
            {
              v93 = *__error();
              v94 = _sa_logt();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                startTimestamp3 = [v20 startTimestamp];
                v96 = [startTimestamp3 debugDescription];
                uTF8String = [v96 UTF8String];
                v13 = [startTimestamp debugDescription];
                uTF8String2 = [v13 UTF8String];
                *buf = 136315394;
                v125 = uTF8String;
                v126 = 2080;
                v127 = uTF8String2;
                _os_log_error_impl(&dword_1E0E2F000, v94, OS_LOG_TYPE_ERROR, "tempTaskState.startTimestamp %s > timestamp %s", buf, 0x16u);
              }

              *__error() = v93;
              startTimestamp4 = [v20 startTimestamp];
              v100 = [startTimestamp4 debugDescription];
              statesCopy = [v100 UTF8String];
              v101 = [startTimestamp debugDescription];
              _SASetCrashLogMessage(10884, "tempTaskState.startTimestamp %s > timestamp %s", statesCopy, [v101 UTF8String]);

              _os_crash();
              __break(1u);
LABEL_125:
              v102 = *__error();
              v103 = _sa_logt();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                if (statesCopy)
                {
                  v104 = "y";
                }

                else
                {
                  v104 = "n";
                }

                if (v13)
                {
                  v105 = "y";
                }

                else
                {
                  v105 = "n";
                }

                *buf = 136315650;
                v125 = v104;
                v126 = 2080;
                v127 = v105;
                if (queue)
                {
                  v106 = "y";
                }

                else
                {
                  v106 = "n";
                }

                v128 = 2080;
                v129 = v106;
                _os_log_error_impl(&dword_1E0E2F000, v103, OS_LOG_TYPE_ERROR, "thread %s, dispatchQueue %s, swiftTaskStates %s", buf, 0x20u);
              }

              else
              {
                if (statesCopy)
                {
                  v104 = "y";
                }

                else
                {
                  v104 = "n";
                }

                if (v13)
                {
                  v105 = "y";
                }

                else
                {
                  v105 = "n";
                }

                if (queue)
                {
                  v106 = "y";
                }

                else
                {
                  v106 = "n";
                }
              }

              *__error() = v102;
              _SASetCrashLogMessage(10807, "thread %s, dispatchQueue %s, swiftTaskStates %s", v104, v105, v106);
              _os_crash();
              __break(1u);
            }

            v112 = 0;
            v19 = v41;
LABEL_51:
            indexes = indexesCopy2;
          }
        }
      }

LABEL_52:
      buf[0] = 0;
      v21 = v121;
      v50 = v121 != 0x7FFFFFFFFFFFFFFFLL && v121 == v32;
      v51 = v50;
      LOBYTE(v107) = v119;
      v52 = v123;
      (*(jumps + 16))(jumps, indexes, v32, v20, v120, indexesCopy, v123, v51, v107, buf);
      if (buf[0] == 1)
      {
        goto LABEL_119;
      }

      v118 = v19;
      if (task)
      {
        v53 = *(self + 104);
        if (v53)
        {
          v54 = v121 != 0x7FFFFFFFFFFFFFFFLL && v121 > v32;
          v55 = v54;
          if (*(self + 48) == 1 && !v55)
          {
            v56 = [v53 count];
            v57 = v110;
            if (v110 < v56)
            {
              if (v121 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v58 = [*(self + 104) objectAtIndexedSubscript:?];
                unsignedLongValue = [v58 unsignedLongValue];

                v21 = unsignedLongValue;
                v57 = v110;
              }

              v122 = indexesCopy;
              if (v21 <= v32)
              {
                v60 = v21;
                v61 = v57 + 1;
                v62 = [*(self + 104) count];
                v57 = v61;
                v21 = v60;
                if (v57 < v62)
                {
                  while (1)
                  {
                    v63 = v57;
                    v64 = [*(self + 104) objectAtIndexedSubscript:?];
                    unsignedLongValue2 = [v64 unsignedLongValue];

                    v21 = unsignedLongValue2;
                    if (unsignedLongValue2 > v32)
                    {
                      break;
                    }

                    v66 = [*(self + 104) count];
                    v57 = v63 + 1;
                    if (v63 + 1 >= v66)
                    {
                      goto LABEL_78;
                    }
                  }

                  v57 = v63;
                }
              }

LABEL_78:
              v110 = v57;
              if (v57 >= [*(self + 104) count])
              {
                v21 = 0x7FFFFFFFFFFFFFFFLL;
              }

              indexesCopy = v122;
            }
          }
        }
      }

      v121 = v21;
      if (!v20)
      {
        goto LABEL_86;
      }

      if (*(self + 48) != 1)
      {
        goto LABEL_148;
      }

      v67 = v21;
      endSampleIndex = [v20 endSampleIndex];
      v69 = endSampleIndex >= [v123 endSampleIndex];
      v21 = v67;
      if (v69)
      {
        goto LABEL_86;
      }

      if ((*(self + 48) & 1) == 0)
      {
LABEL_148:
        [v20 endTimestamp];
        v70 = startTimestamp;
        indexesCopy3 = indexes;
        timestampCopy = timestamp;
        selfCopy = self;
        v74 = indexesCopy;
        v76 = v75 = v21;
        endTimestamp3 = [v123 endTimestamp];
        v78 = [v76 ge:endTimestamp3];

        v21 = v75;
        indexesCopy = v74;
        self = selfCopy;
        timestamp = timestampCopy;
        indexes = indexesCopy3;
        startTimestamp = v70;
        if (v78)
        {
LABEL_86:
          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
            v52 = v123;
            v19 = v118;
          }

          else
          {
            v52 = v123;
            v19 = v118;
            if (*(self + 48) == 1 && v21 < [v123 endSampleIndex] + 1)
            {
              sampleTimestamps2 = [*(self + 168) sampleTimestamps];
              [sampleTimestamps2 objectAtIndexedSubscript:v21];
              startTimestamp5 = v80 = v21;

              startTimestamp = sampleTimestamps2;
              v32 = v80;
              goto LABEL_90;
            }
          }

          goto LABEL_114;
        }
      }

      if (v21 != 0x7FFFFFFFFFFFFFFFLL && *(self + 48) == 1 && v21 < [v20 endSampleIndex] + 1)
      {
        sampleTimestamps3 = [*(self + 168) sampleTimestamps];
        [sampleTimestamps3 objectAtIndexedSubscript:v21];
        startTimestamp5 = v84 = v21;

        startTimestamp = sampleTimestamps3;
        v32 = v84;
        v19 = v118;
        goto LABEL_90;
      }

      v85 = v118 + 1;
      do
      {
        v19 = v85;
        taskStates5 = [timestamp taskStates];
        v87 = [taskStates5 count];

        if (v19 >= v87)
        {

LABEL_111:
          v20 = 0;
          v21 = v121;
          v52 = v123;
LABEL_114:
          v119 = 0;
          goto LABEL_115;
        }

        taskStates6 = [timestamp taskStates];
        v89 = [taskStates6 objectAtIndexedSubscript:v19];

        if (*(self + 48) != 1)
        {
          break;
        }

        startSampleIndex2 = [v89 startSampleIndex];
        v85 = v19 + 1;
        v20 = v89;
      }

      while (startSampleIndex2 == 0x7FFFFFFFFFFFFFFFLL);
      if (!v89)
      {
        goto LABEL_111;
      }

      startSampleIndex3 = [v89 startSampleIndex];
      if (startSampleIndex3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        startTimestamp5 = [v89 startTimestamp];
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = startSampleIndex3;
        sampleTimestamps4 = [*(self + 168) sampleTimestamps];
        startTimestamp5 = [sampleTimestamps4 objectAtIndexedSubscript:v32];

        startTimestamp = sampleTimestamps4;
      }

      v20 = v89;
LABEL_90:

      endTimestamp = [v123 endTimestamp];
      v119 = 0;
      v82 = 0;
      startTimestamp = startTimestamp5;
    }

    while (([startTimestamp5 le:endTimestamp] & 1) != 0);
LABEL_106:

    startTimestamp = startTimestamp5;
    v119 = v82;
LABEL_107:
    indexes = indexesCopy2;
    v21 = v121;
    v52 = v123;
LABEL_115:
    if ([startTimestamp gt:index])
    {
LABEL_119:

      objc_autoreleasePoolPop(context);
      break;
    }

LABEL_116:

    v17 = v113;
    v13 = v114;
    v22 = context;
LABEL_117:

    objc_autoreleasePoolPop(v22);
    ++indexes;
  }

  while (indexes != v17);
}

- (id)stateChangeStringForThreadState:(unint64_t)state serialDispatchQueue:(unint64_t)queue swiftTaskStates:(void *)states thread:(void *)thread threadStateIndexes:(void *)indexes taskState:(void *)taskState task:(uint64_t)task iteratorIndex:(char)self0 missingStateIsInAnotherStack:(uint64_t)self1 numSamplesOmittedSincePreviousDisplayedSample:(void *)self2 sampleTimestamp:(void *)self3 previousSampleTimestamp:(void *)self4 previousDisplayedTimestamp:(void *)self5 previousTaskState:(void *)self6 previousThread:(char *)self7 previousThreadState:(char)self8 dispatchQueueChanges:(char)self9 swiftTaskChanges:(char)taskChanges priorityChanges:(char)priorityChanges nameChanges:(char)nameChanges threadChanges:(char)threadChanges isTimeJump:(void *)jump ioEventsSincePreviousThreadState:
{
  previousTaskStateCopy = previousTaskState;
  v394 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_529:
    v312 = 0;
LABEL_518:

    return v312;
  }

  v383 = 0;
  v384 = &v383;
  v385 = 0x3032000000;
  v386 = __Block_byref_object_copy__4;
  v387 = __Block_byref_object_dispose__4;
  v388 = 0;
  if (sampleTimestamp && threadChanges)
  {
    if (!sample || !timestamp)
    {
      v316 = *__error();
      v317 = _sa_logt();
      if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
      {
        v318 = [timestamp debugDescription];
        v319 = v318;
        uTF8String = [v318 UTF8String];
        previousTaskStateCopy = [sample debugDescription];
        v321 = previousTaskStateCopy;
        uTF8String2 = [previousTaskStateCopy UTF8String];
        *buf = 136315394;
        *&buf[4] = uTF8String;
        *&buf[12] = 2080;
        *&buf[14] = uTF8String2;
        _os_log_error_impl(&dword_1E0E2F000, v317, OS_LOG_TYPE_ERROR, "timeJump, but previousSampleTimestamp %s and sampleTimestamp %s", buf, 0x16u);
      }

      *__error() = v316;
      v48 = [timestamp debugDescription];
      v323 = v48;
      a2 = [v48 UTF8String];
      v50 = [sample debugDescription];
      v324 = v50;
      _SASetCrashLogMessage(11025, "timeJump, but previousSampleTimestamp %s and sampleTimestamp %s", a2, [v50 UTF8String]);

      _os_crash();
      __break(1u);
LABEL_526:
      v371 = *__error();
      v374 = _sa_logt();
      if (os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
      {
        v325 = [previousTaskStateCopy debugDescription];
        v326 = v325;
        uTF8String3 = [v325 UTF8String];
        v327 = [previousThread debugDescription];
        v328 = v327;
        uTF8String4 = [v327 UTF8String];
        v330 = [states debugDescription];
        v331 = v330;
        uTF8String5 = [v330 UTF8String];
        v333 = [a2 debugDescription];
        v334 = v333;
        uTF8String6 = [v333 UTF8String];
        *buf = 134219266;
        *&buf[4] = v48;
        *&buf[12] = 2048;
        *&buf[14] = v50;
        *&buf[22] = 2080;
        v390 = uTF8String3;
        *v391 = 2080;
        *&v391[2] = uTF8String4;
        *&v391[10] = 2080;
        *&v391[12] = uTF8String5;
        v392 = 2080;
        v393 = uTF8String6;
        _os_log_error_impl(&dword_1E0E2F000, v374, OS_LOG_TYPE_ERROR, "expected index %lu, actual is %lu, previousThread:%s previousThreadState:%s thread:%s threadState:%s", buf, 0x3Eu);
      }

      *__error() = v371;
      v336 = [previousTaskStateCopy debugDescription];
      v337 = v336;
      uTF8String7 = [v336 UTF8String];
      v339 = [previousThread debugDescription];
      v340 = v339;
      uTF8String8 = [v339 UTF8String];
      v342 = [states debugDescription];
      v343 = v342;
      uTF8String9 = [v342 UTF8String];
      v345 = [a2 debugDescription];
      v346 = v345;
      _SASetCrashLogMessage(11086, "expected index %lu, actual is %lu, previousThread:%s previousThreadState:%s thread:%s threadState:%s", v48, v50, uTF8String7, uTF8String8, uTF8String9, [v345 UTF8String]);

      _os_crash();
      __break(1u);
      goto LABEL_529;
    }

    v27 = [(SASamplePrinter *)self timeSpentAsleepBetweenStartTimestamp:sampleTimestamp endTimestamp:sample];
    if (v27 > 0.0)
    {
      v28 = v384[5];
      if (v28)
      {
        [v28 appendString:{@", "}];
      }

      else
      {
        v29 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v30 = v384[5];
        v384[5] = v29;
      }

      [v384[5] appendFormat:@"machine asleep for %.0fs", *&v27];
    }

    if (*(self + 96) > 0.0)
    {
      [sample machAbsTimeSeconds];
      v32 = v31;
      [timestamp machAbsTimeSeconds];
      if (v32 - v33 >= *(self + 96) * 10.0)
      {
        v34 = v384[5];
        if (v34)
        {
          [v34 appendString:{@", "}];
        }

        else
        {
          v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v36 = v384[5];
          v384[5] = v35;
        }

        v37 = v384[5];
        [sample machAbsTimeSeconds];
        v39 = v38;
        [timestamp machAbsTimeSeconds];
        [v37 appendFormat:@"%.0fms gap with no samples", (v39 - v40) * 1000.0];
      }
    }
  }

  if (*(self + 48) != 1)
  {
    goto LABEL_75;
  }

  if (state)
  {
    v41 = @"DispatchQueue";
LABEL_20:
    if (stack)
    {
      v42 = v384[5];
      if (v42)
      {
        [v42 appendString:{@", "}];
      }

      else
      {
        v45 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v46 = v384[5];
        v384[5] = v45;
      }

      v47 = @"s";
      if (stack == 1)
      {
        v47 = &stru_1F5BBF440;
      }

      [v384[5] appendFormat:@"%@ omitted via filtering for %lu sample%@", v41, stack, v47];
    }

    if (!a2 || previousThread == a2)
    {
LABEL_75:
      if (states)
      {
        v66 = previousTaskState == states;
      }

      else
      {
        v66 = 1;
      }

      v67 = !v66;
      v365 = v67;
      if (!v66 && nameChanges)
      {
        v68 = v384[5];
        if (v68)
        {
          [v68 appendString:{@", "}];
        }

        else
        {
          v69 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v70 = v384[5];
          v384[5] = v69;
        }

        [v384[5] appendFormat:@"%@ 0x%llx", @"Thread", objc_msgSend(states, "threadId")];
      }

      if (a2)
      {
        v71 = previousThread == a2;
      }

      else
      {
        v71 = 1;
      }

      v72 = v71;
      v368 = v72;
      if (v71)
      {
        goto LABEL_144;
      }

      if (previousThread)
      {
        swiftTask = [previousThread swiftTask];
        swiftTask2 = [a2 swiftTask];
        v75 = swiftTask == swiftTask2;

        if (v75)
        {
          goto LABEL_113;
        }
      }

      else if (!changes)
      {
        goto LABEL_116;
      }

      swiftTask3 = [a2 swiftTask];
      v77 = swiftTask3;
      if (swiftTask3)
      {
        identifier = [swiftTask3 identifier];
        v79 = v384[5];
        if (identifier == -1)
        {
          if (v79)
          {
            [v79 appendString:{@", "}];
          }

          else
          {
            v85 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
            v86 = v384[5];
            v384[5] = v85;
          }

          [v384[5] appendFormat:@"%@ %@", @"Swift Task", @"UNKNOWN"];
        }

        else
        {
          if (v79)
          {
            [v79 appendString:{@", "}];
          }

          else
          {
            v81 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
            v82 = v384[5];
            v384[5] = v81;
          }

          [v384[5] appendFormat:@"%@ %llu", @"Swift Task", objc_msgSend(v77, "identifier")];
        }
      }

      else
      {
        v80 = v384[5];
        if (v80)
        {
          [v80 appendString:{@", "}];
        }

        else
        {
          v83 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v84 = v384[5];
          v384[5] = v83;
        }

        [v384[5] appendFormat:@"%@ none", @"Swift Task"];
      }

      if (previousThread)
      {
LABEL_113:
        dispatchQueue = [previousThread dispatchQueue];
        dispatchQueue2 = [a2 dispatchQueue];
        v89 = dispatchQueue == dispatchQueue2;

        if (v89)
        {
          if ((priorityChanges & 1) == 0)
          {
            goto LABEL_144;
          }

LABEL_122:
          name = [previousThread name];
          name2 = [a2 name];
          v98 = name == name2;

          if (v98)
          {
            goto LABEL_144;
          }

          name3 = [previousThread name];
          if (name3)
          {
            name4 = [a2 name];
            if (name4)
            {
              name5 = [previousThread name];
              name6 = [a2 name];
              v103 = [name5 isEqualToString:name6];

              if (v103)
              {
                goto LABEL_144;
              }
            }

            else
            {
            }
          }

          goto LABEL_130;
        }

        goto LABEL_117;
      }

LABEL_116:
      if (!threadState)
      {
        if ((priorityChanges & 1) == 0)
        {
          goto LABEL_144;
        }

LABEL_130:
        name7 = [a2 name];

        v105 = v384[5];
        if (name7)
        {
          if (v105)
          {
            [v105 appendString:{@", "}];
          }

          else
          {
            v107 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
            v108 = v384[5];
            v384[5] = v107;
          }

          v109 = v384[5];
          name8 = [a2 name];
          v111 = SACopySanitizedString(name8, 1, 0);
          [v109 appendFormat:@"Thread name %@", v111];

          goto LABEL_144;
        }

        if (previousThread)
        {
          if (v105)
          {
            [v105 appendString:{@", "}];
            v106 = @"Thread name cleared";
LABEL_143:
            [v384[5] appendFormat:v106];
            goto LABEL_144;
          }

          v112 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v106 = @"Thread name cleared";
        }

        else
        {
          if (v105)
          {
            [v105 appendString:{@", "}];
            v106 = @"Thread name unset";
            goto LABEL_143;
          }

          v112 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v106 = @"Thread name unset";
        }

        v113 = v384[5];
        v384[5] = v112;

        goto LABEL_143;
      }

LABEL_117:
      v90 = v384[5];
      if (v90)
      {
        [v90 appendString:{@", "}];
      }

      else
      {
        v91 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v92 = v384[5];
        v384[5] = v91;
      }

      v93 = v384[5];
      dispatchQueue3 = [a2 dispatchQueue];
      v95 = [SASamplePrinter displayNameForDispatchQueue:dispatchQueue3];
      [v93 appendFormat:@"%@ %@", @"DispatchQueue", v95];

      if (priorityChanges)
      {
        if (!previousThread)
        {
          goto LABEL_130;
        }

        goto LABEL_122;
      }

LABEL_144:
      if (indexes)
      {
        v114 = displayedTimestamp == indexes;
      }

      else
      {
        v114 = 1;
      }

      v115 = v114;
      v370 = v115;
      if (v114)
      {
LABEL_164:
        if (v368)
        {
          goto LABEL_206;
        }

        displayQoSTransitionsBetweenUnspecifiedAndUnavailable = [*(self + 16) displayQoSTransitionsBetweenUnspecifiedAndUnavailable];
        v381[0] = MEMORY[0x1E69E9820];
        v381[1] = 3221225472;
        v381[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke;
        v381[3] = &__block_descriptor_33_e8_B12__0C8l;
        v382 = displayQoSTransitionsBetweenUnspecifiedAndUnavailable;
        v123 = MEMORY[0x1E12EBE50](v381);
        v379[0] = MEMORY[0x1E69E9820];
        v379[1] = 3221225472;
        v379[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_2;
        v379[3] = &__block_descriptor_33_e11_B16__0C8C12l;
        v380 = displayQoSTransitionsBetweenUnspecifiedAndUnavailable;
        v124 = MEMORY[0x1E12EBE50](v379);
        if (previousThread)
        {
          v125 = v124[2](v124, [previousThread threadRequestedQos], objc_msgSend(a2, "threadRequestedQos"));
          v126 = v124[2](v124, [previousThread threadRequestedQosOverride], objc_msgSend(a2, "threadRequestedQosOverride"));
          v127 = v124[2](v124, [previousThread threadQosPromote], objc_msgSend(a2, "threadQosPromote"));
          v361 = v124[2](v124, [previousThread threadQosKEventOverride], objc_msgSend(a2, "threadQosKEventOverride"));
          v359 = v124[2](v124, [previousThread threadQosWorkQueueOverride], objc_msgSend(a2, "threadQosWorkQueueOverride"));
          v358 = v124[2](v124, [previousThread threadQosWorkloopServicerOverride], objc_msgSend(a2, "threadQosWorkloopServicerOverride"));
          isPromotedAboveTask = [a2 isPromotedAboveTask];
          if (isPromotedAboveTask == [previousThread isPromotedAboveTask])
          {
            if (((v125 | v126 | v127 | v361 | v359 | v358) & 1) == 0)
            {
              threadQos = [a2 threadQos];
              if (threadQos == [previousThread threadQos])
              {
                goto LABEL_205;
              }

LABEL_175:
              v130 = 0;
              v356 = 0;
              LOBYTE(v359) = 0;
              LOBYTE(v127) = 0;
              LOBYTE(v125) = 0;
              LOBYTE(v126) = 0;
              LOBYTE(v361) = 0;
              LOBYTE(v358) = 0;
LABEL_176:
              v131 = v384[5];
              if (v131)
              {
                [v131 appendString:{@", "}];
              }

              else
              {
                v132 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                v133 = v384[5];
                v384[5] = v132;
              }

              v134 = v384[5];
              v135 = StringForThreadQoS([a2 threadQos]);
              [v134 appendFormat:@"thread QoS %@", v135];

              if (!v130)
              {
                goto LABEL_205;
              }

              objc_msgSend(v384[5], "appendString:", @" (");
              if (v125)
              {
                v136 = v384[5];
                v137 = StringForThreadQoS([a2 threadRequestedQos]);
                [v136 appendFormat:@"requested %@", v137];

                if ((v126 & 1) == 0)
                {
LABEL_185:
                  if ((v127 & 1) == 0)
                  {
LABEL_189:
                    if ((v361 & 1) == 0)
                    {
LABEL_192:
                      if ((v359 & 1) == 0)
                      {
LABEL_195:
                        if ((v358 & 1) == 0)
                        {
                          goto LABEL_198;
                        }

                        [v384[5] appendString:{@", "}];
LABEL_197:
                        v146 = v384[5];
                        v147 = StringForThreadQoS([a2 threadQosWorkloopServicerOverride]);
                        [v146 appendFormat:@"workloop servicer override %@", v147];

LABEL_198:
                        if (v356)
                        {
                          [v384[5] appendString:{@", "}];
LABEL_200:
                          if ([a2 isPromotedAboveTask])
                          {
                            v148 = @"thread promoted above process clamp";
                          }

                          else
                          {
                            v148 = @"thread limited by process clamp";
                          }

                          [v384[5] appendFormat:v148];
                        }

LABEL_204:
                        [v384[5] appendString:@""]);
                        goto LABEL_205;
                      }

                      [v384[5] appendString:{@", "}];
LABEL_194:
                      v144 = v384[5];
                      v145 = StringForThreadQoS([a2 threadQosWorkQueueOverride]);
                      [v144 appendFormat:@"work queue override %@", v145];

                      goto LABEL_195;
                    }

                    [v384[5] appendString:{@", "}];
LABEL_191:
                    v142 = v384[5];
                    v143 = StringForThreadQoS([a2 threadQosKEventOverride]);
                    [v142 appendFormat:@"kevent override %@", v143];

                    goto LABEL_192;
                  }

                  [v384[5] appendString:{@", "}];
LABEL_188:
                  v140 = v384[5];
                  v141 = StringForThreadQoS([a2 threadQosPromote]);
                  [v140 appendFormat:@"promote %@", v141];

                  goto LABEL_189;
                }

                [v384[5] appendString:{@", "}];
              }

              else if ((v126 & 1) == 0)
              {
                if ((v127 & 1) == 0)
                {
                  if ((v361 & 1) == 0)
                  {
                    if ((v359 & 1) == 0)
                    {
                      if ((v358 & 1) == 0)
                      {
                        if (v356)
                        {
                          goto LABEL_200;
                        }

                        goto LABEL_204;
                      }

                      goto LABEL_197;
                    }

                    goto LABEL_194;
                  }

                  goto LABEL_191;
                }

                goto LABEL_188;
              }

              v138 = v384[5];
              v139 = StringForThreadQoS([a2 threadRequestedQosOverride]);
              [v138 appendFormat:@"requested override %@", v139];

              goto LABEL_185;
            }

            goto LABEL_173;
          }
        }

        else
        {
          v125 = v123[2](v123, [a2 threadRequestedQos]);
          v126 = v123[2](v123, [a2 threadRequestedQosOverride]);
          v127 = v123[2](v123, [a2 threadQosPromote]);
          v361 = v123[2](v123, [a2 threadQosKEventOverride]);
          v359 = v123[2](v123, [a2 threadQosWorkQueueOverride]);
          v358 = v123[2](v123, [a2 threadQosWorkloopServicerOverride]);
          if (([a2 isPromotedAboveTask] & 1) == 0)
          {
            if (((v125 | v126 | v127 | v361 | v359 | v358) & 1) == 0)
            {
              if (![a2 threadQos])
              {
LABEL_205:

LABEL_206:
                if (v370)
                {
                  if (!a2)
                  {
                    goto LABEL_364;
                  }

                  goto LABEL_331;
                }

                if (![taskState usesSuddenTermination])
                {
LABEL_221:
                  if (!displayedTimestamp)
                  {
                    if (([indexes isBoosted] & 1) == 0)
                    {
LABEL_235:
                      if (([indexes isRunawayMitigated] & 1) == 0)
                      {
                        goto LABEL_248;
                      }

                      v162 = 1;
                      goto LABEL_239;
                    }

                    v156 = 1;
                    goto LABEL_226;
                  }

LABEL_222:
                  isBoosted = [indexes isBoosted];
                  if (isBoosted == [displayedTimestamp isBoosted])
                  {
                    goto LABEL_237;
                  }

                  v156 = 0;
LABEL_226:
                  isBoosted2 = [indexes isBoosted];
                  v158 = v384[5];
                  if (isBoosted2)
                  {
                    if (v158)
                    {
                      [v158 appendString:{@", "}];
                      v159 = @"process unclamped";
                      goto LABEL_234;
                    }

                    v160 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v159 = @"process unclamped";
                  }

                  else
                  {
                    if (v158)
                    {
                      [v158 appendString:{@", "}];
                      v159 = @"process clamped";
                      goto LABEL_234;
                    }

                    v160 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v159 = @"process clamped";
                  }

                  v161 = v384[5];
                  v384[5] = v160;

LABEL_234:
                  [v384[5] appendFormat:v159];
                  if (v156)
                  {
                    goto LABEL_235;
                  }

LABEL_237:
                  isRunawayMitigated = [indexes isRunawayMitigated];
                  if (isRunawayMitigated == [displayedTimestamp isRunawayMitigated])
                  {
                    goto LABEL_250;
                  }

                  v162 = 0;
LABEL_239:
                  isRunawayMitigated2 = [indexes isRunawayMitigated];
                  v165 = v384[5];
                  if (isRunawayMitigated2)
                  {
                    if (v165)
                    {
                      [v165 appendString:{@", "}];
                      v166 = @"process runaway mitigated";
                      goto LABEL_247;
                    }

                    v167 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v166 = @"process runaway mitigated";
                  }

                  else
                  {
                    if (v165)
                    {
                      [v165 appendString:{@", "}];
                      v166 = @"process not runaway mitigated";
                      goto LABEL_247;
                    }

                    v167 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                    v166 = @"process not runaway mitigated";
                  }

                  v168 = v384[5];
                  v384[5] = v167;

LABEL_247:
                  [v384[5] appendFormat:v166];
                  if (v162)
                  {
LABEL_248:
                    v169 = 1;
                    if (([indexes isTALEngaged] & 1) == 0)
                    {
LABEL_260:
                      if (![taskState isRunningBoardManaged])
                      {
                        goto LABEL_282;
                      }

                      if ((v169 & 1) == 0)
                      {
                        isRunningBoardActive = [indexes isRunningBoardActive];
                        if (isRunningBoardActive == [displayedTimestamp isRunningBoardActive])
                        {
LABEL_272:
                          hasRunningBoardAssertion = [indexes hasRunningBoardAssertion];
                          if (hasRunningBoardAssertion == [displayedTimestamp hasRunningBoardAssertion])
                          {
                            goto LABEL_286;
                          }

LABEL_273:
                          hasRunningBoardAssertion2 = [indexes hasRunningBoardAssertion];
                          v184 = v384[5];
                          if (hasRunningBoardAssertion2)
                          {
                            if (v184)
                            {
                              [v184 appendString:{@", "}];
                              v185 = @"process has a runningboard assertion";
LABEL_281:
                              [v384[5] appendFormat:v185];
LABEL_282:
                              if (v169)
                              {
                                v188 = [indexes effectiveJetsamPriority] != 0x80000000;
                                v190 = 0;
                                if ([indexes requestedJetsamPriority] != 0x80000000)
                                {
                                  requestedJetsamPriority = [indexes requestedJetsamPriority];
                                  if (requestedJetsamPriority != [indexes effectiveJetsamPriority])
                                  {
                                    v190 = 1;
                                  }
                                }

                                if ([indexes assertionJetsamPriority] != 0x80000000)
                                {
                                  assertionJetsamPriority = [indexes assertionJetsamPriority];
                                  effectiveJetsamPriority = [indexes effectiveJetsamPriority];
                                  goto LABEL_297;
                                }

                                goto LABEL_298;
                              }

LABEL_286:
                              effectiveJetsamPriority2 = [indexes effectiveJetsamPriority];
                              v188 = effectiveJetsamPriority2 != [displayedTimestamp effectiveJetsamPriority];
                              requestedJetsamPriority2 = [indexes requestedJetsamPriority];
                              v190 = 0;
                              if (requestedJetsamPriority2 != [displayedTimestamp requestedJetsamPriority])
                              {
                                requestedJetsamPriority3 = [indexes requestedJetsamPriority];
                                if (requestedJetsamPriority3 != [indexes effectiveJetsamPriority] || (v194 = objc_msgSend(displayedTimestamp, "requestedJetsamPriority"), v194 != objc_msgSend(displayedTimestamp, "effectiveJetsamPriority")))
                                {
                                  v190 = 1;
                                }
                              }

                              assertionJetsamPriority2 = [indexes assertionJetsamPriority];
                              if (assertionJetsamPriority2 != [displayedTimestamp assertionJetsamPriority])
                              {
                                assertionJetsamPriority3 = [indexes assertionJetsamPriority];
                                if (assertionJetsamPriority3 != [indexes effectiveJetsamPriority])
                                {
                                  goto LABEL_301;
                                }

                                assertionJetsamPriority = [displayedTimestamp assertionJetsamPriority];
                                effectiveJetsamPriority = [displayedTimestamp effectiveJetsamPriority];
LABEL_297:
                                if (assertionJetsamPriority == effectiveJetsamPriority)
                                {
                                  goto LABEL_298;
                                }

LABEL_301:
                                v199 = 1;
LABEL_302:
                                effectiveJetsamPriority3 = [indexes effectiveJetsamPriority];
                                v201 = v384[5];
                                if (effectiveJetsamPriority3 == 0x80000000)
                                {
                                  if (v201)
                                  {
                                    [v201 appendString:{@", "}];
                                  }

                                  else
                                  {
                                    v202 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                    v203 = v384[5];
                                    v384[5] = v202;
                                  }

                                  [v384[5] appendFormat:@"jetsam priority unknown"];
                                }

                                else
                                {
                                  if (v201)
                                  {
                                    [v201 appendString:{@", "}];
                                  }

                                  else
                                  {
                                    v204 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                    v205 = v384[5];
                                    v384[5] = v204;
                                  }

                                  [v384[5] appendFormat:@"jetsam priority %d", objc_msgSend(indexes, "effectiveJetsamPriority")];
                                }

                                if ((v199 | v190) == 1)
                                {
                                  objc_msgSend(v384[5], "appendString:", @" (requested ");
                                  if ([indexes requestedJetsamPriority] == 0x80000000)
                                  {
                                    [v384[5] appendString:@"unknown"];
                                  }

                                  else
                                  {
                                    [v384[5] appendFormat:@"%d", objc_msgSend(indexes, "requestedJetsamPriority")];
                                  }

                                  [v384[5] appendString:{@", assertion "}];
                                  if ([indexes assertionJetsamPriority] == 0x80000000)
                                  {
                                    [v384[5] appendString:@"unknown"];
                                  }

                                  else
                                  {
                                    [v384[5] appendFormat:@"%d", objc_msgSend(indexes, "assertionJetsamPriority")];
                                  }

                                  [v384[5] appendString:@""]);
                                }

LABEL_319:
                                if (v169)
                                {
                                  if ([indexes memoryLimitMB] == 0x80000000)
                                  {
                                    goto LABEL_330;
                                  }
                                }

                                else
                                {
                                  memoryLimitMB = [indexes memoryLimitMB];
                                  if (memoryLimitMB == [displayedTimestamp memoryLimitMB])
                                  {
                                    goto LABEL_330;
                                  }
                                }

                                if ([indexes memoryLimitMB] == 0x80000000)
                                {
                                  v207 = @"unknown";
                                }

                                else
                                {
                                  v207 = SAFormattedBytesEx([indexes memoryLimitMB] << 20, 1, 0, 0, 0x100000uLL);
                                }

                                v208 = v384[5];
                                if (v208)
                                {
                                  [v208 appendString:{@", "}];
                                }

                                else
                                {
                                  v209 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                  v210 = v384[5];
                                  v384[5] = v209;
                                }

                                [v384[5] appendFormat:@"process memory limit %@", v207];

LABEL_330:
                                if (!a2)
                                {
                                  goto LABEL_357;
                                }

LABEL_331:
                                if (previousThread != a2)
                                {
                                  if (previousThread)
                                  {
                                    isDarwinBG = [previousThread isDarwinBG];
                                    if (isDarwinBG != [a2 isDarwinBG])
                                    {
LABEL_334:
                                      v212 = v384[5];
                                      if (v212)
                                      {
                                        [v212 appendString:{@", "}];
                                      }

                                      else
                                      {
                                        v214 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                        v215 = v384[5];
                                        v384[5] = v214;
                                      }

                                      v216 = v384[5];
                                      isDarwinBG2 = [a2 isDarwinBG];
                                      v218 = @"not ";
                                      v213 = &stru_1F5BBF440;
                                      if (isDarwinBG2)
                                      {
                                        v218 = &stru_1F5BBF440;
                                      }

                                      [v216 appendFormat:@"thread %@darwinbg", v218];
LABEL_342:
                                      if (v370)
                                      {
                                        goto LABEL_364;
                                      }

                                      if (displayedTimestamp)
                                      {
                                        isDarwinBG3 = [displayedTimestamp isDarwinBG];
                                        if (isDarwinBG3 == [indexes isDarwinBG])
                                        {
LABEL_357:
                                          donatingUniquePids = [displayedTimestamp donatingUniquePids];
                                          donatingUniquePids2 = [indexes donatingUniquePids];
                                          v228 = donatingUniquePids2;
                                          if ((donatingUniquePids != 0) != (donatingUniquePids2 != 0) || donatingUniquePids && donatingUniquePids2 && ([donatingUniquePids isEqualToSet:donatingUniquePids2] & 1) == 0)
                                          {
                                            v378[0] = MEMORY[0x1E69E9820];
                                            v378[1] = 3221225472;
                                            v378[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_3;
                                            v378[3] = &unk_1E86F7D40;
                                            v378[4] = taskState;
                                            v378[5] = self;
                                            v378[6] = &v383;
                                            v229 = MEMORY[0x1E12EBE50](v378);
                                            v230 = v229;
                                            if (sampleTimestamp != 0 && donatingUniquePids != 0)
                                            {
                                              (*(v229 + 16))(v229, donatingUniquePids, v228, @"dropped", sampleTimestamp);
                                            }

                                            startTimestamp = [indexes startTimestamp];
                                            if (startTimestamp)
                                            {
                                              (v230)[2](v230, v228, donatingUniquePids, @"received", startTimestamp);
                                            }
                                          }

LABEL_364:
                                          if (![*(self + 16) displayDifferentTypesOfSuspension])
                                          {
                                            goto LABEL_437;
                                          }

                                          if ((v368 & 1) == 0)
                                          {
                                            if (previousThread)
                                            {
                                              isSuspended = [a2 isSuspended];
                                              if (isSuspended != [previousThread isSuspended])
                                              {
LABEL_368:
                                                v233 = 1;
                                                goto LABEL_375;
                                              }
                                            }

                                            else if ([a2 isSuspended])
                                            {
                                              goto LABEL_368;
                                            }
                                          }

                                          v233 = 0;
LABEL_375:
                                          if (v370)
                                          {
                                            goto LABEL_427;
                                          }

                                          if (displayedTimestamp)
                                          {
                                            suspendCount = [indexes suspendCount];
                                            v235 = suspendCount != [displayedTimestamp suspendCount];
                                            isPidSuspended = [indexes isPidSuspended];
                                            if (isPidSuspended != [displayedTimestamp isPidSuspended])
                                            {
                                              goto LABEL_378;
                                            }
                                          }

                                          else
                                          {
                                            v235 = [indexes suspendCount] != 0;
                                            if ([indexes isPidSuspended])
                                            {
LABEL_378:
                                              if ([indexes isPidSuspended])
                                              {
                                                v237 = v384[5];
                                                if (v237)
                                                {
                                                  [v237 appendString:{@", "}];
                                                  v238 = @"process pidsuspended";
LABEL_405:
                                                  [v384[5] appendFormat:v238];
                                                  if (!v235)
                                                  {
                                                    goto LABEL_427;
                                                  }

                                                  v239 = 1;
LABEL_407:
                                                  if ([indexes suspendCount])
                                                  {
                                                    v250 = v384[5];
                                                    if (v250)
                                                    {
                                                      [v250 appendString:{@", "}];
                                                    }

                                                    else
                                                    {
                                                      v254 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                      v255 = v384[5];
                                                      v384[5] = v254;
                                                    }

                                                    v246 = v384[5];
                                                    suspendCount2 = [indexes suspendCount];
                                                    v248 = @"process suspend count %d";
LABEL_420:
                                                    [v246 appendFormat:v248, suspendCount2];
                                                    goto LABEL_427;
                                                  }

                                                  if ((v239 & 1) != 0 || ![indexes isPidSuspended])
                                                  {
                                                    if ((v233 & 1) == 0 && [a2 isSuspended])
                                                    {
                                                      v253 = v384[5];
                                                      if (v253)
                                                      {
                                                        [v253 appendString:{@", "}];
                                                      }

                                                      else
                                                      {
                                                        v314 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                        v315 = v384[5];
                                                        v384[5] = v314;
                                                      }

                                                      [v384[5] appendFormat:@"process suspend count 0 (thread still suspended)"];
                                                      goto LABEL_438;
                                                    }

                                                    v256 = v384[5];
                                                    if (v256)
                                                    {
                                                      [v256 appendString:{@", "}];
                                                      v252 = @"process suspend count 0";
                                                      goto LABEL_426;
                                                    }

                                                    v257 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                    v252 = @"process suspend count 0";
                                                  }

                                                  else
                                                  {
                                                    v251 = v384[5];
                                                    if (v251)
                                                    {
                                                      [v251 appendString:{@", "}];
                                                      v252 = @"process suspend count 0 (process still pidsuspended)";
LABEL_426:
                                                      [v384[5] appendFormat:v252];
LABEL_427:
                                                      if (!v233)
                                                      {
                                                        goto LABEL_437;
                                                      }

                                                      isSuspended2 = [a2 isSuspended];
                                                      v260 = v384[5];
                                                      if (isSuspended2)
                                                      {
                                                        if (v260)
                                                        {
                                                          [v260 appendString:{@", "}];
                                                          v261 = @"thread suspended";
LABEL_436:
                                                          [v384[5] appendFormat:v261];
LABEL_437:
                                                          if (v370)
                                                          {
                                                            goto LABEL_470;
                                                          }

LABEL_438:
                                                          if (displayedTimestamp)
                                                          {
                                                            isSuppressed = [indexes isSuppressed];
                                                            if (isSuppressed == [displayedTimestamp isSuppressed])
                                                            {
LABEL_451:
                                                              latencyQos = [indexes latencyQos];
                                                              if (latencyQos == [displayedTimestamp latencyQos])
                                                              {
                                                                goto LABEL_470;
                                                              }

                                                              goto LABEL_455;
                                                            }
                                                          }

                                                          else if (([indexes isSuppressed] & 1) == 0)
                                                          {
                                                            goto LABEL_453;
                                                          }

                                                          isSuppressed2 = [indexes isSuppressed];
                                                          v266 = v384[5];
                                                          if (isSuppressed2)
                                                          {
                                                            if (v266)
                                                            {
                                                              [v266 appendString:{@", "}];
                                                              v267 = @"process suppressed";
                                                              goto LABEL_450;
                                                            }

                                                            v268 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                            v267 = @"process suppressed";
                                                          }

                                                          else
                                                          {
                                                            if (v266)
                                                            {
                                                              [v266 appendString:{@", "}];
                                                              v267 = @"process unsuppressed";
                                                              goto LABEL_450;
                                                            }

                                                            v268 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                            v267 = @"process unsuppressed";
                                                          }

                                                          v269 = v384[5];
                                                          v384[5] = v268;

LABEL_450:
                                                          [v384[5] appendFormat:v267];
                                                          if (displayedTimestamp)
                                                          {
                                                            goto LABEL_451;
                                                          }

LABEL_453:
                                                          latencyQos2 = [indexes latencyQos];
                                                          if (!latencyQos2 || latencyQos2 == 16711681)
                                                          {
LABEL_470:
                                                            if ((v368 & 1) == 0)
                                                            {
                                                              if (previousThread && (v281 = [a2 ioTier], v281 == objc_msgSend(previousThread, "ioTier")) && (v282 = objc_msgSend(a2, "isIOPassive"), v282 == objc_msgSend(previousThread, "isIOPassive")))
                                                              {
                                                                if ((taskChanges & 1) == 0)
                                                                {
                                                                  goto LABEL_498;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v283 = v384[5];
                                                                if (v283)
                                                                {
                                                                  [v283 appendString:{@", "}];
                                                                }

                                                                else
                                                                {
                                                                  v284 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                  v285 = v384[5];
                                                                  v384[5] = v284;
                                                                }

                                                                [v384[5] appendFormat:@"IO tier %d", objc_msgSend(a2, "ioTier")];
                                                                if ([a2 isIOPassive])
                                                                {
                                                                  [v384[5] appendString:@" and passive"];
                                                                }

                                                                if ((taskChanges & 1) == 0)
                                                                {
                                                                  goto LABEL_498;
                                                                }

                                                                if (!previousThread)
                                                                {
                                                                  goto LABEL_485;
                                                                }
                                                              }

                                                              scheduledPriority = [previousThread scheduledPriority];
                                                              if (scheduledPriority != [a2 scheduledPriority] || (v287 = objc_msgSend(previousThread, "basePriority"), v287 != objc_msgSend(a2, "basePriority")))
                                                              {
LABEL_485:
                                                                if (([a2 scheduledPriority] & 0x80000000) == 0)
                                                                {
                                                                  basePriority = [a2 basePriority];
                                                                  v289 = v384[5];
                                                                  if (basePriority < 0)
                                                                  {
                                                                    if (v289)
                                                                    {
                                                                      [v289 appendString:{@", "}];
                                                                    }

                                                                    else
                                                                    {
                                                                      v293 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                      v294 = v384[5];
                                                                      v384[5] = v293;
                                                                    }

                                                                    [v384[5] appendFormat:@"priority %d", objc_msgSend(a2, "scheduledPriority")];
                                                                  }

                                                                  else
                                                                  {
                                                                    if (v289)
                                                                    {
                                                                      [v289 appendString:{@", "}];
                                                                    }

                                                                    else
                                                                    {
                                                                      v291 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                      v292 = v384[5];
                                                                      v384[5] = v291;
                                                                    }

                                                                    [v384[5] appendFormat:@"priority %d (%d)", objc_msgSend(a2, "scheduledPriority"), objc_msgSend(a2, "basePriority")];
                                                                  }
                                                                }
                                                              }
                                                            }

LABEL_498:
                                                            if ([jump count])
                                                            {
                                                              v295 = v384[5];
                                                              if (v295)
                                                              {
                                                                [v295 appendString:{@", "}];
                                                              }

                                                              else
                                                              {
                                                                v296 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                                v297 = v384[5];
                                                                v384[5] = v296;
                                                              }

                                                              v298 = v384[5];
                                                              v299 = [(SASamplePrinter *)self copyDescriptionForIOEvents:jump];
                                                              [v298 appendString:v299];
                                                            }

                                                            if (v365)
                                                            {
                                                              mountStatusTracker = [*(self + 168) mountStatusTracker];
                                                              v301 = -[SAMountStatusTracker hasUnresponsiveMountsForThreadID:](mountStatusTracker, [states threadId]);

                                                              if (v301)
                                                              {
                                                                sampleTimestampCopy = sampleTimestamp;
                                                                if (!sampleTimestamp)
                                                                {
                                                                  sampleTimestampCopy = *(self + 32);
                                                                }

                                                                v303 = sampleTimestampCopy;
                                                                if (state | queue)
                                                                {
                                                                  *buf = 0;
                                                                  *&buf[8] = buf;
                                                                  *&buf[16] = 0x3032000000;
                                                                  v390 = __Block_byref_object_copy__4;
                                                                  *v391 = __Block_byref_object_dispose__4;
                                                                  *&v391[8] = a2;
                                                                  v304 = *(self + 40);
                                                                  v377[0] = MEMORY[0x1E69E9820];
                                                                  v377[1] = 3221225472;
                                                                  v377[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_4;
                                                                  v377[3] = &unk_1E86F7D68;
                                                                  v377[5] = *&v391[8];
                                                                  v377[6] = buf;
                                                                  v377[4] = states;
                                                                  [(SASamplePrinter *)self iterateDispatchQueue:state orSwiftTaskStates:queue orThread:0 threadStateIndexes:0 startingAtIndex:(task + 1) endingAfterTimestamp:v304 task:0 stopAtTimeJumps:0 callback:v377];
                                                                  endTimestamp = [*(*&buf[8] + 40) endTimestamp];
                                                                  _Block_object_dispose(buf, 8);
                                                                }

                                                                else
                                                                {
                                                                  if (thread)
                                                                  {
                                                                    threadStates = [states threadStates];
                                                                    lastObject = [thread lastObject];
                                                                    v308 = [threadStates objectAtIndexedSubscript:{objc_msgSend(lastObject, "unsignedLongValue")}];
                                                                    endTimestamp = [v308 endTimestamp];
                                                                  }

                                                                  else
                                                                  {
                                                                    threadStates = [states lastThreadStateOnOrBeforeTime:*(self + 40) sampleIndex:*(self + 64)];
                                                                    endTimestamp = [threadStates endTimestamp];
                                                                  }
                                                                }

                                                                if ([*(self + 168) sanitizePaths])
                                                                {
                                                                  v309 = os_variant_has_internal_diagnostics() ^ 1;
                                                                }

                                                                else
                                                                {
                                                                  v309 = 0;
                                                                }

                                                                mountStatusTracker2 = [*(self + 168) mountStatusTracker];
                                                                threadId = [states threadId];
                                                                v375[0] = MEMORY[0x1E69E9820];
                                                                v375[1] = 3221225472;
                                                                v375[2] = __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_5;
                                                                v375[3] = &unk_1E86F7D90;
                                                                v376 = v309;
                                                                v375[4] = &v383;
                                                                [(SAMountStatusTracker *)mountStatusTracker2 enumerateMountsBlockingThread:threadId betweenStartTime:v303 endTime:endTimestamp block:v375];
                                                              }
                                                            }

                                                            v312 = v384[5];
                                                            _Block_object_dispose(&v383, 8);

                                                            goto LABEL_518;
                                                          }

LABEL_455:
                                                          latencyQos3 = [indexes latencyQos];
                                                          v273 = v384[5];
                                                          if (latencyQos3)
                                                          {
                                                            if (v273)
                                                            {
                                                              [v273 appendString:{@", "}];
                                                            }

                                                            else
                                                            {
                                                              v274 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                              v275 = v384[5];
                                                              v384[5] = v274;
                                                            }

                                                            [v384[5] appendFormat:@"timers tier %d", _TimerTier(objc_msgSend(indexes, "latencyQos"))];
                                                          }

                                                          else
                                                          {
                                                            if (v273)
                                                            {
                                                              [v273 appendString:{@", "}];
                                                            }

                                                            else
                                                            {
                                                              v276 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                              v277 = v384[5];
                                                              v384[5] = v276;
                                                            }

                                                            [v384[5] appendFormat:@"timers tier unspecified"];
                                                          }

                                                          latencyQos4 = [indexes latencyQos];
                                                          v279 = @" (normal)";
                                                          if (latencyQos4 && latencyQos4 != 16711681)
                                                          {
                                                            if ([indexes latencyQos] - 16711682 >= 3)
                                                            {
                                                              latencyQos5 = [indexes latencyQos];
                                                              v280 = v384[5];
                                                              if ((latencyQos5 - 16711685) >= 2)
                                                              {
                                                                [v280 appendFormat:@" (unknown: 0x%x)", objc_msgSend(indexes, "latencyQos")];
                                                                goto LABEL_470;
                                                              }

                                                              v279 = @" (throttled)";
LABEL_469:
                                                              [v280 appendString:v279];
                                                              goto LABEL_470;
                                                            }

                                                            v279 = @" (coalesced)";
                                                          }

                                                          v280 = v384[5];
                                                          goto LABEL_469;
                                                        }

                                                        v262 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                        v261 = @"thread suspended";
                                                      }

                                                      else
                                                      {
                                                        if (v260)
                                                        {
                                                          [v260 appendString:{@", "}];
                                                          v261 = @"thread unsuspended";
                                                          goto LABEL_436;
                                                        }

                                                        v262 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                        v261 = @"thread unsuspended";
                                                      }

                                                      v263 = v384[5];
                                                      v384[5] = v262;

                                                      goto LABEL_436;
                                                    }

                                                    v257 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                    v252 = @"process suspend count 0 (process still pidsuspended)";
                                                  }

                                                  v258 = v384[5];
                                                  v384[5] = v257;

                                                  goto LABEL_426;
                                                }

                                                v243 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                v238 = @"process pidsuspended";
                                              }

                                              else
                                              {
                                                if (!v235 && [indexes suspendCount])
                                                {
                                                  v240 = v384[5];
                                                  if (v240)
                                                  {
                                                    [v240 appendString:{@", "}];
                                                  }

                                                  else
                                                  {
                                                    v244 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                    v245 = v384[5];
                                                    v384[5] = v244;
                                                  }

                                                  v246 = v384[5];
                                                  suspendCount2 = [indexes suspendCount];
                                                  v248 = @"process unpidsuspended (process suspend count still %d)";
                                                  goto LABEL_420;
                                                }

                                                if ((v233 & 1) != 0 || ![a2 isSuspended])
                                                {
                                                  v242 = v384[5];
                                                  if (v242)
                                                  {
                                                    [v242 appendString:{@", "}];
                                                    v238 = @"process unpidsuspended";
                                                    goto LABEL_405;
                                                  }

                                                  v243 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                  v238 = @"process unpidsuspended";
                                                }

                                                else
                                                {
                                                  v241 = v384[5];
                                                  if (v241)
                                                  {
                                                    [v241 appendString:{@", "}];
                                                    v238 = @"process unpidsuspended (thread still suspended)";
                                                    goto LABEL_405;
                                                  }

                                                  v243 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                                  v238 = @"process unpidsuspended (thread still suspended)";
                                                }
                                              }

                                              v249 = v384[5];
                                              v384[5] = v243;

                                              goto LABEL_405;
                                            }
                                          }

                                          if (!v235)
                                          {
                                            goto LABEL_427;
                                          }

                                          v239 = 0;
                                          goto LABEL_407;
                                        }
                                      }

                                      else if (([indexes isDarwinBG] & 1) == 0)
                                      {
                                        goto LABEL_357;
                                      }

                                      v220 = v384[5];
                                      if (v220)
                                      {
                                        [v220 appendString:{@", "}];
                                      }

                                      else
                                      {
                                        v221 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                                        v222 = v384[5];
                                        v384[5] = v221;
                                      }

                                      v223 = v384[5];
                                      if ([indexes isDarwinBG])
                                      {
                                        v224 = &stru_1F5BBF440;
                                      }

                                      else
                                      {
                                        v224 = @"not ";
                                      }

                                      v225 = &stru_1F5BBF440;
                                      if (([indexes isDarwinBG] & 1) == 0 && objc_msgSend(a2, "isDarwinBG"))
                                      {
                                        v225 = v213;
                                      }

                                      [v223 appendFormat:@"process %@darwinbg%@", v224, v225];
                                      goto LABEL_357;
                                    }
                                  }

                                  else if ([a2 isDarwinBG])
                                  {
                                    goto LABEL_334;
                                  }
                                }

                                v213 = @" (thread still darwinbg)";
                                goto LABEL_342;
                              }

LABEL_298:
                              v199 = 0;
                              if (!v190 && !v188)
                              {
                                goto LABEL_319;
                              }

                              goto LABEL_302;
                            }

                            v186 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                            v185 = @"process has a runningboard assertion";
                          }

                          else
                          {
                            if (v184)
                            {
                              [v184 appendString:{@", "}];
                              v185 = @"process has no runningboard assertion";
                              goto LABEL_281;
                            }

                            v186 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                            v185 = @"process has no runningboard assertion";
                          }

                          v187 = v384[5];
                          v384[5] = v186;

                          goto LABEL_281;
                        }
                      }

                      isRunningBoardActive2 = [indexes isRunningBoardActive];
                      v178 = v384[5];
                      if (isRunningBoardActive2)
                      {
                        if (v178)
                        {
                          [v178 appendString:{@", "}];
                          v179 = @"process runningboard active";
                          goto LABEL_271;
                        }

                        v180 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                        v179 = @"process runningboard active";
                      }

                      else
                      {
                        if (v178)
                        {
                          [v178 appendString:{@", "}];
                          v179 = @"process runningboard inactive";
                          goto LABEL_271;
                        }

                        v180 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                        v179 = @"process runningboard inactive";
                      }

                      v181 = v384[5];
                      v384[5] = v180;

LABEL_271:
                      [v384[5] appendFormat:v179];
                      if (v169)
                      {
                        goto LABEL_273;
                      }

                      goto LABEL_272;
                    }

LABEL_251:
                    isTALEngaged = [indexes isTALEngaged];
                    v172 = v384[5];
                    if (isTALEngaged)
                    {
                      if (v172)
                      {
                        [v172 appendString:{@", "}];
                        v173 = @"process clamped to Utility QoS";
LABEL_259:
                        [v384[5] appendFormat:v173];
                        goto LABEL_260;
                      }

                      v174 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                      v173 = @"process clamped to Utility QoS";
                    }

                    else
                    {
                      if (v172)
                      {
                        [v172 appendString:{@", "}];
                        v173 = @"process unclamped from Utility QoS";
                        goto LABEL_259;
                      }

                      v174 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                      v173 = @"process unclamped from Utility QoS";
                    }

                    v175 = v384[5];
                    v384[5] = v174;

                    goto LABEL_259;
                  }

LABEL_250:
                  isTALEngaged2 = [indexes isTALEngaged];
                  v169 = 0;
                  if (isTALEngaged2 == [displayedTimestamp isTALEngaged])
                  {
                    goto LABEL_260;
                  }

                  goto LABEL_251;
                }

                if (displayedTimestamp)
                {
                  isDirty = [indexes isDirty];
                  if (isDirty == [displayedTimestamp isDirty])
                  {
                    goto LABEL_222;
                  }
                }

                isDirty2 = [indexes isDirty];
                v151 = v384[5];
                if (isDirty2)
                {
                  if (v151)
                  {
                    [v151 appendString:{@", "}];
                    v152 = @"process sudden termination dirty";
LABEL_220:
                    [v384[5] appendFormat:v152];
                    goto LABEL_221;
                  }

                  v153 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                  v152 = @"process sudden termination dirty";
                }

                else
                {
                  if (v151)
                  {
                    [v151 appendString:{@", "}];
                    v152 = @"process sudden termination clean";
                    goto LABEL_220;
                  }

                  v153 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
                  v152 = @"process sudden termination clean";
                }

                v154 = v384[5];
                v384[5] = v153;

                goto LABEL_220;
              }

              goto LABEL_175;
            }

LABEL_173:
            v356 = 0;
            v130 = 1;
            goto LABEL_176;
          }
        }

        v130 = 1;
        v356 = 1;
        goto LABEL_176;
      }

      if (displayedTimestamp)
      {
        isForeground = [indexes isForeground];
        if (isForeground == [displayedTimestamp isForeground])
        {
          goto LABEL_164;
        }
      }

      else if (([indexes isForeground] & 1) == 0)
      {
        goto LABEL_164;
      }

      isForeground2 = [indexes isForeground];
      v118 = v384[5];
      if (isForeground2)
      {
        if (v118)
        {
          [v118 appendString:{@", "}];
          v119 = @"process frontmost";
LABEL_163:
          [v384[5] appendFormat:v119];
          goto LABEL_164;
        }

        v120 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v119 = @"process frontmost";
      }

      else
      {
        if (v118)
        {
          [v118 appendString:{@", "}];
          v119 = @"process non-frontmost";
          goto LABEL_163;
        }

        v120 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
        v119 = @"process non-frontmost";
      }

      v121 = v384[5];
      v384[5] = v120;

      goto LABEL_163;
    }

    if (previousThread)
    {
      v48 = ([previousThread endSampleIndex] + 1);
    }

    else
    {
      v48 = *(self + 56);
    }

    startSampleIndex = [a2 startSampleIndex];
    if (startSampleIndex <= *(self + 56))
    {
      v50 = *(self + 56);
    }

    else
    {
      v50 = startSampleIndex;
    }

    v51 = v50 - v48;
    if (v50 >= v48)
    {
      if (&v48[stack] < v50)
      {
        if (index)
        {
          v52 = @"in another call tree";
        }

        else
        {
          v52 = @"not seen";
          if (!state && !queue && thread)
          {
            threadStates2 = [states threadStates];
            firstObject = [threadStates2 firstObject];
            if (firstObject == a2)
            {
              v52 = @"not seen";
            }

            else
            {
              threadStates3 = [states threadStates];
              firstObject2 = [threadStates3 firstObject];
              v52 = @"in another call tree";
              if ([firstObject2 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                startSampleIndex2 = [a2 startSampleIndex];
                threadStates4 = [states threadStates];
                firstObject3 = [threadStates4 firstObject];
                if (startSampleIndex2 == [firstObject3 endSampleIndex] + 1)
                {
                  v55 = @"not seen";
                }

                else
                {
                  v55 = @"in another call tree";
                }

                v52 = v55;
              }
            }
          }
        }

        v62 = v384[5];
        if (v62)
        {
          [v62 appendString:{@", "}];
        }

        else
        {
          v63 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
          v64 = v384[5];
          v384[5] = v63;
        }

        v65 = @"s";
        if (v51 == 1)
        {
          v65 = &stru_1F5BBF440;
        }

        [v384[5] appendFormat:@"%@ %@ for %lu sample%@", v41, v52, v51, v65];
      }

      goto LABEL_75;
    }

    goto LABEL_526;
  }

  if (!queue)
  {
    v41 = @"Thread";
    goto LABEL_20;
  }

  v43 = *(self + 16);
  if (v43)
  {
    v41 = 0;
    v44 = *(v43 + 160);
    if (v44 > 2)
    {
      if (v44 != 3)
      {
        if (v44 != 4)
        {
          if (v44 != 5)
          {
            goto LABEL_20;
          }

          goto LABEL_66;
        }

LABEL_63:
        v41 = @"Swift Async";
        goto LABEL_20;
      }

LABEL_66:
      v41 = @"Swift Task";
      goto LABEL_20;
    }

    if (v44)
    {
      if (v44 != 2)
      {
        if (v44 != 1)
        {
          goto LABEL_20;
        }

        a2 = *__error();
        v56 = _sa_logt();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = [*(self + 16) debugDescription];
          v58 = v57;
          uTF8String10 = [v57 UTF8String];
          *buf = 136315138;
          *&buf[4] = uTF8String10;
          _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "state for swiftTaskStates, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", buf, 0xCu);
        }

        *__error() = a2;
        v60 = [*(self + 16) debugDescription];
        v61 = v60;
        _SASetCrashLogMessage(11048, "state for swiftTaskStates, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", [v60 UTF8String]);

        _os_crash();
        __break(1u);
        goto LABEL_63;
      }
    }

    else if ((*(v43 + 14) & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = @"Swift Async Base Function";
    goto LABEL_20;
  }

  v347 = *__error();
  v348 = _sa_logt();
  if (os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
  {
    v349 = [*(self + 16) debugDescription];
    v350 = v349;
    uTF8String11 = [v349 UTF8String];
    *buf = 136315138;
    *&buf[4] = uTF8String11;
    _os_log_error_impl(&dword_1E0E2F000, v348, OS_LOG_TYPE_ERROR, "swiftAsyncCallTreeAggregationResolved returned default: %s", buf, 0xCu);
  }

  *__error() = v347;
  v352 = [*(self + 16) debugDescription];
  v353 = v352;
  _SASetCrashLogMessage(11068, "swiftAsyncCallTreeAggregationResolved returned default: %s", [v352 UTF8String]);

  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a2 == 125;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (*(a1 + 32))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

BOOL __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if ((*(a1 + 32) & 1) != 0 || a3 != 125 && a3)
  {
    return 1;
  }

  if (a2)
  {
    v4 = a2 == 125;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

void __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = [a2 allObjects];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 unsignedLongLongValue];
        if (v16 != [*(a1 + 32) uniquePid] && (objc_msgSend(a3, "containsObject:", v15) & 1) == 0)
        {
          v17 = -[SASampleStore taskWithUniquePid:atTimestamp:](*(*(a1 + 40) + 168), [v15 unsignedLongLongValue], a5);
          v18 = *(*(*(a1 + 48) + 8) + 40);
          if (v17)
          {
            if (v18)
            {
              [v18 appendString:{@", "}];
            }

            else
            {
              v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
              v20 = *(*(a1 + 48) + 8);
              v21 = *(v20 + 40);
              *(v20 + 40) = v19;
            }

            v22 = *(*(*(a1 + 48) + 8) + 40);
            v23 = [(SASamplePrinter *)*(a1 + 40) displayNameForTask:v17];
            [v22 appendFormat:@"process %@ importance donation from %@", a4, v23];
          }

          else
          {
            if (v18)
            {
              [v18 appendString:{@", "}];
            }

            else
            {
              v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
              v25 = *(*(a1 + 48) + 8);
              v26 = *(v25 + 40);
              *(v25 + 40) = v24;
            }

            [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"process %@ importance donation from %@ [%llu]", a4, @"UNKNOWN", objc_msgSend(v15, "unsignedLongLongValue")];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }
}

- (id)copyDescriptionForIOEvents:(id *)events
{
  eventsCopy = events;
  if (!events)
  {
    return eventsCopy;
  }

  if ([a2 count])
  {
    if ([a2 count] == 1)
    {
      firstObject = [a2 firstObject];
      eventsCopy = [SASamplePrinter copyDescriptionForIOEvent:firstObject];
    }

    else
    {
      if ([a2 count] < 6)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [eventsCopy[2] displayEachIndividualIOInCallTrees] ^ 1;
      }

      v6 = objc_alloc(MEMORY[0x1E696AD60]);
      v7 = [a2 count];
      v8 = 5;
      if (v7 > 5)
      {
        v8 = v7;
      }

      eventsCopy = [v6 initWithCapacity:16 * v8];
      if ([a2 count])
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = [a2 objectAtIndexedSubscript:v9];
          v12 = v11;
          if (v9 > 2)
          {
            v13 = v5;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            v10 += [v11 size];
          }

          else
          {
            if (v9)
            {
              [eventsCopy appendString:{@", "}];
            }

            v14 = [SASamplePrinter copyDescriptionForIOEvent:v12];
            [eventsCopy appendString:v14];
          }

          ++v9;
        }

        while (v9 < [a2 count]);
        if ((v5 & 1) == 0)
        {
          return eventsCopy;
        }
      }

      else
      {
        v10 = 0;
        if ((v5 & 1) == 0)
        {
          return eventsCopy;
        }
      }

      v15 = [a2 count] - 3;
      firstObject = SAFormattedBytesEx(v10, 1, 0, 0, 0x1000uLL);
      [eventsCopy appendFormat:@"... and %lu more I/Os totaling %@", v15, firstObject];
    }

    return eventsCopy;
  }

  v17 = *__error();
  v18 = _sa_logt();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "No IO events", buf, 2u);
  }

  *__error() = v17;
  _SASetCrashLogMessage(13463, "No IO events");
  result = _os_crash();
  __break(1u);
  return result;
}

void __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if (*(a1 + 32) == a5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  }

  else
  {
    *a10 = 1;
  }
}

void __461__SASamplePrinter_stateChangeStringForThreadState_serialDispatchQueue_swiftTaskStates_thread_threadStateIndexes_taskState_task_iteratorIndex_missingStateIsInAnotherStack_numSamplesOmittedSincePreviousDisplayedSample_sampleTimestamp_previousSampleTimestamp_previousDisplayedTimestamp_previousTaskState_previousThread_previousThreadState_dispatchQueueChanges_swiftTaskChanges_priorityChanges_nameChanges_threadChanges_isTimeJump_ioEventsSincePreviousThreadState___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v5 == 1)
  {
    if (v6)
    {
      [v6 appendString:{@", "}];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = *(*(*(a1 + 32) + 8) + 40);
    v17 = SACopySanitizedString(a3, 1, 0);
    [v11 appendFormat:@"Thread becomes blocked by network mount (%@)", v17];
  }

  else
  {
    if (v6)
    {
      [v6 appendString:{@", "}];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = *(*(*(a1 + 32) + 8) + 40);
    v17 = SACopySanitizedString(a2, 1, 0);
    v16 = SACopySanitizedString(a3, 1, 0);
    [v15 appendFormat:@"Thread becomes blocked by network mount %@ (%@)", v17, v16];
  }
}

- (BOOL)frame:(uint64_t)frame matchesFrame:
{
  if (!self)
  {
    return 0;
  }

  if (a2 != frame)
  {
    if (a2 && *(a2 + 8) == *(frame + 8))
    {
      if ([*(self + 16) aggregateFramesByOffsetIntoBinary])
      {
        WeakRetained = objc_loadWeakRetained((a2 + 24));
        v6 = objc_loadWeakRetained((frame + 24));
        v7 = v6;
        if (WeakRetained && v6)
        {
          binary = [WeakRetained binary];
          binary2 = [v7 binary];

          if (binary == binary2)
          {
            segment = [WeakRetained segment];
            segment2 = [v7 segment];

            if (segment == segment2)
            {
              address = [a2 address];
              v13 = address - [WeakRetained loadAddress];
              address2 = [frame address];
              v15 = v13 == address2 - [v7 loadAddress];
LABEL_15:

              return v15;
            }
          }

LABEL_14:
          v15 = 0;
          goto LABEL_15;
        }

        if (WeakRetained | v6)
        {
          goto LABEL_14;
        }
      }

      address3 = [a2 address];
      return address3 == [frame address];
    }

    return 0;
  }

  return 1;
}

void __245__SASamplePrinter_addStackForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_task_toRootObjects_nameChanges_dispatchQueueChanges_swiftTaskChanges_threadChanges_priorityChanges_microstackshotSummary_onlyHeaviestStack_includeState___block_invoke_2433(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, void **a5, char *a6, void *a7, int a8, char a9)
{
  LODWORD(v515) = a8;
  v10 = a7;
  v13 = a1;
  v14 = buf;
  v572 = *MEMORY[0x1E69E9840];
  v519 = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v523 = [a7 startTimestamp];
    if (a4)
    {
      if (v13[248])
      {
        v15 = [a4 startTimestamp];
        v16 = [v15 gt:v523];

        if (v16)
        {
          v17 = [a4 startTimestamp];

          v523 = v17;
        }
      }
    }

    v19 = [v10 endTimestamp];
    if (a4)
    {
      if (v13[248])
      {
        v20 = [a4 endTimestamp];
        v21 = [v20 lt:v19];

        if (v21)
        {
          v22 = [a4 endTimestamp];

          v19 = v22;
        }
      }
    }

    if (v523)
    {
      if (!v19)
      {
        v377 = *__error();
        v378 = _sa_logt();
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          v379 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
          v9 = [v379 UTF8String];
          v380 = [(SATaskState *)a4 debugDescriptionWithTask:?];
          v381 = [v380 UTF8String];
          *buf = 136315394;
          v548 = v9;
          v549 = 2080;
          v550 = v381;
          _os_log_error_impl(&dword_1E0E2F000, v378, OS_LOG_TYPE_ERROR, "nil endTimestamp for %s %s", buf, 0x16u);
        }

        *__error() = v377;
        v203 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
        v23 = [v203 UTF8String];
        v290 = [(SATaskState *)a4 debugDescriptionWithTask:?];
        _SASetCrashLogMessage(11841, "nil endTimestamp for %s %s", v23, [v290 UTF8String]);

        _os_crash();
        __break(1u);
LABEL_625:
        v382 = objc_getProperty(v23, v292, v290[188], 1);
        LODWORD(v520) = v382 != 0;
        v493 = v382;
        if (!v382)
        {
          goto LABEL_636;
        }

        v491 = objc_getProperty(v23, v292, v290[188], 1);
        if (([(SAWaitInfo *)v491 displaysSameContentAs:a2 forPid:*(v23 + 28) tid:*(v23 + 48) displayOptions:*(v13 + 29)]& 1) == 0)
        {
          goto LABEL_636;
        }

        v499 = 0;
        LODWORD(v520) = 1;
        goto LABEL_659;
      }

      v23 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = 1;
      goto LABEL_22;
    }

LABEL_617:
    v366 = *__error();
    v367 = _sa_logt();
    if (os_log_type_enabled(v367, OS_LOG_TYPE_ERROR))
    {
      v368 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
      v369 = [v368 UTF8String];
      v370 = [(SATaskState *)a4 debugDescriptionWithTask:?];
      v371 = [v370 UTF8String];
      *buf = 136315394;
      *(v14 + 4) = v369;
      v549 = 2080;
      *(v14 + 14) = v371;
      _os_log_error_impl(&dword_1E0E2F000, v367, OS_LOG_TYPE_ERROR, "nil startTimestamp for %s %s", buf, 0x16u);
    }

    *__error() = v366;
    v372 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
    v23 = [v372 UTF8String];
    v373 = [(SATaskState *)a4 debugDescriptionWithTask:?];
    _SASetCrashLogMessage(11840, "nil startTimestamp for %s %s", v23, [v373 UTF8String]);

    _os_crash();
    __break(1u);
LABEL_620:
    LODWORD(v374) = *__error();
    v375 = _sa_logt();
    if (!os_log_type_enabled(v375, OS_LOG_TYPE_FAULT))
    {
LABEL_621:

      v376 = __error();
      v93 = 0;
      *v376 = v374;
      goto LABEL_599;
    }

LABEL_657:
    v525 = *(*(v13 + 4) + 184);
    v527 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
    v428 = [(SATaskState *)a4 debugDescriptionWithTask:?];
    v429 = v13[248];
    v430 = *(v13 + 4);
    v431 = *(v430 + 56);
    v522 = *(v430 + 64);
    v432 = [*(v430 + 32) debugDescription];
    v433 = [*(*(v13 + 4) + 40) debugDescription];
    v434 = *(v13 + 26);
    v435 = *(v13 + 6) != 0;
    v436 = *(v13 + 7) != 0;
    v437 = *(v13 + 8) != 0;
    v438 = *(v13 + 9) != 0;
    *buf = 138416130;
    v548 = v525;
    v549 = 2048;
    v550 = v519;
    v551 = 2048;
    v552 = v23;
    v553 = 2112;
    *v554 = v527;
    *&v554[8] = 2112;
    *&v554[10] = v428;
    *&v554[18] = 1024;
    *&v554[20] = v429;
    *&v554[24] = 2048;
    *&v554[26] = v431;
    v555 = 2048;
    v556 = v522;
    v557 = 2112;
    v558 = v432;
    v559 = 2112;
    v560 = v433;
    v561 = 2048;
    v562 = v434;
    v563 = 2048;
    *v564 = a2;
    *&v564[8] = 1024;
    *&v564[10] = v435;
    v565 = 1024;
    *v566 = v436;
    *&v566[4] = 1024;
    *&v566[6] = v437;
    LOWORD(v567) = 1024;
    *(&v567 + 2) = v438;
    _os_log_fault_impl(&dword_1E0E2F000, v375, OS_LOG_TYPE_FAULT, "incident %@. sampleIndex %lu, endIndex %lu, thread state %@, task state %@ (%d), report start index %lu, report end index %lu, report start time %@, report end time %@, starting iterator index %lu, iterator index %lu, by-thread:%d indexes:%d, by-dispatchQueue:%d, by-swiftTaskStates:%d", buf, 0x8Eu);

    goto LABEL_621;
  }

  v25 = [*(*(a1 + 4) + 168) sampleTimestamps];
  v523 = [v25 objectAtIndexedSubscript:a3];

  v26 = [v10 endSampleIndex];
  if (v26 >= *(*(v13 + 4) + 64))
  {
    v23 = *(*(v13 + 4) + 64);
  }

  else
  {
    v23 = v26;
  }

  if (a4)
  {
    if (v13[248])
    {
      v27 = [a4 endSampleIndex];
      if (v23 >= v27)
      {
        v23 = v27;
      }
    }
  }

  if (v23 < a3)
  {
    goto LABEL_620;
  }

  v14 = v23 - a3 + 1;
  v28 = [*(*(v13 + 4) + 168) sampleTimestamps];
  v19 = [v28 objectAtIndexedSubscript:v23];

LABEL_22:
  v29 = *(v13 + 10);
  v521 = v13;
  v507 = v10;
  v524 = v19;
  v526 = a5;
  if (v29 && (v9 = v23, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a5, "threadId")}], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "containsObject:", v30), v30, v23 = v9, (v31 & 1) != 0) || v13[249] != 1)
  {
    v505 = 0;
    v66 = 0;
    goto LABEL_136;
  }

  v512 = v14;
  v545 = 0u;
  v546 = 0u;
  v543 = 0u;
  v544 = 0u;
  v32 = *(*(v13 + 4) + 128);
  v33 = [v32 countByEnumeratingWithState:&v543 objects:v571 count:16];
  LODWORD(v509) = v33 == 0;
  if (!v33)
  {
    v505 = 0;
    goto LABEL_134;
  }

  v35 = v33;
  v504 = a4;
  v36 = *v544;
  a4 = 1;
  v517 = 0x7FFFFFFFFFFFFFFFLL;
  v520 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v37 = 0;
    do
    {
      if (*v544 != v36)
      {
        objc_enumerationMutation(v32);
      }

      v9 = *(*(&v543 + 1) + 8 * v37);
      if (!v9)
      {
        Property = 0;
        goto LABEL_35;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_34;
      }

      v38 = [a5 threadId];
      v39 = *(v9 + 16);
      if (v38 != v39)
      {
        if (v39)
        {
          goto LABEL_88;
        }

LABEL_34:
        Property = objc_getProperty(v9, v34, 8, 1);
LABEL_35:
        v41 = Property;
        v42 = *(v13 + 5);

        v74 = v41 == v42;
        a5 = v526;
        if (!v74)
        {
          goto LABEL_88;
        }
      }

      v43 = *(v13 + 4);
      if (v43 && *(v43 + 48) == 1)
      {
        if (v9)
        {
          if (*(v9 + 40) > v23)
          {
            goto LABEL_88;
          }

          v44 = *(v9 + 48);
        }

        else
        {
          v44 = 0;
        }

        if (v44 >= v519)
        {
          v45 = v520;
          v46 = v517;
          if (v520 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v47 = v9 ? *(v9 + 40) : 0;
            if (v520 <= v47)
            {
              if (v517 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_74;
              }

              if (v9)
              {
                goto LABEL_72;
              }

              v64 = 0;
LABEL_73:
              if (v46 < v64)
              {
LABEL_74:
                if (v9)
                {
LABEL_75:
                  v520 = v45;
                  a4 = 0;
                  v517 = *(v9 + 48);
                  goto LABEL_88;
                }

                v520 = v45;
                v517 = 0;
              }

              else
              {
                v520 = v45;
              }

              a4 = 0;
              goto LABEL_88;
            }
          }

          if (v9)
          {
            v45 = *(v9 + 40);
            if (v517 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_75;
            }

LABEL_72:
            v64 = *(v9 + 48);
            goto LABEL_73;
          }

          v520 = 0;
          if (v517 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = 0;
            v13 = v521;
            v64 = 0;
            a5 = v526;
            v46 = v517;
            goto LABEL_73;
          }

          a4 = 0;
          v517 = 0;
LABEL_86:
          v13 = v521;
LABEL_87:
          a5 = v526;
        }
      }

      else
      {
        if (v9)
        {
          v48 = objc_getProperty(v9, v34, 24, 1);
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;
        if (([v49 le:v524] & 1) == 0)
        {

          goto LABEL_88;
        }

        if (v9)
        {
          v51 = objc_getProperty(v9, v50, 32, 1);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;
        v53 = [v52 ge:v523];

        if (!v53)
        {
          goto LABEL_86;
        }

        v13 = v521;
        if (v9)
        {
          v54 = objc_getProperty(v9, v34, 32, 1);
        }

        else
        {
          v54 = 0;
        }

        v55 = v54;
        v56 = [v55 gt:v524];

        if (v56)
        {
          if (v9)
          {
            v58 = objc_getProperty(v9, v57, 32, 1);
          }

          else
          {
            v58 = 0;
          }

          v59 = v58;

          v524 = v59;
        }

        if (v9)
        {
          v60 = objc_getProperty(v9, v57, 24, 1);
        }

        else
        {
          v60 = 0;
        }

        v61 = v60;
        v62 = [v61 lt:v523];

        if (!v62)
        {
          a4 = 0;
          goto LABEL_87;
        }

        if (v9)
        {
          v63 = objc_getProperty(v9, v34, 24, 1);
        }

        else
        {
          v63 = 0;
        }

        a5 = v526;
        v9 = v63;

        a4 = 0;
        v523 = v9;
      }

LABEL_88:
      ++v37;
    }

    while (v35 != v37);
    v65 = [v32 countByEnumeratingWithState:&v543 objects:v571 count:16];
    v35 = v65;
  }

  while (v65);

  if (a4)
  {
    v505 = 0;
    v66 = 1;
    a4 = v504;
    v10 = v507;
    v14 = v512;
    goto LABEL_136;
  }

  v14 = v512;
  if (v520 == 0x7FFFFFFFFFFFFFFFLL || v520 <= v519)
  {
    a4 = v504;
    goto LABEL_130;
  }

  if (v520 > v23)
  {
    v408 = *__error();
    v409 = _sa_logt();
    if (os_log_type_enabled(v409, OS_LOG_TYPE_ERROR))
    {
      v410 = [v507 debugDescription];
      v411 = [v410 UTF8String];
      v412 = [v504 debugDescription];
      v413 = [v412 UTF8String];
      a5 = [*(*(v521 + 4) + 128) debugDescription];
      v414 = [a5 UTF8String];
      *buf = 134219266;
      v548 = v520;
      v549 = 2048;
      v550 = v519;
      v551 = 2048;
      v552 = v512;
      v553 = 2080;
      *v554 = v411;
      *&v554[8] = 2080;
      *&v554[10] = v413;
      *&v554[18] = 2080;
      *&v554[20] = v414;
      _os_log_error_impl(&dword_1E0E2F000, v409, OS_LOG_TYPE_ERROR, "startSampleIndexCap %lu < sampleIndex %lu + sampleCount %lu for %s, %s hidStepSamples:\n%s", buf, 0x3Eu);
    }

    *__error() = v408;
    v415 = [v507 debugDescription];
    v416 = [v415 UTF8String];
    v417 = [v504 debugDescription];
    v418 = [v417 UTF8String];
    v419 = [*(*(v521 + 4) + 128) debugDescription];
    _SASetCrashLogMessage(11900, "startSampleIndexCap %lu < sampleIndex %lu + sampleCount %lu for %s, %s hidStepSamples:\n%s", v520, v519, v512, v416, v418, [v419 UTF8String]);

    _os_crash();
    __break(1u);
LABEL_654:
    v420 = *__error();
    v421 = _sa_logt();
    if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
    {
      v422 = [v507 debugDescription];
      v423 = [v422 UTF8String];
      v424 = [v504 debugDescription];
      v425 = [v424 UTF8String];
      a5 = [*(*(v521 + 4) + 128) debugDescription];
      v426 = [a5 UTF8String];
      *buf = 134219010;
      v548 = v520;
      v549 = 2048;
      v550 = v519;
      v551 = 2080;
      v552 = v423;
      v553 = 2080;
      *v554 = v425;
      *&v554[8] = 2080;
      *&v554[10] = v426;
      _os_log_error_impl(&dword_1E0E2F000, v421, OS_LOG_TYPE_ERROR, "endSampleIndexCap %lu >= sampleIndex %lu for %s, %s hidStepSamples:\n%s", buf, 0x34u);
    }

    *__error() = v420;
    v375 = [v507 debugDescription];
    v23 = [v375 UTF8String];
    v10 = [v504 debugDescription];
    v427 = [v10 UTF8String];
    v374 = [*(*(v521 + 4) + 128) debugDescription];
    _SASetCrashLogMessage(11922, "endSampleIndexCap %lu >= sampleIndex %lu for %s, %s hidStepSamples:\n%s", v520, v519, v23, v427, [v374 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_657;
  }

  v67 = *(*(*(v13 + 13) + 8) + 24);
  v68 = *(*(*(v13 + 14) + 8) + 24);
  v70 = v67 == 0x7FFFFFFFFFFFFFFFLL || v67 < v68;
  if (v68 != 0x7FFFFFFFFFFFFFFFLL && v70)
  {
    v67 = *(*(*(v13 + 14) + 8) + 24);
  }

  v71 = *(v13 + 4);
  v72 = *(v71 + 56);
  v73 = v72 - 1;
  if (!v72)
  {
    v73 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v74 = v67 != 0x7FFFFFFFFFFFFFFFLL || v72 == 0x7FFFFFFFFFFFFFFFLL;
  if (v74)
  {
    v75 = v67;
  }

  else
  {
    v75 = v73;
  }

  v76 = v520 - 1;
  v77 = v75 != 0x7FFFFFFFFFFFFFFFLL && v75 >= v76;
  a4 = v504;
  if (!v77)
  {
    if (v75 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = 0;
    }

    else
    {
      v78 = ~v75;
    }

    *(*(*(v13 + 15) + 8) + 24) += v78 + v520;
    *(*(*(v13 + 13) + 8) + 24) = v76;
    v71 = *(v13 + 4);
  }

  v14 = v23 - v520 + 1;
  v79 = [*(v71 + 168) sampleTimestamps];
  v9 = [v79 objectAtIndexedSubscript:v520];

  v523 = v9;
  v519 = v520;
LABEL_130:
  v66 = 0;
  if (v517 == 0x7FFFFFFFFFFFFFFFLL || v23 <= v517)
  {
    v505 = 0;
    v10 = v507;
    goto LABEL_136;
  }

  if (v517 < v519)
  {
    goto LABEL_654;
  }

  v14 = v517 - v519 + 1;
  v32 = [*(*(v13 + 4) + 168) sampleTimestamps];
  v9 = [v32 objectAtIndexedSubscript:v517];

  v505 = v23 - v517;
  v23 = v517;
  v524 = v9;
  v10 = v507;
LABEL_134:

  v66 = v509;
LABEL_136:
  if ((v13[250] != 1 || ([v10 isRunning] & 1) == 0) && (v13[251] != 1 || (objc_msgSend(v10, "isRunnable") & 1) == 0) && (v13[252] != 1 || (objc_msgSend(v10, "isRunning") & 1) != 0 || objc_msgSend(v10, "isRunnable")))
  {
    v66 = 1;
  }

  v80 = *(v13 + 60);
  if (v80 && v80 < [v10 basePriority] || (v81 = *(v13 + 61)) != 0 && v81 > objc_msgSend(v10, "basePriority") || v13[253] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && (objc_msgSend(v10, "isUserActive") & 1) != 0 || v13[254] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && !objc_msgSend(v10, "isUserActive") || v13[255] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && (objc_msgSend(v10, "isOnBattery") & 1) != 0 || v13[256] == 1 && objc_msgSend(v10, "isBatteryAndUserActivityValid") && (objc_msgSend(v10, "isOnBattery") & 1) == 0)
  {
    v66 = 1;
  }

  if ((v13[257] & 1) != 0 || v13[258] == 1)
  {
    if ([v10 isRunning])
    {
      v82 = [v10 cpuNum];
      if (v82 != -1)
      {
        v83 = v82;
        if (v13[257] == 1)
        {
          v66 |= ([(SASampleStore *)*(*(v13 + 4) + 168) clusterFlagsForCPUNum:v82]>> 1) & 1;
        }

        if (v13[258] == 1)
        {
          v66 |= [(SASampleStore *)*(*(v13 + 4) + 168) clusterFlagsForCPUNum:v83];
        }
      }
    }
  }

  if ((v13[259] & 1) == 0 && *(v13 + 27) != 1 && *(v13 + 28) != 3 && !*(v13 + 9))
  {
    if ([v10 hasSwiftTask])
    {
      if (([a5 isMainThread] & 1) == 0)
      {
        if (![*(*(v13 + 4) + 168) targetThreadId] || (v84 = objc_msgSend(a5, "threadId"), v84 != objc_msgSend(*(*(v13 + 4) + 168), "targetThreadId")))
        {
          if (![*(*(v13 + 4) + 168) targetDispatchQueueId] || !*(v13 + 8))
          {
            goto LABEL_186;
          }

          v85 = [*(*(v13 + 4) + 168) targetProcess];
          v86 = v85;
          if (v85 != *(v13 + 5))
          {

            goto LABEL_186;
          }

          v9 = v23;
          v87 = [*(v13 + 8) identifier];
          v74 = v87 == [*(*(v13 + 4) + 168) targetDispatchQueueId];
          v23 = v9;
          v88 = !v74;
          LOBYTE(v66) = v88 | v66;
        }
      }
    }
  }

  if (v66)
  {
LABEL_186:
    v89 = *(*(*(v13 + 13) + 8) + 24);
    if (v89 == 0x7FFFFFFFFFFFFFFFLL || v23 > v89)
    {
      if (v89 < v519 || v89 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v89 = v519 - 1;
      }

      *(*(*(v13 + 15) + 8) + 24) += v23 - v89;
      *(*(*(v13 + 13) + 8) + 24) = v23;
    }

    v91 = v523;
    if (v515)
    {
      v92 = *(*(v13 + 16) + 8);
      if ((*(v92 + 24) & 1) == 0)
      {
        *(v92 + 24) = 1;
      }
    }

    v93 = v524;
    goto LABEL_600;
  }

  v542 = 0;
  newValue = 0;
  v540 = 0;
  if (v13[260] == 1)
  {
    v94 = *(*(*(v13 + 17) + 8) + 24);
    if (v94 != [a5 threadId])
    {
      *(*(*(v13 + 17) + 8) + 24) = [a5 threadId];
      v96 = *(*(v13 + 4) + 168);
      v97 = v23;
      if (v96)
      {
        v96 = objc_getProperty(v96, v95, 1120, 1);
      }

      v98 = v96;
      v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(*(v13 + 17) + 8) + 24)];
      v9 = [v98 objectForKeyedSubscript:v99];
      v100 = [v9 objectEnumerator];
      v101 = *(*(v13 + 18) + 8);
      v102 = *(v101 + 40);
      *(v101 + 40) = v100;

      v103 = [*(*(*(v13 + 18) + 8) + 40) nextObject];
      v104 = *(*(v13 + 19) + 8);
      v105 = *(v104 + 40);
      *(v104 + 40) = v103;

      v23 = v97;
    }

    v106 = *(*(*(v13 + 19) + 8) + 40);
    if (v106)
    {
      v107 = [(SASamplePrinter *)*(v13 + 4) _findIOBefore:&newValue during:&v540 after:a5 thread:a6 stateIndex:*(*(*(v13 + 18) + 8) + 40) inIO:v106 nextIO:?];
      v108 = *(*(v13 + 19) + 8);
      v109 = *(v108 + 40);
      *(v108 + 40) = v107;
    }
  }

  if (v515)
  {
LABEL_208:
    v501 = 1;
  }

  else
  {
    v110 = *(*(v13 + 16) + 8);
    if (*(v110 + 24) == 1)
    {
      *(v110 + 24) = 0;
      goto LABEL_208;
    }

    v501 = 0;
  }

  v111 = v519;
  v502 = v23;
  v503 = a4;
  if (v13[261] == 1 && (v13[262] & 1) == 0)
  {
    if (v519 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v112 = 0;
      v520 = 0;
    }

    else
    {
      v113 = [*(*(v13 + 4) + 168) sampleTimestamps];
      v520 = [v113 objectAtIndexedSubscript:v519];

      v114 = *(v13 + 4);
      if (v519 <= *(v114 + 56))
      {
        v112 = 0;
      }

      else
      {
        v115 = [*(v114 + 168) sampleTimestamps];
        v112 = [v115 objectAtIndexedSubscript:v519 - 1];
      }
    }

    v116 = *(*(*(v13 + 20) + 8) + 40);
    if (v116)
    {
      v117 = v542;
      if (v542)
      {
        [v542 addObjectsFromArray:?];
        v118 = [v117 sortedArrayUsingComparator:&__block_literal_global_2445];
      }

      else
      {
        v542 = v116;
      }
    }

    v512 = v14;
    v120 = *(v13 + 8);
    v119 = *(v13 + 9);
    v121 = *(v13 + 7);
    v9 = *(v13 + 4);
    v122 = *(v13 + 5);
    if (*(*(*(v13 + 13) + 8) + 24) >= v519)
    {
      v123 = 0;
    }

    else
    {
      v123 = *(*(*(v13 + 15) + 8) + 24);
    }

    if (!v112 || (v124 = *(v13 + 9), v125 = [*(*(*(v13 + 21) + 8) + 40) lt:v112], v119 = v124, v126 = v112, v125))
    {
      v126 = *(*(*(v13 + 21) + 8) + 40);
    }

    v480 = *(v13 + 263);
    v10 = v507;
    v127 = v121;
    a4 = v503;
    v515 = [(SASamplePrinter *)v9 stateChangeStringForThreadState:v507 serialDispatchQueue:v120 swiftTaskStates:v119 thread:a5 threadStateIndexes:v127 taskState:v503 task:v122 iteratorIndex:a2 missingStateIsInAnotherStack:a9 numSamplesOmittedSincePreviousDisplayedSample:v123 sampleTimestamp:v520 previousSampleTimestamp:v112 previousDisplayedTimestamp:v126 previousTaskState:*(*(*(v13 + 22) + 8) + 40) previousThread:*(*(*(v13 + 23) + 8) + 40) previousThreadState:*(*(*(v13 + 24) + 8) + 40) dispatchQueueChanges:v480 swiftTaskChanges:SBYTE1(v480) priorityChanges:SBYTE2(v480) nameChanges:SHIBYTE(v480) threadChanges:v13[267] isTimeJump:v501 ioEventsSincePreviousThreadState:v542];

    v111 = v519;
    v23 = v502;
    v14 = v512;
  }

  else
  {
    v515 = 0;
  }

  if (v13[268] == 1)
  {
    if ([v10 hasSwiftTask])
    {
      v9 = v23;
      v128 = *(v13 + 4);
      v129 = *(v13 + 9);
      if ([a5 isMainThread])
      {
        v130 = 1;
      }

      else
      {
        v132 = [a5 threadId];
        v130 = v132 == [*(*(v13 + 4) + 168) targetThreadId];
      }

      if (!v128)
      {
        v131 = 0;
        goto LABEL_244;
      }

      v133 = *(v128 + 16);
      if (v133 && (*(v133 + 160) == 1 || (v134 = *(v133 + 152), v134 == 3) || !v134 && *(v133 + 11) == 1))
      {
        v135 = [v133 swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
        v131 = 4;
        if (!v135)
        {
          v131 = 0;
        }

LABEL_244:
        v111 = v519;
        v23 = v9;
      }

      else
      {
        if (v129)
        {
          v23 = v9;
          if ([v133 swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways])
          {
            v131 = 0;
          }

          else
          {
            v136 = [*(v128 + 16) swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways];
            v131 = 8;
            if (!(v130 | v136))
            {
              v131 = 0;
            }
          }
        }

        else
        {
          v23 = v9;
          if ([v133 swiftAsyncPrintLeafyCCallstackOnTopOfCRootCallstacksAlways])
          {
            v131 = 4;
          }

          else
          {
            v137 = [*(v128 + 16) swiftAsyncPrintLeafyCCallstackOnTopOfSwiftAsyncCallstacksAlways];
            v131 = 16;
            v138 = 4;
            if (!v130)
            {
              v138 = 16;
            }

            if (!v137)
            {
              v131 = v138;
            }
          }
        }

        v111 = v519;
      }
    }

    else
    {
      v131 = 0;
    }
  }

  else
  {
    v131 = 2;
  }

  v139 = v131 | v13[269] ^ 1;
  if (v13[270])
  {
    v140 = v139;
  }

  else
  {
    v140 = v139 | 0x20;
  }

  v141 = *(*(*(v13 + 24) + 8) + 40);
  if (v141 && v141 == v10 && (v13[248] != 1 || *(*(*(v13 + 22) + 8) + 40) == a4))
  {
    if (!v515)
    {
      v515 = 0;
      goto LABEL_595;
    }

    if (v111 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_278;
    }

    goto LABEL_631;
  }

  if (!v141 || (v13[262] & 1) != 0)
  {
    if ((v13[262] & 1) != 0 || !v141)
    {
      goto LABEL_290;
    }

    goto LABEL_287;
  }

  v142 = *(v13 + 4);
  if (v142 && *(v142 + 48) == 1 && *(*(*(v13 + 14) + 8) + 24) + 1 != v111)
  {
LABEL_287:
    v150 = *(v13 + 4);
    if (v150 && *(v150 + 48) == 1)
    {
      LODWORD(a2) = *(*(*(v13 + 14) + 8) + 24) + 1 < v111;
      goto LABEL_291;
    }

LABEL_290:
    LODWORD(a2) = 0;
LABEL_291:
    v151 = [*(*(v13 + 4) + 168) cpuSignalHandlerStackLeafKernelFrame];
    v152 = [v10 stackWithBacktraceStyle:v140 ignoringKernelStackWithLeafFrame:v151];

    if (![v152 count])
    {
      obj = v152;
      v189 = *(*(v13 + 25) + 8);
      v155 = *(v189 + 40);
      *(v189 + 40) = 0;
LABEL_360:
      v190 = v524;
      v23 = v502;

LABEL_361:
      goto LABEL_362;
    }

    if (v13[271] != 1)
    {
      goto LABEL_297;
    }

    v153 = [v152 objectAtIndexedSubscript:0];
    if ([v153 isTruncatedBacktraceFrame])
    {
      v154 = [v152 count];

      if (v154 < 2)
      {
LABEL_297:
        v155 = *(v13 + 11);
        v156 = [v152 count];
        v536 = 0u;
        v537 = 0u;
        v538 = 0u;
        v539 = 0u;
        obj = v152;
        v509 = [obj countByEnumeratingWithState:&v536 objects:v570 count:16];
        v500 = v156;
        v157 = 0;
        if (!v509)
        {
          goto LABEL_357;
        }

        v520 = v156 - 1;
        v508 = *v537;
        v512 = v14;
        while (1)
        {
          v158 = 0;
          v517 = v155;
          do
          {
            if (*v537 != v508)
            {
              objc_enumerationMutation(obj);
            }

            a6 = v158;
            v14 = *(*(&v536 + 1) + 8 * v158);
            if (a2)
            {
              goto LABEL_303;
            }

            if (v13[262] != 1)
            {
              v173 = [v517 lastObject];
              if (v173)
              {
                v174 = v173;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v175 = [v174 isTruncatedLeafCallstack];
                  if (v175 == [v14 isLeafyCallstackIsInAnotherCallTreeFrame] && (((v520 == v157) ^ v174[24]) & 1) == 0)
                  {
                    v176 = *(v13 + 4);
                    v177 = [v174 frame];
                    LODWORD(v176) = [(SASamplePrinter *)v176 frame:v177 matchesFrame:v14];

                    a5 = v526;
                    if (v176)
                    {
                      a4 = v174;
                      goto LABEL_338;
                    }
                  }
                }
              }

              goto LABEL_303;
            }

            v534 = 0u;
            v535 = 0u;
            v532 = 0u;
            v533 = 0u;
            v162 = v517;
            v163 = [v162 countByEnumeratingWithState:&v532 objects:v569 count:16];
            if (!v163)
            {
              goto LABEL_327;
            }

            v164 = v163;
            v165 = *v533;
LABEL_314:
            v166 = 0;
            while (1)
            {
              if (*v533 != v165)
              {
                objc_enumerationMutation(v162);
              }

              v167 = *(*(&v532 + 1) + 8 * v166);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_322;
              }

              v168 = [v167 isTruncatedLeafCallstack];
              if (v168 != [v14 isLeafyCallstackIsInAnotherCallTreeFrame])
              {
                goto LABEL_322;
              }

              if (!v167)
              {
                break;
              }

              if ((((v520 == v157) ^ v167[24]) & 1) == 0)
              {
                goto LABEL_321;
              }

LABEL_322:
              if (v164 == ++v166)
              {
                v171 = [v162 countByEnumeratingWithState:&v532 objects:v569 count:16];
                v164 = v171;
                if (!v171)
                {
LABEL_327:

                  v10 = v507;
                  a5 = v526;
                  v111 = v519;
                  goto LABEL_303;
                }

                goto LABEL_314;
              }
            }

            if (v520 == v157)
            {
              goto LABEL_322;
            }

LABEL_321:
            v169 = *(v13 + 4);
            v170 = [v167 frame];
            LOBYTE(v169) = [(SASamplePrinter *)v169 frame:v170 matchesFrame:v14];

            v13 = v521;
            if ((v169 & 1) == 0)
            {
              goto LABEL_322;
            }

            a4 = v167;

            v10 = v507;
            a5 = v526;
            v111 = v519;
            if (v167)
            {
LABEL_338:
              v14 = v512;
              [a4 setSampleCount:{objc_msgSend(a4, "sampleCount") + v512}];
              goto LABEL_348;
            }

LABEL_303:
            if (v515)
            {
              [v517 addObject:v515];
            }

            if (![v14 isLeafyCallstackIsInAnotherCallTreeFrame])
            {
              v172 = v14;
              v14 = v512;
              a4 = [SACallTreeFrame callTreeFrameWithFrame:v172 startSampleIndex:v111 sampleCount:v512 isLeafFrame:v520 == v157];
              goto LABEL_347;
            }

            v13 = (v520 - v157);
            if (v520 != v157)
            {
              a4 = *__error();
              v356 = _sa_logt();
              if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
              {
                v357 = [v14 debugDescription];
                v358 = [v357 UTF8String];
                v359 = v157 + 1;
                v360 = obj;
                v361 = [obj objectAtIndexedSubscript:v359];
                a5 = [v361 debugDescription];
                v362 = [a5 UTF8String];
                *buf = 136315650;
                v548 = v358;
                v549 = 2048;
                v550 = v13;
                v551 = 2080;
                v552 = v362;
                _os_log_error_impl(&dword_1E0E2F000, v356, OS_LOG_TYPE_ERROR, "leafy truncated frame %s not leaf: %lu more to go (%s is next)", buf, 0x20u);
              }

              else
              {
                v359 = v157 + 1;
                v360 = obj;
              }

              *__error() = a4;
              v363 = [v14 debugDescription];
              v10 = [v363 UTF8String];
              v364 = [v360 objectAtIndexedSubscript:v359];
              v365 = [v364 debugDescription];
              _SASetCrashLogMessage(12164, "leafy truncated frame %s not leaf: %lu more to go (%s is next)", v10, v13, [v365 UTF8String]);

              _os_crash();
              __break(1u);
              goto LABEL_617;
            }

            if ([v14 isSwiftAsync])
            {
              v159 = [v10 swiftTask];
              v160 = [v159 identifier];
              if (v159)
              {
                v13 = v521;
                if (v160 != -1)
                {
                  v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %llu", @"Swift Task", v160];
                  goto LABEL_345;
                }
              }

              else
              {
                v183 = *__error();
                v184 = _sa_logt();
                if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
                {
                  v187 = [(SAThreadState *)v10 debugDescriptionWithThread:a5];
                  *buf = 138412290;
                  v548 = v187;
                  _os_log_fault_impl(&dword_1E0E2F000, v184, OS_LOG_TYPE_FAULT, "isLeafyCallstackIsInAnotherCallTreeFrame, but no swiftTask for %@", buf, 0xCu);

                  a5 = v526;
                }

                *__error() = v183;
                v13 = v521;
                v111 = v519;
              }

              v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", @"Swift Task", @"UNKNOWN"];
LABEL_345:
              v182 = v161;
            }

            else
            {
              v178 = [a5 threadId];
              v179 = objc_alloc(MEMORY[0x1E696AEC0]);
              if (v178)
              {
                v180 = [v179 initWithFormat:@"%@ 0x%llx", @"Thread", objc_msgSend(a5, "threadId")];
              }

              else
              {
                v180 = [v179 initWithFormat:@"%@ %@", @"Thread", @"UNKNOWN"];
              }

              v182 = v180;
              v13 = v521;
            }

            v185 = v14;
            v14 = v512;
            a4 = [SACallTreeTruncatedLeafCallstacks callTreeFrameWithFrame:v185 startSampleIndex:v111 sampleCount:v512 otherCallTreeDescription:v182];

LABEL_347:
            [v517 addObject:a4];
            v515 = 0;
LABEL_348:
            if (v520 == v157)
            {
              objc_storeStrong((*(*(v13 + 25) + 8) + 40), a4);

              v157 = v156 - 1;
              v155 = v517;
              goto LABEL_357;
            }

            if (a4)
            {
              v186 = objc_getProperty(a4, v181, 40, 1);
            }

            else
            {
              v186 = 0;
            }

            v155 = v186;

            ++v157;
            v158 = a6 + 1;
            v517 = v155;
          }

          while (a6 + 1 != v509);
          v188 = [obj countByEnumeratingWithState:&v536 objects:v570 count:16];
          v509 = v188;
          if (!v188)
          {
LABEL_357:
            v23 = obj;

            if (*(*(*(v13 + 25) + 8) + 40))
            {
              a4 = v503;
              goto LABEL_360;
            }

            v383 = *__error();
            v384 = _sa_logt();
            LODWORD(v9) = v500;
            if (os_log_type_enabled(v384, OS_LOG_TYPE_ERROR))
            {
              v385 = [obj debugDescription];
              v386 = [v385 UTF8String];
              *buf = 134218498;
              v548 = v157;
              v549 = 2048;
              v550 = v500;
              v551 = 2080;
              v552 = v386;
              _os_log_error_impl(&dword_1E0E2F000, v384, OS_LOG_TYPE_ERROR, "No leaf frame picked: index %lu, count %lu, stack %s", buf, 0x20u);

              v23 = obj;
            }

            *__error() = v383;
            v387 = [v23 debugDescription];
            _SASetCrashLogMessage(12203, "No leaf frame picked: index %lu, count %lu, stack %s", v157, v500, [v387 UTF8String]);

            _os_crash();
            __break(1u);
LABEL_631:
            LODWORD(v388) = *__error();
            v389 = _sa_logt();
            if (os_log_type_enabled(v389, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_714;
            }

            while (2)
            {

              *__error() = v388;
              v13 = v521;
              a5 = v526;
LABEL_278:
              v148 = *(*(*(v13 + 25) + 8) + 40);
              if (v148)
              {
                if ((v148[24] & 1) == 0)
                {
                  goto LABEL_641;
                }

                v149 = objc_getProperty(v148, v18, 40, 1);
              }

              else
              {
                v149 = *(v13 + 11);
              }

              v202 = v149;
              v203 = [v149 lastObject];
              if (!v203)
              {
                [v202 addObject:v515];
                goto LABEL_594;
              }

              p_cache = SAMicrostackshotStatistics.cache;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_644;
              }

              if ([v203 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v203, "startSampleIndex") >= v519)
              {
                [v202 insertObject:v515 atIndex:{objc_msgSend(v202, "count") - 1}];
                goto LABEL_593;
              }

              v205 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
              v206 = *(v203 + 96);
              [v202 addObject:v515];
              v23 = v502;
              if (v206 == 0x7FFFFFFFFFFFFFFFLL || v206 < v519)
              {
                goto LABEL_594;
              }

              v207 = [v203 sampleCount];
              if ([v203 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v208 = -1;
              }

              else
              {
                v208 = [v203 startSampleIndex] - v519;
              }

              v293 = v208 + v207;
              v520 = v208 + v207;
              if ([v203 sampleCount] > (v208 + v207))
              {
                v23 = v502;
                if (!v293)
                {
                  goto LABEL_594;
                }

                a6 = v202;
                if (v519 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v295 = objc_getProperty(v203, v294, 88, 1);
                  v296 = [v295 lastObject];
                  v297 = [v296 startTime];
                }

                else
                {
                  v295 = [*(*(v13 + 4) + 168) sampleTimestamps];
                  v296 = [v295 objectAtIndexedSubscript:v519];
                  v297 = v296;
                }

                if (v297 && (v299 = objc_getProperty(v203, v298, 88, 1), [v299 lastObject], v300 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v300, "startTime"), v301 = objc_claimAutoreleasedReturnValue(), v302 = objc_msgSend(v301, "le:", v297), v301, v300, v299, (v302 & 1) != 0))
                {
                  v304 = objc_getProperty(v203, v303, 88, 1);
                  v305 = [v304 lastObject];
                  v306 = [v305 endTime];
                  if ([v306 ge:v297])
                  {
                    v308 = objc_getProperty(v203, v307, 88, 1);
                    v309 = [v308 lastObject];
                    v310 = [v309 endTime];

                    p_cache = (SAMicrostackshotStatistics + 16);
                  }

                  else
                  {
                    v310 = v297;
                  }

                  if (v310)
                  {
                    v518 = [SATimeRange timeRangeStart:v297 end:v310];
                    [v203 setSampleCount:{objc_msgSend(v203, "sampleCount") - v520}];
                    *(v203 + 96) -= v520;
                    v511 = v310;
                    v513 = v297;
                    if (v501 && v519 && v519 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v312 = [*(*(v521 + 4) + 168) sampleTimestamps];
                      v315 = [v312 objectAtIndexedSubscript:v519 - 1];
                      v349 = objc_getProperty(v203, v348, 88, 1);
                      v350 = [v349 lastObject];
                      v352 = v350;
                      if (v350)
                      {
                        objc_setProperty_atomic(v350, v351, v315, 16);
                      }
                    }

                    else
                    {
                      v312 = objc_getProperty(v203, v311, 88, 1);
                      v313 = [v312 lastObject];
                      v315 = v313;
                      if (v313)
                      {
                        objc_setProperty_atomic(v313, v314, v297, 16);
                      }
                    }

                    v317 = objc_getProperty(v203, v316, 56, 1);
                    v319 = objc_getProperty(v203, v318, 64, 1);
                    v320 = +[SACallTreeState treeCountedStateWithWaitInfo:turnstileInfo:isPartOfADeadlock:isBlockedByADeadlock:state:microstackshotState:pid:threadId:threadPriority:timeRange:originPid:proximatePid:startSampleIndex:sampleCount:]((p_cache + 203), v317, v319, *(v203 + 25) & 1, *(v203 + 26) & 1, *(v203 + 72), *(v203 + 32), *(v203 + 28), *(v203 + 48), [v507 basePriority], v518, *(v203 + 36), v519, v520);

                    v202 = a6;
                    [a6 addObject:v320];
                    a5 = v526;
                    if (v519 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v322 = objc_getProperty(v203, v321, 80, 1);
                      v323 = [v322 count];

                      v325 = 0;
                      if (v323)
                      {
                        do
                        {
                          v326 = objc_getProperty(v203, v324, 80, 1);
                          v327 = [v326 objectAtIndexedSubscript:v325];

                          v328 = [v327 startTimestamp];
                          v329 = [v328 gt:v297];

                          if (v329)
                          {
                            break;
                          }

                          ++v325;
                          v330 = objc_getProperty(v203, v324, 80, 1);
                          v331 = [v330 count];
                        }

                        while (v325 < v331);
                      }

                      v332 = objc_getProperty(v203, v324, 80, 1);
                      v333 = [v332 count];

                      v202 = a6;
                      if (v325 < v333)
                      {
                        v335 = objc_getProperty(v203, v334, 80, 1);
                        v336 = [v335 count] - v325;

                        v338 = objc_getProperty(v203, v337, 80, 1);
                        v339 = [v338 subarrayWithRange:{v325, v336}];
                        v341 = [v339 mutableCopy];
                        if (v320)
                        {
                          objc_setProperty_atomic(v320, v340, v341, 80);
                        }

                        v343 = objc_getProperty(v203, v342, 80, 1);
                        [v343 removeObjectsInRange:{v325, v336}];

                        v202 = a6;
                      }
                    }

                    v13 = v521;
LABEL_593:
                    v23 = v502;
LABEL_594:

                    a4 = v503;
                    v10 = v507;
LABEL_595:
                    v190 = v524;
                    goto LABEL_596;
                  }
                }

                else
                {
                  v454 = *__error();
                  v455 = _sa_logt();
                  if (os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
                  {
                    v205 = [v203 debugDescription];
                    v456 = [v205 UTF8String];
                    v457 = [v297 debugDescription];
                    v458 = [v457 UTF8String];
                    *buf = 136315650;
                    v548 = v456;
                    v549 = 2048;
                    v550 = v519;
                    v551 = 2080;
                    v552 = v458;
                    _os_log_error_impl(&dword_1E0E2F000, v455, OS_LOG_TYPE_ERROR, "%s splitting at %lu %s", buf, 0x20u);
                  }

                  *__error() = v454;
                  v459 = [v203 debugDescription];
                  v203 = [v459 UTF8String];
                  v460 = [v297 debugDescription];
                  _SASetCrashLogMessage(12389, "%s splitting at %lu %s", v203, v519, [v460 UTF8String]);

                  _os_crash();
                  __break(1u);
                }

                v461 = *__error();
                v462 = _sa_logt();
                if (os_log_type_enabled(v462, OS_LOG_TYPE_ERROR))
                {
                  v205 = [v203 debugDescription];
                  v463 = [v205 UTF8String];
                  v464 = [v297 debugDescription];
                  v465 = [v464 UTF8String];
                  *buf = 136315394;
                  v548 = v463;
                  v549 = 2080;
                  v550 = v465;
                  _os_log_error_impl(&dword_1E0E2F000, v462, OS_LOG_TYPE_ERROR, "nil newCountedStateEndTimestamp from %s and %s", buf, 0x16u);
                }

                *__error() = v461;
                v466 = [v203 debugDescription];
                v203 = [v466 UTF8String];
                v467 = [v297 debugDescription];
                _SASetCrashLogMessage(12393, "nil newCountedStateEndTimestamp from %s and %s", v203, [v467 UTF8String]);

                _os_crash();
                __break(1u);
LABEL_704:
                v508 = [*(v521 + 5) taskStates];
                v449 = [v508 indexOfObject:v503];
                goto LABEL_705;
              }

              v297 = v202;
              LODWORD(v523) = *__error();
              v524 = _sa_logt();
              if (os_log_type_enabled(v524, OS_LOG_TYPE_ERROR))
              {
                v515 = [v203 startSampleIndex];
                a6 = [v203 sampleCount];
                LODWORD(v205) = v202 == *(v521 + 11);
                v517 = [v526 threadStates];
                v512 = [v517 indexOfObject:v507];
                a2 = [v507 startSampleIndex];
                v509 = [v507 endSampleIndex];
                if (v503)
                {
                  goto LABEL_704;
                }

                v449 = -1;
LABEL_705:
                v468 = [v503 startSampleIndex];
                v469 = [v503 endSampleIndex];
                v470 = [*(*(*(v521 + 25) + 8) + 40) startSampleIndex];
                v471 = [*(*(*(v521 + 25) + 8) + 40) sampleCount];
                v472 = [v297 lastObject];
                v473 = [v472 UTF8String];
                *buf = 134221570;
                v548 = v515;
                v549 = 2048;
                v550 = a6;
                v551 = 2048;
                v552 = v520;
                v553 = 1024;
                *v554 = v205;
                *&v554[4] = 2048;
                *&v554[6] = v519;
                *&v554[14] = 2048;
                *&v554[16] = v512;
                *&v554[24] = 2048;
                *&v554[26] = a2;
                v555 = 2048;
                v556 = v509;
                v557 = 2048;
                v558 = v449;
                v559 = 2048;
                v560 = v468;
                v561 = 2048;
                v562 = v469;
                v563 = 1024;
                *v564 = v501;
                *&v564[4] = 2048;
                *&v564[6] = v470;
                v565 = 2048;
                *v566 = v471;
                *&v566[8] = 2080;
                v567 = v473;
                _os_log_error_impl(&dword_1E0E2F000, v524, OS_LOG_TYPE_ERROR, "start %lu, count %lu, newcount %lu, is root %d, index %lu, thread state %lu %lu-%lu, task state %lu %lu-%lu, timeJump %d, leaf start %lu, count %lu, state %s", buf, 0x90u);

                if (v503)
                {
                }
              }

              *__error() = v523;
              v524 = [v203 startSampleIndex];
              v523 = [v203 sampleCount];
              v517 = v297 == *(v521 + 11);
              v389 = [v526 threadStates];
              v526 = [v389 indexOfObject:v507];
              v474 = [v507 startSampleIndex];
              v475 = [v507 endSampleIndex];
              if (v503)
              {
                v515 = [*(v521 + 5) taskStates];
                v14 = [v515 indexOfObject:v503];
              }

              else
              {
                v14 = -1;
              }

              v476 = [v503 startSampleIndex];
              v23 = [v503 endSampleIndex];
              v9 = [*(*(*(v521 + 25) + 8) + 40) startSampleIndex];
              v388 = [*(*(*(v521 + 25) + 8) + 40) sampleCount];
              a4 = [v297 lastObject];
              _SASetCrashLogMessage(12385, "start %lu, count %lu, newcount %lu, is root %d, index %lu, thread state %lu %lu-%lu, task state %lu %lu-%lu, timeJump %d, leaf start %lu, count %lu, state %s", v524, v523, v520, v517, v519, v526, v474, v475, v14, v476, v23, v501, v9, v388, [a4 UTF8String]);

              if (v503)
              {
              }

              _os_crash();
              __break(1u);
LABEL_714:
              v477 = [v515 UTF8String];
              *buf = 136315138;
              v548 = v477;
              _os_log_fault_impl(&dword_1E0E2F000, v389, OS_LOG_TYPE_FAULT, "Countless state change %s, but no sampleIndex", buf, 0xCu);
              continue;
            }
          }
        }
      }

      [a5 patchedStackForTruncatedStack:v152];
      v152 = v153 = v152;
    }

    goto LABEL_297;
  }

  if (([v141 hasSameStackAs:v10] & 1) == 0)
  {
    if ((v13[262] & 1) != 0 || !*(*(*(v13 + 24) + 8) + 40))
    {
      goto LABEL_290;
    }

    goto LABEL_287;
  }

  v143 = [*(v13 + 11) lastObject];
  if (v143)
  {
    v144 = v143;
    while (1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [v144 setSampleCount:{objc_msgSend(v144, "sampleCount") + v14}];
      objc_storeStrong((*(*(v13 + 25) + 8) + 40), v144);
      v146 = objc_getProperty(v144, v145, 40, 1);
      v147 = [v146 lastObject];

      v144 = v147;
      if (!v147)
      {
        obj = 0;
        goto LABEL_396;
      }
    }

    obj = v144;
LABEL_396:
    v190 = v524;
    v23 = v502;
    goto LABEL_361;
  }

  v190 = v524;
LABEL_362:
  if (v13[261] != 1)
  {
    goto LABEL_555;
  }

  v191 = *(v13 + 4);
  v192 = *(v191 + 168);
  v193 = *(v191 + 16);
  if ([v10 isRunning])
  {
    if ([v193 displayThreadRunningState])
    {
      v194 = 4;
    }

    else
    {
      v194 = 0;
    }

    if ((([v193 displayCPUNumForRunningThreads] & 1) != 0 || objc_msgSend(v193, "displayCPUClusterInfoForRunningThreads")) && (v195 = objc_msgSend(v10, "cpuNum"), v195 != -1))
    {
      v196 = v195;
      if ([v193 displayCPUNumForRunningThreads])
      {
        v197 = v196;
        if (v196 >= 0xFF)
        {
          v452 = *__error();
          v453 = _sa_logt();
          if (os_log_type_enabled(v453, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            LODWORD(v548) = v196;
            _os_log_fault_impl(&dword_1E0E2F000, v453, OS_LOG_TYPE_FAULT, "bad cpu num %u", buf, 8u);
          }

          *__error() = v452;
          v197 = -2;
          v13 = v521;
          a5 = v526;
        }

        v198 = v197 + 1;
      }

      else
      {
        v198 = 0;
      }

      if ([v193 displayCPUClusterInfoForRunningThreads])
      {
        v194 |= __rbit32([(SASampleStore *)v192 clusterFlagsForCPUNum:v196]) >> 30;
      }
    }

    else
    {
      v198 = 0;
    }

    if ([v193 displayCPUSpeedInCallTrees])
    {
      v201 = [v507 cpuSpeedMhz] / 0x64;
    }

    else
    {
      LOWORD(v201) = 0;
    }

    if ([v193 displayPMICycleIntervalInCallTrees])
    {
      v520 = ([v507 pmiCycleInterval] / 0xF4240uLL);
      goto LABEL_406;
    }

LABEL_405:
    v520 = 0;
  }

  else
  {
    if ([v10 isRunnable])
    {
      if ([v193 displayThreadRunningState])
      {
        v194 = 8;
      }

      else
      {
        v194 = 0;
      }
    }

    else
    {
      v194 = 0;
    }

    if (![v193 displayCPUNumForNonRunningThreads] || (v199 = objc_msgSend(v10, "cpuNum"), v199 == -1))
    {
      v198 = 0;
      LOWORD(v201) = 0;
      goto LABEL_405;
    }

    v200 = v199;
    if (v199 >= 0xFF)
    {
      v447 = *__error();
      v448 = _sa_logt();
      if (os_log_type_enabled(v448, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v548) = v200;
        _os_log_fault_impl(&dword_1E0E2F000, v448, OS_LOG_TYPE_FAULT, "bad cpu num %u", buf, 8u);
      }

      *__error() = v447;
      LOBYTE(v200) = -2;
      v13 = v521;
      a5 = v526;
    }

    LOWORD(v201) = 0;
    v520 = 0;
    v198 = v200 + 1;
  }

LABEL_406:
  LODWORD(v9) = v507;
  v209 = [v507 isSuspended];
  LODWORD(v210) = v194 | 0x10;
  if (v209)
  {
    v210 = v210;
  }

  else
  {
    v210 = v194;
  }

  v211 = (v198 << 48) | (v210 << 56);
  if (v13[272] == 1)
  {
    a2 = [v507 waitInfo];

    if (v13[272])
    {
      v508 = [v507 turnstileInfo];

      goto LABEL_414;
    }
  }

  else
  {
    a2 = 0;
  }

  v508 = 0;
LABEL_414:
  v212 = v211 | (v201 << 32);
  v213 = *(*(v13 + 4) + 152);
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a5, "threadId")}];
  v214 = [v213 objectForKeyedSubscript:v23];

  v215 = [v214 threadState];

  if (v215 != v507)
  {

    v214 = 0;
  }

  v203 = v212 | v520;
  if (v13[273] == 1)
  {
    v10 = v507;
    LODWORD(a6) = [v507 originPid];
    if (v13[273])
    {
      LODWORD(v509) = [v507 proximatePid];
    }

    else
    {
      LODWORD(v509) = -1;
    }
  }

  else
  {
    LODWORD(a6) = -1;
    LODWORD(v509) = -1;
    v10 = v507;
  }

  obj = v214;
  if (v13[274] != 1)
  {
    LODWORD(v517) = 0;
    goto LABEL_456;
  }

  if (!a4)
  {
    v395 = *__error();
    v396 = _sa_logt();
    if (os_log_type_enabled(v396, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v396, OS_LOG_TYPE_ERROR, "No task state for thread state in microstackshot data", buf, 2u);
    }

    *__error() = v395;
    _SASetCrashLogMessage(12225, "No task state for thread state in microstackshot data");
    _os_crash();
    __break(1u);
LABEL_641:
    v397 = *__error();
    v203 = _sa_logt();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
      v398 = [v23 UTF8String];
      *buf = 136315138;
      v548 = v398;
      _os_log_error_impl(&dword_1E0E2F000, v203, OS_LOG_TYPE_ERROR, "leaf frame %s !isLeafFrame", buf, 0xCu);
    }

    *__error() = v397;
    v399 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
    _SASetCrashLogMessage(12365, "leaf frame %s !isLeafFrame", [v399 UTF8String]);

    _os_crash();
    __break(1u);
LABEL_644:
    v400 = *__error();
    v401 = _sa_logt();
    if (os_log_type_enabled(v401, OS_LOG_TYPE_ERROR))
    {
      v402 = objc_opt_class();
      v23 = NSStringFromClass(v402);
      v403 = [v23 UTF8String];
      *buf = 136315138;
      v548 = v403;
      _os_log_error_impl(&dword_1E0E2F000, v401, OS_LOG_TYPE_ERROR, "treeCountedState is a %s", buf, 0xCu);
    }

    *__error() = v400;
    v404 = objc_opt_class();
    v405 = NSStringFromClass(v404);
    _SASetCrashLogMessage(12374, "treeCountedState is a %s", [v405 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_647;
  }

  v217 = SAMicrostackshotStateForFlagsTaskAndThreadState([v10 microstackshotFlags], a4, v10);
  v218 = *(v13 + 12);
  if (v218)
  {
    if ((v217 & 0x10) == 0)
    {
      if (v13[275])
      {
        v219 = v217;
      }

      else
      {
        v219 = v217 & 0x1FFE3;
      }

      LODWORD(v517) = v219;
      goto LABEL_442;
    }

    v221 = 40;
    if ((v217 & 8) == 0)
    {
      v221 = 48;
    }

    *&v218[v221] += v14;
    v218 = *(v13 + 12);
    if (v218)
    {
      v222 = 32;
      if ((v217 & 4) == 0)
      {
        v222 = 24;
      }

      *&v218[v222] += v14;
      v218 = *(v13 + 12);
      v223 = v217 & 0x1FFE3;
      if (v13[275])
      {
        v223 = v217;
      }

      LODWORD(v517) = v223;
      if (v218)
      {
LABEL_442:
        v218 = objc_getProperty(v218, v216, 8, 1);
      }
    }

    else
    {
      v478 = v217 & 0x1FFE3;
      if (v13[275])
      {
        v478 = v217;
      }

      LODWORD(v517) = v478;
    }

    v224 = v218;
    v225 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v517];
    v23 = [v224 objectForKeyedSubscript:v225];

    if (v23)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v23, "unsignedLongValue") + v14}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    }
    v227 = ;
    v228 = *(v13 + 12);
    if (v228)
    {
      v228 = objc_getProperty(v228, v226, 8, 1);
    }

    v229 = v228;
    v230 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v517];
    [v229 setObject:v227 forKeyedSubscript:v230];

    v232 = *(v13 + 12);
    if (v232)
    {
      v232 = objc_getProperty(v232, v231, 16, 1);
    }

    v233 = v232;
    v234 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v203];
    v9 = [v233 objectForKeyedSubscript:v234];

    if (v9)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v9, "unsignedLongValue") + v14}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    }
    v236 = ;
    v237 = *(v13 + 12);
    if (v237)
    {
      v237 = objc_getProperty(v237, v235, 16, 1);
    }

    v238 = v237;
    a5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v203];
    [v238 setObject:v236 forKeyedSubscript:a5];

    v214 = obj;
    v10 = v507;
  }

  else
  {
    if (v13[275])
    {
      v220 = v217;
    }

    else
    {
      v220 = v217 & 0x1FFE3;
    }

    LODWORD(v517) = v220;
  }

LABEL_456:
  v239 = *(*(*(v13 + 25) + 8) + 40);
  v240 = v515;
  if (v239)
  {
    if (v239[24])
    {
      v241 = objc_getProperty(v239, v216, 40, 1);
      goto LABEL_460;
    }

    v390 = *__error();
    v203 = _sa_logt();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
      v391 = [v23 UTF8String];
      *buf = 136315138;
      v548 = v391;
      _os_log_error_impl(&dword_1E0E2F000, v203, OS_LOG_TYPE_ERROR, "leaf frame %s !isLeafFrame", buf, 0xCu);
    }

    *__error() = v390;
    v290 = [*(*(*(v13 + 25) + 8) + 40) debugDescription];
    _SASetCrashLogMessage(12269, "leaf frame %s !isLeafFrame", [v290 UTF8String]);

    _os_crash();
    __break(1u);
LABEL_636:
    v392 = v290[188];
    LODWORD(a4) = 1;
    v240 = v23;
    v393 = objc_getProperty(v23, v292, v392, 1);
    if (v393)
    {
      v394 = 0;
      v13 = v521;
      v10 = v507;
      goto LABEL_650;
    }

LABEL_647:
    if (a2 && ([(SAWaitInfo *)a2 _displaysContentForPid:*(v23 + 48) tid:*(v521 + 29) options:0 displayString:0 nameCallback:?]& 1) != 0)
    {
      v394 = 0;
      v393 = 0;
      v13 = v521;
      v10 = v507;
      v240 = v23;
LABEL_650:
      v406 = v515;
      v407 = v520;
LABEL_683:

      if (v407)
      {
LABEL_684:

        if ((a4 & 1) == 0)
        {
          goto LABEL_685;
        }

LABEL_693:

        if (v394)
        {
          goto LABEL_694;
        }

        goto LABEL_551;
      }

LABEL_692:
      if (a4)
      {
        goto LABEL_693;
      }

LABEL_685:

      if (v394)
      {
LABEL_694:
        v250 = v240;

        goto LABEL_602;
      }

LABEL_551:
      v214 = obj;
LABEL_462:

LABEL_463:
      v242 = a5 + 203;
      v243 = [v214 isPartOfADeadlock];
      v244 = [v214 isBlockedByADeadlock];
      v245 = [*(v13 + 5) pid];
      v246 = [v526 threadId];
      v247 = [v10 basePriority];
      v248 = [[SATimeRange alloc] initWithStart:v523 end:v524];
      v479 = v246;
      v13 = v521;
      v249 = v245;
      a5 = v526;
      v250 = [(SACallTreeState *)v242 treeCountedStateWithWaitInfo:a2 turnstileInfo:v508 isPartOfADeadlock:v243 isBlockedByADeadlock:v244 state:v203 microstackshotState:v517 pid:v249 threadId:v479 threadPriority:v247 timeRange:v248 originPid:__SPAIR64__(v509 proximatePid:a6) startSampleIndex:v519 sampleCount:v512];

      [v500 addObject:v250];
      v23 = v502;
      a4 = v503;
      goto LABEL_464;
    }

    v499 = 1;
LABEL_659:
    v497 = v9 ^ 1;
    v439 = objc_getProperty(v23, v292, 64, 1);
    v441 = [v439 isEqual:v508];
    if (v441)
    {
      v442 = 0;
      v443 = 0;
      goto LABEL_676;
    }

    v14 = objc_getProperty(v23, v440, 64, 1);
    v442 = v14 != 0;
    if (v14)
    {
      v489 = objc_getProperty(v23, v444, 64, 1);
      if ([(SATurnstileInfo *)v489 displaysSameContentAs:v508 forPid:*(v23 + 28) tid:*(v23 + 48) displayOptions:*(v521 + 29)])
      {
        v443 = 0;
        v442 = 1;
        goto LABEL_676;
      }
    }

    v445 = 1;
    v446 = objc_getProperty(v23, v444, 64, 1);
    if (v446)
    {
      v394 = 0;
      goto LABEL_679;
    }

    if (v508 && [(SATurnstileInfo *)v508 _displaysContentForPid:*(v23 + 48) tid:0 threadPriority:*(v521 + 29) options:0 displayString:0 nameCallback:?])
    {
      v394 = 0;
LABEL_678:
      v446 = 0;
LABEL_679:

      v450 = v499;
      if (v442)
      {
        goto LABEL_680;
      }

LABEL_689:
      if (v445)
      {
        goto LABEL_690;
      }

LABEL_681:

      if (v450)
      {
        goto LABEL_682;
      }
    }

    else
    {
      v443 = 1;
LABEL_676:
      v445 = v441 ^ 1;
      if ([obj isPartOfADeadlock] == (*(v23 + 25) & 1))
      {
        v451 = [obj isBlockedByADeadlock];
        v394 = v451 ^ [obj isBlockedByADeadlock] ^ 1;
        if (v443)
        {
          goto LABEL_678;
        }
      }

      else
      {
        v394 = 0;
        if (v443)
        {
          goto LABEL_678;
        }
      }

      v450 = v499;
      if (!v442)
      {
        goto LABEL_689;
      }

LABEL_680:

      if ((v445 & 1) == 0)
      {
        goto LABEL_681;
      }

LABEL_690:

      if (v450)
      {
LABEL_682:
        v393 = 0;
        v13 = v521;
        v10 = v507;
        v240 = v23;
        v406 = v515;
        v407 = v520;
        LODWORD(a4) = v497;
        goto LABEL_683;
      }
    }

    v13 = v521;
    v10 = v507;
    v240 = v23;
    v406 = v515;
    LODWORD(a4) = v497;
    if (v520)
    {
      goto LABEL_684;
    }

    goto LABEL_692;
  }

  v241 = *(v13 + 11);
LABEL_460:
  a5 = SAMicrostackshotStatistics.cache;
  v512 = v14;
  v500 = v241;
  if (v515)
  {
    [v241 addObject:v515];
    goto LABEL_462;
  }

  if (v13[262] != 1)
  {
    v240 = [v241 lastObject];
    if (!v240)
    {
      goto LABEL_462;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_462;
    }

    v288 = *(v240 + 9);
    if (((v288 ^ v203) & 0x1FFF000000000000) != 0 || v288 != v520 || ((v288 ^ v203) & 0xFFFF00000000) != 0 || *(v240 + 8) != v517 || *(v240 + 9) != a6 || *(v240 + 10) != v509)
    {
      goto LABEL_462;
    }

    v289 = v240;
    v290 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
    v23 = v289;
    v291 = objc_getProperty(v289, v287, 56, 1);
    LODWORD(v9) = [v291 isEqual:a2];
    v515 = v291;
    if (v9)
    {
      LODWORD(v520) = 0;
      v499 = 0;
      goto LABEL_659;
    }

    goto LABEL_625;
  }

  v530 = 0u;
  v531 = 0u;
  v528 = 0u;
  v529 = 0u;
  v240 = v241;
  v257 = [v240 countByEnumeratingWithState:&v528 objects:v568 count:16];
  if (!v257)
  {
    goto LABEL_462;
  }

  v258 = v257;
  v259 = *v529;
  v516 = v240;
  while (2)
  {
    v260 = 0;
LABEL_475:
    if (*v529 != v259)
    {
      objc_enumerationMutation(v240);
    }

    v261 = *(*(&v528 + 1) + 8 * v260);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_481;
    }

    v263 = v261 ? *(v261 + 72) : 0;
    if (((v263 ^ v203) & 0x1FFF000000000000) != 0 || v263 != v520 || ((v263 ^ v203) & 0xFFFF00000000) != 0)
    {
      goto LABEL_481;
    }

    if (v261)
    {
      if (*(v261 + 32) == v517 && *(v261 + 36) == a6 && *(v261 + 40) == v509)
      {
        v264 = objc_getProperty(v261, v262, 56, 1);
        goto LABEL_490;
      }

LABEL_481:
      if (v258 == ++v260)
      {
        v286 = [v240 countByEnumeratingWithState:&v528 objects:v568 count:16];
        v258 = v286;
        if (!v286)
        {
          v13 = v521;
          goto LABEL_551;
        }

        continue;
      }

      goto LABEL_475;
    }

    break;
  }

  if (v517 | a6 | v509)
  {
    v10 = v507;
    v240 = v516;
    goto LABEL_481;
  }

  v264 = 0;
  v10 = v507;
  v240 = v516;
LABEL_490:
  v496 = v264;
  v265 = [v496 isEqual:a2];
  if (v265)
  {
    v498 = 0;
    goto LABEL_492;
  }

  v494 = v265;
  if (v261)
  {
    v270 = objc_getProperty(v261, v266, 56, 1);
    v498 = v270 != 0;
    v485 = v270;
    if (v270)
    {
      v267 = 1;
      v484 = objc_getProperty(v261, v266, 56, 1);
      if (([(SAWaitInfo *)v484 displaysSameContentAs:a2 forPid:*(v261 + 28) tid:*(v261 + 48) displayOptions:*(v521 + 29)]& 1) != 0)
      {
        v492 = 0;
        v498 = 1;
        v268 = v508;
        v269 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
LABEL_498:
        v495 = v267;
        v271 = objc_getProperty(v261, v266, v269[189], 1);
        goto LABEL_499;
      }
    }

    v281 = objc_getProperty(v261, v266, 56, 1);
    if (v281)
    {
      v495 = 1;
      v280 = 0;
      goto LABEL_533;
    }

    v266 = *(v261 + 28);
    v282 = *(v261 + 48);
  }

  else
  {
    v266 = 0;
    v498 = 0;
    v485 = 0;
    v282 = 0;
  }

  if (!a2)
  {
    v487 = 0;
LABEL_548:
    v265 = v494;
LABEL_492:
    v267 = v265 ^ 1;
    v268 = v508;
    v269 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
    if (v261)
    {
      v492 = v265 ^ 1;
      goto LABEL_498;
    }

    v271 = 0;
    v495 = v267;
    v492 = v267;
LABEL_499:
    v490 = v271;
    v273 = [v490 isEqual:v268];
    if (v273)
    {
      v274 = 0;
LABEL_501:
      v275 = v273 ^ 1;
      v276 = [obj isPartOfADeadlock];
      if (!v261)
      {
        v488 = v273 ^ 1;
        if (v276)
        {
LABEL_508:
          v280 = 0;
          if (!v275)
          {
LABEL_536:
            if (!v274)
            {
LABEL_537:
              v10 = v507;
              if (v488)
              {
LABEL_538:

                if ((v492 & 1) == 0)
                {
LABEL_539:
                  v240 = v516;
                  if (v498)
                  {
                    goto LABEL_534;
                  }

LABEL_540:
                  if (v495)
                  {
                    goto LABEL_541;
                  }

                  goto LABEL_542;
                }

LABEL_531:
                v240 = v516;
                goto LABEL_532;
              }

LABEL_530:

              if (!v492)
              {
                goto LABEL_539;
              }

              goto LABEL_531;
            }

LABEL_529:

            v10 = v507;
            if (v488)
            {
              goto LABEL_538;
            }

            goto LABEL_530;
          }

LABEL_528:

          if ((v274 & 1) == 0)
          {
            goto LABEL_537;
          }

          goto LABEL_529;
        }

LABEL_527:
        v285 = [obj isBlockedByADeadlock];
        v280 = v285 ^ [obj isBlockedByADeadlock] ^ 1;
        if ((v275 & 1) == 0)
        {
          goto LABEL_536;
        }

        goto LABEL_528;
      }

      v277 = v273 ^ 1;
LABEL_507:
      v488 = v275;
      v275 = v277;
      if (v276 != (*(v261 + 25) & 1))
      {
        goto LABEL_508;
      }

      goto LABEL_527;
    }

    if (v261)
    {
      v278 = objc_getProperty(v261, v272, v269[189], 1);
      v486 = v278 != 0;
      v482 = v278;
      if (v278)
      {
        v481 = objc_getProperty(v261, v279, v269[189], 1);
        if ([(SATurnstileInfo *)v481 displaysSameContentAs:v268 forPid:*(v261 + 28) tid:*(v261 + 48) displayOptions:*(v521 + 29)])
        {
          v276 = [obj isPartOfADeadlock];
          v277 = 0;
          v275 = 1;
          v274 = 1;
          goto LABEL_507;
        }
      }

      v483 = objc_getProperty(v261, v279, v269[189], 1);
      if (v483)
      {
        v488 = 1;
        v280 = 0;
        LOBYTE(v274) = v486;
        goto LABEL_528;
      }

      v283 = *(v261 + 28);
      v284 = *(v261 + 48);
      v274 = v486;
      if (v268)
      {
        goto LABEL_519;
      }
    }

    else
    {
      v283 = 0;
      v274 = 0;
      v482 = 0;
      v284 = 0;
      if (v268)
      {
LABEL_519:
        v483 = 0;
        if ([(SATurnstileInfo *)v268 _displaysContentForPid:v283 tid:v284 threadPriority:0 options:*(v521 + 29) displayString:0 nameCallback:0])
        {
          v280 = 0;
          v488 = 1;
          goto LABEL_528;
        }

        goto LABEL_501;
      }
    }

    v483 = 0;
    goto LABEL_501;
  }

  v487 = 0;
  if (([(SAWaitInfo *)a2 _displaysContentForPid:v266 tid:v282 options:*(v521 + 29) displayString:0 nameCallback:0]& 1) == 0)
  {
    goto LABEL_548;
  }

  v280 = 0;
  v495 = 1;
LABEL_532:
  v281 = v487;
LABEL_533:
  v487 = v281;

  if (!v498)
  {
    goto LABEL_540;
  }

LABEL_534:

  if (v495)
  {
LABEL_541:
  }

LABEL_542:

  if ((v280 & 1) == 0)
  {
    goto LABEL_481;
  }

  v250 = v261;

  v13 = v521;
  v214 = obj;
  if (!v261)
  {
    goto LABEL_463;
  }

LABEL_602:
  v23 = v502;
  a4 = v503;
  a5 = v526;
  if (v13[276] == 1)
  {
    if ((v501 & 1) != 0 || (v353 = *(v250 + 12), v353 == 0x7FFFFFFFFFFFFFFFLL) || v353 + 1 != v519)
    {
      v346 = objc_getProperty(v250, v345, 88, 1);
      v347 = [[SATimeRange alloc] initWithStart:v523 end:v524];
      [v346 addObject:v347];
    }

    else
    {
      v346 = objc_getProperty(v250, v345, 88, 1);
      v354 = [v346 lastObject];
      v347 = v354;
      if (v354)
      {
        objc_setProperty_atomic(v354, v355, v524, 16);
      }
    }

    v23 = v502;
  }

  *(v250 + 12) = v23;
  [v250 setSampleCount:{objc_msgSend(v250, "sampleCount") + v512}];
LABEL_464:
  if ([newValue count])
  {
    if (v250)
    {
      v252 = objc_getProperty(v250, v251, 80, 1);
    }

    else
    {
      v252 = 0;
    }

    v253 = v252;

    if (v253)
    {
      if (v250)
      {
        v255 = objc_getProperty(v250, v254, 80, 1);
      }

      else
      {
        v255 = 0;
      }

      v256 = v255;
      [v256 addObjectsFromArray:newValue];
    }

    else if (v250)
    {
      objc_setProperty_atomic(v250, v254, newValue, 80);
    }
  }

  v515 = 0;
  v190 = v524;
LABEL_555:
  *(*(*(v13 + 14) + 8) + 24) = v23;
LABEL_596:
  objc_storeStrong((*(*(v13 + 24) + 8) + 40), v10);
  objc_storeStrong((*(*(v13 + 22) + 8) + 40), a4);
  objc_storeStrong((*(*(v13 + 23) + 8) + 40), a5);
  objc_storeStrong((*(*(v13 + 21) + 8) + 40), v190);
  objc_storeStrong((*(*(v13 + 20) + 8) + 40), v540);
  v344 = v23 + v505;
  if (!v505)
  {
    v344 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(*(*(v13 + 13) + 8) + 24) = v344;
  *(*(*(v13 + 15) + 8) + 24) = v505;

  v93 = v190;
LABEL_599:
  v91 = v523;
LABEL_600:
}

uint64_t __245__SASamplePrinter_addStackForDispatchQueue_orSwiftTaskStates_orThread_andThreadStateIndexes_task_toRootObjects_nameChanges_dispatchQueueChanges_swiftTaskChanges_threadChanges_priorityChanges_microstackshotSummary_onlyHeaviestStack_includeState___block_invoke_2442(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 startTimestamp];
  v5 = [a3 startTimestamp];
  v6 = [v4 compare:v5];

  return v6;
}

void __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke(uint64_t a1, uint64_t *a2, unsigned int a3, _BYTE *a4)
{
  v414 = *MEMORY[0x1E69E9840];
  v11 = objc_autoreleasePoolPush();
  if (a3 >= 0x7FFFFFFF)
  {
    v22 = *__error();
    v307 = _sa_logt();
    if (os_log_type_enabled(v307, OS_LOG_TYPE_ERROR))
    {
      *v410 = 67109120;
      *&v410[4] = a3;
      _os_log_error_impl(&dword_1E0E2F000, v307, OS_LOG_TYPE_ERROR, "unmodifed depth %u", v410, 8u);
    }

    *__error() = v22;
    _SASetCrashLogMessage(12533, "unmodifed depth %u", a3);
    _os_crash();
    __break(1u);
    goto LABEL_363;
  }

  v12 = *(a1 + 152);
  if (v12 && *(*(*(a1 + 64) + 8) + 24) >= v12)
  {
    goto LABEL_7;
  }

  v13 = *(a1 + 192);
  if (v13 == 1)
  {
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 24);
    if ((v15 & 0x80000000) == 0 && v15 >= a3)
    {
LABEL_7:
      *a4 = 1;
      goto LABEL_435;
    }

    *(v14 + 24) = a3;
  }

  v16 = *(a1 + 80);
  v17 = *(*(v16 + 8) + 24);
  if (v17 >= 1)
  {
    v18 = v17 + 1;
    v19 = 8 * v17 - 8;
    do
    {
      if (*(*(*(*(a1 + 88) + 8) + 24) + v19) >= a3)
      {
        --*(*(*(a1 + 80) + 8) + 24);
      }

      --v18;
      v19 -= 8;
    }

    while (v18 > 1);
    v16 = *(a1 + 80);
  }

  *v410 = 0;
  v411 = v410;
  v412 = 0x2020000000;
  v413 = a3;
  v20 = *(*(v16 + 8) + 24);
  v384 = a1;
  v21 = *(a1 + 88);
  v22 = a3;
  if (v20 > 0)
  {
    v22 = *(*(*(v21 + 8) + 24) + 8 * v20 - 4) + a3;
    if (v22 >= 0)
    {
      v413 = *(*(*(v21 + 8) + 24) + 8 * v20 - 4) + a3;
      goto LABEL_18;
    }

LABEL_363:
    v308 = *__error();
    v309 = _sa_logt();
    if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
    {
      v310 = *(*(*(*(v384 + 88) + 8) + 24) + 8 * *(*(*(v384 + 80) + 8) + 24) - 4);
      *v406 = 67109632;
      *&v406[4] = v22;
      LOWORD(v407) = 1024;
      *(&v407 + 2) = a3;
      HIWORD(v407) = 1024;
      LODWORD(v408) = v310;
      _os_log_error_impl(&dword_1E0E2F000, v309, OS_LOG_TYPE_ERROR, "adjustDepth %d (%u + %d)", v406, 0x14u);
    }

    *__error() = v308;
    _SASetCrashLogMessage(12563, "adjustDepth %d (%u + %d)", v22, a3, *(*(*(*(v384 + 88) + 8) + 24) + 8 * *(*(*(v384 + 80) + 8) + 24) - 4));
    _os_crash();
    __break(1u);
LABEL_366:
    v311 = *__error();
    v312 = _sa_logt();
    if (os_log_type_enabled(v312, OS_LOG_TYPE_ERROR))
    {
      v313 = *(*(*(v384 + 112) + 8) + 24);
      v314 = [a2 startSampleIndex];
      *buf = 134218240;
      v401 = v313;
      v402 = 2048;
      v403 = v314;
      _os_log_error_impl(&dword_1E0E2F000, v312, OS_LOG_TYPE_ERROR, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", buf, 0x16u);
    }

    *__error() = v311;
    _SASetCrashLogMessage(12890, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", *(*(*(v384 + 112) + 8) + 24), [a2 startSampleIndex]);
    _os_crash();
    __break(1u);
LABEL_369:
    v315 = *__error();
    v316 = _sa_logt();
    if (os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
    {
      v317 = [v4 binary];
      v318 = [v317 debugDescription];
      v319 = v318;
      v320 = [v318 UTF8String];
      *buf = 136315138;
      v401 = v320;
      _os_log_error_impl(&dword_1E0E2F000, v316, OS_LOG_TYPE_ERROR, "binaryIndex nil for %s", buf, 0xCu);
    }

    *__error() = v315;
    v321 = [v4 binary];
    v322 = [v321 debugDescription];
    v323 = v322;
    _SASetCrashLogMessage(13502, "binaryIndex nil for %s", [v322 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_372;
  }

LABEL_18:
  context = v11;
  *v406 = 0;
  v407 = v406;
  v408 = 0x2020000000;
  v23 = 2 * v22 + 2;
  if (v13)
  {
    v23 = 2;
  }

  v409 = v23;
  v395[0] = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v395[1] = 3221225472;
  v395[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2471;
  v395[3] = &unk_1E86F7DE0;
  v395[4] = v16;
  v395[5] = v21;
  v396 = a3;
  v395[6] = v410;
  v395[7] = v406;
  v397 = v13;
  v382 = MEMORY[0x1E12EBE50](v395);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v384;
    if (*(v384 + 160) && [a2 sampleCount] <= *(v384 + 160))
    {
      Property = a2;
      if (a2)
      {
        Property = objc_getProperty(a2, v25, 40, 1);
      }

      v74 = Property;
      [v74 removeAllObjects];

      goto LABEL_434;
    }

    if ([*(*(v384 + 32) + 16) systemstatsFormat] && (objc_msgSend(a2, "isTruncatedLeafCallstack") & 1) != 0)
    {
      goto LABEL_434;
    }

    if (a3)
    {
      if (*(*(*(v384 + 96) + 8) + 24))
      {
        v6 = 0;
      }

      else
      {
        v92 = [a2 frame];
        v93 = v92;
        if (v92)
        {
          v94 = *(v92 + 32);
        }

        else
        {
          v94 = 0;
        }

        v95 = v94;
        if ([v95 isTruncatedBacktraceFrame])
        {
          v96 = [a2 frame];
          v97 = v96;
          if (v96)
          {
            v98 = *(v96 + 32);
          }

          else
          {
            v98 = 0;
          }

          v99 = v98;
          v100 = [v99 isExclave];

          v6 = (v100 ^ 1u);
        }

        else
        {
          v6 = 0;
        }

        v24 = v384;
      }

LABEL_125:
      if (*(v24 + 193) == 1)
      {
        v122 = *(*(v24 + 104) + 8);
        if (*(v122 + 24))
        {
          *(v122 + 24) = 0;
        }

        else
        {
          [*(v24 + 40) appendString:{@", "}];
        }

        [*(v384 + 40) appendString:@"{"];
        [a2 writeJSONDictionaryEntriesToStream:*(v384 + 40)];
        v131 = *(v384 + 40);
        v132 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v411 + 6)];
        SAJSONWriteDictionaryEntry(v131, @"depth", v132);

        if ((*(v384 + 194) & 1) == 0)
        {
          v133 = MEMORY[0x1E696AD98];
          v135 = *(v384 + 32);
          v134 = *(v384 + 40);
          v136 = [a2 startSampleIndex];
          v137 = [a2 sampleCount];
          if (v135)
          {
            if (*(v135 + 48) == 1)
            {
              v138 = v137;
              v139 = [*(v135 + 16) forceOneBasedTimeIndexes];
              v140 = v138 + v136;
              if (v139)
              {
                v140 -= *(v135 + 56);
              }
            }

            else
            {
              v140 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v140 = 0;
          }

          v144 = [v133 numberWithUnsignedInteger:v140];
          SAJSONWriteDictionaryEntry(v134, @"endIndex", v144);
        }

        if (v6)
        {
          SAJSONWriteDictionaryEntry(*(v384 + 40), @"patched", MEMORY[0x1E695E118]);
        }

        [*(v384 + 40) appendString:@"}"];
        goto LABEL_146;
      }

      v123 = v24;
      v124 = *(*(*(v24 + 112) + 8) + 24);
      if (v124 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v24 + 194) == 1)
        {
          v125 = *(v24 + 40);
          v126 = *(*(*(v123 + 120) + 8) + 24);
          v127 = *(v123 + 184);
          v128 = *(*(*(v123 + 128) + 8) + 24);
          v129 = *(*(*(v123 + 136) + 8) + 24);
          v130 = *(*(*(v123 + 144) + 8) + 40);
          _saos_printf_indent_and_kernel_dot(v125, v126, v129, 0);
          [v125 printWithFormat:@"%-*lu  ", v127, v124 - v128 + 1];
          [v125 appendString:v130];
          [v125 appendString:@"\n"];
        }

        else
        {
          v141 = *(v24 + 32);
          if (v141)
          {
            if (*(v141 + 48) == 1)
            {
              v142 = [*(v141 + 16) forceOneBasedTimeIndexes];
              v143 = v124 + 1;
              if (v142)
              {
                v143 -= *(v141 + 56);
              }
            }

            else
            {
              v143 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v143 = 0;
          }

          saos_printf_timeline_frame(*(v384 + 40), *(*(*(v384 + 120) + 8) + 24), *(v384 + 184), *(*(*(v384 + 112) + 8) + 24) - *(*(*(v384 + 128) + 8) + 24) + 1, *(*(*(v384 + 136) + 8) + 24), *(*(*(v384 + 144) + 8) + 40), v143);
        }

        ++*(*(*(v384 + 64) + 8) + 24);
        *(*(*(v384 + 136) + 8) + 24) = 0;
        *(*(*(v384 + 120) + 8) + 24) = 0;
        v168 = *(*(v384 + 144) + 8);
        v169 = *(v168 + 40);
        *(v168 + 40) = 0;

        v123 = v384;
        *(*(*(v384 + 128) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(*(*(v384 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (![*(*(v123 + 32) + 16) systemstatsFormat])
      {
        v179 = [a2 frame];
        v180 = [v179 isKernel];

        if (v180)
        {
          v181 = v384;
          v172 = *(v384 + 48);
          v182 = *(v384 + 56);
          v183 = v182;
        }

        else
        {
          v183 = 0;
          v181 = v384;
          v182 = *(v384 + 56);
          v172 = v182;
        }

        v184 = v182;
        v185 = [a2 isTruncatedLeafCallstack];
        v186 = *(v181 + 32);
        if (v185)
        {
          v188 = [a2 frame];
          v189 = a2;
          if (a2)
          {
            v189 = objc_getProperty(a2, v187, 48, 1);
          }

          v190 = v189;
          v191 = [(SASamplePrinter *)v186 copyDescriptionForTruncatedLeafFrame:v188 otherCallTreeDescription:v190 binariesToDisplay:v172 extraBinariesToDisplay:v183];
          v404 = v191;
          v192 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v404 count:1];
        }

        else
        {
          v188 = [a2 frame];
          v192 = [(SASamplePrinter *)v186 copyDescriptionsForFrame:v188 binariesToDisplay:v172 extraBinariesToDisplay:v183];
        }

        goto LABEL_394;
      }

      v170 = *(v123 + 32);
      v171 = [a2 frame];
      v172 = v171;
      if (!v170)
      {
        v183 = 0;
LABEL_393:
        v405 = v183;
        v192 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v405 count:1];
LABEL_394:

        if (v6)
        {
          v332 = [v192 mutableCopy];
          [v332 insertObject:@"<patched truncated backtrace>" atIndex:0];
        }

        else
        {
          v332 = v192;
        }

        if ([v332 count] >= 2)
        {
          for (i = 0; i < [v332 count] - 1; ++i)
          {
            v334 = [v332 objectAtIndexedSubscript:i];
            v335 = *(v384 + 32);
            if (*(v384 + 194) == 1)
            {
              v336 = [*(v335 + 16) systemstatsFormat];
              v337 = *(v384 + 40);
              v338 = *(v407 + 6);
              if (v336)
              {
                v339 = [a2 sampleCount];
                v340 = [a2 frame];
                _saos_printf_indent_and_kernel_dot(v337, v338, [v340 isKernel], 1);
                [v337 printWithFormat:@"%lu ", v339];
              }

              else
              {
                v344 = *(v384 + 184);
                v345 = [a2 sampleCount];
                v340 = [a2 frame];
                _saos_printf_indent_and_kernel_dot(v337, v338, [v340 isKernel], 0);
                [v337 printWithFormat:@"%-*lu  ", v344, v345];
              }

              [v337 appendString:v334];
              [v337 appendString:@"\n"];
            }

            else
            {
              v341 = [a2 startSampleIndex];
              v342 = [a2 sampleCount];
              if (v335)
              {
                if (*(v335 + 48) == 1)
                {
                  v343 = v342 + v341;
                  if ([*(v335 + 16) forceOneBasedTimeIndexes])
                  {
                    v343 -= *(v335 + 56);
                  }
                }

                else
                {
                  v343 = 0x7FFFFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v343 = 0;
              }

              v346 = [*(*(v384 + 32) + 16) systemstatsFormat];
              v347 = *(v384 + 40);
              v348 = *(v407 + 6);
              if (v346)
              {
                v349 = [a2 sampleCount];
                v340 = [a2 frame];
                saos_printf_timeline_frame_noindent(v347, v348, v349, [v340 isKernel], v334, v343);
              }

              else
              {
                v350 = *(v384 + 184);
                v351 = [a2 sampleCount];
                v340 = [a2 frame];
                saos_printf_timeline_frame(v347, v348, v350, v351, [v340 isKernel], v334, v343);
              }
            }

            ++*(*(*(v384 + 64) + 8) + 24);
            v382[2](v382, 1);
          }
        }

        v352 = [v332 lastObject];
        if (a2 && (a2[3] & 1) != 0 && (*(v384 + 192) & 1) == 0 && *(v384 + 195) != 1)
        {
          v372 = [a2 frame];
          *(*(*(v384 + 136) + 8) + 24) = [v372 isKernel];

          *(*(*(v384 + 120) + 8) + 24) = *(v407 + 6);
          objc_storeStrong((*(*(v384 + 144) + 8) + 40), v352);
          *(*(*(v384 + 128) + 8) + 24) = [a2 startSampleIndex];
          v370 = *(*(v384 + 112) + 8);
          v371 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v353 = *(v384 + 32);
          if (*(v384 + 194) == 1)
          {
            v354 = [*(v353 + 16) systemstatsFormat];
            v355 = *(v384 + 40);
            v356 = *(v407 + 6);
            if (v354)
            {
              v357 = [a2 sampleCount];
              v358 = [a2 frame];
              _saos_printf_indent_and_kernel_dot(v355, v356, [v358 isKernel], 1);
              [v355 printWithFormat:@"%lu ", v357];
            }

            else
            {
              v362 = *(v384 + 184);
              v363 = [a2 sampleCount];
              v358 = [a2 frame];
              _saos_printf_indent_and_kernel_dot(v355, v356, [v358 isKernel], 0);
              [v355 printWithFormat:@"%-*lu  ", v362, v363];
            }

            [v355 appendString:v352];
            [v355 appendString:@"\n"];
          }

          else
          {
            v359 = [a2 startSampleIndex];
            v360 = [a2 sampleCount];
            if (v353)
            {
              if (*(v353 + 48) == 1)
              {
                v361 = v360 + v359;
                if ([*(v353 + 16) forceOneBasedTimeIndexes])
                {
                  v361 -= *(v353 + 56);
                }
              }

              else
              {
                v361 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v361 = 0;
            }

            v364 = [*(*(v384 + 32) + 16) systemstatsFormat];
            v365 = *(v384 + 40);
            v366 = *(v407 + 6);
            if (v364)
            {
              v367 = [a2 sampleCount];
              v358 = [a2 frame];
              saos_printf_timeline_frame_noindent(v365, v366, v367, [v358 isKernel], v352, v361);
            }

            else
            {
              v368 = *(v384 + 184);
              v369 = [a2 sampleCount];
              v358 = [a2 frame];
              saos_printf_timeline_frame(v365, v366, v368, v369, [v358 isKernel], v352, v361);
            }
          }

          v370 = *(*(v384 + 64) + 8);
          v371 = *(v370 + 24) + 1;
        }

        *(v370 + 24) = v371;

        goto LABEL_434;
      }

      if (v171)
      {
        WeakRetained = objc_loadWeakRetained((v171 + 24));
        v4 = WeakRetained;
        if (WeakRetained)
        {
          v174 = [WeakRetained binary];
          p_cache = [v4 segment];
          v175 = [p_cache name];
          v176 = [*(v170 + 88) objectForKeyedSubscript:v174];
          v177 = v176;
          if (v175)
          {
            v178 = [v176 objectForKeyedSubscript:v175];
          }

          else
          {
            v194 = [MEMORY[0x1E695DFB0] null];
            v178 = [v177 objectForKeyedSubscript:v194];
          }

          if (v178)
          {
            v183 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu + %llu", objc_msgSend(v178, "unsignedLongValue"), objc_msgSend(v172, "address") - objc_msgSend(v4, "loadAddress")];

LABEL_392:
            goto LABEL_393;
          }

          goto LABEL_369;
        }
      }

      else
      {
        v4 = 0;
      }

      v183 = @"???";
      goto LABEL_392;
    }

    v89 = [a2 frame];
    v90 = [v89 isTruncatedBacktraceFrame];

    v24 = v384;
    v91 = *(*(v384 + 96) + 8);
    v6 = 0;
    if (v90)
    {
      *(v91 + 24) = 1;
      goto LABEL_125;
    }

LABEL_121:
    *(v91 + 24) = 0;
    goto LABEL_125;
  }

  p_cache = SAMicrostackshotStatistics.cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v384;
    if (*(v411 + 6) || !*(v384 + 160) || [a2 sampleCount] > *(v384 + 160))
    {
      if (*(v384 + 196) != 1)
      {
        v381 = 0;
        goto LABEL_82;
      }

      v28 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
      v6 = &OBJC_IVAR___SABinary__hadSymbolOwnerWhenLastSymbolicated;
      v29 = a2;
      if (!a2)
      {
        goto LABEL_381;
      }

      v30 = *(a2 + 9);
      if (*(a2 + 36) != -1)
      {
        v32 = (v384 + 32);
        v31 = *(v384 + 32);
        v29 = objc_getProperty(a2, v26, 88, 1);
        goto LABEL_34;
      }

      v381 = 0;
      goto LABEL_40;
    }

    goto LABEL_434;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = v384;
      if (*(v384 + 193) == 1)
      {
        v76 = *(*(v384 + 104) + 8);
        if (*(v76 + 24))
        {
          *(v76 + 24) = 0;
        }

        else
        {
          [*(v384 + 40) appendString:{@", "}];
        }

        v193 = [a2 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F5BBF440];
        SAJSONWriteItem(*(v384 + 40), v193);
        ++*(*(*(v384 + 64) + 8) + 24);

        goto LABEL_434;
      }

      v153 = *(*(*(v384 + 112) + 8) + 24);
      if (v153 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v384 + 194) == 1)
        {
          v154 = *(v384 + 40);
          v155 = *(v384 + 184);
          v156 = *(*(*(v384 + 128) + 8) + 24);
          v157 = *(*(*(v384 + 144) + 8) + 40);
          _saos_printf_indent_and_kernel_dot(v154, *(*(*(v384 + 120) + 8) + 24), *(*(*(v384 + 136) + 8) + 24), 0);
          [v154 printWithFormat:@"%-*lu  ", v155, v153 - v156 + 1];
          [v154 appendString:v157];
          [v154 appendString:@"\n"];
        }

        else
        {
          v214 = *(v384 + 32);
          if (v214)
          {
            if (*(v214 + 48) == 1)
            {
              v215 = [*(v214 + 16) forceOneBasedTimeIndexes];
              v216 = v153 + 1;
              if (v215)
              {
                v216 -= *(v214 + 56);
              }
            }

            else
            {
              v216 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v216 = 0;
          }

          saos_printf_timeline_frame(*(v384 + 40), *(*(*(v384 + 120) + 8) + 24), *(v384 + 184), *(*(*(v384 + 112) + 8) + 24) - *(*(*(v384 + 128) + 8) + 24) + 1, *(*(*(v384 + 136) + 8) + 24), *(*(*(v384 + 144) + 8) + 40), v216);
        }

        v75 = v384;
        ++*(*(*(v384 + 64) + 8) + 24);
        *(*(*(v384 + 128) + 8) + 24) = *(*(*(v384 + 112) + 8) + 24) + 1;
        *(*(*(v384 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

      [*(v75 + 40) printWithFormat:@"%-*s<%@>\n", 2, "", a2];
LABEL_146:
      ++*(*(*(v384 + 64) + 8) + 24);
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_434;
    }

    v113 = *__error();
    v114 = _sa_logt();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = objc_opt_class();
      v116 = NSStringFromClass(v115);
      v117 = v116;
      v118 = [v116 UTF8String];
      *buf = 136315138;
      v401 = v118;
      _os_log_error_impl(&dword_1E0E2F000, v114, OS_LOG_TYPE_ERROR, "treeNode is a %s", buf, 0xCu);
    }

    *__error() = v113;
    v119 = objc_opt_class();
    v24 = NSStringFromClass(v119);
    v120 = v24;
    _SASetCrashLogMessage(13086, "treeNode is a %s", [v24 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_121;
  }

  v48 = a2;
  a2 = v48;
  if (*(v384 + 193) == 1)
  {
    if (v48)
    {
      v48 = objc_getProperty(v48, v49, 40, 1);
    }

    v50 = v48;
    if ([v50 count])
    {

LABEL_47:
      v391 = 0u;
      v392 = 0u;
      v389 = 0u;
      v390 = 0u;
      v53 = a2;
      if (a2)
      {
        v53 = objc_getProperty(a2, v52, 40, 1);
      }

      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v389 objects:v399 count:16];
      if (v55)
      {
        v56 = *v390;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v390 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(*(&v389 + 1) + 8 * j);
            v59 = *(*(v384 + 104) + 8);
            if (*(v59 + 24))
            {
              *(v59 + 24) = 0;
            }

            else
            {
              [*(v384 + 40) appendString:{@", "}];
            }

            [*(v384 + 40) appendString:@"{"];
            [v58 writeJSONDictionaryEntriesToStream:*(v384 + 40)];
            v60 = *(v384 + 40);
            v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v411 + 6)];
            SAJSONWriteDictionaryEntry(v60, @"depth", v61);

            [*(v384 + 40) appendString:@"}"];
          }

          v55 = [v54 countByEnumeratingWithState:&v389 objects:v399 count:16];
        }

        while (v55);
      }

      v63 = v384;
      if (*(v384 + 197) == 1)
      {
        v387 = 0u;
        v388 = 0u;
        v385 = 0u;
        v386 = 0u;
        v64 = a2;
        if (a2)
        {
          v64 = objc_getProperty(a2, v62, 32, 1);
        }

        v65 = v64;
        v66 = [v65 countByEnumeratingWithState:&v385 objects:v398 count:16];
        if (v66)
        {
          v67 = *v386;
          do
          {
            for (k = 0; k != v66; ++k)
            {
              if (*v386 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v69 = *(*(&v385 + 1) + 8 * k);
              v70 = *(*(v384 + 104) + 8);
              if (*(v70 + 24))
              {
                *(v70 + 24) = 0;
              }

              else
              {
                [*(v384 + 40) appendString:{@", "}];
              }

              [*(v384 + 40) appendString:@"{"];
              [v69 writeJSONDictionaryEntriesToStream:*(v384 + 40)];
              v71 = *(v384 + 40);
              v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v411 + 6)];
              SAJSONWriteDictionaryEntry(v71, @"depth", v72);

              [*(v384 + 40) appendString:@"}"];
            }

            v66 = [v65 countByEnumeratingWithState:&v385 objects:v398 count:16];
          }

          while (v66);
        }

        v63 = v384;
      }

      ++*(*(*(v63 + 64) + 8) + 24);
      goto LABEL_359;
    }

    if (*(v384 + 197) == 1)
    {
      v165 = a2;
      if (a2)
      {
        v165 = objc_getProperty(a2, v51, 32, 1);
      }

      v166 = v165;
      v167 = v166 == 0;

      if (!v167)
      {
        goto LABEL_47;
      }
    }

    else
    {
    }

    goto LABEL_209;
  }

  if (![*(*(v384 + 32) + 16) systemstatsFormat])
  {
    v145 = a2;
    if (a2)
    {
      v145 = objc_getProperty(a2, v101, 40, 1);
    }

    v146 = v145;
    v147 = [v146 count] == 0;

    if (v147)
    {
      v152 = 0;
    }

    else
    {
      v149 = a2;
      v150 = *(v384 + 32);
      if (a2)
      {
        v149 = objc_getProperty(a2, v148, 40, 1);
      }

      v151 = v149;
      v152 = [(SASamplePrinter *)v150 copyDescriptionForIOEvents:v151];
    }

    if (*(v384 + 197) == 1)
    {
      v195 = *(v384 + 32);
      v196 = a2;
      if (a2)
      {
        v196 = objc_getProperty(a2, v148, 32, 1);
      }

      v197 = v196;
      v198 = [(SASamplePrinter *)v195 copyDescriptionForTimeRanges:v197];
    }

    else
    {
      v198 = 0;
    }

    if ([v198 length])
    {
      v199 = [v152 length];
      v200 = v198;
      v201 = v384;
      if (v199)
      {
        v202 = [v152 stringByAppendingFormat:@", %@", v198];
        v201 = v384;
        goto LABEL_221;
      }
    }

    else
    {
      v203 = [v152 length];
      v200 = v152;
      v201 = v384;
      if (!v203)
      {
        goto LABEL_225;
      }
    }

    v202 = v200;
LABEL_221:
    if (v202)
    {
      v204 = v201;
      v205 = *(*(*(v201 + 112) + 8) + 24);
      if (v205 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v201 + 194) == 1)
        {
          v206 = *(v201 + 40);
          v207 = *(v204 + 184);
          v208 = *(*(*(v204 + 128) + 8) + 24);
          v209 = *(*(*(v204 + 144) + 8) + 40);
          _saos_printf_indent_and_kernel_dot(*(v204 + 40), *(*(*(v204 + 120) + 8) + 24), *(*(*(v204 + 136) + 8) + 24), 0);
          [v206 printWithFormat:@"%-*lu  ", v207, v205 - v208 + 1];
          [v206 appendString:v209];
          [v206 appendString:@"\n"];
        }

        else
        {
          v257 = *(v201 + 32);
          if (v257)
          {
            if (*(v257 + 48) == 1)
            {
              v258 = [*(v257 + 16) forceOneBasedTimeIndexes];
              v259 = v205 + 1;
              if (v258)
              {
                v259 -= *(v257 + 56);
              }
            }

            else
            {
              v259 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v259 = 0;
          }

          saos_printf_timeline_frame(*(v384 + 40), *(*(*(v384 + 120) + 8) + 24), *(v384 + 184), *(*(*(v384 + 112) + 8) + 24) - *(*(*(v384 + 128) + 8) + 24) + 1, *(*(*(v384 + 136) + 8) + 24), *(*(*(v384 + 144) + 8) + 40), v259);
        }

        v204 = v384;
        ++*(*(*(v384 + 64) + 8) + 24);
        *(*(*(v384 + 128) + 8) + 24) = *(*(*(v384 + 112) + 8) + 24) + 1;
        *(*(*(v384 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

      saos_printf_call_tree_node_without_count(*(v204 + 40), *(v407 + 6), *(v204 + 184), v202);
      ++*(*(*(v384 + 64) + 8) + 24);

      goto LABEL_358;
    }

LABEL_225:
    v382[2](v382, 0xFFFFFFFFLL);
LABEL_358:

    goto LABEL_359;
  }

  if (![*(*(v384 + 32) + 16) displayIOInCallTrees])
  {
    if (*(v384 + 197) == 1)
    {
      v103 = a2;
      if (a2)
      {
        v103 = objc_getProperty(a2, v102, 32, 1);
      }

      v104 = v103;
      v105 = [v104 count] == 0;

      if (!v105)
      {
        if ([*(*(v384 + 32) + 16) callTreeTimestampsTimeDomain] != 1)
        {
          goto LABEL_378;
        }

        v107 = MEMORY[0x1E696AEC0];
        v108 = *(v384 + 32);
        v109 = a2;
        if (a2)
        {
          v109 = objc_getProperty(a2, v106, 32, 1);
        }

        v110 = v109;
        v111 = [(SASamplePrinter *)v108 copyDescriptionForTimeRanges:v110];
        v112 = [v107 stringWithFormat:@"walltime %@", v111];

        saos_printf_call_tree_node_noindent(*(v384 + 40), *(v407 + 6), [a2 sampleCount], v112);
        goto LABEL_359;
      }
    }

LABEL_209:
    v382[2](v382, 0xFFFFFFFFLL);
LABEL_359:

    goto LABEL_434;
  }

LABEL_372:
  v324 = *__error();
  v325 = _sa_logt();
  if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v325, OS_LOG_TYPE_ERROR, "Displaying IO in call trees unsupported in systemstats format", buf, 2u);
  }

  *__error() = v324;
  _SASetCrashLogMessage(12985, "Displaying IO in call trees unsupported in systemstats format");
  _os_crash();
  __break(1u);
  while (1)
  {
    v326 = *__error();
    v327 = _sa_logt();
    if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
    {
      v328 = *(*(*(v384 + 112) + 8) + 24);
      v329 = [a2 startSampleIndex];
      *buf = 134218240;
      v401 = v328;
      v402 = 2048;
      v403 = v329;
      _os_log_error_impl(&dword_1E0E2F000, v327, OS_LOG_TYPE_ERROR, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", buf, 0x16u);
    }

    *__error() = v326;
    _SASetCrashLogMessage(12800, "leafFrameSkippedCountedStateToIndex %lu + 1 != treeCountedState.startSampleIndex %lu", *(*(*(v384 + 112) + 8) + 24), [a2 startSampleIndex]);
    _os_crash();
    __break(1u);
LABEL_378:
    v28 = *__error();
    v330 = _sa_logt();
    if (os_log_type_enabled(v330, OS_LOG_TYPE_ERROR))
    {
      v331 = [*(*(v384 + 32) + 16) callTreeTimestampsTimeDomain];
      *buf = 134217984;
      v401 = v331;
      _os_log_error_impl(&dword_1E0E2F000, v330, OS_LOG_TYPE_ERROR, "Time domain other than walltime not handled for systemstats format: 0x%llx", buf, 0xCu);
    }

    *__error() = v28;
    _SASetCrashLogMessage(12988, "Time domain other than walltime not handled for systemstats format: 0x%llx", [*(*(v384 + 32) + 16) callTreeTimestampsTimeDomain]);
    v29 = _os_crash();
    __break(1u);
LABEL_381:
    v30 = 0;
    v32 = (v384 + 32);
    v31 = *(v384 + 32);
LABEL_34:
    v33 = v29;
    v34 = [v33 firstObject];
    v35 = [v34 startTime];
    v36 = [SASamplePrinter displayNameForPid:v31 aroundTimestamp:v30 includePid:v35];

    v38 = *v32;
    if (a2)
    {
      v39 = *(a2 + 10);
      v40 = objc_getProperty(a2, v37, *(v28 + 736), 1);
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v41 = v40;
    v42 = [v41 firstObject];
    v43 = [v42 startTime];
    v44 = [SASamplePrinter displayNameForPid:v38 aroundTimestamp:v39 includePid:v43];

    v45 = *v32;
    if (a2)
    {
      v46 = *(a2 + 10);
      v47 = *(a2 + v6[195]);
      if (!v45)
      {
        goto LABEL_387;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0;
      if (!v45)
      {
LABEL_387:
        v381 = 0;
        goto LABEL_39;
      }
    }

    v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ [%d] (originated by %@ [%d])", v44, v46, v36, v47];
LABEL_39:

LABEL_40:
    v27 = v384;
LABEL_82:
    if (*(v27 + 193) == 1)
    {
      break;
    }

    if (*(v411 + 6))
    {
      goto LABEL_260;
    }

    v82 = *(*(*(v27 + 112) + 8) + 24);
    if (v82 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_237;
    }

    if (v82 + 1 == [a2 startSampleIndex])
    {
      v83 = v384;
      if (*(v384 + 194) == 1)
      {
        v84 = *(v384 + 40);
        v85 = *(v384 + 184);
        v86 = *(*(*(v384 + 112) + 8) + 24);
        v87 = *(*(*(v384 + 128) + 8) + 24);
        v88 = *(*(*(v384 + 144) + 8) + 40);
        _saos_printf_indent_and_kernel_dot(v84, *(*(*(v384 + 120) + 8) + 24), *(*(*(v384 + 136) + 8) + 24), 0);
        [v84 printWithFormat:@"%-*lu  ", v85, v86 - v87 + 1];
        [v84 appendString:v88];
        [v84 appendString:@"\n"];
      }

      else
      {
        v210 = *(v384 + 32);
        if (v210)
        {
          if (*(v210 + 48) == 1)
          {
            v211 = *(*(*(v384 + 112) + 8) + 24);
            v212 = [*(v210 + 16) forceOneBasedTimeIndexes];
            v213 = v211 + 1;
            v83 = v384;
            if (v212)
            {
              v213 -= *(v210 + 56);
            }
          }

          else
          {
            v213 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v213 = 0;
        }

        saos_printf_timeline_frame(*(v83 + 40), *(*(*(v83 + 120) + 8) + 24), *(v83 + 184), *(*(*(v83 + 112) + 8) + 24) - *(*(*(v83 + 128) + 8) + 24) + 1, *(*(*(v83 + 136) + 8) + 24), *(*(*(v83 + 144) + 8) + 40), v213);
      }

      ++*(*(*(v384 + 64) + 8) + 24);
      *(*(*(v384 + 136) + 8) + 24) = 0;
      *(*(*(v384 + 120) + 8) + 24) = 0;
      v217 = *(*(v384 + 144) + 8);
      v218 = *(v217 + 40);
      *(v217 + 40) = 0;

      v27 = v384;
      *(*(*(v384 + 128) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(v384 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_237:
      if (*(v27 + 32))
      {
        v219 = &unk_1F5BDCE38;
      }

      else
      {
        v219 = 0;
      }

      v220 = [v219 firstObject];

      if (*(v384 + 195) == 1)
      {
        v221 = *(v384 + 32);
        if (*(v384 + 194) == 1)
        {
          v222 = [*(v221 + 16) systemstatsFormat];
          v223 = *(v384 + 40);
          v224 = *(v407 + 6);
          if (v222)
          {
            v225 = [a2 sampleCount];
            _saos_printf_indent_and_kernel_dot(v223, v224, 0, 1);
            [v223 printWithFormat:@"%lu ", v225];
          }

          else
          {
            v233 = *(v384 + 184);
            v234 = [a2 sampleCount];
            _saos_printf_indent_and_kernel_dot(v223, v224, 0, 0);
            [v223 printWithFormat:@"%-*lu  ", v233, v234];
          }

          [v223 appendString:v220];
          [v223 appendString:@"\n"];
        }

        else
        {
          v230 = [a2 startSampleIndex];
          v231 = [a2 sampleCount];
          if (v221)
          {
            if (*(v221 + 48) == 1)
            {
              v232 = v231 + v230;
              if ([*(v221 + 16) forceOneBasedTimeIndexes])
              {
                v232 -= *(v221 + 56);
              }
            }

            else
            {
              v232 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v232 = 0;
          }

          v235 = [*(*(v384 + 32) + 16) systemstatsFormat];
          v236 = *(v384 + 40);
          v237 = *(v407 + 6);
          if (v235)
          {
            saos_printf_timeline_frame_noindent(v236, v237, [a2 sampleCount], 0, v220, v232);
          }

          else
          {
            saos_printf_timeline_frame(v236, v237, *(v384 + 184), [a2 sampleCount], 0, v220, v232);
          }
        }

        ++*(*(*(v384 + 64) + 8) + 24);
        v382[2](v382, 1);
      }

      else
      {
        *(*(*(v384 + 136) + 8) + 24) = 0;
        if (*(v384 + 32))
        {
          v226 = &unk_1F5BDCE38;
        }

        else
        {
          v226 = 0;
        }

        v227 = [v226 firstObject];
        v228 = *(*(v384 + 144) + 8);
        v229 = *(v228 + 40);
        *(v228 + 40) = v227;

        *(*(*(v384 + 120) + 8) + 24) = *(v407 + 6);
        *(*(*(v384 + 128) + 8) + 24) = [a2 startSampleIndex];
        *(*(*(v384 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_260:
      if (a2)
      {
        v379 = objc_getProperty(a2, v26, 64, 1);
        v239 = objc_getProperty(a2, v238, 56, 1);
        v240 = v239;
        if (v379)
        {
          v241 = *(a2 + 7);
          v242 = a2[6];
          v243 = *(a2 + 24);
          v244 = *(v384 + 176);
          v394[0] = MEMORY[0x1E69E9820];
          v394[1] = v7;
          v394[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2487;
          v394[3] = &unk_1E86F7E08;
          v394[4] = *(v384 + 32);
          v394[5] = a2;
          v245 = [v379 descriptionForPid:v241 tid:v242 threadPriority:v243 options:v244 nameCallback:v394];
          v246 = v245;
          if (v240)
          {
            if (v245)
            {
              if (([*(*(v384 + 32) + 16) displayMultipleMatchingBlockedReasons] & 1) != 0 || (objc_msgSend(v240, "hasMatchingBlocker:", v379) & 1) == 0)
              {
                v247 = 0;
                goto LABEL_270;
              }

              goto LABEL_276;
            }

LABEL_269:
            v247 = 1;
LABEL_270:
            v248 = *(a2 + 7);
            v249 = a2[6];
            v250 = *(v384 + 176);
            v393[0] = MEMORY[0x1E69E9820];
            v393[1] = v7;
            v393[2] = __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2;
            v393[3] = &unk_1E86F7E08;
            v393[4] = *(v384 + 32);
            v393[5] = a2;
            v251 = [v240 descriptionForPid:v248 tid:v249 options:v250 nameCallback:v393];
            v252 = v251;
            if (v251)
            {
              if (v247)
              {
                v246 = v251;
              }

              else
              {
                v253 = [v246 stringByAppendingFormat:@", %@", v251];

                v246 = v253;
              }
            }

LABEL_276:
            v4 = v240;
          }

          else
          {
            v4 = 0;
          }

          v254 = v384;
          if (*(a2 + 25))
          {
            v255 = @" - part of a deadlock";
            if (v246)
            {
              goto LABEL_279;
            }

LABEL_282:
            v377 = v255;
LABEL_303:
            v261 = *(*(*(v254 + 112) + 8) + 24);
            if (v261 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v261 + 1 != [a2 startSampleIndex])
              {
                goto LABEL_366;
              }

              v262 = v384;
              if (*(v384 + 194) == 1)
              {
                v263 = *(v384 + 40);
                v264 = *(v384 + 184);
                v265 = *(*(*(v384 + 112) + 8) + 24);
                v266 = *(*(*(v384 + 128) + 8) + 24);
                v267 = *(*(*(v384 + 144) + 8) + 40);
                _saos_printf_indent_and_kernel_dot(v263, *(*(*(v384 + 120) + 8) + 24), *(*(*(v384 + 136) + 8) + 24), 0);
                [v263 printWithFormat:@"%-*lu  ", v264, v265 - v266 + 1];
                [v263 appendString:v267];
                [v263 appendString:@"\n"];
              }

              else
              {
                v268 = *(v384 + 32);
                if (v268)
                {
                  if (*(v268 + 48) == 1)
                  {
                    v269 = *(*(*(v384 + 112) + 8) + 24);
                    v270 = [*(v268 + 16) forceOneBasedTimeIndexes];
                    v271 = v269 + 1;
                    v262 = v384;
                    if (v270)
                    {
                      v271 -= *(v268 + 56);
                    }
                  }

                  else
                  {
                    v271 = 0x7FFFFFFFFFFFFFFFLL;
                  }
                }

                else
                {
                  v271 = 0;
                }

                saos_printf_timeline_frame(*(v262 + 40), *(*(*(v262 + 120) + 8) + 24), *(v262 + 184), *(*(*(v262 + 112) + 8) + 24) - *(*(*(v262 + 128) + 8) + 24) + 1, *(*(*(v262 + 136) + 8) + 24), *(*(*(v262 + 144) + 8) + 40), v271);
              }

              v254 = v384;
              ++*(*(*(v384 + 64) + 8) + 24);
            }

            v378 = v4;
            if (*(v254 + 194) == 1)
            {
              v279 = *(v254 + 40);
              if (*(v254 + 195))
              {
                v280 = *(v407 + 6);
                v375 = *(v254 + 184);
                v281 = [a2 sampleCount];
                if (a2)
                {
                  v282 = a2[9];
                  v283 = *(a2 + 8);
                }

                else
                {
                  v282 = 0;
                  v283 = 0;
                }

                _saos_printf_microstackshot_state_as_frame_base(v279, v280, v375, v281, *(*(*(v384 + 136) + 8) + 24), v282, *(v384 + 168), v283, *(v384 + 188), [*(*(v384 + 32) + 16) systemstatsFormat], objc_msgSend(*(*(v384 + 32) + 16), "includeUserIdleAndBatteryStateInStacks"), objc_msgSend(*(*(v384 + 32) + 16), "systemstatsFormat"), v381);
                [v279 appendString:@"\n"];
              }

              else
              {
                v288 = *(*(*(v254 + 120) + 8) + 24);
                v289 = *(v254 + 184);
                v290 = [a2 sampleCount];
                if (a2)
                {
                  v291 = a2[9];
                }

                else
                {
                  v291 = 0;
                }

                saos_printf_frame_with_state(v279, v288, v289, v290, *(*(*(v384 + 136) + 8) + 24), *(*(*(v384 + 144) + 8) + 40), v291, v377);
                v382[2](v382, 0xFFFFFFFFLL);
              }
            }

            else
            {
              v284 = *(v254 + 32);
              v285 = [a2 startSampleIndex];
              v286 = [a2 sampleCount];
              if (v284)
              {
                if (*(v284 + 48) == 1)
                {
                  v287 = v286 + v285;
                  if ([*(v284 + 16) forceOneBasedTimeIndexes])
                  {
                    v287 -= *(v284 + 56);
                  }
                }

                else
                {
                  v287 = 0x7FFFFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v287 = 0;
              }

              v292 = *(v384 + 40);
              if (*(v384 + 195))
              {
                v374 = *(v384 + 184);
                v376 = *(v407 + 6);
                v293 = [a2 sampleCount];
                if (a2)
                {
                  v294 = a2[9];
                  v295 = *(a2 + 8);
                }

                else
                {
                  v294 = 0;
                  v295 = 0;
                }

                v296 = *(*(*(v384 + 136) + 8) + 24);
                v297 = *(v384 + 168);
                v298 = *(v384 + 188);
                v299 = [*(*(v384 + 32) + 16) systemstatsFormat];
                HIBYTE(v373) = [*(*(v384 + 32) + 16) includeUserIdleAndBatteryStateInStacks];
                LOBYTE(v373) = v299;
                saos_printf_microstackshot_state_as_timeline_frame(v292, v376, v374, v293, v296, v294, v297, v295, v298, v373, v287, [*(*(v384 + 32) + 16) systemstatsFormat], v381);
              }

              else
              {
                v300 = *(*(*(v384 + 120) + 8) + 24);
                v301 = *(v384 + 184);
                v302 = [a2 sampleCount];
                if (a2)
                {
                  v303 = a2[9];
                }

                else
                {
                  v303 = 0;
                }

                saos_printf_timeline_frame_with_state(v292, v300, v301, v302, *(*(*(v384 + 136) + 8) + 24), *(*(*(v384 + 144) + 8) + 40), v303, v377, v287);
                v382[2](v382, 0xFFFFFFFFLL);
              }
            }

            ++*(*(*(v384 + 64) + 8) + 24);
            v304 = [a2 startSampleIndex];
            *(*(*(v384 + 128) + 8) + 24) = [a2 sampleCount] + v304;
            *(*(*(v384 + 112) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;

LABEL_343:
            goto LABEL_344;
          }

          if (*(a2 + 26))
          {
            v255 = @" - ends in a deadlock";
            if (!v246)
            {
              goto LABEL_282;
            }

LABEL_279:
            v256 = [v246 stringByAppendingFormat:v255];

            v246 = v256;
            v254 = v384;
          }

LABEL_297:
          if (v246 | v381)
          {
            v377 = v246;
            goto LABEL_303;
          }

          v378 = v4;
          v260 = *(a2 + 8);
LABEL_300:
          if (_microstackshot_state_has_change_to_display(v260, *(v254 + 188), [*(*(v254 + 32) + 16) systemstatsFormat], objc_msgSend(*(*(v384 + 32) + 16), "includeUserIdleAndBatteryStateInStacks")))
          {
LABEL_301:
            v377 = 0;
            goto LABEL_302;
          }

          if (a2)
          {
            v272 = a2[9];
          }

          else
          {
            v272 = 0;
          }

          v273 = *(v384 + 168);
          if (([*(*(v384 + 32) + 16) systemstatsFormat] & 1) == 0)
          {
            if (v273)
            {
              v305 = *v273 ^ v272;
              if ((v305 & 0x1FFF000000000000) != 0)
              {
                goto LABEL_301;
              }

              v377 = 0;
              if (v272 != *v273 || (v305 & 0xFFFF00000000) != 0)
              {
LABEL_302:
                v254 = v384;
                v4 = v378;
                goto LABEL_303;
              }
            }

            else if ((v272 & 0x1FFFFFFFFFFFFFFFLL) != 0)
            {
              goto LABEL_301;
            }
          }

          if ((*(v384 + 195) & 1) == 0)
          {
            if (*(v384 + 194) == 1)
            {
              v274 = *(v384 + 40);
              v275 = *(*(*(v384 + 120) + 8) + 24);
              v276 = *(v384 + 184);
              v277 = [a2 sampleCount];
              if (a2)
              {
                v278 = a2[9];
              }

              else
              {
                v278 = 0;
              }

              saos_printf_frame_with_state(v274, v275, v276, v277, *(*(*(v384 + 136) + 8) + 24), *(*(*(v384 + 144) + 8) + 40), v278, 0);
              ++*(*(*(v384 + 64) + 8) + 24);
            }

            else
            {
              v306 = [a2 startSampleIndex];
              *(*(*(v384 + 112) + 8) + 24) = v306 + [a2 sampleCount] - 1;
            }
          }

          v382[2](v382, 0xFFFFFFFFLL);
          goto LABEL_343;
        }

        if (v239)
        {
          v246 = 0;
          goto LABEL_269;
        }

        if ((*(a2 + 25) & 1) == 0)
        {
          v4 = 0;
          v254 = v384;
          if (*(a2 + 26))
          {
            v377 = @" - ends in a deadlock";
            v379 = 0;
            goto LABEL_303;
          }

          v246 = 0;
          goto LABEL_297;
        }

        v4 = 0;
        v379 = 0;
        v377 = @" - part of a deadlock";
      }

      else
      {
        v378 = 0;
        if (!v381)
        {
          v260 = 0;
          v379 = 0;
          v254 = v384;
          goto LABEL_300;
        }

        v4 = 0;
        v379 = 0;
        v377 = 0;
      }

      v254 = v384;
      goto LABEL_303;
    }
  }

  if (a2)
  {
    v77 = *(a2 + 8) != *(v27 + 188);
    v78 = a2[9];
  }

  else
  {
    v78 = 0;
    v77 = *(v27 + 188) != 0;
  }

  v79 = *(v27 + 168);
  if (!v79)
  {
    v121 = (v78 & 0x1FFFFFFFFFFFFFFFLL) == 0;
LABEL_159:
    v81 = !v121;
    if (((v77 | v81) & 1) == 0 && !v381)
    {
      v382[2](v382, 0xFFFFFFFFLL);
      goto LABEL_344;
    }

    goto LABEL_165;
  }

  v80 = *v79;
  if (((v80 ^ v78) & 0x1FFF000000000000) == 0)
  {
    v121 = ((v80 ^ v78) & 0xFFFF00000000) == 0 && v78 == v80;
    goto LABEL_159;
  }

  v81 = 1;
LABEL_165:
  v158 = *(*(v27 + 104) + 8);
  if (*(v158 + 24))
  {
    *(v158 + 24) = 0;
  }

  else
  {
    [*(v27 + 40) appendString:{@", "}];
  }

  [*(v384 + 40) appendString:@"{"];
  v159 = *(v384 + 40);
  v160 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "sampleCount")}];
  SAJSONWriteDictionaryFirstEntry(v159, @"count", v160);

  v161 = *(v384 + 40);
  v162 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v411 + 6)];
  SAJSONWriteDictionaryEntry(v161, @"depth", v162);

  if (v77)
  {
    if (a2)
    {
      v163 = *(a2 + 8);
    }

    else
    {
      LOWORD(v163) = 0;
    }

    +[SACallTreeState writeJSONDictionaryEntriesToStream:microstackshotState:primaryMicrostackshotState:includeIdleAndBattery:](p_cache + 1624, *(v384 + 40), v163, *(v384 + 188), [*(*(v384 + 32) + 16) includeUserIdleAndBatteryStateInStacks]);
  }

  if (v81)
  {
    if (a2)
    {
      v164 = a2[9];
    }

    else
    {
      v164 = 0;
    }

    [(SACallTreeState *)p_cache + 1624 writeJSONDictionaryEntriesToStream:v164 state:*(v384 + 168) primaryState:?];
  }

  if (v381)
  {
    SAJSONWriteDictionaryEntry(*(v384 + 40), @"onBehalfOf", v381);
  }

  [*(v384 + 40) appendString:@"}"];
  ++*(*(*(v384 + 64) + 8) + 24);
LABEL_344:

LABEL_434:
  _Block_object_dispose(v406, 8);
  _Block_object_dispose(v410, 8);
  v11 = context;
LABEL_435:
  objc_autoreleasePoolPop(v11);
}

void *__134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2471(void *result, int a2)
{
  v3 = result;
  v4 = *(result[4] + 8);
  v5 = *(v4 + 24);
  if (!v5 || (v6 = *(*(result[5] + 8) + 24), *(v6 + 8 * v5 - 8) != *(result + 16)))
  {
    *(v4 + 24) = v5 + 1;
    result = malloc_type_realloc(*(*(result[5] + 8) + 24), 8 * *(*(result[4] + 8) + 24), 0x100004000313F17uLL);
    *(*(v3[5] + 8) + 24) = result;
    *(*(*(v3[5] + 8) + 24) + 8 * *(*(v3[4] + 8) + 24) - 8) = *(v3 + 16);
    v7 = *(*(v3[4] + 8) + 24);
    v8 = *(*(v3[5] + 8) + 24);
    if (v7 < 2)
    {
      v9 = 0;
      v7 = v7;
    }

    else
    {
      v9 = *(v8 + 8 * v7 - 12);
    }

    *(v8 + 8 * v7 - 4) = v9;
    v6 = *(*(v3[5] + 8) + 24);
    v5 = *(*(v3[4] + 8) + 24);
  }

  *(v6 + 8 * v5 - 4) += a2;
  *(*(v3[6] + 8) + 24) += a2;
  if (*(v3 + 68))
  {
    v10 = 2;
  }

  else
  {
    v10 = 2 * *(*(v3[6] + 8) + 24) + 2;
  }

  *(*(v3[7] + 8) + 24) = v10;
  return result;
}

- (void)copyDescriptionForTruncatedLeafFrame:(uint64_t)frame otherCallTreeDescription:(void *)description binariesToDisplay:(void *)display extraBinariesToDisplay:
{
  if (result)
  {
    v6 = [(SASamplePrinter *)result copyDescriptionsForFrame:a2 binariesToDisplay:description extraBinariesToDisplay:display];
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = @"???";
    if (firstObject)
    {
      v9 = firstObject;
    }

    v10 = [v8 initWithFormat:@"<callstack in another call tree for %@: %@>", frame, v9];

    return v10;
  }

  return result;
}

- (void)copyDescriptionsForFrame:(void *)frame binariesToDisplay:(void *)display extraBinariesToDisplay:
{
  v81 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if (!a2)
  {
    return &unk_1F5BDCE38;
  }

  selfCopy = self;
  if (![a2 isTruncatedBacktraceFrame])
  {
    address = [a2 address];
    WeakRetained = objc_loadWeakRetained(a2 + 3);
    v66 = WeakRetained;
    if (WeakRetained)
    {
      v18 = WeakRetained;
      v64 = selfCopy;
      binary = [WeakRetained binary];
      segment = [v18 segment];
      loadAddress = [v18 loadAddress];
      address2 = [a2 address];
      v23 = address2 - [v66 loadAddress];
      LOBYTE(v18) = [a2 isKernel];
      exclave = [a2 exclave];
      v25 = [SASamplePrinter displayedBinaryLoadInfoForBinary:binary segment:segment desiredLoadAddress:loadAddress offsetIntoLoadInfo:v23 isInKernelAddressSpace:v18 exclave:exclave binariesToDisplay:frame extraBinariesToDisplay:display];
      loadAddress2 = [v25 loadAddress];

      if (loadAddress2 != [v66 loadAddress])
      {
        address = loadAddress2 + address - [v66 loadAddress];
      }

      selfCopy = v64;
    }

    if ([a2 isExclave])
    {
      exclave2 = [a2 exclave];
      v28 = exclave2;
      if (exclave2)
      {
        name = [exclave2 name];

        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (name)
        {
          name2 = [v28 name];
          v32 = [v30 initWithFormat:@"exclave %@", name2];
        }

        else
        {
          v32 = [v30 initWithFormat:@"exclave %#18llx", objc_msgSend(v28, "identifier")];
        }
      }

      else
      {
        v32 = @"exclave UNKNOWN";
      }
    }

    else
    {
      v32 = 0;
    }

    instruction = [a2 instruction];
    v34 = objc_loadWeakRetained(a2 + 3);
    if (v34)
    {
      if (v32)
      {
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" %@", v32];
      }

      else
      {
        v35 = &stru_1F5BBF440;
      }

      address3 = [a2 address];
      v39 = address3 - [v34 loadAddress];
      binary2 = [v34 binary];
      v65 = instruction;
      if ([*(selfCopy + 16) displaySymbolInformation])
      {
        v62 = v39;
        v63 = v35;
        name3 = [binary2 name];

        if (name3)
        {
          name4 = [binary2 name];
          v43 = SACopySanitizedString(name4, 1, 0);
        }

        else
        {
          v50 = objc_alloc(MEMORY[0x1E696AEC0]);
          name4 = [binary2 uuid];
          [name4 UUIDString];
          v52 = v51 = selfCopy;
          v43 = [v50 initWithFormat:@"<%@>", v52];

          selfCopy = v51;
        }

        v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        if (instruction && instruction[1])
        {
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __45__SASamplePrinter_copySymbolStringsForFrame___block_invoke;
          v74[3] = &unk_1E86F7F40;
          v74[4] = selfCopy;
          v75 = instruction;
          v76 = a2;
          v43 = v43;
          v77 = v43;
          v49 = v63;
          v80 = v62;
          v78 = v63;
          v37 = v37;
          v79 = v37;
          [v75 enumerateSymbols:v74];
        }

        else
        {
          v49 = v63;
          v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"??? (%@ + %llu%@)", v43, v62, v63];
          v54 = selfCopy;
          v55 = [v53 copy];
          [v37 addObject:v55];

          selfCopy = v54;
        }
      }

      else
      {
        v44 = objc_alloc(MEMORY[0x1E696AEC0]);
        [binary2 uuid];
        v43 = v45 = v39;
        [v43 UUIDString];
        v47 = v46 = selfCopy;
        v48 = [v44 initWithFormat:@"%@ + %llu%@", v47, v45, v35];
        v74[0] = v48;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
        v37 = v49 = v35;

        selfCopy = v46;
      }

      instruction = v65;
    }

    else if (v32)
    {
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"??? (%@)", v32];
      v74[0] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
    }

    else
    {
      v74[0] = @"???";
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
    }

    if (![*(selfCopy + 16) displayFrameAddresses])
    {
      name6 = v37;
      v15 = name6;
      v9 = v66;
      goto LABEL_52;
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v37, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    name6 = v37;
    v56 = [name6 countByEnumeratingWithState:&v67 objects:v71 count:16];
    v9 = v66;
    if (v56)
    {
      v57 = v56;
      v58 = *v68;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v68 != v58)
          {
            objc_enumerationMutation(name6);
          }

          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ [0x%llx]", *(*(&v67 + 1) + 8 * i), address];
          [v13 addObject:v60];
        }

        v57 = [name6 countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v57);
    }

    v14 = [v13 copy];
LABEL_50:
    v15 = v14;

LABEL_52:
LABEL_53:

    return v15;
  }

  if (![a2 isKernel])
  {
    return &unk_1F5BDCE80;
  }

  if ([a2 isExclave])
  {
    exclave3 = [a2 exclave];
    v9 = exclave3;
    if (!exclave3)
    {
      v15 = &unk_1F5BDCE50;
      goto LABEL_53;
    }

    name5 = [exclave3 name];

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (!name5)
    {
      name6 = [v11 initWithFormat:@"<exclave 0x%llx>", objc_msgSend(v9, "identifier")];
      v72 = name6;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
      goto LABEL_52;
    }

    name6 = [v9 name];
    v13 = [v11 initWithFormat:@"<exclave %@>", name6];
    v73 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    goto LABEL_50;
  }

  return &unk_1F5BDCE68;
}

id __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2487(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 88, 1);
  }

  v7 = Property;
  v8 = [v7 firstObject];
  v9 = [v8 startTime];
  v10 = [(SASamplePrinter *)v6 displayNameForPid:a2 threadId:a3 timestamp:v9];

  return v10;
}

id __134__SASamplePrinter_addStack_toStream_sampleCount_binariesToDisplay_primaryState_primaryMicrostackshotState_onlyHeaviestStack_isKernel___block_invoke_2(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 88, 1);
  }

  v7 = Property;
  v8 = [v7 firstObject];
  v9 = [v8 startTime];
  v10 = [(SASamplePrinter *)v6 displayNameForPid:a2 threadId:a3 timestamp:v9];

  return v10;
}

- (id)copyDescriptionForTimeRanges:(uint64_t)ranges
{
  v56 = *MEMORY[0x1E69E9840];
  if (!ranges)
  {
    return 0;
  }

  if (![*(ranges + 16) callTreeTimestampsTimeDomain])
  {
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "Displaying timestamp with no time domain", buf, 2u);
    }

    *__error() = v32;
    _SASetCrashLogMessage(13328, "Displaying timestamp with no time domain");
    _os_crash();
    __break(1u);
    return 0;
  }

  callTreeTimestampsTimeDomain = [*(ranges + 16) callTreeTimestampsTimeDomain];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{16 * objc_msgSend(a2, "count")}];
  eventStartTimeWithWallTime = [(SASamplePrinter *)ranges eventStartTimeWithWallTime];
  eventEndTimeWithWallTime = [(SASamplePrinter *)ranges eventEndTimeWithWallTime];
  v8 = (callTreeTimestampsTimeDomain & (callTreeTimestampsTimeDomain - 1)) != 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke;
  v48[3] = &unk_1E86F7EF0;
  v52 = callTreeTimestampsTimeDomain;
  v9 = v5;
  v49 = v9;
  v53 = v8;
  v10 = eventStartTimeWithWallTime;
  v50 = v10;
  rangesCopy = ranges;
  v11 = MEMORY[0x1E12EBE50](v48);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke_2;
  v42[3] = &unk_1E86F7F18;
  v12 = v9;
  v43 = v12;
  v13 = v10;
  v44 = v13;
  v14 = eventEndTimeWithWallTime;
  v45 = v14;
  v15 = v11;
  v46 = v15;
  v47 = v8;
  v16 = MEMORY[0x1E12EBE50](v42);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = a2;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v55 count:16];
  if (!v18)
  {

    v20 = 0;
    goto LABEL_19;
  }

  v19 = v18;
  v34 = v12;
  v35 = v15;
  v36 = v14;
  v37 = v13;
  v20 = 0;
  v21 = *v39;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v39 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v38 + 1) + 8 * i);
      if (v20)
      {
        endTime = [v20 endTime];
        startTime = [v23 startTime];
        v26 = [endTime eq:startTime];

        if (v26)
        {
          endTime2 = [v23 endTime];
          objc_setProperty_atomic(v20, v28, endTime2, 16);
          goto LABEL_13;
        }

        (v16)[2](v16, v20);
      }

      v29 = [v23 copy];
      endTime2 = v20;
      v20 = v29;
LABEL_13:
    }

    v19 = [v17 countByEnumeratingWithState:&v38 objects:v55 count:16];
  }

  while (v19);

  if (v20)
  {
    (v16)[2](v16, v20);
  }

  v14 = v36;
  v13 = v37;
  v12 = v34;
  v15 = v35;
LABEL_19:
  v30 = v12;

  return v30;
}

void __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[7];
  v9 = v5[8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_2;
  v10[3] = &unk_1E86F7E58;
  v10[4] = v5;
  v10[5] = a3;
  v11 = v4;
  [(SARecipe *)a3 enumerateStatesBetweenStartTime:v6 startSampleIndex:v8 endTime:v7 endSampleIndex:v9 reverseOrder:0 block:v10];
}

void __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      v22 = *__error();
      v23 = _sa_logt();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [*(v4 + 16) debugDescription];
        *buf = 136315138;
        v29 = [v24 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "swiftAsyncCallTreeAggregationResolved returned default: %s", buf, 0xCu);
      }

      *__error() = v22;
      v25 = [*(v4 + 16) debugDescription];
      _SASetCrashLogMessage(13177, "swiftAsyncCallTreeAggregationResolved returned default: %s", [v25 UTF8String]);

      _os_crash();
      __break(1u);
    }

    v6 = *(v5 + 160);
    v7 = &unk_1F5BDCA90;
    if (v6 > 2)
    {
      goto LABEL_10;
    }

    if (v6)
    {
      if (v6 != 2)
      {
        if (v6 != 1)
        {
          goto LABEL_20;
        }

        v8 = *__error();
        v9 = _sa_logt();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v3 = [*(v4 + 16) debugDescription];
          *buf = 136315138;
          v29 = [v3 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "aggregationPointForSwiftTask, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", buf, 0xCu);
        }

        *__error() = v8;
        a2 = [*(v4 + 16) debugDescription];
        _SASetCrashLogMessage(13154, "aggregationPointForSwiftTask, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", [a2 UTF8String]);

        v5 = _os_crash();
        __break(1u);
LABEL_10:
        if (v6 != 3)
        {
          if (v6 != 5)
          {
            goto LABEL_20;
          }

          v10 = *(v3 + 40);
          if (([v5 printHeavyStacks] & 1) != 0 || objc_msgSend(v10, "identifier") != -1)
          {
            v11 = MEMORY[0x1E696AD98];
            v12 = [v10 identifier];
            v13 = v11;
LABEL_17:
            v7 = [v13 numberWithUnsignedLongLong:v12];
            goto LABEL_20;
          }

          v21 = MEMORY[0x1E696AD98];
          v16 = [a2 thread];
          v17 = [v21 numberWithUnsignedLong:v16];
          goto LABEL_19;
        }

LABEL_18:
        v15 = MEMORY[0x1E696AD98];
        v16 = [a2 thread];
        v17 = [v15 numberWithUnsignedLongLong:{objc_msgSend(v16, "threadId")}];
LABEL_19:
        v26 = v17;

        v7 = v26;
        goto LABEL_20;
      }
    }

    else if ((*(v5 + 14) & 1) == 0)
    {
      goto LABEL_18;
    }

    v14 = MEMORY[0x1E696AD98];
    v12 = [(SASwiftTaskState *)a2 baseFunctionAddress];
    v13 = v14;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_20:
  v27 = v7;
  v18 = [*(v3 + 48) objectForKeyedSubscript:v7];
  if (v18)
  {
    v19 = v18;
    v20 = [*(v3 + 48) objectForKeyedSubscript:v27];
    [v20 addObject:a2];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
    [*(v3 + 48) setObject:v19 forKeyedSubscript:v27];
  }
}

void __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (([*(a1[4] + 16) printHeavyStacks] & 1) == 0)
  {
    [a3 sortUsingComparator:&__block_literal_global_2524];
  }

  v5 = a1[4];
  v6 = a1[5];
  if (!v5)
  {
    goto LABEL_33;
  }

  v7 = a1[6];
  v8 = a1[7];
  v9 = v5[2];
  if (v9)
  {
    if (v9[20] == 1)
    {
      goto LABEL_36;
    }

    v10 = v9[19];
    if (v10)
    {
      goto LABEL_11;
    }

    if (*(v9 + 11) == 1)
    {
LABEL_36:
      do
      {
        v7 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          a3 = [v5[2] debugDescription];
          v11 = [a3 UTF8String];
          *buf = 136315138;
          v32 = v11;
          _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "stackForSwiftTasks, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", buf, 0xCu);
        }

        *__error() = v7;
        v5 = [v5[2] debugDescription];
        _SASetCrashLogMessage(13222, "stackForSwiftTasks, but kSAAggregateSwiftAsyncTogetherWithOtherCallTrees: %s", [v5 UTF8String]);

        _os_crash();
        __break(1u);
LABEL_11:
        ;
      }

      while (v10 == 3);
    }
  }

  self = objc_alloc_init(SAStack);
  v12 = [v7 pid];
  if (self)
  {
    self->_isKernel = v12 == 0;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (self)
  {
    objc_setProperty_atomic(self, v13, v14, 56);
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (self)
  {
    objc_setProperty_atomic(self, v15, v16, 40);
  }

  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (self)
  {
    objc_setProperty_atomic(self, v17, v18, 48);
  }

  v20 = [(SASamplePrinter *)v5 binaryImagesHitByTask:v7];
  if (!self)
  {

    [(SASamplePrinter *)v5 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 toStack:v7 task:v8 taskSampleCount:?];
LABEL_33:
    v21 = 0;
    goto LABEL_29;
  }

  objc_setProperty_atomic(self, v19, v20, 128);

  [(SASamplePrinter *)v5 addHeaderForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:self toStack:v7 task:v8 taskSampleCount:?];
  v21 = self;
  if (!self->_omit && self->_count)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    threadNameChanges = self->_threadNameChanges;
    v24 = [(NSMutableArray *)self->_dispatchQueues count];
    v25 = [(NSMutableArray *)self->_swiftTasks count];
    v26 = [(NSMutableArray *)self->_threadIds count];
    v27 = self->_minPriority != self->_maxPriority || self->_minBasePriority != self->_maxBasePriority;
    [(SASamplePrinter *)v5 addStackForDispatchQueue:a3 orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:v7 task:v22 toRootObjects:threadNameChanges nameChanges:v24 > 1 dispatchQueueChanges:v25 > 1 swiftTaskChanges:v26 > 1 threadChanges:v27 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    if ([v5[2] printHeavyStacks])
    {
      [(SASamplePrinter *)v5 sortHeavyCallTree:v22];
    }

    objc_setProperty_atomic(self, v28, v22, 120);

    v21 = self;
  }

LABEL_29:
  selfa = v21;
  [v6 addObject:v21];
}

uint64_t __61__SASamplePrinter_stacksForSwiftAsyncInTask_taskSampleCount___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 threadState];
  v5 = [v4 startTimestamp];
  v6 = [a3 threadState];
  v7 = [v6 startTimestamp];
  v8 = [v5 compare:v7];

  return v8;
}

void __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      if ((v4 & 4) == 0)
      {
        if ((v4 & 8) == 0)
        {
          if ((v4 & 0x10) == 0)
          {
            return;
          }

          goto LABEL_41;
        }

        goto LABEL_34;
      }

      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) appendString:@"wall:"];
  }

  [a2 wallTime];
  if (v5 == 0.0)
  {
    v13 = *(a1 + 32);
    goto LABEL_17;
  }

  [*(a1 + 40) wallTime];
  if (v6 == 0.0)
  {
    v14 = [*(*(a1 + 48) + 16) omitAbsoluteWallTimes];
    v15 = *(a1 + 32);
    if ((v14 & 1) == 0)
    {
      [a2 wallTime];
      v23 = v22;
      if ([*(*(a1 + 48) + 16) displayDetailedWallTime])
      {
        v25 = 9;
      }

      else
      {
        v25 = 3;
      }

      v24.i64[0] = v23;
      v26 = _CopyStringForTime(v25, v24);
      [v15 appendString:v26];

      goto LABEL_18;
    }

    v13 = *(a1 + 32);
LABEL_17:
    [v13 appendString:@"???"];
    goto LABEL_18;
  }

  v7 = *(a1 + 32);
  v8 = [*(*(a1 + 48) + 16) displayDetailedWallTime];
  [a2 wallTime];
  v10 = v9;
  [*(a1 + 40) wallTime];
  v12 = 3;
  if (v8)
  {
    v12 = 9;
  }

  [v7 appendFormat:@"%.*fs", v12, v10 - v11];
LABEL_18:
  if ((*(a1 + 56) & 2) != 0)
  {
    [*(a1 + 32) appendString:@" "];
LABEL_20:
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) appendString:@"machabs:"];
    }

    if ([a2 machAbsTime])
    {
      [*(a1 + 32) appendFormat:@"%llu", objc_msgSend(a2, "machAbsTime")];
    }

    else
    {
      [*(a1 + 32) appendString:@"???"];
    }
  }

  if ((*(a1 + 56) & 4) == 0)
  {
    goto LABEL_32;
  }

  [*(a1 + 32) appendString:@" "];
LABEL_27:
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) appendString:@"machabssec:"];
  }

  [a2 machAbsTimeSeconds];
  v16 = *(a1 + 32);
  if (v17 == 0.0)
  {
    [*(a1 + 32) appendString:@"???"];
  }

  else
  {
    [a2 machAbsTimeSeconds];
    [v16 appendFormat:@"%fs", v18];
  }

LABEL_32:
  if ((*(a1 + 56) & 8) != 0)
  {
    [*(a1 + 32) appendString:@" "];
LABEL_34:
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) appendString:@"machcont:"];
    }

    if ([a2 machContTime])
    {
      [*(a1 + 32) appendFormat:@"%llu", objc_msgSend(a2, "machContTime")];
    }

    else
    {
      [*(a1 + 32) appendString:@"???"];
    }
  }

  if ((*(a1 + 56) & 0x10) == 0)
  {
    return;
  }

  [*(a1 + 32) appendString:@" "];
LABEL_41:
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) appendString:@"machcontsec:"];
  }

  [a2 machContTimeSeconds];
  v19 = *(a1 + 32);
  if (v20 == 0.0)
  {

    [v19 appendString:@"???"];
  }

  else
  {
    [a2 machContTimeSeconds];
    [v19 appendFormat:@"%fs", v21];
  }
}

void __48__SASamplePrinter_copyDescriptionForTimeRanges___block_invoke_2(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v8 = [a2 startTime];
  if ([*(a1 + 40) isComparable:?] && objc_msgSend(*(a1 + 40), "gt:", v8))
  {
    v4 = *(a1 + 40);

    v8 = v4;
  }

  v5 = [a2 endTime];
  if ([*(a1 + 48) isComparable:v5] && objc_msgSend(*(a1 + 48), "lt:", v5))
  {
    v6 = *(a1 + 48);

    v5 = v6;
  }

  (*(*(a1 + 56) + 16))();
  if ([v8 ne:v5])
  {
    if (*(a1 + 64))
    {
      v7 = @" - ";
    }

    else
    {
      v7 = @"-";
    }

    [*(a1 + 32) appendString:v7];
    (*(*(a1 + 56) + 16))();
  }
}

- (uint64_t)copyDescriptionForIOEvent:(void *)event
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = SAFormattedBytesEx([event size], 1, 0, 0, 0x1000uLL);
  type = [event type];
  v5 = [v2 initWithFormat:@"%@ %@T%u", v3, type, objc_msgSend(event, "tier")];

  return v5;
}

void __45__SASamplePrinter_copySymbolStringsForFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
  v6 = [a2 name];
  v7 = v6;
  if (v6)
  {
    v8 = SACopySanitizedString(v6, 1, 0);
    [v19 appendString:v8];
  }

  else
  {
    [v19 appendString:@"???"];
    if (![*(*(a1 + 32) + 16) displayOffsetsFromUnnamedSymbols])
    {
      goto LABEL_5;
    }
  }

  [v19 appendFormat:@" + %llu", objc_msgSend(*(a1 + 40), "offsetIntoSegment") - objc_msgSend(a2, "offsetIntoSegment") + objc_msgSend(*(a1 + 48), "isSymbolicationOffByOne")];
LABEL_5:
  objc_msgSend(v19, "appendString:", @" (");
  if (a3)
  {
    if ([*(*(a1 + 32) + 16) displayFullSourcePaths])
    {
      v9 = [a3 filePath];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [a3 fileName];
      }

      v12 = v11;
    }

    else
    {
      v12 = [a3 fileName];
    }

    v13 = [a3 lineNum];
    v14 = [a3 columnNum];
    if (v12)
    {
      v15 = v14;
      v16 = SACopySanitizedString(v12, 1, 0);
      [v19 appendString:v16];

      if (v13)
      {
        [v19 appendFormat:@":%u", v13];
        if (v15)
        {
          [v19 appendFormat:@", %u", v15];
        }
      }
    }

    [v19 appendString:@" in "];
  }

  [v19 appendFormat:@"%@ + %llu%@"], *(a1 + 56), *(a1 + 80), *(a1 + 64));
  v17 = *(a1 + 72);
  v18 = [v19 copy];
  [v17 addObject:v18];
}

- (id)displayNameForTask:(uint64_t)task threadId:
{
  v4 = [(SASamplePrinter *)self displayNameForTask:a2];
  v5 = v4;
  if (task)
  {
    task = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ thread 0x%llx", v4, task];
  }

  else
  {
    task = v4;
  }

  v7 = task;

  return v7;
}

void __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[7];
  v10 = v6[8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_2;
  v14[3] = &unk_1E86F7F68;
  v14[4] = v6;
  v11 = v5;
  v12 = a1[6];
  v13 = a1[7];
  v15 = v11;
  v16 = v12;
  v17 = v13;
  [a3 enumerateThreadStatesBetweenStartTime:v7 startSampleIndex:v9 endTime:v8 endSampleIndex:v10 reverseOrder:0 block:v14];
}

void __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 originPid];
  v5 = [a2 proximatePid];
  v6 = v5;
  if (v4 != -1 || v5 != -1)
  {
    v7 = *(a1 + 32);
    v8 = [a2 endTimestamp];
    v32 = [SASamplePrinter displayNameForPid:v7 aroundTimestamp:v4 includePid:v8];

    v9 = *(a1 + 32);
    v10 = [a2 endTimestamp];
    v11 = [SASamplePrinter displayNameForPid:v9 aroundTimestamp:v6 includePid:v10];

    v12 = [*(*(a1 + 32) + 168) dataStyle];
    if (v12 - 2 >= 3)
    {
      if (v12 <= 1)
      {
        -[SAOnBehalfOfMultiple addProximateName:proximatePid:originName:originPid:count:](*(a1 + 40), v11, v6, v32, v4, [a2 sampleCountInSampleIndexRangeStart:*(*(a1 + 32) + 56) end:*(*(a1 + 32) + 64)]);
      }
    }

    else if ([a2 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      v16 = [SAOnBehalfOfSingle alloc];
      if (v16)
      {
        v33.receiver = v16;
        v33.super_class = SAOnBehalfOfSingle;
        v17 = objc_msgSendSuper2(&v33, sel_init);
        if (v17)
        {
          v18 = [v11 copy];
          v19 = v17[2];
          v17[2] = v18;

          v20 = [v32 copy];
          v21 = v17[3];
          v17[3] = v20;

          *(v17 + 2) = v6;
          *(v17 + 3) = v4;
        }
      }

      else
      {
        v17 = 0;
      }

      v22 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v17];
      if (!v22)
      {
        v22 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:*(a1 + 56)];
        [*(*(*(a1 + 48) + 8) + 40) setObject:v22 forKeyedSubscript:v17];
      }

      v23 = *(*(a1 + 32) + 56);
      v24 = [a2 startSampleIndex];
      if (v23 <= v24)
      {
        v23 = v24;
      }

      v25 = *(*(a1 + 32) + 64);
      v26 = [a2 endSampleIndex];
      if (v25 >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      if (v23 < v27)
      {
        do
        {
          v28 = [v22 mutableBytes];
          *(v28 + (v23 >> 3)) |= 1 << (v23 & 7);
          ++v23;
          v29 = *(*(a1 + 32) + 64);
          v30 = [a2 endSampleIndex];
          if (v29 >= v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = v29;
          }
        }

        while (v23 < v31);
      }
    }
  }
}

void __65__SASamplePrinter_displayStringForOnBehalfOfForTasks_includePid___block_invoke_3(uint64_t a1, unsigned int *a2, id a3)
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v3 bytes];
  v8 = [v3 length];
  if (v8 == *(a1 + 40))
  {
    if (v8 >= 8)
    {
      LODWORD(v3) = 0;
      v10 = v8 >> 3;
      do
      {
        v11 = *v7++;
        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        LODWORD(v3) = v3 + v12.i32[0];
        --v10;
      }

      while (v10);
    }

    else
    {
      LODWORD(v3) = 0;
    }

    a1 = *(a1 + 32);
    if (a2)
    {
      v20 = objc_getProperty(a2, v9, 16, 1);
      v13 = a2[2];
      v15 = objc_getProperty(a2, v14, 24, 1);
      [(SAOnBehalfOfMultiple *)a1 addProximateName:v20 proximatePid:v13 originName:v15 originPid:a2[3] count:v3];
      goto LABEL_8;
    }
  }

  else
  {
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v3 length];
      v19 = *(a1 + 40);
      *buf = 134218240;
      v22 = v18;
      v23 = 2048;
      v24 = v19;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "sampleIndexBitfield.length %lu != bitfieldSize %llu", buf, 0x16u);
    }

    *__error() = v16;
    _SASetCrashLogMessage(14246, "sampleIndexBitfield.length %lu != bitfieldSize %llu", [v3 length], *(a1 + 40));
    _os_crash();
    __break(1u);
  }

  v15 = 0;
  v20 = 0;
  [(SAOnBehalfOfMultiple *)a1 addProximateName:0 proximatePid:0 originName:0 originPid:v3 count:?];
LABEL_8:
}

void __40__SASamplePrinter_numIOsForTask_ioSize___block_invoke(void *a1, const char *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  Property = *(a1[4] + 168);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 1120, 1);
  }

  v7 = Property;
  v8 = [v7 objectForKeyedSubscript:a2];

  if (v8)
  {
    v9 = [a3 creationTimestamp];
    v10 = v9;
    if (!v9 || [v9 lt:*(a1[4] + 32)])
    {
      v11 = *(a1[4] + 32);

      v10 = v11;
    }

    v12 = [a3 exitTimestamp];
    v13 = v12;
    if (!v12 || [v12 gt:*(a1[4] + 40)])
    {
      v14 = *(a1[4] + 40);

      v13 = v14;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v8;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v20 endTimestamp];
          v22 = [v10 gt:v21];

          if ((v22 & 1) == 0)
          {
            v23 = [v20 endTimestamp];
            v24 = [v13 lt:v23];

            if (v24)
            {
              goto LABEL_20;
            }

            *(*(a1[5] + 8) + 24) += [v20 size];
            ++*(*(a1[6] + 8) + 24);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

LABEL_20:

    v8 = v25;
  }
}

void __73__SASamplePrinter_addStackForDispatchQueue_andThread_task_toRootObjects___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 dispatchQueue];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v7 addObject:v8];
  }
}

- (void)addStackForSwiftTask:(unint64_t)task andThread:(uint64_t)thread task:(void *)a5 toRootObjects:
{
  if (self)
  {
    if (a2 | task)
    {
      if (task)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = *(self + 32);
        v12 = *(self + 40);
        v13 = *(self + 56);
        v14 = *(self + 64);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __69__SASamplePrinter_addStackForSwiftTask_andThread_task_toRootObjects___block_invoke;
        v19[3] = &unk_1E86F70B8;
        v19[4] = a2;
        v20 = v10;
        v15 = v10;
        [task enumerateThreadStatesBetweenStartTime:v11 startSampleIndex:v13 endTime:v12 endSampleIndex:v14 reverseOrder:0 block:v19];
        [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:task orThread:v15 andThreadStateIndexes:thread task:a5 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
      }

      else
      {
        states = [a2 states];
        [(SASamplePrinter *)self addStackForDispatchQueue:states orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:thread task:a5 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
      }
    }

    else
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Neither thread nor swiftTask provided", buf, 2u);
      }

      *__error() = v16;
      _SASetCrashLogMessage(14646, "Neither thread nor swiftTask provided");
      _os_crash();
      __break(1u);
    }
  }
}

void __69__SASamplePrinter_addStackForSwiftTask_andThread_task_toRootObjects___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 swiftTask];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v7 addObject:v8];
  }
}

void __49__SASamplePrinter_addStackForTask_toRootObjects___block_invoke(uint64_t a1, uint64_t a2, char *a3)
{
  if ([(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [(SASamplePrinter *)v5 addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 40) task:*(a1 + 48) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }
}

void __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 mainBinary];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    [*(a1 + 40) addObject:a2];
    v6 = [a2 threads];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke_2;
    v8[3] = &unk_1E86F80A0;
    v7 = *(a1 + 56);
    v8[4] = *(a1 + 48);
    v8[5] = a2;
    v8[6] = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke_2(uint64_t a1, uint64_t a2, char *a3)
{
  if ([(SASamplePrinter *)*(a1 + 32) shouldPrintTask:a3 thread:0 dispatchQueue:?])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [(SASamplePrinter *)v5 addStackForDispatchQueue:0 orSwiftTaskStates:a3 orThread:0 andThreadStateIndexes:*(a1 + 40) task:*(a1 + 48) toRootObjects:1 nameChanges:1 dispatchQueueChanges:1 swiftTaskChanges:1 threadChanges:1 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:1 includeState:?];
    }
  }
}

uint64_t __37__SASamplePrinter_sortHeavyCallTree___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v37 = *__error();
    v42 = _sa_logt();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v3 = [v44 UTF8String];
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 136315394;
      v76 = v3;
      v77 = 2080;
      v78 = [v46 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v42, OS_LOG_TYPE_ERROR, "first is a %s, second is a %s", buf, 0x16u);
    }

    *__error() = v37;
    v47 = objc_opt_class();
    v24 = NSStringFromClass(v47);
    v48 = [v24 UTF8String];
    v49 = objc_opt_class();
    a3 = NSStringFromClass(v49);
    _SASetCrashLogMessage(14723, "first is a %s, second is a %s", v48, [a3 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_57;
  }

  v6 = [a2 sampleCount];
  v7 = [a3 sampleCount];
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 > v7)
  {
    return -1;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v51 = *__error();
      a3 = _sa_logt();
      if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
      {
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        *buf = 136315138;
        v76 = [v65 UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, a3, OS_LOG_TYPE_ERROR, "first is a %s", buf, 0xCu);
      }

      *__error() = v51;
      v66 = objc_opt_class();
      v24 = NSStringFromClass(v66);
      _SASetCrashLogMessage(14765, "first is a %s", [v24 UTF8String]);

      v53 = _os_crash();
      __break(1u);
LABEL_82:
      v8 = -1;
      goto LABEL_99;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v67 = *__error();
        v68 = _sa_logt();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = objc_opt_class();
          v70 = NSStringFromClass(v69);
          *buf = 136315138;
          v76 = [v70 UTF8String];
          _os_log_error_impl(&dword_1E0E2F000, v68, OS_LOG_TYPE_ERROR, "second is a %s", buf, 0xCu);
        }

        *__error() = v67;
        v71 = objc_opt_class();
        v24 = NSStringFromClass(v71);
        _SASetCrashLogMessage(14769, "second is a %s", [v24 UTF8String]);

        _os_crash();
        __break(1u);
        goto LABEL_86;
      }

      v24 = a2;
      v25 = a3;
      a3 = v25;
      if (!v24)
      {
        if (!v25)
        {
          v33 = SACountedStateCompare(0, 0);
          if (v33)
          {
            goto LABEL_40;
          }

          goto LABEL_121;
        }

        if (v25[25] & 1) != 0 || (v25[26])
        {
          goto LABEL_46;
        }

        v32 = 0;
        goto LABEL_39;
      }

      v26 = *(v24 + 25);
      if (v25)
      {
        if (((v25[25] ^ v26) & 1) == 0)
        {
          v26 = *(v24 + 26);
          if (((v26 ^ v25[26]) & 1) == 0)
          {
LABEL_38:
            v32 = v24[9];
LABEL_39:
            v33 = SACountedStateCompare(v32, *(a3 + 9));
            if (v33)
            {
LABEL_40:
              v8 = v33;
LABEL_33:

              return v8;
            }

            if (v24)
            {
              v35 = *(v24 + 8);
            }

            else
            {
              v35 = 0;
            }

            v36 = *(a3 + 8);
            if (v35 < v36)
            {
              v8 = -1;
              goto LABEL_33;
            }

            if (v35 > v36)
            {
LABEL_46:
              v8 = 1;
              goto LABEL_33;
            }

            if (!v24)
            {
              v38 = 0;
              goto LABEL_50;
            }

            LOBYTE(v8) = 0;
LABEL_49:
            LOBYTE(v37) = 1;
            v38 = objc_getProperty(v24, v34, 64, 1);
            if (v8)
            {
              v39 = 0;
LABEL_51:
              v40 = v39;
              v3 = v40;
              if (v38)
              {
                if (v40)
                {
                  v8 = [v38 compare:v40];
                }

                else
                {
                  v8 = -1;
                }

                goto LABEL_100;
              }

LABEL_57:
              if (v3)
              {
                v38 = 0;
                v8 = 1;
LABEL_100:

                goto LABEL_33;
              }

              if (v24)
              {
                v50 = 1;
                v51 = objc_getProperty(v24, v41, 56, 1);
                if (v37)
                {
                  v52 = 0;
LABEL_63:
                  v53 = v52;
                  if (v51)
                  {
                    if (v53)
                    {
                      v55 = v53;
                      if (v24)
                      {
                        Property = objc_getProperty(v24, v54, 56, 1);
                      }

                      else
                      {
                        Property = 0;
                      }

                      v58 = Property;
                      if (v50)
                      {
                        v59 = 0;
                      }

                      else
                      {
                        v59 = objc_getProperty(a3, v57, 56, 1);
                      }

                      v60 = v59;
                      v8 = [v58 compare:v60];

                      v53 = v55;
                      goto LABEL_99;
                    }

                    goto LABEL_82;
                  }

                  if (v53)
                  {
LABEL_98:
                    v51 = 0;
                    v8 = 1;
                    goto LABEL_99;
                  }

                  if (v24)
                  {
                    v61 = *(v24 + 10);
                    if (v50)
                    {
                      v63 = 0;
                      v62 = 1;
LABEL_74:
                      if (v61 != -1)
                      {
                        v53 = 0;
                        v8 = -1;
                        if (v63 == -1)
                        {
                          goto LABEL_95;
                        }

                        v51 = 0;
                        if (v61 < v63)
                        {
LABEL_99:

                          v3 = 0;
                          v38 = 0;
                          goto LABEL_100;
                        }

                        if (v61 > v63)
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_87;
                      }

LABEL_86:
                      if (v63 != -1)
                      {
                        goto LABEL_97;
                      }

LABEL_87:
                      if (v24)
                      {
                        v72 = *(v24 + 9);
                        if (v62)
                        {
                          v73 = 0;
LABEL_90:
                          v74 = v73 == -1;
                          if (v72 == -1)
                          {
                            if (v73 == -1)
                            {
                              goto LABEL_121;
                            }

                            goto LABEL_97;
                          }

                          goto LABEL_91;
                        }

LABEL_89:
                        v73 = *(a3 + 9);
                        goto LABEL_90;
                      }

                      if ((v62 & 1) == 0)
                      {
                        v72 = 0;
                        goto LABEL_89;
                      }

LABEL_128:
                      v74 = 0;
                      v73 = 0;
                      v72 = 0;
LABEL_91:
                      v53 = 0;
                      v8 = -1;
                      if (!v74)
                      {
                        v51 = 0;
                        if (v72 < v73)
                        {
                          goto LABEL_99;
                        }

                        if (v72 <= v73)
                        {
LABEL_121:
                          v53 = 0;
                          v51 = 0;
                          v8 = 0;
                          goto LABEL_99;
                        }

LABEL_97:
                        v53 = 0;
                        goto LABEL_98;
                      }

LABEL_95:
                      v51 = 0;
                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    if (v50)
                    {
                      goto LABEL_128;
                    }

                    v61 = 0;
                  }

                  v62 = 0;
                  v63 = *(a3 + 10);
                  goto LABEL_74;
                }
              }

              else
              {
                v51 = 0;
                if (v37)
                {
                  goto LABEL_121;
                }
              }

              v52 = objc_getProperty(a3, v41, 56, 1);
              v50 = 0;
              goto LABEL_63;
            }

LABEL_50:
            v39 = objc_getProperty(a3, v34, 64, 1);
            LOBYTE(v37) = 0;
            goto LABEL_51;
          }
        }
      }

      else if ((v26 & 1) == 0)
      {
        LOBYTE(v26) = *(v24 + 26);
        if ((v26 & 1) == 0)
        {
          v33 = SACountedStateCompare(v24[9], 0);
          if (v33)
          {
            goto LABEL_40;
          }

          v8 = 1;
          if (*(v24 + 8))
          {
            goto LABEL_33;
          }

          goto LABEL_49;
        }
      }

      if (v26)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

      goto LABEL_33;
    }

    return -1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }

    v27 = *__error();
    v28 = _sa_logt();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 136315138;
      v76 = [v30 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v28, OS_LOG_TYPE_ERROR, "second is a %s", buf, 0xCu);
    }

    *__error() = v27;
    v31 = objc_opt_class();
    v24 = NSStringFromClass(v31);
    _SASetCrashLogMessage(14761, "second is a %s", [v24 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  if (a2)
  {
    v12 = objc_getProperty(a2, v11, 40, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [v13 count];

  if (a3)
  {
    v16 = objc_getProperty(a3, v15, 40, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v17 count];

  if (v14 < v18)
  {
    return -1;
  }

  if (v14 > v18)
  {
    return 1;
  }

  v19 = [a2 frame];
  v20 = [v19 address];

  v21 = [a3 frame];
  v22 = [v21 address];

  if (v20 <= v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  if (v20 < v22)
  {
    return 1;
  }

  else
  {
    return v23;
  }
}

uint64_t __37__SASamplePrinter_sortHeavyCallTree___block_invoke_2791(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v17 UTF8String];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 136315394;
      v27 = v18;
      v28 = 2080;
      v29 = [v20 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "first is a %s, second is a %s", buf, 0x16u);
    }

    *__error() = v14;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v22 UTF8String];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    _SASetCrashLogMessage(14874, "first is a %s, second is a %s", v23, [v25 UTF8String]);

    _os_crash();
    __break(1u);
  }

  v5 = [a2 size];
  if (v5 < [a3 size])
  {
    return 1;
  }

  v7 = [a2 size];
  if (v7 > [a3 size])
  {
    return -1;
  }

  v8 = [a2 tier];
  if (v8 < [a3 tier])
  {
    return -1;
  }

  v9 = [a2 tier];
  if (v9 > [a3 tier])
  {
    return 1;
  }

  if (a2)
  {
    v10 = a2[3];
    if (a3)
    {
LABEL_12:
      v11 = a3[3];
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
LABEL_13:
  if (v10 >= v11)
  {
    if (a2)
    {
      v12 = a2[3];
      if (a3)
      {
LABEL_16:
        v13 = a3[3];
        return v12 > v13;
      }
    }

    else
    {
      v12 = 0;
      if (a3)
      {
        goto LABEL_16;
      }
    }

    v13 = 0;
    return v12 > v13;
  }

  return -1;
}

void __37__SASamplePrinter_sortHeavyCallTree___block_invoke_2796(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v5 = 40;
    if (a2)
    {
      v6 = &OBJC_IVAR___SACallTreeState__childIOEvents;
      goto LABEL_7;
    }

LABEL_12:
    Property = 0;
    goto LABEL_8;
  }

  v5 = 32;
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = &OBJC_IVAR___SACallTreeFrame__children;
LABEL_7:
  Property = objc_getProperty(a2, v4, *v6, 1);
LABEL_8:
  v8 = Property;
  [v8 sortUsingComparator:*(a1 + v5)];
}

- (id)callTreesForThreadsInTask:(id)task
{
  v40 = *MEMORY[0x1E69E9840];
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v5 = 0;
    goto LABEL_38;
  }

  if (self && self->_hasTimeIndexes)
  {
    v6 = [task sampleCountInSampleIndexRangeStart:self->_reportStartSampleIndex end:self->_reportEndSampleIndex];
  }

  else
  {
    v6 = [task sampleCountInTimestampRangeStart:self->_reportStartTime end:self->_reportEndTime];
  }

  taskCopy = task;
  v7 = [(SASamplePrinter *)&self->super.isa stacksForTask:task taskSampleCount:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        if (v14)
        {
          if ([v14[7] count] > 1)
          {
            v15 = 0;
            goto LABEL_17;
          }

          threads = [taskCopy threads];
          Property = objc_getProperty(v14, v17, 56, 1);
        }

        else
        {
          threads = [taskCopy threads];
          Property = 0;
        }

        firstObject = [Property firstObject];
        v15 = [threads objectForKeyedSubscript:firstObject];

        if (!v14)
        {
          v22 = 0;
          goto LABEL_20;
        }

LABEL_17:
        if ([v14[5] count] > 1)
        {
          firstObject2 = 0;
          goto LABEL_23;
        }

        v22 = objc_getProperty(v14, v20, 40, 1);
LABEL_20:
        firstObject2 = [v22 firstObject];
        null = [MEMORY[0x1E695DFB0] null];

        if (firstObject2 == null)
        {

          firstObject2 = 0;
        }

        if (!v14)
        {
          v28 = 0;
          goto LABEL_26;
        }

LABEL_23:
        if ([v14[6] count] >= 2)
        {
          v26 = [SAThreadCallTree alloc];
          firstObject3 = 0;
LABEL_29:
          v30 = objc_getProperty(v14, v25, 120, 1);
          goto LABEL_30;
        }

        v28 = objc_getProperty(v14, v24, 48, 1);
LABEL_26:
        firstObject3 = [v28 firstObject];
        null2 = [MEMORY[0x1E695DFB0] null];

        if (firstObject3 == null2)
        {

          firstObject3 = 0;
        }

        v26 = [SAThreadCallTree alloc];
        if (v14)
        {
          goto LABEL_29;
        }

        v30 = 0;
LABEL_30:
        v31 = [(SAThreadCallTree *)v26 initWithThread:v15 dispatchQueue:firstObject2 swiftTask:firstObject3 rootObjects:v30];
        [v8 addObject:v31];

        ++v13;
      }

      while (v11 != v13);
      v32 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v11 = v32;
    }

    while (v32);
  }

  v5 = [[SATaskThreadCallTrees alloc] initWithTask:taskCopy threadCallTrees:v8];
LABEL_38:

  return v5;
}

- (id)callTreeForTask:(id)task
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      threads = [task threads];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__SASamplePrinter_addStackForTask_toRootObjects___block_invoke;
      v9[3] = &unk_1E86F80A0;
      v9[4] = self;
      v9[5] = task;
      v9[6] = v6;
      [threads enumerateKeysAndObjectsUsingBlock:v9];
    }

    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v6];
    }

    v5 = [SATaskCallTree initWithTask:task rootObjects:?];
  }

  return v5;
}

- (id)callTreeForDispatchQueue:(id)queue andThread:(id)thread inTask:(id)task
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v9 = 0;
LABEL_11:

    return v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  if (!self)
  {
LABEL_8:
    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v10];
    }

    v9 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:queue swiftTask:0 rootObjects:v10];

    goto LABEL_11;
  }

  if (queue | thread)
  {
    if (thread)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      reportStartTime = self->_reportStartTime;
      reportEndTime = self->_reportEndTime;
      reportStartSampleIndex = self->_reportStartSampleIndex;
      reportEndSampleIndex = self->_reportEndSampleIndex;
      *buf = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __73__SASamplePrinter_addStackForDispatchQueue_andThread_task_toRootObjects___block_invoke;
      v23 = &unk_1E86F70B8;
      queueCopy = queue;
      v25 = v11;
      v16 = v11;
      [thread enumerateThreadStatesBetweenStartTime:reportStartTime startSampleIndex:reportStartSampleIndex endTime:reportEndTime endSampleIndex:reportEndSampleIndex reverseOrder:0 block:buf];
      [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:thread orThread:v16 andThreadStateIndexes:task task:v10 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
    }

    else
    {
      [(SASamplePrinter *)self addStackForDispatchQueue:queue orSwiftTaskStates:0 orThread:0 andThreadStateIndexes:0 task:task toRootObjects:v10 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:0];
    }

    goto LABEL_8;
  }

  v18 = *__error();
  v19 = _sa_logt();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "Neither thread nor dispatchQueue provided", buf, 2u);
  }

  *__error() = v18;
  _SASetCrashLogMessage(14630, "Neither thread nor dispatchQueue provided");
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)callTreeForSwiftTask:(id)task thread:(id)thread inTask:(id)inTask
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(SASamplePrinter *)self addStackForSwiftTask:task andThread:thread task:inTask toRootObjects:v10];
    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v10];
    }

    v9 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:0 swiftTask:task rootObjects:v10];
  }

  return v9;
}

- (id)callTreeForDispatchQueue:(id)queue swiftTask:(id)task thread:(id)thread inTask:(id)inTask
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(SASamplePrinter *)self addStackForSwiftTask:task andThread:thread task:inTask toRootObjects:v12];
    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v12];
    }

    v11 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:queue swiftTask:task rootObjects:v12];
  }

  return v11;
}

- (id)callTreeForThread:(id)thread inTask:(id)task
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      [(SASamplePrinter *)self addStackForDispatchQueue:0 orSwiftTaskStates:thread orThread:0 andThreadStateIndexes:task task:v8 toRootObjects:0 nameChanges:0 dispatchQueueChanges:0 swiftTaskChanges:0 threadChanges:0 priorityChanges:0 microstackshotSummary:0 onlyHeaviestStack:0 includeState:?];
    }

    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v8];
    }

    v7 = [[SAThreadCallTree alloc] initWithThread:thread dispatchQueue:0 swiftTask:0 rootObjects:v8];
  }

  return v7;
}

- (id)callTreeForExecutable:(id)executable
{
  if (([(SASamplePrinter *)self checkForBadOptions]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (self)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      sampleStore = self->_sampleStore;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __55__SASamplePrinter_addStackForExecutable_toRootObjects___block_invoke;
      v15 = &unk_1E86F7FE0;
      executableCopy = executable;
      v17 = v7;
      selfCopy = self;
      v19 = v6;
      v9 = v7;
      [(SASampleStore *)sampleStore enumerateTasks:&v12];
      v10 = [v9 copy];
    }

    else
    {
      v10 = 0;
    }

    if ([(SASamplePrintOptions *)self->_options printHeavyStacks])
    {
      [(SASamplePrinter *)self sortHeavyCallTree:v6];
    }

    v5 = [SAExecutableCallTree initWithTasks:v10 rootObjects:?];
  }

  return v5;
}

@end