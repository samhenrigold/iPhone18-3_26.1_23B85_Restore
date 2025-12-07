@interface EventKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation EventKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F197B34;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9068 != -1)
  {
    dispatch_once(&qword_2806D9068, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2B910 forKeyedSubscript:@"EKEventStore"];
  [contextCopy setObject:&unk_287F2B930 forKeyedSubscript:@"EKEvent"];
  [contextCopy setObject:&unk_287F2B950 forKeyedSubscript:@"EKAlarm"];
  v5 = [contextCopy objectForKeyedSubscript:@"EKAlarm"];
  [v5 setObject:&unk_287F2B970 forKeyedSubscript:@"withRelativeOffset"];

  v6 = [contextCopy objectForKeyedSubscript:@"EKAlarm"];

  [v6 setObject:&unk_287F2B990 forKeyedSubscript:@"withAbsoluteDate"];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55358 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"EKAuthorizationStatusNotDetermined" descriptor:dictionary];
  [dictionary setObject:&unk_287F55370 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKAuthorizationStatusRestricted" descriptor:dictionary];
  [dictionary setObject:&unk_287F55388 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKAuthorizationStatusDenied" descriptor:dictionary];
  [dictionary setObject:&unk_287F553A0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKAuthorizationStatusAuthorized" descriptor:dictionary];
  [dictionary setObject:&unk_287F55358 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEventStatusNone" descriptor:dictionary];
  [dictionary setObject:&unk_287F55370 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEventStatusConfirmed" descriptor:dictionary];
  [dictionary setObject:&unk_287F55388 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEventStatusTentative" descriptor:dictionary];
  [dictionary setObject:&unk_287F553A0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEventStatusCanceled" descriptor:dictionary];
  [dictionary setObject:&unk_287F553B8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEntityTypeEvent" descriptor:dictionary];
  [dictionary setObject:&unk_287F553D0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEntityTypeReminder" descriptor:dictionary];
  [dictionary setObject:&unk_287F55358 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKSpanThisEvent" descriptor:dictionary];
  [dictionary setObject:&unk_287F55370 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKSpanFutureEvents" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CC5948] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEventStoreChangedNotification" descriptor:dictionary];
}

@end