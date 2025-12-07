@interface RCWaveformSegment
+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)segments;
+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)segments mergedLevelsDuration:(double)duration;
+ (id)_segmentByMergingMergableSegments:(id)segments;
+ (id)_segmentsByJoiningSegment:(id)segment toSegmentIfNecessaryWithGreaterSegment:(id)greaterSegment averagePowerLevelJoinLimit:(unint64_t)limit;
+ (id)emptySegmentWithTimeRange:(id)range;
+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration;
+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration beforeTime:(double)time andThenUsePreferredSegmentDuration:(double)segmentDuration;
+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)segments;
+ (id)segmentsByShiftingSegments:(id)segments byTimeOffset:(double)offset;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange;
- (BOOL)hasUniformPowerLevel:(float)level;
- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)segment;
- (BOOL)isWaveformDataEqualToDataInSegment:(id)segment;
- (RCWaveformSegment)initWithCoder:(id)coder;
- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelData:(id)data;
- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelVector:(void *)vector;
- (id)_initWithTimeRange:(id)range averagePowerLevelData:(id)data;
- (id)_segmentWithValuesInContainedTimeRange:(id)range;
- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit;
- (id)copyWithAdjustedTimeRange:(id)range;
- (id)copyWithTimeRangeOffsetByTimeOffset:(double)offset;
- (id)segmentByClippingToTimeRange:(id)range;
- (id)segmentsByJoiningIfSmallSegment:(id)segment;
- (id)segmentsByJoiningIfSmallSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit;
- (id)simpleDescription;
- (id)verboseDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCWaveformSegment

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [RCWaveformSegment setVersion:1];
  }
}

+ (id)emptySegmentWithTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v5 = [self alloc];
  data = [MEMORY[0x277CBEA90] data];
  v7 = [v5 _initWithTimeRange:data averagePowerLevelData:{var0, var1}];

  return v7;
}

- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelData:(id)data
{
  var1 = range.var1;
  var0 = range.var0;
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:33 description:{@"invalid segment data.  if this segment really has no data, use +emptySegmentWithTimeRange:"}];
  }

  var1 = [(RCWaveformSegment *)self _initWithTimeRange:dataCopy averagePowerLevelData:var0, var1];

  return var1;
}

- (id)_initWithTimeRange:(id)range averagePowerLevelData:(id)data
{
  var1 = range.var1;
  var0 = range.var0;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = RCWaveformSegment;
  v9 = [(RCWaveformSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_timeRange.beginTime = var0;
    v9->_timeRange.endTime = var1;
    objc_storeStrong(&v9->_averagePowerLevelData, data);
    v10->_isRendered = 0;
  }

  return v10;
}

- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelVector:(void *)vector
{
  var1 = range.var1;
  var0 = range.var0;
  if (*(vector + 1) == *vector)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:*vector length:*(vector + 1) - *vector];
    memcpy([v8 mutableBytes], *vector, *(vector + 1) - *vector);
  }

  var1 = [(RCWaveformSegment *)self initWithTimeRange:v8 averagePowerLevelData:var0, var1];
  v10 = var1;
  if (var1)
  {
    var1->_timeRange.beginTime = var0;
    var1->_timeRange.endTime = var1;
  }

  return v10;
}

- (id)verboseDescription
{
  simpleDescription = [(RCWaveformSegment *)self simpleDescription];
  v4 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
  averagePowerLevelsCount = [(RCWaveformSegment *)self averagePowerLevelsCount];
  array = [MEMORY[0x277CBEB18] array];
  v7 = 0;
  v8 = v4 / averagePowerLevelsCount;
  while (v7 < [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    averagePowerLevels = [(RCWaveformSegment *)self averagePowerLevels];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%.3fs] %.2f", v8 * v7, averagePowerLevels[v7]];
    [array addObject:v10];

    ++v7;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [array componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"%@ %@", simpleDescription, v12];

  return v13;
}

- (id)simpleDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RCWaveformSegment;
  v4 = [(RCWaveformSegment *)&v8 description];
  v5 = NSStringFromRCTimeRange(self->_timeRange.beginTime, self->_timeRange.endTime);
  v6 = [v3 stringWithFormat:@"%@: timeRange=%@, levelCount=%d", v4, v5, -[RCWaveformSegment averagePowerLevelsCount](self, "averagePowerLevelsCount")];

  return v6;
}

- (RCWaveformSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_timeRange.beginTime = RCTimeRangeDecodeWithKey(coderCopy, @"RCTimeRange");
  self->_timeRange.endTime = v5;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RCAveragePowerLevelVectorData"];
  averagePowerLevelData = self->_averagePowerLevelData;
  self->_averagePowerLevelData = v6;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  RCTimeRangeEncodeWithKey(coderCopy, @"RCTimeRange", self->_timeRange.beginTime, self->_timeRange.endTime);
  [coderCopy encodeObject:self->_averagePowerLevelData forKey:@"RCAveragePowerLevelVectorData"];
}

- (BOOL)hasUniformPowerLevel:(float)level
{
  if (![(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    return 0;
  }

  if (![(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = [(RCWaveformSegment *)self averagePowerLevels][4 * v5];
    v7 = v6 == level;
    if (v6 != level)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(RCWaveformSegment *)self averagePowerLevelsCount]);
  return v7;
}

- (BOOL)isWaveformDataEqualToDataInSegment:(id)segment
{
  if (segment == self)
  {
    return 1;
  }

  else
  {
    return [(NSData *)self->_averagePowerLevelData isEqual:*(segment + 1)];
  }
}

- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)segment
{
  segmentCopy = segment;
  v5 = segmentCopy;
  if (segmentCopy == self)
  {
    goto LABEL_10;
  }

  averagePowerLevelsCount = [(RCWaveformSegment *)segmentCopy averagePowerLevelsCount];
  if (averagePowerLevelsCount != [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v11 = 0;
    goto LABEL_12;
  }

  averagePowerLevelsCount2 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (!averagePowerLevelsCount2)
  {
LABEL_10:
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = averagePowerLevelsCount2 - 1;
    do
    {
      v10 = RCEqualFloatsWithTolerance([(RCWaveformSegment *)self averagePowerLevels][4 * v8], [(RCWaveformSegment *)v5 averagePowerLevels][4 * v8], 0.1);
      v11 = v10;
    }

    while (v9 != v8++ && v10);
  }

LABEL_12:

  return v11;
}

- (id)copyWithTimeRangeOffsetByTimeOffset:(double)offset
{
  v4 = self->_timeRange.beginTime + offset;
  v5 = self->_timeRange.endTime + offset;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{v4, v5}];
}

- (id)copyWithAdjustedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{var0, var1}];
}

+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)segments
{
  v3 = [self _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:segments];

  return v3;
}

+ (id)segmentsByShiftingSegments:(id)segments byTimeOffset:(double)offset
{
  v18 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  if ([segmentsCopy count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(segmentsCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = segmentsCopy;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) copyWithTimeRangeOffsetByTimeOffset:{offset, v13}];
          [v6 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = [segmentsCopy mutableCopy];
  }

  return v6;
}

+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration beforeTime:(double)time andThenUsePreferredSegmentDuration:(double)segmentDuration
{
  v56 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  if ([segmentsCopy count] <= 1)
  {
    array2 = segmentsCopy;
    goto LABEL_42;
  }

  v44 = segmentsCopy;
  v45 = [segmentsCopy mutableCopy];
  if (v45)
  {
    v12 = MEMORY[0x277CBEB18];
    array = [MEMORY[0x277CBEB18] array];
    v14 = [v12 arrayWithObject:array];

    array2 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = v45;
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v16)
    {
      v17 = *v51;
      v18 = 0.0;
      segmentDurationCopy = duration;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v50 + 1) + 8 * i);
          objc_msgSend_timeRange(v21);
          v23 = v22;
          v25 = v24;
          if (v22 >= time && segmentDurationCopy == duration)
          {
            array3 = [MEMORY[0x277CBEB18] array];
            [v14 addObject:array3];

            segmentDurationCopy = segmentDuration;
          }

          lastObject = [v14 lastObject];
          if (![lastObject count])
          {
            v18 = v23;
          }

          [lastObject addObject:v21];
          if (v25 - v18 >= segmentDurationCopy)
          {
            array4 = [MEMORY[0x277CBEB18] array];
            [v14 addObject:array4];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v16);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v30 = v14;
    v31 = [v30 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v31)
    {
      v32 = *v47;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v46 + 1) + 8 * j);
          if ([v34 count] == 1)
          {
            firstObject = [v34 objectAtIndexedSubscript:0];
            [array2 addObject:firstObject];
          }

          else
          {
            if ([v34 count] < 2)
            {
              continue;
            }

            firstObject = [v34 firstObject];
            lastObject2 = [v34 lastObject];
            objc_msgSend_timeRange(firstObject);
            v38 = v37;
            objc_msgSend_timeRange(lastObject2);
            v40 = v39 - v38;
            if (v38 >= time)
            {
              durationCopy2 = segmentDuration;
            }

            else
            {
              durationCopy2 = duration;
            }

            if (v40 >= durationCopy2)
            {
              v42 = [self _segmentByMergingMergableSegments:v34];
              [array2 addObject:v42];
            }

            else
            {
              [array2 addObjectsFromArray:v34];
            }
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v31);
    }
  }

  else
  {
    array2 = segmentsCopy;
  }

  segmentsCopy = v44;
LABEL_42:

  return array2;
}

+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration
{
  v4 = [self segmentsByMergingSegments:segments preferredSegmentDuration:duration beforeTime:1.79769313e308 andThenUsePreferredSegmentDuration:1.0];

  return v4;
}

- (id)segmentsByJoiningIfSmallSegment:(id)segment
{
  v3 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:segment averagePowerLevelJoinLimit:8];

  return v3;
}

- (id)segmentsByJoiningIfSmallSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit
{
  v21 = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (!segmentCopy)
  {
    selfCopy = self;
    v11 = &selfCopy;
    v12 = 1;
LABEL_5:
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:{v12, selfCopy2, v19, selfCopy, v21}];
    goto LABEL_8;
  }

  objc_msgSend_timeRange(self);
  v8 = v7;
  objc_msgSend_timeRange(segmentCopy);
  if (v8 == v9)
  {
    v10 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:segmentCopy averagePowerLevelJoinLimit:limit];
    goto LABEL_8;
  }

  objc_msgSend_timeRange(segmentCopy);
  v14 = v13;
  objc_msgSend_timeRange(self);
  if (v14 != v15)
  {
    selfCopy2 = self;
    v19 = segmentCopy;
    v11 = &selfCopy2;
    v12 = 2;
    goto LABEL_5;
  }

  v10 = [segmentCopy _segmentsByJoiningIfNecessaryGreaterSegment:self averagePowerLevelJoinLimit:limit];
LABEL_8:
  v16 = v10;

  return v16;
}

- (id)segmentByClippingToTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  objc_msgSend_timeRange(self, a2);
  if (RCTimeRangeEqualToTimeRange(var0, var1, v6, v7) || (objc_msgSend_timeRange(self), RCTimeRangeContainsRange(var0, var1, v8, v9)) || (objc_msgSend_timeRange(self), RCTimeRangeContainsRange(var0, var1, v10, v11)))
  {
    selfCopy = self;
  }

  else
  {
    objc_msgSend_timeRange(self);
    if (v14 > var1)
    {
      objc_msgSend_timeRange(self);
      if (v15 <= var1)
      {
        goto LABEL_16;
      }
    }

    objc_msgSend_timeRange(self);
    if (var0 < v16)
    {
      var0 = v16;
    }

    objc_msgSend_timeRange(self);
    if (var1 < v17)
    {
      v17 = var1;
    }

    if (var0 >= v17)
    {
LABEL_16:
      selfCopy = 0;
    }

    else
    {
      RCTimeRangeMake();
      selfCopy = [(RCWaveformSegment *)self _segmentWithValuesInContainedTimeRange:?];
    }
  }

  return selfCopy;
}

+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)segments
{
  segmentsCopy = segments;
  if ([segmentsCopy count] > 1)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(segmentsCopy, "count")}];
    for (i = 1; i < [segmentsCopy count]; i = v8 + 1)
    {
      v6 = i - 1;
      v7 = [segmentsCopy objectAtIndexedSubscript:i - 1];
      v8 = v6 + 1;
      v9 = [segmentsCopy objectAtIndexedSubscript:v6 + 1];
      objc_msgSend_timeRange(v9);
      v11 = v10;
      objc_msgSend_timeRange(v7);
      if (vabdd_f64(v11, v12) > 0.01)
      {
        objc_msgSend_timeRange(v7);
        v13 = [v7 copyWithAdjustedTimeRange:?];

        v7 = v13;
      }

      [v4 addObject:v7];
    }

    lastObject = [segmentsCopy lastObject];
    [v4 addObject:lastObject];
  }

  else
  {
    v4 = segmentsCopy;
  }

  return v4;
}

- (id)_segmentWithValuesInContainedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  averagePowerLevelsCount = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (averagePowerLevelsCount)
  {
    v8 = averagePowerLevelsCount;
    objc_msgSend_timeRange(self);
    if (!RCTimeRangeContainsRange(v9, v10, var0, var1))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:355 description:@"Invalid argment"];
    }

    v11 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
    v12 = v11 / [(RCWaveformSegment *)self averagePowerLevelsCount];
    objc_msgSend_timeRange(self);
    v14 = (var0 - v13) / v12;
    if (v8 - 1 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v8 - 1;
    }

    objc_msgSend_timeRange(self);
    v17 = v16 + (v12 * v15);
    v18 = RCTimeRangeDeltaWithExactPrecision(v17, var1);
    if (v8 == v15)
    {
      v19 = 0;
    }

    else
    {
      v20 = vcvtpd_u64_f64(v18 / v12);
      if (v20 <= 1)
      {
        v20 = 1;
      }

      if (v8 - v15 >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v8 - v15;
      }

      v22 = [MEMORY[0x277CBEB28] dataWithLength:4 * v21];
      memmove([v22 mutableBytes], -[RCWaveformSegment averagePowerLevels](self, "averagePowerLevels") + 4 * v15, 4 * v21);
      v19 = [[RCWaveformSegment alloc] initWithTimeRange:v22 averagePowerLevelData:v17, v17 + (v12 * v21)];
    }
  }

  else
  {
    v19 = [objc_opt_class() emptySegmentWithTimeRange:{var0, var1}];
  }

  return v19;
}

- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit
{
  v15[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (segmentCopy)
  {
    v7 = objc_opt_class();
    v14[0] = self;
    v14[1] = segmentCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v9 = [v7 _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:v8];

    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:1];
    v12 = [RCWaveformSegment _segmentsByJoiningSegment:v10 toSegmentIfNecessaryWithGreaterSegment:v11 averagePowerLevelJoinLimit:limit];
  }

  else
  {
    v15[0] = self;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  return v12;
}

+ (id)_segmentsByJoiningSegment:(id)segment toSegmentIfNecessaryWithGreaterSegment:(id)greaterSegment averagePowerLevelJoinLimit:(unint64_t)limit
{
  v51[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  greaterSegmentCopy = greaterSegment;
  objc_msgSend_timeRange(segmentCopy);
  v11 = RCTimeRangeDeltaWithExactPrecision(v9, v10);
  objc_msgSend_timeRange(greaterSegmentCopy);
  v14 = RCTimeRangeDeltaWithExactPrecision(v12, v13);
  if ([segmentCopy averagePowerLevelsCount] <= 1)
  {
    objc_msgSend_timeRange(segmentCopy);
    objc_msgSend_timeRange(greaterSegmentCopy);
    RCTimeRangeMake();
    v15 = [greaterSegmentCopy copyWithAdjustedTimeRange:?];
    v51[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
LABEL_5:
    v17 = v16;
LABEL_6:

    goto LABEL_7;
  }

  if ([greaterSegmentCopy averagePowerLevelsCount] <= 1)
  {
    objc_msgSend_timeRange(segmentCopy);
    objc_msgSend_timeRange(greaterSegmentCopy);
    RCTimeRangeMake();
    v15 = [segmentCopy copyWithAdjustedTimeRange:?];
    v50 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    goto LABEL_5;
  }

  averagePowerLevelsCount = [segmentCopy averagePowerLevelsCount];
  if ([greaterSegmentCopy averagePowerLevelsCount] + averagePowerLevelsCount < limit)
  {
    v20 = v11;
    v21 = v14;
    if ((v20 + v21) > 0.0)
    {
      objc_msgSend_timeRange(segmentCopy);
      objc_msgSend_timeRange(greaterSegmentCopy);
      RCTimeRangeMake();
      v23 = v22;
      v25 = v24;
      objc_msgSend_timeRange(segmentCopy);
      v28 = RCTimeRangeDeltaWithExactPrecision(v26, v27);
      averagePowerLevelsCount2 = [segmentCopy averagePowerLevelsCount];
      objc_msgSend_timeRange(greaterSegmentCopy);
      v32 = RCTimeRangeDeltaWithExactPrecision(v30, v31);
      averagePowerLevelsCount3 = [greaterSegmentCopy averagePowerLevelsCount];
      v34 = v28;
      v35 = v34 / averagePowerLevelsCount2;
      v36 = v32;
      v37 = v36 / averagePowerLevelsCount3;
      if (v35 > 0.0)
      {
        if (v37 <= 0.0)
        {
          v37 = v34 / averagePowerLevelsCount2;
        }

        else if (v35 < v37)
        {
          v37 = v34 / averagePowerLevelsCount2;
        }
      }

      v38 = (RCTimeRangeDeltaWithExactPrecision(v23, v25) / v37);
      v15 = [MEMORY[0x277CBEB28] dataWithLength:4 * v38];
      mutableBytes = [v15 mutableBytes];
      if (v38)
      {
        v40 = mutableBytes;
        for (i = 0; i != v38; ++i)
        {
          objc_msgSend_timeRange(segmentCopy);
          v42 = v37 * i;
          if (v43 <= v42)
          {
            averagePowerLevels = [greaterSegmentCopy averagePowerLevels];
            v45 = (v42 - v34);
            v46 = v36;
          }

          else
          {
            averagePowerLevels = [segmentCopy averagePowerLevels];
            v45 = v42;
            v46 = v34;
          }

          *(v40 + 4 * i) = *(averagePowerLevels + 4 * (v45 / v46));
        }
      }

      v47 = [[RCWaveformSegment alloc] initWithTimeRange:v15 averagePowerLevelData:v23, v25];
      v49 = v47;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];

      goto LABEL_6;
    }
  }

  v48[0] = segmentCopy;
  v48[1] = greaterSegmentCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
LABEL_7:

  return v17;
}

+ (id)_segmentByMergingMergableSegments:(id)segments
{
  v25 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  if ([segmentsCopy count])
  {
    if (segmentsCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    v6 = [0 objectAtIndexedSubscript:0];
    goto LABEL_18;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RCWaveformSegment.mm" lineNumber:441 description:@"Invalid paremeter"];

  if (!segmentsCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ([segmentsCopy count] == 1)
  {
    v6 = [segmentsCopy objectAtIndexedSubscript:0];
LABEL_18:
    v17 = v6;
    goto LABEL_19;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = segmentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        objc_msgSend_timeRange(v12, v20);
        v15 = RCTimeRangeDeltaWithExactPrecision(v13, v14);
        v10 = v10 + v15 / [v12 averagePowerLevelsCount];
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v16 = v10 / [v7 count];
  v17 = [self _mergedSegmentByFastMergingWithMergeableSegments:v7 mergedLevelsDuration:v16];
  if (!v17)
  {
    v6 = [self _mergedSegmentByResamplingWithMergeableSegments:v7 mergedLevelsDuration:v16];
    goto LABEL_18;
  }

LABEL_19:

  return v17;
}

+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)segments mergedLevelsDuration:(double)duration
{
  segmentsCopy = segments;
  firstObject = [segmentsCopy firstObject];
  lastObject = [segmentsCopy lastObject];
  objc_msgSend_timeRange(firstObject);
  objc_msgSend_timeRange(lastObject);
  RCTimeRangeMake();
  v7 = v6;
  v9 = v8;
  v10 = (RCTimeRangeDeltaWithExactPrecision(v6, v8) / duration);
  v39 = [MEMORY[0x277CBEB28] dataWithLength:4 * v10];
  mutableBytes = [v39 mutableBytes];
  if (v10)
  {
    v12 = mutableBytes;
    v13 = 0;
    for (i = 0; i != v10; ++i)
    {
      objc_msgSend_timeRange(firstObject);
      v16 = v15 + i * duration;
      v17 = v13;
      do
      {
        v13 = v17;
        if (v17 >= [segmentsCopy count])
        {
          break;
        }

        v18 = [segmentsCopy objectAtIndexedSubscript:v17];
        objc_msgSend_timeRange(v18);
        v21 = RCTimeRangeContainsTime(v19, v20, v16);
        ++v17;
      }

      while (!v21);
      if ([segmentsCopy count] == v13)
      {
        break;
      }

      v22 = [segmentsCopy objectAtIndexedSubscript:v13];
      objc_msgSend_timeRange(v22);
      v25 = RCTimeRangeDeltaWithExactPrecision(v23, v24);
      averagePowerLevelsCount = [v22 averagePowerLevelsCount];
      objc_msgSend_timeRange(v22);
      v28 = v27;
      averagePowerLevelsCount2 = [v22 averagePowerLevelsCount];
      v30 = (v16 - v28) / (v25 / averagePowerLevelsCount);
      if (averagePowerLevelsCount2 - 1 >= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = averagePowerLevelsCount2 - 1;
      }

      v32 = [segmentsCopy objectAtIndexedSubscript:v13];
      v33 = v31 + 1;
      if (v31 + 1 >= ([v22 averagePowerLevelsCount] - 1))
      {
        if (v13 + 1 >= [segmentsCopy count])
        {
          v33 = v31;
        }

        else
        {
          v34 = [segmentsCopy objectAtIndexedSubscript:?];

          v33 = 0;
          v32 = v34;
        }
      }

      v35 = *([v22 averagePowerLevels] + 4 * v31);
      v36 = *([v32 averagePowerLevels] + 4 * v33);
      if (v35 >= v36)
      {
        v36 = v35;
      }

      *(v12 + 4 * i) = v36;
    }
  }

  v37 = [[RCWaveformSegment alloc] initWithTimeRange:v39 averagePowerLevelData:v7, v9];

  return v37;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange
{
  beginTime = self->_timeRange.beginTime;
  endTime = self->_timeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end