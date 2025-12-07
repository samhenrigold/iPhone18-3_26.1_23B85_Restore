@interface RTTripSegmentMetadataFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTTripSegmentMetadataFetchOptions)initWithCoder:(id)coder;
- (RTTripSegmentMetadataFetchOptions)initWithDateInterval:(id)interval fetchRoadClass:(BOOL)class fetchFormOfWay:(BOOL)way fetchLocationType:(BOOL)type fetchPreferredNames:(BOOL)names;
- (RTTripSegmentMetadataFetchOptions)initWithTripSegment:(id)segment;
- (RTTripSegmentMetadataFetchOptions)initWithTripSegment:(id)segment fetchRoadClass:(BOOL)class fetchFormOfWay:(BOOL)way fetchLocationType:(BOOL)type fetchPreferredNames:(BOOL)names;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripSegmentMetadataFetchOptions

- (RTTripSegmentMetadataFetchOptions)initWithDateInterval:(id)interval fetchRoadClass:(BOOL)class fetchFormOfWay:(BOOL)way fetchLocationType:(BOOL)type fetchPreferredNames:(BOOL)names
{
  namesCopy = names;
  typeCopy = type;
  wayCopy = way;
  classCopy = class;
  v38 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v23.receiver = self;
  v23.super_class = RTTripSegmentMetadataFetchOptions;
  v15 = [(RTTripSegmentMetadataFetchOptions *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dateInterval, interval);
    v16->_fetchRoadClass = classCopy;
    v16->_fetchFormOfWay = wayCopy;
    v16->_fetchLocationType = typeCopy;
    v16->_fetchPreferredNames = namesCopy;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v22 = [intervalCopy description];
        *buf = 138413827;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        v28 = 2112;
        v29 = v22;
        v30 = 1029;
        v31 = classCopy;
        v32 = 1029;
        v33 = wayCopy;
        v34 = 1024;
        v35 = typeCopy;
        v36 = 1029;
        v37 = namesCopy;
        _os_log_debug_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_DEBUG, "%@ %@, dateInterval,%@,fetchRoadClass,%{sensitive}d,fetchFormOfWay,%{sensitive}d,fetchLocationType,%d,fetchPreferredNames,%{sensitive}d", buf, 0x38u);
      }
    }
  }

  return v16;
}

- (RTTripSegmentMetadataFetchOptions)initWithTripSegment:(id)segment fetchRoadClass:(BOOL)class fetchFormOfWay:(BOOL)way fetchLocationType:(BOOL)type fetchPreferredNames:(BOOL)names
{
  namesCopy = names;
  typeCopy = type;
  wayCopy = way;
  classCopy = class;
  dateInterval = [segment dateInterval];
  v13 = [(RTTripSegmentMetadataFetchOptions *)self initWithDateInterval:dateInterval fetchRoadClass:classCopy fetchFormOfWay:wayCopy fetchLocationType:typeCopy fetchPreferredNames:namesCopy];

  return v13;
}

- (RTTripSegmentMetadataFetchOptions)initWithTripSegment:(id)segment
{
  dateInterval = [segment dateInterval];
  v5 = [(RTTripSegmentMetadataFetchOptions *)self initWithDateInterval:dateInterval fetchRoadClass:1 fetchFormOfWay:1 fetchLocationType:1 fetchPreferredNames:1];

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripSegmentMetadataFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  v6 = optionsCopy;
  dateInterval = self->_dateInterval;
  if (!dateInterval)
  {
    dateInterval = [optionsCopy dateInterval];
    if (dateInterval)
    {
      if (self->_dateInterval)
      {
        goto LABEL_2;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_2:
  dateInterval2 = [v6 dateInterval];
  if (dateInterval2)
  {
    v9 = dateInterval2;
    v10 = self->_dateInterval;
    dateInterval3 = [v6 dateInterval];
    v12 = [(NSDateInterval *)v10 isEqualToDateInterval:dateInterval3];

    if (!dateInterval)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if (!dateInterval)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  fetchRoadClass = self->_fetchRoadClass;
  if (fetchRoadClass == [v6 fetchRoadClass] && (fetchFormOfWay = self->_fetchFormOfWay, fetchFormOfWay == objc_msgSend(v6, "fetchFormOfWay")) && (fetchLocationType = self->_fetchLocationType, fetchLocationType == objc_msgSend(v6, "fetchLocationType")))
  {
    fetchPreferredNames = self->_fetchPreferredNames;
    v17 = fetchPreferredNames == [v6 fetchPreferredNames];
  }

  else
  {
    v17 = 0;
  }

  return v12 & v17;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeBool:self->_fetchRoadClass forKey:@"fetchRoadClass"];
  [coderCopy encodeBool:self->_fetchFormOfWay forKey:@"fetchFormOfWay"];
  [coderCopy encodeBool:self->_fetchLocationType forKey:@"fetchLocationType"];
  [coderCopy encodeBool:self->_fetchPreferredNames forKey:@"fetchPreferredNames"];
}

- (RTTripSegmentMetadataFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeBoolForKey:@"fetchRoadClass"];
  v7 = [coderCopy decodeBoolForKey:@"fetchFormOfWay"];
  v8 = [coderCopy decodeBoolForKey:@"fetchLocationType"];
  v9 = [coderCopy decodeBoolForKey:@"fetchPreferredNames"];

  v10 = [(RTTripSegmentMetadataFetchOptions *)self initWithDateInterval:v5 fetchRoadClass:v6 fetchFormOfWay:v7 fetchLocationType:v8 fetchPreferredNames:v9];
  return v10;
}

@end