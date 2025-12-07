@interface ENExposureCalculationSession
- ($6B14AE857B43CEDA041F2BA42EED81B6)scanInstanceFromAdvertisement:(SEL)advertisement key:(id)key;
- (BOOL)_shouldMatchKey:(id)key;
- (ENExposureCalculationSession)initWithAttenuationThreshold:(unsigned __int8)threshold capacity:(unsigned int)capacity;
- (id)attenuationDurationMapDataForExposureWindows:(id)windows;
- (id)cachedExposuresDifferentialPrivacyRiskParameters;
- (id)exposureInfoForExposureWindows:(id)windows key:(id)key;
- (id)exposureInfoForMatchedAdvertisements:(id)advertisements key:(id)key;
- (id)exposureInfosForEachExposureWindow:(id)window key:(id)key;
- (id)exposureWindowsForMatchedAdvertisements:(id)advertisements key:(id)key options:(int64_t)options;
- (id)filterAdvertisements:(id)advertisements fromKey:(id)key;
- (id)groupExposureWindowsByDay:(id)day;
- (id)groupExposureWindowsByInfectiousness:(id)infectiousness;
- (unsigned)weightedAttenuationValueForDurations:(unsigned int *)durations;
- (void)dealloc;
- (void)enumerateCachedExposureInfo:(id)info inRange:(_NSRange)range withBatchSize:(unsigned int)size;
- (void)enumerateCachedExposureWindows:(id)windows inRange:(_NSRange)range withBatchSize:(unsigned int)size options:(int64_t)options;
- (void)setExposureConfiguration:(id)configuration;
@end

@implementation ENExposureCalculationSession

- (ENExposureCalculationSession)initWithAttenuationThreshold:(unsigned __int8)threshold capacity:(unsigned int)capacity
{
  v16.receiver = self;
  v16.super_class = ENExposureCalculationSession;
  v5 = [(ENExposureCalculationSession *)&v16 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  if (capacity >= 0xDF638)
  {
    capacityCopy = 915000;
  }

  else
  {
    capacityCopy = capacity;
  }

  v5->_scanInstanceBufferSize = capacityCopy;
  v8 = os_transaction_create();
  transaction = v6->_transaction;
  v6->_transaction = v8;

  v6->_cachedExposureWindowMetadataCount = 0;
  v10 = malloc_type_calloc(v6->_scanInstanceBufferSize, 0x18uLL, 0x100004034E20058uLL);
  v6->_exposureWindowMetadataBuffer = v10;
  if (!v10)
  {
    if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession initWithAttenuationThreshold:capacity:];
    }

    goto LABEL_16;
  }

  v6->_cachedExposureWindowCount = 0;
  v11 = malloc_type_calloc(v6->_scanInstanceBufferSize, 0x10uLL, 0x1000040451B5BE8uLL);
  v6->_scanInstanceBuffer = v11;
  if (!v11)
  {
    if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession initWithAttenuationThreshold:capacity:];
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  *v6->_attenuationDurationThresholds = -47566;
  allowedRPIBroadcastDuration = v6->_allowedRPIBroadcastDuration;
  v6->_allowedRPIBroadcastDuration = &unk_285D6E570;

  advertisementSampleCountThreshold = v6->_advertisementSampleCountThreshold;
  v6->_advertisementSampleCountThreshold = &unk_285D6E4E0;

LABEL_8:
  v14 = v6;
LABEL_17:

  return v14;
}

- (void)dealloc
{
  v1 = *(self + 32);
  v2 = *(self + 48);
  v4 = [*(self + 64) description];
  v3 = v4;
  LogPrintF_safe(&gLogCategory_ENExposureCalculationSession, "-[ENExposureCalculationSession dealloc]", 50, "exposure calculation session complete. exposureWindowMetadataCount:%d scanInstanceCount:%d configuration:%s", v1, v2, [v4 UTF8String]);
}

- (void)setExposureConfiguration:(id)configuration
{
  v4 = [configuration copy];
  exposureConfiguration = self->_exposureConfiguration;
  self->_exposureConfiguration = v4;

  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v6 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
  {
    [ENExposureCalculationSession setExposureConfiguration:?];
  }

  attenuationDurationThresholds = [(ENExposureConfiguration *)self->_exposureConfiguration attenuationDurationThresholds];
  v8 = [attenuationDurationThresholds count];
  if ((v8 & 0xFE) == 2)
  {
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed2 = [v9 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed2 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession setExposureConfiguration:attenuationDurationThresholds];
    }

    v11 = v8;
    v12 = attenuationDurationThresholds;
    if (v8)
    {
      v13 = 0;
      attenuationDurationThresholds = self->_attenuationDurationThresholds;
      do
      {
        v15 = [v12 objectAtIndex:v13];
        unsignedIntValue = [v15 unsignedIntValue];

        v12 = attenuationDurationThresholds;
        attenuationDurationThresholds[v13++] = unsignedIntValue;
      }

      while (v11 != v13);
    }
  }

  else
  {
    v12 = attenuationDurationThresholds;
    if (gLogCategory__ENExposureCalculationSession <= 90)
    {
      if (gLogCategory__ENExposureCalculationSession != -1 || (v17 = _LogCategory_Initialize(), v12 = attenuationDurationThresholds, v17))
      {
        [ENExposureCalculationSession setExposureConfiguration:v8];
        v12 = attenuationDurationThresholds;
      }
    }
  }
}

- (unsigned)weightedAttenuationValueForDurations:(unsigned int *)durations
{
  attenuationLevelValues = [(ENExposureConfiguration *)self->_exposureConfiguration attenuationLevelValues];
  if ([attenuationLevelValues count] == 8)
  {
    v5 = attenuationLevelValues;
  }

  else
  {
    if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession weightedAttenuationValueForDurations:attenuationLevelValues];
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v6 = 8;
    do
    {
      [v5 addObject:&unk_285D6E580];
      --v6;
    }

    while (v6);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  do
  {
    v10 = durations[v7];
    v11 = [v5 objectAtIndexedSubscript:v7];
    [v11 doubleValue];
    v13 = v12 * v10;

    if (v13 == 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    v8 += v14;
    if (v13 != 0.0)
    {
      v9 = v9 + v13;
    }

    ++v7;
  }

  while (v7 != 8);
  if (v8)
  {
    v9 = round(v9 / v8);
  }

  v15 = 255.0;
  if (v9 <= 255.0)
  {
    v15 = v9;
  }

  v16 = v15;

  return v16;
}

- (id)exposureInfoForExposureWindows:(id)windows key:(id)key
{
  v50[2] = *MEMORY[0x277D85DE8];
  windowsCopy = windows;
  keyCopy = key;
  v50[0] = 0;
  v50[1] = 0;
  memset(v49, 0, sizeof(v49));
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = windowsCopy;
  v37 = [windowsCopy countByEnumeratingWithState:&v43 objects:v48 count:16];
  selfCopy = self;
  v8 = 0;
  if (v37)
  {
    v36 = *v44;
    attenuationDurationThresholds = self->_attenuationDurationThresholds;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(windowsCopy);
        }

        v38 = v10;
        v11 = *(*(&v43 + 1) + 8 * v10);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        scanInstances = [v11 scanInstances];
        v13 = [scanInstances countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v40;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v40 != v15)
              {
                objc_enumerationMutation(scanInstances);
              }

              v17 = *(*(&v39 + 1) + 8 * i);
              secondsSinceLastScan = [v17 secondsSinceLastScan];
              v8 += secondsSinceLastScan;
              typicalAttenuation = [v17 typicalAttenuation];
              v20 = 0;
              while (typicalAttenuation > attenuationDurationThresholds[v20])
              {
                if (++v20 == 4)
                {
                  goto LABEL_16;
                }
              }

              *(v50 + v20) += secondsSinceLastScan;
LABEL_16:
              v21 = &byte_24A28BFB8;
              v22 = 28;
              while (1)
              {
                v23 = *v21++;
                if (typicalAttenuation <= v23)
                {
                  break;
                }

                v22 -= 4;
                if (v22 == -4)
                {
                  goto LABEL_21;
                }
              }

              *(v49 + v22) += secondsSinceLastScan;
LABEL_21:
              ;
            }

            v14 = [scanInstances countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v14);
        }

        v10 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [windowsCopy countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v37);
  }

  selfCopy = [(ENExposureCalculationSession *)selfCopy weightedAttenuationValueForDurations:v49, selfCopy];
  v25 = objc_alloc_init(MEMORY[0x277CBEB10]);
  for (j = 0; j != 16; j += 4)
  {
    if (*(v50 + j) >= 0xFFFFu)
    {
      v27 = 0xFFFF;
    }

    else
    {
      v27 = *(v50 + j);
    }

    *(v50 + j) = v27;
    v28 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
    [v25 addObject:v28];
  }

  if (v8 >= 0xFFFF)
  {
    v29 = 0xFFFF;
  }

  else
  {
    v29 = v8;
  }

  rollingStartNumber = [keyCopy rollingStartNumber];
  v31 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:(86400 * (600 * rollingStartNumber / 0x15180u))];
  v32 = objc_alloc_init(MEMORY[0x277CC5C60]);
  [v32 setDate:v31];
  [v32 setAttenuationValue:selfCopy];
  [v32 setDuration:v29];
  [v32 setAttenuationDurations:v25];
  [v32 setTransmissionRiskLevel:{objc_msgSend(keyCopy, "transmissionRiskLevel")}];
  [v32 setDiagnosisReportType:{objc_msgSend(keyCopy, "diagnosisReportType")}];
  [v32 setDaysSinceOnsetOfSymptoms:{objc_msgSend(keyCopy, "daysSinceOnsetOfSymptoms")}];

  return v32;
}

- (id)exposureInfosForEachExposureWindow:(id)window key:(id)key
{
  v54 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  keyCopy = key;
  v37 = [MEMORY[0x277CBEB10] arrayWithCapacity:{objc_msgSend(windowCopy, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = windowCopy;
  v39 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v39)
  {
    v35 = *v47;
    do
    {
      v6 = 0;
      do
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v46 + 1) + 8 * v6);
        v52[0] = 0;
        v52[1] = 0;
        memset(v51, 0, sizeof(v51));
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v40 = v7;
        v41 = v6;
        scanInstances = [v7 scanInstances];
        v9 = [scanInstances countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v43;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v43 != v12)
              {
                objc_enumerationMutation(scanInstances);
              }

              v14 = *(*(&v42 + 1) + 8 * i);
              secondsSinceLastScan = [v14 secondsSinceLastScan];
              v11 += secondsSinceLastScan;
              typicalAttenuation = [v14 typicalAttenuation];
              v17 = 0;
              while (typicalAttenuation > self->_attenuationDurationThresholds[v17])
              {
                if (++v17 == 4)
                {
                  goto LABEL_16;
                }
              }

              *(v52 + v17) += secondsSinceLastScan;
LABEL_16:
              v18 = &byte_24A28BFB8;
              v19 = 28;
              while (1)
              {
                v20 = *v18++;
                if (typicalAttenuation <= v20)
                {
                  break;
                }

                v19 -= 4;
                if (v19 == -4)
                {
                  goto LABEL_21;
                }
              }

              *(v51 + v19) += secondsSinceLastScan;
LABEL_21:
              ;
            }

            v10 = [scanInstances countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        v21 = [(ENExposureCalculationSession *)self weightedAttenuationValueForDurations:v51];
        v22 = objc_alloc_init(MEMORY[0x277CBEB10]);
        for (j = 0; j != 16; j += 4)
        {
          if (*(v52 + j) >= 0xFFFFu)
          {
            v24 = 0xFFFF;
          }

          else
          {
            v24 = *(v52 + j);
          }

          *(v52 + j) = v24;
          v25 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
          [v22 addObject:v25];
        }

        if (v11 >= 0xFFFF)
        {
          v26 = 0xFFFF;
        }

        else
        {
          v26 = v11;
        }

        rollingStartNumber = [keyCopy rollingStartNumber];
        v28 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSince1970:(86400 * (600 * rollingStartNumber / 0x15180u))];
        v29 = objc_alloc_init(MEMORY[0x277CC5C60]);
        [v29 setDate:v28];
        [v29 setAttenuationValue:v21];
        [v29 setDuration:v26];
        [v29 setAttenuationDurations:v22];
        [v29 setTransmissionRiskLevel:{objc_msgSend(keyCopy, "transmissionRiskLevel")}];
        [v29 setDiagnosisReportType:{objc_msgSend(keyCopy, "diagnosisReportType")}];
        [v29 setDaysSinceOnsetOfSymptoms:{objc_msgSend(keyCopy, "daysSinceOnsetOfSymptoms")}];
        v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v30 isSensitiveLoggingAllowed];

        if ((isSensitiveLoggingAllowed & 1) != 0 && gLogCategory_ENExposureCalculationSession <= 10 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory_ENExposureCalculationSession, "[ENExposureCalculationSession exposureInfosForEachExposureWindow:key:]", 10, "Adding this exposure window: %@ to info: %@", v40, v29);
        }

        [v37 addObject:v29];

        v6 = v41 + 1;
      }

      while (v41 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v39);
  }

  v32 = [v37 copy];

  return v32;
}

- (id)exposureInfoForMatchedAdvertisements:(id)advertisements key:(id)key
{
  keyCopy = key;
  v7 = [(ENExposureCalculationSession *)self exposureWindowsForMatchedAdvertisements:advertisements key:keyCopy options:1];
  if (v7)
  {
    v8 = [(ENExposureCalculationSession *)self exposureInfoForExposureWindows:v7 key:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enumerateCachedExposureInfo:(id)info inRange:(_NSRange)range withBatchSize:(unsigned int)size
{
  length = range.length;
  location = range.location;
  infoCopy = info;
  if (length)
  {
    cachedScanInstanceCount = self->_cachedScanInstanceCount;
    if (location >= cachedScanInstanceCount)
    {
      currentHandler = [MEMORY[0x277CCA888] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ENExposureCalculationSession.m" lineNumber:599 description:{@"Invalid parameter not satisfying: %@", @"range.location < _cachedScanInstanceCount"}];

      cachedScanInstanceCount = self->_cachedScanInstanceCount;
    }

    v38 = a2;
    v11 = 0;
    if (cachedScanInstanceCount)
    {
      scanInstanceBuffer = self->_scanInstanceBuffer;
      while (1)
      {
        var0 = scanInstanceBuffer->var0;
        scanInstanceBuffer = (scanInstanceBuffer + 16);
        if (location <= var0)
        {
          break;
        }

        if (cachedScanInstanceCount == ++v11)
        {
          v11 = cachedScanInstanceCount;
          break;
        }
      }
    }

    v44 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v40 = location + length;
    if (location < location + length)
    {
      sizeCopy = size;
      do
      {
        v14 = objc_autoreleasePoolPush();
        cachedExposureWindowMetadataCount = self->_cachedExposureWindowMetadataCount;
        context = v14;
        v43 = location + sizeCopy;
        if (location + sizeCopy <= cachedExposureWindowMetadataCount)
        {
          v16 = sizeCopy;
        }

        else
        {
          v16 = cachedExposureWindowMetadataCount - location;
        }

        v17 = v16 + location;
        if (location >= v16 + location)
        {
          v18 = v11;
        }

        else
        {
          v18 = v11;
          do
          {
            v19 = self->_cachedScanInstanceCount;
            if (v11 < v19)
            {
              v20 = &self->_scanInstanceBuffer->var0 + 4 * v11;
              v18 = v11;
              while (1)
              {
                v21 = *v20;
                v20 += 4;
                if (location != v21)
                {
                  break;
                }

                if (v19 == ++v18)
                {
                  v18 = self->_cachedScanInstanceCount;
                  break;
                }
              }
            }

            if (location >= self->_cachedExposureWindowMetadataCount)
            {
              [ENExposureCalculationSession enumerateCachedExposureInfo:v38 inRange:self withBatchSize:?];
            }

            v22 = &self->_exposureWindowMetadataBuffer[location];
            var1 = v22->var1;
            var2 = v22->var2;
            var3 = v22->var3;
            var4 = v22->var4;
            var5 = v22->var5;
            v28 = *(&v22->var5 + 1);
            v29 = (self->_scanInstanceBuffer + 16 * v11);
            *&v46 = *&v22->var0;
            v45 = v46;
            *(&v46 + 1) = var1;
            v47 = var2;
            v48 = var3;
            v49 = var4;
            v50 = var5;
            v51 = v28;
            v30 = exposureWindowsForScanInstances(v29, (v18 - v11), &v46, 0, 0, 1800.0);
            v31 = objc_alloc_init(MEMORY[0x277CC5D28]);
            [v31 setRollingStartNumber:v45];
            [v31 setTransmissionRiskLevel:var2];
            [v31 setDaysSinceOnsetOfSymptoms:var1];
            [v31 setDiagnosisReportType:var3];
            [v31 setVariantOfConcernType:var5];
            exposureConfiguration = [(ENExposureCalculationSession *)self exposureConfiguration];
            LOBYTE(var3) = [exposureConfiguration flags];

            if ((var3 & 2) != 0)
            {
              if (gLogCategory__ENExposureCalculationSession <= 50)
              {
                if (gLogCategory__ENExposureCalculationSession != -1 || (v33 = _LogCategory_Initialize(), v33))
                {
                  [ENExposureCalculationSession enumerateCachedExposureInfo:v33 inRange:v34 withBatchSize:v35];
                }
              }

              v36 = [(ENExposureCalculationSession *)self exposureInfosForEachExposureWindow:v30 key:v31];
              [v44 addObjectsFromArray:v36];
            }

            else
            {
              v36 = [(ENExposureCalculationSession *)self exposureInfoForExposureWindows:v30 key:v31];
              [v44 addObject:v36];
            }

            ++location;
            v11 = v18;
          }

          while (location < v17);
        }

        infoCopy[2](infoCopy, v44, 0);
        [v44 removeAllObjects];
        objc_autoreleasePoolPop(context);
        v11 = v18;
        location = v43;
      }

      while (v43 < v40);
    }
  }
}

- (id)filterAdvertisements:(id)advertisements fromKey:(id)key
{
  v113 = *MEMORY[0x277D85DE8];
  advertisementsCopy = advertisements;
  keyCopy = key;
  rollingPeriod = [keyCopy rollingPeriod];
  v9 = rollingPeriod;
  if (rollingPeriod >= 0x91)
  {
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed)
    {
      if (gLogCategory_ENExposureCalculationSession <= 50)
      {
        if (gLogCategory_ENExposureCalculationSession != -1 || (v12 = _LogCategory_Initialize(), v12))
        {
          [(ENExposureCalculationSession *)v12 filterAdvertisements:v13 fromKey:v14];
        }
      }
    }

    v15 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isRPILoggingAllowed = [v15 isRPILoggingAllowed];

    if (!isRPILoggingAllowed)
    {
      v91 = MEMORY[0x277CBEBF0];
      goto LABEL_116;
    }

    if (gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession filterAdvertisements:v9 fromKey:?];
    }

    goto LABEL_91;
  }

  v17 = malloc_type_malloc(16 * rollingPeriod, 0x1000040451B5BE8uLL);
  if (!v17)
  {
    if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureCalculationSession filterAdvertisements:fromKey:];
    }

LABEL_91:
    v91 = MEMORY[0x277CBEBF0];
    goto LABEL_116;
  }

  v18 = v17;
  selfCopy = self;
  v19 = v9;
  v89 = keyCopy;
  [keyCopy deriveRollingProximityIdentifiersWithBuffer:v17 count:v9];
  v20 = objc_alloc_init(MEMORY[0x277CBEB10]);
  obj = v9;
  if (v9)
  {
    v21 = v18;
    do
    {
      v22 = *v21++;
      v112 = v22;
      v23 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBytes:&v112 length:16];
      [v20 addObject:v23];

      --v19;
    }

    while (v19);
  }

  v96 = v20;
  free(v18);
  v24 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v88 = advertisementsCopy;
  v25 = advertisementsCopy;
  v26 = [v25 countByEnumeratingWithState:&v105 objects:v111 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v106;
    do
    {
      v29 = 0;
      do
      {
        if (*v106 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v105 + 1) + 8 * v29);
        v31 = [v30 rpi];
        v32 = [v96 containsObject:v31];

        if (v32)
        {
          [v24 addObject:v30];
        }

        else
        {
          v33 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed2 = [v33 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed2 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }

          v35 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isRPILoggingAllowed2 = [v35 isRPILoggingAllowed];

          if (isRPILoggingAllowed2 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:? fromKey:?];
          }
        }

        ++v29;
      }

      while (v27 != v29);
      v37 = [v25 countByEnumeratingWithState:&v105 objects:v111 count:16];
      v27 = v37;
    }

    while (v37);
  }

  v90 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obja = v24;
  v38 = [obja countByEnumeratingWithState:&v101 objects:v110 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v102;
    do
    {
      v41 = 0;
      do
      {
        if (*v102 != v40)
        {
          objc_enumerationMutation(obja);
        }

        v42 = *(*(&v101 + 1) + 8 * v41);
        v43 = [v42 decryptedMetadataForTemporaryExposureKey:v89];
        saturated = [v42 saturated];
        v45 = [v43 attenuationForRSSI:objc_msgSend(v42 saturated:{"typicalRSSI"), saturated}];
        v46 = [v43 attenuationForRSSI:objc_msgSend(v42 saturated:{"maxRSSI"), saturated}];
        if ([v43 txPower] >= -60 && objc_msgSend(v43, "txPower") < 21)
        {
          if (v45)
          {
            if (v46)
            {
              counter = [v42 counter];
              unsignedShortValue = [(NSNumber *)selfCopy->_advertisementSampleCountThreshold unsignedShortValue];
              if (counter >= unsignedShortValue)
              {
                [v90 addObject:v42];
              }

              else
              {
                v53 = unsignedShortValue;
                v54 = +[ENLoggingPrefs sharedENLoggingPrefs];
                isSensitiveLoggingAllowed3 = [v54 isSensitiveLoggingAllowed];

                if (isSensitiveLoggingAllowed3 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&gLogCategory_ENExposureCalculationSession, "[ENExposureCalculationSession filterAdvertisements:fromKey:]", 50, "dropping advertisement due to sample count: %u below threshold: %u", counter, v53);
                }
              }
            }

            else
            {
              v60 = +[ENLoggingPrefs sharedENLoggingPrefs];
              isSensitiveLoggingAllowed4 = [v60 isSensitiveLoggingAllowed];

              if (isSensitiveLoggingAllowed4 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
              {
                [ENExposureCalculationSession filterAdvertisements:fromKey:];
              }

              v62 = +[ENLoggingPrefs sharedENLoggingPrefs];
              isRPILoggingAllowed3 = [v62 isRPILoggingAllowed];

              if (isRPILoggingAllowed3 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
              {
                [ENExposureCalculationSession filterAdvertisements:fromKey:];
              }
            }
          }

          else
          {
            v56 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed5 = [v56 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed5 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
            {
              [ENExposureCalculationSession filterAdvertisements:fromKey:];
            }

            v58 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isRPILoggingAllowed4 = [v58 isRPILoggingAllowed];

            if (isRPILoggingAllowed4 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
            {
              [ENExposureCalculationSession filterAdvertisements:fromKey:];
            }
          }
        }

        else
        {
          v47 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed6 = [v47 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed6 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }

          v49 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isRPILoggingAllowed5 = [v49 isRPILoggingAllowed];

          if (isRPILoggingAllowed5 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:v43 fromKey:?];
          }
        }

        ++v41;
      }

      while (v39 != v41);
      v64 = [obja countByEnumeratingWithState:&v101 objects:v110 count:16];
      v39 = v64;
    }

    while (v64);
  }

  v65 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v91 = objc_alloc_init(MEMORY[0x277CBEB10]);
  [(NSNumber *)selfCopy->_allowedRPIBroadcastDuration floatValue];
  if (v66 >= 1200.0)
  {
    v68 = 1200.0;
  }

  else
  {
    [(NSNumber *)selfCopy->_allowedRPIBroadcastDuration floatValue];
    v68 = v67;
  }

  [v90 sortedArrayUsingComparator:&__block_literal_global_7];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v93 = v100 = 0u;
  v69 = [v93 countByEnumeratingWithState:&v97 objects:v109 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v98;
    do
    {
      v72 = 0;
      do
      {
        if (*v98 != v71)
        {
          objc_enumerationMutation(v93);
        }

        v73 = *(*(&v97 + 1) + 8 * v72);
        v74 = [v73 rpi];
        v75 = [v65 objectForKey:v74];

        if (!v75)
        {
          v76 = MEMORY[0x277CBEAA0];
          [v73 timestamp];
          v75 = [v76 dateWithTimeIntervalSince1970:?];
          v77 = [v73 rpi];
          [v65 setObject:v75 forKey:v77];
        }

        v78 = MEMORY[0x277CBEAA0];
        [v73 timestamp];
        v79 = [v78 dateWithTimeIntervalSince1970:?];
        [v79 timeIntervalSinceDate:v75];
        if (v80 <= v68)
        {
          [v91 addObject:v73];
        }

        else
        {
          v81 = v80;
          v82 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed7 = [v82 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed7 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:fromKey:];
          }

          v84 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isRPILoggingAllowed6 = [v84 isRPILoggingAllowed];

          if (isRPILoggingAllowed6 && gLogCategory_ENExposureCalculationSession <= 50 && (gLogCategory_ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            [ENExposureCalculationSession filterAdvertisements:v81 fromKey:?];
          }
        }

        ++v72;
      }

      while (v70 != v72);
      v86 = [v93 countByEnumeratingWithState:&v97 objects:v109 count:16];
      v70 = v86;
    }

    while (v86);
  }

  advertisementsCopy = v88;
  keyCopy = v89;
LABEL_116:

  return v91;
}

- ($6B14AE857B43CEDA041F2BA42EED81B6)scanInstanceFromAdvertisement:(SEL)advertisement key:(id)key
{
  keyCopy = key;
  v7 = [keyCopy decryptedMetadataForTemporaryExposureKey:a5];
  saturated = [keyCopy saturated];
  [v7 attenuationForRSSI:objc_msgSend(keyCopy saturated:{"typicalRSSI"), saturated}];
  [v7 attenuationForRSSI:objc_msgSend(keyCopy saturated:{"maxRSSI"), saturated}];
  LODWORD(v11) = 0;
  [keyCopy timestamp];
  HIDWORD(v11) = v9;
  [keyCopy scanInterval];

  return v11;
}

- (id)exposureWindowsForMatchedAdvertisements:(id)advertisements key:(id)key options:(int64_t)options
{
  optionsCopy = options;
  v72 = *MEMORY[0x277D85DE8];
  advertisementsCopy = advertisements;
  keyCopy = key;
  v62 = advertisementsCopy;
  if (![(ENExposureCalculationSession *)self _shouldMatchKey:keyCopy])
  {
    v50 = 0;
    goto LABEL_58;
  }

  v60 = optionsCopy;
  v61 = [(ENExposureCalculationSession *)self filterAdvertisements:advertisementsCopy fromKey:keyCopy];
  v10 = v61;
  if ([v61 count])
  {
    v11 = v61;
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_7];
    v13 = objc_alloc_init(MEMORY[0x277CBEB10]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = v12;
    v15 = 0;
    v16 = [v14 countByEnumeratingWithState:&v65 objects:&v69 count:16];
    if (v16)
    {
      v17 = *v66;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v66 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v65 + 1) + 8 * i);
          if (v15 && ([*(*(&v65 + 1) + 8 * i) timestamp], v21 = v20, objc_msgSend(v15, "timestamp"), v21 - v22 <= 4.0))
          {
            [v15 combineWithAdvertisement:v19];
          }

          else
          {
            [v13 addObject:v19];
            v23 = v19;

            v15 = v23;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v65 objects:&v69 count:16];
      }

      while (v16);
    }

    if ([v13 count] != 1)
    {
      v24 = 0;
      do
      {
        v25 = [v13 objectAtIndex:v24];
        v26 = [v13 objectAtIndex:++v24];
        [v25 timestamp];
        v28 = v27;
        [v26 timestamp];
        if (v28 > v29 - [v26 scanInterval])
        {
          [v26 timestamp];
          v31 = v30;
          [v25 timestamp];
          [v26 setScanInterval:(v31 - v32)];
        }
      }

      while (v24 < [v13 count] - 1);
    }

    if ([v13 count])
    {
      v33 = [v13 count];
      v34 = malloc_type_calloc(v33, 0x10uLL, 0x1000040451B5BE8uLL);
      v35 = v34;
      if (v34)
      {
        if (v33)
        {
          v36 = 0;
          v37 = v34 + 1;
          do
          {
            v38 = objc_autoreleasePoolPush();
            v39 = [v13 objectAtIndex:v36];
            *(v37 - 1) = [(ENExposureCalculationSession *)self scanInstanceFromAdvertisement:v39 key:keyCopy];
            *v37 = v40;

            objc_autoreleasePoolPop(v38);
            ++v36;
            v37 += 2;
          }

          while (v33 != v36);
        }

        lastObject = [v13 lastObject];
        v42 = [lastObject decryptedMetadataForTemporaryExposureKey:keyCopy];
        v43 = keyCopy;
        rollingStartNumber = [v43 rollingStartNumber];
        daysSinceOnsetOfSymptoms = [v43 daysSinceOnsetOfSymptoms];
        transmissionRiskLevel = [v43 transmissionRiskLevel];
        diagnosisReportType = [v43 diagnosisReportType];
        variantOfConcernType = [v43 variantOfConcernType];

        calibrationConfidence = [v42 calibrationConfidence];
        v46 = calibrationConfidence;
        if ((v60 & 2) != 0)
        {
          v47 = INFINITY;
        }

        else
        {
          v47 = 1800.0;
        }

        if (!self->_cacheExposureWindows && !self->_cacheExposureInfo)
        {
          goto LABEL_55;
        }

        *&v69 = 0;
        *(&v69 + 1) = &v69;
        v70 = 0x2020000000;
        v71 = 0;
        if (self->_cachedScanInstanceCount >= self->_scanInstanceBufferSize)
        {
          if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&gLogCategory__ENExposureCalculationSession, "[ENExposureCalculationSession exposureWindowsForMatchedAdvertisements:key:options:]", 90, "Scan instance buffer completely full");
          }

          v51 = *(&v69 + 1);
          v52 = *(*(&v69 + 1) + 24) + v33;
          *(*(&v69 + 1) + 24) = v52;
          if (!v52)
          {
            goto LABEL_54;
          }
        }

        else
        {
          cachedExposureWindowMetadataCount = self->_cachedExposureWindowMetadataCount;
          self->_cachedExposureWindowMetadataCount = cachedExposureWindowMetadataCount + 1;
          v49 = &self->_exposureWindowMetadataBuffer[cachedExposureWindowMetadataCount];
          v49->var0 = rollingStartNumber;
          *(&v49->var0 + 1) = 0;
          v49->var1 = daysSinceOnsetOfSymptoms;
          v49->var2 = transmissionRiskLevel;
          v49->var3 = diagnosisReportType;
          v49->var4 = calibrationConfidence;
          v49->var5 = variantOfConcernType;
          *(&v49->var5 + 1) = 0;
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __84__ENExposureCalculationSession_exposureWindowsForMatchedAdvertisements_key_options___block_invoke;
          v63[3] = &unk_278FD2AA0;
          v64 = cachedExposureWindowMetadataCount;
          v63[4] = self;
          v63[5] = &v69;
          groupScanInstances(v35, v33, v63, v47);
          if (*(*(&v69 + 1) + 24) && gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&gLogCategory__ENExposureCalculationSession, "[ENExposureCalculationSession exposureWindowsForMatchedAdvertisements:key:options:]", 90, "Scan instance buffer overflow");
          }

          v51 = *(&v69 + 1);
          v52 = *(*(&v69 + 1) + 24);
          if (!v52)
          {
            goto LABEL_54;
          }
        }

        if (gLogCategory__ENExposureCalculationSession <= 90)
        {
          if (gLogCategory__ENExposureCalculationSession == -1)
          {
            v53 = _LogCategory_Initialize();
            v51 = *(&v69 + 1);
            if (!v53)
            {
              goto LABEL_53;
            }

            v52 = *(*(&v69 + 1) + 24);
          }

          LogPrintF_safe(&gLogCategory__ENExposureCalculationSession, "[ENExposureCalculationSession exposureWindowsForMatchedAdvertisements:key:options:]", 90, "Dropping %d scan instances", v52);
          v51 = *(&v69 + 1);
        }

LABEL_53:
        self->_droppedScanInstanceCount += *(v51 + 24);
LABEL_54:
        _Block_object_dispose(&v69, 8);
LABEL_55:
        exposureConfiguration = self->_exposureConfiguration;
        *&v69 = rollingStartNumber;
        *(&v69 + 1) = daysSinceOnsetOfSymptoms;
        LOBYTE(v70) = transmissionRiskLevel;
        BYTE1(v70) = diagnosisReportType;
        BYTE2(v70) = v46;
        BYTE3(v70) = variantOfConcernType;
        HIDWORD(v70) = 0;
        v50 = exposureWindowsForScanInstances(v35, v33, &v69, (v60 & 1) == 0, exposureConfiguration, v47);
        free(v35);

        goto LABEL_56;
      }

      if (gLogCategory__ENExposureCalculationSession <= 90 && (gLogCategory__ENExposureCalculationSession != -1 || _LogCategory_Initialize()))
      {
        [ENExposureCalculationSession exposureWindowsForMatchedAdvertisements:key:options:];
      }
    }

    v50 = 0;
LABEL_56:

    v10 = v61;
    goto LABEL_57;
  }

  v50 = 0;
LABEL_57:

LABEL_58:

  return v50;
}

uint64_t __84__ENExposureCalculationSession_exposureWindowsForMatchedAdvertisements_key_options___block_invoke(uint64_t result, uint64_t a2, unsigned int a3)
{
  ++*(*(result + 32) + 88);
  if (a3)
  {
    v3 = a3;
    v4 = (a2 + 4);
    do
    {
      v8 = *v4;
      v9 = *(v4 + 2);
      v5 = *(result + 32);
      v6 = *(v5 + 48);
      if (v6 >= *(v5 + 20))
      {
        ++*(*(*(result + 40) + 8) + 24);
      }

      else
      {
        v7 = *(v5 + 40) + 16 * v6;
        *v7 = *(result + 48);
        *(v7 + 4) = v8;
        *(v7 + 12) = v9;
        ++*(*(result + 32) + 48);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

- (BOOL)_shouldMatchKey:(id)key
{
  diagnosisReportType = [key diagnosisReportType];
  if (diagnosisReportType == 5)
  {
    return 0;
  }

  else
  {
    return diagnosisReportType != 4 || self->_allowRecursiveReportType;
  }
}

- (void)enumerateCachedExposureWindows:(id)windows inRange:(_NSRange)range withBatchSize:(unsigned int)size options:(int64_t)options
{
  location = range.location;
  v41 = range.location + range.length;
  windowsCopy = windows;
  cachedExposureWindowCount = self->_cachedExposureWindowCount;
  if (v41 <= cachedExposureWindowCount)
  {
    if ((options & 2) != 0)
    {
      v11 = INFINITY;
    }

    else
    {
      v11 = 1800.0;
    }

    if ((options & 2) != 0)
    {
      cachedExposureWindowCount = self->_cachedExposureWindowMetadataCount;
    }

    sizeCopy = size;
    scanInstanceBuffer = self->_scanInstanceBuffer;
    p_scanInstanceBuffer = &self->_scanInstanceBuffer;
    v38 = a2;
    if (location)
    {
      v13 = 0;
      v14 = 0;
      v15 = *&scanInstanceBuffer->var1;
      v16 = *&scanInstanceBuffer->var0;
      v17 = HIDWORD(*&scanInstanceBuffer->var0);
      v46 = self->_scanInstanceBuffer;
      do
      {
        v18 = (scanInstanceBuffer + 16 * v14);
        v20 = *v18;
        v19 = v18[1];
        v21 = v16;
        v22 = v17;
        v23 = v15;
        if (scanInstancesInDifferentWindows(v16 | (v17 << 32), v15, *v18, v19, v11))
        {
          v16 = v20;
          v17 = HIDWORD(v20);
          ++v13;
          v15 = v19;
        }

        else
        {
          v16 = v21;
          v17 = v22;
          v15 = v23;
        }

        if (v13 != location)
        {
          ++v14;
        }

        scanInstanceBuffer = v46;
      }

      while (v13 < location);
    }

    else
    {
      v14 = 0;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB10]);
    if (location < v41)
    {
      v39 = sizeCopy;
      v47 = v24;
      do
      {
        context = objc_autoreleasePoolPush();
        v45 = location + v39;
        if (location + v39 <= cachedExposureWindowCount)
        {
          v25 = v39;
        }

        else
        {
          v25 = cachedExposureWindowCount - location;
        }

        if ([v24 count] >= v25)
        {
          v26 = v14;
        }

        else
        {
          v26 = v14;
          do
          {
            v27 = self->_scanInstanceBuffer;
            v28 = (v27 + 16 * v14);
            v29 = *v28;
            cachedScanInstanceCount = self->_cachedScanInstanceCount;
            if (v14 < cachedScanInstanceCount)
            {
              v31 = v25;
              optionsCopy = options;
              v33 = v28[1];
              v34 = v28 + 1;
              v26 = v14;
              while (!scanInstancesInDifferentWindows(v29, v33, *(v34 - 1), *v34, v11))
              {
                v34 += 2;
                if (cachedScanInstanceCount == ++v26)
                {
                  v26 = cachedScanInstanceCount;
                  break;
                }
              }

              options = optionsCopy;
              v25 = v31;
              v24 = v47;
            }

            if (self->_cachedExposureWindowMetadataCount <= v29)
            {
              [ENExposureCalculationSession enumerateCachedExposureWindows:v38 inRange:self withBatchSize:p_scanInstanceBuffer options:&v48];
              v27 = v48;
            }

            v35 = &self->_exposureWindowMetadataBuffer[v29];
            v48 = *&v35->var0;
            v49 = *&v35->var2;
            v36 = exposureWindowsForScanInstances(v27 + 2 * v14, (v26 - v14), &v48, (options & 1) == 0, self->_exposureConfiguration, v11);
            [v24 addObjectsFromArray:v36];

            v14 = v26;
          }

          while ([v24 count] < v25);
        }

        windowsCopy[2](windowsCopy, v24, 0);
        [v24 removeAllObjects];
        objc_autoreleasePoolPop(context);
        location = v45;
        v14 = v26;
      }

      while (v45 < v41);
    }
  }
}

- (id)groupExposureWindowsByDay:(id)day
{
  v32 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  v4 = [MEMORY[0x277CBEA88] calendarWithIdentifier:*MEMORY[0x277CBE5B8]];
  v24 = [MEMORY[0x277CBEBA8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:?];
  date = [MEMORY[0x277CBEAA0] date];
  v25 = v4;
  v6 = [v4 startOfDayForDate:date];

  v7 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v8 = 7;
  do
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB10]);
    [v7 addObject:v9];

    --v8;
  }

  while (v8);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = dayCopy;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        date2 = [v14 date];
        [v6 timeIntervalSinceDate:date2];
        v17 = v16 / 0x15180;

        v18 = -1;
        v19 = &qword_24A28BFC0;
        do
        {
          v20 = *v19++;
        }

        while (v17 >= v20 && v18++ != 5);
        v22 = [v7 objectAtIndex:v18];
        [v22 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)groupExposureWindowsByInfectiousness:(id)infectiousness
{
  v21 = *MEMORY[0x277D85DE8];
  infectiousnessCopy = infectiousness;
  v4 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v5 = 3;
  do
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB10]);
    [v4 addObject:v6];

    --v5;
  }

  while (v5);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = infectiousnessCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = 0;
        v13 = *(*(&v16 + 1) + 8 * i);
        while (qword_24A28BFF8[v12] < [v13 infectiousness])
        {
          if (++v12 == 3)
          {
            v12 = 0;
            break;
          }
        }

        v14 = [v4 objectAtIndex:v12];
        [v14 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)attenuationDurationMapDataForExposureWindows:(id)windows
{
  v39 = *MEMORY[0x277D85DE8];
  windowsCopy = windows;
  v4 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = windowsCopy;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        scanInstances = [*(*(&v32 + 1) + 8 * i) scanInstances];
        [v4 addObjectsFromArray:scanInstances];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  memset(v37, 0, sizeof(v37));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = 0;
        v17 = *(*(&v28 + 1) + 8 * j);
        do
        {
          v18 = v16 * 8 + 8;
          if (qword_24A28C010[v16] >= [v17 typicalAttenuation])
          {
            break;
          }
        }

        while (v16++ != 7);
        *&v36[v18 + 120] += [v17 secondsSinceLastScan];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v13);
  }

  v20 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
  v21 = 0;
  v22 = v20;
  do
  {
    v23 = 0;
    v24 = *(v37 + v21);
    v25 = v24;
    while (!v24 || dbl_24A28C050[v23] < v25)
    {
      if (++v23 == 8)
      {
        goto LABEL_26;
      }
    }

    v22[v23] = 1;
LABEL_26:
    ++v21;
    v22 += 8;
  }

  while (v21 != 8);
  v26 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:v20 length:{64, v25}];

  return v26;
}

- (id)cachedExposuresDifferentialPrivacyRiskParameters
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__8;
  v31 = 0;
  cachedExposureWindowCount = self->_cachedExposureWindowCount;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __80__ENExposureCalculationSession_cachedExposuresDifferentialPrivacyRiskParameters__block_invoke;
  v25[3] = &unk_278FD2AC8;
  v25[4] = &v26;
  [(ENExposureCalculationSession *)self enumerateCachedExposureWindows:v25 inRange:0 withBatchSize:cachedExposureWindowCount options:cachedExposureWindowCount, 3];
  v4 = [(ENExposureCalculationSession *)self groupExposureWindowsByDay:v27[5]];
  v5 = objc_alloc_init(MEMORY[0x277CBEB20]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(ENExposureCalculationSession *)self groupExposureWindowsByInfectiousness:*(*(&v21 + 1) + 8 * i)];
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v32 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [(ENExposureCalculationSession *)self attenuationDurationMapDataForExposureWindows:*(*(&v17 + 1) + 8 * j)];
              [v5 appendData:v14];
            }

            v11 = [v10 countByEnumeratingWithState:&v17 objects:v32 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v26, 8);

  return v5;
}

void __80__ENExposureCalculationSession_cachedExposuresDifferentialPrivacyRiskParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setExposureConfiguration:(id *)a1 .cold.1(id *a1)
{
  v2 = [*a1 description];
  v1 = v2;
  LogPrintF_safe(&gLogCategory_ENExposureCalculationSession, "-[ENExposureCalculationSession setExposureConfiguration:]", 50, "updated calculation session exposure configuration:%s", [v2 UTF8String]);
}

- (void)setExposureConfiguration:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  LogPrintF_safe(&gLogCategory_ENExposureCalculationSession, "[ENExposureCalculationSession setExposureConfiguration:]", 50, "using non-default attenutation duration thresholds { %@ }", v1);
}

- (void)enumerateCachedExposureInfo:(uint64_t)a1 inRange:(uint64_t)a2 withBatchSize:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENExposureCalculationSession.m" lineNumber:626 description:{@"Invalid parameter not satisfying: %@", @"metadataIndex < _cachedExposureWindowMetadataCount"}];
}

- (void)enumerateCachedExposureWindows:(uint64_t)a1 inRange:(uint64_t)a2 withBatchSize:(void *)a3 options:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA888] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ENExposureCalculationSession.m" lineNumber:967 description:{@"Invalid parameter not satisfying: %@", @"metadataIndex < _cachedExposureWindowMetadataCount"}];

  *a4 = *a3;
}

@end