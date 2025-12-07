@interface BMActivitySchedulerActivityProfile
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMActivitySchedulerActivityProfile)initWithBundleID:(id)d activityname:(id)activityname completed:(id)completed CPUAwakeTime:(id)time CPUTime:(id)uTime endBatteryTemperature:(id)temperature endTime:(id)endTime endedInIdle:(id)self0 endedOnBattery:(id)self1 networkProfSuccess:(id)self2 qosBackground:(id)self3 qosLegacy:(id)self4 qosUserInit:(id)self5 runTime:(id)self6 rusageProfSuccess:(id)self7 servicedEnergy:(id)self8 sessionProfSuccess:(id)self9 startBatteryTemperature:(id)batteryTemperature startTime:(id)startTime startedInIdle:(id)inIdle startedOnBattery:(id)onBattery version:(id)version wifiDown:(id)down wifiUp:(id)up dirtyMemoryDelta:(id)delta;
- (BMActivitySchedulerActivityProfile)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)endTime;
- (NSDate)startTime;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMActivitySchedulerActivityProfile

+ (id)columns
{
  v29[25] = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityname" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completed" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"CPUAwakeTime" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"CPUTime" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endBatteryTemperature" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endTime" dataType:3 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:2];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endedInIdle" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endedOnBattery" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"networkProfSuccess" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosBackground" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosLegacy" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosUserInit" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"runTime" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rusageProfSuccess" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"servicedEnergy" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionProfSuccess" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startBatteryTemperature" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTime" dataType:3 requestOnly:0 fieldNumber:19 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startedInIdle" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startedOnBattery" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wifiDown" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wifiUp" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dirtyMemoryDelta" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v29[0] = v28;
  v29[1] = v27;
  v29[2] = v26;
  v29[3] = v25;
  v29[4] = v24;
  v29[5] = v23;
  v29[6] = v22;
  v29[7] = v21;
  v29[8] = v20;
  v29[9] = v19;
  v29[10] = v18;
  v29[11] = v17;
  v29[12] = v16;
  v29[13] = v15;
  v29[14] = v14;
  v29[15] = v2;
  v29[16] = v3;
  v29[17] = v4;
  v29[18] = v13;
  v29[19] = v5;
  v29[20] = v6;
  v29[21] = v7;
  v29[22] = v12;
  v29[23] = v8;
  v29[24] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:25];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMActivitySchedulerActivityProfile *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMActivitySchedulerActivityProfile *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_124;
      }
    }

    activityname = [(BMActivitySchedulerActivityProfile *)self activityname];
    activityname2 = [v5 activityname];
    v15 = activityname2;
    if (activityname == activityname2)
    {
    }

    else
    {
      activityname3 = [(BMActivitySchedulerActivityProfile *)self activityname];
      activityname4 = [v5 activityname];
      v18 = [activityname3 isEqual:activityname4];

      if (!v18)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasCompleted](self, "hasCompleted") || [v5 hasCompleted])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasCompleted])
      {
        goto LABEL_124;
      }

      if (![v5 hasCompleted])
      {
        goto LABEL_124;
      }

      completed = [(BMActivitySchedulerActivityProfile *)self completed];
      if (completed != [v5 completed])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasCPUAwakeTime](self, "hasCPUAwakeTime") || [v5 hasCPUAwakeTime])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasCPUAwakeTime])
      {
        goto LABEL_124;
      }

      if (![v5 hasCPUAwakeTime])
      {
        goto LABEL_124;
      }

      cPUAwakeTime = [(BMActivitySchedulerActivityProfile *)self CPUAwakeTime];
      if (cPUAwakeTime != [v5 CPUAwakeTime])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasCPUTime](self, "hasCPUTime") || [v5 hasCPUTime])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasCPUTime])
      {
        goto LABEL_124;
      }

      if (![v5 hasCPUTime])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self CPUTime];
      v22 = v21;
      [v5 CPUTime];
      if (v22 != v23)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasEndBatteryTemperature](self, "hasEndBatteryTemperature") || [v5 hasEndBatteryTemperature])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasEndBatteryTemperature])
      {
        goto LABEL_124;
      }

      if (![v5 hasEndBatteryTemperature])
      {
        goto LABEL_124;
      }

      endBatteryTemperature = [(BMActivitySchedulerActivityProfile *)self endBatteryTemperature];
      if (endBatteryTemperature != [v5 endBatteryTemperature])
      {
        goto LABEL_124;
      }
    }

    endTime = [(BMActivitySchedulerActivityProfile *)self endTime];
    endTime2 = [v5 endTime];
    v27 = endTime2;
    if (endTime == endTime2)
    {
    }

    else
    {
      endTime3 = [(BMActivitySchedulerActivityProfile *)self endTime];
      endTime4 = [v5 endTime];
      v30 = [endTime3 isEqual:endTime4];

      if (!v30)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasEndedInIdle](self, "hasEndedInIdle") || [v5 hasEndedInIdle])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasEndedInIdle])
      {
        goto LABEL_124;
      }

      if (![v5 hasEndedInIdle])
      {
        goto LABEL_124;
      }

      endedInIdle = [(BMActivitySchedulerActivityProfile *)self endedInIdle];
      if (endedInIdle != [v5 endedInIdle])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasEndedOnBattery](self, "hasEndedOnBattery") || [v5 hasEndedOnBattery])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasEndedOnBattery])
      {
        goto LABEL_124;
      }

      if (![v5 hasEndedOnBattery])
      {
        goto LABEL_124;
      }

      endedOnBattery = [(BMActivitySchedulerActivityProfile *)self endedOnBattery];
      if (endedOnBattery != [v5 endedOnBattery])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasNetworkProfSuccess](self, "hasNetworkProfSuccess") || [v5 hasNetworkProfSuccess])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasNetworkProfSuccess])
      {
        goto LABEL_124;
      }

      if (![v5 hasNetworkProfSuccess])
      {
        goto LABEL_124;
      }

      networkProfSuccess = [(BMActivitySchedulerActivityProfile *)self networkProfSuccess];
      if (networkProfSuccess != [v5 networkProfSuccess])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasQosBackground](self, "hasQosBackground") || [v5 hasQosBackground])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasQosBackground])
      {
        goto LABEL_124;
      }

      if (![v5 hasQosBackground])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self qosBackground];
      v35 = v34;
      [v5 qosBackground];
      if (v35 != v36)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasQosLegacy](self, "hasQosLegacy") || [v5 hasQosLegacy])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasQosLegacy])
      {
        goto LABEL_124;
      }

      if (![v5 hasQosLegacy])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self qosLegacy];
      v38 = v37;
      [v5 qosLegacy];
      if (v38 != v39)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasQosUserInit](self, "hasQosUserInit") || [v5 hasQosUserInit])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasQosUserInit])
      {
        goto LABEL_124;
      }

      if (![v5 hasQosUserInit])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self qosUserInit];
      v41 = v40;
      [v5 qosUserInit];
      if (v41 != v42)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasRunTime](self, "hasRunTime") || [v5 hasRunTime])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasRunTime])
      {
        goto LABEL_124;
      }

      if (![v5 hasRunTime])
      {
        goto LABEL_124;
      }

      [(BMActivitySchedulerActivityProfile *)self runTime];
      v44 = v43;
      [v5 runTime];
      if (v44 != v45)
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasRusageProfSuccess](self, "hasRusageProfSuccess") || [v5 hasRusageProfSuccess])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasRusageProfSuccess])
      {
        goto LABEL_124;
      }

      if (![v5 hasRusageProfSuccess])
      {
        goto LABEL_124;
      }

      rusageProfSuccess = [(BMActivitySchedulerActivityProfile *)self rusageProfSuccess];
      if (rusageProfSuccess != [v5 rusageProfSuccess])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasServicedEnergy](self, "hasServicedEnergy") || [v5 hasServicedEnergy])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasServicedEnergy])
      {
        goto LABEL_124;
      }

      if (![v5 hasServicedEnergy])
      {
        goto LABEL_124;
      }

      servicedEnergy = [(BMActivitySchedulerActivityProfile *)self servicedEnergy];
      if (servicedEnergy != [v5 servicedEnergy])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasSessionProfSuccess](self, "hasSessionProfSuccess") || [v5 hasSessionProfSuccess])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasSessionProfSuccess])
      {
        goto LABEL_124;
      }

      if (![v5 hasSessionProfSuccess])
      {
        goto LABEL_124;
      }

      sessionProfSuccess = [(BMActivitySchedulerActivityProfile *)self sessionProfSuccess];
      if (sessionProfSuccess != [v5 sessionProfSuccess])
      {
        goto LABEL_124;
      }
    }

    if (-[BMActivitySchedulerActivityProfile hasStartBatteryTemperature](self, "hasStartBatteryTemperature") || [v5 hasStartBatteryTemperature])
    {
      if (![(BMActivitySchedulerActivityProfile *)self hasStartBatteryTemperature])
      {
        goto LABEL_124;
      }

      if (![v5 hasStartBatteryTemperature])
      {
        goto LABEL_124;
      }

      startBatteryTemperature = [(BMActivitySchedulerActivityProfile *)self startBatteryTemperature];
      if (startBatteryTemperature != [v5 startBatteryTemperature])
      {
        goto LABEL_124;
      }
    }

    startTime = [(BMActivitySchedulerActivityProfile *)self startTime];
    startTime2 = [v5 startTime];
    v52 = startTime2;
    if (startTime == startTime2)
    {
    }

    else
    {
      startTime3 = [(BMActivitySchedulerActivityProfile *)self startTime];
      startTime4 = [v5 startTime];
      v55 = [startTime3 isEqual:startTime4];

      if (!v55)
      {
        goto LABEL_124;
      }
    }

    if (!-[BMActivitySchedulerActivityProfile hasStartedInIdle](self, "hasStartedInIdle") && ![v5 hasStartedInIdle] || -[BMActivitySchedulerActivityProfile hasStartedInIdle](self, "hasStartedInIdle") && objc_msgSend(v5, "hasStartedInIdle") && (v56 = -[BMActivitySchedulerActivityProfile startedInIdle](self, "startedInIdle"), v56 == objc_msgSend(v5, "startedInIdle")))
    {
      if (!-[BMActivitySchedulerActivityProfile hasStartedOnBattery](self, "hasStartedOnBattery") && ![v5 hasStartedOnBattery] || -[BMActivitySchedulerActivityProfile hasStartedOnBattery](self, "hasStartedOnBattery") && objc_msgSend(v5, "hasStartedOnBattery") && (v57 = -[BMActivitySchedulerActivityProfile startedOnBattery](self, "startedOnBattery"), v57 == objc_msgSend(v5, "startedOnBattery")))
      {
        if (!-[BMActivitySchedulerActivityProfile hasVersion](self, "hasVersion") && ![v5 hasVersion] || -[BMActivitySchedulerActivityProfile hasVersion](self, "hasVersion") && objc_msgSend(v5, "hasVersion") && (v58 = -[BMActivitySchedulerActivityProfile version](self, "version"), v58 == objc_msgSend(v5, "version")))
        {
          if (!-[BMActivitySchedulerActivityProfile hasWifiDown](self, "hasWifiDown") && ![v5 hasWifiDown] || -[BMActivitySchedulerActivityProfile hasWifiDown](self, "hasWifiDown") && objc_msgSend(v5, "hasWifiDown") && (v59 = -[BMActivitySchedulerActivityProfile wifiDown](self, "wifiDown"), v59 == objc_msgSend(v5, "wifiDown")))
          {
            if (!-[BMActivitySchedulerActivityProfile hasWifiUp](self, "hasWifiUp") && ![v5 hasWifiUp] || -[BMActivitySchedulerActivityProfile hasWifiUp](self, "hasWifiUp") && objc_msgSend(v5, "hasWifiUp") && (v60 = -[BMActivitySchedulerActivityProfile wifiUp](self, "wifiUp"), v60 == objc_msgSend(v5, "wifiUp")))
            {
              if (!-[BMActivitySchedulerActivityProfile hasDirtyMemoryDelta](self, "hasDirtyMemoryDelta") && ![v5 hasDirtyMemoryDelta])
              {
                v12 = 1;
                goto LABEL_125;
              }

              if (-[BMActivitySchedulerActivityProfile hasDirtyMemoryDelta](self, "hasDirtyMemoryDelta") && [v5 hasDirtyMemoryDelta])
              {
                dirtyMemoryDelta = [(BMActivitySchedulerActivityProfile *)self dirtyMemoryDelta];
                v12 = dirtyMemoryDelta == [v5 dirtyMemoryDelta];
LABEL_125:

                goto LABEL_126;
              }
            }
          }
        }
      }
    }

LABEL_124:
    v12 = 0;
    goto LABEL_125;
  }

  v12 = 0;
LABEL_126:

  return v12;
}

- (NSDate)startTime
{
  if (self->_hasRaw_startTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)endTime
{
  if (self->_hasRaw_endTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v97[25] = *MEMORY[0x1E69E9840];
  bundleID = [(BMActivitySchedulerActivityProfile *)self bundleID];
  activityname = [(BMActivitySchedulerActivityProfile *)self activityname];
  if ([(BMActivitySchedulerActivityProfile *)self hasCompleted])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile completed](self, "completed")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasCPUAwakeTime])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile CPUAwakeTime](self, "CPUAwakeTime")}];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasCPUTime]|| ([(BMActivitySchedulerActivityProfile *)self CPUTime], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self CPUTime];
    v8 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self CPUTime];
    v9 = [v8 numberWithDouble:?];
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasEndBatteryTemperature])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile endBatteryTemperature](self, "endBatteryTemperature")}];
  }

  else
  {
    v95 = 0;
  }

  endTime = [(BMActivitySchedulerActivityProfile *)self endTime];
  if (endTime)
  {
    v11 = MEMORY[0x1E696AD98];
    endTime2 = [(BMActivitySchedulerActivityProfile *)self endTime];
    [endTime2 timeIntervalSince1970];
    v94 = [v11 numberWithDouble:?];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasEndedInIdle])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedInIdle](self, "endedInIdle")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasEndedOnBattery])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedOnBattery](self, "endedOnBattery")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasNetworkProfSuccess])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile networkProfSuccess](self, "networkProfSuccess")}];
  }

  else
  {
    v91 = 0;
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasQosBackground]|| ([(BMActivitySchedulerActivityProfile *)self qosBackground], fabs(v13) == INFINITY))
  {
    v90 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self qosBackground];
    v14 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self qosBackground];
    v90 = [v14 numberWithDouble:?];
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasQosLegacy]|| ([(BMActivitySchedulerActivityProfile *)self qosLegacy], fabs(v15) == INFINITY))
  {
    v89 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self qosLegacy];
    v16 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self qosLegacy];
    v89 = [v16 numberWithDouble:?];
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasQosUserInit]|| ([(BMActivitySchedulerActivityProfile *)self qosUserInit], fabs(v17) == INFINITY))
  {
    v88 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self qosUserInit];
    v18 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self qosUserInit];
    v88 = [v18 numberWithDouble:?];
  }

  if (![(BMActivitySchedulerActivityProfile *)self hasRunTime]|| ([(BMActivitySchedulerActivityProfile *)self runTime], fabs(v19) == INFINITY))
  {
    v87 = 0;
  }

  else
  {
    [(BMActivitySchedulerActivityProfile *)self runTime];
    v20 = MEMORY[0x1E696AD98];
    [(BMActivitySchedulerActivityProfile *)self runTime];
    v87 = [v20 numberWithDouble:?];
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasRusageProfSuccess])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile rusageProfSuccess](self, "rusageProfSuccess")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasServicedEnergy])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile servicedEnergy](self, "servicedEnergy")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasSessionProfSuccess])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile sessionProfSuccess](self, "sessionProfSuccess")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasStartBatteryTemperature])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile startBatteryTemperature](self, "startBatteryTemperature")}];
  }

  else
  {
    v83 = 0;
  }

  startTime = [(BMActivitySchedulerActivityProfile *)self startTime];
  if (startTime)
  {
    v22 = MEMORY[0x1E696AD98];
    startTime2 = [(BMActivitySchedulerActivityProfile *)self startTime];
    [startTime2 timeIntervalSince1970];
    v82 = [v22 numberWithDouble:?];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasStartedInIdle])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedInIdle](self, "startedInIdle")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasStartedOnBattery])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedOnBattery](self, "startedOnBattery")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasVersion])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile version](self, "version")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasWifiDown])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiDown](self, "wifiDown")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasWifiUp])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiUp](self, "wifiUp")}];
  }

  else
  {
    v77 = 0;
  }

  if ([(BMActivitySchedulerActivityProfile *)self hasDirtyMemoryDelta])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile dirtyMemoryDelta](self, "dirtyMemoryDelta")}];
  }

  else
  {
    v24 = 0;
  }

  v96[0] = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null;
  v97[0] = null;
  v96[1] = @"activityname";
  null2 = activityname;
  if (!activityname)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null2;
  v97[1] = null2;
  v96[2] = @"completed";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null3;
  v97[2] = null3;
  v96[3] = @"CPUAwakeTime";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null4;
  v97[3] = null4;
  v96[4] = @"CPUTime";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null5;
  v97[4] = null5;
  v96[5] = @"endBatteryTemperature";
  null6 = v95;
  if (!v95)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v97[5] = null6;
  v96[6] = @"endTime";
  null7 = v94;
  if (!v94)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v97[6] = null7;
  v96[7] = @"endedInIdle";
  null8 = v93;
  if (!v93)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v97[7] = null8;
  v96[8] = @"endedOnBattery";
  null9 = v92;
  if (!v92)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v97[8] = null9;
  v96[9] = @"networkProfSuccess";
  null10 = v91;
  if (!v91)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null10;
  v97[9] = null10;
  v96[10] = @"qosBackground";
  null11 = v90;
  if (!v90)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v6;
  v72 = null11;
  v97[10] = null11;
  v96[11] = @"qosLegacy";
  null12 = v89;
  if (!v89)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = activityname;
  v71 = null12;
  v97[11] = null12;
  v96[12] = @"qosUserInit";
  null13 = v88;
  if (!v88)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null13;
  v97[12] = null13;
  v96[13] = @"runTime";
  null14 = v87;
  if (!v87)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null14;
  v97[13] = null14;
  v96[14] = @"rusageProfSuccess";
  null15 = v86;
  if (!v86)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null15;
  v97[14] = null15;
  v96[15] = @"servicedEnergy";
  null16 = v85;
  if (!v85)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null16;
  v97[15] = null16;
  v96[16] = @"sessionProfSuccess";
  null17 = v84;
  if (!v84)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v5;
  v58 = null17;
  v97[16] = null17;
  v96[17] = @"startBatteryTemperature";
  null18 = v83;
  if (!v83)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null18;
  v97[17] = null18;
  v96[18] = @"startTime";
  null19 = v82;
  if (!v82)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null8;
  v56 = null19;
  v97[18] = null19;
  v96[19] = @"startedInIdle";
  null20 = v81;
  if (!v81)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v24;
  v55 = null20;
  v97[19] = null20;
  v96[20] = @"startedOnBattery";
  null21 = v80;
  if (!v80)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null9;
  v63 = null7;
  v97[20] = null21;
  v96[21] = @"version";
  null22 = v79;
  if (!v79)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v9;
  v97[21] = null22;
  v96[22] = @"wifiDown";
  null23 = v78;
  if (!v78)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v97[22] = null23;
  v96[23] = @"wifiUp";
  null24 = v77;
  if (!v77)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v97[23] = null24;
  v96[24] = @"dirtyMemoryDelta";
  null25 = v76;
  if (!v76)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v97[24] = null25;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:25];
  if (!v76)
  {
  }

  v53 = v39;
  if (!v77)
  {

    v53 = v39;
  }

  if (!v78)
  {

    v53 = v39;
  }

  if (!v79)
  {

    v53 = v39;
  }

  if (!v80)
  {

    v53 = v39;
  }

  if (!v81)
  {

    v53 = v39;
  }

  if (!v82)
  {

    v53 = v39;
  }

  if (!v83)
  {

    v53 = v39;
  }

  if (!v84)
  {

    v53 = v39;
  }

  if (!v85)
  {

    v53 = v39;
  }

  if (!v86)
  {

    v53 = v39;
  }

  if (!v87)
  {

    v53 = v39;
  }

  if (!v88)
  {
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (!v91)
  {
  }

  if (!v92)
  {
  }

  if (!v93)
  {
  }

  if (!v94)
  {
  }

  if (v95)
  {
    if (v49)
    {
      goto LABEL_165;
    }
  }

  else
  {

    if (v49)
    {
LABEL_165:
      if (v70)
      {
        goto LABEL_166;
      }

      goto LABEL_174;
    }
  }

  if (v70)
  {
LABEL_166:
    if (v75)
    {
      goto LABEL_167;
    }

    goto LABEL_175;
  }

LABEL_174:

  if (v75)
  {
LABEL_167:
    if (v37)
    {
      goto LABEL_168;
    }

LABEL_176:

    if (bundleID)
    {
      goto LABEL_169;
    }

    goto LABEL_177;
  }

LABEL_175:

  if (!v37)
  {
    goto LABEL_176;
  }

LABEL_168:
  if (bundleID)
  {
    goto LABEL_169;
  }

LABEL_177:

LABEL_169:

  return v69;
}

- (BMActivitySchedulerActivityProfile)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v362[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v312 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v312 = v7;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"activityname"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v311 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v311 = v8;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"completed"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v308 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v308 = v9;
LABEL_10:
        v10 = [dictionaryCopy objectForKeyedSubscript:@"CPUAwakeTime"];
        v309 = v10;
        if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          errorCopy2 = error;
          v305 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy2 = error;
          v305 = v11;
LABEL_13:
          v12 = [dictionaryCopy objectForKeyedSubscript:@"CPUTime"];
          v307 = v12;
          if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v306 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v306 = v13;
LABEL_16:
            v14 = [dictionaryCopy objectForKeyedSubscript:@"endBatteryTemperature"];
            v304 = v14;
            if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v302 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v302 = v15;
LABEL_19:
              v16 = [dictionaryCopy objectForKeyedSubscript:@"endTime"];
              if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v300 = 0;
                goto LABEL_53;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = v16;
                selfCopy = self;
                v30 = objc_alloc(MEMORY[0x1E695DF00]);
                [v28 doubleValue];
                v31 = v30;
                self = selfCopy;
                v300 = [v31 initWithTimeIntervalSince1970:?];
LABEL_52:

                goto LABEL_53;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
                selfCopy2 = self;
                v66 = v16;
                v300 = [v28 dateFromString:v66];

                self = selfCopy2;
                goto LABEL_52;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v300 = v16;
LABEL_53:
                v67 = [dictionaryCopy objectForKeyedSubscript:@"endedInIdle"];
                v296 = v16;
                v299 = v67;
                if (!v67 || (v68 = v67, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v298 = 0;
                  goto LABEL_56;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v298 = v68;
LABEL_56:
                  v69 = [dictionaryCopy objectForKeyedSubscript:@"endedOnBattery"];
                  v297 = v69;
                  if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v295 = 0;
                    goto LABEL_59;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v295 = v70;
LABEL_59:
                    v71 = [dictionaryCopy objectForKeyedSubscript:@"networkProfSuccess"];
                    v273 = v71;
                    if (!v71 || (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v272 = 0;
                      goto LABEL_62;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v272 = v72;
LABEL_62:
                      v73 = [dictionaryCopy objectForKeyedSubscript:@"qosBackground"];
                      v271 = v73;
                      if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v270 = 0;
                        goto LABEL_65;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v270 = v74;
LABEL_65:
                        v75 = [dictionaryCopy objectForKeyedSubscript:@"qosLegacy"];
                        v268 = v75;
                        if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v269 = 0;
                          goto LABEL_68;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v269 = v76;
LABEL_68:
                          v77 = [dictionaryCopy objectForKeyedSubscript:@"qosUserInit"];
                          v266 = v77;
                          if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v267 = 0;
                            goto LABEL_71;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v267 = v78;
LABEL_71:
                            v79 = [dictionaryCopy objectForKeyedSubscript:@"runTime"];
                            v264 = v79;
                            if (!v79 || (v80 = v79, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v265 = 0;
                              goto LABEL_74;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v265 = v80;
LABEL_74:
                              v81 = [dictionaryCopy objectForKeyedSubscript:@"rusageProfSuccess"];
                              v262 = v81;
                              if (!v81 || (v82 = v81, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v263 = 0;
                                goto LABEL_77;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v263 = v82;
LABEL_77:
                                v83 = [dictionaryCopy objectForKeyedSubscript:@"servicedEnergy"];
                                v260 = v83;
                                if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v261 = 0;
                                  goto LABEL_80;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v261 = v84;
LABEL_80:
                                  v85 = [dictionaryCopy objectForKeyedSubscript:@"sessionProfSuccess"];
                                  v258 = v85;
                                  if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v259 = 0;
                                    goto LABEL_83;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v259 = v86;
LABEL_83:
                                    v87 = [dictionaryCopy objectForKeyedSubscript:@"startBatteryTemperature"];
                                    v256 = v87;
                                    if (!v87 || (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v257 = 0;
                                      goto LABEL_86;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v257 = v88;
LABEL_86:
                                      v89 = [dictionaryCopy objectForKeyedSubscript:@"startTime"];
                                      v253 = v89;
                                      if (!v89 || (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v255 = 0;
                                        goto LABEL_89;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v144 = v90;
                                        v145 = objc_alloc(MEMORY[0x1E695DF00]);
                                        [v144 doubleValue];
                                        v255 = [v145 initWithTimeIntervalSince1970:?];

                                        goto LABEL_89;
                                      }

                                      v185 = v90;
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v186 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                        v187 = v185;
                                        v255 = [v186 dateFromString:v187];

                                        goto LABEL_89;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v255 = v90;
LABEL_89:
                                        v91 = [dictionaryCopy objectForKeyedSubscript:@"startedInIdle"];
                                        v251 = v91;
                                        if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v254 = 0;
                                          goto LABEL_92;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v254 = v92;
LABEL_92:
                                          v93 = [dictionaryCopy objectForKeyedSubscript:@"startedOnBattery"];
                                          v250 = v93;
                                          if (!v93 || (v94 = v93, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v252 = 0;
LABEL_95:
                                            v95 = [dictionaryCopy objectForKeyedSubscript:@"version"];
                                            v248 = v95;
                                            if (!v95)
                                            {
LABEL_165:
                                              v172 = [dictionaryCopy objectForKeyedSubscript:@"wifiDown"];
                                              v246 = v172;
                                              if (v172 && (v173 = v172, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  v242 = v95;
                                                  if (!errorCopy2)
                                                  {
                                                    v249 = 0;
                                                    selfCopy4 = 0;
                                                    v24 = v308;
                                                    v41 = v305;
                                                    goto LABEL_220;
                                                  }

                                                  v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v291 = v7;
                                                  v211 = v8;
                                                  v212 = v9;
                                                  selfCopy3 = self;
                                                  v214 = *MEMORY[0x1E698F240];
                                                  v317 = *MEMORY[0x1E696A578];
                                                  v247 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wifiDown"];
                                                  v318 = v247;
                                                  v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v318 forKeys:&v317 count:1];
                                                  v216 = v214;
                                                  self = selfCopy3;
                                                  v9 = v212;
                                                  v8 = v211;
                                                  v7 = v291;
                                                  v245 = v215;
                                                  v249 = 0;
                                                  selfCopy4 = 0;
                                                  *errorCopy2 = [v210 initWithDomain:v216 code:2 userInfo:?];
                                                  goto LABEL_253;
                                                }

                                                v249 = v173;
                                              }

                                              else
                                              {
                                                v249 = 0;
                                              }

                                              v174 = [dictionaryCopy objectForKeyedSubscript:@"wifiUp"];
                                              v245 = v174;
                                              if (!v174 || (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v247 = 0;
LABEL_171:
                                                v176 = [dictionaryCopy objectForKeyedSubscript:@"dirtyMemoryDelta"];
                                                v244 = v176;
                                                if (!v176)
                                                {
LABEL_174:
                                                  v24 = v308;
                                                  v41 = v305;
LABEL_175:
                                                  v243 = v176;
                                                  self = [(BMActivitySchedulerActivityProfile *)self initWithBundleID:v312 activityname:v311 completed:v24 CPUAwakeTime:v41 CPUTime:v306 endBatteryTemperature:v302 endTime:v300 endedInIdle:v298 endedOnBattery:v295 networkProfSuccess:v272 qosBackground:v270 qosLegacy:v269 qosUserInit:v267 runTime:v265 rusageProfSuccess:v263 servicedEnergy:v261 sessionProfSuccess:v259 startBatteryTemperature:v257 startTime:v255 startedInIdle:v254 startedOnBattery:v252 version:v95 wifiDown:v249 wifiUp:v247 dirtyMemoryDelta:v176];
                                                  selfCopy4 = self;
LABEL_218:

LABEL_219:
                                                  goto LABEL_220;
                                                }

                                                v177 = v176;
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v176 = 0;
                                                  goto LABEL_174;
                                                }

                                                objc_opt_class();
                                                v24 = v308;
                                                v41 = v305;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v176 = v177;
                                                  goto LABEL_175;
                                                }

                                                v242 = v95;
                                                if (errorCopy2)
                                                {
                                                  v224 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v293 = v7;
                                                  v225 = v8;
                                                  v226 = v9;
                                                  selfCopy5 = self;
                                                  v228 = *MEMORY[0x1E698F240];
                                                  v313 = *MEMORY[0x1E696A578];
                                                  v229 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dirtyMemoryDelta"];
                                                  v314 = v229;
                                                  v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
                                                  v231 = v228;
                                                  self = selfCopy5;
                                                  v9 = v226;
                                                  v8 = v225;
                                                  v7 = v293;
                                                  *errorCopy2 = [v224 initWithDomain:v231 code:2 userInfo:v230];

                                                  v41 = v305;
                                                  v24 = v308;
                                                }

                                                v243 = 0;
                                                selfCopy4 = 0;
LABEL_217:
                                                v95 = v242;
                                                goto LABEL_218;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v247 = v175;
                                                goto LABEL_171;
                                              }

                                              v242 = v95;
                                              if (errorCopy2)
                                              {
                                                v217 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v292 = v7;
                                                v218 = v8;
                                                v219 = v9;
                                                selfCopy6 = self;
                                                v221 = *MEMORY[0x1E698F240];
                                                v315 = *MEMORY[0x1E696A578];
                                                v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wifiUp"];
                                                v316 = v243;
                                                v222 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
                                                v223 = v221;
                                                self = selfCopy6;
                                                v9 = v219;
                                                v8 = v218;
                                                v7 = v292;
                                                v244 = v222;
                                                v247 = 0;
                                                selfCopy4 = 0;
                                                *errorCopy2 = [v217 initWithDomain:v223 code:2 userInfo:?];
                                                v24 = v308;
                                                v41 = v305;
                                                goto LABEL_217;
                                              }

                                              v247 = 0;
                                              selfCopy4 = 0;
LABEL_253:
                                              v24 = v308;
                                              v41 = v305;
                                              v95 = v242;
                                              goto LABEL_219;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v95 = 0;
                                              goto LABEL_165;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v95 = v95;
                                              goto LABEL_165;
                                            }

                                            v95 = errorCopy2;
                                            if (errorCopy2)
                                            {
                                              v203 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v290 = v7;
                                              v204 = v8;
                                              v205 = v9;
                                              selfCopy7 = self;
                                              v207 = *MEMORY[0x1E698F240];
                                              v319 = *MEMORY[0x1E696A578];
                                              v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
                                              v320 = v249;
                                              v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v320 forKeys:&v319 count:1];
                                              v209 = v207;
                                              self = selfCopy7;
                                              v9 = v205;
                                              v8 = v204;
                                              v7 = v290;
                                              v246 = v208;
                                              selfCopy4 = 0;
                                              *errorCopy2 = [v203 initWithDomain:v209 code:2 userInfo:?];
                                              v95 = 0;
                                              v24 = v308;
                                              v41 = v305;
LABEL_220:

LABEL_221:
LABEL_222:

LABEL_223:
                                              goto LABEL_224;
                                            }

                                            selfCopy4 = 0;
LABEL_247:
                                            v24 = v308;
                                            v41 = v305;
                                            v16 = v296;
                                            goto LABEL_221;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v252 = v94;
                                            goto LABEL_95;
                                          }

                                          if (errorCopy2)
                                          {
                                            v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v289 = v7;
                                            v196 = v8;
                                            v197 = v9;
                                            selfCopy8 = self;
                                            v199 = *MEMORY[0x1E698F240];
                                            v321 = *MEMORY[0x1E696A578];
                                            v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startedOnBattery"];
                                            v322 = v200;
                                            v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v322 forKeys:&v321 count:1];
                                            v202 = v199;
                                            self = selfCopy8;
                                            v9 = v197;
                                            v8 = v196;
                                            v7 = v289;
                                            v248 = v201;
                                            v252 = 0;
                                            selfCopy4 = 0;
                                            *errorCopy2 = [v195 initWithDomain:v202 code:2 userInfo:?];
                                            v95 = v200;
                                            goto LABEL_247;
                                          }

                                          v252 = 0;
                                          selfCopy4 = 0;
LABEL_245:
                                          v24 = v308;
                                          v41 = v305;
                                          goto LABEL_222;
                                        }

                                        if (errorCopy2)
                                        {
                                          v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v288 = v7;
                                          v189 = v8;
                                          v190 = v9;
                                          selfCopy9 = self;
                                          v192 = *MEMORY[0x1E698F240];
                                          v323 = *MEMORY[0x1E696A578];
                                          v252 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startedInIdle"];
                                          v324 = v252;
                                          v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
                                          v194 = v192;
                                          self = selfCopy9;
                                          v9 = v190;
                                          v8 = v189;
                                          v7 = v288;
                                          v250 = v193;
                                          v254 = 0;
                                          selfCopy4 = 0;
                                          *errorCopy2 = [v188 initWithDomain:v194 code:2 userInfo:?];
                                          goto LABEL_245;
                                        }

                                        v254 = 0;
                                        selfCopy4 = 0;
LABEL_250:
                                        v24 = v308;
                                        v41 = v305;
                                        v16 = v296;
                                        goto LABEL_223;
                                      }

                                      if (errorCopy2)
                                      {
                                        v233 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v294 = v7;
                                        v234 = v8;
                                        v235 = v9;
                                        selfCopy10 = self;
                                        v237 = *MEMORY[0x1E698F240];
                                        v325 = *MEMORY[0x1E696A578];
                                        v254 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startTime"];
                                        v326 = v254;
                                        v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v326 forKeys:&v325 count:1];
                                        v239 = v237;
                                        self = selfCopy10;
                                        v9 = v235;
                                        v8 = v234;
                                        v7 = v294;
                                        v251 = v238;
                                        v255 = 0;
                                        selfCopy4 = 0;
                                        *errorCopy2 = [v233 initWithDomain:v239 code:2 userInfo:?];
                                        goto LABEL_250;
                                      }

                                      v255 = 0;
                                      selfCopy4 = 0;
LABEL_180:
                                      v24 = v308;
                                      v41 = v305;
LABEL_224:

                                      goto LABEL_225;
                                    }

                                    if (errorCopy2)
                                    {
                                      v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v287 = v7;
                                      v179 = v8;
                                      v180 = v9;
                                      selfCopy11 = self;
                                      v182 = *MEMORY[0x1E698F240];
                                      v327 = *MEMORY[0x1E696A578];
                                      v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startBatteryTemperature"];
                                      v328 = v255;
                                      v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v328 forKeys:&v327 count:1];
                                      v184 = v182;
                                      self = selfCopy11;
                                      v9 = v180;
                                      v8 = v179;
                                      v7 = v287;
                                      v253 = v183;
                                      v257 = 0;
                                      selfCopy4 = 0;
                                      *errorCopy2 = [v178 initWithDomain:v184 code:2 userInfo:?];
                                      goto LABEL_180;
                                    }

                                    v257 = 0;
                                    selfCopy4 = 0;
LABEL_213:
                                    v24 = v308;
                                    v41 = v305;
LABEL_225:

                                    goto LABEL_226;
                                  }

                                  if (errorCopy2)
                                  {
                                    v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v286 = v7;
                                    v166 = v8;
                                    v167 = v9;
                                    selfCopy12 = self;
                                    v169 = *MEMORY[0x1E698F240];
                                    v329 = *MEMORY[0x1E696A578];
                                    v257 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sessionProfSuccess"];
                                    v330 = v257;
                                    v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v330 forKeys:&v329 count:1];
                                    v171 = v169;
                                    self = selfCopy12;
                                    v9 = v167;
                                    v8 = v166;
                                    v7 = v286;
                                    v256 = v170;
                                    v259 = 0;
                                    selfCopy4 = 0;
                                    *errorCopy2 = [v165 initWithDomain:v171 code:2 userInfo:?];
                                    goto LABEL_213;
                                  }

                                  v259 = 0;
                                  selfCopy4 = 0;
LABEL_207:
                                  v24 = v308;
                                  v41 = v305;
LABEL_226:

                                  goto LABEL_227;
                                }

                                if (errorCopy2)
                                {
                                  v158 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v285 = v7;
                                  v159 = v8;
                                  v160 = v9;
                                  selfCopy13 = self;
                                  v162 = *MEMORY[0x1E698F240];
                                  v331 = *MEMORY[0x1E696A578];
                                  v259 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"servicedEnergy"];
                                  v332 = v259;
                                  v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
                                  v164 = v162;
                                  self = selfCopy13;
                                  v9 = v160;
                                  v8 = v159;
                                  v7 = v285;
                                  v258 = v163;
                                  v261 = 0;
                                  selfCopy4 = 0;
                                  *errorCopy2 = [v158 initWithDomain:v164 code:2 userInfo:?];
                                  goto LABEL_207;
                                }

                                v261 = 0;
                                selfCopy4 = 0;
LABEL_203:
                                v24 = v308;
                                v41 = v305;
LABEL_227:

                                goto LABEL_228;
                              }

                              if (errorCopy2)
                              {
                                v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v284 = v7;
                                v147 = v8;
                                v148 = v9;
                                selfCopy14 = self;
                                v150 = *MEMORY[0x1E698F240];
                                v333 = *MEMORY[0x1E696A578];
                                v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rusageProfSuccess"];
                                v334 = v261;
                                v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
                                v152 = v150;
                                self = selfCopy14;
                                v9 = v148;
                                v8 = v147;
                                v7 = v284;
                                v260 = v151;
                                v263 = 0;
                                selfCopy4 = 0;
                                *errorCopy2 = [v146 initWithDomain:v152 code:2 userInfo:?];
                                goto LABEL_203;
                              }

                              v263 = 0;
                              selfCopy4 = 0;
LABEL_198:
                              v24 = v308;
                              v41 = v305;
LABEL_228:

                              goto LABEL_229;
                            }

                            if (errorCopy2)
                            {
                              v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v283 = v7;
                              v138 = v8;
                              v139 = v9;
                              selfCopy15 = self;
                              v141 = *MEMORY[0x1E698F240];
                              v335 = *MEMORY[0x1E696A578];
                              v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"runTime"];
                              v336 = v263;
                              v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
                              v143 = v141;
                              self = selfCopy15;
                              v9 = v139;
                              v8 = v138;
                              v7 = v283;
                              v262 = v142;
                              v265 = 0;
                              selfCopy4 = 0;
                              *errorCopy2 = [v137 initWithDomain:v143 code:2 userInfo:?];
                              goto LABEL_198;
                            }

                            v265 = 0;
                            selfCopy4 = 0;
LABEL_192:
                            v24 = v308;
                            v41 = v305;
LABEL_229:

                            goto LABEL_230;
                          }

                          if (errorCopy2)
                          {
                            v130 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v282 = v7;
                            v131 = v8;
                            v132 = v9;
                            selfCopy16 = self;
                            v134 = *MEMORY[0x1E698F240];
                            v337 = *MEMORY[0x1E696A578];
                            v265 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qosUserInit"];
                            v338 = v265;
                            v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
                            v136 = v134;
                            self = selfCopy16;
                            v9 = v132;
                            v8 = v131;
                            v7 = v282;
                            v264 = v135;
                            v267 = 0;
                            selfCopy4 = 0;
                            *errorCopy2 = [v130 initWithDomain:v136 code:2 userInfo:?];
                            goto LABEL_192;
                          }

                          v267 = 0;
                          selfCopy4 = 0;
LABEL_184:
                          v24 = v308;
                          v41 = v305;
LABEL_230:

                          goto LABEL_231;
                        }

                        if (errorCopy2)
                        {
                          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v281 = v7;
                          v124 = v8;
                          v125 = v9;
                          selfCopy17 = self;
                          v127 = *MEMORY[0x1E698F240];
                          v339 = *MEMORY[0x1E696A578];
                          v267 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qosLegacy"];
                          v340 = v267;
                          v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
                          v129 = v127;
                          self = selfCopy17;
                          v9 = v125;
                          v8 = v124;
                          v7 = v281;
                          v266 = v128;
                          v269 = 0;
                          selfCopy4 = 0;
                          *errorCopy2 = [v123 initWithDomain:v129 code:2 userInfo:?];
                          goto LABEL_184;
                        }

                        v269 = 0;
                        selfCopy4 = 0;
LABEL_177:
                        v24 = v308;
                        v41 = v305;
LABEL_231:

                        goto LABEL_232;
                      }

                      if (errorCopy2)
                      {
                        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v280 = v7;
                        v117 = v8;
                        v118 = v9;
                        selfCopy18 = self;
                        v120 = *MEMORY[0x1E698F240];
                        v341 = *MEMORY[0x1E696A578];
                        v269 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qosBackground"];
                        v342 = v269;
                        v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
                        v122 = v120;
                        self = selfCopy18;
                        v9 = v118;
                        v8 = v117;
                        v7 = v280;
                        v268 = v121;
                        v270 = 0;
                        selfCopy4 = 0;
                        *errorCopy2 = [v116 initWithDomain:v122 code:2 userInfo:?];
                        goto LABEL_177;
                      }

                      v270 = 0;
                      selfCopy4 = 0;
LABEL_160:
                      v24 = v308;
                      v41 = v305;
LABEL_232:

                      goto LABEL_233;
                    }

                    if (errorCopy2)
                    {
                      v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v279 = v7;
                      v110 = v8;
                      v111 = v9;
                      selfCopy19 = self;
                      v113 = *MEMORY[0x1E698F240];
                      v343 = *MEMORY[0x1E696A578];
                      v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"networkProfSuccess"];
                      v344 = v270;
                      v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
                      v115 = v113;
                      self = selfCopy19;
                      v9 = v111;
                      v8 = v110;
                      v7 = v279;
                      v271 = v114;
                      v272 = 0;
                      selfCopy4 = 0;
                      *errorCopy2 = [v109 initWithDomain:v115 code:2 userInfo:?];
                      goto LABEL_160;
                    }

                    v272 = 0;
                    selfCopy4 = 0;
LABEL_152:
                    v24 = v308;
                    v41 = v305;
LABEL_233:

                    goto LABEL_234;
                  }

                  if (errorCopy2)
                  {
                    v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v278 = v7;
                    v103 = v8;
                    v104 = v9;
                    selfCopy20 = self;
                    v106 = *MEMORY[0x1E698F240];
                    v345 = *MEMORY[0x1E696A578];
                    v272 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endedOnBattery"];
                    v346 = v272;
                    v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
                    v108 = v106;
                    self = selfCopy20;
                    v9 = v104;
                    v8 = v103;
                    v7 = v278;
                    v273 = v107;
                    v295 = 0;
                    selfCopy4 = 0;
                    *errorCopy2 = [v102 initWithDomain:v108 code:2 userInfo:?];
                    goto LABEL_152;
                  }

                  v295 = 0;
                  selfCopy4 = 0;
LABEL_144:
                  v24 = v308;
                  v41 = v305;
LABEL_234:

                  goto LABEL_235;
                }

                if (errorCopy2)
                {
                  v277 = v8;
                  v96 = v9;
                  selfCopy21 = self;
                  v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v99 = *MEMORY[0x1E698F240];
                  v347 = *MEMORY[0x1E696A578];
                  v295 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endedInIdle"];
                  v348 = v295;
                  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
                  v101 = v98;
                  self = selfCopy21;
                  v9 = v96;
                  v8 = v277;
                  v297 = v100;
                  v298 = 0;
                  selfCopy4 = 0;
                  *errorCopy2 = [v101 initWithDomain:v99 code:2 userInfo:?];
                  goto LABEL_144;
                }

                v298 = 0;
                selfCopy4 = 0;
                v24 = v308;
                v41 = v305;
LABEL_235:

                goto LABEL_236;
              }

              if (errorCopy2)
              {
                v301 = objc_alloc(MEMORY[0x1E696ABC0]);
                v153 = *MEMORY[0x1E698F240];
                v349 = *MEMORY[0x1E696A578];
                selfCopy22 = self;
                v155 = objc_alloc(MEMORY[0x1E696AEC0]);
                v241 = objc_opt_class();
                v156 = v155;
                self = selfCopy22;
                v298 = [v156 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v241, @"endTime"];
                v350 = v298;
                v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
                v157 = [v301 initWithDomain:v153 code:2 userInfo:?];
                v300 = 0;
                selfCopy4 = 0;
                *errorCopy2 = v157;
                v24 = v308;
                v41 = v305;
                goto LABEL_235;
              }

              v300 = 0;
              selfCopy4 = 0;
LABEL_48:
              v24 = v308;
              v41 = v305;
LABEL_236:

              goto LABEL_237;
            }

            if (errorCopy2)
            {
              v58 = objc_alloc(MEMORY[0x1E696ABC0]);
              v276 = v7;
              v59 = v8;
              v60 = v9;
              selfCopy23 = self;
              v62 = *MEMORY[0x1E698F240];
              v351 = *MEMORY[0x1E696A578];
              v300 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"endBatteryTemperature"];
              v352 = v300;
              v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
              v63 = v62;
              self = selfCopy23;
              v9 = v60;
              v8 = v59;
              v7 = v276;
              v64 = [v58 initWithDomain:v63 code:2 userInfo:v16];
              v302 = 0;
              selfCopy4 = 0;
              *errorCopy2 = v64;
              goto LABEL_48;
            }

            v302 = 0;
            selfCopy4 = 0;
LABEL_133:
            v24 = v308;
            v41 = v305;
LABEL_237:

            goto LABEL_238;
          }

          if (errorCopy2)
          {
            v50 = objc_alloc(MEMORY[0x1E696ABC0]);
            v275 = v7;
            v51 = v8;
            v52 = v9;
            selfCopy24 = self;
            v54 = *MEMORY[0x1E698F240];
            v353 = *MEMORY[0x1E696A578];
            v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"CPUTime"];
            v354 = v302;
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
            v56 = v54;
            self = selfCopy24;
            v9 = v52;
            v8 = v51;
            v7 = v275;
            v304 = v55;
            v57 = [v50 initWithDomain:v56 code:2 userInfo:?];
            v306 = 0;
            selfCopy4 = 0;
            *errorCopy2 = v57;
            goto LABEL_133;
          }

          v306 = 0;
          selfCopy4 = 0;
          v24 = v308;
          v41 = v305;
LABEL_238:

          goto LABEL_239;
        }

        if (error)
        {
          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v274 = v7;
          v43 = v8;
          v44 = v9;
          selfCopy25 = self;
          v46 = *MEMORY[0x1E698F240];
          v355 = *MEMORY[0x1E696A578];
          v306 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"CPUAwakeTime"];
          v356 = v306;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
          v48 = v46;
          self = selfCopy25;
          v9 = v44;
          v8 = v43;
          v7 = v274;
          v307 = v47;
          v49 = [v42 initWithDomain:v48 code:2 userInfo:?];
          v41 = 0;
          selfCopy4 = 0;
          *error = v49;
          v24 = v308;
          goto LABEL_238;
        }

        v41 = 0;
        selfCopy4 = 0;
        v24 = v308;
LABEL_239:

        goto LABEL_240;
      }

      if (error)
      {
        v310 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy26 = self;
        v33 = *MEMORY[0x1E698F240];
        v357 = *MEMORY[0x1E696A578];
        v34 = v9;
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v240 = objc_opt_class();
        v36 = v35;
        v9 = v34;
        v37 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v240, @"completed"];
        v358 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
        v39 = v310;
        v40 = v33;
        self = selfCopy26;
        v41 = v37;
        v309 = v38;
        v24 = 0;
        selfCopy4 = 0;
        *error = [v39 initWithDomain:v40 code:2 userInfo:?];
        goto LABEL_239;
      }

      v24 = 0;
      selfCopy4 = 0;
LABEL_240:

      goto LABEL_241;
    }

    if (error)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy27 = self;
      v23 = *MEMORY[0x1E698F240];
      v359 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityname"];
      v360 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
      v26 = v23;
      self = selfCopy27;
      v9 = v25;
      v27 = [v21 initWithDomain:v26 code:2 userInfo:?];
      v311 = 0;
      selfCopy4 = 0;
      *error = v27;
      goto LABEL_240;
    }

    v311 = 0;
    selfCopy4 = 0;
LABEL_241:

    goto LABEL_242;
  }

  if (error)
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E698F240];
    v361 = *MEMORY[0x1E696A578];
    v311 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v362[0] = v311;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v362 forKeys:&v361 count:1];
    v19 = [v17 initWithDomain:v18 code:2 userInfo:v8];
    v312 = 0;
    selfCopy4 = 0;
    *error = v19;
    goto LABEL_241;
  }

  v312 = 0;
  selfCopy4 = 0;
LABEL_242:

  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMActivitySchedulerActivityProfile *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_activityname)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasCompleted)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasCPUAwakeTime)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasCPUTime)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasEndBatteryTemperature)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasRaw_endTime)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasEndedInIdle)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasEndedOnBattery)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasNetworkProfSuccess)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasQosBackground)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasQosLegacy)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasQosUserInit)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasRunTime)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasRusageProfSuccess)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasServicedEnergy)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasSessionProfSuccess)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasStartBatteryTemperature)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasRaw_startTime)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasStartedInIdle)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasStartedOnBattery)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasVersion)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasWifiDown)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasWifiUp)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasDirtyMemoryDelta)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v147.receiver = self;
  v147.super_class = BMActivitySchedulerActivityProfile;
  v5 = [(BMEventBase *)&v147 init];
  if (!v5)
  {
LABEL_254:
    v145 = v5;
    goto LABEL_255;
  }

  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v148) = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (LOBYTE(v148) & 0x7F) << v7;
      if ((LOBYTE(v148) & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = PBReaderReadString();
        v16 = 120;
        goto LABEL_102;
      case 2u:
        v15 = PBReaderReadString();
        v16 = 128;
LABEL_102:
        v77 = *(&v5->super.super.isa + v16);
        *(&v5->super.super.isa + v16) = v15;

        continue;
      case 3u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v5->_hasCompleted = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v54 = [fromCopy position] + 1;
          if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v53 |= (LOBYTE(v148) & 0x7F) << v51;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v13 = v52++ >= 9;
          if (v13)
          {
            LOBYTE(v57) = 0;
            goto LABEL_200;
          }
        }

        v57 = (v53 != 0) & ~[fromCopy hasError];
LABEL_200:
        v5->_completed = v57;
        continue;
      case 4u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v5->_hasCPUAwakeTime = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v67 = [fromCopy position] + 1;
          if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v66 |= (LOBYTE(v148) & 0x7F) << v64;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v13 = v65++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_208;
          }
        }

        if ([fromCopy hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v66;
        }

LABEL_208:
        v137 = 84;
        goto LABEL_237;
      case 5u:
        v5->_hasCPUTime = 1;
        v148 = 0.0;
        v33 = [fromCopy position] + 8;
        if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 8, v34 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_CPUTime = v148;
        continue;
      case 6u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v5->_hasEndBatteryTemperature = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v94 = [fromCopy position] + 1;
          if (v94 >= [fromCopy position] && (v95 = objc_msgSend(fromCopy, "position") + 1, v95 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v93 |= (LOBYTE(v148) & 0x7F) << v91;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v13 = v92++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_220;
          }
        }

        if ([fromCopy hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v93;
        }

LABEL_220:
        v137 = 88;
        goto LABEL_237;
      case 7u:
        v5->_hasRaw_endTime = 1;
        v148 = 0.0;
        v105 = [fromCopy position] + 8;
        if (v105 >= [fromCopy position] && (v106 = objc_msgSend(fromCopy, "position") + 8, v106 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_endTime = v148;
        continue;
      case 8u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasEndedInIdle = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v73 = [fromCopy position] + 1;
          if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v72 |= (LOBYTE(v148) & 0x7F) << v70;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v13 = v71++ >= 9;
          if (v13)
          {
            LOBYTE(v76) = 0;
            goto LABEL_210;
          }
        }

        v76 = (v72 != 0) & ~[fromCopy hasError];
LABEL_210:
        v5->_endedInIdle = v76;
        continue;
      case 9u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v5->_hasEndedOnBattery = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v114 = [fromCopy position] + 1;
          if (v114 >= [fromCopy position] && (v115 = objc_msgSend(fromCopy, "position") + 1, v115 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v113 |= (LOBYTE(v148) & 0x7F) << v111;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v13 = v112++ >= 9;
          if (v13)
          {
            LOBYTE(v117) = 0;
            goto LABEL_226;
          }
        }

        v117 = (v113 != 0) & ~[fromCopy hasError];
LABEL_226:
        v5->_endedOnBattery = v117;
        continue;
      case 0xAu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasNetworkProfSuccess = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v40 = [fromCopy position] + 1;
          if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v39 |= (LOBYTE(v148) & 0x7F) << v37;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v13 = v38++ >= 9;
          if (v13)
          {
            LOBYTE(v43) = 0;
            goto LABEL_194;
          }
        }

        v43 = (v39 != 0) & ~[fromCopy hasError];
LABEL_194:
        v5->_networkProfSuccess = v43;
        continue;
      case 0xBu:
        v5->_hasQosBackground = 1;
        v148 = 0.0;
        v109 = [fromCopy position] + 8;
        if (v109 >= [fromCopy position] && (v110 = objc_msgSend(fromCopy, "position") + 8, v110 <= objc_msgSend(fromCopy, "length")))
        {
          data10 = [fromCopy data];
          [data10 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_qosBackground = v148;
        continue;
      case 0xCu:
        v5->_hasQosLegacy = 1;
        v148 = 0.0;
        v31 = [fromCopy position] + 8;
        if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 8, v32 <= objc_msgSend(fromCopy, "length")))
        {
          data11 = [fromCopy data];
          [data11 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_qosLegacy = v148;
        continue;
      case 0xDu:
        v5->_hasQosUserInit = 1;
        v148 = 0.0;
        v35 = [fromCopy position] + 8;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data12 = [fromCopy data];
          [data12 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_qosUserInit = v148;
        continue;
      case 0xEu:
        v5->_hasRunTime = 1;
        v148 = 0.0;
        v103 = [fromCopy position] + 8;
        if (v103 >= [fromCopy position] && (v104 = objc_msgSend(fromCopy, "position") + 8, v104 <= objc_msgSend(fromCopy, "length")))
        {
          data13 = [fromCopy data];
          [data13 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_runTime = v148;
        continue;
      case 0xFu:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasRusageProfSuccess = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v26 |= (LOBYTE(v148) & 0x7F) << v24;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            LOBYTE(v30) = 0;
            goto LABEL_192;
          }
        }

        v30 = (v26 != 0) & ~[fromCopy hasError];
LABEL_192:
        v5->_rusageProfSuccess = v30;
        continue;
      case 0x10u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v5->_hasServicedEnergy = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v61 = [fromCopy position] + 1;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v60 |= (LOBYTE(v148) & 0x7F) << v58;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v13 = v59++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_204;
          }
        }

        if ([fromCopy hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v60;
        }

LABEL_204:
        v137 = 92;
        goto LABEL_237;
      case 0x11u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasSessionProfSuccess = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (LOBYTE(v148) & 0x7F) << v17;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_190;
          }
        }

        v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_190:
        v5->_sessionProfSuccess = v23;
        continue;
      case 0x12u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v5->_hasStartBatteryTemperature = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v81 = [fromCopy position] + 1;
          if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v80 |= (LOBYTE(v148) & 0x7F) << v78;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v13 = v79++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_214;
          }
        }

        if ([fromCopy hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v80;
        }

LABEL_214:
        v137 = 96;
        goto LABEL_237;
      case 0x13u:
        v5->_hasRaw_startTime = 1;
        v148 = 0.0;
        v107 = [fromCopy position] + 8;
        if (v107 >= [fromCopy position] && (v108 = objc_msgSend(fromCopy, "position") + 8, v108 <= objc_msgSend(fromCopy, "length")))
        {
          data18 = [fromCopy data];
          [data18 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_startTime = v148;
        continue;
      case 0x14u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v5->_hasStartedInIdle = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v127 = [fromCopy position] + 1;
          if (v127 >= [fromCopy position] && (v128 = objc_msgSend(fromCopy, "position") + 1, v128 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v126 |= (LOBYTE(v148) & 0x7F) << v124;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v13 = v125++ >= 9;
          if (v13)
          {
            LOBYTE(v130) = 0;
            goto LABEL_232;
          }
        }

        v130 = (v126 != 0) & ~[fromCopy hasError];
LABEL_232:
        v5->_startedInIdle = v130;
        continue;
      case 0x15u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasStartedOnBattery = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v87 = [fromCopy position] + 1;
          if (v87 >= [fromCopy position] && (v88 = objc_msgSend(fromCopy, "position") + 1, v88 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v86 |= (LOBYTE(v148) & 0x7F) << v84;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v13 = v85++ >= 9;
          if (v13)
          {
            LOBYTE(v90) = 0;
            goto LABEL_216;
          }
        }

        v90 = (v86 != 0) & ~[fromCopy hasError];
LABEL_216:
        v5->_startedOnBattery = v90;
        continue;
      case 0x16u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        v5->_hasVersion = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v100 = [fromCopy position] + 1;
          if (v100 >= [fromCopy position] && (v101 = objc_msgSend(fromCopy, "position") + 1, v101 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v99 |= (LOBYTE(v148) & 0x7F) << v97;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v13 = v98++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_224;
          }
        }

        if ([fromCopy hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v99;
        }

LABEL_224:
        v137 = 100;
        goto LABEL_237;
      case 0x17u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v5->_hasWifiDown = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v121 = [fromCopy position] + 1;
          if (v121 >= [fromCopy position] && (v122 = objc_msgSend(fromCopy, "position") + 1, v122 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v120 |= (LOBYTE(v148) & 0x7F) << v118;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v13 = v119++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_230;
          }
        }

        if ([fromCopy hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v120;
        }

LABEL_230:
        v137 = 104;
        goto LABEL_237;
      case 0x18u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v5->_hasWifiUp = 1;
        while (1)
        {
          LOBYTE(v148) = 0;
          v134 = [fromCopy position] + 1;
          if (v134 >= [fromCopy position] && (v135 = objc_msgSend(fromCopy, "position") + 1, v135 <= objc_msgSend(fromCopy, "length")))
          {
            data23 = [fromCopy data];
            [data23 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v133 |= (LOBYTE(v148) & 0x7F) << v131;
          if ((LOBYTE(v148) & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v13 = v132++ >= 9;
          if (v13)
          {
            v50 = 0;
            goto LABEL_236;
          }
        }

        if ([fromCopy hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v133;
        }

LABEL_236:
        v137 = 108;
        goto LABEL_237;
      case 0x19u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasDirtyMemoryDelta = 1;
        break;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_253;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v148) = 0;
      v47 = [fromCopy position] + 1;
      if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
      {
        data24 = [fromCopy data];
        [data24 getBytes:&v148 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v46 |= (LOBYTE(v148) & 0x7F) << v44;
      if ((LOBYTE(v148) & 0x80) == 0)
      {
        break;
      }

      v44 += 7;
      v13 = v45++ >= 9;
      if (v13)
      {
        v50 = 0;
        goto LABEL_198;
      }
    }

    if ([fromCopy hasError])
    {
      v50 = 0;
    }

    else
    {
      v50 = v46;
    }

LABEL_198:
    v137 = 112;
LABEL_237:
    *(&v5->super.super.isa + v137) = v50;
  }

  if (([fromCopy hasError] & 1) == 0)
  {
    goto LABEL_254;
  }

LABEL_253:
  v145 = 0;
LABEL_255:

  return v145;
}

- (NSString)description
{
  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMActivitySchedulerActivityProfile *)self bundleID];
  activityname = [(BMActivitySchedulerActivityProfile *)self activityname];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile completed](self, "completed")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile CPUAwakeTime](self, "CPUAwakeTime")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self CPUTime];
  v31 = [v3 numberWithDouble:?];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile endBatteryTemperature](self, "endBatteryTemperature")}];
  endTime = [(BMActivitySchedulerActivityProfile *)self endTime];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedInIdle](self, "endedInIdle")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile endedOnBattery](self, "endedOnBattery")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile networkProfSuccess](self, "networkProfSuccess")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self qosBackground];
  v26 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self qosLegacy];
  v21 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self qosUserInit];
  v25 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMActivitySchedulerActivityProfile *)self runTime];
  v20 = [v7 numberWithDouble:?];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile rusageProfSuccess](self, "rusageProfSuccess")}];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile servicedEnergy](self, "servicedEnergy")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile sessionProfSuccess](self, "sessionProfSuccess")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile startBatteryTemperature](self, "startBatteryTemperature")}];
  startTime = [(BMActivitySchedulerActivityProfile *)self startTime];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedInIdle](self, "startedInIdle")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMActivitySchedulerActivityProfile startedOnBattery](self, "startedOnBattery")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile version](self, "version")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiDown](self, "wifiDown")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile wifiUp](self, "wifiUp")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerActivityProfile dirtyMemoryDelta](self, "dirtyMemoryDelta")}];
  v24 = [v23 initWithFormat:@"BMActivitySchedulerActivityProfile with bundleID: %@, activityname: %@, completed: %@, CPUAwakeTime: %@, CPUTime: %@, endBatteryTemperature: %@, endTime: %@, endedInIdle: %@, endedOnBattery: %@, networkProfSuccess: %@, qosBackground: %@, qosLegacy: %@, qosUserInit: %@, runTime: %@, rusageProfSuccess: %@, servicedEnergy: %@, sessionProfSuccess: %@, startBatteryTemperature: %@, startTime: %@, startedInIdle: %@, startedOnBattery: %@, version: %@, wifiDown: %@, wifiUp: %@, dirtyMemoryDelta: %@", bundleID, activityname, v33, v32, v31, v29, endTime, v27, v22, v30, v26, v21, v25, v20, v17, v19, v18, v16, startTime, v14, v8, v9, v10, v11, v12];

  return v24;
}

- (BMActivitySchedulerActivityProfile)initWithBundleID:(id)d activityname:(id)activityname completed:(id)completed CPUAwakeTime:(id)time CPUTime:(id)uTime endBatteryTemperature:(id)temperature endTime:(id)endTime endedInIdle:(id)self0 endedOnBattery:(id)self1 networkProfSuccess:(id)self2 qosBackground:(id)self3 qosLegacy:(id)self4 qosUserInit:(id)self5 runTime:(id)self6 rusageProfSuccess:(id)self7 servicedEnergy:(id)self8 sessionProfSuccess:(id)self9 startBatteryTemperature:(id)batteryTemperature startTime:(id)startTime startedInIdle:(id)inIdle startedOnBattery:(id)onBattery version:(id)version wifiDown:(id)down wifiUp:(id)up dirtyMemoryDelta:(id)delta
{
  dCopy = d;
  activitynameCopy = activityname;
  activitynameCopy2 = activityname;
  completedCopy = completed;
  timeCopy = time;
  uTimeCopy = uTime;
  temperatureCopy = temperature;
  endTimeCopy = endTime;
  idleCopy = idle;
  batteryCopy = battery;
  successCopy = success;
  backgroundCopy = background;
  legacyCopy = legacy;
  initCopy = init;
  runTimeCopy = runTime;
  profSuccessCopy = profSuccess;
  energyCopy = energy;
  sessionProfSuccessCopy = sessionProfSuccess;
  batteryTemperatureCopy = batteryTemperature;
  startTimeCopy = startTime;
  inIdleCopy = inIdle;
  onBatteryCopy = onBattery;
  versionCopy = version;
  downCopy = down;
  upCopy = up;
  deltaCopy = delta;
  v77.receiver = self;
  v77.super_class = BMActivitySchedulerActivityProfile;
  v41 = [(BMEventBase *)&v77 init];
  if (v41)
  {
    v41->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v41->_bundleID, d);
    objc_storeStrong(&v41->_activityname, activitynameCopy);
    if (completedCopy)
    {
      v41->_hasCompleted = 1;
      v41->_completed = [completedCopy BOOLValue];
    }

    else
    {
      v41->_hasCompleted = 0;
      v41->_completed = 0;
    }

    if (timeCopy)
    {
      v41->_hasCPUAwakeTime = 1;
      intValue = [timeCopy intValue];
    }

    else
    {
      v41->_hasCPUAwakeTime = 0;
      intValue = -1;
    }

    v41->_CPUAwakeTime = intValue;
    if (uTimeCopy)
    {
      v41->_hasCPUTime = 1;
      [uTimeCopy doubleValue];
    }

    else
    {
      v41->_hasCPUTime = 0;
      v43 = -1.0;
    }

    v41->_CPUTime = v43;
    if (temperatureCopy)
    {
      v41->_hasEndBatteryTemperature = 1;
      intValue2 = [temperatureCopy intValue];
    }

    else
    {
      v41->_hasEndBatteryTemperature = 0;
      intValue2 = -1;
    }

    v41->_endBatteryTemperature = intValue2;
    if (endTimeCopy)
    {
      v41->_hasRaw_endTime = 1;
      [endTimeCopy timeIntervalSince1970];
    }

    else
    {
      v41->_hasRaw_endTime = 0;
      v45 = -1.0;
    }

    v41->_raw_endTime = v45;
    if (idleCopy)
    {
      v41->_hasEndedInIdle = 1;
      v41->_endedInIdle = [idleCopy BOOLValue];
    }

    else
    {
      v41->_hasEndedInIdle = 0;
      v41->_endedInIdle = 0;
    }

    if (batteryCopy)
    {
      v41->_hasEndedOnBattery = 1;
      v41->_endedOnBattery = [batteryCopy BOOLValue];
    }

    else
    {
      v41->_hasEndedOnBattery = 0;
      v41->_endedOnBattery = 0;
    }

    if (successCopy)
    {
      v41->_hasNetworkProfSuccess = 1;
      v41->_networkProfSuccess = [successCopy BOOLValue];
    }

    else
    {
      v41->_hasNetworkProfSuccess = 0;
      v41->_networkProfSuccess = 0;
    }

    if (backgroundCopy)
    {
      v41->_hasQosBackground = 1;
      [backgroundCopy doubleValue];
    }

    else
    {
      v41->_hasQosBackground = 0;
      v46 = -1.0;
    }

    v41->_qosBackground = v46;
    if (legacyCopy)
    {
      v41->_hasQosLegacy = 1;
      [legacyCopy doubleValue];
    }

    else
    {
      v41->_hasQosLegacy = 0;
      v47 = -1.0;
    }

    v41->_qosLegacy = v47;
    if (initCopy)
    {
      v41->_hasQosUserInit = 1;
      [initCopy doubleValue];
    }

    else
    {
      v41->_hasQosUserInit = 0;
      v48 = -1.0;
    }

    v41->_qosUserInit = v48;
    if (runTimeCopy)
    {
      v41->_hasRunTime = 1;
      [runTimeCopy doubleValue];
    }

    else
    {
      v41->_hasRunTime = 0;
      v49 = -1.0;
    }

    v41->_runTime = v49;
    if (profSuccessCopy)
    {
      v41->_hasRusageProfSuccess = 1;
      v41->_rusageProfSuccess = [profSuccessCopy BOOLValue];
    }

    else
    {
      v41->_hasRusageProfSuccess = 0;
      v41->_rusageProfSuccess = 0;
    }

    if (energyCopy)
    {
      v41->_hasServicedEnergy = 1;
      intValue3 = [energyCopy intValue];
    }

    else
    {
      v41->_hasServicedEnergy = 0;
      intValue3 = -1;
    }

    v41->_servicedEnergy = intValue3;
    if (sessionProfSuccessCopy)
    {
      v41->_hasSessionProfSuccess = 1;
      v41->_sessionProfSuccess = [sessionProfSuccessCopy BOOLValue];
    }

    else
    {
      v41->_hasSessionProfSuccess = 0;
      v41->_sessionProfSuccess = 0;
    }

    if (batteryTemperatureCopy)
    {
      v41->_hasStartBatteryTemperature = 1;
      intValue4 = [batteryTemperatureCopy intValue];
    }

    else
    {
      v41->_hasStartBatteryTemperature = 0;
      intValue4 = -1;
    }

    v41->_startBatteryTemperature = intValue4;
    if (startTimeCopy)
    {
      v41->_hasRaw_startTime = 1;
      [startTimeCopy timeIntervalSince1970];
    }

    else
    {
      v41->_hasRaw_startTime = 0;
      v52 = -1.0;
    }

    v41->_raw_startTime = v52;
    if (inIdleCopy)
    {
      v41->_hasStartedInIdle = 1;
      v41->_startedInIdle = [inIdleCopy BOOLValue];
    }

    else
    {
      v41->_hasStartedInIdle = 0;
      v41->_startedInIdle = 0;
    }

    if (onBatteryCopy)
    {
      v41->_hasStartedOnBattery = 1;
      v41->_startedOnBattery = [onBatteryCopy BOOLValue];
    }

    else
    {
      v41->_hasStartedOnBattery = 0;
      v41->_startedOnBattery = 0;
    }

    if (versionCopy)
    {
      v41->_hasVersion = 1;
      intValue5 = [versionCopy intValue];
    }

    else
    {
      v41->_hasVersion = 0;
      intValue5 = -1;
    }

    v41->_version = intValue5;
    if (downCopy)
    {
      v41->_hasWifiDown = 1;
      intValue6 = [downCopy intValue];
    }

    else
    {
      v41->_hasWifiDown = 0;
      intValue6 = -1;
    }

    v41->_wifiDown = intValue6;
    if (upCopy)
    {
      v41->_hasWifiUp = 1;
      intValue7 = [upCopy intValue];
    }

    else
    {
      v41->_hasWifiUp = 0;
      intValue7 = -1;
    }

    v41->_wifiUp = intValue7;
    if (deltaCopy)
    {
      v41->_hasDirtyMemoryDelta = 1;
      intValue8 = [deltaCopy intValue];
    }

    else
    {
      v41->_hasDirtyMemoryDelta = 0;
      intValue8 = -1;
    }

    v41->_dirtyMemoryDelta = intValue8;
  }

  return v41;
}

+ (id)protoFields
{
  v29[25] = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v29[0] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityname" number:2 type:13 subMessageClass:0];
  v29[1] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completed" number:3 type:12 subMessageClass:0];
  v29[2] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"CPUAwakeTime" number:4 type:2 subMessageClass:0];
  v29[3] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"CPUTime" number:5 type:0 subMessageClass:0];
  v29[4] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endBatteryTemperature" number:6 type:2 subMessageClass:0];
  v29[5] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endTime" number:7 type:0 subMessageClass:0];
  v29[6] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endedInIdle" number:8 type:12 subMessageClass:0];
  v29[7] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endedOnBattery" number:9 type:12 subMessageClass:0];
  v29[8] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"networkProfSuccess" number:10 type:12 subMessageClass:0];
  v29[9] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosBackground" number:11 type:0 subMessageClass:0];
  v29[10] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosLegacy" number:12 type:0 subMessageClass:0];
  v29[11] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosUserInit" number:13 type:0 subMessageClass:0];
  v29[12] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"runTime" number:14 type:0 subMessageClass:0];
  v29[13] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rusageProfSuccess" number:15 type:12 subMessageClass:0];
  v29[14] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"servicedEnergy" number:16 type:2 subMessageClass:0];
  v29[15] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionProfSuccess" number:17 type:12 subMessageClass:0];
  v29[16] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startBatteryTemperature" number:18 type:2 subMessageClass:0];
  v29[17] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTime" number:19 type:0 subMessageClass:0];
  v29[18] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startedInIdle" number:20 type:12 subMessageClass:0];
  v29[19] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startedOnBattery" number:21 type:12 subMessageClass:0];
  v29[20] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:22 type:2 subMessageClass:0];
  v29[21] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wifiDown" number:23 type:2 subMessageClass:0];
  v29[22] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wifiUp" number:24 type:2 subMessageClass:0];
  v29[23] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dirtyMemoryDelta" number:25 type:2 subMessageClass:0];
  v29[24] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:25];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMActivitySchedulerActivityProfile alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[20] = 0;
    }
  }

  return v4;
}

@end