@interface HMIVideoFrameAnalyzerResult
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time;
- (CGRect)regionOfInterest;
- (HMIVideoFrameAnalyzerResult)initWithFrame:(id)frame events:(id)events backgroundEvents:(id)backgroundEvents backgroundTimeStamp:(id *)stamp regionOfInterest:(CGRect)interest motionDetections:(id)detections;
- (NSString)description;
@end

@implementation HMIVideoFrameAnalyzerResult

- (HMIVideoFrameAnalyzerResult)initWithFrame:(id)frame events:(id)events backgroundEvents:(id)backgroundEvents backgroundTimeStamp:(id *)stamp regionOfInterest:(CGRect)interest motionDetections:(id)detections
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  frameCopy = frame;
  eventsCopy = events;
  backgroundEventsCopy = backgroundEvents;
  detectionsCopy = detections;
  v26.receiver = self;
  v26.super_class = HMIVideoFrameAnalyzerResult;
  v22 = [(HMIVideoFrameAnalyzerResult *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_frame, frame);
    objc_storeStrong(&v23->_events, events);
    objc_storeStrong(&v23->_backgroundEvents, backgroundEvents);
    var3 = stamp->var3;
    *&v23->_backgroundTimeStamp.value = *&stamp->var0;
    v23->_backgroundTimeStamp.epoch = var3;
    v23->_regionOfInterest.origin.x = x;
    v23->_regionOfInterest.origin.y = y;
    v23->_regionOfInterest.size.width = width;
    v23->_regionOfInterest.size.height = height;
    objc_storeStrong(&v23->_motionDetections, detections);
  }

  return v23;
}

- (NSString)description
{
  events = [(HMIVideoFrameAnalyzerResult *)self events];
  v4 = [events na_map:?];

  frame = [(HMIVideoFrameAnalyzerResult *)self frame];
  if (frame)
  {
    [&time presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v6 = CMTimeCopyDescription(0, &time);

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  allObjects = [v4 allObjects];
  v10 = [allObjects componentsJoinedByString:?];
  [(HMIVideoFrameAnalyzerResult *)self regionOfInterest];
  v15 = HMICGRectDescription(v11, v12, v13, v14);
  v16 = [v7 stringWithFormat:v8, self, v6, v10, v15];

  return v16;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time
{
  result = self->_frame;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)retstr presentationTimeStamp];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- (CGRect)regionOfInterest
{
  objc_copyStruct(v6, &self->_regionOfInterest, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end