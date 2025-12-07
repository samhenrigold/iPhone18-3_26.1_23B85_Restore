@interface RTSourceMapsSupportHistoryEntry
- (BOOL)isEqual:(id)equal;
- (RTSourceMapsSupportHistoryEntry)initWithCoder:(id)coder;
- (RTSourceMapsSupportHistoryEntry)initWithUsageDate:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceMapsSupportHistoryEntry

- (RTSourceMapsSupportHistoryEntry)initWithUsageDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = RTSourceMapsSupportHistoryEntry;
  v5 = [(RTSourceMapsSupportHistoryEntry *)&v9 init];
  if (v5)
  {
    v6 = [dateCopy copy];
    usageDate = v5->_usageDate;
    v5->_usageDate = v6;
  }

  return v5;
}

- (RTSourceMapsSupportHistoryEntry)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTSourceMapsSupportHistoryEntry initWithCoder:]";
      v13 = 1024;
      v14 = 28;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aDecoder allowsKeyedCoding] (in %s:%d)", buf, 0x12u);
    }
  }

  v10.receiver = self;
  v10.super_class = RTSourceMapsSupportHistoryEntry;
  v6 = [(RTSource *)&v10 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usageDate"];
    usageDate = v6->_usageDate;
    v6->_usageDate = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v11 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "[RTSourceMapsSupportHistoryEntry encodeWithCoder:]";
      v9 = 1024;
      v10 = 40;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aCoder allowsKeyedCoding] (in %s:%d)", buf, 0x12u);
    }
  }

  v6.receiver = self;
  v6.super_class = RTSourceMapsSupportHistoryEntry;
  [(RTSource *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_usageDate forKey:@"usageDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = RTSourceMapsSupportHistoryEntry;
  if ([(RTSource *)&v12 isEqual:equalCopy])
  {
    v6 = equalCopy;
    usageDate = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
    if (usageDate || ([v6 usageDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      usageDate2 = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
      usageDate3 = [v6 usageDate];
      v10 = [usageDate2 isEqualToDate:usageDate3];

      if (usageDate)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RTSourceMapsSupportHistoryEntry;
  v3 = [(RTSource *)&v7 hash];
  usageDate = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
  v5 = [usageDate hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = RTSourceMapsSupportHistoryEntry;
  v4 = [(RTSource *)&v8 description];
  usageDate = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
  v6 = [v3 stringWithFormat:@"%@, usageDate, %@", v4, usageDate];

  return v6;
}

@end