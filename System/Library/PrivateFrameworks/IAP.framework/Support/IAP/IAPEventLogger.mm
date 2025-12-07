@interface IAPEventLogger
+ (void)LogMsg:(int)msg WithDictionary:(id)dictionary andKeys:(id)keys;
+ (void)LogMsg:(int)msg WithKey:(id)key AndValue:(id)value;
+ (void)LogMsg:(int)msg WithStr:(id)str;
@end

@implementation IAPEventLogger

+ (void)LogMsg:(int)msg WithStr:(id)str
{
  if (qword_100031E38 != -1)
  {
    sub_10001B808();
  }

  if (qword_100031E28)
  {
    if (msg > 2)
    {
      v6 = "IapLoggerEventTypeUnknown";
    }

    else
    {
      v6 = (&off_10002D9C0)[msg];
    }

    asl_set(qword_100031E30, "IapLoggerEventType", v6);
    if (asl_log(qword_100031E28, qword_100031E30, 4, "%s", [str cStringUsingEncoding:1]))
    {
      syslog(3, "Error writing to the Event Log file. status=%d");
    }
  }

  else
  {
    syslog(3, "Could not write to the Event Log file");
  }
}

+ (void)LogMsg:(int)msg WithKey:(id)key AndValue:(id)value
{
  v5 = *&msg;
  value = [NSString stringWithFormat:@"%@ = %@;", key, value];

  [IAPEventLogger LogMsg:v5 WithStr:value];
}

+ (void)LogMsg:(int)msg WithDictionary:(id)dictionary andKeys:(id)keys
{
  v7 = *&msg;
  [IAPEventLogger LogMsg:*&msg WithStr:@"AccessoryInfo = {"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [keys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(keys);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [dictionary objectForKey:v12];
        if (v13)
        {
          [IAPEventLogger LogMsg:v7 WithKey:[NSString stringWithFormat:@"    %@" AndValue:v12], v13];
        }
      }

      v9 = [keys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [IAPEventLogger LogMsg:v7 WithStr:@"} // End AccessoryInfo"];
}

@end