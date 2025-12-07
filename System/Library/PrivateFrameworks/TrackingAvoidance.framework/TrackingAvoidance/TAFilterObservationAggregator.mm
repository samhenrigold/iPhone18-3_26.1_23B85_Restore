@interface TAFilterObservationAggregator
+ (id)aggregateObservationsThroughHistoryForDetectionResults:(id)results visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock;
+ (id)aggregateObservationsThroughHistoryForSingleDetection:(id)detection visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock;
+ (id)location:(id)location withAdvertisementTimestamp:(id)timestamp;
+ (id)normalizeDualT18PoshAdvertisersAsPosh:(id)posh deviceRecord:(id)record;
+ (void)attachAISInfo:(id)info deviceRecord:(id)record;
@end

@implementation TAFilterObservationAggregator

+ (id)location:(id)location withAdvertisementTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  locationCopy = location;
  v7 = [TALocationLite alloc];
  scanDate = [timestampCopy scanDate];

  [locationCopy latitude];
  v41 = v9;
  [locationCopy longitude];
  v40 = v10;
  [locationCopy horizontalAccuracy];
  v39 = v11;
  [locationCopy altitude];
  v38 = v12;
  [locationCopy verticalAccuracy];
  v37 = v13;
  [locationCopy speed];
  v36 = v14;
  [locationCopy speedAccuracy];
  v35 = v15;
  [locationCopy course];
  v17 = v16;
  [locationCopy courseAccuracy];
  v19 = v18;
  [locationCopy deltaDistance];
  v21 = v20;
  [locationCopy deltaDistanceAccuracy];
  v23 = v22;
  [locationCopy groundAltitude];
  v25 = v24;
  [locationCopy groundAltitudeUncertainty];
  v27 = v26;
  [locationCopy pressure];
  v29 = v28;
  [locationCopy pressureUncertainty];
  v31 = v30;
  isSimulatedOrSpoofed = [locationCopy isSimulatedOrSpoofed];

  v33 = [(TALocationLite *)v7 initWithTimestamp:scanDate latitude:isSimulatedOrSpoofed longitude:v41 horizontalAccuracy:v40 altitude:v39 verticalAccuracy:v38 speed:v37 speedAccuracy:v36 course:v35 courseAccuracy:v17 deltaDistance:v19 deltaDistanceAccuracy:v21 groundAltitude:v23 groundAltitudeUncertainty:v25 pressure:v27 pressureUncertainty:v29 isSimulatedOrSpoofed:v31];

  return v33;
}

+ (id)aggregateObservationsThroughHistoryForSingleDetection:(id)detection visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock
{
  v64 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  bufferCopy = buffer;
  snapshotBufferCopy = snapshotBuffer;
  clockCopy = clock;
  v13 = 0;
  if (detectionCopy && clockCopy)
  {
    v50 = clockCopy;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v51 = bufferCopy;
    if (bufferCopy)
    {
      v49 = snapshotBufferCopy;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = [bufferCopy bufferCopy];
      v15 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v59;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v59 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v58 + 1) + 8 * i);
            earliestUtAdvertisements = [v19 earliestUtAdvertisements];
            address = [detectionCopy address];
            v22 = [earliestUtAdvertisements objectForKeyedSubscript:address];

            latestUtAdvertisements = [v19 latestUtAdvertisements];
            address2 = [detectionCopy address];
            v25 = [latestUtAdvertisements objectForKeyedSubscript:address2];

            getLocationRepresentingSnapshot = [v19 getLocationRepresentingSnapshot];
            if (v22)
            {
              v27 = [TAFilterObservationAggregator location:getLocationRepresentingSnapshot withAdvertisementTimestamp:v22];
              [v14 addObject:v27];
            }

            if (v25 && ([v25 isEqual:v22] & 1) == 0)
            {
              v28 = [TAFilterObservationAggregator location:getLocationRepresentingSnapshot withAdvertisementTimestamp:v25];
              [v14 addObject:v28];
            }
          }

          v16 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v16);
      }

      snapshotBufferCopy = v49;
    }

    if (snapshotBufferCopy)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      bufferCopy = [snapshotBufferCopy bufferCopy];
      v30 = [bufferCopy countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v55;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v55 != v32)
            {
              objc_enumerationMutation(bufferCopy);
            }

            accumulatedDeviceMetrics = [*(*(&v54 + 1) + 8 * j) accumulatedDeviceMetrics];
            address3 = [detectionCopy address];
            v36 = [accumulatedDeviceMetrics objectForKeyedSubscript:address3];

            if (v36)
            {
              sampledObservedLocations = [v36 sampledObservedLocations];
              [v14 addObjectsFromArray:sampledObservedLocations];
            }
          }

          v31 = [bufferCopy countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v31);
      }
    }

    locationHistory = [detectionCopy locationHistory];
    [v14 addObjectsFromArray:locationHistory];

    obja = [TASuspiciousDevice alloc];
    latestAdvertisement = [detectionCopy latestAdvertisement];
    detectionSummary = [detectionCopy detectionSummary];
    v41 = [v14 copy];
    detectionMetrics = [detectionCopy detectionMetrics];
    detectionType = [detectionCopy detectionType];
    v44 = snapshotBufferCopy;
    immediacyType = [detectionCopy immediacyType];
    accessoryInfo = [detectionCopy accessoryInfo];
    v48 = immediacyType;
    snapshotBufferCopy = v44;
    v13 = -[TASuspiciousDevice initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:](obja, "initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:", latestAdvertisement, detectionSummary, v50, v41, detectionMetrics, detectionType, v48, accessoryInfo, [detectionCopy forceSurfaceReason]);

    clockCopy = v50;
    bufferCopy = v51;
  }

  return v13;
}

+ (id)aggregateObservationsThroughHistoryForDetectionResults:(id)results visitSnapshotBuffer:(id)buffer intervisitSnapshotBuffer:(id)snapshotBuffer clock:(id)clock
{
  v26 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  bufferCopy = buffer;
  snapshotBufferCopy = snapshotBuffer;
  clockCopy = clock;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = resultsCopy;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [TAFilterObservationAggregator aggregateObservationsThroughHistoryForSingleDetection:*(*(&v21 + 1) + 8 * i) visitSnapshotBuffer:bufferCopy intervisitSnapshotBuffer:snapshotBufferCopy clock:clockCopy, v21];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v13;
}

+ (void)attachAISInfo:(id)info deviceRecord:(id)record
{
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  recordCopy = record;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [infoCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(infoCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        address = [v11 address];
        v13 = [recordCopy getAccessoryInfo:address];

        [v11 setAccessoryInfo:v13];
      }

      v8 = [infoCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (id)normalizeDualT18PoshAdvertisersAsPosh:(id)posh deviceRecord:(id)record
{
  v38 = *MEMORY[0x277D85DE8];
  poshCopy = posh;
  recordCopy = record;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(poshCopy, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = poshCopy;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    v28 = v8;
    v29 = recordCopy;
    v27 = *v34;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        address = [v13 address];
        v15 = [recordCopy getLatestAdvertisement:address];

        if ([v15 isApple] && objc_msgSend(v15, "isPosh") && (objc_msgSend(v13, "latestAdvertisement"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isPosh"), v16, (v17 & 1) == 0))
        {
          v32 = [TASuspiciousDevice alloc];
          detectionSummary = [v13 detectionSummary];
          date = [v13 date];
          locationHistory = [v13 locationHistory];
          detectionMetrics = [v13 detectionMetrics];
          detectionType = [v13 detectionType];
          immediacyType = [v13 immediacyType];
          [v13 accessoryInfo];
          v23 = v22 = v7;
          v24 = -[TASuspiciousDevice initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:](v32, "initWithLatestAdv:detectionSummary:date:locHistory:detectionMetrics:detectionType:immediacyType:accessoryInfo:forceSurfaceReason:", v15, detectionSummary, date, locationHistory, detectionMetrics, detectionType, immediacyType, v23, [v13 forceSurfaceReason]);

          v7 = v22;
          v8 = v28;

          v11 = v27;
          [v22 addObject:v24];

          recordCopy = v29;
        }

        else
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v25 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v10 = v25;
    }

    while (v25);
  }

  return v7;
}

@end