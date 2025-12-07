@interface TAMetricsInterVisit
- (NSString)description;
- (TAMetricsInterVisit)init;
- (TASPAdvertisement)latestAdvertisement;
- (id)descriptionDictionary;
@end

@implementation TAMetricsInterVisit

- (TAMetricsInterVisit)init
{
  v8.receiver = self;
  v8.super_class = TAMetricsInterVisit;
  v2 = [(TAMetricsInterVisit *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TAInterVisitMetricPerDevice);
    currentInterVisitMetric = v2->_currentInterVisitMetric;
    v2->_currentInterVisitMetric = v3;

    v5 = objc_alloc_init(TAInterVisitMetricPerDevice);
    totalInterVisitMetric = v2->_totalInterVisitMetric;
    v2->_totalInterVisitMetric = v5;
  }

  return v2;
}

- (TASPAdvertisement)latestAdvertisement
{
  currentInterVisitMetric = self->_currentInterVisitMetric;
  if (currentInterVisitMetric)
  {
    if (!self->_totalInterVisitMetric)
    {
LABEL_5:
      currentInterVisitMetric = [currentInterVisitMetric latestAdvertisement];
      goto LABEL_9;
    }

    latestAdvertisement = [currentInterVisitMetric latestAdvertisement];
    address = [latestAdvertisement address];
    latestAdvertisement2 = [(TAInterVisitMetricPerDevice *)self->_totalInterVisitMetric latestAdvertisement];
    address2 = [latestAdvertisement2 address];
    v8 = [address isEqualToData:address2];

    if (v8)
    {
      currentInterVisitMetric = self->_currentInterVisitMetric;
      goto LABEL_5;
    }

    v9 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [(TAMetricsInterVisit *)v9 latestAdvertisement];
    }

    currentInterVisitMetric = 0;
  }

LABEL_9:

  return currentInterVisitMetric;
}

- (id)descriptionDictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"MetricsType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v12[0] = v4;
  v11[1] = @"CurrentInterVisitMetric";
  currentInterVisitMetric = [(TAMetricsInterVisit *)self currentInterVisitMetric];
  descriptionDictionary = [currentInterVisitMetric descriptionDictionary];
  v12[1] = descriptionDictionary;
  v11[2] = @"TotalInterVisitMetric";
  totalInterVisitMetric = [(TAMetricsInterVisit *)self totalInterVisitMetric];
  descriptionDictionary2 = [totalInterVisitMetric descriptionDictionary];
  v12[2] = descriptionDictionary2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (NSString)description
{
  descriptionDictionary = [(TAMetricsInterVisit *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAInterVisitMetricPerDevice *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

@end