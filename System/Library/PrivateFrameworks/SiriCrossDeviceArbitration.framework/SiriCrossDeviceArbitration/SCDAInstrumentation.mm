@interface SCDAInstrumentation
- (SCDAInstrumentation)init;
- (id)_boostTypeAsString:(unsigned __int8)string;
- (id)_createSchemaClientEvent:(id)event;
- (void)_logRequestLinkMessageRequestId:(id)id cdaId:(id)cdaId;
- (void)_sendAndLogClientEvent:(id)event stState:(int)state atTimestamp:(unint64_t)timestamp;
- (void)logCDADeviceStateActivityEnded:(int)ended withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)logCDADeviceStateActivityStartedOrChanged:(int)changed withTrigger:(int)trigger withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)logCDAElectionAdvertisingEnded:(int)ended withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)logCDAElectionAdvertisingEnding:(int)ending withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)logCDAElectionAdvertisingStarted:(int)started withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)logCDAElectionAdvertisingStarting:(int)starting withDelay:(float)delay withInterval:(float)interval withVoiceTriggerLatency:(float)latency withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)logCDAElectionDecisionMade:(int)made withDecision:(int)decision withPreviousDecision:(int)previousDecision timeSincePreviousDecision:(unint64_t)sincePreviousDecision withWinningDevice:(id)device withThisDevice:(id)thisDevice withParticipants:(id)participants withRawScore:(unsigned int)self0 withBoost:(id)self1 withCdaId:(id)self2 currentRequestId:(id)self3 withTimestamp:(unint64_t)self4;
- (void)logCDAElectionDecisionMadeDebug:(int)debug withCrossDeviceArbitrationAllowed:(BOOL)allowed advertisementData:(id)data withDeviceGroup:(unsigned int)group withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)logCDAElectionTimerEnded:(int)ended withCdaId:(id)id withTimestamp:(unint64_t)timestamp;
- (void)updateBoost:(unsigned __int8)boost value:(unsigned int)value;
- (void)updateIsTrump:(BOOL)trump withReason:(int)reason;
- (void)userFeedbackPublishArbitrationParticipationContext:(id)context;
@end

@implementation SCDAInstrumentation

- (void)userFeedbackPublishArbitrationParticipationContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__SCDAInstrumentation_userFeedbackPublishArbitrationParticipationContext___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v8 = contextCopy;
  selfCopy = self;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

uint64_t __74__SCDAInstrumentation_userFeedbackPublishArbitrationParticipationContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateBoosts:*(*(a1 + 40) + 24) triggerType:*(*(a1 + 40) + 32) lastWin:*(*(a1 + 40) + 40) lastDecision:*(*(a1 + 40) + 48)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 publishArbitrationParticipationContext:v2];
}

- (void)_logRequestLinkMessageRequestId:(id)id cdaId:(id)cdaId
{
  v16 = *MEMORY[0x1E69E9840];
  idCopy = id;
  cdaIdCopy = cdaId;
  v8 = cdaIdCopy;
  if (idCopy && cdaIdCopy)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__SCDAInstrumentation__logRequestLinkMessageRequestId_cdaId___block_invoke;
    v11[3] = &unk_1E85D38A0;
    v12 = cdaIdCopy;
    v13 = idCopy;
    dispatch_async(queue, v11);
  }

  else
  {
    v10 = SCDALogContextAnalytics;
    if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[SCDAInstrumentation _logRequestLinkMessageRequestId:cdaId:]";
      _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s Skipped emitting RequestLinkEvent as requestId or cdaId is nil", buf, 0xCu);
    }
  }
}

void __61__SCDAInstrumentation__logRequestLinkMessageRequestId_cdaId___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69CF640]);
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 initWithUUIDString:v4];
  v6 = [v2 initWithNSUUID:v5];

  v7 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  [v7 setUuid:v6];
  [v7 setComponent:23];
  v8 = objc_alloc(MEMORY[0x1E69CF640]);
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  v10 = [*(a1 + 40) UUIDString];
  v11 = [v9 initWithUUIDString:v10];
  v12 = [v8 initWithNSUUID:v11];

  v13 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  [v13 setUuid:v12];
  [v13 setComponent:1];
  v14 = objc_alloc_init(MEMORY[0x1E69CF5E8]);
  [v14 setSource:v7];
  [v14 setTarget:v13];
  v15 = [MEMORY[0x1E69CE1E8] sharedStream];
  [v15 emitMessage:v14];

  v16 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = 136315650;
    v20 = "[SCDAInstrumentation _logRequestLinkMessageRequestId:cdaId:]_block_invoke";
    v21 = 2112;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    _os_log_debug_impl(&dword_1DA758000, v16, OS_LOG_TYPE_DEBUG, "%s Emitting Myriad RequestLinkEvent with requestId: %@, cdaId: %@", &v19, 0x20u);
  }
}

- (id)_createSchemaClientEvent:(id)event
{
  v3 = MEMORY[0x1E69CE8D0];
  eventCopy = event;
  v5 = objc_alloc_init(v3);
  v6 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:eventCopy];

  v7 = objc_alloc_init(MEMORY[0x1E69CE8D8]);
  [v7 setCdaId:v6];
  [v5 setEventMetadata:v7];

  return v5;
}

- (void)updateIsTrump:(BOOL)trump withReason:(int)reason
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SCDAInstrumentation_updateIsTrump_withReason___block_invoke;
  v5[3] = &unk_1E85D2A78;
  v5[4] = self;
  trumpCopy = trump;
  reasonCopy = reason;
  dispatch_async(queue, v5);
}

void __48__SCDAInstrumentation_updateIsTrump_withReason___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69CE948]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  [v2 setIsTrump:*(a1 + 44)];
  [*(*(a1 + 32) + 24) setTrumpReason:*(a1 + 40)];
  v6 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 44);
    v8 = *(a1 + 40) - 1;
    if (v8 > 7)
    {
      v9 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v9 = off_1E85D2BA0[v8];
    }

    v11 = 136315650;
    v12 = "[SCDAInstrumentation updateIsTrump:withReason:]_block_invoke";
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v6;
    _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s trump: %d, with Reason:%@", &v11, 0x1Cu);
  }
}

- (void)updateBoost:(unsigned __int8)boost value:(unsigned int)value
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SCDAInstrumentation_updateBoost_value___block_invoke;
  v5[3] = &unk_1E85D2A78;
  v5[4] = self;
  boostCopy = boost;
  valueCopy = value;
  dispatch_async(queue, v5);
}

void __41__SCDAInstrumentation_updateBoost_value___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 24))
  {
    v2 = objc_alloc_init(MEMORY[0x1E69CE948]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 44);
    v9 = v5;
    v10 = [v7 _boostTypeAsString:v8];
    v11 = *(a1 + 40);
    v12 = 136315650;
    v13 = "[SCDAInstrumentation updateBoost:value:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s boostType: %@, boostValue:%d", &v12, 0x1Cu);
  }

  v6 = *(a1 + 44);
  if (v6 <= 3)
  {
    switch(v6)
    {
      case 1u:
        [*(*(a1 + 32) + 24) setDeviceBoost:*(a1 + 40)];
        break;
      case 2u:
        [*(*(a1 + 32) + 24) setRecentUnlockBoost:*(a1 + 40)];
        break;
      case 3u:
        [*(*(a1 + 32) + 24) setRecentRaiseToWakeBoost:*(a1 + 40)];
        break;
    }
  }

  else if (*(a1 + 44) > 5u)
  {
    if (v6 == 6)
    {
      [*(*(a1 + 32) + 24) setRecentPlaybackBoost:*(a1 + 40)];
    }

    else if (v6 == 7)
    {
      [*(*(a1 + 32) + 24) setRecentAlarmBoost:*(a1 + 40)];
    }
  }

  else if (v6 == 4)
  {
    [*(*(a1 + 32) + 24) setRecentSiriRequestBoost:*(a1 + 40)];
  }

  else if (v6 == 5)
  {
    [*(*(a1 + 32) + 24) setRecentMotionBoost:*(a1 + 40)];
  }
}

- (id)_boostTypeAsString:(unsigned __int8)string
{
  if ((string - 1) > 6)
  {
    return @"SCDABoostTypeUnknown";
  }

  else
  {
    return off_1E85D2B68[(string - 1)];
  }
}

- (void)_sendAndLogClientEvent:(id)event stState:(int)state atTimestamp:(unint64_t)timestamp
{
  v6 = MEMORY[0x1E69CE1E8];
  eventCopy = event;
  sharedStream = [v6 sharedStream];
  [sharedStream emitMessage:eventCopy timestamp:timestamp];
}

- (void)logCDAElectionDecisionMadeDebug:(int)debug withCrossDeviceArbitrationAllowed:(BOOL)allowed advertisementData:(id)data withDeviceGroup:(unsigned int)group withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  dataCopy = data;
  idCopy = id;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __147__SCDAInstrumentation_logCDAElectionDecisionMadeDebug_withCrossDeviceArbitrationAllowed_advertisementData_withDeviceGroup_withCdaId_withTimestamp___block_invoke;
  v19[3] = &unk_1E85D2A50;
  v19[4] = self;
  v20 = idCopy;
  allowedCopy = allowed;
  groupCopy = group;
  debugCopy = debug;
  v21 = dataCopy;
  timestampCopy = timestamp;
  v17 = dataCopy;
  v18 = idCopy;
  dispatch_async(queue, v19);
}

void __147__SCDAInstrumentation_logCDAElectionDecisionMadeDebug_withCrossDeviceArbitrationAllowed_advertisementData_withDeviceGroup_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE8E0]);
  [v3 setIsCrossDeviceArbitrationAllowed:*(a1 + 72)];
  [v3 setDeviceGroup:*(a1 + 64)];
  [v3 setAdvertisementDatas:*(a1 + 48)];
  [v2 setDebugElectionDecisionMade:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 68) atTimestamp:*(a1 + 56)];
  v4 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 68) - 1;
    if (v6 > 0x11)
    {
      v7 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v7 = off_1E85D2AD8[v6];
    }

    v8 = *(a1 + 72);
    v9 = *(a1 + 64);
    v10 = *(a1 + 48);
    v12 = 136316418;
    v13 = "[SCDAInstrumentation logCDAElectionDecisionMadeDebug:withCrossDeviceArbitrationAllowed:advertisementData:withDeviceGroup:withCdaId:withTimestamp:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v11 = v4;
    _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, arbitrationAllowed: %d, deviceGroup: %d, advertisements: %@", &v12, 0x36u);
  }
}

- (void)logCDAElectionDecisionMade:(int)made withDecision:(int)decision withPreviousDecision:(int)previousDecision timeSincePreviousDecision:(unint64_t)sincePreviousDecision withWinningDevice:(id)device withThisDevice:(id)thisDevice withParticipants:(id)participants withRawScore:(unsigned int)self0 withBoost:(id)self1 withCdaId:(id)self2 currentRequestId:(id)self3 withTimestamp:(unint64_t)self4
{
  deviceCopy = device;
  thisDeviceCopy = thisDevice;
  participantsCopy = participants;
  boostCopy = boost;
  idCopy = id;
  requestIdCopy = requestId;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __224__SCDAInstrumentation_logCDAElectionDecisionMade_withDecision_withPreviousDecision_timeSincePreviousDecision_withWinningDevice_withThisDevice_withParticipants_withRawScore_withBoost_withCdaId_currentRequestId_withTimestamp___block_invoke;
  block[3] = &unk_1E85D2A28;
  block[4] = self;
  v34 = idCopy;
  decisionCopy = decision;
  previousDecisionCopy = previousDecision;
  v35 = deviceCopy;
  v36 = thisDeviceCopy;
  v37 = boostCopy;
  v38 = participantsCopy;
  scoreCopy = score;
  madeCopy = made;
  sincePreviousDecisionCopy = sincePreviousDecision;
  timestampCopy = timestamp;
  v39 = requestIdCopy;
  v24 = requestIdCopy;
  v25 = participantsCopy;
  v26 = boostCopy;
  v27 = thisDeviceCopy;
  v28 = deviceCopy;
  v29 = idCopy;
  dispatch_async(queue, block);
}

void __224__SCDAInstrumentation_logCDAElectionDecisionMade_withDecision_withPreviousDecision_timeSincePreviousDecision_withWinningDevice_withThisDevice_withParticipants_withRawScore_withBoost_withCdaId_currentRequestId_withTimestamp___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE930]);
  [v3 setDecision:*(a1 + 104)];
  [v3 setPreviousDecision:*(a1 + 108)];
  [v3 setWinningDevice:*(a1 + 48)];
  [v3 setThisDevice:*(a1 + 56)];
  [v3 setRawGoodnessScore:*(a1 + 112)];
  [v3 setTimeSinceLastDecisionInMs:*(a1 + 88)];
  v4 = *(a1 + 64);
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 24);
  }

  [v3 setGoodnessScoreBoosts:v4];
  [v3 setHeardParticipants:*(a1 + 72)];
  [v2 setElectionDecisionMade:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 116) atTimestamp:*(a1 + 96)];
  [*(a1 + 32) _logRequestLinkMessageRequestId:*(a1 + 80) cdaId:*(a1 + 40)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 116) - 1;
    if (v9 > 0x11)
    {
      v10 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v10 = off_1E85D2AD8[v9];
    }

    v31 = v10;
    v11 = @"CDADECISION_UNKNOWN";
    v12 = *(a1 + 104);
    v13 = *(a1 + 108);
    if (v12 == 1)
    {
      v14 = @"CDADECISION_WIN";
    }

    else
    {
      v14 = @"CDADECISION_UNKNOWN";
    }

    if (v12 == 2)
    {
      v15 = @"CDADECISION_LOSS";
    }

    else
    {
      v15 = v14;
    }

    if (v13 == 1)
    {
      v11 = @"CDADECISION_WIN";
    }

    if (v13 == 2)
    {
      v11 = @"CDADECISION_LOSS";
    }

    v28 = v11;
    v29 = *(a1 + 88);
    v30 = v15;
    v16 = *(a1 + 48);
    v25 = *(a1 + 40);
    v27 = [v16 goodnessScore];
    v17 = *(a1 + 56);
    v26 = [v17 goodnessScore];
    v18 = [*(a1 + 72) debugDescription];
    v24 = *(a1 + 112);
    v19 = [v3 goodnessScoreBoosts];
    v20 = [v19 debugDescription];
    v21 = [v3 goodnessScoreBoosts];
    v22 = [v21 trumpReason] - 1;
    if (v22 > 7)
    {
      v23 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v23 = off_1E85D2BA0[v22];
    }

    *buf = 136318466;
    v33 = "[SCDAInstrumentation logCDAElectionDecisionMade:withDecision:withPreviousDecision:timeSincePreviousDecision:withWinningDevice:withThisDevice:withParticipants:withRawScore:withBoost:withCdaId:currentRequestId:withTimestamp:]_block_invoke";
    v34 = 2112;
    v35 = v25;
    v36 = 2112;
    v37 = v31;
    v38 = 2112;
    v39 = v30;
    v40 = 2112;
    v41 = v28;
    v42 = 2048;
    v43 = v29;
    v44 = 2112;
    v45 = v16;
    v46 = 1024;
    v47 = v27;
    v48 = 2112;
    v49 = v17;
    v50 = 1024;
    v51 = v26;
    v52 = 2112;
    v53 = v18;
    v54 = 1024;
    v55 = v24;
    v56 = 2112;
    v57 = v20;
    v58 = 2112;
    v59 = v23;
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, withDecision: %@, withPreviousDecision: %@, timeSincePreviousDecision: %llu, withWinningDevice: %@ (score: %d), withThisDevice: %@ (score: %d), withParticipants: %@, withRawScore:%u, withBoost:%@, withTrumpReason:%@", buf, 0x82u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  *(*(a1 + 32) + 32) = 0;
  v8 = mach_absolute_time();
  *(*(a1 + 32) + 48) = v8;
  if (*(a1 + 104) == 1)
  {
    *(*(a1 + 32) + 40) = v8;
  }
}

- (void)logCDAElectionTimerEnded:(int)ended withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__SCDAInstrumentation_logCDAElectionTimerEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = idCopy;
  endedCopy = ended;
  timestampCopy = timestamp;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

void __72__SCDAInstrumentation_logCDAElectionTimerEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE938]);
  [v3 setState:*(a1 + 56)];
  [v2 setElectionTimerEnded:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v4 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 56) - 1;
    if (v6 > 0x11)
    {
      v7 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v7 = off_1E85D2AD8[v6];
    }

    v9 = 136315650;
    v10 = "[SCDAInstrumentation logCDAElectionTimerEnded:withCdaId:withTimestamp:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v8 = v4;
    _os_log_debug_impl(&dword_1DA758000, v8, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v9, 0x20u);
  }
}

- (void)logCDAElectionAdvertisingEnding:(int)ending withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__SCDAInstrumentation_logCDAElectionAdvertisingEnding_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = idCopy;
  endingCopy = ending;
  timestampCopy = timestamp;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

void __79__SCDAInstrumentation_logCDAElectionAdvertisingEnding_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE918]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8E8]);
  [v4 setStartedOrChanged:v3];
  [v2 setCdaAdvertisingEndChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E85D2AD8[v7];
    }

    v10 = 136315650;
    v11 = "[SCDAInstrumentation logCDAElectionAdvertisingEnding:withCdaId:withTimestamp:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v5;
    _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v10, 0x20u);
  }
}

- (void)logCDAElectionAdvertisingEnded:(int)ended withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__SCDAInstrumentation_logCDAElectionAdvertisingEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = idCopy;
  endedCopy = ended;
  timestampCopy = timestamp;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

void __78__SCDAInstrumentation_logCDAElectionAdvertisingEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE910]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8E8]);
  [v4 setEnded:v3];
  [v2 setCdaAdvertisingEndChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E85D2AD8[v7];
    }

    v10 = 136315650;
    v11 = "[SCDAInstrumentation logCDAElectionAdvertisingEnded:withCdaId:withTimestamp:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v5;
    _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v10, 0x20u);
  }
}

- (void)logCDAElectionAdvertisingStarting:(int)starting withDelay:(float)delay withInterval:(float)interval withVoiceTriggerLatency:(float)latency withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  idCopy = id;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__SCDAInstrumentation_logCDAElectionAdvertisingStarting_withDelay_withInterval_withVoiceTriggerLatency_withCdaId_withTimestamp___block_invoke;
  block[3] = &unk_1E85D2A00;
  block[4] = self;
  v18 = idCopy;
  startingCopy = starting;
  delayCopy = delay;
  intervalCopy = interval;
  latencyCopy = latency;
  timestampCopy = timestamp;
  v16 = idCopy;
  dispatch_async(queue, block);
}

void __128__SCDAInstrumentation_logCDAElectionAdvertisingStarting_withDelay_withInterval_withVoiceTriggerLatency_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE928]);
  [v3 setState:*(a1 + 56)];
  LODWORD(v4) = *(a1 + 60);
  [v3 setAdvertisementDelay:v4];
  LODWORD(v5) = *(a1 + 64);
  [v3 setAdvertisementInterval:v5];
  LODWORD(v6) = *(a1 + 68);
  [v3 setVoiceTriggerLatency:v6];
  v7 = objc_alloc_init(MEMORY[0x1E69CE8F0]);
  [v7 setStartedOrChanged:v3];
  [v2 setCdaAdvertisingStartChanged:v7];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v8 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 56) - 1;
    if (v10 > 0x11)
    {
      v11 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v11 = off_1E85D2AD8[v10];
    }

    v13 = 136315650;
    v14 = "[SCDAInstrumentation logCDAElectionAdvertisingStarting:withDelay:withInterval:withVoiceTriggerLatency:withCdaId:withTimestamp:]_block_invoke";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    v12 = v8;
    _os_log_debug_impl(&dword_1DA758000, v12, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v13, 0x20u);
  }
}

- (void)logCDAElectionAdvertisingStarted:(int)started withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__SCDAInstrumentation_logCDAElectionAdvertisingStarted_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = idCopy;
  startedCopy = started;
  timestampCopy = timestamp;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

void __80__SCDAInstrumentation_logCDAElectionAdvertisingStarted_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE920]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8F0]);
  [v4 setEnded:v3];
  [v2 setCdaAdvertisingStartChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E85D2AD8[v7];
    }

    v10 = 136315650;
    v11 = "[SCDAInstrumentation logCDAElectionAdvertisingStarted:withCdaId:withTimestamp:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v5;
    _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v10, 0x20u);
  }
}

- (void)logCDADeviceStateActivityEnded:(int)ended withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__SCDAInstrumentation_logCDADeviceStateActivityEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = idCopy;
  endedCopy = ended;
  timestampCopy = timestamp;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

void __78__SCDAInstrumentation_logCDADeviceStateActivityEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE8F8]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE908]);
  [v4 setEnded:v3];
  [v2 setDeviceElectionStateContext:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E85D2AD8[v7];
    }

    v10 = 136315650;
    v11 = "[SCDAInstrumentation logCDADeviceStateActivityEnded:withCdaId:withTimestamp:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v5;
    _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v10, 0x20u);
  }
}

- (void)logCDADeviceStateActivityStartedOrChanged:(int)changed withTrigger:(int)trigger withCdaId:(id)id withTimestamp:(unint64_t)timestamp
{
  idCopy = id;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__SCDAInstrumentation_logCDADeviceStateActivityStartedOrChanged_withTrigger_withCdaId_withTimestamp___block_invoke;
  v13[3] = &unk_1E85D29B0;
  v13[4] = self;
  v14 = idCopy;
  changedCopy = changed;
  triggerCopy = trigger;
  timestampCopy = timestamp;
  v12 = idCopy;
  dispatch_async(queue, v13);
}

void __101__SCDAInstrumentation_logCDADeviceStateActivityStartedOrChanged_withTrigger_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE900]);
  [v3 setState:*(a1 + 56)];
  if (*(a1 + 60))
  {
    [v3 setTrigger:?];
    *(*(a1 + 32) + 32) = *(a1 + 60);
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CE908]);
  [v4 setStartedOrChanged:v3];
  [v2 setDeviceElectionStateContext:v4];
  v5 = [MEMORY[0x1E69CE1E8] sharedStream];
  [v5 emitMessage:v2 timestamp:*(a1 + 48)];

  v6 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 56) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E85D2AD8[v7];
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 60) - 1;
    if (v10 > 7)
    {
      v11 = @"CDATRIGGER_UKNOWN";
    }

    else
    {
      v11 = off_1E85D2A98[v10];
    }

    v13 = 136315906;
    v14 = "[SCDAInstrumentation logCDADeviceStateActivityStartedOrChanged:withTrigger:withCdaId:withTimestamp:]_block_invoke";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v11;
    v12 = v6;
    _os_log_debug_impl(&dword_1DA758000, v12, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, trigger: %@", &v13, 0x2Au);
  }
}

- (SCDAInstrumentation)init
{
  v8.receiver = self;
  v8.super_class = SCDAInstrumentation;
  v2 = [(SCDAInstrumentation *)&v8 init];
  if (v2)
  {
    v3 = SCDADispatchSerialQueueWithRelativePriority("com.apple.assistant.myriad.instrumentation", QOS_CLASS_UTILITY, 0);
    queue = v2->_queue;
    v2->_queue = v3;

    if ([MEMORY[0x1E698D148] isCrossDeviceArbitrationFeedbackEnabled])
    {
      v5 = objc_alloc_init(SCDAArbitrationParticipationController);
      arbitrationParticipationController = v2->_arbitrationParticipationController;
      v2->_arbitrationParticipationController = v5;
    }
  }

  return v2;
}

@end