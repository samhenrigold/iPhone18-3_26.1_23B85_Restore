@interface SGMNLEventInBanner
- (SGMNLEventInBanner)init;
- (void)trackEventWithScalar:(unint64_t)scalar interface:(SGMNLEventInterface_)interface actionType:(SGMNLEventActionType_)type eventType:(id)eventType languageID:(id)d daysFromStartDate:(unint64_t)date confidenceScore:(unint64_t)score significantSender:(SGMBoolOption_)self0 participantCount:(unint64_t)self1 extractionLevel:(SGMNLEventExtractionLevel_)self2 usedBubblesCount:(unint64_t)self3 titleSource:(SGMEventTitleSource_)self4 titleAdj:(SGMEventStringAdj_)self5 dateAdj:(SGMEventDateAdj_)self6 duraAdj:(SGMEventDurationAdj_)self7 locationAdj:(SGMEventLocationAdj_)self8 addedAttendeesCount:(id)self9 calendarAppUsageLevel:(id)usageLevel mailAppUsageLevel:(SGMAppUsageLevel_)appUsageLevel messagesAppUsageLevel:(SGMAppUsageLevel_)messagesAppUsageLevel;
@end

@implementation SGMNLEventInBanner

- (void)trackEventWithScalar:(unint64_t)scalar interface:(SGMNLEventInterface_)interface actionType:(SGMNLEventActionType_)type eventType:(id)eventType languageID:(id)d daysFromStartDate:(unint64_t)date confidenceScore:(unint64_t)score significantSender:(SGMBoolOption_)self0 participantCount:(unint64_t)self1 extractionLevel:(SGMNLEventExtractionLevel_)self2 usedBubblesCount:(unint64_t)self3 titleSource:(SGMEventTitleSource_)self4 titleAdj:(SGMEventStringAdj_)self5 dateAdj:(SGMEventDateAdj_)self6 duraAdj:(SGMEventDurationAdj_)self7 locationAdj:(SGMEventLocationAdj_)self8 addedAttendeesCount:(id)self9 calendarAppUsageLevel:(id)usageLevel mailAppUsageLevel:(SGMAppUsageLevel_)appUsageLevel messagesAppUsageLevel:(SGMAppUsageLevel_)messagesAppUsageLevel
{
  v85[19] = *MEMORY[0x1E69E9840];
  eventTypeCopy = eventType;
  dCopy = d;
  attendeesCountCopy = attendeesCount;
  usageLevelCopy = usageLevel;
  if (interface.var0 >= 0x14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMNLEventInterface_toString(SGMNLEventInterface)"];
    [currentHandler handleFailureInFunction:v31 file:@"SGMetricsDefines.h" lineNumber:479 description:{@"unrecognized tag %lu on SGMNLEventInterface", interface.var0}];

    v29 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v29 = off_1E7EFC130[interface.var0];
  }

  v78 = v29;
  if (type.var0 >= 0xC)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = 0x1E696A000uLL;
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMNLEventActionType_toString(SGMNLEventActionType)"];
    [currentHandler2 handleFailureInFunction:v34 file:@"SGMetricsDefines.h" lineNumber:430 description:{@"unrecognized tag %lu on SGMNLEventActionType", type.var0}];

    v77 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v77 = off_1E7EFBFC8[type.var0];
    v32 = 0x1E696A000;
  }

  v80 = eventTypeCopy;
  v79 = dCopy;
  if (sender.var0 >= 3)
  {
    v35 = 0x1E696A000uLL;
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMBoolOption_toString(SGMBoolOption)"];
    [currentHandler3 handleFailureInFunction:v37 file:@"SGMetricsDefines.h" lineNumber:27 description:{@"unrecognized tag %lu on SGMBoolOption", sender.var0}];

    v76 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v76 = off_1E7EFC028[sender.var0];
    v35 = 0x1E696A000;
  }

  if (level.var0 >= 6)
  {
    currentHandler4 = [*(v35 + 2728) currentHandler];
    v40 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMNLEventExtractionLevel_toString(SGMNLEventExtractionLevel)"];
    [currentHandler4 handleFailureInFunction:v40 file:@"SGMetricsDefines.h" lineNumber:380 description:{@"unrecognized tag %lu on SGMNLEventExtractionLevel", level.var0}];

    v38 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v38 = off_1E7EFC040[level.var0];
  }

  v75 = v38;
  if (source.var0 >= 4)
  {
    currentHandler5 = [*(v35 + 2728) currentHandler];
    v43 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventTitleSource_toString(SGMEventTitleSource)"];
    [currentHandler5 handleFailureInFunction:v43 file:@"SGMetricsDefines.h" lineNumber:397 description:{@"unrecognized tag %lu on SGMEventTitleSource", source.var0}];

    v41 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v41 = off_1E7EFC070[source.var0];
  }

  v74 = v41;
  if (adj.var0 >= 5)
  {
    currentHandler6 = [*(v35 + 2728) currentHandler];
    v46 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventStringAdj_toString(SGMEventStringAdj)"];
    [currentHandler6 handleFailureInFunction:v46 file:@"SGMetricsDefines.h" lineNumber:290 description:{@"unrecognized tag %lu on SGMEventStringAdj", adj.var0}];

    v44 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v44 = off_1E7EFC090[adj.var0];
  }

  v73 = v44;
  if (dateAdj.var0 >= 0xA)
  {
    currentHandler7 = [*(v35 + 2728) currentHandler];
    v49 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventDateAdj_toString(SGMEventDateAdj)"];
    [currentHandler7 handleFailureInFunction:v49 file:@"SGMetricsDefines.h" lineNumber:319 description:{@"unrecognized tag %lu on SGMEventDateAdj", dateAdj.var0}];

    v47 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v47 = off_1E7EFBF60[dateAdj.var0];
  }

  v72 = v47;
  if (duraAdj.var0 >= 6)
  {
    currentHandler8 = [*(v35 + 2728) currentHandler];
    v52 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventDurationAdj_toString(SGMEventDurationAdj)"];
    [currentHandler8 handleFailureInFunction:v52 file:@"SGMetricsDefines.h" lineNumber:340 description:{@"unrecognized tag %lu on SGMEventDurationAdj", duraAdj.var0}];

    v50 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v50 = off_1E7EFC0B8[duraAdj.var0];
  }

  v71 = v50;
  if (locationAdj.var0 >= 5)
  {
    currentHandler9 = [*(v35 + 2728) currentHandler];
    v55 = [*(v32 + 3776) stringWithUTF8String:"NSString * _Nonnull SGMEventLocationAdj_toString(SGMEventLocationAdj)"];
    [currentHandler9 handleFailureInFunction:v55 file:@"SGMetricsDefines.h" lineNumber:359 description:{@"unrecognized tag %lu on SGMEventLocationAdj", locationAdj.var0}];

    v53 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v53 = off_1E7EFC0E8[locationAdj.var0];
  }

  v68 = v53;
  v70 = attendeesCountCopy;
  v69 = usageLevelCopy;
  if (appUsageLevel.var0 >= 4)
  {
    currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMAppUsageLevel_toString(SGMAppUsageLevel)"];
    [currentHandler10 handleFailureInFunction:v58 file:@"SGMetricsDefines.h" lineNumber:496 description:{@"unrecognized tag %lu on SGMAppUsageLevel", appUsageLevel.var0}];

    v56 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v56 = off_1E7EFC110[appUsageLevel.var0];
  }

  v67 = v56;
  if (messagesAppUsageLevel.var0 >= 4)
  {
    currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMAppUsageLevel_toString(SGMAppUsageLevel)"];
    [currentHandler11 handleFailureInFunction:v61 file:@"SGMetricsDefines.h" lineNumber:496 description:{@"unrecognized tag %lu on SGMAppUsageLevel", messagesAppUsageLevel.var0}];

    v59 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v59 = off_1E7EFC110[messagesAppUsageLevel.var0];
  }

  tracker = self->_tracker;
  v85[0] = v78;
  v85[1] = v77;
  v85[2] = v80;
  v85[3] = v79;
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:date];
  v85[4] = v62;
  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:score];
  v85[5] = v63;
  v85[6] = v76;
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v85[7] = v64;
  v85[8] = v75;
  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bubblesCount];
  v85[9] = v65;
  v85[10] = v74;
  v85[11] = v73;
  v85[12] = v72;
  v85[13] = v71;
  v85[14] = v68;
  v85[15] = v70;
  v85[16] = v69;
  v85[17] = v67;
  v85[18] = v59;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:19];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v66 value:scalar];
}

- (SGMNLEventInBanner)init
{
  v29[19] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = SGMNLEventInBanner;
  v2 = [(SGMNLEventInBanner *)&v28 init];
  if (v2)
  {
    v25 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"I"];
    v27 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"A"];
    v26 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"T"];
    v22 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"L"];
    v24 = [MEMORY[0x1E69C5B40] propertyWithName:@"D" range:0 clampValues:{57, 1}];
    v20 = [MEMORY[0x1E69C5B40] propertyWithName:@"C" range:0 clampValues:{101, 1}];
    v21 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"S"];
    v19 = [MEMORY[0x1E69C5B40] propertyWithName:@"P" range:0 clampValues:{100, 1}];
    v23 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"E"];
    v18 = [MEMORY[0x1E69C5B40] propertyWithName:@"B" range:0 clampValues:{11, 1}];
    v17 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"TiS"];
    v16 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"TiA"];
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"DaA"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"DuA"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"LoA"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"AttC"];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"CaUL"];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"MaUL"];
    v9 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"MeUL"];
    v10 = objc_alloc(MEMORY[0x1E69C5B58]);
    v29[0] = v25;
    v29[1] = v27;
    v29[2] = v26;
    v29[3] = v22;
    v29[4] = v24;
    v29[5] = v20;
    v29[6] = v21;
    v29[7] = v19;
    v29[8] = v23;
    v29[9] = v18;
    v29[10] = v17;
    v29[11] = v16;
    v29[12] = v3;
    v29[13] = v4;
    v29[14] = v5;
    v29[15] = v6;
    v29[16] = v7;
    v29[17] = v8;
    v11 = v7;
    v29[18] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:19];
    v13 = [v10 initWithFeatureId:@"Found" event:@"NLEventInBanner" registerProperties:v12 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v13;
  }

  return v2;
}

@end