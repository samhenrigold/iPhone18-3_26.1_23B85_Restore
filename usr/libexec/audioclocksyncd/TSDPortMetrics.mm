@interface TSDPortMetrics
- (TSDPortMetrics)initWithPort:(id)port;
- (id)getDelta:(id)delta;
- (void)calculatePercentages;
@end

@implementation TSDPortMetrics

- (void)calculatePercentages
{
  totalMeasurements = self->_totalMeasurements;
  if (totalMeasurements)
  {
    v3 = 100 * self->_droppedMeasurements / totalMeasurements;
    v4 = 100 * self->_discardedPpmLimitMeasurements / totalMeasurements;
    v5 = 100 * self->_discardedDelayLimitExceededMeasurements / totalMeasurements;
    v6 = 100 * self->_discardedOutOfBoundsMeasurements / totalMeasurements;
    v7 = 100 * self->_discardedTimestampsOutOfOrderMeasurements / totalMeasurements;
    totalMeasurements = 100 * self->_successfulMeasurements / totalMeasurements;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  self->_droppedPercentage = v3;
  self->_discardedPpmLimitPercentage = v4;
  self->_discardedDelayLimitExceededPercentage = v5;
  self->_discardedOutOfBoundsPercentage = v6;
  self->_discardedTimestampsOutOfOrderPercentage = v7;
  self->_successfulPercentage = totalMeasurements;
}

- (TSDPortMetrics)initWithPort:(id)port
{
  portCopy = port;
  objc_storeStrong(&self->_port, port);
  service = [(TSDgPTPPort *)self->_port service];
  iodProperties = [service iodProperties];

  self->_portNumber = [portCopy portNumber];
  v8 = [iodProperties objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
  if (v8)
  {
    v9 = [iodProperties objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
    self->_syncTimeouts = [v9 unsignedIntValue];
  }

  else
  {
    self->_syncTimeouts = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetDroppedLimitCounter"];
    if (v10)
    {
      v11 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetDroppedLimitCounter"];
      self->_filterResetsDroppedLimit = [v11 unsignedIntValue];
    }

    else
    {
      self->_filterResetsDroppedLimit = 0;
    }

    v12 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetOutOfBoundsCounter"];
    if (v12)
    {
      v13 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementFilterResetOutOfBoundsCounter"];
      self->_filterResetsOutOfBounds = [v13 unsignedIntValue];
    }

    else
    {
      self->_filterResetsOutOfBounds = 0;
    }

    v14 = [iodProperties objectForKeyedSubscript:@"LinkPropagationMeanDelay"];
    if (v14)
    {
      v15 = [iodProperties objectForKeyedSubscript:@"LinkPropagationMeanDelay"];
      self->_meanDelayTime = [v15 unsignedIntValue];
    }

    else
    {
      self->_meanDelayTime = 0;
    }

    v16 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDroppedCounter"];
    if (v16)
    {
      v17 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDroppedCounter"];
      self->_droppedMeasurements = [v17 unsignedIntValue];
    }

    else
    {
      self->_droppedMeasurements = 0;
    }

    v18 = [iodProperties objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
    if (v18)
    {
      v19 = [iodProperties objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
      unsignedIntValue = [v19 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    self->_totalMeasurements = self->_droppedMeasurements + unsignedIntValue;
    v21 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardPPMLimitCounter"];
    if (v21)
    {
      v22 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardPPMLimitCounter"];
      self->_discardedPpmLimitMeasurements = [v22 unsignedIntValue];
    }

    else
    {
      self->_discardedPpmLimitMeasurements = 0;
    }

    v23 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardDelayLimitExceededCounter"];
    if (v23)
    {
      v24 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardDelayLimitExceededCounter"];
      self->_discardedDelayLimitExceededMeasurements = [v24 unsignedIntValue];
    }

    else
    {
      self->_discardedDelayLimitExceededMeasurements = 0;
    }

    v25 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardOutOfBoundsCounter"];
    if (v25)
    {
      v26 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardOutOfBoundsCounter"];
      self->_discardedOutOfBoundsMeasurements = [v26 unsignedIntValue];
    }

    else
    {
      self->_discardedOutOfBoundsMeasurements = 0;
    }

    v27 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardTimestampsOutOfOrderCounter"];
    if (v27)
    {
      v28 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementDiscardTimestampsOutOfOrderCounter"];
      self->_discardedTimestampsOutOfOrderMeasurements = [v28 unsignedIntValue];
    }

    else
    {
      self->_discardedTimestampsOutOfOrderMeasurements = 0;
    }

    v29 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementSuccessCounter"];
    if (v29)
    {
      v30 = [iodProperties objectForKeyedSubscript:@"SyncMeasurementSuccessCounter"];
      self->_successfulMeasurements = [v30 unsignedIntValue];
    }

    else
    {
      self->_successfulMeasurements = 0;
    }

    [(TSDPortMetrics *)self calculatePercentages];
  }

  return self;
}

- (id)getDelta:(id)delta
{
  deltaCopy = delta;
  v5 = objc_alloc_init(TSDPortMetrics);
  [(TSDPortMetrics *)v5 setPortNumber:self->_portNumber];
  -[TSDPortMetrics setSyncTimeouts:](v5, "setSyncTimeouts:", self->_syncTimeouts - [deltaCopy syncTimeouts]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[TSDPortMetrics setFilterResetsDroppedLimit:](v5, "setFilterResetsDroppedLimit:", self->_filterResetsDroppedLimit - [deltaCopy filterResetsDroppedLimit]);
    -[TSDPortMetrics setFilterResetsOutOfBounds:](v5, "setFilterResetsOutOfBounds:", self->_filterResetsOutOfBounds - [deltaCopy filterResetsOutOfBounds]);
    -[TSDPortMetrics setDroppedMeasurements:](v5, "setDroppedMeasurements:", self->_droppedMeasurements - [deltaCopy droppedMeasurements]);
    -[TSDPortMetrics setDiscardedPpmLimitMeasurements:](v5, "setDiscardedPpmLimitMeasurements:", self->_discardedPpmLimitMeasurements - [deltaCopy discardedPpmLimitMeasurements]);
    -[TSDPortMetrics setDiscardedDelayLimitExceededMeasurements:](v5, "setDiscardedDelayLimitExceededMeasurements:", self->_discardedDelayLimitExceededMeasurements - [deltaCopy discardedDelayLimitExceededMeasurements]);
    -[TSDPortMetrics setDiscardedOutOfBoundsMeasurements:](v5, "setDiscardedOutOfBoundsMeasurements:", self->_discardedOutOfBoundsMeasurements - [deltaCopy discardedOutOfBoundsMeasurements]);
    -[TSDPortMetrics setDiscardedTimestampsOutOfOrderMeasurements:](v5, "setDiscardedTimestampsOutOfOrderMeasurements:", self->_discardedTimestampsOutOfOrderMeasurements - [deltaCopy discardedTimestampsOutOfOrderMeasurements]);
    -[TSDPortMetrics setSuccessfulMeasurements:](v5, "setSuccessfulMeasurements:", self->_successfulMeasurements - [deltaCopy successfulMeasurements]);
    -[TSDPortMetrics setTotalMeasurements:](v5, "setTotalMeasurements:", self->_totalMeasurements - [deltaCopy totalMeasurements]);
    [(TSDPortMetrics *)v5 calculatePercentages];
  }

  return v5;
}

@end