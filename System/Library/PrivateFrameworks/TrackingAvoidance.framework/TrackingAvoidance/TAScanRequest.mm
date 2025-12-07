@interface TAScanRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldScanOnAdvertisement:(id)advertisement withDeviceRecord:(id)record;
- (TAScanRequest)initWithCoder:(id)coder;
- (TAScanRequest)initWithSettings:(id)settings;
- (id)evaluateInterVisitAfterVisitExit:(id)exit displayEvents:(id)events advertisements:(id)advertisements deviceRecord:(id)record clock:(id)clock;
- (id)evaluateVisitEntry:(id)entry clock:(id)clock;
- (id)evictScheduledInterVisitScanWithClock:(id)clock;
- (void)encodeWithCoder:(id)coder;
- (void)scheduleInterVisitScanForAdvertisement:(id)advertisement deviceRecord:(id)record clock:(id)clock;
@end

@implementation TAScanRequest

- (TAScanRequest)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = TAScanRequest;
  v6 = [(TAScanRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    lastScanRequestedDate = v7->_lastScanRequestedDate;
    v7->_lastScanRequestedDate = 0;

    v7->_interVisitScanCount = 0;
    scheduledScanRequest = v7->_scheduledScanRequest;
    v7->_scheduledScanRequest = 0;
  }

  return v7;
}

- (id)evaluateVisitEntry:(id)entry clock:(id)clock
{
  v21[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  clockCopy = clock;
  self->_interVisitScanCount = 0;
  scheduledScanRequest = self->_scheduledScanRequest;
  self->_scheduledScanRequest = 0;

  if (([entryCopy isClosed] & 1) != 0 || (objc_msgSend(entryCopy, "getDisplayOnTimeUntilEndDate:", clockCopy), v10 = v9, -[TAScanRequestSettings minVisitEntryDisplayOnDuration](self->_settings, "minVisitEntryDisplayOnDuration"), v10 >= v11) || (lastScanRequestedDate = self->_lastScanRequestedDate) != 0 && (objc_msgSend(entryCopy, "representativeVisit"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "arrivalDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[NSDate compare:](lastScanRequestedDate, "compare:", v14), v14, v13, v15 != -1))
  {
    v16 = 0;
  }

  else
  {
    v18 = [TAOutgoingRequests alloc];
    v20 = @"ScanRequestReason";
    v21[0] = @"VisitEntry";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = [(TAOutgoingRequests *)v18 initWithRequestKey:@"RequestingAdditionalScans" additionalInformation:v19 date:clockCopy];
  }

  return v16;
}

- (id)evaluateInterVisitAfterVisitExit:(id)exit displayEvents:(id)events advertisements:(id)advertisements deviceRecord:(id)record clock:(id)clock
{
  v44 = *MEMORY[0x277D85DE8];
  exitCopy = exit;
  eventsCopy = events;
  advertisementsCopy = advertisements;
  recordCopy = record;
  clockCopy = clock;
  self->_interVisitScanCount = 0;
  scheduledScanRequest = self->_scheduledScanRequest;
  self->_scheduledScanRequest = 0;

  if ([exitCopy isClosed])
  {
    v18 = [TADisplayOnCalculator alloc];
    representativeVisit = [exitCopy representativeVisit];
    departureDate = [representativeVisit departureDate];
    v21 = [(TADisplayOnCalculator *)v18 initWithStartTime:departureDate];

    [(TADisplayOnCalculator *)v21 calculateDisplayOnWithEvents:eventsCopy advertisements:advertisementsCopy endDate:clockCopy];
    v23 = v22;
    [(TAScanRequestSettings *)self->_settings minInterVisitDisplayOnDuration];
    if (v23 >= v24)
    {
      if (![advertisementsCopy count])
      {
        v27 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v26 = advertisementsCopy;
      v29 = [v26 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v29)
      {
        v30 = v29;
        v35 = v21;
        v36 = eventsCopy;
        v31 = *v38;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v33 = *(*(&v37 + 1) + 8 * i);
            if ([(TAScanRequest *)self shouldScanOnAdvertisement:v33 withDeviceRecord:recordCopy, v35, v36, v37])
            {
              [(TAScanRequest *)self scheduleInterVisitScanForAdvertisement:v33 deviceRecord:recordCopy clock:clockCopy];
              goto LABEL_18;
            }
          }

          v30 = [v26 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

LABEL_18:
        v27 = 0;
        v21 = v35;
        eventsCopy = v36;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      ++self->_interVisitScanCount;
      v25 = [TAOutgoingRequests alloc];
      v41 = @"ScanRequestReason";
      v42 = @"InterVisitImmediate";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v27 = [(TAOutgoingRequests *)v25 initWithRequestKey:@"RequestingAdditionalScans" additionalInformation:v26 date:clockCopy];
    }

    goto LABEL_22;
  }

  v28 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TAScanRequest evaluateInterVisitAfterVisitExit:v28 displayEvents:? advertisements:? deviceRecord:? clock:?];
  }

  v27 = 0;
LABEL_23:

  return v27;
}

- (id)evictScheduledInterVisitScanWithClock:(id)clock
{
  v18[1] = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  scheduledScanRequest = self->_scheduledScanRequest;
  if (scheduledScanRequest && [(NSDate *)scheduledScanRequest compare:clockCopy]!= NSOrderedDescending)
  {
    if (self->_lastScanRequestedDate && ([clockCopy timeIntervalSinceDate:?], v7 = v6, -[TAScanRequestSettings interVisitScanDelay](self->_settings, "interVisitScanDelay"), v7 <= v8))
    {
      v15 = self->_scheduledScanRequest;
      self->_scheduledScanRequest = 0;
    }

    else
    {
      interVisitScanCount = self->_interVisitScanCount;
      maxInterVisitScanRequests = [(TAScanRequestSettings *)self->_settings maxInterVisitScanRequests];
      v11 = self->_scheduledScanRequest;
      self->_scheduledScanRequest = 0;

      if (interVisitScanCount < maxInterVisitScanRequests)
      {
        ++self->_interVisitScanCount;
        v12 = [TAOutgoingRequests alloc];
        v17 = @"ScanRequestReason";
        v18[0] = @"InterVisitScheduled";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v14 = [(TAOutgoingRequests *)v12 initWithRequestKey:@"RequestingAdditionalScans" additionalInformation:v13 date:clockCopy];

        goto LABEL_9;
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)scheduleInterVisitScanForAdvertisement:(id)advertisement deviceRecord:(id)record clock:(id)clock
{
  advertisementCopy = advertisement;
  recordCopy = record;
  interVisitScanCount = self->_interVisitScanCount;
  if (interVisitScanCount < [(TAScanRequestSettings *)self->_settings maxInterVisitScanRequests]&& advertisementCopy && !self->_scheduledScanRequest && [(TAScanRequest *)self shouldScanOnAdvertisement:advertisementCopy withDeviceRecord:recordCopy])
  {
    scanDate = [advertisementCopy scanDate];
    [(TAScanRequestSettings *)self->_settings interVisitScanDelay];
    v10 = [scanDate dateByAddingTimeInterval:?];
    scheduledScanRequest = self->_scheduledScanRequest;
    self->_scheduledScanRequest = v10;
  }
}

- (BOOL)shouldScanOnAdvertisement:(id)advertisement withDeviceRecord:(id)record
{
  recordCopy = record;
  address = [advertisement address];
  v7 = [recordCopy isKnownDevice:address];

  return v7 ^ 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      lastScanRequestedDate = [(TAScanRequest *)self lastScanRequestedDate];
      lastScanRequestedDate2 = [(TAScanRequest *)v7 lastScanRequestedDate];
      if (lastScanRequestedDate != lastScanRequestedDate2)
      {
        lastScanRequestedDate3 = [(TAScanRequest *)self lastScanRequestedDate];
        lastScanRequestedDate4 = [(TAScanRequest *)v7 lastScanRequestedDate];
        if (![lastScanRequestedDate3 isEqual:lastScanRequestedDate4])
        {
          v10 = 0;
          goto LABEL_22;
        }
      }

      interVisitScanCount = [(TAScanRequest *)self interVisitScanCount];
      if (interVisitScanCount != [(TAScanRequest *)v7 interVisitScanCount])
      {
        v10 = 0;
        goto LABEL_21;
      }

      settings = [(TAScanRequest *)self settings];
      settings2 = [(TAScanRequest *)v7 settings];
      v14 = settings2;
      if (settings == settings2)
      {
        v27 = settings2;
      }

      else
      {
        settings3 = [(TAScanRequest *)self settings];
        settings4 = [(TAScanRequest *)v7 settings];
        if (![settings3 isEqual:?])
        {
          v10 = 0;
LABEL_19:

LABEL_20:
LABEL_21:
          if (lastScanRequestedDate == lastScanRequestedDate2)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        v25 = settings3;
        v27 = v14;
      }

      scheduledScanRequest = [(TAScanRequest *)self scheduledScanRequest];
      scheduledScanRequest2 = [(TAScanRequest *)v7 scheduledScanRequest];
      v18 = scheduledScanRequest2;
      if (scheduledScanRequest == scheduledScanRequest2)
      {

        v10 = 1;
      }

      else
      {
        [(TAScanRequest *)self scheduledScanRequest];
        v19 = v24 = lastScanRequestedDate3;
        [(TAScanRequest *)v7 scheduledScanRequest];
        v23 = settings;
        v21 = v20 = lastScanRequestedDate4;
        v10 = [v19 isEqual:v21];

        lastScanRequestedDate4 = v20;
        settings = v23;

        lastScanRequestedDate3 = v24;
      }

      v14 = v27;
      settings3 = v25;
      if (settings == v27)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v10 = 0;
  }

LABEL_24:

  return v10;
}

- (TAScanRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TAScanRequest;
  v5 = [(TAScanRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastScan"];
    lastScanRequestedDate = v5->_lastScanRequestedDate;
    v5->_lastScanRequestedDate = v8;

    v5->_interVisitScanCount = [coderCopy decodeIntegerForKey:@"InterScanCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ScanSchedule"];
    scheduledScanRequest = v5->_scheduledScanRequest;
    v5->_scheduledScanRequest = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  settings = self->_settings;
  coderCopy = coder;
  [coderCopy encodeObject:settings forKey:@"Settings"];
  [coderCopy encodeObject:self->_lastScanRequestedDate forKey:@"LastScan"];
  [coderCopy encodeInteger:self->_interVisitScanCount forKey:@"InterScanCount"];
  [coderCopy encodeObject:self->_scheduledScanRequest forKey:@"ScanSchedule"];
}

@end