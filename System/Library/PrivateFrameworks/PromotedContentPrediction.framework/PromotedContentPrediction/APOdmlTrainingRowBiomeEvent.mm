@interface APOdmlTrainingRowBiomeEvent
+ (id)featureForKey:(id)key;
+ (id)makeEventWithRecordID:(id)d adamID:(id)iD odmlResponse:(id)response appInstalled:(BOOL)installed isDupe:(BOOL)dupe rerankingError:(id)error impressed:(BOOL)impressed tapped:(BOOL)self0;
+ (void)eventWithRecordID:(id)d adamID:(id)iD odmlResponse:(id)response appInstalled:(BOOL)installed isDupe:(BOOL)dupe rerankingError:(id)error;
+ (void)removeAll;
+ (void)sendEvent:(id)event;
+ (void)updateWithRecordID:(id)d adamID:(id)iD event:(int64_t)event;
@end

@implementation APOdmlTrainingRowBiomeEvent

+ (void)eventWithRecordID:(id)d adamID:(id)iD odmlResponse:(id)response appInstalled:(BOOL)installed isDupe:(BOOL)dupe rerankingError:(id)error
{
  LOWORD(v8) = 0;
  v9 = [APOdmlTrainingRowBiomeEvent makeEventWithRecordID:d adamID:iD odmlResponse:response appInstalled:installed isDupe:dupe rerankingError:error impressed:v8 tapped:?];
  [APOdmlTrainingRowBiomeEvent sendEvent:v9];
}

+ (void)updateWithRecordID:(id)d adamID:(id)iD event:(int64_t)event
{
  BYTE1(v5) = event == 2;
  LOBYTE(v5) = event == 1;
  v6 = [APOdmlTrainingRowBiomeEvent makeEventWithRecordID:d adamID:iD odmlResponse:0 appInstalled:0 isDupe:0 rerankingError:0 impressed:v5 tapped:?];
  [APOdmlTrainingRowBiomeEvent sendEvent:v6];
}

+ (void)sendEvent:(id)event
{
  eventCopy = event;
  v4 = BiomeLibrary();
  adPlatforms = [v4 AdPlatforms];
  oDML = [adPlatforms ODML];
  trainingRows = [oDML TrainingRows];

  source = [trainingRows source];
  [source sendEvent:eventCopy];
}

+ (void)removeAll
{
  v2 = BiomeLibrary();
  adPlatforms = [v2 AdPlatforms];
  oDML = [adPlatforms ODML];
  trainingRows = [oDML TrainingRows];

  pruner = [trainingRows pruner];
  [pruner deleteWithPolicy:@"personalized-ads-on" eventsPassingTest:&unk_287367680];
}

+ (id)makeEventWithRecordID:(id)d adamID:(id)iD odmlResponse:(id)response appInstalled:(BOOL)installed isDupe:(BOOL)dupe rerankingError:(id)error impressed:(BOOL)impressed tapped:(BOOL)self0
{
  dupeCopy = dupe;
  installedCopy = installed;
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  responseCopy = response;
  v17 = [[APOdmlSettings alloc] initWithPlacementType:0 assetManagerType:0];
  v34 = [APOdmlTrainingRowBiomeEvent featureForKey:@"appUsageVector"];
  v33 = [APOdmlTrainingRowBiomeEvent featureForKey:@"installedAppVector"];
  v32 = [APOdmlTrainingRowBiomeEvent featureForKey:@"appDownloadVector"];
  v31 = [APOdmlTrainingRowBiomeEvent featureForKey:@"userQueryVector"];
  v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:responseCopy requiringSecureCoding:1 error:0];

  v18 = objc_alloc(MEMORY[0x277CF0FB0]);
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[APOdmlSettings deploymentID](v17, "deploymentID")];
  experimentID = [(APOdmlSettings *)v17 experimentID];
  treatmentID = [(APOdmlSettings *)v17 treatmentID];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:impressed];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:tapped];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:dupeCopy];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:installedCopy];
  v25 = v24;
  if (errorCopy)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(errorCopy, "code")}];
    v27 = [v18 initWithDeploymentID:v29 experimentID:experimentID treatmentID:treatmentID adamID:iDCopy impressed:v21 tapped:v22 dupe:v23 installed:v25 errorCode:v26 appUsageVector:v34 appDownloadVector:v32 installedAppVector:v33 userQueryVector:v31 serverResponse:v30 recordID:dCopy];
  }

  else
  {
    v27 = [v18 initWithDeploymentID:v29 experimentID:experimentID treatmentID:treatmentID adamID:iDCopy impressed:v21 tapped:v22 dupe:v23 installed:v24 errorCode:0 appUsageVector:v34 appDownloadVector:v32 installedAppVector:v33 userQueryVector:v31 serverResponse:v30 recordID:dCopy];
  }

  return v27;
}

+ (id)featureForKey:(id)key
{
  keyCopy = key;
  v4 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v5 = [v4 assetManagerForPlacementType:0 assetManagerType:0];
  v6 = [v5 featureForName:keyCopy];

  arrayOfNumbers = [v6 arrayOfNumbers];

  return arrayOfNumbers;
}

@end