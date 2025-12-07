@interface HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent
- (HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent)initWithNumberOfRenamedPersons:(int64_t)persons;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"numberOfRenamedPersons";
  v3 = +[HMDLogEventHistograms lowVolumeHistogram];
  v4 = [v3 intervalIndexForValue:{-[HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent numberOfRenamedPersons](self, "numberOfRenamedPersons")}];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent)initWithNumberOfRenamedPersons:(int64_t)persons
{
  v5.receiver = self;
  v5.super_class = HMDPhotoLibraryImportingPhotoLibraryRenamedPersonsLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_numberOfRenamedPersons = persons;
  }

  return result;
}

@end