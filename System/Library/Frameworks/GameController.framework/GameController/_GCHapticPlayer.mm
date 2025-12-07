@interface _GCHapticPlayer
- (BOOL)hasProcessedActiveEventsAfterTime:(double)time;
- (BOOL)hasScheduledEventsByTime:(double)time;
- (BOOL)isMuted;
- (BOOL)isMutedForReason:(unint64_t)reason;
- (BOOL)transientsEnqueuedSinceLastQuery;
- (_GCHapticLogicalDevice)hapticLogicalDevice;
- (_GCHapticPlayer)initWithIdentifier:(unint64_t)identifier actuators:(id)actuators client:(id)client;
- (double)totalLifetimeInSeconds;
- (float)continuousIntensity;
- (float)continuousSharpness;
- (void)clearParameters;
- (void)dealloc;
- (void)handleCommand:(id)command;
- (void)processSliceForLogicalDevice:(id)device startTime:(double)time endTime:(double)endTime;
- (void)scheduleCommand:(const void *)command;
- (void)setMute:(BOOL)mute forReason:(unint64_t)reason;
- (void)setRetainedByClient:(BOOL)client;
- (void)teardown;
@end

@implementation _GCHapticPlayer

- (_GCHapticPlayer)initWithIdentifier:(unint64_t)identifier actuators:(id)actuators client:(id)client
{
  actuatorsCopy = actuators;
  clientCopy = client;
  v26.receiver = self;
  v26.super_class = _GCHapticPlayer;
  v10 = [(_GCHapticPlayer *)&v26 init];
  if (v10)
  {
    v11 = [actuatorsCopy copy];
    actuators = v10->_actuators;
    v10->_actuators = v11;

    array = [MEMORY[0x1E695DF70] array];
    scheduledCommands = v10->_scheduledCommands;
    v10->_scheduledCommands = array;

    array2 = [MEMORY[0x1E695DF70] array];
    activeHapticEvents = v10->_activeHapticEvents;
    v10->_activeHapticEvents = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    eventsToRemove = v10->_eventsToRemove;
    v10->_eventsToRemove = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    intensityParamCurve = v10->_intensityParamCurve;
    v10->_intensityParamCurve = array4;

    array5 = [MEMORY[0x1E695DF70] array];
    sharpnessParamCurve = v10->_sharpnessParamCurve;
    v10->_sharpnessParamCurve = array5;

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
    identifier = v10->_identifier;
    v10->_identifier = v23;

    objc_storeStrong(&v10->_client, client);
    v10->_retainedByClient = 1;
    v10->_initializationTime = mach_absolute_time() * 0.0000000416666667;
    [(_GCHapticPlayer *)v10 clearParameters];
  }

  return v10;
}

- (BOOL)transientsEnqueuedSinceLastQuery
{
  transientsEnqueuedSinceLastQuery = self->_transientsEnqueuedSinceLastQuery;
  self->_transientsEnqueuedSinceLastQuery = 0;
  return transientsEnqueuedSinceLastQuery;
}

- (void)processSliceForLogicalDevice:(id)device startTime:(double)time endTime:(double)endTime
{
  v94 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  self->_continuousIntensity = 0.0;
  self->_continuousSharpness = 0.0;
  self->_activeEventThisSlice = 0;
  if (![(NSMutableArray *)self->_activeHapticEvents count])
  {
    goto LABEL_71;
  }

  selfCopy = self;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v74 = self->_intensityParamCurve;
  for (i = 0; ; ++i)
  {
    if ([(NSMutableArray *)v74 count]<= i)
    {
      v11 = 0.0;
      v12 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
      goto LABEL_10;
    }

    v8 = [(NSMutableArray *)v74 objectAtIndexedSubscript:i];
    [v8 getValue:buf];
    v9 = *&v89[12];
    if (*&v89[12] < time)
    {
      [indexSet addIndex:i];
      goto LABEL_7;
    }

    v10 = *&v89[4];
    if (*&v89[4] <= endTime)
    {
      break;
    }

LABEL_7:
  }

  selfCopy->_activeEventThisSlice = 1;
  v12 = v90;
  v11 = v91[0];

LABEL_10:
  [(NSMutableArray *)v74 removeObjectsAtIndexes:indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];

  v14 = selfCopy->_sharpnessParamCurve;
  v15 = 0;
  v72 = indexSet2;
  while (2)
  {
    v16 = selfCopy;
    if ([(NSMutableArray *)v14 count]<= v15)
    {
      v19 = 0.0;
      v18 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      goto LABEL_18;
    }

    v17 = [(NSMutableArray *)v14 objectAtIndexedSubscript:v15];
    [v17 getValue:buf];
    v18 = *&v89[12];
    if (*&v89[12] < time)
    {
      [v72 addIndex:v15];
LABEL_15:

      ++v15;
      continue;
    }

    break;
  }

  v19 = *&v89[4];
  if (*&v89[4] > endTime)
  {
    goto LABEL_15;
  }

  v20 = v90;
  v21 = v91[0];

  v16 = selfCopy;
LABEL_18:
  [(NSMutableArray *)v14 removeObjectsAtIndexes:v72];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v16->_activeHapticEvents;
  v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (!v22)
  {
    goto LABEL_68;
  }

  v78 = *v85;
  *&v23 = (time - v10) / (v9 - v10);
  v24 = v12 + *&v23 * (v11 - v12);
  *&v23 = (time - v19) / (v18 - v19);
  v25 = v20 + *&v23 * (v21 - v20);
  *&v23 = 138413058;
  v68 = v23;
  while (2)
  {
    v79 = v22;
    v26 = 0;
    while (2)
    {
      if (*v85 != v78)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v84 + 1) + 8 * v26);
      if ([v27 type] != 1)
      {
LABEL_29:
        v34 = 0;
        goto LABEL_30;
      }

      actuators = [deviceCopy[10] actuators];
      firstObject = [actuators firstObject];
      v30 = [firstObject type] == 0;

      if (v30)
      {
        [v27 startTime];
        v16 = selfCopy;
        if (v35 + 0.1 <= endTime)
        {
          [v27 setStopped:1];
        }

        goto LABEL_29;
      }

      actuators2 = [deviceCopy[10] actuators];
      firstObject2 = [actuators2 firstObject];
      v33 = [firstObject2 type] == 1;

      if (v33)
      {
        v34 = 1;
        v16 = selfCopy;
        selfCopy->_transientsEnqueuedSinceLastQuery = 1;
      }

      else
      {
        v34 = 0;
        v16 = selfCopy;
      }

LABEL_30:
      if ([v27 stopped])
      {
        [(NSMutableArray *)v16->_eventsToRemove addObject:v27];
      }

      else
      {
        [v27 sharpness];
        v37 = v36;
        [v27 intensity];
        v38 = v37;
        v40 = v39;
        if (([v27 transientBeganAsContinuousEvent] & 1) == 0)
        {
          [(_GCHapticDynamicParameter *)v16->_intensityParameter value];
          v42 = v41;
          [(_GCHapticDynamicParameter *)v16->_sharpnessParameter value];
          v45 = v44 + v38;
          if (v10 <= 0.0)
          {
            v40 = v42 * v40;
          }

          else
          {
            v43 = v42 * v40;
            v46 = v24 * v43;
            v40 = v46;
          }

          if (v19 <= 0.0)
          {
            v38 = v45;
          }

          else
          {
            v47 = v25 + v45;
            v38 = v47;
          }

          if ([v27 type] == 1)
          {
            actuators3 = [deviceCopy[10] actuators];
            firstObject3 = [actuators3 firstObject];
            v50 = [firstObject3 type] == 0;

            if (v50)
            {
              [v27 setTransientBeganAsContinuousEvent:1];
              v16 = selfCopy;
              [v27 setIntensity:v40];
              [v27 setSharpness:v38];
            }

            else
            {
              v16 = selfCopy;
            }
          }
        }

        if (v34)
        {
          if ([(_GCHapticPlayer *)v16 isMuted])
          {
            v51 = 0.0;
            [v27 setIntensity:0.0];
          }

          else
          {
            [(_GCHapticPlayer *)v16 hapticStrength];
            [v27 setIntensity:(v40 * v54)];
            v51 = v38;
          }

          [v27 setSharpness:v51];
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v55 = v16->_actuators;
          v56 = [(NSArray *)v55 countByEnumeratingWithState:&v80 objects:v92 count:16];
          v58 = v56;
          if (v56)
          {
            v59 = *v81;
            do
            {
              v60 = 0;
              do
              {
                if (*v81 != v59)
                {
                  objc_enumerationMutation(v55);
                }

                v61 = *(*(&v80 + 1) + 8 * v60);
                isInternalBuild = gc_isInternalBuild(v56, v57);
                if (isInternalBuild)
                {
                  v63 = getGCHapticsLogger(isInternalBuild);
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                  {
                    identifier = [(_GCHapticClientProxy *)selfCopy->_client identifier];
                    index = [v61 index];
                    [v27 intensity];
                    v65 = v64;
                    [v27 sharpness];
                    *buf = v68;
                    *v89 = identifier;
                    *&v89[8] = 2048;
                    *&v89[10] = index;
                    *&v89[18] = 2048;
                    v90 = v65;
                    LOWORD(v91[0]) = 2048;
                    *(v91 + 2) = v66;
                    _os_log_debug_impl(&dword_1D2CD5000, v63, OS_LOG_TYPE_DEBUG, "%@ enqueue transient for motor %lu I=(%.3f) S=(%.3f)", buf, 0x2Au);
                  }
                }

                v56 = [deviceCopy[9] enqueueTransient:v27 hapticMotor:{objc_msgSend(v61, "index")}];
                ++v60;
              }

              while (v58 != v60);
              v56 = [(NSArray *)v55 countByEnumeratingWithState:&v80 objects:v92 count:16];
              v58 = v56;
            }

            while (v56);
          }

          v16 = selfCopy;
          [(NSMutableArray *)selfCopy->_eventsToRemove addObject:v27];
        }

        else
        {
          v16->_continuousSharpness = v38 + v16->_continuousSharpness;
          if ([(_GCHapticClientProxy *)v16->_client shouldSquareContinuousIntensity])
          {
            [(_GCHapticPlayer *)v16 hapticStrength];
            v53 = v16->_continuousIntensity + ((v40 * v40) * v52);
          }

          else
          {
            [(_GCHapticPlayer *)v16 hapticStrength];
            v53 = v16->_continuousIntensity + (v40 * v67);
          }

          v16->_continuousIntensity = v53;
        }

        v16->_activeEventThisSlice |= v40 > 0.0;
      }

      if (++v26 != v79)
      {
        continue;
      }

      break;
    }

    v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v84 objects:v93 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_68:

  if (selfCopy->_activeEventThisSlice)
  {
    selfCopy->_activeLifetime = endTime - time + selfCopy->_activeLifetime;
    selfCopy->_lastActiveTime = endTime;
  }

  [(NSMutableArray *)selfCopy->_activeHapticEvents removeObjectsInArray:selfCopy->_eventsToRemove];
  [(NSMutableArray *)selfCopy->_eventsToRemove removeAllObjects];

LABEL_71:
}

- (void)setMute:(BOOL)mute forReason:(unint64_t)reason
{
  v4 = self + 4 * reason;
  v5 = *(v4 + 15);
  if (mute)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  *(v4 + 15) = fmin(v6, 0.0);
  self->_dirtyMuteState = 1;
}

- (BOOL)isMutedForReason:(unint64_t)reason
{
  if (reason >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCHapticPlayer.mm" lineNumber:224 description:@"Attempting to check if player is muted for invalid reason"];
  }

  return self->_muteReasons[reason] != 0;
}

- (BOOL)isMuted
{
  if ([(_GCHapticClientProxy *)self->_client isMuted])
  {
    return 1;
  }

  else if (self->_dirtyMuteState)
  {
    v4 = 0;
    self->_muted = 0;
    while (!self->_muteReasons[v4])
    {
      if (++v4 == 5)
      {
        return 0;
      }
    }

    v3 = 1;
    self->_muted = 1;
  }

  else
  {
    return self->_muted;
  }

  return v3;
}

- (float)continuousIntensity
{
  isMuted = [(_GCHapticPlayer *)self isMuted];
  result = 0.0;
  if (!isMuted)
  {
    return self->_continuousIntensity;
  }

  return result;
}

- (float)continuousSharpness
{
  isMuted = [(_GCHapticPlayer *)self isMuted];
  result = 0.0;
  if (!isMuted)
  {
    return self->_continuousSharpness;
  }

  return result;
}

- (BOOL)hasProcessedActiveEventsAfterTime:(double)time
{
  v5 = [(NSMutableArray *)self->_activeHapticEvents count];
  if (v5)
  {
    LOBYTE(v5) = self->_lastActiveTime > time;
  }

  return v5;
}

- (BOOL)hasScheduledEventsByTime:(double)time
{
  if (![(NSMutableArray *)self->_scheduledCommands count])
  {
    return 0;
  }

  lastObject = [(NSMutableArray *)self->_scheduledCommands lastObject];
  [lastObject time];
  v7 = v6 <= time;

  return v7;
}

- (void)setRetainedByClient:(BOOL)client
{
  if (self->_retainedByClient && !client)
  {
    v5 = +[_GCHapticServerManager sharedInstance];
    [v5 notifyPlayerNoLongerRetained:self];
  }

  self->_retainedByClient = client;
}

- (void)scheduleCommand:(const void *)command
{
  v5 = [[_GCHapticSyntheticCommand alloc] initWithHapticCommand:command];
  if (*(command + 1) == 1)
  {
    [(_GCHapticClientProxy *)self->_client setComplete:0];
  }

  [(NSMutableArray *)self->_scheduledCommands insertObject:v5 atIndex:[(NSMutableArray *)self->_scheduledCommands indexOfObject:v5 inSortedRange:0 options:[(NSMutableArray *)self->_scheduledCommands count] usingComparator:1024, &__block_literal_global_30]];
}

- (void)clearParameters
{
  v2 = getGCHapticsLogger(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LODWORD(v9) = 138412290;
    *(&v9 + 4) = self;
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v3, v4, "Unmuting %@ for reason GCHapticMuteReasonSetParameter", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

- (void)handleCommand:(id)command
{
  v105 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  ++self->_totalEventsProcessed;
  type = [commandCopy type];
  if (type > 11)
  {
    if ((type - 20) >= 4)
    {
      if (type == 12)
      {
        channelID = [commandCopy channelID];
        v40 = [(NSMutableArray *)self->_scheduledCommands count];
        if (v40 < 1)
        {
          v41 = 0;
          v42 = 0;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = (v40 & 0x7FFFFFFF) + 1;
          do
          {
            v44 = [(NSMutableArray *)self->_scheduledCommands objectAtIndexedSubscript:v43 - 2];

            v41 = v44;
            if ([v44 channelID] == channelID)
            {
              serverID = [v44 serverID];
              if (serverID <= [commandCopy serverID])
              {
                type2 = [v41 type];
                if (type2 == 2)
                {
                  isInternalBuild = gc_isInternalBuild(type2, v47);
                  if (isInternalBuild)
                  {
                    v50 = getGCHapticsLogger(isInternalBuild);
                    [_GCHapticPlayer handleCommand:v50];
                  }

                  if (!v42)
                  {
                    v42 = objc_opt_new();
                  }

                  [v42 addObject:v41];
                }

                else
                {
                  v49 = gc_isInternalBuild(type2, v47);
                  if (v49)
                  {
                    v51 = getGCHapticsLogger(v49);
                    [_GCHapticPlayer handleCommand:v51];
                  }

                  [v41 cancel];
                }
              }
            }

            --v43;
          }

          while (v43 > 1);
          if (v42)
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v42 = v42;
            v53 = [v42 countByEnumeratingWithState:&v91 objects:v101 count:16];
            if (v53)
            {
              v54 = *v92;
              do
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v92 != v54)
                  {
                    objc_enumerationMutation(v42);
                  }

                  [(_GCHapticPlayer *)self handleCommand:*(*(&v91 + 1) + 8 * i), v91];
                }

                v53 = [v42 countByEnumeratingWithState:&v91 objects:v101 count:16];
              }

              while (v53);
            }
          }
        }

        clearParameters = [(_GCHapticPlayer *)self clearParameters];
        v66 = gc_isInternalBuild(clearParameters, v65);
        if (v66)
        {
          v77 = getGCHapticsLogger(v66);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            channelID2 = [commandCopy channelID];
            [commandCopy time];
            [(_GCHapticPlayer *)buf handleCommand:channelID2, v79];
          }
        }

        goto LABEL_23;
      }

      if (type != 30)
      {
        goto LABEL_60;
      }
    }

    else
    {
      type = gc_isInternalBuild(type, v6);
      if (type)
      {
        v12 = getGCHapticsLogger(type);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [commandCopy time];
          [(_GCHapticPlayer *)buf handleCommand:v13];
        }
      }
    }

    v19 = gc_isInternalBuild(type, v6);
    if (!v19)
    {
      goto LABEL_23;
    }

    v21 = getGCHapticsLogger(v19);
    if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_DEBUG))
    {
      [commandCopy time];
      [(_GCHapticPlayer *)v103 handleCommand:v72];
    }

    goto LABEL_107;
  }

  if (type > 3)
  {
    if (type == 4)
    {
      v23 = gc_isInternalBuild(type, v6);
      if (v23)
      {
        v74 = getGCHapticsLogger(v23);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          [commandCopy time];
          [(_GCHapticPlayer *)buf handleCommand:v75];
        }
      }

      v24 = [(NSMutableArray *)self->_scheduledCommands count];
      if (v24 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v26 = (v24 & 0x7FFFFFFF) + 1;
        do
        {
          v27 = [(NSMutableArray *)self->_scheduledCommands objectAtIndexedSubscript:v26 - 2];

          v25 = v27;
          channelID3 = [v27 channelID];
          if (channelID3 == [commandCopy channelID])
          {
            [v25 time];
            v30 = v29;
            [commandCopy time];
            if (v30 >= v31 && [v25 type] != 5)
            {
              [v25 cancel];
            }
          }

          --v26;
        }

        while (v26 > 1);
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v60 = self->_activeHapticEvents;
      v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v95 objects:v104 count:16];
      if (v61)
      {
        v62 = *v96;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v96 != v62)
            {
              objc_enumerationMutation(v60);
            }

            [*(*(&v95 + 1) + 8 * j) setStopped:1];
          }

          v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v95 objects:v104 count:16];
        }

        while (v61);
      }

      goto LABEL_23;
    }

    if (type != 5)
    {
      if (type == 10)
      {
        ++self->_parameterCurvesProcessed;
        paramID = [commandCopy paramID];
        if (paramID == 2001)
        {
          sharpnessParamCurve = self->_sharpnessParamCurve;
          parameterCurve = [commandCopy parameterCurve];
          curve = [parameterCurve curve];
          [(NSMutableArray *)sharpnessParamCurve addObjectsFromArray:curve];
        }

        else
        {
          if (paramID != 2000)
          {
LABEL_95:
            v68 = gc_isInternalBuild(paramID, v15);
            if (!v68)
            {
              goto LABEL_23;
            }

            v21 = getGCHapticsLogger(v68);
            if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_DEBUG))
            {
              paramID2 = [commandCopy paramID];
              [commandCopy time];
              [(_GCHapticPlayer *)buf handleCommand:paramID2, v70];
            }

            goto LABEL_107;
          }

          intensityParamCurve = self->_intensityParamCurve;
          parameterCurve = [commandCopy parameterCurve];
          curve = [parameterCurve curve];
          [(NSMutableArray *)intensityParamCurve addObjectsFromArray:curve];
        }

        goto LABEL_95;
      }

LABEL_60:
      v52 = gc_isInternalBuild(type, v6);
      if (!v52)
      {
        goto LABEL_23;
      }

      v21 = getGCHapticsLogger(v52);
      if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
      {
        [commandCopy time];
        *buf = 134218496;
        *v100 = v85;
        *&v100[8] = 1024;
        *&v100[10] = [commandCopy type];
        *&v100[14] = 1024;
        *&v100[16] = [commandCopy channelID];
        _os_log_error_impl(&dword_1D2CD5000, &v21->super, OS_LOG_TYPE_ERROR, "ERROR: read unrecognized command from client: time: %.3f type: %u chanID: %d", buf, 0x18u);
      }

      goto LABEL_107;
    }

    v37 = gc_isInternalBuild(type, v6);
    if (!v37)
    {
      goto LABEL_23;
    }

    v21 = getGCHapticsLogger(v37);
    if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_DEBUG))
    {
      [commandCopy time];
      [(_GCHapticPlayer *)buf handleCommand:v38];
    }

LABEL_107:

    goto LABEL_23;
  }

  if (type == 1)
  {
    v20 = gc_isInternalBuild(type, v6);
    if (v20)
    {
      v73 = getGCHapticsLogger(v20);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        [commandCopy time];
        v82 = v81;
        tokenAndParams = [commandCopy tokenAndParams];
        *buf = 134218496;
        *v100 = v82;
        *&v100[8] = 2048;
        *&v100[10] = [tokenAndParams token];
        *&v100[18] = 2048;
        *&v100[20] = [commandCopy channelID];
        _os_log_debug_impl(&dword_1D2CD5000, v73, OS_LOG_TYPE_DEBUG, "StartEvent at %f token %lu (ch=%lu)", buf, 0x20u);
      }
    }

    v21 = [[_GCHapticEvent alloc] initWithSyntheticCommand:commandCopy];
    [(NSMutableArray *)self->_activeHapticEvents addObject:v21];
    if ([(_GCHapticEvent *)v21 type]== 2)
    {
      v22 = 148;
    }

    else
    {
      if ([(_GCHapticEvent *)v21 type]!= 1)
      {
        goto LABEL_107;
      }

      v22 = 144;
    }

    ++*(&self->super.isa + v22);
    goto LABEL_107;
  }

  if (type != 2)
  {
    if (type == 3)
    {
      paramID3 = [commandCopy paramID];
      v9 = paramID3;
      if (paramID3 == 2014)
      {
        v10 = gc_isInternalBuild(paramID3, v8);
        if (v10)
        {
          v80 = getGCHapticsLogger(v10);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            -[_GCHapticPlayer handleCommand:].cold.4(buf, [commandCopy channelID], v80);
          }
        }

        [commandCopy value];
        [(_GCHapticPlayer *)self setMute:v11 != 0.0 forReason:2];
        goto LABEL_23;
      }

      v103[0] = 0;
      v102[0] = 0.0;
      [commandCopy value];
      v57 = clientParamToSynthParam(v9, v56, v103, v102);
      if (v103[0] == 5002)
      {
        v59 = 32;
      }

      else
      {
        if (v103[0] != 5003)
        {
LABEL_101:
          v71 = gc_isInternalBuild(v57, v58);
          if (!v71)
          {
            goto LABEL_23;
          }

          v21 = getGCHapticsLogger(v71);
          if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_DEBUG))
          {
            v86 = v103[0];
            v87 = v102[0];
            [commandCopy time];
            v89 = v88;
            channelID4 = [commandCopy channelID];
            *buf = 67109888;
            *v100 = v86;
            *&v100[4] = 2048;
            *&v100[6] = v87;
            *&v100[14] = 2048;
            *&v100[16] = v89;
            *&v100[24] = 2048;
            *&v100[26] = channelID4;
            _os_log_debug_impl(&dword_1D2CD5000, &v21->super, OS_LOG_TYPE_DEBUG, "CommandType::SetParam - type %d param with value %f at time %.3f on channel %lu", buf, 0x26u);
          }

          goto LABEL_107;
        }

        v59 = 40;
      }

      v57 = [*(&self->super.isa + v59) setValue:v102[0]];
      goto LABEL_101;
    }

    goto LABEL_60;
  }

  v32 = gc_isInternalBuild(type, v6);
  if (v32)
  {
    v76 = getGCHapticsLogger(v32);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      tokenAndParams2 = [commandCopy tokenAndParams];
      *buf = 134218240;
      *v100 = [tokenAndParams2 token];
      *&v100[8] = 2048;
      *&v100[10] = [commandCopy channelID];
      _os_log_debug_impl(&dword_1D2CD5000, v76, OS_LOG_TYPE_DEBUG, "Stop event token %lu (ch=%lu)", buf, 0x16u);
    }
  }

  for (k = 0; [(NSMutableArray *)self->_activeHapticEvents count]> k; ++k)
  {
    v34 = [(NSMutableArray *)self->_activeHapticEvents objectAtIndexedSubscript:k];
    identifier = [v34 identifier];
    tokenAndParams3 = [commandCopy tokenAndParams];
    LODWORD(identifier) = identifier == [tokenAndParams3 token];

    if (identifier)
    {
      [v34 setStopped:1];

      break;
    }
  }

LABEL_23:
}

- (void)teardown
{
  [(NSMutableArray *)self->_scheduledCommands removeAllObjects];
  [(NSMutableArray *)self->_activeHapticEvents removeAllObjects];
  [(NSMutableArray *)self->_eventsToRemove removeAllObjects];
  [(NSMutableArray *)self->_intensityParamCurve removeAllObjects];
  [(NSMutableArray *)self->_sharpnessParamCurve removeAllObjects];
  self->_retainedByClient = 0;
}

- (void)dealloc
{
  v3 = +[GCAnalytics instance];
  bundleIdentifier = [(_GCHapticPlayer *)self bundleIdentifier];
  v5 = [bundleIdentifier copy];
  controllerProductCategory = [(_GCHapticPlayer *)self controllerProductCategory];
  v7 = [controllerProductCategory copy];
  totalEventsProcessed = [(_GCHapticPlayer *)self totalEventsProcessed];
  transientEventsProcessed = [(_GCHapticPlayer *)self transientEventsProcessed];
  continuousEventsProcessed = [(_GCHapticPlayer *)self continuousEventsProcessed];
  parameterCurvesProcessed = [(_GCHapticPlayer *)self parameterCurvesProcessed];
  [(_GCHapticPlayer *)self totalLifetimeInSeconds];
  v13 = v12;
  [(_GCHapticPlayer *)self activeLifetimeInSeconds];
  LODWORD(v15) = v13;
  HIDWORD(v15) = v14;
  [v3 sendHapticsPlayerDestroyedEventForBundleID:v5 productCategory:v7 totalEventsProcessed:totalEventsProcessed transientEventsProcessed:transientEventsProcessed continuousEventsProcessed:continuousEventsProcessed parameterCurvesProcessed:parameterCurvesProcessed sessionTotalDuration:v15 sessionActiveDuration:?];

  v16.receiver = self;
  v16.super_class = _GCHapticPlayer;
  [(_GCHapticPlayer *)&v16 dealloc];
}

- (double)totalLifetimeInSeconds
{
  result = 0.0;
  if (self->_initializationTime >= 0.0)
  {
    return mach_absolute_time() * 0.0000000416666667 - self->_initializationTime;
  }

  return result;
}

- (_GCHapticLogicalDevice)hapticLogicalDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_hapticLogicalDevice);

  return WeakRetained;
}

- (void)handleCommand:(NSObject *)a3 .cold.4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_2_15(&dword_1D2CD5000, a3, a3, "CommandType::SetParam - mute channel %lu haptics", a1);
}

- (void)handleCommand:(NSObject *)a1 .cold.5(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1_21(a1))
  {
    *v2 = 138412290;
    *v3 = v4;
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v5, v6, "Canceling: %@");
  }
}

- (void)handleCommand:(NSObject *)a1 .cold.6(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1_21(a1))
  {
    *v2 = 138412290;
    *v3 = v4;
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v5, v6, "Executing stop event early: %@");
  }
}

@end