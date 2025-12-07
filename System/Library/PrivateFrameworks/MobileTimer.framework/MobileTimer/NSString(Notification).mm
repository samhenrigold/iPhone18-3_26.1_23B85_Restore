@interface NSString(Notification)
- (id)mtStringByAppendingNotificationDate:()Notification;
- (id)mtStringByRemovingNotificationDate;
- (id)mtStringByRemovingNotificationPrefixes;
@end

@implementation NSString(Notification)

- (id)mtStringByRemovingNotificationPrefixes
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = +[MTUserNotificationCenter notificationPrefixes];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      v7 = selfCopy;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        selfCopy = [v7 stringByReplacingOccurrencesOfString:*(*(&v10 + 1) + 8 * v6) withString:&stru_1F29360E0];

        ++v6;
        v7 = selfCopy;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  mtStringByRemovingNotificationDate = [selfCopy mtStringByRemovingNotificationDate];

  return mtStringByRemovingNotificationDate;
}

- (id)mtStringByRemovingNotificationDate
{
  v1 = [self componentsSeparatedByString:@"_"];
  firstObject = [v1 firstObject];

  return firstObject;
}

- (id)mtStringByAppendingNotificationDate:()Notification
{
  v4 = mtStringByAppendingNotificationDate__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [NSString(Notification) mtStringByAppendingNotificationDate:];
  }

  v6 = [mtStringByAppendingNotificationDate____dateFormatter stringFromDate:v5];

  v7 = [self stringByAppendingFormat:@"%@%@", @"_", v6];

  return v7;
}

@end