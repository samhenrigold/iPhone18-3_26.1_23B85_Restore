@interface HMDPhotoLibraryImportingFaceCropsImportedLogEvent
- (HMDPhotoLibraryImportingFaceCropsImportedLogEvent)initWithNumberOfImportedFaceCrops:(int64_t)crops;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDPhotoLibraryImportingFaceCropsImportedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"numberOfImportedFaceCrops";
  v3 = +[HMDLogEventHistograms lowVolumeHistogram];
  v4 = [v3 intervalIndexForValue:{-[HMDPhotoLibraryImportingFaceCropsImportedLogEvent numberOfImportedFaceCrops](self, "numberOfImportedFaceCrops")}];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (HMDPhotoLibraryImportingFaceCropsImportedLogEvent)initWithNumberOfImportedFaceCrops:(int64_t)crops
{
  v5.receiver = self;
  v5.super_class = HMDPhotoLibraryImportingFaceCropsImportedLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_numberOfImportedFaceCrops = crops;
  }

  return result;
}

@end