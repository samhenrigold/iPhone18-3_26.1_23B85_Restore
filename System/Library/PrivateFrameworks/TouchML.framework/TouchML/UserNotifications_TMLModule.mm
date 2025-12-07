@interface UserNotifications_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
@end

@implementation UserNotifications_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1D7720;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9328 != -1)
  {
    dispatch_once(&qword_2806D9328, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F56000 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"UNErrorCodeNotificationsNotAllowed" descriptor:dictionary];
  [dictionary setObject:&unk_287F56018 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeAttachmentInvalidURL" descriptor:dictionary];
  [dictionary setObject:&unk_287F56030 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeAttachmentUnrecognizedType" descriptor:dictionary];
  [dictionary setObject:&unk_287F56048 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeAttachmentInvalidFileSize" descriptor:dictionary];
  [dictionary setObject:&unk_287F56060 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeAttachmentNotInDataStore" descriptor:dictionary];
  [dictionary setObject:&unk_287F56078 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeAttachmentMoveIntoDataStoreFailed" descriptor:dictionary];
  [dictionary setObject:&unk_287F56090 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeAttachmentCorrupt" descriptor:dictionary];
  [dictionary setObject:&unk_287F560A8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeNotificationInvalidNoDate" descriptor:dictionary];
  [dictionary setObject:&unk_287F560C0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNErrorCodeNotificationInvalidNoContent" descriptor:dictionary];
  [dictionary setObject:&unk_287F560D8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNNotificationActionOptionAuthenticationRequired" descriptor:dictionary];
  [dictionary setObject:&unk_287F560F0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNNotificationActionOptionDestructive" descriptor:dictionary];
  [dictionary setObject:&unk_287F56108 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNNotificationActionOptionForeground" descriptor:dictionary];
  [dictionary setObject:&unk_287F56120 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"UNNotificationActionOptionNone" descriptor:dictionary];
}

@end