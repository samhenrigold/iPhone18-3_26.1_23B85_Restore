@interface HMDPhotoLibraryImportingPersonsImportedLogEvent
- (HMDPhotoLibraryImportingPersonsImportedLogEvent)initWithTotalNumberOfImportedPersons:(int64_t)persons numberOfNamedImportedPersons:(int64_t)importedPersons;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPhotoLibraryImportingPersonsImportedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"totalNumberOfImportedPersons";
  v3 = +[HMDLogEventHistograms lowVolumeHistogram];
  v4 = [v3 intervalIndexForValue:{-[HMDPhotoLibraryImportingPersonsImportedLogEvent totalNumberOfImportedPersons](self, "totalNumberOfImportedPersons")}];
  v9[1] = @"numberOfNamedImportedPersons";
  v10[0] = v4;
  v5 = +[HMDLogEventHistograms lowVolumeHistogram];
  v6 = [v5 intervalIndexForValue:{-[HMDPhotoLibraryImportingPersonsImportedLogEvent numberOfNamedImportedPersons](self, "numberOfNamedImportedPersons")}];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (HMDPhotoLibraryImportingPersonsImportedLogEvent)initWithTotalNumberOfImportedPersons:(int64_t)persons numberOfNamedImportedPersons:(int64_t)importedPersons
{
  v7.receiver = self;
  v7.super_class = HMDPhotoLibraryImportingPersonsImportedLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_totalNumberOfImportedPersons = persons;
    result->_numberOfNamedImportedPersons = importedPersons;
  }

  return result;
}

@end