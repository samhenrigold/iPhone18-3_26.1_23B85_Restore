@interface PLIOReportStats
- (BOOL)subscribeToGroup:(id)group andSubGroup:(id)subGroup withChannelIDs:(id)ds manualChannelOnly:(BOOL)only;
- (BOOL)updateStatsWithBlock:(id)block;
- (PLIOReportStats)initWithDriverName:(id)name withGroup:(id)group;
- (PLIOReportStats)initWithGroup:(id)group andSubGroup:(id)subGroup withChannelIDs:(id)ds manualChannelOnly:(BOOL)only;
- (double)_convertValue:(int64_t)value toUnityScaleFromUnit:(unint64_t)unit;
- (double)getSampleDuration;
- (id)_calculateDeltaFromPreviousStats:(id)stats toCurrentStats:(id)currentStats;
- (id)_init;
- (id)_parseIOReportSampleFromStats:(id)stats convertingUnitToUnityScale:(BOOL)scale;
- (id)calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:(BOOL)scale;
- (id)currentValueForSimpleChannel:(id)channel;
- (id)currentValueForStateChannel:(id)channel atIndex:(int)index;
- (id)deltaValueForSimpleChannel:(id)channel;
- (id)deltaValueForStateChannel:(id)channel atIndex:(int)index;
- (id)getCurrentStats;
- (id)getDeltaStats;
- (id)parseIOReportSample;
- (id)parseSimpleDeltaSample;
- (void)clearSubscription;
- (void)dealloc;
@end

@implementation PLIOReportStats

- (id)_init
{
  v5.receiver = self;
  v5.super_class = PLIOReportStats;
  v2 = [(PLIOReportStats *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLIOReportStats *)v2 setDriverName:@"ApplePMGR"];
    [(PLIOReportStats *)v3 setSubscription:0];
    [(PLIOReportStats *)v3 setSubscribedChannels:0];
  }

  return v3;
}

- (PLIOReportStats)initWithDriverName:(id)name withGroup:(id)group
{
  nameCopy = name;
  groupCopy = group;
  _init = [(PLIOReportStats *)self _init];
  v9 = _init;
  if (_init && ([_init setDriverName:nameCopy], objc_msgSend(v9, "subscribeToGroup:andSubGroup:withChannelIDs:", groupCopy, 0, 0)))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PLIOReportStats)initWithGroup:(id)group andSubGroup:(id)subGroup withChannelIDs:(id)ds manualChannelOnly:(BOOL)only
{
  onlyCopy = only;
  groupCopy = group;
  subGroupCopy = subGroup;
  dsCopy = ds;
  _init = [(PLIOReportStats *)self _init];
  v14 = _init;
  if (_init && [_init subscribeToGroup:groupCopy andSubGroup:subGroupCopy withChannelIDs:dsCopy manualChannelOnly:onlyCopy])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  if ([(PLIOReportStats *)self subscription])
  {
    CFRelease([(PLIOReportStats *)self subscription]);
  }

  v3.receiver = self;
  v3.super_class = PLIOReportStats;
  [(PLIOReportStats *)&v3 dealloc];
}

- (BOOL)subscribeToGroup:(id)group andSubGroup:(id)subGroup withChannelIDs:(id)ds manualChannelOnly:(BOOL)only
{
  onlyCopy = only;
  v59 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  subGroupCopy = subGroup;
  dsCopy = ds;
  [(PLIOReportStats *)self clearSubscription];
  v13 = objc_autoreleasePoolPush();
  v51[0] = 0;
  v51[1] = 0;
  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = __81__PLIOReportStats_subscribeToGroup_andSubGroup_withChannelIDs_manualChannelOnly___block_invoke;
  v48 = &unk_1E8519C08;
  v14 = groupCopy;
  v49 = v14;
  v15 = subGroupCopy;
  v50 = v15;
  v16 = IOReportCopyFilteredChannels();
  v17 = v16;
  v19 = [v16 count];
  if (!v19 && !onlyCopy)
  {
    goto LABEL_5;
  }

  if (!v17)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = v19;
  }

  v21 = PLLogCommon(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v54 = v14;
    v55 = 2112;
    v56 = v15;
    v57 = 2112;
    v58 = v17;
    _os_log_debug_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEBUG, "Retrieved channels from group(%@) subgroup(%@) = %@\n", buf, 0x20u);
  }

  if (dsCopy && [dsCopy count])
  {
    v38 = v15;
    v39 = v13;
    selfCopy = self;
    driverName = [(PLIOReportStats *)self driverName];
    v23 = IOServiceMatching([driverName UTF8String]);

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = dsCopy;
    v24 = dsCopy;
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v41 + 1) + 8 * i);
          [v29 unsignedLongLongValue];
          v30 = IOReportCopyChannelsWithID();
          if (v30)
          {
            v31 = v30;
            v32 = PLLogCommon(v30);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [PLIOReportStats subscribeToGroup:buf andSubGroup:v29 withChannelIDs:&v54 manualChannelOnly:v32];
            }

            IOReportMergeChannels();
            CFRelease(v31);
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v26);
    }

    CFRelease(v23);
    v13 = v39;
    dsCopy = v40;
    v15 = v38;
    self = selfCopy;
  }

  v33 = [(PLIOReportStats *)self setSubscription:IOReportCreateSubscription()];
  LOBYTE(subGroupCopy) = v51[0] == 0;
  if (v51[0])
  {
    v34 = PLLogCommon(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PLIOReportStats subscribeToGroup:v51 andSubGroup:v34 withChannelIDs:? manualChannelOnly:?];
    }

    CFRelease(v51[0]);
  }

  else
  {
    if (![(PLIOReportStats *)self subscription])
    {
LABEL_5:
      v18 = 0;
      goto LABEL_6;
    }

    [(PLIOReportStats *)self setSubscribedChannels:0];

    v36 = PLLogCommon(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [PLIOReportStats subscribeToGroup:? andSubGroup:? withChannelIDs:? manualChannelOnly:?];
    }
  }

  v18 = 1;
LABEL_6:

  objc_autoreleasePoolPop(v13);
  return v18 & subGroupCopy;
}

uint64_t __81__PLIOReportStats_subscribeToGroup_andSubGroup_withChannelIDs_manualChannelOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = IOReportChannelGetGroup();
  v4 = IOReportChannelGetSubGroup();
  v5 = *(a1 + 32);
  if (v5 && ([v5 isEqualToString:v3] && *(a1 + 40) && (objc_msgSend(v4, "isEqualToString:") & 1) != 0 || (v6 = *(a1 + 32)) != 0 && objc_msgSend(v6, "isEqualToString:", v3) && !*(a1 + 40)))
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  return v7;
}

- (void)clearSubscription
{
  [(PLIOReportStats *)self setSubscribedChannels:0];
  if ([(PLIOReportStats *)self subscription])
  {
    CFRelease([(PLIOReportStats *)self subscription]);

    [(PLIOReportStats *)self setSubscription:0];
  }
}

- (id)getCurrentStats
{
  Samples = self;
  if (self)
  {
    if (-[PLIOReportStats subscription](self, "subscription") && ([Samples subscribedChannels], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      [Samples subscription];
      subscribedChannels = [Samples subscribedChannels];
      Samples = IOReportCreateSamples();
    }

    else
    {
      Samples = 0;
    }
  }

  return Samples;
}

- (id)getDeltaStats
{
  getCurrentStats = [(PLIOReportStats *)self getCurrentStats];
  ioReportSample = [(PLIOReportStats *)self ioReportSample];
  v5 = [(PLIOReportStats *)self _calculateDeltaFromPreviousStats:ioReportSample toCurrentStats:getCurrentStats];

  return v5;
}

- (double)getSampleDuration
{
  sampleTimePrevious = [(PLIOReportStats *)self sampleTimePrevious];
  if (sampleTimePrevious)
  {
    sampleTime = [(PLIOReportStats *)self sampleTime];
    sampleTimePrevious2 = [(PLIOReportStats *)self sampleTimePrevious];
    [sampleTime timeIntervalSinceDate:sampleTimePrevious2];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)updateStatsWithBlock:(id)block
{
  blockCopy = block;
  ioReportSample = [(PLIOReportStats *)self ioReportSample];
  [(PLIOReportStats *)self setPreviousIOReportSample:ioReportSample];

  getCurrentStats = [(PLIOReportStats *)self getCurrentStats];
  if (getCurrentStats)
  {
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    v8 = blockCopy[2](blockCopy, self, getCurrentStats, monotonicDate);

    LOBYTE(getCurrentStats) = v8 != 0;
    if (v8)
    {
      [(PLIOReportStats *)self setIoReportSample:v8];
      sampleTime = [(PLIOReportStats *)self sampleTime];
      [(PLIOReportStats *)self setSampleTimePrevious:sampleTime];

      [(PLIOReportStats *)self setSampleTime:monotonicDate];
      monotonicDate = v8;
    }
  }

  return getCurrentStats;
}

- (id)parseIOReportSample
{
  ioReportSample = [(PLIOReportStats *)self ioReportSample];

  if (ioReportSample)
  {
    ioReportSample2 = [(PLIOReportStats *)self ioReportSample];
    v5 = [(PLIOReportStats *)self _parseIOReportSampleFromStats:ioReportSample2 convertingUnitToUnityScale:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseSimpleDeltaSample
{
  ioReportSample = [(PLIOReportStats *)self ioReportSample];

  if (ioReportSample)
  {
    getDeltaStats = [(PLIOReportStats *)self getDeltaStats];
    v5 = [(PLIOReportStats *)self _parseIOReportSampleFromStats:getDeltaStats convertingUnitToUnityScale:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:(BOOL)scale
{
  scaleCopy = scale;
  ioReportSample = [(PLIOReportStats *)self ioReportSample];
  if (ioReportSample && (v6 = ioReportSample, [(PLIOReportStats *)self previousIOReportSample], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    previousIOReportSample = [(PLIOReportStats *)self previousIOReportSample];
    ioReportSample2 = [(PLIOReportStats *)self ioReportSample];
    v10 = [(PLIOReportStats *)self _calculateDeltaFromPreviousStats:previousIOReportSample toCurrentStats:ioReportSample2];

    v11 = [(PLIOReportStats *)self _parseIOReportSampleFromStats:v10 convertingUnitToUnityScale:scaleCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_calculateDeltaFromPreviousStats:(id)stats toCurrentStats:(id)currentStats
{
  SamplesDelta = 0;
  if (stats && currentStats)
  {
    SamplesDelta = IOReportCreateSamplesDelta();
    v4 = vars8;
  }

  return SamplesDelta;
}

- (id)_parseIOReportSampleFromStats:(id)stats convertingUnitToUnityScale:(BOOL)scale
{
  v4 = MEMORY[0x1E695DF90];
  statsCopy = stats;
  dictionary = [v4 dictionary];
  IOReportIterate();

  v6 = dictionary;
  return dictionary;
}

void __76__PLIOReportStats__parseIOReportSampleFromStats_convertingUnitToUnityScale___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  Format = IOReportChannelGetFormat();
  if (Format == 2)
  {
    context = v3;
    Count = IOReportStateGetCount();
    v11 = IOReportChannelGetChannelName();
    if (Count >= 1)
    {
      v12 = 0;
      v13 = 0x1E696A000uLL;
      do
      {
        v14 = IOReportStateGetNameForIndex();
        if (!v14)
        {
          v14 = [*(v13 + 3776) stringWithFormat:@"%d", v12];
        }

        v15 = [*(v13 + 3776) stringWithFormat:@"%@_%@", v11, v14];
        IOReportStateGetDutyCycle();
        v16 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v17 = v16;
        v18 = &unk_1F5405CD0;
        if (v16)
        {
          v18 = v16;
        }

        v19 = v18;

        [*(a1 + 40) setObject:v19 forKeyedSubscript:v15];
        v20 = IOReportStateGetInTransitions();
        if (v20 != 0x8000000000000000)
        {
          v21 = v20;
          [*(v13 + 3776) stringWithFormat:@"%@_transitions", v15];
          v22 = v11;
          v23 = Count;
          v25 = v24 = v13;
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v21];
          [*(a1 + 40) setObject:v26 forKeyedSubscript:v25];

          v13 = v24;
          Count = v23;
          v11 = v22;
        }

        v12 = (v12 + 1);
      }

      while (Count != v12);
    }

    v3 = context;
  }

  else
  {
    v5 = Format;
    if (Format == 1)
    {
      v6 = IOReportChannelGetChannelName();
      IntegerValue = IOReportSimpleGetIntegerValue();
      Unit = IOReportChannelGetUnit();
      if (*(a1 + 48) == 1)
      {
        [*(a1 + 32) _convertValue:IntegerValue toUnityScaleFromUnit:Unit];
        [MEMORY[0x1E696AD98] numberWithDouble:?];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithLongLong:IntegerValue];
      }
      v9 = ;
      v28 = v9;
      if (v9)
      {
        v29 = v9;
      }

      else
      {
        v29 = &unk_1F5405CD0;
      }

      [*(a1 + 40) setObject:v29 forKeyedSubscript:v6];
    }

    else
    {
      v27 = PLLogCommon(Format);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __76__PLIOReportStats__parseIOReportSampleFromStats_convertingUnitToUnityScale___block_invoke_cold_1(v5, v27);
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (double)_convertValue:(int64_t)value toUnityScaleFromUnit:(unint64_t)unit
{
  v4 = unit & 0xFFFFFFFFFFFFFFLL;
  result = value;
  if ((unit & 0xFFFFFFFFFFFFFFLL) > 0x81FFFFFFFFLL)
  {
    if ((unit & 0xFFFFFFFFFFFFFFLL) > 0x87FFFFFFFFLL)
    {
      if (v4 == 0x8800000000)
      {
        v7 = 1000000000.0;
      }

      else
      {
        if (v4 != 0x8B00000000)
        {
          return result;
        }

        v7 = 1.0e12;
      }
    }

    else if (v4 == 0x8200000000)
    {
      v7 = 1000.0;
    }

    else
    {
      if (v4 != 0x8500000000)
      {
        return result;
      }

      v7 = 1000000.0;
    }

    return result * v7;
  }

  else
  {
    if ((unit & 0xFFFFFFFFFFFFFFLL) > 0x78FFFFFFFFLL)
    {
      if (v4 == 0x7900000000)
      {
        v6 = 1000000.0;
      }

      else
      {
        if (v4 != 0x7C00000000)
        {
          return result;
        }

        v6 = 1000.0;
      }
    }

    else if (v4 == 0x7300000000)
    {
      v6 = 1.0e12;
    }

    else
    {
      if (v4 != 0x7600000000)
      {
        return result;
      }

      v6 = 1000000000.0;
    }

    return result / v6;
  }
}

- (id)currentValueForSimpleChannel:(id)channel
{
  channelCopy = channel;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  if (channelCopy)
  {
    getCurrentStats = [(PLIOReportStats *)self getCurrentStats];
    v9 = channelCopy;
    IOReportIterate();

    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __48__PLIOReportStats_currentValueForSimpleChannel___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 1)
  {
    v4 = IOReportChannelGetChannelName();
    if ([v4 isEqualToString:*(a1 + 32)])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)deltaValueForSimpleChannel:(id)channel
{
  channelCopy = channel;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  if (channelCopy)
  {
    getDeltaStats = [(PLIOReportStats *)self getDeltaStats];
    v9 = channelCopy;
    IOReportIterate();

    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __46__PLIOReportStats_deltaValueForSimpleChannel___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 1)
  {
    v4 = IOReportChannelGetChannelName();
    if ([v4 isEqualToString:*(a1 + 32)])
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)currentValueForStateChannel:(id)channel atIndex:(int)index
{
  channelCopy = channel;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  if (channelCopy)
  {
    getCurrentStats = [(PLIOReportStats *)self getCurrentStats];
    v10 = channelCopy;
    IOReportIterate();

    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __55__PLIOReportStats_currentValueForStateChannel_atIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 2)
  {
    v4 = IOReportChannelGetChannelName();
    if ([v4 isEqualToString:*(a1 + 32)])
    {
      v5 = MEMORY[0x1E696AD98];
      IOReportStateGetDutyCycle();
      v6 = [v5 numberWithDouble:?];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)deltaValueForStateChannel:(id)channel atIndex:(int)index
{
  channelCopy = channel;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  if (channelCopy)
  {
    getDeltaStats = [(PLIOReportStats *)self getDeltaStats];
    v10 = channelCopy;
    IOReportIterate();

    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __53__PLIOReportStats_deltaValueForStateChannel_atIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 2)
  {
    v4 = IOReportChannelGetChannelName();
    if ([v4 isEqualToString:*(a1 + 32)])
    {
      v5 = MEMORY[0x1E696AD98];
      IOReportStateGetDutyCycle();
      v6 = [v5 numberWithDouble:?];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)subscribeToGroup:(uint64_t *)a1 andSubGroup:(NSObject *)a2 withChannelIDs:manualChannelOnly:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "IOReportCopyFilteredChannels returned error = %@ in PLIOReportStats", &v3, 0xCu);
}

- (void)subscribeToGroup:(uint8_t *)a1 andSubGroup:(void *)a2 withChannelIDs:(uint64_t *)a3 manualChannelOnly:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [a2 unsignedLongLongValue];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&dword_1D8611000, a4, OS_LOG_TYPE_DEBUG, "Add manual channel with ID 0x%llx@\n", a1, 0xCu);
}

- (void)subscribeToGroup:(uint64_t *)a1 andSubGroup:(NSObject *)a2 withChannelIDs:manualChannelOnly:.cold.3(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "IOReportCreateSubscription returned error = %@ in PLIOReportStats", &v3, 0xCu);
}

- (void)subscribeToGroup:(void *)a1 andSubGroup:withChannelIDs:manualChannelOnly:.cold.4(void *a1)
{
  v1 = [a1 subscribedChannels];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_5(&dword_1D8611000, v2, v3, "Subscribed to channels %@\n", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)subscribeToGroup:(void *)a1 andSubGroup:withChannelIDs:manualChannelOnly:.cold.5(void *a1)
{
  LODWORD(v7) = 138412290;
  *(&v7 + 4) = [a1 subscription];
  OUTLINED_FUNCTION_5(&dword_1D8611000, v1, v2, "IOReportSubscriptionRef returned subscription = %@ in PLIOReportStats", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __76__PLIOReportStats__parseIOReportSampleFromStats_convertingUnitToUnityScale___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to parse: unsupported IOReport channel format %u", v2, 8u);
}

@end