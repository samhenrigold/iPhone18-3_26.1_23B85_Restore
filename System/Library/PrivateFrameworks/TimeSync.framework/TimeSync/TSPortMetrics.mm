@interface TSPortMetrics
- (TSPortMetrics)initWithDaemonMetrics:(id)metrics;
- (TSPortMetrics)initWithInterfaceMetrics:(id *)metrics;
- (id)toDaemonMetrics;
- (void)printMetrics;
@end

@implementation TSPortMetrics

- (TSPortMetrics)initWithDaemonMetrics:(id)metrics
{
  metricsCopy = metrics;
  self->_portNumber = [metricsCopy portNumber];
  self->_syncTimeouts = [metricsCopy syncTimeouts];
  self->_filterResetsDroppedLimit = [metricsCopy filterResetsDroppedLimit];
  self->_filterResetsOutOfBounds = [metricsCopy filterResetsOutOfBounds];
  self->_meanDelayTime = [metricsCopy meanDelayTime];
  self->_droppedMeasurements = [metricsCopy droppedMeasurements];
  self->_discardedPpmLimitMeasurements = [metricsCopy discardedPpmLimitMeasurements];
  self->_discardedDelayLimitExceededMeasurements = [metricsCopy discardedDelayLimitExceededMeasurements];
  self->_discardedOutOfBoundsMeasurements = [metricsCopy discardedOutOfBoundsMeasurements];
  self->_discardedTimestampsOutOfOrderMeasurements = [metricsCopy discardedTimestampsOutOfOrderMeasurements];
  self->_successfulMeasurements = [metricsCopy successfulMeasurements];
  self->_totalMeasurements = [metricsCopy totalMeasurements];
  self->_droppedPercentage = [metricsCopy droppedPercentage];
  self->_discardedPpmLimitPercentage = [metricsCopy discardedPpmLimitPercentage];
  self->_discardedDelayLimitExceededPercentage = [metricsCopy discardedDelayLimitExceededPercentage];
  self->_discardedOutOfBoundsPercentage = [metricsCopy discardedOutOfBoundsPercentage];
  self->_discardedTimestampsOutOfOrderPercentage = [metricsCopy discardedTimestampsOutOfOrderPercentage];
  successfulPercentage = [metricsCopy successfulPercentage];

  self->_successfulPercentage = successfulPercentage;
  return self;
}

- (id)toDaemonMetrics
{
  v2 = [_TSF_TSDPortMetrics alloc];
  [(_TSF_TSDPortMetrics *)v2 setPortNumber:?];
  [(_TSF_TSDPortMetrics *)v2 setSyncTimeouts:?];
  [(_TSF_TSDPortMetrics *)v2 setFilterResetsDroppedLimit:?];
  [(_TSF_TSDPortMetrics *)v2 setFilterResetsOutOfBounds:?];
  [(_TSF_TSDPortMetrics *)v2 setMeanDelayTime:?];
  [(_TSF_TSDPortMetrics *)v2 setDroppedMeasurements:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedPpmLimitMeasurements:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedDelayLimitExceededMeasurements:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedOutOfBoundsMeasurements:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedTimestampsOutOfOrderMeasurements:?];
  [(_TSF_TSDPortMetrics *)v2 setSuccessfulMeasurements:?];
  [(_TSF_TSDPortMetrics *)v2 setTotalMeasurements:?];
  [(_TSF_TSDPortMetrics *)v2 setDroppedPercentage:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedPpmLimitPercentage:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedDelayLimitExceededPercentage:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedOutOfBoundsPercentage:?];
  [(_TSF_TSDPortMetrics *)v2 setDiscardedTimestampsOutOfOrderPercentage:?];
  [(_TSF_TSDPortMetrics *)v2 setSuccessfulPercentage:?];

  return v2;
}

- (TSPortMetrics)initWithInterfaceMetrics:(id *)metrics
{
  self->_portNumber = metrics->var0;
  v3 = *(&metrics->var2 + 2);
  *&self->_syncTimeouts = *(&metrics->var0 + 1);
  *&self->_filterResetsOutOfBounds = v3;
  v4 = *(&metrics->var6 + 2);
  *&self->_droppedMeasurements = *(&metrics->var4 + 2);
  *&self->_discardedDelayLimitExceededMeasurements = v4;
  v5 = *(&metrics->var10 + 2);
  *&self->_discardedTimestampsOutOfOrderMeasurements = *(&metrics->var8 + 2);
  *&self->_totalMeasurements = v5;
  v6 = *(&metrics->var14 + 2);
  *&self->_discardedPpmLimitPercentage = *(&metrics->var12 + 2);
  *&self->_discardedOutOfBoundsPercentage = v6;
  self->_successfulPercentage = *(&metrics->var16 + 2);
  return self;
}

- (void)printMetrics
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    portNumber = self->_portNumber;
    v21 = 67109120;
    LODWORD(v22) = portNumber;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Port = %u\n", &v21, 8u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    syncTimeouts = self->_syncTimeouts;
    v21 = 134217984;
    v22 = syncTimeouts;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Sync Timeouts = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    filterResetsDroppedLimit = self->_filterResetsDroppedLimit;
    v21 = 134217984;
    v22 = filterResetsDroppedLimit;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Filter Resets (Dropped Limit) = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    filterResetsOutOfBounds = self->_filterResetsOutOfBounds;
    v21 = 134217984;
    v22 = filterResetsOutOfBounds;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Filter Resets (Out Of Bounds) = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    meanDelayTime = self->_meanDelayTime;
    v21 = 134217984;
    v22 = meanDelayTime;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Mean Delay Time = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    droppedMeasurements = self->_droppedMeasurements;
    v21 = 134217984;
    v22 = droppedMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Dropped Measurements = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedPpmLimitMeasurements = self->_discardedPpmLimitMeasurements;
    v21 = 134217984;
    v22 = discardedPpmLimitMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded PPM Limit Measurements = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedDelayLimitExceededMeasurements = self->_discardedDelayLimitExceededMeasurements;
    v21 = 134217984;
    v22 = discardedDelayLimitExceededMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Delay Limit Exceeded Measurements = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedOutOfBoundsMeasurements = self->_discardedOutOfBoundsMeasurements;
    v21 = 134217984;
    v22 = discardedOutOfBoundsMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Out Of Bounds Measurements = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedTimestampsOutOfOrderMeasurements = self->_discardedTimestampsOutOfOrderMeasurements;
    v21 = 134217984;
    v22 = discardedTimestampsOutOfOrderMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Timestamps Out Of Order Measurements = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    successfulMeasurements = self->_successfulMeasurements;
    v21 = 134217984;
    v22 = successfulMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Successful Measurements = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    totalMeasurements = self->_totalMeasurements;
    v21 = 134217984;
    v22 = totalMeasurements;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Total Measurements = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    droppedPercentage = self->_droppedPercentage;
    v21 = 134217984;
    v22 = droppedPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Dropped Percentage = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedPpmLimitPercentage = self->_discardedPpmLimitPercentage;
    v21 = 134217984;
    v22 = discardedPpmLimitPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded PPM Limit Percentage = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedDelayLimitExceededPercentage = self->_discardedDelayLimitExceededPercentage;
    v21 = 134217984;
    v22 = discardedDelayLimitExceededPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Delay Limit Exceeded Percentage = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedOutOfBoundsPercentage = self->_discardedOutOfBoundsPercentage;
    v21 = 134217984;
    v22 = discardedOutOfBoundsPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Out Of Bounds Percentage = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    discardedTimestampsOutOfOrderPercentage = self->_discardedTimestampsOutOfOrderPercentage;
    v21 = 134217984;
    v22 = discardedTimestampsOutOfOrderPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Discarded Timestamps Out Of Order Percentage = %zu\n", &v21, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    successfulPercentage = self->_successfulPercentage;
    v21 = 134217984;
    v22 = successfulPercentage;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  Successful Percentage = %zu\n", &v21, 0xCu);
  }
}

@end