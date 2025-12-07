@interface MapsSuggestionsDestinationLinkOption
- (BOOL)isEqual:(id)equal;
- (BOOL)updateETA:(id)a;
- (MapsSuggestionsDestinationLinkOption)initWithETA:(id)a;
- (MapsSuggestionsDestinationLinkOption)initWithRoute:(id)route;
- (double)containsLocation:(id)location;
- (double)containsTime:(id)time;
- (id)objectForJSON;
@end

@implementation MapsSuggestionsDestinationLinkOption

- (MapsSuggestionsDestinationLinkOption)initWithRoute:(id)route
{
  routeCopy = route;
  if (routeCopy)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsDestinationLinkOption;
    v6 = [(MapsSuggestionsDestinationLinkOption *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_route, route);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLinkOption.mm";
      v14 = 1024;
      v15 = 24;
      v16 = 2082;
      v17 = "[MapsSuggestionsDestinationLinkOption initWithRoute:]";
      v18 = 2082;
      v19 = "nil == (route)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a route", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (MapsSuggestionsDestinationLinkOption)initWithETA:(id)a
{
  aCopy = a;
  if (aCopy)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsDestinationLinkOption;
    v6 = [(MapsSuggestionsDestinationLinkOption *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_eta, a);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationLinkOption.mm";
      v14 = 1024;
      v15 = 34;
      v16 = 2082;
      v17 = "[MapsSuggestionsDestinationLinkOption initWithETA:]";
      v18 = 2082;
      v19 = "nil == (eta)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a ETA", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)updateETA:(id)a
{
  aCopy = a;
  eta = self->_eta;
  p_eta = &self->_eta;
  v8 = eta;
  objc_sync_enter(v8);
  if (*(p_eta - 1))
  {
    goto LABEL_2;
  }

  if (!*p_eta)
  {
LABEL_10:
    objc_storeStrong(p_eta, a);
    v9 = 1;
    goto LABEL_3;
  }

  transportType = [(MapsSuggestionsETA *)*p_eta transportType];
  if (transportType == [aCopy transportType])
  {
    time = [(MapsSuggestionsETA *)*p_eta time];
    time2 = [aCopy time];
    v14 = [time laterDate:time2];
    time3 = [aCopy time];

    if (v14 != time3)
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ETA provided is not more recent than what we had!?", v17, 2u);
      }

      goto LABEL_2;
    }

    goto LABEL_10;
  }

LABEL_2:
  v9 = 0;
LABEL_3:
  objc_sync_exit(v8);

  return v9;
}

- (double)containsLocation:(id)location
{
  locationCopy = location;
  v5 = self->_route;
  v6 = objc_sync_enter(v5);
  if (locationCopy && self->_route)
  {
    v8 = [[GEORouteMatcher alloc] initWithRoute:self->_route auditToken:0];
    [locationCopy coordinate];
    v9 = [v8 distanceToRouteFrom:?];
    v11 = v10;
    v13 = MapsSuggestionsConfidenceDefinitelyTrue(v9, v12);
    v18 = v13 - v11 * v11 / MapsSuggestionsDistanceToRouteConfidenceFactor(v14, v15);
    if (v18 <= 0.0)
    {
      v18 = MapsSuggestionsConfidenceDefinitelyFalse(v16, v17);
    }
  }

  else
  {
    v18 = MapsSuggestionsConfidenceDontKnow(v6, v7);
  }

  objc_sync_exit(v5);

  return v18;
}

- (double)containsTime:(id)time
{
  timeCopy = time;
  v6 = self->_eta;
  v7 = objc_sync_enter(v6);
  if (!timeCopy || !self->_eta)
  {
    v18 = MapsSuggestionsConfidenceDontKnow(v7, v8);
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  time = [(MapsSuggestionsETA *)self->_eta time];
  [(MapsSuggestionsETA *)self->_eta seconds];
  v11 = [time dateByAddingTimeInterval:?];
  [v11 timeIntervalSinceDate:timeCopy];
  v13 = v12;

  if (v13 > 0.0)
  {
    v3 = MapsSuggestionsConfidenceDefinitelyTrue(v14, v15);
  }

  objc_autoreleasePoolPop(v9);
  if (v13 <= 0.0)
  {
    v18 = MapsSuggestionsConfidenceDefinitelyFalse(v16, v17);
LABEL_8:
    v3 = v18;
  }

  objc_sync_exit(v6);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MapsSuggestionsDestinationLinkOption *)self eta];
      transportType = [v5 transportType];
      v7 = [(MapsSuggestionsDestinationLinkOption *)equalCopy eta];
      v8 = transportType == [v7 transportType];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)objectForJSON
{
  v14[0] = @"transportMode";
  transportMode = self->_transportMode;
  if (transportMode >= 7)
  {
    transportMode = [NSString stringWithFormat:@"(unknown: %i)", transportMode];
  }

  else
  {
    transportMode = *(&off_100075FB8 + transportMode);
  }

  v5 = MSg::jsonFor();
  v14[1] = @"eta";
  v15[0] = v5;
  v12 = @"seconds";
  seconds = [(MapsSuggestionsETA *)self->_eta seconds];
  v8 = MSg::jsonFor(seconds, v7);
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v10;
}

@end