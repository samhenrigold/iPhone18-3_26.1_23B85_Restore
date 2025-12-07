@interface HMIVideoAnalyzerResultActivityZoneFilter
- (HMIVideoAnalyzerResultActivityZoneFilter)initWithActivityZones:(id)zones motionDetections:(id)detections;
- (id)applyWithFrameResult:(id)result;
@end

@implementation HMIVideoAnalyzerResultActivityZoneFilter

- (HMIVideoAnalyzerResultActivityZoneFilter)initWithActivityZones:(id)zones motionDetections:(id)detections
{
  zonesCopy = zones;
  detectionsCopy = detections;
  v12.receiver = self;
  v12.super_class = HMIVideoAnalyzerResultActivityZoneFilter;
  v9 = [(HMIVideoAnalyzerResultActivityZoneFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityZones, zones);
    objc_storeStrong(&v10->_motionDetections, detections);
  }

  return v10;
}

- (id)applyWithFrameResult:(id)result
{
  resultCopy = result;
  if ([(NSArray *)self->_activityZones count])
  {
    motionDetections = [(HMIVideoAnalyzerResultActivityZoneFilter *)self motionDetections];
    v6 = [HMIMotionDetection firstMotionDetectionInArray:"firstMotionDetectionInArray:withMode:" withMode:?];

    events = [resultCopy events];
    activityZones = [(HMIVideoAnalyzerResultActivityZoneFilter *)self activityZones];
    v9 = [HMICameraActivityZone filterEvents:"filterEvents:withActivityZones:motionDetection:insetPercentageInclusion:insetPercentageExclusion:" withActivityZones:? motionDetection:? insetPercentageInclusion:? insetPercentageExclusion:?];

    v10 = [HMIVideoAnalyzerFrameResult alloc];
    frame = [resultCopy frame];
    [resultCopy regionOfInterest];
    v12 = [HMIVideoAnalyzerFrameResult initWithFrame:v10 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];
  }

  else
  {
    v12 = resultCopy;
  }

  return v12;
}

@end