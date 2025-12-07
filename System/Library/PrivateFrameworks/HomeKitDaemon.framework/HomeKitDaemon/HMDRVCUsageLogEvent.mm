@interface HMDRVCUsageLogEvent
+ (id)eventWithSource:(unint64_t)source wholeHouse:(BOOL)house roomCount:(id)count roomsInHome:(id)home cleanModes:(id)modes;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRVCUsageLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  error = [(HMMLogEvent *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(error, "code")}];
  [dictionary setObject:v6 forKeyedSubscript:@"errorCode"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDRVCUsageLogEvent source](self, "source")}];
  [dictionary setObject:v7 forKeyedSubscript:@"source"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRVCUsageLogEvent wholeHouse](self, "wholeHouse")}];
  [dictionary setObject:v8 forKeyedSubscript:@"wholeHouse"];

  roomCount = [(HMDRVCUsageLogEvent *)self roomCount];
  [dictionary setObject:roomCount forKeyedSubscript:@"roomCount"];

  roomsInHome = [(HMDRVCUsageLogEvent *)self roomsInHome];
  [dictionary setObject:roomsInHome forKeyedSubscript:@"roomsInHome"];

  cleanModes = [(HMDRVCUsageLogEvent *)self cleanModes];
  [dictionary setObject:cleanModes forKeyedSubscript:@"cleanModes"];

  v12 = objc_msgSend_copy(dictionary);

  return v12;
}

+ (id)eventWithSource:(unint64_t)source wholeHouse:(BOOL)house roomCount:(id)count roomsInHome:(id)home cleanModes:(id)modes
{
  houseCopy = house;
  modesCopy = modes;
  homeCopy = home;
  countCopy = count;
  v14 = objc_alloc_init(HMDRVCUsageLogEvent);
  [(HMDRVCUsageLogEvent *)v14 setSource:source];
  [(HMDRVCUsageLogEvent *)v14 setWholeHouse:houseCopy];
  [(HMDRVCUsageLogEvent *)v14 setRoomCount:countCopy];

  [(HMDRVCUsageLogEvent *)v14 setRoomsInHome:homeCopy];
  [(HMDRVCUsageLogEvent *)v14 setCleanModes:modesCopy];

  return v14;
}

@end