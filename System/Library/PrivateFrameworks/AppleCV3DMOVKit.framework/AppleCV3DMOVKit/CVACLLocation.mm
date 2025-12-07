@interface CVACLLocation
- (CVACLLocation)initWithCLLocation:(id)location timestamp:(double)timestamp;
- (CVACLLocation)initWithDictionary:(id)dictionary;
- (id)debugDescription;
- (id)dictionary;
@end

@implementation CVACLLocation

- (CVACLLocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = CVACLLocation;
  v5 = [(CVACLLocation *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"t"];
    [v6 doubleValue];
    v5->_timestamp = v7;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ts"];
    [v8 doubleValue];
    v5->_timestampSince1970 = v9;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"lat"];
    [v10 doubleValue];
    v5->_latitude = v11;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"long"];
    [v12 doubleValue];
    v5->_longitude = v13;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"alt"];
    [v14 doubleValue];
    v5->_altitude = v15;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"h_acc"];
    [v16 doubleValue];
    v5->_horizontalAccuracy = v17;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"v_acc"];
    [v18 doubleValue];
    v5->_verticalAccuracy = v19;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"speed"];
    [v20 doubleValue];
    v5->_speed = v21;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"course"];
    [v22 doubleValue];
    v5->_course = v23;
  }

  return v5;
}

- (CVACLLocation)initWithCLLocation:(id)location timestamp:(double)timestamp
{
  locationCopy = location;
  v19.receiver = self;
  v19.super_class = CVACLLocation;
  v7 = [(CVACLLocation *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_timestamp = timestamp;
    v9 = objc_msgSend_timestamp(locationCopy);
    [v9 timeIntervalSince1970];
    v8->_timestampSince1970 = v10;

    [locationCopy coordinate];
    v8->_latitude = v11;
    [locationCopy coordinate];
    v8->_longitude = v12;
    [locationCopy altitude];
    v8->_altitude = v13;
    [locationCopy horizontalAccuracy];
    v8->_horizontalAccuracy = v14;
    [locationCopy verticalAccuracy];
    v8->_verticalAccuracy = v15;
    [locationCopy speed];
    v8->_speed = v16;
    [locationCopy course];
    v8->_course = v17;
  }

  return v8;
}

- (id)dictionary
{
  v15[9] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_timestamp, @"t"}];
  v15[0] = v3;
  v14[1] = @"ts";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestampSince1970];
  v15[1] = v4;
  v14[2] = @"lat";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  v15[2] = v5;
  v14[3] = @"long";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  v15[3] = v6;
  v14[4] = @"alt";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_altitude];
  v15[4] = v7;
  v14[5] = @"h_acc";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  v15[5] = v8;
  v14[6] = @"v_acc";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_verticalAccuracy];
  v15[6] = v9;
  v14[7] = @"speed";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_speed];
  v15[7] = v10;
  v14[8] = @"course";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_course];
  v15[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACLLocation *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end