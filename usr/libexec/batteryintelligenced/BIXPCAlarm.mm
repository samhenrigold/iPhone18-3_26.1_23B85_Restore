@interface BIXPCAlarm
+ (id)getNameForEvent:(id)event;
+ (void)deleteAlarmWithName:(id)name;
+ (void)handleAlarmForEvent:(id)event;
+ (void)setAlarmWithName:(id)name withClock:(int)clock afterSeconds:(double)seconds wakeUpAP:(BOOL)p;
@end

@implementation BIXPCAlarm

+ (void)setAlarmWithName:(id)name withClock:(int)clock afterSeconds:(double)seconds wakeUpAP:(BOOL)p
{
  nameCopy = name;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (!v10)
  {
    v15 = sub_10001D668(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000318F8(v15);
    }

    goto LABEL_14;
  }

  xpc_dictionary_set_BOOL(v10, "ShouldWake", p);
  if (!clock)
  {
    v16 = ((time(0) + seconds) * 1000000000.0);
    xpc_dictionary_set_string(v11, "Type", "Walltime");
    xpc_dictionary_set_date(v11, "Date", v16);
    goto LABEL_11;
  }

  if (clock == 8)
  {
    v13 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) + seconds * 1000000000.0);
    v14 = "Uptime";
    goto LABEL_9;
  }

  if (clock != 4)
  {
    v15 = sub_10001D668(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000318B4(v15);
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) + seconds * 1000000000.0);
  v14 = "Monotonic";
LABEL_9:
  xpc_dictionary_set_string(v11, "Type", v14);
  xpc_dictionary_set_uint64(v11, "Date", v13);
LABEL_11:
  [nameCopy UTF8String];
  xpc_set_event();
LABEL_15:
}

+ (void)deleteAlarmWithName:(id)name
{
  [name UTF8String];

  xpc_set_event();
}

+ (id)getNameForEvent:(id)event
{
  string = xpc_dictionary_get_string(event, _xpc_event_key_name);

  return [NSString stringWithUTF8String:string];
}

+ (void)handleAlarmForEvent:(id)event
{
  eventCopy = event;
  v7 = [self getNameForEvent:eventCopy];
  reply = xpc_dictionary_create_reply(eventCopy);
  v6 = xpc_dictionary_get_remote_connection(eventCopy);

  if (reply && v6)
  {
    xpc_connection_send_message(v6, reply);
  }

  [self deleteAlarmWithName:v7];
}

@end