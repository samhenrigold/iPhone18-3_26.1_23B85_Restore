@interface PPConnectionsCalendarSource
+ (PPConnectionsCalendarSource)sharedInstance;
+ (id)locationLabelFromEvent:(id)event;
+ (id)locationNameFromEvent:(id)event;
+ (id)locationValueFromEvent:(id)event;
- (BOOL)isCalendarEventEligibleForLocationPrediction:(id)prediction;
- (PPConnectionsCalendarSource)init;
- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set;
@end

@implementation PPConnectionsCalendarSource

- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set
{
  consumerCopy = consumer;
  v47 = *MEMORY[0x277D85DE8];
  latestCopy = latest;
  setCopy = set;
  if ((consumerCopy & 6) != 0 || [criteria locationField] == 10)
  {
    v14 = 0;
  }

  else
  {
    [latestCopy timeIntervalSinceNow];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = v18;
    if (self)
    {
      localEventStore = self->_localEventStore;
      v21 = v18;
      v22 = [v21 dateByAddingTimeInterval:v17];
      v23 = [(PPLocalEventStore *)localEventStore eventsFromDate:v21 toDate:v22];
    }

    else
    {
      v23 = 0;
    }

    if ([v23 count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        v28 = *v42;
LABEL_12:
        v29 = 0;
        while (1)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v41 + 1) + 8 * v29);
          if ([(PPConnectionsCalendarSource *)self isCalendarEventEligibleForLocationPrediction:v30, v41])
          {
            break;
          }

          ++v29;
          v27 = 1;
          if (v26 == v29)
          {
            v26 = [v24 countByEnumeratingWithState:&v41 objects:v46 count:16];
            if (v26)
            {
              goto LABEL_12;
            }

LABEL_25:
            v39 = setCopy;
            v40 = 30;
            goto LABEL_22;
          }
        }

        v31 = [objc_opt_class() locationLabelFromEvent:v30];
        v32 = [objc_opt_class() locationValueFromEvent:v30];
        v33 = objc_alloc(MEMORY[0x277D3A348]);
        v34 = [v33 initWithOriginatingBundleID:*MEMORY[0x277D3A5F0]];
        v35 = [objc_opt_class() locationNameFromEvent:v30];
        [v34 setName:v35];

        [v34 setLabel:v31];
        [v34 setValue:v32];
        [v34 setShortValue:v32];
        [v34 setSource:@"calendar"];
        v36 = MEMORY[0x277CCABB0];
        v37 = +[PPConnectionsParameters sharedInstance];
        [v37 calendarEventLocationExpirySeconds];
        v38 = [v36 numberWithDouble:?];
        [v34 setLifetime:v38];

        if (v34)
        {
          v45 = v34;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];

          goto LABEL_27;
        }

        if (v27)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    else
    {
      v39 = setCopy;
      v40 = 29;
LABEL_22:
      [v39 push:v40];
    }

    v14 = 0;
LABEL_27:
  }

  return v14;
}

- (BOOL)isCalendarEventEligibleForLocationPrediction:(id)prediction
{
  predictionCopy = prediction;
  v4 = predictionCopy;
  if (predictionCopy && ([predictionCopy eventFlags] & 4) != 0)
  {
    structuredLocationAddress = [v4 structuredLocationAddress];
    v5 = structuredLocationAddress != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PPConnectionsCalendarSource)init
{
  v6.receiver = self;
  v6.super_class = PPConnectionsCalendarSource;
  v2 = [(PPConnectionsCalendarSource *)&v6 init];
  if (v2)
  {
    v3 = +[PPLocalEventStore defaultStore];
    localEventStore = v2->_localEventStore;
    v2->_localEventStore = v3;
  }

  return v2;
}

+ (id)locationValueFromEvent:(id)event
{
  eventCopy = event;
  structuredLocationAddress = [eventCopy structuredLocationAddress];
  if (structuredLocationAddress)
  {
    structuredLocationAddress2 = [eventCopy structuredLocationAddress];
    v6 = [structuredLocationAddress2 stringByReplacingOccurrencesOfString:@" withString:{", @" "}];
    v7 = PPCollapseWhitespaceAndStrip();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)locationLabelFromEvent:(id)event
{
  eventCopy = event;
  structuredLocationTitle = [eventCopy structuredLocationTitle];
  if (structuredLocationTitle)
  {
    v5 = PPCollapseWhitespaceAndStrip();
  }

  else
  {
    title = [eventCopy title];
    v5 = PPCollapseWhitespaceAndStrip();
  }

  return v5;
}

+ (id)locationNameFromEvent:(id)event
{
  eventCopy = event;
  structuredLocationTitle = [eventCopy structuredLocationTitle];
  if (structuredLocationTitle)
  {
    v5 = PPCollapseWhitespaceAndStrip();
  }

  else
  {
    title = [eventCopy title];
    v5 = PPCollapseWhitespaceAndStrip();
  }

  return v5;
}

+ (PPConnectionsCalendarSource)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, &__block_literal_global_16175);
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __45__PPConnectionsCalendarSource_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end