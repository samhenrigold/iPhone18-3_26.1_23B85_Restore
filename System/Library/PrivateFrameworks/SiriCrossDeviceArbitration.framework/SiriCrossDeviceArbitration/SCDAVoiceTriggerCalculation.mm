@interface SCDAVoiceTriggerCalculation
+ (id)_adjustRecord:(id)record withBoostAdjust:(int)adjust constantGoodness:(int)goodness oldRecord:(id)oldRecord evaluator:(id)evaluator device:(id)device;
+ (id)_changeNewRecord:(id)record tiebreakerIfIdenticalToOldRecord:(id)oldRecord;
+ (id)calculateRepeatVoiceTrigger:(id)trigger withOldRecord:(id)record device:(id)device adjustment:(int)adjustment constantGoodness:(int)goodness evaluator:(id)evaluator andContext:(id)context;
@end

@implementation SCDAVoiceTriggerCalculation

+ (id)_changeNewRecord:(id)record tiebreakerIfIdenticalToOldRecord:(id)oldRecord
{
  v23 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  oldRecordCopy = oldRecord;
  if ([oldRecordCopy hasEqualAdvertisementData:recordCopy])
  {
    [recordCopy generateTiebreaker];
    v7 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = v7;
    recordType = [oldRecordCopy recordType];
    if (recordType > 0x14)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_1E85D38E0[recordType];
    }

    v14 = v10;
    v17 = 136315650;
    v18 = "+[SCDAVoiceTriggerCalculation _changeNewRecord:tiebreakerIfIdenticalToOldRecord:]";
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = oldRecordCopy;
    v15 = "%s #scda Voice trigger with active record (%@), using original with adjusted TB: %@";
  }

  else
  {
    v11 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = v11;
    recordType2 = [oldRecordCopy recordType];
    if (recordType2 > 0x14)
    {
      v13 = @"(unknown)";
    }

    else
    {
      v13 = off_1E85D38E0[recordType2];
    }

    v14 = v13;
    v17 = 136315650;
    v18 = "+[SCDAVoiceTriggerCalculation _changeNewRecord:tiebreakerIfIdenticalToOldRecord:]";
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = oldRecordCopy;
    v15 = "%s #scda Voice trigger with active record (%@), using new record: %@";
  }

  _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, v15, &v17, 0x20u);

LABEL_13:

  return recordCopy;
}

+ (id)_adjustRecord:(id)record withBoostAdjust:(int)adjust constantGoodness:(int)goodness oldRecord:(id)oldRecord evaluator:(id)evaluator device:(id)device
{
  v39 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  oldRecordCopy = oldRecord;
  evaluatorCopy = evaluator;
  deviceCopy = device;
  deviceAdjust_DEPRECATED = [deviceCopy deviceAdjust_DEPRECATED];
  if ([evaluatorCopy deviceAdjustTrialEnabled])
  {
    deviceAdjust_DEPRECATED = [evaluatorCopy deviceAdjustTrialValue];
    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v27 = 136315394;
      v28 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
      v29 = 1024;
      LODWORD(v30) = deviceAdjust_DEPRECATED;
      _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s #scda Using Trial defined Device Adjust Value: %du", &v27, 0x12u);
    }
  }

  v19 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    deviceClassName = [deviceCopy deviceClassName];
    productTypeName = [deviceCopy productTypeName];
    rawAudioGoodnessScore = [recordCopy rawAudioGoodnessScore];
    v27 = 136316418;
    v28 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
    v29 = 2112;
    v30 = deviceClassName;
    v31 = 2112;
    v32 = productTypeName;
    v33 = 1024;
    v34 = deviceAdjust_DEPRECATED;
    v35 = 1024;
    adjustCopy = adjust;
    v37 = 1024;
    v38 = rawAudioGoodnessScore;
    _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s #scda BTLE device class: %@ (%@) detected, deviceAdjust: %d incomingAdjustment %d, original rawAudioGoodnessScore: %d", &v27, 0x32u);
  }

  [recordCopy adjustByAdding:(deviceAdjust_DEPRECATED + adjust)];
  if (goodness <= 0xFF)
  {
    v24 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
      v29 = 1024;
      LODWORD(v30) = goodness;
      _os_log_error_impl(&dword_1DA758000, v24, OS_LOG_TYPE_ERROR, "%s #scda BTLE overriding to constant goodness %d", &v27, 0x12u);
    }

    [recordCopy setRawAudioGoodnessScore:0 withBump:goodness];
  }

  v25 = [SCDAVoiceTriggerCalculation _changeNewRecord:recordCopy tiebreakerIfIdenticalToOldRecord:oldRecordCopy];

  return v25;
}

+ (id)calculateRepeatVoiceTrigger:(id)trigger withOldRecord:(id)record device:(id)device adjustment:(int)adjustment constantGoodness:(int)goodness evaluator:(id)evaluator andContext:(id)context
{
  v10 = *&goodness;
  v11 = *&adjustment;
  v45 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  recordCopy = record;
  deviceCopy = device;
  evaluatorCopy = evaluator;
  contextCopy = context;
  v19 = [triggerCopy copy];
  [(SCDARecord *)v19 setRecordType:20];
  if (!recordCopy)
  {
    v23 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v41 = 136315138;
      v42 = "+[SCDAVoiceTriggerCalculation calculateRepeatVoiceTrigger:withOldRecord:device:adjustment:constantGoodness:evaluator:andContext:]";
      _os_log_impl(&dword_1DA758000, v23, OS_LOG_TYPE_INFO, "%s #scda Voice trigger, activation with no previous record, proceeding to calculate adjustments", &v41, 0xCu);
    }

    v24 = v19;
    v25 = v11;
    v26 = v10;
    v27 = 0;
    goto LABEL_13;
  }

  if ([recordCopy recordType] != 4)
  {
    if (![(SCDARecord *)v19 isValid])
    {
      v31 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v32 = v31;
        recordType = [recordCopy recordType];
        if (recordType > 0x14)
        {
          v34 = @"(unknown)";
        }

        else
        {
          v34 = off_1E85D38E0[recordType];
        }

        v35 = v34;
        v41 = 136315650;
        v42 = "+[SCDAVoiceTriggerCalculation calculateRepeatVoiceTrigger:withOldRecord:device:adjustment:constantGoodness:evaluator:andContext:]";
        v43 = 2112;
        *v44 = v35;
        *&v44[8] = 2048;
        *&v44[10] = [recordCopy voiceTriggerMachTime];
        _os_log_impl(&dword_1DA758000, v32, OS_LOG_TYPE_INFO, "%s #scda Voice Trigger Replacing new (empty) record with DT record for in progress request %@ with VT Time %llu", &v41, 0x20u);
      }

      v36 = [SCDARecord alloc];
      perceptualAudioHash = [contextCopy perceptualAudioHash];
      v20 = [(SCDARecord *)v36 initWithDirectTrigger:perceptualAudioHash device:deviceCopy];

      [(SCDARecord *)v20 setRecordType:20];
      if ([recordCopy recordType] == 7)
      {
        [(SCDARecord *)v20 setRawAudioGoodnessScore:0 withBump:248];
        [(SCDARecord *)v20 setRecordType:7];
        v38 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          v41 = 136315394;
          v42 = "+[SCDAVoiceTriggerCalculation calculateRepeatVoiceTrigger:withOldRecord:device:adjustment:constantGoodness:evaluator:andContext:]";
          v43 = 2112;
          *v44 = v20;
          _os_log_impl(&dword_1DA758000, v38, OS_LOG_TYPE_INFO, "%s #scda Voice trigger in-ear trigger overridden to: %@", &v41, 0x16u);
        }
      }

      [(SCDARecord *)v20 setUserConfidence:0];
      goto LABEL_23;
    }

    goodness = [recordCopy goodness];
    if (goodness > [(SCDARecord *)v19 goodness])
    {
      v29 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v40 = v29;
        v41 = 136315906;
        v42 = "+[SCDAVoiceTriggerCalculation calculateRepeatVoiceTrigger:withOldRecord:device:adjustment:constantGoodness:evaluator:andContext:]";
        v43 = 1024;
        *v44 = [triggerCopy goodness];
        *&v44[4] = 2112;
        *&v44[6] = recordCopy;
        *&v44[14] = 2112;
        *&v44[16] = v19;
        _os_log_debug_impl(&dword_1DA758000, v40, OS_LOG_TYPE_DEBUG, "%s #scda Voice trigger with lower goodness (%du) arrived, but ignoring old record: %@ in favor of new: %@", &v41, 0x26u);
      }
    }

    v24 = v19;
    v25 = v11;
    v26 = v10;
    v27 = recordCopy;
LABEL_13:
    v30 = [SCDAVoiceTriggerCalculation _adjustRecord:v24 withBoostAdjust:v25 constantGoodness:v26 oldRecord:v27 evaluator:evaluatorCopy device:deviceCopy];
    goto LABEL_24;
  }

  v20 = [recordCopy copy];

  [(SCDARecord *)v20 generateTiebreaker];
  [(SCDARecord *)v20 setUserConfidence:254];
  [(SCDARecord *)v20 setRecordType:4];
  perceptualAudioHash2 = [contextCopy perceptualAudioHash];
  [(SCDARecord *)v20 updateVoiceTriggerTime:perceptualAudioHash2];

  v22 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v41 = 136315394;
    v42 = "+[SCDAVoiceTriggerCalculation calculateRepeatVoiceTrigger:withOldRecord:device:adjustment:constantGoodness:evaluator:andContext:]";
    v43 = 2112;
    *v44 = v20;
    _os_log_impl(&dword_1DA758000, v22, OS_LOG_TYPE_INFO, "%s #scda Voice trigger after Direct Trigger generated new tiebreaker: %@", &v41, 0x16u);
  }

LABEL_23:
  v30 = [SCDAVoiceTriggerCalculation _adjustRecord:v20 withBoostAdjust:v11 constantGoodness:v10 oldRecord:recordCopy evaluator:evaluatorCopy device:deviceCopy];
  v19 = v20;
LABEL_24:

  return v30;
}

@end