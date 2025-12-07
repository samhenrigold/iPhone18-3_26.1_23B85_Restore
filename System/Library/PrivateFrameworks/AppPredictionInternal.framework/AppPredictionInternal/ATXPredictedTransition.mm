@interface ATXPredictedTransition
- (ATXPredictedTransition)initWithDate:(id)date loi:(id)loi;
- (id)description;
- (id)transitionArrayForDate:(id)date;
@end

@implementation ATXPredictedTransition

- (id)transitionArrayForDate:(id)date
{
  v22[3] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  date = [(ATXPredictedTransition *)self date];
  [date timeIntervalSinceDate:dateCopy];
  v7 = v6;

  locationOfInterestUUIDKey = [MEMORY[0x277CFE338] locationOfInterestUUIDKey];
  v21[0] = locationOfInterestUUIDKey;
  v9 = [(ATXPredictedTransition *)self loi];
  uuid = [v9 uuid];
  v22[0] = uuid;
  locationOfInterestTypeKey = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
  v21[1] = locationOfInterestTypeKey;
  v12 = MEMORY[0x277CCABB0];
  v13 = [(ATXPredictedTransition *)self loi];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "type")}];
  v22[1] = v14;
  transitionWithinTimeIntervalKey = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v21[2] = transitionWithinTimeIntervalKey;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v22[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v20 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

  return v18;
}

- (ATXPredictedTransition)initWithDate:(id)date loi:(id)loi
{
  dateCopy = date;
  loiCopy = loi;
  v9 = loiCopy;
  selfCopy = 0;
  if (dateCopy && loiCopy)
  {
    if ([loiCopy type] && objc_msgSend(v9, "type") != 1)
    {
      selfCopy = 0;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = ATXPredictedTransition;
      v11 = [(ATXPredictedTransition *)&v14 init];
      p_isa = &v11->super.isa;
      if (v11)
      {
        objc_storeStrong(&v11->_date, date);
        objc_storeStrong(p_isa + 2, loi);
      }

      self = p_isa;
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (id)description
{
  v3 = [MEMORY[0x277D41BF8] stringForLOIType:{-[ATXLocationOfInterest type](self->_loi, "type")}];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transition to %@ at %@", v3, self->_date];

  return v4;
}

@end