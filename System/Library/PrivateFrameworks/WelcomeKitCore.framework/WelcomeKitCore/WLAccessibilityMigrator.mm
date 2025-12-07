@interface WLAccessibilityMigrator
- (WLFeaturePayload)featurePayload;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)setState:(id)state;
@end

@implementation WLAccessibilityMigrator

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (void)estimateItemSizeForSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  if (![summaryCopy itemSize])
  {
    [summaryCopy setItemSize:5242880];
  }
}

- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion
{
  v29[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  summaryCopy = summary;
  accountCopy = account;
  completionCopy = completion;
  if (dataCopy && [dataCopy length])
  {
    v13 = [MEMORY[0x277D7B898] settingsWithData:dataCopy];
    v14 = v13;
    if (v13)
    {
      if ([v13 enableAccessibilityDisplayInversion])
      {
        _AXSInvertColorsSetEnabled();
      }

      [v14 accessibilityFontScale];
      if (v15 > 0.0)
      {
        [v14 accessibilityFontScale];
        if (v16 != 1.0)
        {
          [v14 accessibilityFontScale];
          if (v17 < 1.29999995)
          {
            [v14 accessibilityFontScale];
            if (v18 < 1.14999998)
            {
              [v14 accessibilityFontScale];
            }
          }

          _AXSSetPreferredContentSizeCategoryName();
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      _WLLog();
      if (completionCopy)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277D7B8F8];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"did fail to convert json";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v25 = [v22 errorWithDomain:v23 code:1 userInfo:v24];

        (completionCopy)[2](completionCopy, 0, v25);
      }
    }

    goto LABEL_18;
  }

  _WLLog();
  if (completionCopy)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D7B8F8];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"could not import anything from nil data";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v14 = [v19 errorWithDomain:v20 code:1 userInfo:v21];

    (completionCopy)[2](completionCopy, 0, v14);
LABEL_18:
  }
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end