@interface FMDRequestCurrentLocation
- (BOOL)canReplace:(id)replace;
- (BOOL)canRequestBeRetriedNow;
- (FMDRequestCurrentLocation)initWithAccount:(id)account location:(id)location finalLocation:(BOOL)finalLocation reason:(int64_t)reason accuracyChange:(double)change cacheValidityDuration:(double)duration;
- (id)requestBody;
@end

@implementation FMDRequestCurrentLocation

- (FMDRequestCurrentLocation)initWithAccount:(id)account location:(id)location finalLocation:(BOOL)finalLocation reason:(int64_t)reason accuracyChange:(double)change cacheValidityDuration:(double)duration
{
  finalLocationCopy = finalLocation;
  locationCopy = location;
  v18.receiver = self;
  v18.super_class = FMDRequestCurrentLocation;
  v15 = [(FMDRequest *)&v18 initWithAccount:account];
  v16 = v15;
  if (v15)
  {
    [(FMDRequestCurrentLocation *)v15 setLocation:locationCopy];
    [(FMDRequestCurrentLocation *)v16 setFinalLocation:finalLocationCopy];
    [(FMDRequestCurrentLocation *)v16 setPublishReason:reason];
    [(FMDRequestCurrentLocation *)v16 setAccuracyChange:change];
    [(FMDRequestCurrentLocation *)v16 setCacheValidityDuration:duration];
  }

  return v16;
}

- (id)requestBody
{
  v12.receiver = self;
  v12.super_class = FMDRequestCurrentLocation;
  requestBody = [(FMDRequest *)&v12 requestBody];
  v4 = [NSNumber numberWithInteger:qword_100312B58];
  [requestBody setObject:v4 forKeyedSubscript:@"statusCode"];

  location = [(FMDRequestCurrentLocation *)self location];
  dictionaryValue = [location dictionaryValue];
  [requestBody addEntriesFromDictionary:dictionaryValue];

  v7 = [NSNumber numberWithBool:[(FMDRequestCurrentLocation *)self finalLocation]];
  [requestBody setObject:v7 forKeyedSubscript:@"locationFinished"];

  if ([(FMDRequestCurrentLocation *)self publishReason])
  {
    v8 = [NSNumber numberWithInteger:[(FMDRequestCurrentLocation *)self publishReason]];
    [requestBody setObject:v8 forKeyedSubscript:@"reason"];
  }

  [(FMDRequestCurrentLocation *)self accuracyChange];
  if (v9 != 0.0)
  {
    [(FMDRequestCurrentLocation *)self accuracyChange];
    v10 = [NSNumber numberWithDouble:?];
    [requestBody setObject:v10 forKeyedSubscript:@"accuracyChange"];
  }

  return requestBody;
}

- (BOOL)canRequestBeRetriedNow
{
  location = [(FMDRequestCurrentLocation *)self location];
  timeStamp = [location timeStamp];
  [(FMDRequestCurrentLocation *)self cacheValidityDuration];
  v5 = [timeStamp dateByAddingTimeInterval:?];

  v6 = +[NSDate date];
  if ([v6 compare:v5] == 1)
  {
    canRequestBeRetriedNow = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FMDRequestCurrentLocation;
    canRequestBeRetriedNow = [(FMDRequest *)&v9 canRequestBeRetriedNow];
  }

  return canRequestBeRetriedNow;
}

- (BOOL)canReplace:(id)replace
{
  replaceCopy = replace;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end