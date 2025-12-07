@interface FHTripEvent
- (FHTripEvent)initWithPPTripEvent:(id)event;
- (id)description;
@end

@implementation FHTripEvent

- (FHTripEvent)initWithPPTripEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v22.receiver = self;
  v22.super_class = FHTripEvent;
  v5 = [(FHTripEvent *)&v22 init];
  if (v5)
  {
    title = [eventCopy title];
    [(FHTripEvent *)v5 setTitle:title];

    startDate = [eventCopy startDate];
    [(FHTripEvent *)v5 setStartDate:startDate];

    endDate = [eventCopy endDate];
    [(FHTripEvent *)v5 setEndDate:endDate];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    tripParts = [eventCopy tripParts];
    v11 = [tripParts countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(tripParts);
          }

          v15 = [[FHTripPart alloc] initWithPPTripPart:*(*(&v18 + 1) + 8 * v14)];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [tripParts countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    [(FHTripEvent *)v5 setTripParts:v16];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"title", self->_title];
  [v3 appendFormat:@"%@: '%@'; ", @"startDate", self->_startDate];
  [v3 appendFormat:@"%@: '%@'; ", @"endDate", self->_endDate];
  [v3 appendFormat:@"%@: '%@'; ", @"tripParts", self->_tripParts];
  [v3 appendFormat:@">"];

  return v3;
}

@end