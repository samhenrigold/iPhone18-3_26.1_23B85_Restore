@interface RTPeopleCountEvent
- (BOOL)isEqual:(id)equal;
- (RTPeopleCountEvent)initWithCoder:(id)coder;
- (RTPeopleCountEvent)initWithEventID:(id)d startDate:(id)date endDate:(id)endDate totalCount:(unint64_t)count familyCount:(unint64_t)familyCount friendsCount:(unint64_t)friendsCount;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPeopleCountEvent

- (RTPeopleCountEvent)initWithEventID:(id)d startDate:(id)date endDate:(id)endDate totalCount:(unint64_t)count familyCount:(unint64_t)familyCount friendsCount:(unint64_t)friendsCount
{
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  if (!dCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: eventID";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_9;
  }

  if (!dateCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: startDate";
    goto LABEL_12;
  }

  v24.receiver = self;
  v24.super_class = RTPeopleCountEvent;
  v18 = [(RTPeopleCountEvent *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventID, d);
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    v19->_totalCount = count;
    v19->_familyCount = familyCount;
    v19->_friendsCount = friendsCount;
  }

  self = v19;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      eventID = [(RTPeopleCountEvent *)self eventID];
      eventID2 = [(RTPeopleCountEvent *)v5 eventID];
      if ([eventID isEqual:eventID2])
      {
        startDate = [(RTPeopleCountEvent *)self startDate];
        startDate2 = [(RTPeopleCountEvent *)v5 startDate];
        if ([startDate isEqualToDate:startDate2])
        {
          endDate = [(RTPeopleCountEvent *)self endDate];
          endDate2 = [(RTPeopleCountEvent *)v5 endDate];
          if ([endDate isEqualToDate:endDate2] && (v12 = -[RTPeopleCountEvent totalCount](self, "totalCount"), v12 == -[RTPeopleCountEvent totalCount](v5, "totalCount")) && (v13 = -[RTPeopleCountEvent familyCount](self, "familyCount"), v13 == -[RTPeopleCountEvent familyCount](v5, "familyCount")))
          {
            friendsCount = [(RTPeopleCountEvent *)self friendsCount];
            v15 = friendsCount == [(RTPeopleCountEvent *)v5 friendsCount];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)descriptionDictionary
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13[0] = @"EventID";
  uUIDString = [(NSUUID *)self->_eventID UUIDString];
  v14[0] = uUIDString;
  v13[1] = @"StartDate";
  startDate = self->_startDate;
  if (startDate)
  {
    getFormattedDateString = [(NSDate *)self->_startDate getFormattedDateString];
  }

  else
  {
    getFormattedDateString = @"-";
  }

  v14[1] = getFormattedDateString;
  v13[2] = @"EndDate";
  endDate = self->_endDate;
  if (endDate)
  {
    getFormattedDateString2 = [(NSDate *)self->_endDate getFormattedDateString];
  }

  else
  {
    getFormattedDateString2 = @"-";
  }

  v14[2] = getFormattedDateString2;
  v13[3] = @"TotalCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_totalCount];
  v14[3] = v8;
  v13[4] = @"FamilyCount";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_familyCount];
  v14[4] = v9;
  v13[5] = @"FriendsCount";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_friendsCount];
  v14[5] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  if (endDate)
  {
  }

  if (startDate)
  {
  }

  return v11;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  descriptionDictionary = [(RTPeopleCountEvent *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONStringFromNSDictionary:descriptionDictionary error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    string = [MEMORY[0x1E696AEC0] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  eventID = [(RTPeopleCountEvent *)self eventID];
  startDate = [(RTPeopleCountEvent *)self startDate];
  endDate = [(RTPeopleCountEvent *)self endDate];
  v8 = [v4 initWithEventID:eventID startDate:startDate endDate:endDate totalCount:self->_totalCount familyCount:self->_familyCount friendsCount:self->_friendsCount];

  return v8;
}

- (RTPeopleCountEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EventID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
  v8 = [coderCopy decodeIntForKey:@"TotalCount"];
  v9 = [coderCopy decodeIntForKey:@"FamilyCount"];
  v10 = [coderCopy decodeIntForKey:@"FriendsCount"];

  v11 = [(RTPeopleCountEvent *)self initWithEventID:v5 startDate:v6 endDate:v7 totalCount:v8 familyCount:v9 friendsCount:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  eventID = self->_eventID;
  coderCopy = coder;
  [coderCopy encodeObject:eventID forKey:@"EventID"];
  [coderCopy encodeObject:self->_startDate forKey:@"StartDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"EndDate"];
  [coderCopy encodeInteger:self->_totalCount forKey:@"TotalCount"];
  [coderCopy encodeInteger:self->_familyCount forKey:@"FamilyCount"];
  [coderCopy encodeInteger:self->_friendsCount forKey:@"FriendsCount"];
}

@end