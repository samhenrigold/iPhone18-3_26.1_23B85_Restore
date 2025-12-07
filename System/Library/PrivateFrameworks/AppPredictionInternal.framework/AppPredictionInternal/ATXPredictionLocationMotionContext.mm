@interface ATXPredictionLocationMotionContext
- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)i previousLOI:(id)oI motionType:(int64_t)type currentLocation:(id)location locationEnabled:(BOOL)enabled distanceFromHome:(double)home distanceFromWork:(double)work distanceFromSchool:(double)self0 distanceFromGym:(double)self1 canPredictClipsGivenRecentMotion:(BOOL)self2;
- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)i previousLOI:(id)oI motionType:(int64_t)type geohash:(int64_t)geohash coarseGeohash:(int64_t)coarseGeohash largeGeohash:(int64_t)largeGeohash locationEnabled:(BOOL)enabled distanceFromHome:(double)self0 distanceFromWork:(double)self1 distanceFromSchool:(double)self2 distanceFromGym:(double)self3 canPredictClipsGivenRecentMotion:(BOOL)self4;
- (ATXPredictionLocationMotionContext)initWithProto:(id)proto;
- (ATXPredictionLocationMotionContext)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPredictionLocationMotionContext:(id)context;
- (id)_unarchiveCLLocation:(id)location;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (int)_pbMotionTypeFromATXMotionType:(int64_t)type;
- (int64_t)_atxMotionTypeFromPBMotionType:(int)type;
@end

@implementation ATXPredictionLocationMotionContext

- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)i previousLOI:(id)oI motionType:(int64_t)type currentLocation:(id)location locationEnabled:(BOOL)enabled distanceFromHome:(double)home distanceFromWork:(double)work distanceFromSchool:(double)self0 distanceFromGym:(double)self1 canPredictClipsGivenRecentMotion:(BOOL)self2
{
  enabledCopy = enabled;
  locationCopy = location;
  oICopy = oI;
  iCopy = i;
  v25 = [ATXPrivacyPreservingLocationHash privacyPreservingGeohashForLocation:locationCopy locationEnabled:enabledCopy];
  v26 = [ATXPrivacyPreservingLocationHash privacyPreservingCoarseGeohashForLocation:locationCopy locationEnabled:enabledCopy];
  v27 = [ATXPrivacyPreservingLocationHash privacyPreservingZoom7GeohashForLocation:locationCopy locationEnabled:enabledCopy];

  BYTE1(v30) = motion;
  LOBYTE(v30) = enabledCopy;
  v28 = [(ATXPredictionLocationMotionContext *)self initWithCurrentLOI:iCopy previousLOI:oICopy motionType:type geohash:v25 coarseGeohash:v26 largeGeohash:v27 locationEnabled:home distanceFromHome:work distanceFromWork:school distanceFromSchool:gym distanceFromGym:v30 canPredictClipsGivenRecentMotion:?];

  return v28;
}

- (ATXPredictionLocationMotionContext)initWithCurrentLOI:(id)i previousLOI:(id)oI motionType:(int64_t)type geohash:(int64_t)geohash coarseGeohash:(int64_t)coarseGeohash largeGeohash:(int64_t)largeGeohash locationEnabled:(BOOL)enabled distanceFromHome:(double)self0 distanceFromWork:(double)self1 distanceFromSchool:(double)self2 distanceFromGym:(double)self3 canPredictClipsGivenRecentMotion:(BOOL)self4
{
  iCopy = i;
  oICopy = oI;
  v30.receiver = self;
  v30.super_class = ATXPredictionLocationMotionContext;
  v27 = [(ATXPredictionLocationMotionContext *)&v30 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_previousLOI, oI);
    objc_storeStrong(&v28->_currentLOI, i);
    v28->_motionType = type;
    v28->_geohash = geohash;
    v28->_coarseGeohash = coarseGeohash;
    v28->_largeGeohash = largeGeohash;
    v28->_locationEnabled = enabled;
    v28->_distanceFromHomeOfCurrentLocationInMeters = home;
    v28->_distanceFromWorkOfCurrentLocationInMeters = work;
    v28->_distanceFromSchoolOfCurrentLocationInMeters = school;
    v28->_distanceFromGymOfCurrentLocationInMeters = gym;
    v28->_canPredictClipsGivenRecentMotion = motion;
  }

  return v28;
}

- (id)description
{
  jsonDict = [(ATXPredictionLocationMotionContext *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (id)jsonDict
{
  v26[11] = *MEMORY[0x277D85DE8];
  v25[0] = @"currentLOI";
  v3 = [(ATXLocationOfInterest *)self->_currentLOI description];
  v24 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  v26[0] = v4;
  v25[1] = @"previousLOI";
  v5 = [(ATXLocationOfInterest *)self->_previousLOI description];
  v23 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"nil";
  }

  v26[1] = v6;
  v25[2] = @"motionType";
  v22 = [MEMORY[0x277D41C40] stringForMotionType:self->_motionType];
  v26[2] = v22;
  v25[3] = @"geohash";
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_geohash];
  v26[3] = v21;
  v25[4] = @"coarseGeohash";
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_coarseGeohash];
  v26[4] = v20;
  v25[5] = @"largeGeohash";
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_largeGeohash];
  v8 = v7;
  v9 = @"YES";
  if (!self->_locationEnabled)
  {
    v9 = @"NO";
  }

  v26[5] = v7;
  v26[6] = v9;
  v25[6] = @"locationEnabled";
  v25[7] = @"distanceFromHome";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromHomeOfCurrentLocationInMeters];
  stringValue = [v10 stringValue];
  v26[7] = stringValue;
  v25[8] = @"distanceFromWork";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromWorkOfCurrentLocationInMeters];
  stringValue2 = [v12 stringValue];
  v26[8] = stringValue2;
  v25[9] = @"distanceFromSchool";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromSchoolOfCurrentLocationInMeters];
  stringValue3 = [v14 stringValue];
  v26[9] = stringValue3;
  v25[10] = @"distanceFromGym";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distanceFromGymOfCurrentLocationInMeters];
  stringValue4 = [v16 stringValue];
  v26[10] = stringValue4;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:11];

  return v18;
}

- (ATXPredictionLocationMotionContext)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBPredictionLocationMotionContext alloc] initWithData:dataCopy];

    self = [(ATXPredictionLocationMotionContext *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXPredictionLocationMotionContext *)self proto];
  data = [proto data];

  return data;
}

- (ATXPredictionLocationMotionContext)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_9:
    selfCopy2 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v25 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [(ATXPredictionLocationMotionContext *)self initWithProto:v25];
    }

    goto LABEL_9;
  }

  v6 = protoCopy;
  v7 = objc_alloc(MEMORY[0x277D41C18]);
  currentLOI = [v6 currentLOI];
  v9 = [v7 initWithProto:currentLOI];

  v10 = objc_alloc(MEMORY[0x277D41C18]);
  previousLOI = [v6 previousLOI];
  v12 = [v10 initWithProto:previousLOI];

  v13 = -[ATXPredictionLocationMotionContext _atxMotionTypeFromPBMotionType:](self, "_atxMotionTypeFromPBMotionType:", [v6 motionType]);
  if ([v6 hasCurrentLocation])
  {
    currentLocation = [v6 currentLocation];
    v15 = [(ATXPredictionLocationMotionContext *)self _unarchiveCLLocation:currentLocation];

    if (v15)
    {
      locationEnabled = [v6 locationEnabled];
      [v6 distanceFromHome];
      v18 = v17;
      [v6 distanceFromWork];
      v20 = v19;
      [v6 distanceFromSchool];
      v22 = v21;
      [v6 distanceFromGym];
      self = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](self, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v9, v12, v13, v15, locationEnabled, [v6 canPredictClipsGivenRecentMotion], v18, v20, v22, v23);
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    if (([v6 hasGeohash] & 1) != 0 || (objc_msgSend(v6, "hasCoarseGeohash") & 1) != 0 || objc_msgSend(v6, "hasLargeGeohash"))
    {
      geohash = [v6 geohash];
      coarseGeohash = [v6 coarseGeohash];
      largeGeohash = [v6 largeGeohash];
      locationEnabled2 = [v6 locationEnabled];
      [v6 distanceFromHome];
      v31 = v30;
      [v6 distanceFromWork];
      v33 = v32;
      [v6 distanceFromSchool];
      v35 = v34;
      [v6 distanceFromGym];
      v37 = v36;
      BYTE1(v48) = [v6 canPredictClipsGivenRecentMotion];
      LOBYTE(v48) = locationEnabled2;
      v38 = [(ATXPredictionLocationMotionContext *)self initWithCurrentLOI:v9 previousLOI:v12 motionType:v13 geohash:geohash coarseGeohash:coarseGeohash largeGeohash:largeGeohash locationEnabled:v31 distanceFromHome:v33 distanceFromWork:v35 distanceFromSchool:v37 distanceFromGym:v48 canPredictClipsGivenRecentMotion:?];
    }

    else
    {
      locationEnabled3 = [v6 locationEnabled];
      [v6 distanceFromHome];
      v42 = v41;
      [v6 distanceFromWork];
      v44 = v43;
      [v6 distanceFromSchool];
      v46 = v45;
      [v6 distanceFromGym];
      v38 = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](self, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v9, v12, v13, 0, locationEnabled3, [v6 canPredictClipsGivenRecentMotion], v42, v44, v46, v47);
    }

    self = v38;
    selfCopy2 = self;
  }

LABEL_18:
  return selfCopy2;
}

- (id)proto
{
  v3 = objc_opt_new();
  proto = [(ATXLocationOfInterest *)self->_currentLOI proto];
  [v3 setCurrentLOI:proto];

  proto2 = [(ATXLocationOfInterest *)self->_previousLOI proto];
  [v3 setPreviousLOI:proto2];

  [v3 setMotionType:{-[ATXPredictionLocationMotionContext _pbMotionTypeFromATXMotionType:](self, "_pbMotionTypeFromATXMotionType:", self->_motionType)}];
  [v3 setGeohash:self->_geohash];
  [v3 setCoarseGeohash:self->_coarseGeohash];
  [v3 setLargeGeohash:self->_largeGeohash];
  [v3 setLocationEnabled:self->_locationEnabled];
  [v3 setDistanceFromHome:self->_distanceFromHomeOfCurrentLocationInMeters];
  [v3 setDistanceFromWork:self->_distanceFromWorkOfCurrentLocationInMeters];
  [v3 setDistanceFromSchool:self->_distanceFromSchoolOfCurrentLocationInMeters];
  [v3 setDistanceFromGym:self->_distanceFromGymOfCurrentLocationInMeters];
  [v3 setCanPredictClipsGivenRecentMotion:self->_canPredictClipsGivenRecentMotion];

  return v3;
}

- (id)_unarchiveCLLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v10 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:locationCopy error:&v10];
    v6 = v10;
    objc_autoreleasePoolPop(v4);
    v7 = 0;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_atxMotionTypeFromPBMotionType:(int)type
{
  v3 = (type - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_pbMotionTypeFromATXMotionType:(int64_t)type
{
  if ((type - 1) < 4)
  {
    return type;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionLocationMotionContext *)self isEqualToATXPredictionLocationMotionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionLocationMotionContext:(id)context
{
  contextCopy = context;
  v5 = self->_currentLOI;
  v6 = v5;
  if (v5 == contextCopy[3])
  {
  }

  else
  {
    v7 = [(ATXLocationOfInterest *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v8 = self->_previousLOI;
  v9 = v8;
  if (v8 == contextCopy[2])
  {
  }

  else
  {
    v10 = [(ATXLocationOfInterest *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  motionType = self->_motionType;
  if (motionType == [contextCopy motionType] && self->_geohash == contextCopy[5] && self->_coarseGeohash == contextCopy[6] && self->_largeGeohash == contextCopy[7] && self->_locationEnabled == *(contextCopy + 8) && self->_distanceFromHomeOfCurrentLocationInMeters == *(contextCopy + 8) && self->_distanceFromWorkOfCurrentLocationInMeters == *(contextCopy + 9) && self->_distanceFromSchoolOfCurrentLocationInMeters == *(contextCopy + 10) && self->_distanceFromGymOfCurrentLocationInMeters == *(contextCopy + 11))
  {
    v12 = self->_canPredictClipsGivenRecentMotion == *(contextCopy + 9);
    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
LABEL_19:

  return v12;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBPredictionLocationMotionContext proto", &v5, 0xCu);
}

@end