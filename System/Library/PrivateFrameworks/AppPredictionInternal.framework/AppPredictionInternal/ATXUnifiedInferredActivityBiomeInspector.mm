@interface ATXUnifiedInferredActivityBiomeInspector
+ (id)inferredActivityStreamFromName:(id)name;
+ (void)retrieveInferredActivitySessionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply;
+ (void)retrieveInferredActivityTransitionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply;
@end

@implementation ATXUnifiedInferredActivityBiomeInspector

+ (id)inferredActivityStreamFromName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:@"timeBasedInferredActivity"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"appLaunchInferredActivity") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"heuristicInferredActivity") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"computedModeActivity") & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"unifiedInferredActivity"))
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)retrieveInferredActivitySessionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply
{
  v19[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v9 = [self inferredActivityStreamFromName:name];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v9 sessionPublisherFromStartTime:time];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __110__ATXUnifiedInferredActivityBiomeInspector_retrieveInferredActivitySessionsFromPublisherName_startTime_reply___block_invoke_2;
    v16[3] = &unk_27859CEC8;
    v17 = v10;
    v12 = v10;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_108 receiveInput:v16];
    replyCopy[2](replyCopy, v12, 0);

    replyCopy = v12;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Received invalid stream identifier";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v14 initWithDomain:@"ATXUnifiedInferredActivityBiomeInspectorErrorDomain" code:-1 userInfo:v15];

    (replyCopy)[2](replyCopy, MEMORY[0x277CBEBF8], v11);
  }
}

+ (void)retrieveInferredActivityTransitionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply
{
  v19[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v9 = [self inferredActivityStreamFromName:name];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v9 transitionPublisherFromStartTime:time];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __113__ATXUnifiedInferredActivityBiomeInspector_retrieveInferredActivityTransitionsFromPublisherName_startTime_reply___block_invoke_2;
    v16[3] = &unk_27859CEF0;
    v17 = v10;
    v12 = v10;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_35_2 receiveInput:v16];
    replyCopy[2](replyCopy, v12, 0);

    replyCopy = v12;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Received invalid stream identifier";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v14 initWithDomain:@"ATXUnifiedInferredActivityBiomeInspectorErrorDomain" code:-1 userInfo:v15];

    (replyCopy)[2](replyCopy, MEMORY[0x277CBEBF8], v11);
  }
}

@end