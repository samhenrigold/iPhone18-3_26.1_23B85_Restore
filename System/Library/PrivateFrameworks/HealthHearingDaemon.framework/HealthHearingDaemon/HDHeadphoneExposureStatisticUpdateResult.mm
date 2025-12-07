@interface HDHeadphoneExposureStatisticUpdateResult
+ (id)_resultWithIncludedSeries:(BOOL)series canTriggerNotification:(BOOL)notification;
+ (id)_resultWithIncludedSeries:(BOOL)series samples:(id)samples;
- (id)_initWithIncludedSeries:(BOOL)series canTriggerNotification:(BOOL)notification;
- (void)combineWithResult:(id)result;
@end

@implementation HDHeadphoneExposureStatisticUpdateResult

- (void)combineWithResult:(id)result
{
  resultCopy = result;
  includedSeries = [(HDHeadphoneExposureStatisticUpdateResult *)self includedSeries];
  if (includedSeries)
  {
    LOBYTE(includedSeries) = [resultCopy includedSeries];
  }

  self->_includedSeries = includedSeries;
  if ([(HDHeadphoneExposureStatisticUpdateResult *)self canTriggerNotification])
  {
    canTriggerNotification = 1;
  }

  else
  {
    canTriggerNotification = [resultCopy canTriggerNotification];
  }

  self->_canTriggerNotification = canTriggerNotification;

  MEMORY[0x2821F96F8]();
}

+ (id)_resultWithIncludedSeries:(BOOL)series samples:(id)samples
{
  seriesCopy = series;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  samplesCopy = samples;
  v7 = [samplesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(samplesCopy);
        }

        if ([*(*(&v12 + 1) + 8 * i) hk_canTriggerHeadphoneExposureNotification])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [samplesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = [self _resultWithIncludedSeries:seriesCopy canTriggerNotification:v7];

  return v10;
}

+ (id)_resultWithIncludedSeries:(BOOL)series canTriggerNotification:(BOOL)notification
{
  v4 = [objc_alloc(objc_opt_class()) _initWithIncludedSeries:series canTriggerNotification:notification];

  return v4;
}

- (id)_initWithIncludedSeries:(BOOL)series canTriggerNotification:(BOOL)notification
{
  v10.receiver = self;
  v10.super_class = HDHeadphoneExposureStatisticUpdateResult;
  v6 = [(HDHeadphoneExposureStatisticUpdateResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_includedSeries = series;
    v6->_canTriggerNotification = notification;
    v8 = v6;
  }

  return v7;
}

@end