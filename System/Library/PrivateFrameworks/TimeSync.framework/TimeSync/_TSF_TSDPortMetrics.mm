@interface _TSF_TSDPortMetrics
- (_TSF_TSDPortMetrics)initWithPort:(id)port;
- (id)getDelta:(id)delta;
- (void)calculatePercentages;
@end

@implementation _TSF_TSDPortMetrics

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

- (_TSF_TSDPortMetrics)initWithPort:(id)port
{
  portCopy = port;
  objc_storeStrong(&self->_port, port);
  service = [(_TSF_TSDgPTPPort *)self->_port service];
  iodProperties = [service iodProperties];

  self->_portNumber = [portCopy portNumber];
  v8 = [iodProperties objectForKeyedSubscript:?];
  if (v8)
  {
    v9 = [iodProperties objectForKeyedSubscript:?];
    self->_syncTimeouts = [v9 unsignedIntValue];
  }

  else
  {
    self->_syncTimeouts = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [iodProperties objectForKeyedSubscript:?];
    if (v10)
    {
      v11 = [iodProperties objectForKeyedSubscript:?];
      self->_filterResetsDroppedLimit = [v11 unsignedIntValue];
    }

    else
    {
      self->_filterResetsDroppedLimit = 0;
    }

    v12 = [iodProperties objectForKeyedSubscript:?];
    if (v12)
    {
      v13 = [iodProperties objectForKeyedSubscript:?];
      self->_filterResetsOutOfBounds = [v13 unsignedIntValue];
    }

    else
    {
      self->_filterResetsOutOfBounds = 0;
    }

    v14 = [iodProperties objectForKeyedSubscript:?];
    if (v14)
    {
      v15 = [iodProperties objectForKeyedSubscript:?];
      self->_meanDelayTime = [v15 unsignedIntValue];
    }

    else
    {
      self->_meanDelayTime = 0;
    }

    v16 = [iodProperties objectForKeyedSubscript:?];
    if (v16)
    {
      v17 = [iodProperties objectForKeyedSubscript:?];
      self->_droppedMeasurements = [v17 unsignedIntValue];
    }

    else
    {
      self->_droppedMeasurements = 0;
    }

    v18 = [iodProperties objectForKeyedSubscript:?];
    if (v18)
    {
      v19 = [iodProperties objectForKeyedSubscript:?];
      unsignedIntValue = [v19 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    self->_totalMeasurements = self->_droppedMeasurements + unsignedIntValue;
    v21 = [iodProperties objectForKeyedSubscript:?];
    if (v21)
    {
      v22 = [iodProperties objectForKeyedSubscript:?];
      self->_discardedPpmLimitMeasurements = [v22 unsignedIntValue];
    }

    else
    {
      self->_discardedPpmLimitMeasurements = 0;
    }

    v23 = [iodProperties objectForKeyedSubscript:?];
    if (v23)
    {
      v24 = [iodProperties objectForKeyedSubscript:?];
      self->_discardedDelayLimitExceededMeasurements = [v24 unsignedIntValue];
    }

    else
    {
      self->_discardedDelayLimitExceededMeasurements = 0;
    }

    v25 = [iodProperties objectForKeyedSubscript:?];
    if (v25)
    {
      v26 = [iodProperties objectForKeyedSubscript:?];
      self->_discardedOutOfBoundsMeasurements = [v26 unsignedIntValue];
    }

    else
    {
      self->_discardedOutOfBoundsMeasurements = 0;
    }

    v27 = [iodProperties objectForKeyedSubscript:?];
    if (v27)
    {
      v28 = [iodProperties objectForKeyedSubscript:?];
      self->_discardedTimestampsOutOfOrderMeasurements = [v28 unsignedIntValue];
    }

    else
    {
      self->_discardedTimestampsOutOfOrderMeasurements = 0;
    }

    v29 = [iodProperties objectForKeyedSubscript:?];
    if (v29)
    {
      v30 = [iodProperties objectForKeyedSubscript:?];
      self->_successfulMeasurements = [v30 unsignedIntValue];
    }

    else
    {
      self->_successfulMeasurements = 0;
    }

    [(_TSF_TSDPortMetrics *)self calculatePercentages];
  }

  return self;
}

- (id)getDelta:(id)delta
{
  deltaCopy = delta;
  v4 = objc_alloc_init(_TSF_TSDPortMetrics);
  [(_TSF_TSDPortMetrics *)v4 setPortNumber:?];
  [deltaCopy syncTimeouts];
  [(_TSF_TSDPortMetrics *)v4 setSyncTimeouts:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [deltaCopy filterResetsDroppedLimit];
    [(_TSF_TSDPortMetrics *)v4 setFilterResetsDroppedLimit:?];
    [deltaCopy filterResetsOutOfBounds];
    [(_TSF_TSDPortMetrics *)v4 setFilterResetsOutOfBounds:?];
    [deltaCopy droppedMeasurements];
    [(_TSF_TSDPortMetrics *)v4 setDroppedMeasurements:?];
    [deltaCopy discardedPpmLimitMeasurements];
    [(_TSF_TSDPortMetrics *)v4 setDiscardedPpmLimitMeasurements:?];
    [deltaCopy discardedDelayLimitExceededMeasurements];
    [(_TSF_TSDPortMetrics *)v4 setDiscardedDelayLimitExceededMeasurements:?];
    [deltaCopy discardedOutOfBoundsMeasurements];
    [(_TSF_TSDPortMetrics *)v4 setDiscardedOutOfBoundsMeasurements:?];
    [deltaCopy discardedTimestampsOutOfOrderMeasurements];
    [(_TSF_TSDPortMetrics *)v4 setDiscardedTimestampsOutOfOrderMeasurements:?];
    [deltaCopy successfulMeasurements];
    [(_TSF_TSDPortMetrics *)v4 setSuccessfulMeasurements:?];
    [deltaCopy totalMeasurements];
    [(_TSF_TSDPortMetrics *)v4 setTotalMeasurements:?];
    [(_TSF_TSDPortMetrics *)v4 calculatePercentages];
  }

  return v4;
}

@end