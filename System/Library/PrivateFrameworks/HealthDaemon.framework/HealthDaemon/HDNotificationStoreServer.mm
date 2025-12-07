@interface HDNotificationStoreServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
@end

@implementation HDNotificationStoreServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  notificationManager = [profile notificationManager];

  if (notificationManager)
  {
    v17 = [(HDStandardTaskServer *)[HDNotificationStoreServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v18 = notificationManager;
    notificationManager = v17->_notificationManager;
    v17->_notificationManager = v18;
  }

  else
  {
    notificationManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (notificationManager)
    {
      if (error)
      {
        v20 = notificationManager;
        *error = notificationManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

+ (id)requiredEntitlements
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end