@interface SATask
+ (double)taskWithoutReferencesFromPAStyleSerializedTask:(uint64_t)task;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)taskWithPid:(uint64_t)pid uniquePid:(uint64_t)uniquePid name:(uint64_t)name mainBinaryPath:(uint64_t)path forkTime:(uint64_t)time loadInfos:(int)infos numLoadInfos:(uint64_t)loadInfos textExecLoadInfos:(int)self0 numTextExecLoadInfos:(uint64_t)self1 architecture:(uint64_t)self2 sharedCache:;
+ (id)taskWithPid:(uint64_t)pid uniquePid:(uint64_t)uniquePid name:(uint64_t)name sharedCache:;
- (BOOL)addImageInfos:(uint64_t)infos;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)bundleIdentifier;
- (NSString)bundleShortVersion;
- (NSString)bundleVersion;
- (NSString)codesigningID;
- (NSString)debugDescription;
- (NSString)mainBinaryPath;
- (NSString)name;
- (NSString)teamID;
- (SABinary)mainBinary;
- (SABinaryLoadInfo)mainBinaryLoadInfo;
- (SAFrame)truncatedUserStackFrameSwiftAsync:(SAFrame *)async;
- (SATask)initWithPid:(int)pid andUniquePid:(unint64_t)pid andName:(id)name sharedCache:(id)cache;
- (SATask)initWithPid:(int)pid uniquePid:(unint64_t)uniquePid name:(const char *)name mainBinaryPath:(id)path forkTime:(unint64_t)time loadInfos:(const dyld_uuid_info_64 *)infos numLoadInfos:(unsigned int)loadInfos textExecLoadInfos:(const dyld_uuid_info_64 *)self0 numTextExecLoadInfos:(unsigned int)self1 architecture:(_CSArchitecture)self2 sharedCache:(id)self3;
- (id)architectureString;
- (id)endTimestamp;
- (id)firstTaskStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index;
- (id)firstTaskStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index;
- (id)lastTaskStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index;
- (id)lastTaskStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index;
- (id)leafFrameAfterAddingStack:(void *)stack leafOfCRootFramesReplacedBySwiftAsync:;
- (id)removeStacksOutsideThisProcess;
- (id)startTimestamp;
- (uint64_t)_matchesNameStr:(uint64_t)str;
- (uint64_t)addOutOfOrderState:(uint64_t)state;
- (uint64_t)correspondsToName:(uint64_t *)name loadInfos:(int)infos numLoadInfos:(uint64_t)loadInfos architecture:(uint64_t)architecture sharedCache:;
- (uint64_t)correspondsToName:(void *)name mainBinaryLoadInfo:(uint64_t)info architecture:(uint64_t)architecture sharedCache:;
- (uint64_t)correspondsToPid:(uint64_t)pid name:(uint64_t *)name loadInfos:(int)infos numLoadInfos:(void *)loadInfos textExecLoadInfos:(int)execLoadInfos numTextExecLoadInfos:(uint64_t)textExecLoadInfos architecture:(uint64_t)architecture sharedCache:;
- (uint64_t)correspondsToUniquePid:(uint64_t)pid name:(uint64_t *)name loadInfos:(int)infos numLoadInfos:(void *)loadInfos textExecLoadInfos:(int)execLoadInfos numTextExecLoadInfos:(uint64_t)textExecLoadInfos architecture:(uint64_t)architecture sharedCache:;
- (uint64_t)gatherLoadInfoFromLiveProcessWithDataGatheringOptions:(uint64_t)options additionalCSSymbolicatorFlags:;
- (uint64_t)isAliveAtTimestamp:(void *)timestamp;
- (uint64_t)isFromCurrentBootCycle;
- (unint64_t)indexOfFirstTaskStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index;
- (unint64_t)indexOfFirstTaskStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index;
- (unint64_t)indexOfLastTaskStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index;
- (unint64_t)indexOfLastTaskStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index;
- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)start end:(unint64_t)end;
- (unint64_t)sampleCountInTimestampRangeStart:(id)start end:(id)end;
- (unint64_t)sizeInBytesForSerializedVersion;
- (void)_gatherDataFromLiveProcessIsLate:(void *)late mainBinaryPath:;
- (void)_incorporateNewKernelLoadInfos:(int)infos numLoadInfos:(void *)loadInfos textExecLoadInfos:(int)execLoadInfos numTextExecLoadInfos:;
- (void)addDispatchQueue:(uint64_t)queue;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)addSwiftTask:(uint64_t)task;
- (void)addThread:(uint64_t)thread;
- (void)cpuTimeNs:(void *)ns cpuInstructions:(void *)instructions cpuCycles:(void *)cycles nonThreadCpuTimeNs:(void *)timeNs nonThreadCpuInstructions:(void *)cpuInstructions nonThreadCpuCycles:(uint64_t)cpuCycles betweenStartTime:(void *)time endTime:;
- (void)dealloc;
- (void)enumerateFrames:(uint64_t)frames;
- (void)enumerateTaskStatesBetweenStartTime:(id)time endTime:(id)endTime reverseOrder:(BOOL)order withSampleIndex:(BOOL)index block:(id)block;
- (void)enumerateTaskStatesBetweenStartTime:(id)time startSampleIndex:(unint64_t)index endTime:(id)endTime endSampleIndex:(unint64_t)sampleIndex reverseOrder:(BOOL)order block:(id)block;
- (void)enumerateThreadStatesForThread:(unint64_t)thread dispatchQueue:(uint64_t)queue betweenStartTime:(unint64_t)time startSampleIndex:(uint64_t)index endTime:(unint64_t)endTime endSampleIndex:(uint64_t)sampleIndex reverseOrder:(uint64_t)order block:;
- (void)fixupFrameInstructionsWithDataGatheringOptions:(int)options mightBeAlive:(_BYTE *)alive foundNewBinaryInfo:(uint64_t)info uuidsWithNewInstructions:(uint64_t)instructions additionalCSSymbolicatorFlags:;
- (void)fixupThreadSuspension;
- (void)guessArchitectureGivenMachineArchitecture:(uint64_t)architecture dataSource:;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedTask:(void *)task andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
- (void)postprocessWithDataGatheringOptions:(int)options mightBeAlive:(void *)alive machineArchitecture:(uint64_t)architecture dataSource:(uint64_t)source spindumpArchitecture:(void *)spindumpArchitecture spindumpSharedCache:(uint64_t)cache additionalCSSymbolicatorFlags:;
- (void)setMainBinaryPath:(id)path;
- (void)setName:(uint64_t)name;
@end

@implementation SATask

- (id)startTimestamp
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v3 = self->_execTimestamp;
  v16 = v3;
  if (!v3)
  {
    firstObject = [(NSMutableArray *)self->_taskStates firstObject];
    startTimestamp = [firstObject startTimestamp];
    v6 = v12[5];
    v12[5] = startTimestamp;

    v3 = v12[5];
    if (!v3)
    {
      threads = self->_threads;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __24__SATask_startTimestamp__block_invoke;
      v10[3] = &unk_1E86F6000;
      v10[4] = &v11;
      [(NSMutableDictionary *)threads enumerateKeysAndObjectsUsingBlock:v10];
      v3 = v12[5];
    }
  }

  v8 = v3;
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)endTimestamp
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v3 = self->_exitTimestamp;
  v16 = v3;
  if (!v3)
  {
    lastObject = [(NSMutableArray *)self->_taskStates lastObject];
    endTimestamp = [lastObject endTimestamp];
    v6 = v12[5];
    v12[5] = endTimestamp;

    v3 = v12[5];
    if (!v3)
    {
      threads = self->_threads;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __22__SATask_endTimestamp__block_invoke;
      v10[3] = &unk_1E86F6000;
      v10[4] = &v11;
      [(NSMutableDictionary *)threads enumerateKeysAndObjectsUsingBlock:v10];
      v3 = v12[5];
    }
  }

  v8 = v3;
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
    Path = name;
  }

  else
  {
    mainBinaryPath = [(SATask *)self mainBinaryPath];
    Path = [(NSString *)mainBinaryPath copyLastPathComponent];
  }

  return Path;
}

- (SABinary)mainBinary
{
  mainBinary = self->_mainBinary;
  if (mainBinary)
  {
    binary = mainBinary;
  }

  else
  {
    mainBinaryLoadInfo = [(SATask *)self mainBinaryLoadInfo];
    binary = [mainBinaryLoadInfo binary];
  }

  return binary;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_rootFrames;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [SAFrame releaseFrameTree:?];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SATask;
  [(SATask *)&v8 dealloc];
}

void __22__SATask_endTimestamp__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 exitTimestamp];
  if (v5)
  {
    v6 = v5;
    goto LABEL_4;
  }

  v7 = [a3 threadStates];
  v8 = [v7 lastObject];
  obja = [v8 endTimestamp];

  v6 = obja;
  if (obja)
  {
LABEL_4:
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    obj = v6;
    if (v10)
    {
      if (![v10 lt:?])
      {
LABEL_8:
        v11 = obj;
        goto LABEL_9;
      }

      v9 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v9 + 40), obj);
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:
}

- (NSString)mainBinaryPath
{
  mainBinaryPath = self->_mainBinaryPath;
  if (mainBinaryPath)
  {
    path = mainBinaryPath;
  }

  else
  {
    mainBinary = [(SATask *)self mainBinary];
    path = [mainBinary path];
  }

  return path;
}

- (SABinaryLoadInfo)mainBinaryLoadInfo
{
  binaryLoadInfos = self->_binaryLoadInfos;
  if (!binaryLoadInfos || ![(NSArray *)binaryLoadInfos count])
  {
    goto LABEL_9;
  }

  if ((CSArchitectureIs32Bit() & 1) != 0 || self->_pid)
  {
    firstObject = [(NSArray *)self->_binaryLoadInfos firstObject];
  }

  else
  {
    firstObject = [(NSArray *)self->_binaryLoadInfos lastObject];
  }

  v5 = firstObject;
  if (self->_mainBinary)
  {
    binary = [firstObject binary];
    mainBinary = self->_mainBinary;

    if (binary != mainBinary)
    {

LABEL_9:
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)bundleVersion
{
  mainBinary = [(SATask *)self mainBinary];
  bundleVersion = [mainBinary bundleVersion];

  return bundleVersion;
}

- (NSString)codesigningID
{
  mainBinary = [(SATask *)self mainBinary];
  codesigningID = [mainBinary codesigningID];

  return codesigningID;
}

- (NSString)bundleIdentifier
{
  mainBinary = [(SATask *)self mainBinary];
  bundleIdentifier = [mainBinary bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)bundleShortVersion
{
  mainBinary = [(SATask *)self mainBinary];
  bundleShortVersion = [mainBinary bundleShortVersion];

  return bundleShortVersion;
}

- (NSString)teamID
{
  mainBinary = [(SATask *)self mainBinary];
  teamID = [mainBinary teamID];

  return teamID;
}

- (id)architectureString
{
  architecture = self->_architecture;
  if (architecture)
  {
    architecture = CSArchitectureGetFamilyName();
    if (architecture)
    {
      architecture = SANSStringForCString(architecture);
    }

    v2 = vars8;
  }

  return architecture;
}

- (uint64_t)addOutOfOrderState:(uint64_t)state
{
  if (!state)
  {
    return 0;
  }

  v4 = *(state + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__SATask_addOutOfOrderState___block_invoke;
  v7[3] = &unk_1E86F8610;
  v7[4] = a2;
  v5 = SABinarySearchArray(v4, 1024, v7);
  [*(state + 8) insertObject:a2 atIndex:v5];
  return v5;
}

uint64_t __29__SATask_addOutOfOrderState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) startTimestamp];
  v4 = [a2 startTimestamp];
  v5 = [v3 compare:v4];

  return v5;
}

- (void)addThread:(uint64_t)thread
{
  if (thread)
  {
    v3 = *(thread + 16);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "threadId")}];
    [v3 setObject:a2 forKeyedSubscript:v4];
  }
}

- (void)addDispatchQueue:(uint64_t)queue
{
  if (queue)
  {
    v3 = *(queue + 24);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "identifier")}];
    [v3 setObject:a2 forKeyedSubscript:v4];
  }
}

- (void)addSwiftTask:(uint64_t)task
{
  if (task)
  {
    v3 = *(task + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a2, "identifier")}];
    [v3 setObject:a2 forKeyedSubscript:v4];
  }
}

- (void)guessArchitectureGivenMachineArchitecture:(uint64_t)architecture dataSource:
{
  v73 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if (*(self + 288))
  {
    v37 = *__error();
    v38 = _sa_logt();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [self debugDescription];
      *buf = 136315906;
      uTF8String = [v39 UTF8String];
      v67 = 2080;
      FamilyName = CSArchitectureGetFamilyName();
      v69 = 2080;
      v70 = CSArchitectureGetFamilyName();
      v71 = 2048;
      architectureCopy = architecture;
      _os_log_error_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_ERROR, "%s: already know architecture %s, but guessing from machine architecture %s (data source 0x%llx)", buf, 0x2Au);
    }

    *__error() = v37;
    v40 = [self debugDescription];
    uTF8String2 = [v40 UTF8String];
    v41 = CSArchitectureGetFamilyName();
    v42 = CSArchitectureGetFamilyName();
    _SASetCrashLogMessage(106, "%s: already know architecture %s, but guessing from machine architecture %s (data source 0x%llx)", uTF8String2, v41, v42, architecture);

    _os_crash();
    __break(1u);
    goto LABEL_70;
  }

  Family = CSArchitectureGetFamily();
  v7 = Family;
  v8 = HIDWORD(Family);
  if (CSArchitectureIs32Bit())
  {
    goto LABEL_4;
  }

  if ((architecture & 5) != 0)
  {
    lastObject = [*(self + 8) lastObject];
    if (lastObject)
    {
      v10 = lastObject;
      v49 = lastObject;
      if ((architecture & 1) == 0 && !*(self + 80) || (v11 = [lastObject ssFlags], v10 = v49, (v11 & 1) == 0))
      {
        if ((architecture & 4) == 0 || *(self + 80) || (v12 = [v10 ssFlags], v10 = v49, (v12 & 2) == 0))
        {
          v7 &= ~0x1000000u;
        }
      }

      *(self + 288) = v7;
      *(self + 292) = v8;

      return;
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = *(self + 256);
  v14 = [v13 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v59;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v58 + 1) + 8 * i);
        if ([v18 loadAddress] >> 32)
        {
          goto LABEL_33;
        }

        if ([v18 loadAddress])
        {
          v7 &= ~0x1000000u;
LABEL_33:
          *(self + 288) = v7;
LABEL_34:
          *(self + 292) = v8;
LABEL_35:

          return;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v15);
  }

  v19 = *(self + 264);
  if (v19 && [v19 startAddress] != -1)
  {
    if ([*(self + 264) startAddress] >> 32)
    {
      goto LABEL_4;
    }

    if ([*(self + 264) startAddress])
    {
      *(self + 288) = v7 & 0xFEFFFFFF;
      goto LABEL_5;
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = *(self + 280);
  v20 = [v13 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (!v20)
  {
    goto LABEL_50;
  }

  v21 = v20;
  v22 = *v55;
  do
  {
    v23 = 0;
    do
    {
      if (*v55 != v22)
      {
        objc_enumerationMutation(v13);
      }

      v24 = *(*(&v54 + 1) + 8 * v23);
      if (v24)
      {
        a2 = *(v24 + 40);
        if (!a2)
        {
          goto LABEL_46;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          anyObject = a2;
LABEL_60:
          uTF8String2 = anyObject;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            address = [uTF8String2 address];
            v34 = v7 & 0xFEFFFFFF;
            if (HIDWORD(address))
            {
              v34 = v7;
            }

            *(self + 288) = v34;
            *(self + 292) = v8;

            goto LABEL_35;
          }

LABEL_70:
          v43 = *__error();
          v44 = _sa_logt();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            ClassName = object_getClassName(a2);
            v46 = object_getClassName(uTF8String2);
            *buf = 136315394;
            uTF8String = ClassName;
            v67 = 2080;
            FamilyName = v46;
            _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "children is %s, child is %s", buf, 0x16u);
          }

          *__error() = v43;
          v47 = object_getClassName(a2);
          v48 = object_getClassName(uTF8String2);
          _SASetCrashLogMessage(160, "children is %s, child is %s", v47, v48);
          _os_crash();
          __break(1u);
        }

        anyObject = [a2 anyObject];
        if (anyObject)
        {
          goto LABEL_60;
        }
      }

      else
      {
        a2 = 0;
      }

LABEL_46:

      ++v23;
    }

    while (v21 != v23);
    v26 = [v13 countByEnumeratingWithState:&v54 objects:v63 count:16];
    v21 = v26;
  }

  while (v26);
LABEL_50:

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = *(self + 280);
  v27 = [v13 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    while (2)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v13);
        }

        v31 = *(*(&v50 + 1) + 8 * j);
        if (![v31 isFakeFrame])
        {
          address2 = [v31 address];
          v36 = v7 & 0xFEFFFFFF;
          if (HIDWORD(address2))
          {
            v36 = v7;
          }

          *(self + 288) = v36;
          goto LABEL_34;
        }
      }

      v28 = [v13 countByEnumeratingWithState:&v50 objects:v62 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_4:
  *(self + 288) = v7;
LABEL_5:
  *(self + 292) = v8;
}

- (void)setMainBinaryPath:(id)path
{
  v26 = *MEMORY[0x1E69E9840];
  if (path)
  {
    mainBinary = [(SATask *)self mainBinary];
    v6 = mainBinary;
    if (mainBinary)
    {
      v19 = 0;
      path = [mainBinary path];
      v8 = SAFilepathMatches(path, path, &v19);

      if (v8)
      {
        if (v19 == 1)
        {
          objc_setProperty_atomic_copy(v6, v9, path, 80);
        }

        v10 = 0;
        goto LABEL_14;
      }

      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = [(SATask *)self debugDescription];
        path2 = [v6 path];
        *buf = 138412802;
        v21 = v17;
        v22 = 2112;
        pathCopy = path;
        v24 = 2112;
        v25 = path2;
        _os_log_debug_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_DEBUG, "%@: Setting mainBinaryPath to %@ when its already %@", buf, 0x20u);
      }

      *__error() = v12;
    }

    v10 = SACachedNSString(path);
LABEL_14:
    mainBinaryPath = self->_mainBinaryPath;
    self->_mainBinaryPath = v10;

    if (self->_name)
    {
      Path = [(NSString *)path copyLastPathComponent];
      if ([Path hasPrefix:self->_name])
      {
        name = self->_name;
        self->_name = 0;
      }
    }

    return;
  }

  v11 = self->_mainBinaryPath;
  self->_mainBinaryPath = 0;
}

- (void)setName:(uint64_t)name
{
  v13 = *MEMORY[0x1E69E9840];
  if (name)
  {
    if (a2 && ![a2 length])
    {
      v6 = *__error();
      v7 = _sa_logt();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [name debugDescription];
        v9 = v10 = v6;
        *buf = 136315138;
        uTF8String = [v9 UTF8String];
        _os_log_fault_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_FAULT, "%s: applying emptry string for task name", buf, 0xCu);

        v6 = v10;
      }

      *__error() = v6;
      v8 = *(name + 56);
      *(name + 56) = 0;
    }

    else if (!*(name + 80) || ([a2 isEqualToString:@"kernel_task"] & 1) == 0)
    {
      v4 = [a2 copy];
      v5 = *(name + 56);
      *(name + 56) = v4;
    }
  }
}

- (SATask)initWithPid:(int)pid andUniquePid:(unint64_t)pid andName:(id)name sharedCache:(id)cache
{
  v34 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = SATask;
  v10 = [(SATask *)&v31 init];
  v11 = v10;
  if (v10)
  {
    v12 = NAN;
    if (pid <= 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    *&v10->_rpid = 0xFFFFFEC6FFFFFFFFLL;
    v10->_pid = pid;
    v10->_ppid = v13;
    v10->_uniquePid = pid;
    if (name)
    {
      if (![name length])
      {
        v25 = *__error();
        v26 = _sa_logt();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          [(SATask *)v11 debugDescription];
          v28 = v30 = v25;
          uTF8String = [v28 UTF8String];
          *buf = 136315138;
          v33 = uTF8String;
          _os_log_fault_impl(&dword_1E0E2F000, v26, OS_LOG_TYPE_FAULT, "%s: applying empty string for task name", buf, 0xCu);

          v25 = v30;
        }

        *__error() = v25;
        name = v11->_name;
        v11->_name = 0;
      }

      pid = v11->_pid;
    }

    if (!pid || ([name isEqualToString:{@"kernel_task", v12}] & 1) == 0)
    {
      v14 = [name copy];
      v15 = v11->_name;
      v11->_name = v14;
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dispatchQueues = v11->_dispatchQueues;
    v11->_dispatchQueues = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    swiftTasks = v11->_swiftTasks;
    v11->_swiftTasks = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    threads = v11->_threads;
    v11->_threads = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    taskStates = v11->_taskStates;
    v11->_taskStates = v22;

    objc_storeStrong(&v11->_sharedCache, cache);
  }

  return v11;
}

+ (id)taskWithPid:(uint64_t)pid uniquePid:(uint64_t)uniquePid name:(uint64_t)name sharedCache:
{
  v5 = [objc_alloc(objc_opt_self()) initWithPid:a2 andUniquePid:pid andName:uniquePid sharedCache:name];

  return v5;
}

- (SATask)initWithPid:(int)pid uniquePid:(unint64_t)uniquePid name:(const char *)name mainBinaryPath:(id)path forkTime:(unint64_t)time loadInfos:(const dyld_uuid_info_64 *)infos numLoadInfos:(unsigned int)loadInfos textExecLoadInfos:(const dyld_uuid_info_64 *)self0 numTextExecLoadInfos:(unsigned int)self1 architecture:(_CSArchitecture)self2 sharedCache:(id)self3
{
  v17 = *&pid;
  v46 = *MEMORY[0x1E69E9840];
  if (name && *name)
  {
    v19 = SANSStringForCString(name);
  }

  else
  {
    v19 = 0;
  }

  v20 = [(SATask *)self initWithPid:v17 andUniquePid:uniquePid andName:v19 sharedCache:cache];
  if (v20)
  {
    if (time)
    {
      v21 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:time - *MEMORY[0x1E695E468]];
      forkTimestamp = v20->_forkTimestamp;
      v20->_forkTimestamp = v21;
    }

    v20->_architecture = architecture;
    if (!v17)
    {
      [(SATask *)v20 _incorporateNewKernelLoadInfos:infos numLoadInfos:loadInfos textExecLoadInfos:execLoadInfos numTextExecLoadInfos:textExecLoadInfos];
      goto LABEL_14;
    }

    if (execLoadInfos || textExecLoadInfos)
    {
      v26 = *__error();
      v27 = _sa_logt();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v37 = [(SATask *)v20 debugDescription];
        uTF8String = [v37 UTF8String];
        if (execLoadInfos)
        {
          imageLoadAddress = execLoadInfos->imageLoadAddress;
          add_explicit = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
          v30 = add_explicit & 3;
          v32 = -add_explicit;
          v31 = v32 < 0;
          v33 = v32 & 3;
          if (v31)
          {
            v34 = v30;
          }

          else
          {
            v34 = -v33;
          }

          v28 = &uuid_string_string[37 * v34];
          uuid_unparse(execLoadInfos->imageUUID, v28);
        }

        else
        {
          imageLoadAddress = 0;
          v28 = "null";
        }

        *buf = 136315906;
        v39 = uTF8String;
        v40 = 1024;
        textExecLoadInfosCopy = textExecLoadInfos;
        v42 = 2048;
        v43 = imageLoadAddress;
        v44 = 2080;
        v45 = v28;
        _os_log_fault_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_FAULT, "%s has text-exec %u load infos (first is 0x%llx %s)", buf, 0x26u);
      }

      *__error() = v26;
      if (loadInfos)
      {
        goto LABEL_12;
      }
    }

    else if (loadInfos)
    {
LABEL_12:
      v23 = _SABinaryCreateLoadInfoArrayFromDyldImageInfos(infos, loadInfos, path, 0, 0, 0);
      binaryLoadInfos = v20->_binaryLoadInfos;
      v20->_binaryLoadInfos = v23;

      v20->_assumeBinaryLoadInfosContainsMainBinary = 1;
    }
  }

LABEL_14:

  return v20;
}

- (void)_incorporateNewKernelLoadInfos:(int)infos numLoadInfos:(void *)loadInfos textExecLoadInfos:(int)execLoadInfos numTextExecLoadInfos:
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v8 = a2;
  if (!a2 && infos)
  {
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      execLoadInfosCopy = infos;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "%u load infos, but null", buf, 8u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(1352, "%u load infos, but null", infos);
    _os_crash();
    __break(1u);
LABEL_28:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      execLoadInfosCopy = execLoadInfos;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%u text exec load infos, but null", buf, 8u);
    }

    *__error() = v23;
    _SASetCrashLogMessage(1353, "%u text exec load infos, but null", execLoadInfos);
    _os_crash();
    __break(1u);
  }

  if (!loadInfos && execLoadInfos)
  {
    goto LABEL_28;
  }

  if ([*(self + 256) count] < (execLoadInfos + infos))
  {
    v10 = _SABinaryCreateLoadInfoArrayFromDyldImageInfos(v8, infos, 0, loadInfos, execLoadInfos, 1);
    v11 = v10;
    if (!*(self + 48))
    {
      if (infos || (v8 = loadInfos, execLoadInfos))
      {
        v12 = *v8;
      }

      else
      {
        v12 = 0;
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            if ([v18 loadAddress] == v12)
            {
              binary = [v18 binary];
              v20 = *(self + 48);
              *(self + 48) = binary;

              goto LABEL_21;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
    }

    [(SATask *)self addImageInfos:v11];
    *(self + 79) = 1;
  }
}

+ (id)taskWithPid:(uint64_t)pid uniquePid:(uint64_t)uniquePid name:(uint64_t)name mainBinaryPath:(uint64_t)path forkTime:(uint64_t)time loadInfos:(int)infos numLoadInfos:(uint64_t)loadInfos textExecLoadInfos:(int)self0 numTextExecLoadInfos:(uint64_t)self1 architecture:(uint64_t)self2 sharedCache:
{
  LODWORD(v15) = execLoadInfos;
  LODWORD(v14) = infos;
  v12 = [objc_alloc(objc_opt_self()) initWithPid:a2 uniquePid:pid name:uniquePid mainBinaryPath:name forkTime:path loadInfos:time numLoadInfos:v14 textExecLoadInfos:loadInfos numTextExecLoadInfos:v15 architecture:textExecLoadInfos sharedCache:architecture];

  return v12;
}

- (unint64_t)indexOfFirstTaskStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index
{
  if (![(NSMutableArray *)self->_taskStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (time)
  {
    taskStates = self->_taskStates;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__SATask_indexOfFirstTaskStateOnOrAfterTime_sampleIndex___block_invoke;
    v12[3] = &unk_1E86F8610;
    v12[4] = time;
    time = SABinarySearchArray(taskStates, 1280, v12);
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL && time < [(NSMutableArray *)self->_taskStates count])
  {
    do
    {
      v8 = [(NSMutableArray *)self->_taskStates objectAtIndexedSubscript:time];
      if ([v8 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v9 = [(NSMutableArray *)self->_taskStates objectAtIndexedSubscript:time];
        endSampleIndex = [v9 endSampleIndex];

        if (endSampleIndex >= index)
        {
          break;
        }
      }

      time = time + 1;
    }

    while (time < [(NSMutableArray *)self->_taskStates count]);
  }

  if (time >= [(NSMutableArray *)self->_taskStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return time;
  }
}

uint64_t __57__SATask_indexOfFirstTaskStateOnOrAfterTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)firstTaskStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index
{
  v5 = [(SATask *)self indexOfFirstTaskStateOnOrAfterTime:time sampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_taskStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (unint64_t)indexOfLastTaskStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index
{
  if (![(NSMutableArray *)self->_taskStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  taskStates = self->_taskStates;
  if (time)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SATask_indexOfLastTaskStateOnOrBeforeTime_sampleIndex___block_invoke;
    v14[3] = &unk_1E86F8610;
    v14[4] = time;
    v8 = SABinarySearchArray(taskStates, 1536, v14);
    if (!v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = [(NSMutableArray *)taskStates count];
  }

  v9 = v8 - 1;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v9;
  }

  while (1)
  {
    v11 = [(NSMutableArray *)self->_taskStates objectAtIndexedSubscript:v9];
    if ([v11 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v12 = [(NSMutableArray *)self->_taskStates objectAtIndexedSubscript:v9];
      startSampleIndex = [v12 startSampleIndex];

      if (startSampleIndex <= index)
      {
        return v9;
      }
    }

    if (!v9)
    {
      break;
    }

    --v9;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __57__SATask_indexOfLastTaskStateOnOrBeforeTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)lastTaskStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index
{
  v5 = [(SATask *)self indexOfLastTaskStateOnOrBeforeTime:time sampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_taskStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)firstTaskStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index
{
  if (index)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SATask *)self firstTaskStateOnOrAfterTime:time sampleIndex:v4];
}

- (unint64_t)indexOfFirstTaskStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index
{
  if (index)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SATask *)self indexOfFirstTaskStateOnOrAfterTime:time sampleIndex:v4];
}

- (id)lastTaskStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index
{
  v5 = [(SATask *)self indexOfLastTaskStateOnOrBeforeTime:time withSampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_taskStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (unint64_t)indexOfLastTaskStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index
{
  indexCopy = index;
  lastObject = [(NSMutableArray *)self->_taskStates lastObject];
  v8 = lastObject;
  if (lastObject)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (!indexCopy || (v10 = 0x7FFFFFFFFFFFFFFFLL, v9 = [lastObject endSampleIndex], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [(SATask *)self indexOfLastTaskStateOnOrBeforeTime:time sampleIndex:v9];
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)enumerateTaskStatesBetweenStartTime:(id)time startSampleIndex:(unint64_t)index endTime:(id)endTime endSampleIndex:(unint64_t)sampleIndex reverseOrder:(BOOL)order block:(id)block
{
  v13 = [(SATask *)self indexOfFirstTaskStateOnOrAfterTime:time sampleIndex:index];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v13;
    v15 = [(SATask *)self indexOfLastTaskStateOnOrBeforeTime:endTime sampleIndex:sampleIndex];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if (v14 <= v15)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __105__SATask_enumerateTaskStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke;
        v19[3] = &unk_1E86F7068;
        v19[4] = self;
        v19[5] = block;
        v17 = MEMORY[0x1E12EBE50](v19);
        if (order)
        {
          do
          {
            if (v16 + 1 <= v14)
            {
              break;
            }

            v18 = v17[2](v17, v16--);
          }

          while ((v18 & 1) == 0);
        }

        else
        {
          do
          {
            if (v17[2](v17, v14))
            {
              break;
            }

            ++v14;
          }

          while (v14 <= v16);
        }
      }
    }
  }
}

uint64_t __105__SATask_enumerateTaskStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:a2];
  (*(v3 + 16))(v3, v4, a2, &v6);

  return v6;
}

- (void)enumerateTaskStatesBetweenStartTime:(id)time endTime:(id)endTime reverseOrder:(BOOL)order withSampleIndex:(BOOL)index block:(id)block
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__SATask_enumerateTaskStatesBetweenStartTime_endTime_reverseOrder_withSampleIndex_block___block_invoke;
  v7[3] = &unk_1E86F8638;
  indexCopy = index;
  v7[4] = block;
  [(SATask *)self enumerateTaskStatesBetweenStartTime:time startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:endTime endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:order block:v7];
}

void *__89__SATask_enumerateTaskStatesBetweenStartTime_endTime_reverseOrder_withSampleIndex_block___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1 || (result = [a2 startSampleIndex], result != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)enumerateThreadStatesForThread:(unint64_t)thread dispatchQueue:(uint64_t)queue betweenStartTime:(unint64_t)time startSampleIndex:(uint64_t)index endTime:(unint64_t)endTime endSampleIndex:(uint64_t)sampleIndex reverseOrder:(uint64_t)order block:
{
  if (self)
  {
    if (a2 | thread)
    {
      if (a2)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __131__SATask_enumerateThreadStatesForThread_dispatchQueue_betweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke;
        v12[3] = &unk_1E86F8660;
        v12[5] = a2;
        v12[6] = order;
        v12[4] = thread;
        [a2 enumerateThreadStatesBetweenStartTime:queue startSampleIndex:time endTime:index endSampleIndex:endTime reverseOrder:sampleIndex block:v12];
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __131__SATask_enumerateThreadStatesForThread_dispatchQueue_betweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke_2;
        v11[3] = &unk_1E86F8050;
        v11[4] = order;
        [(SARecipe *)thread enumerateStatesBetweenStartTime:queue startSampleIndex:time endTime:index endSampleIndex:endTime reverseOrder:sampleIndex block:v11];
      }
    }

    else
    {
      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "No thread nor dispatch queue", buf, 2u);
      }

      *__error() = v9;
      _SASetCrashLogMessage(534, "No thread nor dispatch queue");
      _os_crash();
      __break(1u);
    }
  }
}

void __131__SATask_enumerateThreadStatesForThread_dispatchQueue_betweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke(uint64_t a1, void *a2)
{
  if (!*(a1 + 32) || ([a2 dispatchQueue], v3 = objc_claimAutoreleasedReturnValue(), v4 = *(a1 + 32), v3, v3 == v4))
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __131__SATask_enumerateThreadStatesForThread_dispatchQueue_betweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = [a2 thread];
  v6 = [a2 threadState];
  (*(v5 + 16))(v5, v7, v6, [a2 threadStateIndex], a3);
}

- (uint64_t)gatherLoadInfoFromLiveProcessWithDataGatheringOptions:(uint64_t)options additionalCSSymbolicatorFlags:
{
  v61 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v4 = 0;
  if ((a2 & 2) != 0 && (*(self + 64) & 1) == 0)
  {
    if ((a2 & 0x400) == 0 && *(self + 80))
    {
      return 0;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (*(self + 64))
    {
      v4 = 0;
LABEL_39:
      objc_sync_exit(selfCopy);

      return v4;
    }

    *(self + 64) = 1;
    v53 = 0;
    v54 = 0;
    v8 = *(selfCopy + 20);
    v51 = 0;
    v52 = 0;
    v50 = 0;
    CopyLoadInfosForLiveProcess(v8, a2, &v53, &v52, &v51, &v50, &v54, options);
    v9 = v53;
    v10 = v53;
    v49 = v52;
    v11 = v51;
    v12 = v51;
    v13 = v50;
    v14 = v50;
    v15 = v14;
    if (!v10)
    {
      v20 = *__error();
      v21 = _sa_logt();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v35 = [selfCopy debugDescription];
        *buf = 138412290;
        v56 = v35;
        _os_log_debug_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_DEBUG, "%@: Unable to inspect live processes for images infos", buf, 0xCu);
      }

      v4 = 0;
      *__error() = v20;
      goto LABEL_38;
    }

    if (*(selfCopy + 20))
    {
      firstObject = [v10 firstObject];
      binary = [firstObject binary];
      name = [binary name];
      v19 = [(SATask *)selfCopy correspondsToName:name mainBinaryLoadInfo:firstObject architecture:v54 sharedCache:v12];

      if ((v19 & 1) == 0)
      {
        v22 = *__error();
        v23 = _sa_logt();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v47 = [selfCopy debugDescription];
          mainBinaryLoadInfo = [selfCopy mainBinaryLoadInfo];
          v39 = [mainBinaryLoadInfo debugDescription];
          v40 = [firstObject debugDescription];
          *buf = 138412802;
          v56 = v47;
          v57 = 2112;
          v58 = v39;
          v59 = 2112;
          v60 = v40;
          _os_log_debug_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_DEBUG, "%@: live process has changed %@ -> %@", buf, 0x20u);
        }

        *__error() = v22;
        v4 = 0;
        goto LABEL_38;
      }
    }

    else if (v14)
    {
      objc_storeStrong(selfCopy + 6, v13);
    }

    else
    {
      v24 = *__error();
      v25 = _sa_logt();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v42 = *(selfCopy + 20);
        *buf = 67109120;
        LODWORD(v56) = v42;
        _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "[%d] Unable to determine main binary", buf, 8u);
      }

      *__error() = v24;
    }

    if (v54)
    {
      selfCopy[36] = v54;
    }

    else
    {
      v26 = *__error();
      v27 = _sa_logt();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v41 = *(selfCopy + 20);
        *buf = 67109120;
        LODWORD(v56) = v41;
        _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "[%d] Unable to determine architecture", buf, 8u);
      }

      *__error() = v26;
    }

    v28 = [selfCopy[32] count];
    objc_storeStrong(selfCopy + 32, v9);
    v29 = selfCopy[33];
    if (v29 && v12 != v29)
    {
      v43 = *__error();
      v44 = _sa_logt();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        v48 = [selfCopy debugDescription];
        v45 = [v12 debugDescription];
        v46 = [selfCopy[33] debugDescription];
        *buf = 138412802;
        v56 = v48;
        v57 = 2112;
        v58 = v45;
        v59 = 2112;
        v60 = v46;
        _os_log_fault_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_FAULT, "%@: Got dyld shared cache %@ though have existing %@", buf, 0x20u);
      }

      *__error() = v43;
    }

    objc_storeStrong(selfCopy + 33, v11);
    if (v28 == [v10 count])
    {
      v30 = *__error();
      v31 = _sa_logt();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [selfCopy debugDescription];
        v33 = [selfCopy[32] count];
        *buf = 138412546;
        v56 = v32;
        v57 = 2048;
        v58 = v33;
        _os_log_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_INFO, "%@: Inspected live processes for %lu images infos, nothing new", buf, 0x16u);
      }
    }

    else
    {
      v30 = *__error();
      v31 = _sa_logt();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v36 = [selfCopy debugDescription];
        v37 = [selfCopy[32] count];
        *buf = 138412802;
        v56 = v36;
        v57 = 2048;
        v58 = v37;
        v59 = 2048;
        v60 = v28;
        _os_log_debug_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_DEBUG, "%@: Inspected live processes for %lu images infos (%lu previously)", buf, 0x20u);
      }
    }

    *__error() = v30;
    v4 = 1;
    *(selfCopy + 79) = 1;
LABEL_38:

    goto LABEL_39;
  }

  return v4;
}

- (uint64_t)correspondsToName:(void *)name mainBinaryLoadInfo:(uint64_t)info architecture:(uint64_t)architecture sharedCache:
{
  v9 = a2;
  v10 = v9;
  if (v9 && ![v9 length])
  {

    v10 = 0;
    if (!architecture)
    {
      goto LABEL_8;
    }
  }

  else if (!architecture)
  {
    goto LABEL_8;
  }

  v11 = *(self + 264);
  if (v11 && v11 != architecture)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (*(self + 288) && info && !CSArchitectureMatchesArchitecture())
  {
    goto LABEL_25;
  }

  if (name)
  {
    if ([name loadAddress])
    {
      if (*(self + 79) == 1)
      {
        mainBinaryLoadInfo = [self mainBinaryLoadInfo];
        if (mainBinaryLoadInfo)
        {
          v13 = mainBinaryLoadInfo;
          loadAddress = [mainBinaryLoadInfo loadAddress];
          segment = [v13 segment];
          v16 = segment;
          if (segment)
          {
            if ([segment hasOffsetIntoBinary])
            {
              segment2 = [v13 segment];
              loadAddress -= [segment2 offsetIntoBinary];
            }

            else
            {
              loadAddress = [name loadAddress];
            }
          }

          if (loadAddress == [name loadAddress])
          {
            binary = [v13 binary];
            uuid = [binary uuid];
            binary2 = [name binary];
            uuid2 = [binary2 uuid];
            v23 = [uuid isEqual:uuid2];

            if (v23)
            {

              goto LABEL_19;
            }
          }

LABEL_25:
          v18 = 0;
          goto LABEL_26;
        }
      }
    }
  }

  if (([(SATask *)self _matchesNameStr:v10]& 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v18 = 1;
LABEL_26:

  return v18;
}

- (void)postprocessWithDataGatheringOptions:(int)options mightBeAlive:(void *)alive machineArchitecture:(uint64_t)architecture dataSource:(uint64_t)source spindumpArchitecture:(void *)spindumpArchitecture spindumpSharedCache:(uint64_t)cache additionalCSSymbolicatorFlags:
{
  v251 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v196 = 0;
    v197 = &v196;
    v198 = 0x2020000000;
    v199 = 0;
    v195[0] = MEMORY[0x1E69E9820];
    v195[1] = 3221225472;
    v195[2] = __161__SATask_postprocessWithDataGatheringOptions_mightBeAlive_machineArchitecture_dataSource_spindumpArchitecture_spindumpSharedCache_additionalCSSymbolicatorFlags___block_invoke;
    v195[3] = &unk_1E86F5FD8;
    v195[4] = &v196;
    v11 = *(self + 280);
    if (v11)
    {
      [SAFrame enumerateFrameTree:v11 block:v195];
    }

    if ((a2 & 2) != 0)
    {
      if (options)
      {
        [(SATask *)selfCopy _gatherDataFromLiveProcessIsLate:0 mainBinaryPath:?];
        if ((v197[3] & 1) != 0 || ![*(selfCopy + 256) count] || !*(selfCopy + 80))
        {
          [(SATask *)selfCopy gatherLoadInfoFromLiveProcessWithDataGatheringOptions:a2 additionalCSSymbolicatorFlags:cache];
        }
      }
    }

    mainBinary = [selfCopy mainBinary];
    v182 = selfCopy;
    if ((a2 & 1) != 0 && !mainBinary)
    {
      if ([*(selfCopy + 40) isAbsolutePath] && (v13 = *(selfCopy + 40), objc_copyStruct(dest, (selfCopy + 288), 8, 1, 0), +[SABinary binaryWithPath:architecture:additionalCSSymbolicatorFlags:](SABinary, v13, *dest, cache), v14 = objc_claimAutoreleasedReturnValue(), (v15 = v14) != 0))
      {
        objc_storeStrong((selfCopy + 48), v14);
        mainBinary = v15;
      }

      else
      {
        mainBinary = 0;
      }
    }

    v162 = mainBinary;
    uuid = [mainBinary uuid];
    mainBinaryPath = [selfCopy mainBinaryPath];
    if (uuid)
    {
      if (([mainBinaryPath isAbsolutePath] & 1) == 0)
      {
        [v162 gatherInfoWithDataGatheringOptions:a2 pid:*(selfCopy + 80)];
        path = [v162 path];
        v17 = path;
        if (path)
        {
          if ([path isAbsolutePath])
          {
            v17 = v17;

            [selfCopy setMainBinaryPath:v17];
            mainBinaryPath = v17;
          }

          else if (!mainBinaryPath)
          {
            v17 = v17;
            Path = [(NSString *)v17 copyLastPathComponent];
            v19 = Path;
            if (*(selfCopy + 56) && [Path hasPrefix:?])
            {
              v24 = *(selfCopy + 56);
              *(selfCopy + 56) = 0;
            }

            mainBinaryPath = v17;
            goto LABEL_38;
          }
        }

        goto LABEL_39;
      }

      if ((~a2 & 5) == 0)
      {
        v16 = +[SABinaryLocator sharedBinaryLocator];
        v17 = v16;
        if (v16)
        {
          v18 = [(SABinaryLocator *)v16 urlForUUID:uuid];
          v19 = v18;
          if (v18)
          {
            path2 = [v18 path];
            if (path2)
            {
              path3 = [v19 path];
              if ([path3 isEqualToString:mainBinaryPath])
              {

LABEL_37:
                [v17 done];
LABEL_38:

                goto LABEL_39;
              }

              defaultManager = [MEMORY[0x1E696AC08] defaultManager];
              path4 = [v19 path];
              v27 = [defaultManager fileExistsAtPath:path4];

              if (v27)
              {
                goto LABEL_37;
              }
            }

            v28 = *__error();
            v29 = _sa_logt();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              path5 = [v19 path];
              *dest = 138543874;
              *&dest[4] = uuid;
              v210 = 2112;
              v211 = path5;
              v212 = 2112;
              v213 = mainBinaryPath;
              _os_log_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_INFO, "%{public}@ moved: replacing %@ with %@", dest, 0x20u);
            }

            *__error() = v28;
            [(SABinaryLocator *)v17 removeURLForUUID:uuid];
          }

          v31 = [MEMORY[0x1E695DFF8] fileURLWithPath:mainBinaryPath isDirectory:0];

          [(SABinaryLocator *)v17 addURL:v31 ForUUID:uuid];
          v19 = v31;
          goto LABEL_37;
        }

LABEL_39:

        selfCopy = v182;
      }
    }

    isAbsolutePath = [mainBinaryPath isAbsolutePath];
    if ((a2 & 1) != 0 && ((isAbsolutePath ^ 1) & 1) == 0 && !*(selfCopy + 104) && !*(selfCopy + 112) && !*(selfCopy + 120) && !*(selfCopy + 128) && !*(selfCopy + 136) && !*(selfCopy + 168) && !*(selfCopy + 65) && !*(selfCopy + 176) && !*(selfCopy + 184) && !*(selfCopy + 160) && !*(selfCopy + 200) && (*(selfCopy + 66) & 1) == 0 && !*(selfCopy + 192))
    {
      v33 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:mainBinaryPath isDirectory:0];
      if (v33)
      {
        v34 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
        v35 = v34;
        if (v34)
        {
          obj = SACFBundleCopyStringForKey(v34, *MEMORY[0x1E695E4F8]);
          v187 = CFBundleCopyBundleURL(v35);
          if (v162)
          {
            [(SABinary *)v162 saveInfoFromBundle:v35];
            [(SABinary *)v162 getCodeSignInfoWithBundleUrl:v187];
          }

          if (obj)
          {
            name = [v182 name];
            v37 = [name compare:obj] == 0;

            if (!v37)
            {
              objc_storeStrong((selfCopy + 104), obj);
            }
          }

          if (v187)
          {
            v38 = v187;
            pathExtension = [(__CFURL *)v38 pathExtension];
            v40 = [pathExtension isEqualToString:@"appex"];

            if (v40)
            {
              v194 = 0;
              v41 = [objc_alloc(MEMORY[0x1E69635C8]) initWithURL:v38 error:&v194];
              v42 = v194;
              if (v41)
              {
                containingBundleRecord = [v41 containingBundleRecord];
                v44 = containingBundleRecord;
                if (containingBundleRecord)
                {
                  v45 = [containingBundleRecord URL];
                  v46 = v45;
                  if (v45)
                  {
                    v47 = v45;
                  }

                  else
                  {
                    v52 = *__error();
                    v53 = _sa_logt();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                    {
                      *dest = 138412290;
                      *&dest[4] = v38;
                      _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "No parent url for %@", dest, 0xCu);
                    }

                    *__error() = v52;
                    v47 = v38;
                  }
                }

                else
                {
                  v50 = *__error();
                  v51 = _sa_logt();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                  {
                    *dest = 138412290;
                    *&dest[4] = v38;
                    _os_log_debug_impl(&dword_1E0E2F000, v51, OS_LOG_TYPE_DEBUG, "No parent record for %@", dest, 0xCu);
                  }

                  *__error() = v50;
                  v47 = v38;
                }
              }

              else
              {
                v48 = *__error();
                v49 = _sa_logt();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *dest = 138412546;
                  *&dest[4] = v38;
                  v210 = 2112;
                  v211 = v42;
                  _os_log_error_impl(&dword_1E0E2F000, v49, OS_LOG_TYPE_ERROR, "No extension record for %@: %@", dest, 0x16u);
                }

                *__error() = v48;
                v47 = v38;
              }
            }

            else
            {
              v42 = 0;
              v47 = v38;
            }

            v193 = v42;
            v54 = [objc_alloc(MEMORY[0x1E69635F0]) initWithURL:v47 allowPlaceholder:1 error:&v193];
            v55 = v193;

            if (v54)
            {
              deviceIdentifierForVendor = [v54 deviceIdentifierForVendor];
              uUIDString = [deviceIdentifierForVendor UUIDString];
              v58 = *(v182 + 176);
              *(v182 + 176) = uUIDString;

              iTunesMetadata = [v54 iTunesMetadata];
              *(v182 + 160) = [iTunesMetadata storeItemIdentifier];

              iTunesMetadata2 = [v54 iTunesMetadata];
              distributorInfo = [iTunesMetadata2 distributorInfo];
              distributorID = [distributorInfo distributorID];
              v63 = *(v182 + 184);
              *(v182 + 184) = distributorID;

              iTunesMetadata3 = [v54 iTunesMetadata];
              v65 = [iTunesMetadata3 storeCohortWithError:0];
              v66 = *(v182 + 192);
              *(v182 + 192) = v65;

              *(v182 + 65) = [v54 developerType];
              entitlements = [v54 entitlements];
              v68 = [entitlements objectForKey:@"beta-reports-active" ofClass:objc_opt_class()];

              if (v68)
              {
                *(v182 + 66) = 1;
              }
            }

            v69 = [(__CFURL *)v38 URLByAppendingPathComponent:@"Contents/version.plist" isDirectory:0];
            if (v69)
            {
              v70 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v69];
              v71 = v70;
              if (v70)
              {
                v72 = SANSDictionaryCopyStringForKey(v70, @"BuildVersion");
                v73 = *(v182 + 112);
                *(v182 + 112) = v72;

                v74 = SANSDictionaryCopyStringForKey(v71, @"ProjectName");
                v75 = *(v182 + 120);
                *(v182 + 120) = v74;

                v76 = SANSDictionaryCopyStringForKey(v71, @"SourceVersion");
                v77 = *(v182 + 128);
                *(v182 + 128) = v76;

                v78 = SANSDictionaryCopyStringForKey(v71, @"ProductBuildVersion");
                v79 = *(v182 + 136);
                *(v182 + 136) = v78;
              }
            }
          }

          CFRelease(v35);
        }
      }

      selfCopy = v182;
    }

    if (*(selfCopy + 40))
    {
      mainBinary2 = [selfCopy mainBinary];
      path6 = [mainBinary2 path];

      if (path6 && [path6 isEqualToString:*(v182 + 40)])
      {
        v82 = *(v182 + 40);
        *(v182 + 40) = 0;
      }

      selfCopy = v182;
    }

    if (*(selfCopy + 56))
    {
      mainBinaryPath2 = [selfCopy mainBinaryPath];
      copyLastPathComponent = [(NSString *)mainBinaryPath2 copyLastPathComponent];

      if (copyLastPathComponent && [copyLastPathComponent hasPrefix:*(v182 + 56)])
      {
        v85 = *(v182 + 56);
        *(v182 + 56) = 0;
      }

      selfCopy = v182;
    }

    [*(selfCopy + 16) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_94];
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    taskStates = [selfCopy taskStates];
    v87 = [taskStates countByEnumeratingWithState:&v204 objects:v250 count:16];
    if (v87)
    {
      obja = taskStates;
      v88 = 0;
      v89 = 0;
      v188 = *v205;
      do
      {
        v90 = 0;
        v91 = v89;
        do
        {
          if (*v205 != v188)
          {
            objc_enumerationMutation(obja);
          }

          v92 = *(*(&v204 + 1) + 8 * v90);
          if (v91)
          {
            if ([*(*(&v204 + 1) + 8 * v90) terminatedThreadsUserTimeInNs] && (v93 = objc_msgSend(v92, "terminatedThreadsUserTimeInNs"), v93 < objc_msgSend(v91, "terminatedThreadsUserTimeInNs")) || objc_msgSend(v92, "terminatedThreadsSystemTimeInNs") && (v94 = objc_msgSend(v92, "terminatedThreadsSystemTimeInNs"), v94 < objc_msgSend(v91, "terminatedThreadsSystemTimeInNs")) || objc_msgSend(v92, "terminatedThreadsInstructions") && (v95 = objc_msgSend(v92, "terminatedThreadsInstructions"), v95 < objc_msgSend(v91, "terminatedThreadsInstructions")) || objc_msgSend(v92, "terminatedThreadsCycles") && (v96 = objc_msgSend(v92, "terminatedThreadsCycles"), v96 < objc_msgSend(v91, "terminatedThreadsCycles")) || objc_msgSend(v92, "faults") && (v97 = objc_msgSend(v92, "faults"), v97 < objc_msgSend(v91, "faults")) || objc_msgSend(v92, "pageins") && (v98 = objc_msgSend(v92, "pageins"), v98 < objc_msgSend(v91, "pageins")) || objc_msgSend(v92, "cowFaults") && (v99 = objc_msgSend(v92, "cowFaults"), v99 < objc_msgSend(v91, "cowFaults")))
            {
              v100 = *__error();
              v101 = _sa_logt();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
              {
                v183 = [v182 debugDescription];
                taskStates2 = [v182 taskStates];
                v116 = [taskStates2 count];
                v181 = [v91 debugDescription];
                v180 = [v92 debugDescription];
                terminatedThreadsCpuTimeNs = [v91 terminatedThreadsCpuTimeNs];
                terminatedThreadsUserTimeInNs = [v91 terminatedThreadsUserTimeInNs];
                terminatedThreadsSystemTimeInNs = [v91 terminatedThreadsSystemTimeInNs];
                terminatedThreadsCpuTimeNs2 = [v92 terminatedThreadsCpuTimeNs];
                terminatedThreadsUserTimeInNs2 = [v92 terminatedThreadsUserTimeInNs];
                terminatedThreadsSystemTimeInNs2 = [v92 terminatedThreadsSystemTimeInNs];
                terminatedThreadsInstructions = [v91 terminatedThreadsInstructions];
                terminatedThreadsInstructions2 = [v92 terminatedThreadsInstructions];
                terminatedThreadsCycles = [v91 terminatedThreadsCycles];
                terminatedThreadsCycles2 = [v92 terminatedThreadsCycles];
                faults = [v91 faults];
                faults2 = [v92 faults];
                pageins = [v91 pageins];
                pageins2 = [v92 pageins];
                cowFaults = [v91 cowFaults];
                cowFaults2 = [v92 cowFaults];
                *dest = 138417410;
                *&dest[4] = v183;
                v210 = 2048;
                v211 = v88;
                v212 = 2048;
                v213 = v116;
                v214 = 2112;
                v215 = v181;
                v216 = 2112;
                v217 = v180;
                v218 = 2048;
                v219 = terminatedThreadsCpuTimeNs;
                v220 = 2048;
                v221 = terminatedThreadsUserTimeInNs;
                v222 = 2048;
                v223 = terminatedThreadsSystemTimeInNs;
                v224 = 2048;
                v225 = terminatedThreadsCpuTimeNs2;
                v226 = 2048;
                v227 = terminatedThreadsUserTimeInNs2;
                v228 = 2048;
                v229 = terminatedThreadsSystemTimeInNs2;
                v230 = 2048;
                v231 = terminatedThreadsInstructions;
                v232 = 2048;
                v233 = terminatedThreadsInstructions2;
                v234 = 2048;
                v235 = terminatedThreadsCycles;
                v236 = 2048;
                v237 = terminatedThreadsCycles2;
                v238 = 1024;
                v239 = faults;
                v240 = 1024;
                v241 = faults2;
                v242 = 1024;
                v243 = pageins;
                v244 = 1024;
                v245 = pageins2;
                v246 = 1024;
                v247 = cowFaults;
                v248 = 1024;
                v249 = cowFaults2;
                _os_log_debug_impl(&dword_1E0E2F000, v101, OS_LOG_TYPE_DEBUG, "Task %@ monotonically increasing data decreased at index %lu of %lu between %@ and %@:\nterminated threads cpu time %llu (%llu + %llu) -> %llu (%llu + %llu)\nterminated threads instructions %llu -> %llu\nterminated threads cycles %llu -> %llu\nfaults %u -> %u\npageins %u -> %u\ncow faults %u -> %u\n", dest, 0xBCu);
              }

              *__error() = v100;
            }

            terminatedThreadsUserTimeInNs3 = [v92 terminatedThreadsUserTimeInNs];
            if (terminatedThreadsUserTimeInNs3 < [v91 terminatedThreadsUserTimeInNs])
            {
              terminatedThreadsUserTimeInNs4 = [v91 terminatedThreadsUserTimeInNs];
              if (v92)
              {
                *(v92 + 88) = terminatedThreadsUserTimeInNs4;
              }
            }

            terminatedThreadsSystemTimeInNs3 = [v92 terminatedThreadsSystemTimeInNs];
            if (terminatedThreadsSystemTimeInNs3 < [v91 terminatedThreadsSystemTimeInNs])
            {
              terminatedThreadsSystemTimeInNs4 = [v91 terminatedThreadsSystemTimeInNs];
              if (v92)
              {
                *(v92 + 96) = terminatedThreadsSystemTimeInNs4;
              }
            }

            terminatedThreadsInstructions3 = [v92 terminatedThreadsInstructions];
            if (terminatedThreadsInstructions3 < [v91 terminatedThreadsInstructions])
            {
              terminatedThreadsInstructions4 = [v91 terminatedThreadsInstructions];
              if (v92)
              {
                *(v92 + 104) = terminatedThreadsInstructions4;
              }
            }

            terminatedThreadsCycles3 = [v92 terminatedThreadsCycles];
            if (terminatedThreadsCycles3 < [v91 terminatedThreadsCycles])
            {
              terminatedThreadsCycles4 = [v91 terminatedThreadsCycles];
              if (v92)
              {
                *(v92 + 112) = terminatedThreadsCycles4;
              }
            }

            faults3 = [v92 faults];
            if (faults3 < [v91 faults])
            {
              faults4 = [v91 faults];
              if (v92)
              {
                *(v92 + 12) = faults4;
              }
            }

            pageins3 = [v92 pageins];
            if (pageins3 < [v91 pageins])
            {
              pageins4 = [v91 pageins];
              if (v92)
              {
                *(v92 + 16) = pageins4;
              }
            }

            cowFaults3 = [v92 cowFaults];
            if (cowFaults3 < [v91 cowFaults])
            {
              cowFaults4 = [v91 cowFaults];
              if (v92)
              {
                *(v92 + 20) = cowFaults4;
              }
            }
          }

          v89 = v92;

          ++v88;
          ++v90;
          v91 = v89;
        }

        while (v87 != v90);
        v87 = [obja countByEnumeratingWithState:&v204 objects:v250 count:16];
      }

      while (v87);

      taskStates = obja;
    }

    v119 = v182;
    if (!*(v182 + 288))
    {
      [(SATask *)v182 guessArchitectureGivenMachineArchitecture:alive dataSource:architecture];
    }

    if (*(v182 + 272))
    {
LABEL_175:
      v133 = *(v119 + 264);
      if (!v133)
      {
LABEL_182:
        if (spindumpArchitecture && !v133)
        {
          if ((*(v119 + 74) & 1) == 0 && *(v119 + 288) && v158 && CSArchitectureMatchesArchitecture() && *(v119 + 80) && *(v119 + 96))
          {
            v153 = *__error();
            v154 = _sa_logt();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
            {
              v156 = [v182 debugDescription];
              *dest = 138412290;
              *&dest[4] = v156;
              _os_log_debug_impl(&dword_1E0E2F000, v154, OS_LOG_TYPE_DEBUG, "No info about the shared cache for (native architecture) process %@, assuming native shared cache", dest, 0xCu);
            }

            *__error() = v153;
            objc_storeStrong((v182 + 264), spindumpArchitecture);
            v119 = v182;
          }

          v133 = *(v119 + 264);
        }

        if (!v133)
        {
          goto LABEL_205;
        }

        goto LABEL_187;
      }

      if ((v133[24] & 1) == 0)
      {
LABEL_187:
        startAddress = [v133 startAddress];
        if ([*(v119 + 264) startAddress] != -1)
        {
          endAddress = [*(v119 + 264) endAddress];
          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          v142 = *(v119 + 256);
          v143 = 0;
          v144 = [v142 countByEnumeratingWithState:&v189 objects:v208 count:16];
          if (v144)
          {
            v145 = *v190;
            do
            {
              for (i = 0; i != v144; ++i)
              {
                if (*v190 != v145)
                {
                  objc_enumerationMutation(v142);
                }

                v147 = *(*(&v189 + 1) + 8 * i);
                loadAddress = [v147 loadAddress];
                if (loadAddress >= startAddress && loadAddress < endAddress)
                {
                  if (!v143)
                  {
                    v143 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
                  }

                  [v143 addObject:v147];
                }
              }

              v144 = [v142 countByEnumeratingWithState:&v189 objects:v208 count:16];
            }

            while (v144);
          }

          if ([v143 count])
          {
            v150 = [*(v182 + 256) mutableCopy];
            [v150 removeObjectsInArray:v143];
            v151 = [v150 copy];
            v152 = *(v182 + 256);
            *(v182 + 256) = v151;
          }
        }

LABEL_205:

        _Block_object_dispose(&v196, 8);
        return;
      }

      v134 = v133;
      uuid2 = [v134 uuid];
      v136 = +[SASharedCache sharedCacheWithUUID:slide:slidBaseAddress:dataGatheringOptions:](SASharedCache, uuid2, [v134 slide], objc_msgSend(v134, "slidBaseAddress"), a2);

      binaryLoadInfos = [v136 binaryLoadInfos];
      if ([binaryLoadInfos count])
      {
      }

      else
      {
        binaryLoadInfos2 = [v134 binaryLoadInfos];
        v139 = [binaryLoadInfos2 count] == 0;

        if (!v139)
        {
          goto LABEL_181;
        }
      }

      objc_storeStrong((v182 + 264), v136);
LABEL_181:

      v119 = v182;
      v133 = *(v182 + 264);
      goto LABEL_182;
    }

    v120 = [*(v182 + 24) objectForKeyedSubscript:&unk_1F5BDCC58];
    v121 = v120;
    if (v120)
    {
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      states = [v120 states];
      v123 = [states countByEnumeratingWithState:&v204 objects:dest count:16];
      if (v123)
      {
        v124 = 0;
        v125 = *v205;
        do
        {
          for (j = 0; j != v123; ++j)
          {
            if (*v205 != v125)
            {
              objc_enumerationMutation(states);
            }

            thread = [*(*(&v204 + 1) + 8 * j) thread];
            if (v124)
            {
              v128 = v124 == thread;

              if (!v128)
              {

                goto LABEL_173;
              }
            }

            else
            {
              v124 = thread;
            }
          }

          v123 = [states countByEnumeratingWithState:&v204 objects:dest count:16];
        }

        while (v123);

        if (!v124)
        {
          goto LABEL_174;
        }

        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        threadStates = [v124 threadStates];
        v130 = [threadStates countByEnumeratingWithState:&v200 objects:v250 count:16];
        if (v130)
        {
          v131 = *v201;
          while (2)
          {
            for (k = 0; k != v130; ++k)
            {
              if (*v201 != v131)
              {
                objc_enumerationMutation(threadStates);
              }

              if ([*(*(&v200 + 1) + 8 * k) isIdleWorkQueue])
              {

                v124 = 0;
                goto LABEL_216;
              }
            }

            v130 = [threadStates countByEnumeratingWithState:&v200 objects:v250 count:16];
            if (v130)
            {
              continue;
            }

            break;
          }
        }

LABEL_216:

        v155 = *(v182 + 272);
        *(v182 + 272) = v124;
        states = v124;

        if (states)
        {
          states[17] = 1;
        }
      }

LABEL_173:
    }

LABEL_174:

    v119 = v182;
    goto LABEL_175;
  }
}

void __161__SATask_postprocessWithDataGatheringOptions_mightBeAlive_machineArchitecture_dataSource_spindumpArchitecture_spindumpSharedCache_additionalCSSymbolicatorFlags___block_invoke(uint64_t a1, id *a2, uint64_t a3, _BYTE *a4)
{
  if (a2 && (WeakRetained = objc_loadWeakRetained(a2 + 3)) != 0)
  {
  }

  else if (([a2 isFakeFrame] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)enumerateFrames:(uint64_t)frames
{
  if (frames)
  {
    v3 = *(frames + 280);
    if (v3)
    {
      [SAFrame enumerateFrameTree:v3 block:a2];
    }
  }
}

- (void)_gatherDataFromLiveProcessIsLate:(void *)late mainBinaryPath:
{
  v52 = *MEMORY[0x1E69E9840];
  if (self && (*(self + 73) & 1) == 0)
  {
    v4 = *(self + 80);
    if (!v4)
    {
      *(self + 73) = 1;
      *(self + 88) = 0;
      *(self + 84) = 0;
      return;
    }

    if ((v4 & 0x80000000) == 0)
    {
      *(self + 73) = 1;
      if (!kill(v4, 0))
      {
        v50 = 0u;
        v51 = 0u;
        memset(buffer, 0, sizeof(buffer));
        v6 = proc_pidinfo(*(self + 80), 13, 1uLL, buffer, 64);
        v7 = DWORD1(buffer[0]);
        v8 = DWORD1(v50);
        if (!v6)
        {
          v7 = -1;
          v8 = -314;
        }

        *(self + 84) = v7;
        *(self + 92) = v8;
        lateCopy = late;
        if (!lateCopy)
        {
          v20 = SAExecutablePath(*(self + 80), [*(self + 56) UTF8String]);
          if (!v20)
          {
            return;
          }

          lateCopy = v20;
          if ([v20 isAbsolutePath])
          {
            [self setMainBinaryPath:lateCopy];
          }
        }

        name = [self name];
        v11 = [name isEqualToString:@"java"];

        if (v11)
        {
          if (_gatherDataFromLiveProcessIsLate_mainBinaryPath__onceToken != -1)
          {
            dispatch_once(&_gatherDataFromLiveProcessIsLate_mainBinaryPath__onceToken, &__block_literal_global_13);
          }

          v12 = malloc_type_calloc(1uLL, _gatherDataFromLiveProcessIsLate_mainBinaryPath__max_arguments_size, 0xE79EE579uLL);
          v43 = _gatherDataFromLiveProcessIsLate_mainBinaryPath__max_arguments_size;
          *flags = 0x3100000001;
          v48 = *(self + 80);
          if (sysctl(flags, 3u, v12, &v43, 0, 0))
          {
            v13 = *__error();
            v14 = _sa_logt();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v30 = *(self + 80);
              v31 = *__error();
              v32 = __error();
              v33 = strerror(*v32);
              *buf = 67109634;
              *&buf[4] = v30;
              v45 = 1024;
              *v46 = v31;
              *&v46[4] = 2080;
              *&v46[6] = v33;
              _os_log_debug_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_DEBUG, "unable to get arguments for %d: %d %s", buf, 0x18u);
            }
          }

          else
          {
            if (v43 >= 5)
            {
              v22 = &v12[v43];
              v23 = v12 + 4;
              do
              {
                v24 = strlen(v23);
                if (&v23[v24] >= v22)
                {
                  break;
                }

                v25 = v24;
                if (!strncmp("-jar", v23, 5uLL))
                {
                  v23 += v25 + 1;
                  v34 = rindex(v23, 47);
                  if (v34)
                  {
                    v23 = v34 + 1;
                  }

                  v35 = strlen(v23);
                  if (v35 >= 5 && (v36 = &v23[v35 - 4], !strncmp(".jar", v36, 4uLL)))
                  {
                    *v36 = 0;
                  }

                  else
                  {
LABEL_52:
                    if (!v23)
                    {
                      break;
                    }
                  }

LABEL_53:
                  v37 = *__error();
                  v38 = _sa_logt();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    v42 = *(self + 80);
                    *buf = 67109378;
                    *&buf[4] = v42;
                    v45 = 2080;
                    *v46 = v23;
                    _os_log_debug_impl(&dword_1E0E2F000, v38, OS_LOG_TYPE_DEBUG, "Renaming java process [%d] to %s", buf, 0x12u);
                  }

                  *__error() = v37;
                  if (!*(self + 80) || strcmp(v23, "kernel_task"))
                  {
                    v39 = SANSStringForCString(v23);
                    v40 = *(self + 56);
                    *(self + 56) = v39;
                  }

                  goto LABEL_16;
                }

                if (v25)
                {
                  v26 = *v23;
                  if (!*v23)
                  {
                    goto LABEL_53;
                  }

                  v27 = 1;
                  while ((v26 & 0xDFu) - 65 < 0x1A || v26 == 46 || (v26 - 48) <= 9)
                  {
                    v26 = v23[v27++];
                    if (!v26)
                    {
                      goto LABEL_52;
                    }
                  }
                }

                v23 += v25 + 1;
              }

              while (v23 < v22);
            }

            v13 = *__error();
            v14 = _sa_logt();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(self + 80);
              *buf = 67109120;
              *&buf[4] = v41;
              _os_log_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to find name for java processes [%d]", buf, 8u);
            }
          }

          *__error() = v13;
LABEL_16:
          free(v12);
        }

        if (!*(self + 288))
        {
          v15 = *(self + 80);
          *buf = 0;
          if (proc_pidinfo(v15, 19, 1uLL, buf, 8))
          {
            *(self + 288) = *buf | ((*&buf[4] & 0xFFFFFF) << 32);
          }
        }

        flags[0] = 0;
        dirty = proc_get_dirty(*(self + 80), flags);
        if (dirty)
        {
          v17 = dirty;
          v18 = *__error();
          v19 = _sa_logt();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v28 = *(self + 80);
            v29 = strerror(v17);
            *buf = 67109634;
            *&buf[4] = v28;
            v45 = 2080;
            *v46 = v29;
            *&v46[8] = 1024;
            *&v46[10] = v17;
            _os_log_debug_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_DEBUG, "Unable to check dirty state for %d: %s %d", buf, 0x18u);
          }

          *__error() = v18;
        }

        else
        {
          v21 = flags[0];
          if (flags[0])
          {
            *(self + 68) = 1;
            *(self + 69) = (v21 & 2) != 0;
          }
        }

        *(self + 248) = 0;
      }
    }
  }
}

uint64_t __58__SATask__gatherDataFromLiveProcessIsLate_mainBinaryPath___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  *v2 = 0x800000001;
  v1 = 4;
  return sysctl(v2, 2u, &_gatherDataFromLiveProcessIsLate_mainBinaryPath__max_arguments_size, &v1, 0, 0);
}

- (id)leafFrameAfterAddingStack:(void *)stack leafOfCRootFramesReplacedBySwiftAsync:
{
  if (self)
  {
    if (!*(self + 280))
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
      v7 = *(self + 280);
      *(self + 280) = v6;
    }

    if (stack)
    {
      *stack = 0;
    }

    v8 = *(self + 280);
    if (*(self + 80))
    {
      v9 = [SAFrame addStack:a2 backtraceStyle:1 toSetOfRootFrames:v8];
      if (stack && [a2 hasSwiftAsyncStack])
      {
        *stack = [SAFrame addStack:a2 backtraceStyle:16 toSetOfRootFrames:*(self + 280)];
      }
    }

    else
    {
      v9 = [SAFrame addStack:a2 backtraceStyle:2 toSetOfRootFrames:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SAFrame)truncatedUserStackFrameSwiftAsync:(SAFrame *)async
{
  asyncCopy = async;
  if (async)
  {
    if (!async[5]._childFrameOrFrames)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      childFrameOrFrames = asyncCopy[5]._childFrameOrFrames;
      asyncCopy[5]._childFrameOrFrames = v4;
    }

    v6 = objc_alloc_init(SAFrame);
    v7 = v6;
    if (v6)
    {
      if (a2)
      {
        v8 = 10;
      }

      else
      {
        v8 = 8;
      }

      v9 = v8 | v6->_BOOLs.bits & 0xF5;
      v6->_BOOLs.bits = v9;
      v6->_BOOLs.bits = v9 & 0xFB | (4 * (LODWORD(asyncCopy[1]._parentFrame) == 0));
    }

    v10 = [asyncCopy[5]._childFrameOrFrames member:v6];
    v11 = v10;
    if (!v10)
    {
      [asyncCopy[5]._childFrameOrFrames addObject:v7];
      v11 = v7;
    }

    asyncCopy = v11;
  }

  return asyncCopy;
}

- (uint64_t)_matchesNameStr:(uint64_t)str
{
  if (*(str + 79) == 1)
  {
    name = [str name];
LABEL_5:
    copyLastPathComponent = name;
    goto LABEL_6;
  }

  v5 = *(str + 56);
  if (v5)
  {
    name = v5;
    goto LABEL_5;
  }

  Path = [(NSString *)*(str + 40) copyLastPathComponent];
  v9 = Path;
  if (Path)
  {
    copyLastPathComponent = Path;
  }

  else
  {
    path = [*(str + 48) path];
    copyLastPathComponent = [(NSString *)path copyLastPathComponent];
  }

LABEL_6:
  v7 = 0;
  if (a2 && copyLastPathComponent)
  {
    if ([a2 length])
    {
      if ([copyLastPathComponent hasPrefix:a2])
      {
        [a2 length];
        v7 = 0;
        goto LABEL_18;
      }

      v7 = [a2 hasPrefix:copyLastPathComponent];
    }

    else
    {
      v7 = 0;
    }

    v10 = [a2 length];
    if ((v7 & 1) == 0 && v10)
    {
      v11 = 0;
      goto LABEL_26;
    }
  }

LABEL_18:
  v12 = [a2 length];
  if (copyLastPathComponent)
  {
    v13 = v7;
  }

  else
  {
    v13 = 1;
  }

  v11 = 1;
  if (v12 && v13 && (!*(str + 80) || ([a2 isEqualToString:@"kernel_task"] & 1) == 0))
  {
    v14 = [a2 copy];
    v15 = *(str + 56);
    *(str + 56) = v14;
  }

LABEL_26:

  return v11;
}

- (uint64_t)correspondsToName:(uint64_t *)name loadInfos:(int)infos numLoadInfos:(uint64_t)loadInfos architecture:(uint64_t)architecture sharedCache:
{
  if (result)
  {
    v6 = result;
    if (*(result + 80))
    {
      if (a2)
      {
        v11 = SANSStringForCString(a2);
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      if (name)
      {
        if (infos)
        {
          v13 = uuidForBytes((name + 1));
          v14 = [SABinary binaryWithUUID:v13 absolutePath:0];
          v12 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v14 loadAddress:*name isInKernelAddressSpace:0 exclave:0];
        }
      }

      v15 = [(SATask *)v6 correspondsToName:v11 mainBinaryLoadInfo:v12 architecture:loadInfos sharedCache:architecture];

      return v15;
    }

    else
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "correspondsToName called for kernel", v18, 2u);
      }

      *__error() = v16;
      _SASetCrashLogMessage(1341, "correspondsToName called for kernel");
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

- (BOOL)addImageInfos:(uint64_t)infos
{
  v2 = 0;
  v103 = *MEMORY[0x1E69E9840];
  if (!infos || !a2)
  {
    return v2;
  }

  infosCopy = infos;
  if (![a2 count])
  {
    return 0;
  }

  v5 = [a2 sortedArrayUsingComparator:&__block_literal_global_70];
  v6 = *(infosCopy + 256);
  if (!v6 || ![v6 count])
  {
    objc_storeStrong((infosCopy + 256), v5);
    v2 = 1;
    goto LABEL_94;
  }

  v75 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v73 = v5;
  obj = v5;
  v77 = [obj countByEnumeratingWithState:&v92 objects:v102 count:16];
  if (!v77)
  {
    v8 = 0;
    goto LABEL_89;
  }

  v7 = 0;
  v8 = 0;
  v76 = *v93;
  do
  {
    v9 = 0;
    do
    {
      if (*v93 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v78 = v9;
      v10 = *(*(&v92 + 1) + 8 * v9);
      binary = [v10 binary];
      segment = [v10 segment];
      v81 = [v10 length];
      v82 = segment;
      if (v81)
      {
        v12 = 0;
      }

      else
      {
        v12 = segment == 0;
      }

      v80 = v10;
      if (v12)
      {
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        segments = [binary segments];
        reverseObjectEnumerator = [segments reverseObjectEnumerator];

        v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v88 objects:v101 count:16];
        if (!v15)
        {
          goto LABEL_27;
        }

        v16 = v15;
        v17 = *v89;
        while (1)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v89 != v17)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v19 = *(*(&v88 + 1) + 8 * i);
            if ([v19 hasOffsetIntoBinary])
            {
              if (![v19 length])
              {
                goto LABEL_27;
              }

              offsetIntoBinary = [v19 offsetIntoBinary];
              v81 = [v19 length] + offsetIntoBinary;
LABEL_28:

              v10 = v80;
              goto LABEL_29;
            }
          }

          v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v88 objects:v101 count:16];
          if (!v16)
          {
LABEL_27:
            v81 = 0;
            goto LABEL_28;
          }
        }
      }

      while (1)
      {
LABEL_29:
        if (v7 >= [*(infosCopy + 256) count])
        {
          goto LABEL_72;
        }

        v21 = [*(infosCopy + 256) objectAtIndexedSubscript:v7];
        binary2 = [v21 binary];
        segment2 = [v21 segment];
        v24 = [v21 length];
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = segment2 == 0;
        }

        if (v25)
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          segments2 = [binary2 segments];
          reverseObjectEnumerator2 = [segments2 reverseObjectEnumerator];

          v24 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v84 objects:v100 count:16];
          if (v24)
          {
            v79 = v8;
            v28 = infosCopy;
            v29 = *v85;
            while (2)
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v85 != v29)
                {
                  objc_enumerationMutation(reverseObjectEnumerator2);
                }

                v31 = *(*(&v84 + 1) + 8 * j);
                if ([v31 hasOffsetIntoBinary])
                {
                  if ([v31 length])
                  {
                    offsetIntoBinary2 = [v31 offsetIntoBinary];
                    v24 = [v31 length] + offsetIntoBinary2;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  goto LABEL_47;
                }
              }

              v24 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v84 objects:v100 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }

LABEL_47:
            infosCopy = v28;
            v8 = v79;
            v10 = v80;
          }
        }

        loadAddress = [v21 loadAddress];
        if (!v24)
        {
          break;
        }

        if (loadAddress + v24 > [v10 loadAddress])
        {
          goto LABEL_53;
        }

LABEL_68:

        ++v7;
      }

      if (loadAddress < [v10 loadAddress])
      {
        goto LABEL_68;
      }

LABEL_53:
      loadAddress2 = [v21 loadAddress];
      loadAddress3 = [v10 loadAddress];
      if (v81)
      {
        if (loadAddress2 >= loadAddress3 + v81)
        {
          goto LABEL_71;
        }

LABEL_57:
        if (binary2 != binary)
        {
          goto LABEL_79;
        }

        if (segment2 == v82)
        {
          [v21 loadAddress];
          [v10 loadAddress];
LABEL_79:

          goto LABEL_80;
        }

        if (segment2 && v82)
        {
          goto LABEL_79;
        }

        if (!segment2)
        {
          v42 = v10;
          loadAddress4 = [v21 loadAddress];
          if (loadAddress4 > [v42 loadAddress])
          {
            goto LABEL_78;
          }

          loadAddress5 = [v21 loadAddress];
          v45 = [v21 length] + loadAddress5;
          loadAddress6 = [v42 loadAddress];
          if (v45 < [v42 length] + loadAddress6)
          {
            goto LABEL_78;
          }

          loadAddress7 = [v42 loadAddress];
          v48 = loadAddress7 - [v21 loadAddress];
          if ([v82 hasOffsetIntoBinary])
          {
            if ([v82 offsetIntoBinary] == v48)
            {
              goto LABEL_78;
            }

LABEL_99:
            v64 = *__error();
            v65 = _sa_logt();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v66 = [v21 debugDescription];
              uTF8String = [v66 UTF8String];
              v68 = [v80 debugDescription];
              uTF8String2 = [v68 UTF8String];
              *buf = 136315394;
              v97 = uTF8String;
              v98 = 2080;
              v99 = uTF8String2;
              _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "load info for entire binary %s doesn't match segment load info %s", buf, 0x16u);
            }

            *__error() = v64;
            v70 = [v21 debugDescription];
            uTF8String3 = [v70 UTF8String];
            v72 = [v80 debugDescription];
            _SASetCrashLogMessage(1570, "load info for entire binary %s doesn't match segment load info %s", uTF8String3, [v72 UTF8String]);

            _os_crash();
            __break(1u);
          }

          if (v82)
          {
            segment2 = 0;
            v82[5] = v48;
          }

          else
          {
LABEL_78:
            segment2 = 0;
          }

          goto LABEL_79;
        }

        loadAddress8 = [v10 loadAddress];
        if (loadAddress8 > [v21 loadAddress])
        {
          goto LABEL_79;
        }

        loadAddress9 = [v10 loadAddress];
        v38 = [v10 length] + loadAddress9;
        loadAddress10 = [v21 loadAddress];
        if (v38 < [v21 length] + loadAddress10)
        {
          goto LABEL_79;
        }

        loadAddress11 = [v21 loadAddress];
        v41 = loadAddress11 - [v10 loadAddress];
        if ([segment2 hasOffsetIntoBinary])
        {
          if ([segment2 offsetIntoBinary] != v41)
          {
            v56 = *__error();
            v57 = _sa_logt();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = [v10 debugDescription];
              uTF8String4 = [v58 UTF8String];
              v60 = [v21 debugDescription];
              uTF8String5 = [v60 UTF8String];
              *buf = 136315394;
              v97 = uTF8String4;
              v98 = 2080;
              v99 = uTF8String5;
              _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "load info for entire binary %s doesn't match segment load info %s", buf, 0x16u);

              v10 = v80;
            }

            *__error() = v56;
            v62 = [v10 debugDescription];
            uTF8String6 = [v62 UTF8String];
            v21 = [v21 debugDescription];
            _SASetCrashLogMessage(1546, "load info for entire binary %s doesn't match segment load info %s", uTF8String6, [v21 UTF8String]);

            _os_crash();
            __break(1u);
            goto LABEL_99;
          }

          if (v8)
          {
            goto LABEL_67;
          }

LABEL_70:
          v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        }

        else
        {
          segment2[5] = v41;
          if (!v8)
          {
            goto LABEL_70;
          }
        }

LABEL_67:
        [v8 addObject:v21];
        goto LABEL_68;
      }

      if (loadAddress2 <= loadAddress3)
      {
        goto LABEL_57;
      }

LABEL_71:

LABEL_72:
      [v75 addObject:v10];
LABEL_80:

      v9 = v78 + 1;
    }

    while (v78 + 1 != v77);
    v49 = [obj countByEnumeratingWithState:&v92 objects:v102 count:16];
    v77 = v49;
  }

  while (v49);
LABEL_89:

  v50 = [v75 count];
  v2 = v50 != 0;
  v5 = v73;
  if (v50)
  {
    v51 = [*(infosCopy + 256) mutableCopy];
    v52 = v51;
    if (v8)
    {
      [v51 removeObjectsInArray:v8];
    }

    [v52 addObjectsFromArray:v75];
    [v52 sortUsingComparator:&__block_literal_global_70];
    v53 = [v52 copy];
    v54 = *(infosCopy + 256);
    *(infosCopy + 256) = v53;
  }

LABEL_94:
  return v2;
}

- (uint64_t)correspondsToUniquePid:(uint64_t)pid name:(uint64_t *)name loadInfos:(int)infos numLoadInfos:(void *)loadInfos textExecLoadInfos:(int)execLoadInfos numTextExecLoadInfos:(uint64_t)textExecLoadInfos architecture:(uint64_t)architecture sharedCache:
{
  if (result)
  {
    v9 = result;
    if (*(result + 96) == a2)
    {
      if (a2)
      {

        return [(SATask *)result correspondsToName:pid loadInfos:name numLoadInfos:infos architecture:textExecLoadInfos sharedCache:architecture];
      }

      else
      {
        [(SATask *)result _incorporateNewKernelLoadInfos:name numLoadInfos:infos textExecLoadInfos:loadInfos numTextExecLoadInfos:execLoadInfos];
        if (!*(v9 + 288))
        {
          *(v9 + 288) = textExecLoadInfos;
        }

        if (pid && !*(v9 + 56))
        {
          v12 = SANSStringForCString(pid);
          v13 = *(v9 + 56);
          *(v9 + 56) = v12;
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)correspondsToPid:(uint64_t)pid name:(uint64_t *)name loadInfos:(int)infos numLoadInfos:(void *)loadInfos textExecLoadInfos:(int)execLoadInfos numTextExecLoadInfos:(uint64_t)textExecLoadInfos architecture:(uint64_t)architecture sharedCache:
{
  if (result)
  {
    v9 = result;
    if (*(result + 80) == a2)
    {
      if (a2)
      {

        return [(SATask *)result correspondsToName:pid loadInfos:name numLoadInfos:infos architecture:textExecLoadInfos sharedCache:architecture];
      }

      else
      {
        [(SATask *)result _incorporateNewKernelLoadInfos:name numLoadInfos:infos textExecLoadInfos:loadInfos numTextExecLoadInfos:execLoadInfos];
        if (!*(v9 + 288))
        {
          *(v9 + 288) = textExecLoadInfos;
        }

        if (pid && !*(v9 + 56))
        {
          v12 = SANSStringForCString(pid);
          v13 = *(v9 + 56);
          *(v9 + 56) = v12;
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __24__SATask_addImageInfos___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 loadAddress];
  if (v5 < [a3 loadAddress])
  {
    return -1;
  }

  v7 = [a2 loadAddress];
  return v7 > [a3 loadAddress];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(SATask *)self name];
  v5 = [v3 initWithFormat:@"%@ [%d]", name, self->_pid];

  return v5;
}

- (void)fixupThreadSuspension
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    allValues = [*(self + 16) allValues];
    v2 = malloc_type_calloc([allValues count], 8uLL, 0x100004000313F17uLL);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = *(self + 8);
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          if ([v8 isSuspended])
          {
            startTimestamp = [v8 startTimestamp];
            endTimestamp = [v8 endTimestamp];
            startSampleIndex = [v8 startSampleIndex];
            endSampleIndex = [v8 endSampleIndex];
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __31__SATask_fixupThreadSuspension__block_invoke;
            v16[3] = &unk_1E86F8688;
            v17 = startTimestamp;
            v18 = endTimestamp;
            v19 = v2;
            v20 = startSampleIndex;
            v21 = endSampleIndex;
            v13 = endTimestamp;
            v14 = startTimestamp;
            [allValues enumerateObjectsUsingBlock:v16];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }

    free(v2);
  }
}

void __31__SATask_fixupThreadSuspension__block_invoke(NSObject *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v171 = *MEMORY[0x1E69E9840];
  v6 = *(a1[6].isa + a3);
  v7 = [a2 threadStates];
  v8 = [v7 count];

  if (v6 < v8)
  {
    while (1)
    {
      v9 = [a2 threadStates];
      v10 = [v9 objectAtIndexedSubscript:v6];

      v11 = [v10 startTimestamp];
      v12 = [v10 endTimestamp];
      if (([v12 le:v5[4].isa] & 1) == 0)
      {
        if (([(objc_class *)v5[5].isa le:v11]& 1) != 0)
        {

          goto LABEL_73;
        }

        if (([v10 isSuspended] & 1) == 0)
        {
          break;
        }
      }

LABEL_70:

      ++v6;
      v43 = [a2 threadStates];
      v44 = [v43 count];

      if (v6 >= v44)
      {
        goto LABEL_73;
      }
    }

    v13 = [(objc_class *)v5[4].isa gt:v11];
    v14 = [(objc_class *)v5[5].isa lt:v12];
    if (!v13 || !v5[7].isa && v5[8].isa != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_38:
      if (!v14)
      {
        goto LABEL_65;
      }

      v154 = [v10 startSampleIndex];
      v29 = [v10 endSampleIndex];
      v16 = [v10 copy];
      v30 = v10;
      v3 = v30;
      if (v30)
      {
        objc_setProperty_atomic(v30, v31, v5[5].isa, 56);
      }

      if (v16)
      {
        objc_setProperty_atomic(v16, v31, v5[5].isa, 48);
      }

      isa = v5[8].isa;
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (isa != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_77;
        }

LABEL_64:
        [(SAThread *)a2 insertState:v16 atIndex:v6 + 1];

LABEL_65:
        if (v5[7].isa)
        {
          v40 = v5[4].isa;
          v41 = [v10 startTimestamp];
          LOBYTE(v40) = [(objc_class *)v40 le:v41];

          if ((v40 & 1) == 0)
          {
            goto LABEL_113;
          }
        }

        v42 = v5[5].isa;
        v29 = [v10 endTimestamp];
        LOBYTE(v42) = [(objc_class *)v42 ge:v29];

        if ((v42 & 1) == 0)
        {
          v16 = *__error();
          v45 = _sa_logt();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = [(objc_class *)v5[5].isa debugDescription];
            v29 = [v46 UTF8String];
            v47 = [v10 endTimestamp];
            v48 = [v47 debugDescription];
            *buf = 136315394;
            v156 = v29;
            v157 = 2080;
            v158 = [v48 UTF8String];
            _os_log_error_impl(&dword_1E0E2F000, v45, OS_LOG_TYPE_ERROR, "taskSuspendEndTime %s < threadState.endTimestamp %s", buf, 0x16u);
          }

          *__error() = v16;
          v5 = [(objc_class *)v5[5].isa debugDescription];
          v49 = [v5 UTF8String];
          v50 = [v10 endTimestamp];
          v51 = [v50 debugDescription];
          _SASetCrashLogMessage(1820, "taskSuspendEndTime %s < threadState.endTimestamp %s", v49, [v51 UTF8String]);

          _os_crash();
          __break(1u);
LABEL_77:
          v52 = *__error();
          v53 = _sa_logt();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = v5[8].isa;
            *buf = 134217984;
            v156 = v54;
            _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "threadEndSampleIndex is NSNotFound, but taskSuspendEndSampleIndex is %lu", buf, 0xCu);
          }

          *__error() = v52;
          _SASetCrashLogMessage(1775, "threadEndSampleIndex is NSNotFound, but taskSuspendEndSampleIndex is %lu", v5[8].isa);
          _os_crash();
          __break(1u);
LABEL_80:
          v55 = *__error();
          v5 = _sa_logt();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v156 = v29;
            _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "threadEndSampleIndex is %lu, but taskSuspendEndSampleIndex is NSNotFound", buf, 0xCu);
          }

          *__error() = v55;
          _SASetCrashLogMessage(1778, "threadEndSampleIndex is %lu, but taskSuspendEndSampleIndex is NSNotFound", v29);
          _os_crash();
          __break(1u);
LABEL_83:
          v145 = *__error();
          v56 = _sa_logt();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v58 = v5[7].isa;
            v57 = v5[8].isa;
            v59 = [v3 startSampleIndex];
            v60 = [v3 endSampleIndex];
            v61 = [v16 startSampleIndex];
            v62 = [v16 endSampleIndex];
            *buf = 134219776;
            v156 = v154;
            v157 = 2048;
            v158 = v153;
            v159 = 2048;
            v160 = v58;
            v161 = 2048;
            v162 = v57;
            v163 = 2048;
            v164 = v59;
            v165 = 2048;
            v166 = v60;
            v167 = 2048;
            v168 = v61;
            v169 = 2048;
            v170 = v62;
            _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v145;
          v15 = v5[7].isa;
          _SASetCrashLogMessage(1807, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v154, v153, v15, v5[8].isa, [v3 startSampleIndex], objc_msgSend(v3, "endSampleIndex"), objc_msgSend(v16, "startSampleIndex"), objc_msgSend(v16, "endSampleIndex"));
          _os_crash();
          __break(1u);
LABEL_86:
          v63 = *__error();
          v5 = _sa_logt();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v156 = v15;
            _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "threadEndSampleIndex is %lu, but taskSuspendEndSampleIndex is NSNotFound", buf, 0xCu);
          }

          *__error() = v63;
          _SASetCrashLogMessage(1705, "threadEndSampleIndex is %lu, but taskSuspendEndSampleIndex is NSNotFound", v15);
          _os_crash();
          __break(1u);
LABEL_89:
          v64 = *__error();
          v65 = _sa_logt();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = v5[8].isa;
            *buf = 134217984;
            v156 = v66;
            _os_log_error_impl(&dword_1E0E2F000, v65, OS_LOG_TYPE_ERROR, "threadEndSampleIndex is NSNotFound, but taskSuspendEndSampleIndex is %lu", buf, 0xCu);
          }

          *__error() = v64;
          _SASetCrashLogMessage(1702, "threadEndSampleIndex is NSNotFound, but taskSuspendEndSampleIndex is %lu", v5[8].isa);
          _os_crash();
          __break(1u);
LABEL_92:
          v146 = *__error();
          v67 = _sa_logt();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = v5[7].isa;
            v69 = v5[8].isa;
            v70 = [v16 startSampleIndex];
            v71 = [v16 endSampleIndex];
            v72 = [v3 startSampleIndex];
            v73 = [v3 endSampleIndex];
            *buf = 134219776;
            v156 = v153;
            v157 = 2048;
            v158 = v143;
            v159 = 2048;
            v160 = v68;
            v161 = 2048;
            v162 = v69;
            v163 = 2048;
            v164 = v70;
            v165 = 2048;
            v166 = v71;
            v167 = 2048;
            v168 = v72;
            v169 = 2048;
            v170 = v73;
            _os_log_error_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v146;
          v74 = v5[7].isa;
          v36 = v5[8].isa;
          v5 = [v16 startSampleIndex];
          _SASetCrashLogMessage(1748, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v153, v143, v74, v36, v5, [v16 endSampleIndex], objc_msgSend(v3, "startSampleIndex"), objc_msgSend(v3, "endSampleIndex"));
          _os_crash();
          __break(1u);
LABEL_95:
          v147 = *__error();
          v75 = _sa_logt();
          v76 = v36;
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            v78 = v5[7].isa;
            v77 = v5[8].isa;
            v79 = [v3 startSampleIndex];
            v80 = [v3 endSampleIndex];
            v81 = [v16 startSampleIndex];
            v82 = [v16 endSampleIndex];
            *buf = 134219776;
            v156 = v76;
            v157 = 2048;
            v158 = v153;
            v159 = 2048;
            v160 = v78;
            v161 = 2048;
            v162 = v77;
            v163 = 2048;
            v164 = v79;
            v165 = 2048;
            v166 = v80;
            v167 = 2048;
            v168 = v81;
            v169 = 2048;
            v170 = v82;
            _os_log_error_impl(&dword_1E0E2F000, v75, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v147;
          v83 = v5[7].isa;
          v84 = v5[8].isa;
          v5 = [v3 startSampleIndex];
          _SASetCrashLogMessage(1804, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v76, v153, v83, v84, v5, [v3 endSampleIndex], objc_msgSend(v16, "startSampleIndex"), objc_msgSend(v16, "endSampleIndex"));
          _os_crash();
          __break(1u);
LABEL_98:
          v148 = *__error();
          v85 = _sa_logt();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v86 = v5[7].isa;
            v87 = v5[8].isa;
            v88 = [v16 startSampleIndex];
            v89 = [v16 endSampleIndex];
            v90 = [v3 startSampleIndex];
            v91 = [v3 endSampleIndex];
            *buf = 134219776;
            v156 = v153;
            v157 = 2048;
            v158 = v143;
            v159 = 2048;
            v160 = v86;
            v161 = 2048;
            v162 = v87;
            v163 = 2048;
            v164 = v88;
            v165 = 2048;
            v166 = v89;
            v167 = 2048;
            v168 = v90;
            v169 = 2048;
            v170 = v91;
            _os_log_error_impl(&dword_1E0E2F000, v85, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v148;
          v92 = v5[7].isa;
          v93 = v5[8].isa;
          v5 = [v16 startSampleIndex];
          _SASetCrashLogMessage(1745, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v153, v143, v92, v93, v5, [v16 endSampleIndex], objc_msgSend(v3, "startSampleIndex"), objc_msgSend(v3, "endSampleIndex"));
          _os_crash();
          __break(1u);
LABEL_101:
          v149 = *__error();
          v94 = _sa_logt();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v96 = v5[7].isa;
            v95 = v5[8].isa;
            v97 = [v3 startSampleIndex];
            v98 = [v3 endSampleIndex];
            v99 = [v16 startSampleIndex];
            v100 = [v16 endSampleIndex];
            *buf = 134219776;
            v156 = v154;
            v157 = 2048;
            v158 = v153;
            v159 = 2048;
            v160 = v96;
            v161 = 2048;
            v162 = v95;
            v163 = 2048;
            v164 = v97;
            v165 = 2048;
            v166 = v98;
            v167 = 2048;
            v168 = v99;
            v169 = 2048;
            v170 = v100;
            _os_log_error_impl(&dword_1E0E2F000, v94, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v149;
          v101 = v5[7].isa;
          v102 = v5[8].isa;
          v5 = [v3 startSampleIndex];
          _SASetCrashLogMessage(1805, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v154, v153, v101, v102, v5, [v3 endSampleIndex], objc_msgSend(v16, "startSampleIndex"), objc_msgSend(v16, "endSampleIndex"));
          _os_crash();
          __break(1u);
LABEL_104:
          v150 = *__error();
          v103 = _sa_logt();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            v105 = v5[7].isa;
            v104 = v5[8].isa;
            v106 = [v3 startSampleIndex];
            v107 = [v3 endSampleIndex];
            v108 = [v16 startSampleIndex];
            v109 = [v16 endSampleIndex];
            *buf = 134219776;
            v156 = v154;
            v157 = 2048;
            v158 = v153;
            v159 = 2048;
            v160 = v105;
            v161 = 2048;
            v162 = v104;
            v163 = 2048;
            v164 = v106;
            v165 = 2048;
            v166 = v107;
            v167 = 2048;
            v168 = v108;
            v169 = 2048;
            v170 = v109;
            _os_log_error_impl(&dword_1E0E2F000, v103, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v150;
          v110 = v5[7].isa;
          v111 = v5[8].isa;
          v5 = [v3 startSampleIndex];
          _SASetCrashLogMessage(1806, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v154, v153, v110, v111, v5, [v3 endSampleIndex], objc_msgSend(v16, "startSampleIndex"), objc_msgSend(v16, "endSampleIndex"));
          _os_crash();
          __break(1u);
LABEL_107:
          v151 = *__error();
          v112 = _sa_logt();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v113 = v5[7].isa;
            v114 = v5[8].isa;
            v115 = [(objc_class *)v154 startSampleIndex];
            v116 = [(objc_class *)v154 endSampleIndex];
            v117 = [v3 startSampleIndex];
            v118 = [v3 endSampleIndex];
            *buf = 134219776;
            v156 = v153;
            v157 = 2048;
            v158 = v143;
            v159 = 2048;
            v160 = v113;
            v161 = 2048;
            v162 = v114;
            v163 = 2048;
            v164 = v115;
            v165 = 2048;
            v166 = v116;
            v167 = 2048;
            v168 = v117;
            v169 = 2048;
            v170 = v118;
            _os_log_error_impl(&dword_1E0E2F000, v112, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v151;
          v119 = v5[7].isa;
          v25 = v5[8].isa;
          v5 = [(objc_class *)v154 startSampleIndex];
          _SASetCrashLogMessage(1746, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v153, v143, v119, v25, v5, -[objc_class endSampleIndex](v154, "endSampleIndex"), [v3 startSampleIndex], objc_msgSend(v3, "endSampleIndex"));
          _os_crash();
          __break(1u);
LABEL_110:
          v152 = *__error();
          v120 = _sa_logt();
          v121 = v25;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
          {
            v122 = v5[7].isa;
            v123 = v5[8].isa;
            v124 = [(objc_class *)v154 startSampleIndex];
            v125 = [(objc_class *)v154 endSampleIndex];
            v126 = [(objc_class *)v25 startSampleIndex];
            v127 = [(objc_class *)v121 endSampleIndex];
            *buf = 134219776;
            v156 = v153;
            v157 = 2048;
            v158 = v143;
            v159 = 2048;
            v160 = v122;
            v161 = 2048;
            v162 = v123;
            v163 = 2048;
            v164 = v124;
            v165 = 2048;
            v166 = v125;
            v167 = 2048;
            v168 = v126;
            v169 = 2048;
            v170 = v127;
            _os_log_error_impl(&dword_1E0E2F000, v120, OS_LOG_TYPE_ERROR, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", buf, 0x52u);
          }

          *__error() = v152;
          v128 = v5[7].isa;
          v129 = v5[8].isa;
          v5 = [(objc_class *)v154 startSampleIndex];
          v10 = [(objc_class *)v154 endSampleIndex];
          _SASetCrashLogMessage(1747, "thread state %lu-%lu, task state %lu-%lu -> first half %lu-%lu, second half %lu-%lu", v153, v143, v128, v129, v5, v10, [(objc_class *)v121 startSampleIndex], [(objc_class *)v121 endSampleIndex]);
          _os_crash();
          __break(1u);
LABEL_113:
          v130 = *__error();
          v131 = _sa_logt();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            v132 = v5[7].isa;
            v133 = [(objc_class *)v5[4].isa debugDescription];
            v134 = [v133 UTF8String];
            v135 = [v10 startTimestamp];
            v136 = [v135 debugDescription];
            v137 = [v136 UTF8String];
            *buf = 134218498;
            v156 = v132;
            v157 = 2080;
            v158 = v134;
            v159 = 2080;
            v160 = v137;
            _os_log_error_impl(&dword_1E0E2F000, v131, OS_LOG_TYPE_ERROR, "taskSuspendStartSampleIndex %lu and taskSuspendStartTime %s >= threadState.startTimestamp %s", buf, 0x20u);
          }

          *__error() = v130;
          v138 = v5[7].isa;
          v139 = [(objc_class *)v5[4].isa debugDescription];
          v140 = [v139 UTF8String];
          v141 = [v10 startTimestamp];
          v142 = [v141 debugDescription];
          _SASetCrashLogMessage(1819, "taskSuspendStartSampleIndex %lu and taskSuspendStartTime %s >= threadState.startTimestamp %s", v138, v140, [v142 UTF8String]);

          _os_crash();
          __break(1u);
        }

        if (v10)
        {
          v10[11] |= 0x40u;
        }

        goto LABEL_70;
      }

      if (isa == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_80;
      }

      if (v154 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_55:
        v153 = v29;
        v36 = v154;
        if (([v3 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v16, "startSampleIndex") != v154) && (objc_msgSend(v3, "startSampleIndex") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "startSampleIndex") != v154))
        {
          goto LABEL_95;
        }

        if ([v3 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = [v3 endSampleIndex];
          if (v37 < [v3 startSampleIndex])
          {
            goto LABEL_101;
          }
        }

        if ([v16 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v38 = [v16 endSampleIndex];
          if (v38 < [v16 startSampleIndex])
          {
            goto LABEL_104;
          }
        }

        v39 = [v16 endSampleIndex];
        if (v39 < [v3 endSampleIndex])
        {
          goto LABEL_83;
        }

        goto LABEL_64;
      }

      [(SAThreadState *)v3 setEndSampleIndex:?];
      v33 = v5[8].isa;
      if (v33 >= v154)
      {
        if (v29 > v33)
        {
          v35 = v33 + 1;
          v34 = v16;
LABEL_54:
          [(SAThreadState *)v34 setStartSampleIndex:v35];
          goto LABEL_55;
        }

        v34 = v16;
      }

      else
      {
        v34 = v3;
      }

      v35 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v153 = [v10 startSampleIndex];
    v15 = [v10 endSampleIndex];
    v16 = [v10 copy];
    v3 = v10;
    if (v16)
    {
      objc_setProperty_atomic(v16, v17, v5[4].isa, 56);
    }

    v154 = v16;
    if (v3)
    {
      objc_setProperty_atomic(v3, v17, v5[4].isa, 48);
    }

    v18 = v5[8].isa;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_89;
      }

LABEL_37:
      [(SAThread *)a2 insertState:v16 atIndex:v6++];

      goto LABEL_38;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_86;
    }

    v143 = v15;
    v19 = v153;
    if (v153 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_27:
      if (([v16 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "startSampleIndex") != v19) && (objc_msgSend(v16, "startSampleIndex") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v16, "startSampleIndex") != v19))
      {
        goto LABEL_98;
      }

      if ([v16 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = [v16 endSampleIndex];
        if (v24 < [v16 startSampleIndex])
        {
          goto LABEL_107;
        }
      }

      v25 = v3;
      if ([v3 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [v3 endSampleIndex];
        v27 = v26 >= [v3 startSampleIndex];
        v25 = v3;
        if (!v27)
        {
          goto LABEL_110;
        }
      }

      v3 = v25;
      v28 = [(objc_class *)v25 endSampleIndex];
      if (v28 < [v16 endSampleIndex])
      {
        goto LABEL_92;
      }

      goto LABEL_37;
    }

    v20 = v5[7].isa;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v5[8].isa;
    }

    else
    {
      v21 = v20 - 1;
    }

    [(SAThreadState *)v16 setEndSampleIndex:v21];
    if (v21 >= v153)
    {
      if (v143 > v21)
      {
        v23 = v21 + 1;
        v22 = v3;
LABEL_26:
        [(SAThreadState *)v22 setStartSampleIndex:v23];
        v19 = v153;
        goto LABEL_27;
      }

      v22 = v3;
    }

    else
    {
      v22 = v16;
    }

    v23 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_26;
  }

LABEL_73:
  *(v5[6].isa + a3) = v6;
}

- (uint64_t)isAliveAtTimestamp:(void *)timestamp
{
  if (!timestamp)
  {
    return 0;
  }

  startTimestamp = [timestamp startTimestamp];
  v5 = startTimestamp;
  if (startTimestamp && ([startTimestamp gt:a2] & 1) == 0)
  {
    endTimestamp = [timestamp endTimestamp];
    v8 = [endTimestamp lt:a2];

    v6 = v8 ^ 1u;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __24__SATask_startTimestamp__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 creationTimestamp];
  if (v5)
  {
    v6 = v5;
    goto LABEL_4;
  }

  v7 = [a3 threadStates];
  v8 = [v7 firstObject];
  obja = [v8 startTimestamp];

  v6 = obja;
  if (obja)
  {
LABEL_4:
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    obj = v6;
    if (v10)
    {
      if (![v10 gt:?])
      {
LABEL_8:
        v11 = obj;
        goto LABEL_9;
      }

      v9 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v9 + 40), obj);
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:
}

- (unint64_t)sampleCountInTimestampRangeStart:(id)start end:(id)end
{
  v27 = *MEMORY[0x1E69E9840];
  if (start && end && ([start le:end] & 1) == 0)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [start debugDescription];
      uTF8String = [v16 UTF8String];
      v18 = [end debugDescription];
      *buf = 136315394;
      *&buf[4] = uTF8String;
      *&buf[12] = 2080;
      *&buf[14] = [v18 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "startTime %s > endTime %s", buf, 0x16u);
    }

    *__error() = v14;
    v19 = [start debugDescription];
    v20 = v19;
    uTF8String2 = [v19 UTF8String];
    v22 = [end debugDescription];
    v23 = v22;
    _SASetCrashLogMessage(1966, "startTime %s > endTime %s", uTF8String2, [v22 UTF8String]);

    _os_crash();
    __break(1u);
  }

  if ([(NSMutableArray *)self->_taskStates count])
  {
    v7 = [(SATask *)self indexOfFirstTaskStateOnOrAfterTime:start sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v10 = v7;
      v11 = [(SATask *)self indexOfLastTaskStateOnOrBeforeTime:end sampleIndex:0x7FFFFFFFFFFFFFFFLL];
      if (v11 >= v10)
      {
        v12 = v11 - v10 + 1;
      }

      else
      {
        v12 = 0;
      }

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      else
      {
        return v12;
      }
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v26 = 0;
    threads = self->_threads;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47__SATask_sampleCountInTimestampRangeStart_end___block_invoke;
    v24[3] = &unk_1E86F86D0;
    v24[5] = end;
    v24[6] = buf;
    v24[4] = start;
    [(NSMutableDictionary *)threads enumerateKeysAndObjectsUsingBlock:v24];
    v8 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v8;
}

uint64_t __47__SATask_sampleCountInTimestampRangeStart_end___block_invoke(void *a1, uint64_t a2, void *a3)
{
  result = [a3 sampleCountInTimestampRangeStart:a1[4] end:a1[5]];
  *(*(a1[6] + 8) + 24) += result;
  return result;
}

- (unint64_t)sampleCountInSampleIndexRangeStart:(unint64_t)start end:(unint64_t)end
{
  v31 = *MEMORY[0x1E69E9840];
  if (start != 0x7FFFFFFFFFFFFFFFLL && end != 0x7FFFFFFFFFFFFFFFLL && start > end)
  {
    v21 = *__error();
    p_super = _sa_logt();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      startCopy = start;
      v29 = 2048;
      endCopy = end;
      _os_log_error_impl(&dword_1E0E2F000, p_super, OS_LOG_TYPE_ERROR, "startSampleIndexCap %lu > endSampleIndexCap %lu", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(2002, "startSampleIndexCap %lu > endSampleIndexCap %lu", start, end);
    _os_crash();
    __break(1u);
    goto LABEL_33;
  }

  p_super = &self->super;
  firstObject = [(NSMutableArray *)self->_taskStates firstObject];
  v10 = firstObject;
  if (!firstObject)
  {
    v16 = 0;
    goto LABEL_29;
  }

  if ([firstObject endSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_33:
    v22 = *__error();
    v23 = _sa_logt();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [p_super debugDescription];
      uTF8String = [v24 UTF8String];
      *buf = 136315138;
      startCopy = uTF8String;
      _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "Asking for sample count based on sample indexes when there are no sample indexes: %s", buf, 0xCu);
    }

    *__error() = v22;
    v26 = [p_super debugDescription];
    _SASetCrashLogMessage(2009, "Asking for sample count based on sample indexes when there are no sample indexes: %s", [v26 UTF8String]);

    _os_crash();
    __break(1u);
  }

  lastObject = [(objc_class *)p_super[1].isa lastObject];
  endSampleIndex = [lastObject endSampleIndex];
  if (endSampleIndex >= end)
  {
    endCopy2 = end;
  }

  else
  {
    endCopy2 = endSampleIndex;
  }

  if (end == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = endSampleIndex;
  }

  else
  {
    v14 = endCopy2;
  }

  if ([v10 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    endSampleIndex2 = [v10 endSampleIndex];
  }

  else
  {
    endSampleIndex2 = [v10 startSampleIndex];
  }

  if (endSampleIndex2 <= start)
  {
    startCopy2 = start;
  }

  else
  {
    startCopy2 = endSampleIndex2;
  }

  if (start == 0x7FFFFFFFFFFFFFFFLL)
  {
    startCopy2 = endSampleIndex2;
  }

  v18 = v14 >= startCopy2;
  v19 = v14 - startCopy2;
  if (v18)
  {
    v16 = v19 + 1;
  }

  else
  {
    v16 = 0;
  }

LABEL_29:
  return v16;
}

- (void)cpuTimeNs:(void *)ns cpuInstructions:(void *)instructions cpuCycles:(void *)cycles nonThreadCpuTimeNs:(void *)timeNs nonThreadCpuInstructions:(void *)cpuInstructions nonThreadCpuCycles:(uint64_t)cpuCycles betweenStartTime:(void *)time endTime:
{
  v99 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (ns)
  {
    *ns = 0;
  }

  if (instructions)
  {
    *instructions = 0;
  }

  if (cycles)
  {
    *cycles = 0;
  }

  if (timeNs)
  {
    *timeNs = 0;
  }

  if (cpuInstructions)
  {
    *cpuInstructions = 0;
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v14 = [self lastTaskStateOnOrBeforeTime:time sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  terminatedThreadsCpuTimeNs = [v14 terminatedThreadsCpuTimeNs];
  if (v14 && (!cpuCycles || ([v14 endTimestamp], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "gt:", cpuCycles), v15, v16)))
  {
    terminatedThreadsCpuTimeNs2 = [v14 terminatedThreadsCpuTimeNs];
    v94[3] += terminatedThreadsCpuTimeNs2;
    terminatedThreadsInstructions = [v14 terminatedThreadsInstructions];
    v90[3] += terminatedThreadsInstructions;
    terminatedThreadsCycles = [v14 terminatedThreadsCycles];
    v86[3] += terminatedThreadsCycles;
    endTimestamp = [v14 endTimestamp];
    if (cpuCycles && (v21 = self[29]) != 0 && ![v21 lt:cpuCycles])
    {
      v24 = 0;
    }

    else
    {
      v58 = [self firstTaskStateOnOrAfterTime:cpuCycles sampleIndex:0x7FFFFFFFFFFFFFFFLL];
      if (!v58 || time && ([v58 startTimestamp], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "le:", time), v22, (v23 & 1) == 0))
      {
        v43 = *__error();
        v44 = _sa_logt();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          startTimestamp = [v58 startTimestamp];
          v46 = [startTimestamp debugDescription];
          v47 = v46;
          uTF8String = [v46 UTF8String];
          v49 = [time debugDescription];
          v50 = v49;
          uTF8String2 = [v49 UTF8String];
          *buf = 136315394;
          *&buf[4] = uTF8String;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String2;
          _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "firstTaskState.startTimestamp %s > endTimestamp %s", buf, 0x16u);
        }

        *__error() = v43;
        startTimestamp2 = [v58 startTimestamp];
        v53 = [startTimestamp2 debugDescription];
        v54 = v53;
        uTF8String3 = [v53 UTF8String];
        v56 = [time debugDescription];
        v57 = v56;
        _SASetCrashLogMessage(2086, "firstTaskState.startTimestamp %s > endTimestamp %s", uTF8String3, [v56 UTF8String]);

        _os_crash();
        __break(1u);
      }

      v24 = v58;
      terminatedThreadsCpuTimeNs3 = [v58 terminatedThreadsCpuTimeNs];
      v94[3] -= terminatedThreadsCpuTimeNs3;
      terminatedThreadsInstructions2 = [v58 terminatedThreadsInstructions];
      v90[3] -= terminatedThreadsInstructions2;
      terminatedThreadsCycles2 = [v58 terminatedThreadsCycles];
      v86[3] -= terminatedThreadsCycles2;
    }
  }

  else
  {
    v24 = 0;
    endTimestamp = 0;
  }

  timeCopy = time;
  if (!time)
  {
    timeCopy = endTimestamp;
  }

  v29 = timeCopy;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v98 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v30 = self[2];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __134__SATask_cpuTimeNs_cpuInstructions_cpuCycles_nonThreadCpuTimeNs_nonThreadCpuInstructions_nonThreadCpuCycles_betweenStartTime_endTime___block_invoke;
  v63[3] = &unk_1E86F86F8;
  v31 = v29;
  v64 = v31;
  v76 = terminatedThreadsCpuTimeNs != 0;
  v32 = endTimestamp;
  v65 = v32;
  v33 = v14;
  v66 = v33;
  cpuCyclesCopy = cpuCycles;
  v71 = &v89;
  v72 = &v85;
  v73 = buf;
  v74 = &v81;
  v75 = &v77;
  v70 = &v93;
  selfCopy = self;
  v34 = v24;
  v69 = v34;
  [v30 enumerateKeysAndObjectsUsingBlock:v63];
  v35 = *&buf[8];
  v36 = *(*&buf[8] + 24);
  v37 = v94;
  v38 = v82;
  v39 = v90;
  if (v36 <= v94[3])
  {
    v40 = v78;
    v41 = v86;
    if (v82[3] <= v90[3])
    {
      v42 = a2;
      if (v78[3] <= v86[3])
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v40 = v78;
    v41 = v86;
  }

  v42 = a2;
LABEL_31:
  v94[3] = v36;
  v39[3] = v38[3];
  v41[3] = v40[3];
LABEL_32:
  if (v42)
  {
    *v42 = v37[3];
  }

  if (ns)
  {
    *ns = v39[3];
  }

  if (instructions)
  {
    *instructions = v41[3];
  }

  if (cycles)
  {
    *cycles = v37[3] - *(v35 + 24);
  }

  if (timeNs)
  {
    *timeNs = v39[3] - v38[3];
  }

  if (cpuInstructions)
  {
    *cpuInstructions = v41[3] - v40[3];
  }

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);
}

void __134__SATask_cpuTimeNs_cpuInstructions_cpuCycles_nonThreadCpuTimeNs_nonThreadCpuInstructions_nonThreadCpuCycles_betweenStartTime_endTime___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (([a3 isGlobalForcedIdle] & 1) == 0 && (objc_msgSend(a3, "isProcessorIdleThread") & 1) == 0)
  {
    v6 = [a3 lastThreadStateOnOrBeforeTime:*(a1 + 32) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    v7 = v6;
    if (!v6)
    {
      v12 = 1;
      goto LABEL_28;
    }

    if (*(a1 + 128) != 1)
    {
      goto LABEL_20;
    }

    v8 = [v6 endTimestamp];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v8;
    v10 = *(a1 + 32);
    if (v10)
    {
      v3 = [v7 endTimestamp];
      if (([v3 lt:*(a1 + 32)] & 1) == 0 || (v11 = (a1 + 40), !*(a1 + 40)))
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v11 = (a1 + 40);
      if (!*(a1 + 40))
      {
        goto LABEL_19;
      }
    }

    v13 = [v7 endTimestamp];
    if ([v13 lt:*v11])
    {
      v14 = [a3 exitTimestamp];
      if (v14)
      {
        v15 = v14;
        v16 = [a3 exitTimestamp];
        v17 = [v16 le:*v11];

        if (v10)
        {

          if ((v17 & 1) == 0)
          {
LABEL_20:
            v18 = 1;
            v12 = 1;
            goto LABEL_21;
          }
        }

        else
        {

          if (!v17)
          {
            goto LABEL_20;
          }
        }

        v12 = 0;
        v18 = [*(a1 + 48) terminatedThreadsCycles] == 0;
LABEL_21:
        if (*(a1 + 56))
        {
          v19 = [v7 endTimestamp];
          v20 = [v19 ge:*(a1 + 56)];

          if (!v20)
          {
            goto LABEL_43;
          }
        }

        if (v12)
        {
          *(*(*(a1 + 80) + 8) + 24) += [v7 cpuTimeNs];
        }

        if (v18)
        {
          *(*(*(a1 + 88) + 8) + 24) += [v7 instructions];
          *(*(*(a1 + 96) + 8) + 24) += [v7 cycles];
        }

        *(*(*(a1 + 104) + 8) + 24) += [v7 cpuTimeNs];
        *(*(*(a1 + 112) + 8) + 24) += [v7 instructions];
        *(*(*(a1 + 120) + 8) + 24) += [v7 cycles];
LABEL_28:
        v21 = [a3 creationTimestamp];
        v22 = v21;
        if (v21 && *(a1 + 56))
        {
          v23 = [a3 creationTimestamp];
          v24 = [v23 lt:*(a1 + 56)];

          if (!v24)
          {
LABEL_43:

            return;
          }
        }

        else
        {
        }

        v25 = [a3 firstThreadStateOnOrAfterTime:*(a1 + 56) sampleIndex:0x7FFFFFFFFFFFFFFFLL];
        v26 = v25;
        if (v25)
        {
          if (!*(a1 + 32) || ([v25 startTimestamp], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "le:", *(a1 + 32)), v27, v28))
          {
            v29 = *(*(*(a1 + 80) + 8) + 24);
            if (v29 >= [v26 cpuTimeNs])
            {
              *(*(*(a1 + 80) + 8) + 24) -= [v26 cpuTimeNs];
              *(*(*(a1 + 88) + 8) + 24) -= [v26 instructions];
              *(*(*(a1 + 96) + 8) + 24) -= [v26 cycles];
            }

            else
            {
              v30 = *__error();
              v31 = _sa_logt();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v47 = [*(a1 + 64) debugDescription];
                v44 = [a3 threadId];
                v32 = [v26 cpuTimeNs];
                v42 = *(*(*(a1 + 80) + 8) + 24);
                v43 = v32;
                v41 = [v7 cpuTimeNs];
                v40 = [*(a1 + 72) terminatedThreadsCpuTimeNs];
                v39 = [*(a1 + 48) terminatedThreadsCpuTimeNs];
                v46 = [v26 debugDescription];
                v38 = [v7 debugDescription];
                v45 = [a3 exitTimestamp];
                v33 = [v45 debugDescription];
                v34 = [*(a1 + 48) debugDescription];
                v37 = *(a1 + 128);
                v36 = [*(a1 + 56) debugDescription];
                v35 = [*(a1 + 32) debugDescription];
                *buf = 138415874;
                v49 = v47;
                v50 = 2048;
                v51 = v44;
                v52 = 2048;
                v53 = v43;
                v54 = 2048;
                v55 = v42;
                v56 = 2048;
                v57 = v41;
                v58 = 2048;
                v59 = v40;
                v60 = 2048;
                v61 = v39;
                v62 = 2112;
                v63 = v46;
                v64 = 2112;
                v65 = v38;
                v66 = 2112;
                v67 = v33;
                v68 = 2112;
                v69 = v34;
                v70 = 1024;
                v71 = v37;
                v72 = 1024;
                v73 = v12;
                v74 = 2112;
                v75 = v36;
                v76 = 2112;
                v77 = v35;
                _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "%@ thread 0x%llx starting cpu time %llu < taskCpuTimeNs %llu\nlastThreadState.cpuTimeNs: %llu\nfirstTaskState.terminatedThreadsCpuTimeNs: %llu\nlastTaskState.terminatedThreadsCpuTimeNs: %llu\nfirstThreadState: %@\nlastThreadState: %@\nthread.exitTimestamp: %@\nlastTaskState: %@\ntaskHasTimeInTerminatedThreads: %d\naddEndCPU: %d\nstartTimestamp: %@\nendTimestamp: %@", buf, 0x90u);
              }

              *__error() = v30;
            }

            *(*(*(a1 + 104) + 8) + 24) -= [v26 cpuTimeNs];
            *(*(*(a1 + 112) + 8) + 24) -= [v26 instructions];
            *(*(*(a1 + 120) + 8) + 24) -= [v26 cycles];
          }
        }

        goto LABEL_43;
      }
    }

    if (v10)
    {
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }
}

- (void)fixupFrameInstructionsWithDataGatheringOptions:(int)options mightBeAlive:(_BYTE *)alive foundNewBinaryInfo:(uint64_t)info uuidsWithNewInstructions:(uint64_t)instructions additionalCSSymbolicatorFlags:
{
  v66 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  if (alive)
  {
    *alive = 0;
  }

  if (!*(self + 280))
  {
    return;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = *(self + 256);
  v11 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (!v11)
  {
    v12 = 0;
    v36 = obj;
LABEL_40:

    goto LABEL_42;
  }

  optionsCopy = options;
  v43 = a2;
  instructionsCopy = instructions;
  infoCopy = info;
  v47 = selfCopy;
  v12 = 0;
  v13 = *v57;
  v14 = obj;
  v50 = *v57;
  v15 = v11;
  do
  {
    v16 = 0;
    v51 = v15;
    do
    {
      if (*v57 != v13)
      {
        objc_enumerationMutation(v14);
      }

      v17 = *(*(&v56 + 1) + 8 * v16);
      segment = [v17 segment];

      if (!segment)
      {
        binary = [v17 binary];
        segments = [binary segments];
        if (![segments count])
        {
          goto LABEL_34;
        }

        firstObject = [segments firstObject];
        if ([firstObject hasOffsetIntoBinary] && objc_msgSend(firstObject, "offsetIntoBinary") < 0)
        {
LABEL_27:
          if (!v12)
          {
            v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:*(v47 + 256)];
          }

          [v12 removeObject:v17];
          loadAddress = [v17 loadAddress];
          isInKernelAddressSpace = [v17 isInKernelAddressSpace];
          exclave = [v17 exclave];
          v34 = [SABinaryLoadInfo loadInfosForSegmentsInBinary:binary binaryBaseAddress:loadAddress isInKernelAddressSpace:isInKernelAddressSpace exclave:exclave];
          [v12 addObjectsFromArray:v34];

LABEL_31:
          v14 = obj;
        }

        else
        {
          if (![binary length])
          {
            goto LABEL_33;
          }

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          exclave = [segments reverseObjectEnumerator];
          v23 = [exclave countByEnumeratingWithState:&v52 objects:v64 count:16];
          if (v23)
          {
            v24 = v23;
            v49 = v12;
            v25 = *v53;
LABEL_17:
            v26 = 0;
            while (1)
            {
              if (*v53 != v25)
              {
                objc_enumerationMutation(exclave);
              }

              v27 = *(*(&v52 + 1) + 8 * v26);
              if ([v27 hasOffsetIntoBinary])
              {
                break;
              }

              if (v24 == ++v26)
              {
                v24 = [exclave countByEnumeratingWithState:&v52 objects:v64 count:16];
                if (v24)
                {
                  goto LABEL_17;
                }

                goto LABEL_30;
              }
            }

            if ([v27 offsetIntoBinary] < 1)
            {
LABEL_30:
              v12 = v49;
              goto LABEL_31;
            }

            offsetIntoBinary = [v27 offsetIntoBinary];
            v29 = [v27 length] + offsetIntoBinary;
            v30 = [binary length];

            v31 = v29 > v30;
            v14 = obj;
            v12 = v49;
            v13 = v50;
            v15 = v51;
            if (v31)
            {
              goto LABEL_27;
            }

LABEL_33:

LABEL_34:
            goto LABEL_35;
          }
        }

        v13 = v50;
        v15 = v51;
        goto LABEL_33;
      }

LABEL_35:
      ++v16;
    }

    while (v16 != v15);
    v15 = [v14 countByEnumeratingWithState:&v56 objects:v65 count:16];
  }

  while (v15);

  if (v12)
  {
    objc_opt_self();
    [v12 sortUsingComparator:&__block_literal_global_361];
    v35 = [v12 copy];
    selfCopy = v47;
    v36 = *(v47 + 256);
    *(v47 + 256) = v35;
    info = infoCopy;
    instructions = instructionsCopy;
    a2 = v43;
    options = optionsCopy;
    goto LABEL_40;
  }

  selfCopy = v47;
  info = infoCopy;
  instructions = instructionsCopy;
  a2 = v43;
  options = optionsCopy;
LABEL_42:
  if ([SAFrame fixupLoadInfosInFrameTree:*(selfCopy + 256) binaryLoadInfos:*(selfCopy + 264) libraryCache:info uuidsWithNewInstructions:?]&& options && [(SATask *)selfCopy gatherLoadInfoFromLiveProcessWithDataGatheringOptions:a2 additionalCSSymbolicatorFlags:instructions])
  {
    if (alive)
    {
      *alive = 1;
    }

    v37 = [SAFrame fixupLoadInfosInFrameTree:*(selfCopy + 256) binaryLoadInfos:*(selfCopy + 264) libraryCache:info uuidsWithNewInstructions:?];
    if (v37)
    {
      v38 = v37;
      v39 = *__error();
      v40 = _sa_logt();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = [selfCopy debugDescription];
        *buf = 138412546;
        v61 = v41;
        v62 = 2048;
        v63 = v38;
        _os_log_debug_impl(&dword_1E0E2F000, v40, OS_LOG_TYPE_DEBUG, "%@: still have %lu frames with missing load info after getting load info from the live process", buf, 0x16u);
      }

      *__error() = v39;
    }
  }
}

- (uint64_t)isFromCurrentBootCycle
{
  selfCopy = self;
  if (self)
  {
    forkTimestamp = [self forkTimestamp];
    v3 = forkTimestamp;
    if (!forkTimestamp || ([forkTimestamp wallTime], v4 == 0.0))
    {
      startTimestamp = [selfCopy startTimestamp];
      v8 = startTimestamp;
      v6 = 0.0;
      if (startTimestamp)
      {
        [startTimestamp wallTime];
        if (v9 != 0.0)
        {
          [v8 wallTime];
          v6 = v10;
        }
      }
    }

    else
    {
      [v3 wallTime];
      v6 = v5;
    }

    if (v6 == 0.0)
    {
      sharedCache = [selfCopy sharedCache];

      if (sharedCache)
      {
        sharedCache2 = [selfCopy sharedCache];
        v13 = [SASharedCache currentSharedCacheWithDataGatheringOptions:?];
        selfCopy = sharedCache2 == v13;

        return selfCopy;
      }
    }

    else if (v6 > SATimeOfBootForLiveMachine())
    {
      return 1;
    }

    return 0;
  }

  return selfCopy;
}

- (unint64_t)sizeInBytesForSerializedVersion
{
  v3 = [(NSMutableSet *)self->_rootFrames count];
  v4 = [(NSArray *)self->_binaryLoadInfos count]+ v3;
  v5 = [(NSMutableArray *)self->_taskStates count];
  v6 = v4 + v5 + [(NSMutableDictionary *)self->_threads count];
  v7 = [(NSMutableDictionary *)self->_dispatchQueues count];
  return 8 * (v6 + v7 + [(NSMutableDictionary *)self->_swiftTasks count]) + 245;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v101 = *MEMORY[0x1E69E9840];
  if ([(SATask *)self sizeInBytesForSerializedVersion]!= length)
  {
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [(SATask *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v40 UTF8String];
      v91 = 2048;
      *v92 = [(SATask *)self sizeInBytesForSerializedVersion];
      *&v92[8] = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v38;
    v41 = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3008, "%s: size %lu != buffer length %lu", [v41 UTF8String], -[SATask sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  *&buffer->var0 = 2817;
  *(&buffer->var1 + 1) = self->_pid;
  *(&buffer->var2 + 2) = self->_ppid;
  *(&buffer->var3 + 2) = self->_rpid;
  *(&buffer->var4 + 2) = self->_uid;
  *(&buffer->var5 + 2) = self->_uniquePid;
  *(&buffer->var10 + 2) = *&self->_timeOfLastResponse;
  *(&buffer->var18 + 6) = self->_architecture;
  v10 = HIWORD(buffer->var19) & 0xFFFE | self->_isUnresponsive;
  HIWORD(buffer->var19) = v10;
  v11 = v10 & 0xFFFD | (2 * self->_usesSuddenTermination);
  HIWORD(buffer->var19) = v11;
  v12 = v11 & 0xFFFB | (4 * self->_allowsIdleExit);
  HIWORD(buffer->var19) = v12;
  v13 = v12 & 0xFFB7 | (self->_isRunningBoardManaged << 6);
  HIWORD(buffer->var19) = v13;
  v14 = v13 & 0xFFE7 | (16 * self->_isTranslocated);
  HIWORD(buffer->var19) = v14;
  v15 = v14 & 0xFF7F | (self->_hardenedHeap << 7);
  HIWORD(buffer->var19) = v15;
  v16 = v15 & 0xFEFF | (self->_mteCheckedAllocationsEnabled << 8);
  HIWORD(buffer->var19) = v16;
  v17 = v16 & 0xFDFF | (self->_mteUserDataAllocationsTagged << 9);
  HIWORD(buffer->var19) = v17;
  v18 = v17 & 0xFBFF | (self->_mteSoftModeEnabled << 10);
  HIWORD(buffer->var19) = v18;
  HIWORD(buffer->var19) = v18 & 0xF7FF | (self->_mteInheritanceTurnedOn << 11);
  *(&buffer->var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_name, dictionary);
  *(&buffer->var7 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_bundleName, dictionary);
  *(&buffer->var8 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_execTimestamp, dictionary);
  *(&buffer->var9 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_exitTimestamp, dictionary);
  *(&buffer->var15 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_mainThread, dictionary);
  *(&buffer->var16 + 6) = SASerializableIndexForPointerFromSerializationDictionary(self->_mainBinaryPath, dictionary);
  *(&buffer->var17 + 6) = SASerializableIndexForPointerFromSerializationDictionary(self->_sharedCache, dictionary);
  if ([(NSMutableSet *)self->_rootFrames count]>= 0xFFFFFFFF)
  {
LABEL_13:
    v42 = *__error();
    v43 = _sa_logt();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [(SATask *)self debugDescription];
      uTF8String2 = [v44 UTF8String];
      v46 = [(NSMutableSet *)self->_rootFrames count];
      *buf = 136315394;
      uTF8String = uTF8String2;
      v91 = 2048;
      *v92 = v46;
      _os_log_error_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_ERROR, "%s: %lu rootFrames", buf, 0x16u);
    }

    *__error() = v42;
    v47 = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3043, "%s: %lu rootFrames", [v47 UTF8String], -[NSMutableSet count](self->_rootFrames, "count"));

    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v19 = [(NSMutableSet *)self->_rootFrames count];
  *(&buffer->var11 + 2) = v19;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var20, v19, self->_rootFrames, dictionary);
  if ([(NSArray *)self->_binaryLoadInfos count]>= 0xFFFFFFFF)
  {
LABEL_16:
    v48 = *__error();
    v49 = _sa_logt();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [(SATask *)self debugDescription];
      uTF8String3 = [v50 UTF8String];
      v52 = [(NSArray *)self->_binaryLoadInfos count];
      *buf = 136315394;
      uTF8String = uTF8String3;
      v91 = 2048;
      *v92 = v52;
      _os_log_error_impl(&dword_1E0E2F000, v49, OS_LOG_TYPE_ERROR, "%s: %lu binaryLoadInfos", buf, 0x16u);
    }

    *__error() = v48;
    v53 = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3048, "%s: %lu binaryLoadInfos", [v53 UTF8String], -[NSArray count](self->_binaryLoadInfos, "count"));

    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  v20 = [(NSArray *)self->_binaryLoadInfos count];
  *(&buffer->var11 + 6) = v20;
  v21 = &buffer->var20 + *(&buffer->var11 + 2);
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v21, v20, self->_binaryLoadInfos, dictionary);
  if ([(NSMutableArray *)self->_taskStates count]>= 0xFFFFFFFF)
  {
LABEL_19:
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = [(SATask *)self debugDescription];
      uTF8String4 = [v56 UTF8String];
      v58 = [(NSMutableArray *)self->_taskStates count];
      *buf = 136315394;
      uTF8String = uTF8String4;
      v91 = 2048;
      *v92 = v58;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "%s: %lu taskStates", buf, 0x16u);
    }

    *__error() = v54;
    v59 = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3053, "%s: %lu taskStates", [v59 UTF8String], -[NSMutableArray count](self->_taskStates, "count"));

    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  v22 = [(NSMutableArray *)self->_taskStates count];
  *(&buffer->var12 + 2) = v22;
  v23 = &v21[*(&buffer->var11 + 6)];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v23, v22, self->_taskStates, dictionary);
  if ([(NSMutableDictionary *)self->_threads count]>= 0xFFFFFFFF)
  {
LABEL_22:
    v60 = *__error();
    v61 = _sa_logt();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [(SATask *)self debugDescription];
      uTF8String5 = [v62 UTF8String];
      v64 = [(NSMutableDictionary *)self->_threads count];
      *buf = 136315394;
      uTF8String = uTF8String5;
      v91 = 2048;
      *v92 = v64;
      _os_log_error_impl(&dword_1E0E2F000, v61, OS_LOG_TYPE_ERROR, "%s: %lu threads", buf, 0x16u);
    }

    *__error() = v60;
    v65 = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3058, "%s: %lu threads", [v65 UTF8String], -[NSMutableDictionary count](self->_threads, "count"));

    _os_crash();
    __break(1u);
    goto LABEL_25;
  }

  v24 = [(NSMutableDictionary *)self->_threads count];
  *(&buffer->var13 + 2) = v24;
  v25 = &v23[*(&buffer->var12 + 2)];
  v26 = v24;
  allValues = [(NSMutableDictionary *)self->_threads allValues];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v25, v26, allValues, dictionary);

  if ([(NSMutableDictionary *)self->_dispatchQueues count]>= 0xFFFFFFFF)
  {
LABEL_25:
    v66 = *__error();
    v67 = _sa_logt();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = [(SATask *)self debugDescription];
      uTF8String6 = [v68 UTF8String];
      v70 = [(NSMutableDictionary *)self->_dispatchQueues count];
      *buf = 136315394;
      uTF8String = uTF8String6;
      v91 = 2048;
      *v92 = v70;
      _os_log_error_impl(&dword_1E0E2F000, v67, OS_LOG_TYPE_ERROR, "%s: %lu dispatchQueues", buf, 0x16u);
    }

    *__error() = v66;
    buffer = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3063, "%s: %lu dispatchQueues", [($0248558AA1E9D335F2AA4C2D9BB3C007 *)buffer UTF8String], [(NSMutableDictionary *)self->_dispatchQueues count]);

    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  v28 = [(NSMutableDictionary *)self->_dispatchQueues count];
  *(&buffer->var14 + 2) = v28;
  v29 = &v25[*(&buffer->var13 + 2)];
  v30 = v28;
  allValues2 = [(NSMutableDictionary *)self->_dispatchQueues allValues];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v29, v30, allValues2, dictionary);

  v32 = &v29[8 * *(&buffer->var14 + 2)];
  v5 = v32 + 109 - buffer;
  if (v5 > [(SATask *)self sizeInBytesForSerializedVersion])
  {
LABEL_28:
    v88 = *__error();
    v71 = _sa_logt();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = [(SATask *)self debugDescription];
      uTF8String7 = [v72 UTF8String];
      v74 = *(&buffer->var11 + 2);
      v75 = *(&buffer->var11 + 6);
      v76 = *(&buffer->var12 + 2);
      v77 = *(&buffer->var13 + 2);
      log = v71;
      v78 = *(&buffer->var14 + 2);
      sizeInBytesForSerializedVersion = [(SATask *)self sizeInBytesForSerializedVersion];
      *buf = 136316930;
      uTF8String = uTF8String7;
      v91 = 1024;
      *v92 = v74;
      *&v92[4] = 1024;
      *&v92[6] = v75;
      LOWORD(lengthCopy) = 1024;
      *(&lengthCopy + 2) = v76;
      HIWORD(lengthCopy) = 1024;
      v94 = v77;
      v95 = 1024;
      v96 = v78;
      v71 = log;
      v97 = 2048;
      v98 = v5;
      v99 = 2048;
      v100 = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, log, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u rootFrames, %u loadInfos, %u task states, %u threads, %u dispatch queues), ended with length %ld, should be %lu", buf, 0x3Eu);
    }

    *__error() = v88;
    v80 = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3070, "%s: after serializing (with %u rootFrames, %u loadInfos, %u task states, %u threads, %u dispatch queues), ended with length %ld, should be %lu", [v80 UTF8String], *(&buffer->var11 + 2), *(&buffer->var11 + 6), *(&buffer->var12 + 2), *(&buffer->var13 + 2), *(&buffer->var14 + 2), v5, -[SATask sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"));

    _os_crash();
    __break(1u);
LABEL_31:
    v81 = *__error();
    v82 = _sa_logt();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [(SATask *)self debugDescription];
      uTF8String8 = [v83 UTF8String];
      v85 = [(NSMutableDictionary *)self->_swiftTasks count];
      *buf = 136315394;
      uTF8String = uTF8String8;
      v91 = 2048;
      *v92 = v85;
      _os_log_error_impl(&dword_1E0E2F000, v82, OS_LOG_TYPE_ERROR, "%s: %lu swiftTasks", buf, 0x16u);
    }

    *__error() = v81;
    v86 = [(SATask *)self debugDescription];
    _SASetCrashLogMessage(3093, "%s: %lu swiftTasks", [v86 UTF8String], -[NSMutableDictionary count](self->_swiftTasks, "count"));

    _os_crash();
    __break(1u);
  }

  *v32 = SASerializableIndexForPointerFromSerializationDictionary(self->_bundleBuildVersion, dictionary);
  *(v32 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_bundleProjectName, dictionary);
  *(v32 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_bundleSourceVersion, dictionary);
  *(v32 + 3) = SASerializableIndexForPointerFromSerializationDictionary(self->_bundleProductBuildVersion, dictionary);
  *(v32 + 7) = SASerializableIndexForPointerFromSerializationDictionary(self->_mainBinary, dictionary);
  *(v32 + 4) = -1;
  *(v32 + 5) = SASerializableIndexForPointerFromSerializationDictionary(self->_installerVersionID, dictionary);
  *(v32 + 8) = self->_adamID;
  *(v32 + 6) = SASerializableIndexForPointerFromSerializationDictionary(self->_vendorID, dictionary);
  *(v32 + 9) = SASerializableIndexForPointerFromSerializationDictionary(self->_appType, dictionary);
  *(v32 + 10) = SASerializableIndexForPointerFromSerializationDictionary(self->_cohortID, dictionary);
  HIWORD(buffer->var19) = HIWORD(buffer->var19) & 0xFFDF | (32 * self->_isBeta);
  *(v32 + 11) = SASerializableIndexForPointerFromSerializationDictionary(self->_forkTimestamp, dictionary);
  v32[96] = self->_developerType;
  *(v32 + 97) = self->_resourceCoalitionID;
  if ([(NSMutableDictionary *)self->_swiftTasks count]>= 0xFFFFFFFF)
  {
    goto LABEL_31;
  }

  v33 = [(NSMutableDictionary *)self->_swiftTasks count];
  *(v32 + 105) = v33;
  v34 = v33;
  allValues3 = [(NSMutableDictionary *)self->_swiftTasks allValues];
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(v32 + 109, v34, allValues3, dictionary);

  v36 = &v32[8 * *(v32 + 105) + 109];
  *v36 = SASerializableIndexForPointerFromSerializationDictionary(self->_distributorID, dictionary);
  v36[1] = SASerializableIndexForPointerFromSerializationDictionary(self->_resourceCoalitionName, dictionary);
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(NSString *)self->_name addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleName addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleBuildVersion addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleProjectName addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleSourceVersion addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleProductBuildVersion addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_execTimestamp addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_exitTimestamp addSelfToSerializationDictionary:dictionary];
    [(SAThread *)self->_mainThread addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_mainBinaryPath addSelfToSerializationDictionary:dictionary];
    [(SABinary *)self->_mainBinary addSelfToSerializationDictionary:dictionary];
    [(SASharedCache *)self->_sharedCache addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_installerVersionID addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_vendorID addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_distributorID addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_appType addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_cohortID addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_forkTimestamp addSelfToSerializationDictionary:dictionary];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = self->_rootFrames;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      do
      {
        v11 = 0;
        do
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v36 + 1) + 8 * v11++) addSelfToSerializationDictionary:dictionary];
        }

        while (v9 != v11);
        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v9);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = self->_binaryLoadInfos;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        v16 = 0;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v32 + 1) + 8 * v16++) addSelfToSerializationDictionary:dictionary];
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v14);
    }

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v28 = 0u;
    v17 = self->_taskStates;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v28 + 1) + 8 * v21++) addSelfToSerializationDictionary:dictionary];
        }

        while (v19 != v21);
        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v19);
    }

    threads = self->_threads;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __58__SATask_Serialization__addSelfToSerializationDictionary___block_invoke;
    v27[3] = &unk_1E86F6028;
    v27[4] = dictionary;
    [(NSMutableDictionary *)threads enumerateKeysAndObjectsUsingBlock:v27];
    dispatchQueues = self->_dispatchQueues;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__SATask_Serialization__addSelfToSerializationDictionary___block_invoke_2;
    v26[3] = &unk_1E86F8720;
    v26[4] = dictionary;
    [(NSMutableDictionary *)dispatchQueues enumerateKeysAndObjectsUsingBlock:v26];
    swiftTasks = self->_swiftTasks;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__SATask_Serialization__addSelfToSerializationDictionary___block_invoke_3;
    v25[3] = &unk_1E86F8748;
    v25[4] = dictionary;
    [(NSMutableDictionary *)swiftTasks enumerateKeysAndObjectsUsingBlock:v25];
    [(NSString *)self->_resourceCoalitionName addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v27 = *MEMORY[0x1E69E9840];
  if (*buffer >= 0xCu)
  {
    goto LABEL_14;
  }

  if (length <= 0x77)
  {
    v8 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v19 = 2048;
      *v20 = 120;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(3165, "bufferLength %lu < serialized SATask struct %lu", length, 120);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  bufferCopy = buffer;
  if (8 * (vaddvq_s32(*(buffer + 66)) + *(buffer + 82)) + 120 > length)
  {
LABEL_11:
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(bufferCopy + 66);
      v12 = *(bufferCopy + 70);
      v13 = *(bufferCopy + 74);
      v14 = *(bufferCopy + 78);
      v15 = *(bufferCopy + 82);
      *buf = 134219264;
      lengthCopy2 = length;
      v19 = 1024;
      *v20 = v11;
      *&v20[4] = 1024;
      *&v20[6] = v12;
      v21 = 1024;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      v25 = 1024;
      v26 = v15;
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v9;
    _SASetCrashLogMessage(3166, "bufferLength %lu < serialized SATask struct with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", length, *(bufferCopy + 66), *(bufferCopy + 70), *(bufferCopy + 74), *(bufferCopy + 78), *(bufferCopy + 82));
    _os_crash();
    __break(1u);
LABEL_14:
    v16 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATask version" userInfo:0];
    objc_exception_throw(v16);
  }

  result = [SATask taskWithPid:*(buffer + 18) uniquePid:0 name:0 sharedCache:?];
  *(result + 20) = *(bufferCopy + 2);
  *(result + 21) = *(bufferCopy + 6);
  *(result + 22) = *(bufferCopy + 10);
  *(result + 23) = *(bufferCopy + 14);
  *(result + 12) = *(bufferCopy + 18);
  *(result + 31) = *(bufferCopy + 58);
  *(result + 36) = *(bufferCopy + 110);
  *(result + 67) = *(bufferCopy + 118) & 1;
  *(result + 68) = (*(bufferCopy + 118) & 2) != 0;
  *(result + 69) = (*(bufferCopy + 118) & 4) != 0;
  *(result + 70) = (*(bufferCopy + 118) & 0x10) != 0;
  v7 = *(bufferCopy + 1);
  if (v7 >= 0xA)
  {
    *(result + 72) = (*(bufferCopy + 118) & 0x40) != 0;
    if (v7 != 10)
    {
      *(result + 71) = (*(bufferCopy + 118) & 0x80) != 0;
      *(result + 75) = *(bufferCopy + 119) & 1;
      *(result + 76) = (*(bufferCopy + 118) & 0x200) != 0;
      *(result + 77) = (*(bufferCopy + 118) & 0x400) != 0;
      *(result + 78) = (*(bufferCopy + 118) & 0x800) != 0;
    }
  }

  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v246 = *MEMORY[0x1E69E9840];
  if (*buffer >= 0xCu)
  {
    goto LABEL_82;
  }

  if (length <= 0x77)
  {
    v149 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v236 = 2048;
      *v237 = 120;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct %lu", buf, 0x16u);
    }

    *__error() = v149;
    _SASetCrashLogMessage(3203, "bufferLength %lu < serialized SATask struct %lu", length, 120);
    _os_crash();
    __break(1u);
    goto LABEL_52;
  }

  bufferCopy = buffer;
  v229 = 8 * (vaddvq_s32(*(buffer + 66)) + *(buffer + 82));
  if (v229 + 120 > length)
  {
LABEL_52:
    v150 = *__error();
    v151 = _sa_logt();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      v152 = *(bufferCopy + 66);
      v153 = *(bufferCopy + 70);
      v154 = *(bufferCopy + 74);
      v155 = *(bufferCopy + 78);
      v156 = *(bufferCopy + 82);
      *buf = 134219264;
      lengthCopy2 = length;
      v236 = 1024;
      *v237 = v152;
      *&v237[4] = 1024;
      *&v237[6] = v153;
      v238 = 1024;
      v239 = v154;
      v240 = 1024;
      v241 = v155;
      v242 = 1024;
      v243 = v156;
      _os_log_error_impl(&dword_1E0E2F000, v151, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v150;
    _SASetCrashLogMessage(3205, "bufferLength %lu < serialized SATask struct with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", length, *(bufferCopy + 66), *(bufferCopy + 70), *(bufferCopy + 74), *(bufferCopy + 78), *(bufferCopy + 82));
    _os_crash();
    __break(1u);
LABEL_55:
    v157 = *__error();
    v158 = _sa_logt();
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      v159 = *(v6 + 66);
      v160 = *(v6 + 70);
      v161 = *(v6 + 74);
      v162 = *(v6 + 78);
      v163 = *(v6 + 82);
      *buf = 134219264;
      lengthCopy2 = v8;
      v236 = 1024;
      *v237 = v159;
      *&v237[4] = 1024;
      *&v237[6] = v160;
      v238 = 1024;
      v239 = v161;
      v240 = 1024;
      v241 = v162;
      v242 = 1024;
      v243 = v163;
      _os_log_error_impl(&dword_1E0E2F000, v158, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v2 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v157;
    _SASetCrashLogMessage(3252, "bufferLength %lu < serialized SATask struct v2 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", v8, *(v6 + 66), *(v6 + 70), *(v6 + 74), *(v6 + 78), *(v6 + 82));
    _os_crash();
    __break(1u);
LABEL_58:
    v164 = *__error();
    v165 = _sa_logt();
    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      v166 = *(v6 + 66);
      v167 = *(v6 + 70);
      v168 = *(v6 + 74);
      v169 = *(v6 + 78);
      v170 = *(v6 + 82);
      *buf = 134219264;
      lengthCopy2 = v8;
      v236 = 1024;
      *v237 = v166;
      *&v237[4] = 1024;
      *&v237[6] = v167;
      v238 = 1024;
      v239 = v168;
      v240 = 1024;
      v241 = v169;
      v242 = 1024;
      v243 = v170;
      _os_log_error_impl(&dword_1E0E2F000, v165, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v3 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v164;
    _SASetCrashLogMessage(3279, "bufferLength %lu < serialized SATask struct v3 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", v8, *(v6 + 66), *(v6 + 70), *(v6 + 74), *(v6 + 78), *(v6 + 82));
    _os_crash();
    __break(1u);
LABEL_61:
    v171 = *__error();
    v172 = _sa_logt();
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      v173 = *(v6 + 66);
      v174 = *(v6 + 70);
      v175 = *(v6 + 74);
      v176 = *(v6 + 78);
      v177 = *(v6 + 82);
      *buf = 134219264;
      lengthCopy2 = v8;
      v236 = 1024;
      *v237 = v173;
      *&v237[4] = 1024;
      *&v237[6] = v174;
      v238 = 1024;
      v239 = v175;
      v240 = 1024;
      v241 = v176;
      v242 = 1024;
      v243 = v177;
      _os_log_error_impl(&dword_1E0E2F000, v172, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v4 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v171;
    _SASetCrashLogMessage(3291, "bufferLength %lu < serialized SATask struct v4 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", v8, *(v6 + 66), *(v6 + 70), *(v6 + 74), *(v6 + 78), *(v6 + 82));
    _os_crash();
    __break(1u);
LABEL_64:
    v178 = *__error();
    v179 = _sa_logt();
    if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
    {
      v180 = *(v6 + 66);
      v181 = *(v6 + 70);
      v182 = *(v6 + 74);
      v183 = *(v6 + 78);
      v184 = *(v6 + 82);
      *buf = 134219264;
      lengthCopy2 = v8;
      v236 = 1024;
      *v237 = v180;
      *&v237[4] = 1024;
      *&v237[6] = v181;
      v238 = 1024;
      v239 = v182;
      v240 = 1024;
      v241 = v183;
      v242 = 1024;
      v243 = v184;
      _os_log_error_impl(&dword_1E0E2F000, v179, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v5 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v178;
    _SASetCrashLogMessage(3307, "bufferLength %lu < serialized SATask struct v5 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", v8, *(v6 + 66), *(v6 + 70), *(v6 + 74), *(v6 + 78), *(v6 + 82));
    _os_crash();
    __break(1u);
LABEL_67:
    v185 = *__error();
    v186 = _sa_logt();
    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
    {
      v187 = *(v233 + 66);
      v188 = *(v233 + 70);
      v189 = *(v233 + 74);
      v190 = *(v233 + 78);
      v191 = *(v233 + 82);
      *buf = 134219264;
      lengthCopy2 = lengthCopy3;
      v236 = 1024;
      *v237 = v187;
      *&v237[4] = 1024;
      *&v237[6] = v188;
      v238 = 1024;
      v239 = v189;
      v240 = 1024;
      v241 = v190;
      v242 = 1024;
      v243 = v191;
      _os_log_error_impl(&dword_1E0E2F000, v186, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v6 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v185;
    _SASetCrashLogMessage(3319, "bufferLength %lu < serialized SATask struct v6 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", lengthCopy3, *(v233 + 66), *(v233 + 70), *(v233 + 74), *(v233 + 78), *(v233 + 82));
    _os_crash();
    __break(1u);
LABEL_70:
    v192 = *__error();
    v193 = _sa_logt();
    if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
    {
      v194 = *(v233 + 66);
      v195 = *(v233 + 70);
      v196 = *(v233 + 74);
      v197 = *(v233 + 78);
      v198 = *(v233 + 82);
      *buf = 134219264;
      lengthCopy2 = lengthCopy3;
      v236 = 1024;
      *v237 = v194;
      *&v237[4] = 1024;
      *&v237[6] = v195;
      v238 = 1024;
      v239 = v196;
      v240 = 1024;
      v241 = v197;
      v242 = 1024;
      v243 = v198;
      _os_log_error_impl(&dword_1E0E2F000, v193, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v7 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", buf, 0x2Au);
    }

    *__error() = v192;
    _SASetCrashLogMessage(3330, "bufferLength %lu < serialized SATask struct v7 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues", lengthCopy3, *(v233 + 66), *(v233 + 70), *(v233 + 74), *(v233 + 78), *(v233 + 82));
    _os_crash();
    __break(1u);
    goto LABEL_73;
  }

  lengthCopy3 = length;
  v14 = *(buffer + 26);
  v15 = objc_opt_class();
  v16 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v14, dictionary, bufferDictionary, v15, 0);
  name = self->_name;
  self->_name = v16;

  v18 = *(bufferCopy + 34);
  v19 = objc_opt_class();
  v20 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v18, dictionary, bufferDictionary, v19, 0);
  bundleName = self->_bundleName;
  self->_bundleName = v20;

  v22 = *(bufferCopy + 42);
  v23 = objc_opt_class();
  v24 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v22, dictionary, bufferDictionary, v23, 0);
  execTimestamp = self->_execTimestamp;
  self->_execTimestamp = v24;

  v26 = *(bufferCopy + 50);
  v27 = objc_opt_class();
  v28 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v26, dictionary, bufferDictionary, v27, 0);
  exitTimestamp = self->_exitTimestamp;
  self->_exitTimestamp = v28;

  v30 = *(bufferCopy + 86);
  v31 = objc_opt_class();
  v32 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v30, dictionary, bufferDictionary, v31, 0);
  mainThread = self->_mainThread;
  self->_mainThread = v32;

  v34 = *(bufferCopy + 94);
  v35 = objc_opt_class();
  v36 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v34, dictionary, bufferDictionary, v35, 0);
  mainBinaryPath = self->_mainBinaryPath;
  self->_mainBinaryPath = v36;

  v38 = *(bufferCopy + 102);
  v39 = objc_opt_class();
  v40 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v38, dictionary, bufferDictionary, v39, 0);
  sharedCache = self->_sharedCache;
  self->_sharedCache = v40;

  if (!self->_sharedCache)
  {
    self->_hasNoSharedCache = 1;
  }

  v42 = *(bufferCopy + 66);
  v43 = bufferCopy + 120 + 8 * v42;
  v233 = bufferCopy;
  v44 = *(bufferCopy + 70);
  v45 = objc_opt_class();
  v46 = SASerializableNewMutableArrayFromIndexList(v43, v44, dictionary, bufferDictionary, v45);
  v47 = [v46 copy];
  binaryLoadInfos = self->_binaryLoadInfos;
  self->_binaryLoadInfos = v47;

  v49 = *(bufferCopy + 66);
  v50 = objc_opt_class();
  v51 = v49;
  v6 = bufferCopy;
  v52 = SASerializableNewMutableSetFromIndexList(bufferCopy + 120, v51, dictionary, bufferDictionary, v50);
  rootFrames = self->_rootFrames;
  self->_rootFrames = v52;

  v54 = *(bufferCopy + 70);
  v55 = *(v6 + 74);
  v56 = objc_opt_class();
  v225 = v43 + 8 * v54;
  v57 = SASerializableNewMutableArrayFromIndexList(v225, v55, dictionary, bufferDictionary, v56);
  taskStates = self->_taskStates;
  self->_taskStates = v57;

  v59 = *(v6 + 74);
  v60 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(v6 + 78)];
  threads = self->_threads;
  self->_threads = v60;

  v7 = 0x1E696A000uLL;
  v227 = v42;
  v228 = v54;
  v232 = v59;
  if (*(v6 + 78))
  {
    v62 = 0;
    v63 = 8 * v42 + 8 * v59 + 8 * v54 + v6 + 120;
    do
    {
      v64 = *(v63 + 8 * v62);
      v65 = objc_opt_class();
      v66 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v64, dictionary, bufferDictionary, v65, 0);
      v67 = self->_threads;
      v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v66, "threadId")}];
      v69 = v67;
      v6 = v233;
      [(NSMutableDictionary *)v69 setObject:v66 forKeyedSubscript:v68];

      v7 = 0x1E696A000;
      ++v62;
      v70 = *(v233 + 78);
    }

    while (v62 < v70);
  }

  else
  {
    v70 = 0;
  }

  v71 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(v6 + 82)];
  dispatchQueues = self->_dispatchQueues;
  self->_dispatchQueues = v71;

  if (*(v6 + 82))
  {
    v73 = 0;
    v74 = 8 * v70 + 8 * v227 + 8 * v232 + 8 * v228 + v6 + 120;
    v75 = v7;
    do
    {
      v76 = *(v74 + 8 * v73);
      v77 = objc_opt_class();
      v78 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v76, dictionary, bufferDictionary, v77, 0);
      v79 = self->_dispatchQueues;
      v7 = [*(v75 + 3480) numberWithUnsignedLongLong:{objc_msgSend(v78, "identifier")}];
      v80 = v79;
      v6 = v233;
      [(NSMutableDictionary *)v80 setObject:v78 forKeyedSubscript:v7];

      ++v73;
      v81 = *(v233 + 82);
    }

    while (v73 < v81);
  }

  else
  {
    v81 = 0;
  }

  v8 = lengthCopy3;
  if (*(v6 + 1) < 2u)
  {
    return;
  }

  if (v229 + 176 > lengthCopy3)
  {
    goto LABEL_55;
  }

  v7 = v225 + 8 * v232 + 8 * v70 + 8 * v81;
  v82 = *v7;
  v83 = objc_opt_class();
  v84 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v82, dictionary, bufferDictionary, v83, 0);
  bundleBuildVersion = self->_bundleBuildVersion;
  self->_bundleBuildVersion = v84;

  v86 = *(v7 + 8);
  v87 = objc_opt_class();
  v88 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v86, dictionary, bufferDictionary, v87, 0);
  bundleProjectName = self->_bundleProjectName;
  self->_bundleProjectName = v88;

  v90 = *(v7 + 16);
  v91 = objc_opt_class();
  v92 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v90, dictionary, bufferDictionary, v91, 0);
  bundleSourceVersion = self->_bundleSourceVersion;
  self->_bundleSourceVersion = v92;

  v94 = *(v7 + 24);
  v95 = objc_opt_class();
  v96 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v94, dictionary, bufferDictionary, v95, 0);
  bundleProductBuildVersion = self->_bundleProductBuildVersion;
  self->_bundleProductBuildVersion = v96;

  if (!self->_adamID)
  {
    v98 = *(v7 + 32);
    v99 = objc_opt_class();
    v100 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v98, dictionary, bufferDictionary, v99, 0);
    if (v100)
    {
      v226 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v101 = [v226 numberFromString:v100];
      v102 = v101;
      if (v101)
      {
        self->_adamID = [v101 unsignedLongLongValue];
      }

      else
      {
        v224 = *__error();
        v103 = _sa_logt();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          lengthCopy2 = v100;
          _os_log_fault_impl(&dword_1E0E2F000, v103, OS_LOG_TYPE_FAULT, "Unable to parse commerceAppID %@", buf, 0xCu);
        }

        *__error() = v224;
      }

      v6 = v233;
    }
  }

  v104 = *(v7 + 40);
  v105 = objc_opt_class();
  v106 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v104, dictionary, bufferDictionary, v105, 0);
  installerVersionID = self->_installerVersionID;
  self->_installerVersionID = v106;

  v108 = *(v7 + 48);
  v109 = objc_opt_class();
  v110 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v108, dictionary, bufferDictionary, v109, 0);
  vendorID = self->_vendorID;
  self->_vendorID = v110;

  if (*(v6 + 1) < 3u)
  {
    return;
  }

  if (v229 + 184 > lengthCopy3)
  {
    goto LABEL_58;
  }

  v112 = *(v7 + 56);
  v113 = objc_opt_class();
  v114 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v112, dictionary, bufferDictionary, v113, 0);
  mainBinary = self->_mainBinary;
  self->_mainBinary = v114;

  if (*(v6 + 1) < 4u)
  {
    return;
  }

  if (v229 + 216 > lengthCopy3)
  {
    goto LABEL_61;
  }

  self->_adamID = *(v7 + 64);
  v116 = *(v7 + 72);
  v117 = objc_opt_class();
  v118 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v116, dictionary, bufferDictionary, v117, 0);
  appType = self->_appType;
  self->_appType = v118;

  v120 = *(v7 + 80);
  v121 = objc_opt_class();
  v122 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v120, dictionary, bufferDictionary, v121, 0);
  cohortID = self->_cohortID;
  self->_cohortID = v122;

  self->_isBeta = (*(v6 + 118) & 0x20) != 0;
  v124 = *(v7 + 88);
  v125 = objc_opt_class();
  v126 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v124, dictionary, bufferDictionary, v125, 0);
  forkTimestamp = self->_forkTimestamp;
  self->_forkTimestamp = v126;

  if (*(v6 + 1) < 5u)
  {
    return;
  }

  if (v229 + 217 > lengthCopy3)
  {
    goto LABEL_64;
  }

  self->_developerType = *(v7 + 96);
  v128 = *(v6 + 1);
  if (v128 < 6)
  {
    return;
  }

  if (v229 + 225 > lengthCopy3)
  {
    goto LABEL_67;
  }

  self->_resourceCoalitionID = *(v7 + 97);
  if (v128 == 6)
  {
    return;
  }

  if (v229 + 229 > lengthCopy3)
  {
    goto LABEL_70;
  }

  v230 = v229 + 229 + 8 * *(v7 + 105);
  if (v230 > lengthCopy3)
  {
LABEL_73:
    v199 = *__error();
    v200 = _sa_logt();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      v201 = *(v233 + 66);
      v202 = *(v233 + 70);
      v203 = *(v233 + 74);
      v204 = *(v233 + 78);
      v205 = *(v233 + 82);
      v206 = *(v7 + 105);
      *buf = 134219520;
      lengthCopy2 = lengthCopy3;
      v236 = 1024;
      *v237 = v201;
      *&v237[4] = 1024;
      *&v237[6] = v202;
      v238 = 1024;
      v239 = v203;
      v240 = 1024;
      v241 = v204;
      v242 = 1024;
      v243 = v205;
      v244 = 1024;
      v245 = v206;
      _os_log_error_impl(&dword_1E0E2F000, v200, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v7 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues, %u swift tasks", buf, 0x30u);
    }

    *__error() = v199;
    _SASetCrashLogMessage(3333, "bufferLength %lu < serialized SATask struct v7 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues, %u swift tasks", lengthCopy3, *(v233 + 66), *(v233 + 70), *(v233 + 74), *(v233 + 78), *(v233 + 82), *(v7 + 105));
    _os_crash();
    __break(1u);
    goto LABEL_76;
  }

  v129 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(v7 + 105)];
  swiftTasks = self->_swiftTasks;
  self->_swiftTasks = v129;

  if (*(v7 + 105))
  {
    v131 = 0;
    v132 = 8 * v70 + 8 * v81 + 8 * v227 + 8 * v232 + 8 * v228 + v6 + 229;
    bufferDictionaryCopy2 = bufferDictionary;
    do
    {
      v134 = *(v132 + 8 * v131);
      v135 = objc_opt_class();
      v136 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v134, dictionary, bufferDictionary, v135, 0);
      v137 = self->_swiftTasks;
      v138 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v136, "identifier")}];
      [(NSMutableDictionary *)v137 setObject:v136 forKeyedSubscript:v138];

      ++v131;
      v139 = *(v7 + 105);
    }

    while (v131 < v139);
  }

  else
  {
    v139 = 0;
    bufferDictionaryCopy2 = bufferDictionary;
  }

  if (*(v233 + 1) >= 8u)
  {
    if (v230 + 8 <= lengthCopy3)
    {
      v140 = (v7 + 109 + 8 * v139);
      v141 = *v140;
      v142 = objc_opt_class();
      v143 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v141, dictionary, bufferDictionaryCopy2, v142, 0);
      distributorID = self->_distributorID;
      self->_distributorID = v143;

      if (*(v233 + 1) < 9u)
      {
        return;
      }

      if (v230 + 16 <= lengthCopy3)
      {
        v145 = v140[1];
        v146 = objc_opt_class();
        v147 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v145, dictionary, bufferDictionaryCopy2, v146, 0);
        resourceCoalitionName = self->_resourceCoalitionName;
        self->_resourceCoalitionName = v147;

        return;
      }

      goto LABEL_79;
    }

LABEL_76:
    v207 = *__error();
    v208 = _sa_logt();
    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
    {
      v209 = *(v233 + 66);
      v210 = *(v233 + 70);
      v211 = *(v233 + 74);
      v212 = *(v233 + 78);
      v213 = *(v233 + 82);
      v214 = *(v7 + 105);
      *buf = 134219520;
      lengthCopy2 = lengthCopy3;
      v236 = 1024;
      *v237 = v209;
      *&v237[4] = 1024;
      *&v237[6] = v210;
      v238 = 1024;
      v239 = v211;
      v240 = 1024;
      v241 = v212;
      v242 = 1024;
      v243 = v213;
      v244 = 1024;
      v245 = v214;
      _os_log_error_impl(&dword_1E0E2F000, v208, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v8 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues, %u swift tasks", buf, 0x30u);
    }

    *__error() = v207;
    _SASetCrashLogMessage(3348, "bufferLength %lu < serialized SATask struct v8 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues, %u swift tasks", lengthCopy3, *(v233 + 66), *(v233 + 70), *(v233 + 74), *(v233 + 78), *(v233 + 82), *(v7 + 105));
    _os_crash();
    __break(1u);
LABEL_79:
    v215 = *__error();
    v216 = _sa_logt();
    if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
    {
      v217 = *(v233 + 66);
      v218 = *(v233 + 70);
      v219 = *(v233 + 74);
      v220 = *(v233 + 78);
      v221 = *(v233 + 82);
      v222 = *(v7 + 105);
      *buf = 134219520;
      lengthCopy2 = lengthCopy3;
      v236 = 1024;
      *v237 = v217;
      *&v237[4] = 1024;
      *&v237[6] = v218;
      v238 = 1024;
      v239 = v219;
      v240 = 1024;
      v241 = v220;
      v242 = 1024;
      v243 = v221;
      v244 = 1024;
      v245 = v222;
      _os_log_error_impl(&dword_1E0E2F000, v216, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SATask struct v9 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues, %u swift tasks", buf, 0x30u);
    }

    *__error() = v215;
    _SASetCrashLogMessage(3359, "bufferLength %lu < serialized SATask struct v9 with %u root frames, %u image infos, %u task states, %u threads, %u dispatch queues, %u swift tasks", lengthCopy3, *(v233 + 66), *(v233 + 70), *(v233 + 74), *(v233 + 78), *(v233 + 82), *(v7 + 105));
    _os_crash();
    __break(1u);
LABEL_82:
    v223 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SATask version" userInfo:0];
    objc_exception_throw(v223);
  }
}

+ (double)taskWithoutReferencesFromPAStyleSerializedTask:(uint64_t)task
{
  objc_opt_self();
  v3 = [SATask taskWithPid:*(a2 + 40) uniquePid:0 name:0 sharedCache:?];
  if (*(v3 + 12) == -1)
  {
    *(v3 + 12) = v3[20];
  }

  v3[21] = *(a2 + 12);
  v3[22] = *(a2 + 16);
  v3[23] = *(a2 + 20);
  v4 = *a2;
  *(v3 + 67) = *(a2 + 56);
  *(v3 + 68) = *(a2 + 57);
  *(v3 + 69) = *(a2 + 58);
  if (v4 <= 0xF33DFAC5)
  {
    result = *(a2 + 62);
    *(v3 + 31) = result;
    *(v3 + 36) = *(a2 + 87);
  }

  else
  {
    result = *(a2 + 60);
    *(v3 + 31) = result;
    *(v3 + 36) = *(a2 + 84);
    if (*a2 > 0xF33DFAC6uLL)
    {
      *(v3 + 70) = *(a2 + 100);
    }
  }

  return result;
}

- (void)populateReferencesUsingPAStyleSerializedTask:(void *)task andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  if (self)
  {
    v6 = a2;
    v8 = a2[3];
    v9 = objc_opt_class();
    v10 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v8, task, dictionary, v9, 0);
    v11 = self[7];
    self[7] = v10;

    v12 = v6[4];
    v13 = objc_opt_class();
    v14 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v12, task, dictionary, v13, 0);
    v15 = self[13];
    self[13] = v14;

    v16 = *v6 - 4080925381;
    if (v16 >= 3)
    {
      v44 = @"Bad SAPAStyleTimeInsensitiveTaskData magic";
      goto LABEL_17;
    }

    v17 = *(v6 + qword_1E0F283D0[v16]);
    v18 = *(v6 + qword_1E0F283E8[v16]);
    v19 = (v6 + qword_1E0F28400[v16]);
    if (!v17)
    {
      goto LABEL_8;
    }

    v48 = v6;
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v17];
    v46 = v19;
    v47 = v17;
    v21 = v19;
    do
    {
      v22 = *v21++;
      v23 = objc_opt_class();
      v24 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v22, task, dictionary, v23, 0);
      if (!v24)
      {
        v44 = @"Failed to deserialize paImageInfo";
        goto LABEL_17;
      }

      v26 = v24;
      v27 = objc_getProperty(v24, v25, 8, 1);
      [v20 addObject:v27];

      --v17;
    }

    while (v17);
    v28 = [v20 copy];
    v29 = self[32];
    self[32] = v28;

    v17 = v47;
    v6 = v48;
    v19 = v46;
LABEL_8:
    if (v18)
    {
      v30 = &v19[v17];
      v31 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v18];
      v32 = self[35];
      self[35] = v31;

      while (1)
      {
        v33 = *v30++;
        v34 = objc_opt_class();
        v35 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v33, task, dictionary, v34, 0);
        if (!v35)
        {
          break;
        }

        v37 = v35;
        v38 = self[35];
        v39 = objc_getProperty(v35, v36, 8, 1);
        [v38 addObject:v39];

        if (!--v18)
        {
          goto LABEL_12;
        }
      }

      v44 = @"Failed to deserialize root frame";
LABEL_17:
      v45 = [SAException exceptionWithName:@"Decoding failure" reason:v44 userInfo:0];
      objc_exception_throw(v45);
    }

LABEL_12:
    v40 = v6[6];
    v41 = objc_opt_class();
    v42 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v40, task, dictionary, v41, 0);
    v43 = self[5];
    self[5] = v42;
  }
}

- (id)removeStacksOutsideThisProcess
{
  if (self)
  {
    v2 = [*(self + 280) objectsPassingTest:&__block_literal_global_562];
    anyObject = [v2 anyObject];

    if (anyObject)
    {
      v4 = objc_alloc_init(SAStackIterator);
      [*(self + 280) removeObject:anyObject];
      v5 = objc_alloc_init(SAFrame);
      v6 = v5;
      if (v5)
      {
        v5->_BOOLs.bits |= 8u;
      }

      [*(self + 280) addObject:v5];
      v7 = *(self + 16);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__SATask_Serialization__removeStacksOutsideThisProcess__block_invoke_2;
      v12[3] = &unk_1E86F80A0;
      v8 = anyObject;
      v13 = v8;
      v14 = v4;
      selfCopy = self;
      v9 = v4;
      [v7 enumerateKeysAndObjectsUsingBlock:v12];
      v10 = v8;
    }
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

void *__55__SATask_Serialization__removeStacksOutsideThisProcess__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isTruncatedBacktraceFrame];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

void __55__SATask_Serialization__removeStacksOutsideThisProcess__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SATask_Serialization__removeStacksOutsideThisProcess__block_invoke_3;
  v7[3] = &unk_1E86F8078;
  v8 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  [a3 enumerateThreadStatesBetweenStartTime:0 startSampleIndex:0x7FFFFFFFFFFFFFFFLL endTime:0 endSampleIndex:0x7FFFFFFFFFFFFFFFLL reverseOrder:0 block:v7];
}

void __55__SATask_Serialization__removeStacksOutsideThisProcess__block_invoke_3(void *a1, void *a2)
{
  newValue = [a2 stack];
  v4 = [newValue firstObject];
  v5 = a1[4];

  v7 = newValue;
  if (v4 == v5)
  {
    v8 = a1[5];
    if (v8)
    {
      objc_setProperty_atomic(v8, v6, newValue, 8);
      v9 = a1[5];
    }

    else
    {
      v9 = 0;
    }

    v11 = [(SATask *)a1[6] leafFrameAfterAddingStack:v9 leafOfCRootFramesReplacedBySwiftAsync:0];
    if (a2)
    {
      objc_setProperty_atomic(a2, v10, v11, 64);
    }

    v7 = newValue;
  }
}

@end