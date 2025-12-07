@interface HAPNotification
+ (id)typeToString:(unint64_t)string;
+ (void)postNotification:(id)notification object:(id)object userInfo:(id)info;
@end

@implementation HAPNotification

+ (id)typeToString:(unint64_t)string
{
  if (string - 1 >= 4)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Reachability Notification type %ld", string];
  }

  else
  {
    string = off_2786D2B48[string - 1];
  }

  return string;
}

+ (void)postNotification:(id)notification object:(id)object userInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objectCopy = object;
  infoCopy = info;
  v10 = objc_autoreleasePoolPush();
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138544130;
    v15 = v12;
    v16 = 2112;
    v17 = notificationCopy;
    v18 = 2112;
    v19 = objectCopy;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@CoreHAP - Sending notification %@ with object %@ and userInfo %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:notificationCopy object:objectCopy userInfo:infoCopy];
}

@end