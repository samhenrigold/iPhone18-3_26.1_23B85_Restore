@interface APOdmlAnalyticsModelTraining
+ (id)_versionAndIdentifiersFromRecordInfo:(id)info isCounterfactual:(BOOL)counterfactual;
+ (void)sendEvent:(id)event additionalDetails:(id)details info:(id)info isCounterfactual:(BOOL)counterfactual numOfRows:(unint64_t)rows normDelta:(double)delta;
@end

@implementation APOdmlAnalyticsModelTraining

+ (void)sendEvent:(id)event additionalDetails:(id)details info:(id)info isCounterfactual:(BOOL)counterfactual numOfRows:(unint64_t)rows normDelta:(double)delta
{
  counterfactualCopy = counterfactual;
  eventCopy = event;
  detailsCopy = details;
  v15 = MEMORY[0x277CCACA8];
  infoCopy = info;
  v17 = [v15 stringWithFormat:@"%@.%@", @"com.apple.ap.SearchAdsODML", @"ModelTraining"];
  v18 = [self _versionAndIdentifiersFromRecordInfo:infoCopy isCounterfactual:counterfactualCopy];

  if (eventCopy)
  {
    [v18 setValue:@"2" forKey:@"statusCode"];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(eventCopy, "code")];
    [v18 setValue:v19 forKey:@"statusDetails"];

    userInfo = [eventCopy userInfo];
    v21 = [userInfo objectForKeyedSubscript:@"errorSource"];
    [v18 setValue:v21 forKey:@"errorSource"];
  }

  else
  {
    [v18 setValue:@"1" forKey:@"statusCode"];
  }

  if (delta != 9.22337204e18)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&delta];
    [v18 setValue:v22 forKey:@"normDelta"];
  }

  if (rows != 0x7FFFFFFFFFFFFFFFLL)
  {
    rows = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", rows];
    [v18 setValue:rows forKey:@"numTrainingRows"];
  }

  if (detailsCopy)
  {
    [v18 addEntriesFromDictionary:detailsCopy];
  }

  v24 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];
  [self _analyticsSendEvent:v17 eventPayload:v24];
}

+ (id)_versionAndIdentifiersFromRecordInfo:(id)info isCounterfactual:(BOOL)counterfactual
{
  counterfactualCopy = counterfactual;
  infoCopy = info;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 4];
  [dictionary setValue:v7 forKey:@"ODMLVersion"];

  if (infoCopy)
  {
    v8 = [infoCopy objectForKey:@"PlacementType"];
    v9 = counterfactualCopy;
    v10 = +[APOdmlPFLUtilities keyForTypes:placementType:assetManagerType:](APOdmlPFLUtilities, "keyForTypes:placementType:assetManagerType:", @"TuriTrialTreatmentID", [v8 unsignedIntegerValue], counterfactualCopy);
    v11 = [infoCopy objectForKey:v10];

    [dictionary setValue:v11 forKey:@"trialTreatmentID"];
    v12 = +[APOdmlPFLUtilities keyForTypes:placementType:assetManagerType:](APOdmlPFLUtilities, "keyForTypes:placementType:assetManagerType:", @"TuriTrialExperimentID", [v8 unsignedIntegerValue], v9);
    v13 = [infoCopy objectForKey:v12];

    [dictionary setValue:v13 forKey:@"trialExperimentID"];
    v14 = +[APOdmlPFLUtilities keyForTypes:placementType:assetManagerType:](APOdmlPFLUtilities, "keyForTypes:placementType:assetManagerType:", @"TuriTrialDeploymentID", [v8 unsignedIntegerValue], v9);
    v15 = [infoCopy objectForKey:v14];

    stringValue = [v15 stringValue];
    [dictionary setValue:stringValue forKey:@"trialDeploymentID"];
  }

  return dictionary;
}

@end