@interface HMDAccessoryFirmwareUpdateSchedulerWingman
- (id)newBackgroundSchedulerWithIdentifier:(id)identifier;
- (id)newInitialDelayTimerWithDelay:(double)delay options:(unsigned int)options;
- (id)policyForAccessory:(id)accessory sessionState:(unint64_t)state workQueue:(id)queue;
@end

@implementation HMDAccessoryFirmwareUpdateSchedulerWingman

- (id)newInitialDelayTimerWithDelay:(double)delay options:(unsigned int)options
{
  v4 = *&options;
  v6 = objc_alloc(MEMORY[0x277D0F920]);

  return [v6 initWithTimeInterval:v4 options:delay];
}

- (id)policyForAccessory:(id)accessory sessionState:(unint64_t)state workQueue:(id)queue
{
  accessoryCopy = accessory;
  queueCopy = queue;
  if (state == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    if (state != 2)
    {
      goto LABEL_6;
    }

    v10 = 1;
  }

  v9 = HMDFirmwareUpdatePolicyForAccessory(accessoryCopy, v10, queueCopy);
LABEL_6:

  return v9;
}

- (id)newBackgroundSchedulerWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCA8B8];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithIdentifier:identifierCopy];

  return v5;
}

@end