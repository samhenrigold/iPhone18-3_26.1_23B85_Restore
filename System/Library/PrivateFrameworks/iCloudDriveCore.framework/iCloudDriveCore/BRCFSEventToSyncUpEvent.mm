@interface BRCFSEventToSyncUpEvent
- (id)additionalPayload;
- (id)associatedAppTelemetryEvent;
- (id)subDescription;
@end

@implementation BRCFSEventToSyncUpEvent

- (id)additionalPayload
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"isPackage";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPackage];
  v9[0] = v3;
  v8[1] = @"contentSize";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_contentSize];
  v9[1] = v4;
  v8[2] = @"syncUpBatchSize";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncUpBatchSize];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)subDescription
{
  v3 = MEMORY[0x277CCACA8];
  debugItemIDString = [(BRCItemID *)self->_itemID debugItemIDString];
  v5 = debugItemIDString;
  if (self->_isPackage)
  {
    v6 = "pkg ";
  }

  else
  {
    v6 = "";
  }

  v7 = [v3 stringWithFormat:@" i:%@ %ssz:%lld su-batch:%lld", debugItemIDString, v6, self->_contentSize, self->_syncUpBatchSize];

  return v7;
}

- (id)associatedAppTelemetryEvent
{
  [(BRCEventMetric *)self duration];
  v2 = [AppTelemetryTimeSeriesEvent newFSEventToSyncUpEventWithDuration:?];

  return v2;
}

@end