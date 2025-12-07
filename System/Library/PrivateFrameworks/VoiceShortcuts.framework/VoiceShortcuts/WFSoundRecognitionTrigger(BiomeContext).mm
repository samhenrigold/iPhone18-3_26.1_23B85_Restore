@interface WFSoundRecognitionTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFSoundRecognitionTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  eventBody = [v8 eventBody];
  if (eventBody)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = eventBody;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v14 = MEMORY[0x277CBEB98];
  soundDetectionTypes = [self soundDetectionTypes];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __100__WFSoundRecognitionTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke;
  v22[3] = &unk_2788FE4B0;
  v22[4] = &v23;
  v16 = [soundDetectionTypes if_map:v22];
  v17 = [v14 setWithSet:v16];

  if (*(v24 + 24) == 1)
  {
    allBMApplianceTypes = [MEMORY[0x277D7C088] allBMApplianceTypes];
    v19 = [v17 setByAddingObjectsFromArray:allBMApplianceTypes];

    v17 = v19;
  }

  v20 = getWFTriggersLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "[WFSoundRecognitionTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_DEFAULT, "%s Received sound detection event %{public}@ for trigger containing sound detection types %{public}@", buf, 0x20u);
  }

  type = [v13 type];
  v10[2](v10, [v17 containsObject:type]);

  _Block_object_dispose(&v23, 8);
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = MEMORY[0x277CF1B58];
  v4 = a3;
  soundDetection = [v3 soundDetection];
  publisher = [soundDetection publisher];
  v7 = [publisher subscribeOn:v4];

  return v7;
}

@end