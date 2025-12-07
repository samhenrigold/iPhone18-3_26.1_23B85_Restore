@interface ATXNotificationEntityFeatures
- (ATXNotificationEntityFeatures)init;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
@end

@implementation ATXNotificationEntityFeatures

- (ATXNotificationEntityFeatures)init
{
  v6.receiver = self;
  v6.super_class = ATXNotificationEntityFeatures;
  v2 = [(ATXNotificationEntityFeatures *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    secondsToEngagement = v2->_secondsToEngagement;
    v2->_secondsToEngagement = v3;
  }

  return v2;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v9.receiver = self;
  v9.super_class = ATXNotificationEntityFeatures;
  v5 = [(ATXNotificationEntityFeatures *)&v9 init];
  if (v5)
  {
    v6 = [nCopy objectForKeyedSubscript:@"secondsToEngagement"];
    secondsToEngagement = v5->_secondsToEngagement;
    v5->_secondsToEngagement = v6;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v6[1] = *MEMORY[0x277D85DE8];
  secondsToEngagement = self->_secondsToEngagement;
  v5 = @"secondsToEngagement";
  v6[0] = secondsToEngagement;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end