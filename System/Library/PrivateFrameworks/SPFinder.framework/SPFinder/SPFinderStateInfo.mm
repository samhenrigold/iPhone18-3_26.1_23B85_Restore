@interface SPFinderStateInfo
- (NSSet)disabledReasons;
- (SPFinderStateInfo)initWithCoder:(id)coder;
- (SPFinderStateInfo)initWithState:(BOOL)state optInScreenOffScan:(BOOL)scan lastUpdated:(id)updated lastPublishDate:(id)date lastScheduledPublishActivityDate:(id)activityDate activeCache:(int64_t)cache disabledReasons:(id)reasons;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPFinderStateInfo

- (SPFinderStateInfo)initWithState:(BOOL)state optInScreenOffScan:(BOOL)scan lastUpdated:(id)updated lastPublishDate:(id)date lastScheduledPublishActivityDate:(id)activityDate activeCache:(int64_t)cache disabledReasons:(id)reasons
{
  scanCopy = scan;
  stateCopy = state;
  updatedCopy = updated;
  dateCopy = date;
  activityDateCopy = activityDate;
  reasonsCopy = reasons;
  v23.receiver = self;
  v23.super_class = SPFinderStateInfo;
  v19 = [(SPFinderStateInfo *)&v23 init];
  v20 = v19;
  if (v19)
  {
    [(SPFinderStateInfo *)v19 setState:stateCopy];
    [(SPFinderStateInfo *)v20 setOptInScreenOffScan:scanCopy];
    [(SPFinderStateInfo *)v20 setLastUpdated:updatedCopy];
    [(SPFinderStateInfo *)v20 setLastPublishDate:dateCopy];
    [(SPFinderStateInfo *)v20 setLastScheduledPublishActivityDate:activityDateCopy];
    [(SPFinderStateInfo *)v20 setActiveCache:cache];
    allObjects = [reasonsCopy allObjects];
    [(SPFinderStateInfo *)v20 setDisabledReasonsArray:allObjects];
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SPFinderStateInfo state](self forKey:{"state"), @"state"}];
  lastUpdated = [(SPFinderStateInfo *)self lastUpdated];
  [coderCopy encodeObject:lastUpdated forKey:@"lastUpdated"];

  lastPublishDate = [(SPFinderStateInfo *)self lastPublishDate];
  [coderCopy encodeObject:lastPublishDate forKey:@"lastPublishDate"];

  lastScheduledPublishActivityDate = [(SPFinderStateInfo *)self lastScheduledPublishActivityDate];
  [coderCopy encodeObject:lastScheduledPublishActivityDate forKey:@"lastScheduledPublishActivityDate"];

  [coderCopy encodeInteger:-[SPFinderStateInfo activeCache](self forKey:{"activeCache"), @"activeCache"}];
  disabledReasonsArray = [(SPFinderStateInfo *)self disabledReasonsArray];
  [coderCopy encodeObject:disabledReasonsArray forKey:@"disabledReasonsArray"];

  [coderCopy encodeBool:-[SPFinderStateInfo optInScreenOffScan](self forKey:{"optInScreenOffScan"), @"optInScreenOffScan"}];
}

- (SPFinderStateInfo)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  -[SPFinderStateInfo setState:](self, "setState:", [coderCopy decodeBoolForKey:@"state"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
  [(SPFinderStateInfo *)self setLastUpdated:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastPublishDate"];
  [(SPFinderStateInfo *)self setLastPublishDate:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastScheduledPublishActivityDate"];
  [(SPFinderStateInfo *)self setLastScheduledPublishActivityDate:v7];

  -[SPFinderStateInfo setActiveCache:](self, "setActiveCache:", [coderCopy decodeIntegerForKey:@"activeCache"]);
  v8 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"disabledReasonsArray"];
  [(SPFinderStateInfo *)self setDisabledReasonsArray:v11];

  v12 = [coderCopy decodeBoolForKey:@"optInScreenOffScan"];
  [(SPFinderStateInfo *)self setOptInScreenOffScan:v12];
  return self;
}

- (NSSet)disabledReasons
{
  v2 = MEMORY[0x277CBEB98];
  disabledReasonsArray = [(SPFinderStateInfo *)self disabledReasonsArray];
  v4 = [v2 setWithArray:disabledReasonsArray];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  state = [(SPFinderStateInfo *)self state];
  optInScreenOffScan = [(SPFinderStateInfo *)self optInScreenOffScan];
  lastUpdated = [(SPFinderStateInfo *)self lastUpdated];
  lastPublishDate = [(SPFinderStateInfo *)self lastPublishDate];
  lastScheduledPublishActivityDate = [(SPFinderStateInfo *)self lastScheduledPublishActivityDate];
  activeCache = [(SPFinderStateInfo *)self activeCache];
  disabledReasonsArray = [(SPFinderStateInfo *)self disabledReasonsArray];
  v11 = [v3 stringWithFormat:@"SPFinderStateInfo state: %i, optInScreenOffScan: %i, lastUpdated: %@, lastPublishDate: %@, lastScheduledPublishActivityDate: %@, activeCache: %li, disabledReasons: %@", state, optInScreenOffScan, lastUpdated, lastPublishDate, lastScheduledPublishActivityDate, activeCache, disabledReasonsArray];

  return v11;
}

@end