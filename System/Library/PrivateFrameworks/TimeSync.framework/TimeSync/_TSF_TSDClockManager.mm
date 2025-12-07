@interface _TSF_TSDClockManager
+ (id)clockManager;
+ (id)daemonClassNameForClockIdentifier:(unint64_t)identifier;
+ (id)defaultClockPersonalities;
+ (id)diagnosticInfo;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier daemonClassName:(id *)name;
+ (id)sharedClockManager;
+ (void)diagnosticInfo;
+ (void)initialize;
+ (void)notifyWhenClockManagerIsAvailable:(id)available;
+ (void)notifyWhenClockManagerIsUnavailable:(id)unavailable;
- (BOOL)addMappingFromClockID:(unint64_t)d toCoreAudioClockDomain:(unsigned int *)domain error:(id *)error;
- (BOOL)addPersistentUserFilteredClockRef:(id)ref error:(id *)error;
- (BOOL)addTSNCaptureServicesWithError:(id *)error;
- (BOOL)addgPTPServicesWithError:(id *)error;
- (BOOL)getTimeSyncTimeClockID:(unint64_t *)d error:(id *)error;
- (BOOL)getTimeSyncTimeIsMachAbsolute:(BOOL *)absolute error:(id *)error;
- (BOOL)nextAvailableDynamicClockID:(unint64_t *)d error:(id *)error;
- (BOOL)releaseDynamicClockID:(unint64_t)d error:(id *)error;
- (BOOL)removeMappingFromClockIDToCoreAudioClockDomainForClockID:(unint64_t)d error:(id *)error;
- (BOOL)removePersistentUserFilteredClock:(id)clock error:(id *)error;
- (BOOL)removeTSNCaptureServicesWithError:(id *)error;
- (BOOL)removeUserFilteredClockWithIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)removegPTPServicesWithError:(id *)error;
- (_TSF_TSDClockManager)initWithPid:(int)pid;
- (id)availableClockIdentifiers;
- (id)classNameForClockService:(id)service;
- (id)clockWithClockIdentifier:(unint64_t)identifier;
- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive withUserID:(id)d error:(id *)error;
- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive error:(id *)error;
- (unint64_t)getPersistentUserFilteredClockIdentifier:(id)identifier error:(id *)error;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds;
@end

@implementation _TSF_TSDClockManager

+ (void)initialize
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

+ (void)notifyWhenClockManagerIsAvailable:(id)available
{
  availableCopy = available;
  v4 = _kextNotifier;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __58___TSF_TSDClockManager_notifyWhenClockManagerIsAvailable___block_invoke;
  v9 = &unk_279DBDF00;
  v10 = availableCopy;
  v5 = availableCopy;
  [v4 notifyWhenServiceIsAvailable:?];
}

+ (void)notifyWhenClockManagerIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v4 = _kextNotifier;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __60___TSF_TSDClockManager_notifyWhenClockManagerIsUnavailable___block_invoke;
  v9 = &unk_279DBDF00;
  v10 = unavailableCopy;
  v5 = unavailableCopy;
  [v4 notifyWhenServiceIsUnavailable:?];
}

+ (id)sharedClockManager
{
  if (+[_TSF_TSDClockManager sharedClockManager]::onceToken != -1)
  {
    +[_TSF_TSDClockManager sharedClockManager];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___TSF_TSDClockManager_sharedClockManager__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_sync(_sharedClockManagerQueue, block);
  v3 = _sharedClockManager;

  return v3;
}

+ (id)clockManager
{
  v2 = objc_alloc_init(_TSF_TSDClockManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(_TSF_TSDClockManager);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (!v2);
  }

  return v2;
}

+ (id)defaultClockPersonalities
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = @"IOClassName";
  v26 = @"ProbeScore";
  v28 = @"IOTimeSyncService";
  v29 = &unk_287F20450;
  v27 = @"ClassName";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v30 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [v2 addObject:?];

  v19 = @"IOClassName";
  v20 = @"ProbeScore";
  v22 = @"IOTimeSyncDomain";
  v23 = &unk_287F20468;
  v21 = @"ClassName";
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v24 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [v2 addObject:?];

  v13 = @"IOClassName";
  v14 = @"ProbeScore";
  v16 = @"IOTimeSyncUserFilteredService";
  v17 = &unk_287F20468;
  v15 = @"ClassName";
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v18 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [v2 addObject:?];

  return v2;
}

- (_TSF_TSDClockManager)initWithPid:(int)pid
{
  v16.receiver = self;
  v16.super_class = _TSF_TSDClockManager;
  v4 = [(_TSF_TSDClockManager *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = pid;
    mach_timebase_info(&v4->_timebaseInfo);
    v6 = MEMORY[0x277D1AE20];
    v7 = [MEMORY[0x277D1AE20] serviceMatching:?];
    v8 = [v6 matchingService:?];

    if (v8)
    {
      v9 = [_TSF_IODConnection initWithService:"initWithService:andType:" andType:?];
      connection = v5->_connection;
      v5->_connection = v9;

      if (v5->_connection)
      {
        [_TSF_TSDClockManager getTimeSyncTimeClockID:v5 error:"getTimeSyncTimeClockID:error:"];
        v5->_translationClockIdentifier = v5->_timeSyncTimeClockIdentifier + 1;
        [_TSF_TSDClockManager getTimeSyncTimeIsMachAbsolute:v5 error:"getTimeSyncTimeIsMachAbsolute:error:"];
        v11 = [[_TSF_TSDKernelClock alloc] initWithClockIdentifier:?];
        translationClock = v5->_translationClock;
        v5->_translationClock = v11;

        defaultClockPersonalities = [objc_opt_class() defaultClockPersonalities];
        clockPersonalities = v5->_clockPersonalities;
        v5->_clockPersonalities = defaultClockPersonalities;

LABEL_5:
        return v5;
      }

      [_TSF_TSDClockManager initWithPid:v5];
    }

    else
    {
      [_TSF_TSDClockManager initWithPid:v5];
    }

    v5 = 0;
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)getTimeSyncTimeClockID:(unint64_t *)d error:(id *)error
{
  if (!d)
  {
    return 0;
  }

  v5 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v5)
  {
    [_TSF_TSDClockManager getTimeSyncTimeClockID:error:];
  }

  *d = 0;
  return v5;
}

- (BOOL)getTimeSyncTimeIsMachAbsolute:(BOOL *)absolute error:(id *)error
{
  if (!absolute)
  {
    return 0;
  }

  v5 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v5)
  {
    [_TSF_TSDClockManager getTimeSyncTimeIsMachAbsolute:error:];
  }

  *absolute = 0;
  return v5;
}

- (BOOL)nextAvailableDynamicClockID:(unint64_t *)d error:(id *)error
{
  if (!d)
  {
    return 0;
  }

  v5 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v5)
  {
    [_TSF_TSDClockManager nextAvailableDynamicClockID:error:];
  }

  *d = v7;
  return v5;
}

- (BOOL)releaseDynamicClockID:(unint64_t)d error:(id *)error
{
  v4 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v4)
  {
    [_TSF_TSDClockManager releaseDynamicClockID:error:];
  }

  return v4;
}

- (BOOL)addMappingFromClockID:(unint64_t)d toCoreAudioClockDomain:(unsigned int *)domain error:(id *)error
{
  if (!d)
  {
    return 0;
  }

  v6 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v6)
  {
    [_TSF_TSDClockManager addMappingFromClockID:toCoreAudioClockDomain:error:];
  }

  *domain = v8;
  return v6;
}

- (BOOL)removeMappingFromClockIDToCoreAudioClockDomainForClockID:(unint64_t)d error:(id *)error
{
  v4 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v4)
  {
    [_TSF_TSDClockManager removeMappingFromClockIDToCoreAudioClockDomainForClockID:error:];
  }

  return v4;
}

- (BOOL)addgPTPServicesWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDClockManager addgPTPServicesWithError:];
  }

  return v3;
}

- (BOOL)removegPTPServicesWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDClockManager removegPTPServicesWithError:];
  }

  return v3;
}

- (BOOL)addTSNCaptureServicesWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDClockManager addTSNCaptureServicesWithError:];
  }

  return v3;
}

- (BOOL)removeTSNCaptureServicesWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDClockManager removeTSNCaptureServicesWithError:];
  }

  return v3;
}

- (id)availableClockIdentifiers
{
  array = [MEMORY[0x277CBEB18] array];
  if ([_TSF_TSDClockManager getTimeSyncTimeClockID:"getTimeSyncTimeClockID:error:" error:?])
  {
    v4 = +[_TSF_TSDKernelClock availableKernelClockIdentifiers];
    [array addObjectsFromArray:?];
  }

  return array;
}

- (id)classNameForClockService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    obj = self->_clockPersonalities;
    v5 = 0;
    v6 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    if (v6)
    {
      v7 = MEMORY[0];
      intValue2 = -1;
      do
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(8 * i);
          v11 = [v10 objectForKeyedSubscript:?];
          v12 = [serviceCopy conformsToIOClassName:?];

          if (v12)
          {
            if (v5)
            {
              v13 = [v10 objectForKeyedSubscript:?];
              intValue = [v13 intValue];

              if (intValue > intValue2)
              {
                v15 = [v10 objectForKeyedSubscript:?];

                v5 = v15;
                intValue2 = intValue;
              }
            }

            else
            {
              v16 = [v10 objectForKeyedSubscript:?];
              intValue2 = [v16 intValue];

              v5 = [v10 objectForKeyedSubscript:?];
            }
          }
        }

        v6 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
      }

      while (v6);
    }
  }

  else
  {
    [_TSF_TSDClockManager classNameForClockService:];
    v5 = v19;
  }

  return v5;
}

- (id)clockWithClockIdentifier:(unint64_t)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(_TSF_TSDClockManager *)self timeSyncTimeClockIdentifier]== identifier)
  {
LABEL_13:
    translationClock = 0;
    goto LABEL_14;
  }

  if ([(_TSF_TSDClockManager *)self translationClockIdentifier]== identifier)
  {
    translationClock = [(_TSF_TSDClockManager *)self translationClock];
    goto LABEL_14;
  }

  v7 = 1;
  v8 = MEMORY[0x277D86220];
  *&v5 = 67109120;
  v18 = v5;
  while (1)
  {
    v9 = MEMORY[0x277D1AE20];
    v10 = [_TSF_TSDKernelClock iokitMatchingDictionaryForClockIdentifier:v18];
    v11 = [v9 matchingService:?];

    if (v11)
    {
      break;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v18;
      LODWORD(identifierCopy) = v7;
      v14 = v8;
      v15 = "TSDClockManager clockWithClockIdentifier unable to find service retry = %d\n";
      v16 = 8;
      goto LABEL_11;
    }

LABEL_12:
    usleep(0x2710u);

    if (++v7 == 11)
    {
      goto LABEL_13;
    }
  }

  v12 = [(_TSF_TSDClockManager *)self classNameForClockService:?];
  v13 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      identifierCopy = identifier;
      v14 = v8;
      v15 = "Could not find class match for clock identifier: 0x%016llx\n";
      v16 = 12;
LABEL_11:
      _os_log_impl(&dword_26F080000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  translationClock = [objc_alloc(NSClassFromString(v12)) initWithClockIdentifier:? pid:?];

LABEL_14:

  return translationClock;
}

- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 1;
  intervalCopy = interval;
  domainIntervalCopy = domainInterval;
  shiftCopy = shift;
  adaptiveCopy = adaptive;
  v7 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if ((v7 & 1) == 0)
  {
    [_TSF_TSDClockManager addUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:error:];
  }

  if (v7)
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

- (BOOL)removeUserFilteredClockWithIdentifier:(unint64_t)identifier error:(id *)error
{
  v4 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v4)
  {
    [_TSF_TSDClockManager removeUserFilteredClockWithIdentifier:error:];
  }

  return v4;
}

- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive withUserID:(id)d error:(id *)error
{
  adaptiveCopy = adaptive;
  shiftCopy = shift;
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v20 = 1;
    intervalCopy = interval;
    domainIntervalCopy = domainInterval;
    v24 = shiftCopy;
    v25 = adaptiveCopy;
    v15 = [dCopy dataUsingEncoding:?];
    connection = self->_connection;
    [v15 bytes];
    [v15 length];
    v17 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:" scalarInputs:&v20 scalarInputCount:error structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
    if ((v17 & 1) == 0)
    {
      [_TSF_TSDClockManager addPersistentUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:withUserID:error:];
    }

    if (v17)
    {
      v18 = v21;
    }

    else
    {
      v18 = -1;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }

    v18 = -1;
  }

  return v18;
}

- (BOOL)addPersistentUserFilteredClockRef:(id)ref error:(id *)error
{
  refCopy = ref;
  if (_os_feature_enabled_impl())
  {
    v11 = 0;
    v7 = [refCopy dataUsingEncoding:?];
    connection = self->_connection;
    [v7 bytes];
    [v7 length];
    v9 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:" scalarInputs:&v11 scalarInputCount:error structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
    if ((v9 & 1) == 0)
    {
      [_TSF_TSDClockManager addPersistentUserFilteredClockRef:error:];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)getPersistentUserFilteredClockIdentifier:(id)identifier error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    v12 = 1;
    v7 = [identifierCopy dataUsingEncoding:?];
    connection = self->_connection;
    [v7 bytes];
    [v7 length];
    v9 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:" scalarInputs:&v12 scalarInputCount:error structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
    if ((v9 & 1) == 0)
    {
      [_TSF_TSDClockManager getPersistentUserFilteredClockIdentifier:error:];
    }

    if (v9)
    {
      v10 = v13;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }

    v10 = -1;
  }

  return v10;
}

- (BOOL)removePersistentUserFilteredClock:(id)clock error:(id *)error
{
  clockCopy = clock;
  if (_os_feature_enabled_impl())
  {
    v11 = 0;
    v7 = [clockCopy dataUsingEncoding:?];
    connection = self->_connection;
    [v7 bytes];
    [v7 length];
    v9 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:" scalarInputs:&v11 scalarInputCount:error structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
    if ((v9 & 1) == 0)
    {
      [_TSF_TSDClockManager removePersistentUserFilteredClock:error:];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds
{
  numer = self->_timebaseInfo.numer;
  if (numer != self->_timebaseInfo.denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(nanoseconds, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return nanoseconds;
}

- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks
{
  denom = self->_timebaseInfo.denom;
  if (self->_timebaseInfo.numer != denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(ticks, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return ticks;
}

+ (id)diagnosticInfo
{
  v2 = MEMORY[0x277D1AE20];
  v3 = [MEMORY[0x277D1AE20] serviceMatching:?];
  v4 = [v2 matchingService:?];

  if (v4)
  {
    if ([v4 conformsToIOClassName:?])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      ioClassName = [v4 ioClassName];
      [dictionary setObject:? forKeyedSubscript:?];

      v7 = [v4 iodPropertyForKey:?];
      [dictionary setObject:? forKeyedSubscript:?];

      v8 = [v4 iodPropertyForKey:?];
      [dictionary setObject:? forKeyedSubscript:?];

      v9 = [v4 iodPropertyForKey:?];
      [dictionary setObject:? forKeyedSubscript:?];

      goto LABEL_4;
    }

    +[_TSF_TSDClockManager diagnosticInfo];
  }

  else
  {
    +[_TSF_TSDClockManager diagnosticInfo];
  }

  dictionary = v11;
LABEL_4:

  return dictionary;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier daemonClassName:(id *)name
{
  v6 = MEMORY[0x277D1AE20];
  v7 = [_TSF_TSDKernelClock iokitMatchingDictionaryForClockIdentifier:?];
  v8 = [v6 matchingService:?];

  if (!v8)
  {
    [_TSF_TSDClockManager diagnosticInfoForClockIdentifier:&v16 daemonClassName:?];
    v10 = v15;
    v11 = v16;
    goto LABEL_7;
  }

  sharedClockManager = [self sharedClockManager];
  v10 = [sharedClockManager classNameForClockService:?];

  if (v10)
  {
    v11 = [NSClassFromString(v10) diagnosticInfoForService:?];
    if (!name)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
  if (name)
  {
LABEL_6:
    v12 = v10;
    *name = v10;
  }

LABEL_7:
  v13 = v11;

  return v11;
}

+ (id)daemonClassNameForClockIdentifier:(unint64_t)identifier
{
  v4 = MEMORY[0x277D1AE20];
  v5 = [_TSF_TSDKernelClock iokitMatchingDictionaryForClockIdentifier:?];
  v6 = [v4 matchingService:?];

  if (v6)
  {
    sharedClockManager = [self sharedClockManager];
    v8 = [sharedClockManager classNameForClockService:?];
  }

  else
  {
    +[_TSF_TSDClockManager daemonClassNameForClockIdentifier:];
    v8 = v10;
  }

  return v8;
}

- (void)initWithPid:(void *)a1 .cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithPid:(void *)a1 .cold.2(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)getTimeSyncTimeClockID:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)getTimeSyncTimeIsMachAbsolute:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)nextAvailableDynamicClockID:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)releaseDynamicClockID:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addMappingFromClockID:toCoreAudioClockDomain:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removeMappingFromClockIDToCoreAudioClockDomainForClockID:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addgPTPServicesWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removegPTPServicesWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addTSNCaptureServicesWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removeTSNCaptureServicesWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)classNameForClockService:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)addUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removeUserFilteredClockWithIdentifier:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addPersistentUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:withUserID:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addPersistentUserFilteredClockRef:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)getPersistentUserFilteredClockIdentifier:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removePersistentUserFilteredClock:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

+ (void)diagnosticInfo
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_1();
}

+ (void)diagnosticInfoForClockIdentifier:(uint64_t)a1 daemonClassName:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v3, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v4, v5, v6, v7, v8);
  }

  *a2 = 0;
  OUTLINED_FUNCTION_3_1();
}

+ (void)daemonClassNameForClockIdentifier:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_1();
}

@end