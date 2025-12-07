@interface CALNDefaultEKCalendarNotificationReferenceProvider
+ (CALNDefaultEKCalendarNotificationReferenceProvider)sharedInstance;
- (id)notificationReferenceForObjectID:(id)d withType:(int)type date:(id)date inEventStore:(id)store;
- (id)notificationReferenceForObjectID:(id)d withType:(int)type inEventStore:(id)store;
@end

@implementation CALNDefaultEKCalendarNotificationReferenceProvider

+ (CALNDefaultEKCalendarNotificationReferenceProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CALNDefaultEKCalendarNotificationReferenceProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_19 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_19, block);
  }

  v2 = sharedInstance_sharedInstance_16;

  return v2;
}

uint64_t __68__CALNDefaultEKCalendarNotificationReferenceProvider_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_16 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)notificationReferenceForObjectID:(id)d withType:(int)type inEventStore:(id)store
{
  v5 = *&type;
  v7 = MEMORY[0x277CC59D0];
  storeCopy = store;
  dCopy = d;
  v10 = [[v7 alloc] initWithType:v5 objectID:dCopy eventStore:storeCopy];

  return v10;
}

- (id)notificationReferenceForObjectID:(id)d withType:(int)type date:(id)date inEventStore:(id)store
{
  v7 = *&type;
  v9 = MEMORY[0x277CC59D0];
  storeCopy = store;
  dateCopy = date;
  dCopy = d;
  v13 = [[v9 alloc] initWithType:v7 objectID:dCopy date:dateCopy eventStore:storeCopy];

  return v13;
}

@end