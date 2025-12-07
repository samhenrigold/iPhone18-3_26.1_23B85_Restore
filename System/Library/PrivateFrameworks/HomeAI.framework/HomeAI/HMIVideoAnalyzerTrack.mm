@interface HMIVideoAnalyzerTrack
- (BOOL)isClassified;
- (BOOL)isExpiredAtTimeStamp:(id *)stamp;
- (BOOL)isLostAtTimeStamp:(id *)stamp;
- (BOOL)isStationaryAtTimeStamp:(id *)stamp;
- (HMIVideoAnalyzerBlob)lastBlob;
- (HMIVideoAnalyzerTrack)initWithBlob:(id)blob trackIndex:(unint64_t)index;
- (float)similarityToBlob:(id)blob;
- (id)blobAtTimeStamp:(id *)stamp;
- (id)createPackageEventAtTimeStamp:(id *)stamp;
- (id)shortDescription;
- (unint64_t)stationaryIndexToBoundingBox:(CGRect)box;
- (void)appendBlob:(id)blob;
@end

@implementation HMIVideoAnalyzerTrack

- (HMIVideoAnalyzerTrack)initWithBlob:(id)blob trackIndex:(unint64_t)index
{
  blobCopy = blob;
  v16.receiver = self;
  v16.super_class = HMIVideoAnalyzerTrack;
  v7 = [(HMIVideoAnalyzerTrack *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_trackIndex = index;
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:?];
    blobs = v8->_blobs;
    v8->_blobs = v9;

    array = [MEMORY[0x277CBEB18] array];
    analysisTimeStamps = v8->_analysisTimeStamps;
    v8->_analysisTimeStamps = array;

    v13 = [MEMORY[0x277CBEB58] set];
    eventClasses = v8->_eventClasses;
    v8->_eventClasses = v13;

    v8->_stationaryBlobIndex = 0;
  }

  return v8;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  firstObject = [blobs firstObject];
  if (firstObject)
  {
    [&time timeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs2 lastObject];
  if (lastObject)
  {
    [&time timeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v7 = CMTimeGetSeconds(&time);
  blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject2 = [blobs3 lastObject];
  [lastObject2 boundingBox];
  v14 = HMICGRectDescription(v10, v11, v12, v13);
  eventClasses = [(HMIVideoAnalyzerTrack *)self eventClasses];
  allObjects = [eventClasses allObjects];
  v17 = [allObjects na_map:?];
  v18 = [v17 componentsJoinedByString:?];
  v19 = [v3 stringWithFormat:*&Seconds, *&v7, v14, v18];

  return v19;
}

- (void)appendBlob:(id)blob
{
  blobCopy = blob;
  if (blobCopy)
  {
    [&lhs timeStamp];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  firstObject = [blobs firstObject];
  if (firstObject)
  {
    [&rhs timeStamp];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeSubtract(&time1, &lhs, &rhs);
  CMTimeMakeWithSeconds(&lhs, 3.0, 1000);
  v7 = CMTimeCompare(&time1, &lhs);

  if (v7 >= 1)
  {
    blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
    [blobs2 hmf_removeFirstObject];

    if ([(HMIVideoAnalyzerTrack *)self stationaryBlobIndex])
    {
      [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex];
      [(HMIVideoAnalyzerTrack *)self setStationaryBlobIndex:?];
    }
  }

  [blobCopy boundingBox];
  v9 = [(HMIVideoAnalyzerTrack *)self stationaryIndexToBoundingBox:?];
  blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
  [blobs3 addObject:?];

  if (v9 > [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex])
  {
    blobs4 = [(HMIVideoAnalyzerTrack *)self blobs];
    v12 = [blobs4 count];

    if (v9 < v12)
    {
      while (1)
      {
        analysisTimeStamps = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        v14 = [analysisTimeStamps count];

        if (!v14)
        {
          break;
        }

        analysisTimeStamps2 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        firstObject2 = [analysisTimeStamps2 firstObject];
        if (firstObject2)
        {
          [&time1 CMTimeValue];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        blobs5 = [(HMIVideoAnalyzerTrack *)self blobs];
        v18 = [blobs5 objectAtIndexedSubscript:?];
        if (v18)
        {
          [&lhs timeStamp];
        }

        else
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        v19 = CMTimeCompare(&time1, &lhs);

        if (v19 > 0)
        {
          break;
        }

        analysisTimeStamps3 = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
        [analysisTimeStamps3 hmf_removeFirstObject];
      }

      [(HMIVideoAnalyzerTrack *)self setStationaryBlobIndex:?];
    }
  }
}

- (unint64_t)stationaryIndexToBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  stationaryBlobIndex = [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex];
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  v10 = [blobs count];

  blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
  v12 = [blobs2 count];

  if (stationaryBlobIndex >= v12)
  {
LABEL_8:
    blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
    stationaryBlobIndex = [blobs3 count];
  }

  else
  {
    v13 = v10 - stationaryBlobIndex;
    while (1)
    {
      blobs4 = [(HMIVideoAnalyzerTrack *)self blobs];
      v15 = [blobs4 objectAtIndexedSubscript:?];
      [v15 boundingBox];
      v20 = HMICGRectMaxElementwiseDistance(v16, v17, v18, v19, x, y, width, height);

      if (v20 < 0.05)
      {
        break;
      }

      v13 = (v13 + 1) >> 1;
      if (v13 <= 2)
      {
        v21 = 2;
      }

      else
      {
        v21 = v13;
      }

      stationaryBlobIndex += v21;
      blobs5 = [(HMIVideoAnalyzerTrack *)self blobs];
      v23 = [blobs5 count];

      if (stationaryBlobIndex >= v23)
      {
        goto LABEL_8;
      }
    }
  }

  return stationaryBlobIndex;
}

- (float)similarityToBlob:(id)blob
{
  [blob boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  [lastObject boundingBox];
  HMICGRectIntersectionOverUnion(v5, v7, v9, v11, v14, v15, v16, v17);
  v19 = v18;

  result = 0.0;
  if (v19 > 0.5)
  {
    return v19;
  }

  return result;
}

- (HMIVideoAnalyzerBlob)lastBlob
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];

  return lastObject;
}

- (BOOL)isClassified
{
  analysisTimeStamps = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
  if ([analysisTimeStamps count] > 0xE)
  {
    v5 = 1;
  }

  else
  {
    eventClasses = [(HMIVideoAnalyzerTrack *)self eventClasses];
    objc_opt_class();
    if ([eventClasses containsObject:?])
    {
      v5 = 1;
    }

    else
    {
      eventClasses2 = [(HMIVideoAnalyzerTrack *)self eventClasses];
      objc_opt_class();
      v5 = [eventClasses2 containsObject:?];
    }
  }

  return v5;
}

- (BOOL)isLostAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  if (lastObject)
  {
    [&time2 timeStamp];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v8 = *stamp;
  v6 = CMTimeCompare(&v8, &time2) > 0;

  return v6;
}

- (BOOL)isExpiredAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  if (lastObject)
  {
    [&rhs timeStamp];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  v8 = *stamp;
  CMTimeSubtract(&time1, &v8, &rhs);
  CMTimeMakeWithSeconds(&rhs, 3.0, 1000);
  v6 = CMTimeCompare(&time1, &rhs) > 0;

  return v6;
}

- (BOOL)isStationaryAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  lastObject = [blobs lastObject];
  if (lastObject)
  {
    [&time2 timeStamp];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *stamp;
  if (CMTimeCompare(&time1, &time2))
  {
    v7 = 0;
  }

  else
  {
    blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
    [(HMIVideoAnalyzerTrack *)self stationaryBlobIndex];
    v9 = [blobs2 objectAtIndexedSubscript:?];
    if (v9)
    {
      [&time1 timeStamp];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v11 = *stamp;
    CMTimeSubtract(&time2, &v11, &time1);
    CMTimeMakeWithSeconds(&time1, 2.0, 1000);
    v7 = CMTimeCompare(&time2, &time1) > 0;
  }

  return v7;
}

- (id)blobAtTimeStamp:(id *)stamp
{
  blobs = [(HMIVideoAnalyzerTrack *)self blobs];
  v6 = [blobs count];

  v7 = v6;
  while (1)
  {
    if (v7 < 1)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_13;
    }

    --v7;
    blobs2 = [(HMIVideoAnalyzerTrack *)self blobs];
    v9 = [blobs2 objectAtIndexedSubscript:?];
    if (v9)
    {
      [&time2 timeStamp];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v17 = *stamp;
    v10 = CMTimeCompare(&v17, &time2);

    if (!v10)
    {
      break;
    }

    blobs3 = [(HMIVideoAnalyzerTrack *)self blobs];
    v12 = [blobs3 objectAtIndexedSubscript:?];
    if (v12)
    {
      [&time2 timeStamp];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v17 = *stamp;
    v13 = CMTimeCompare(&v17, &time2);

    if (v13 >= 1)
    {
      goto LABEL_11;
    }
  }

  blobs4 = [(HMIVideoAnalyzerTrack *)self blobs];
  v14 = [blobs4 objectAtIndexedSubscript:?];

LABEL_13:

  return v14;
}

- (id)createPackageEventAtTimeStamp:(id *)stamp
{
  v5 = [(HMIVideoAnalyzerTrack *)self blobAtTimeStamp:*&stamp->var0, stamp->var3];
  if (v5)
  {
    analysisTimeStamps = [(HMIVideoAnalyzerTrack *)self analysisTimeStamps];
    v7 = [MEMORY[0x277CCAE60] valueWithCMTime:{*&stamp->var0, stamp->var3}];
    [analysisTimeStamps addObject:?];

    v8 = [HMIVideoAnalyzerEventPackage alloc];
    v9 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
    [v5 boundingBox];
    v10 = [HMIVideoAnalyzerEventPackage initWithConfidence:v8 boundingBox:"initWithConfidence:boundingBox:"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end