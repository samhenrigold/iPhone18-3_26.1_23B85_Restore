@interface _CDSystemTimeCallbackScheduler
+ (_CDSystemTimeCallbackScheduler)sharedInstance;
- (_CDSystemTimeCallbackScheduler)initWithEventNameRoot:(id)root;
- (void)_handleCallbackAtDate:(id)date;
- (void)scheduleCallbackAtDate:(id)date identifier:(id)identifier requiringDeviceWake:(BOOL)wake;
- (void)unscheduleCallbackAtDate:(id)date identifier:(id)identifier requiringDeviceWake:(BOOL)wake;
@end

@implementation _CDSystemTimeCallbackScheduler

- (_CDSystemTimeCallbackScheduler)initWithEventNameRoot:(id)root
{
  rootCopy = root;
  v9.receiver = self;
  v9.super_class = _CDSystemTimeCallbackScheduler;
  v5 = [(_CDSystemTimeCallbackScheduler *)&v9 init];
  if (v5)
  {
    v6 = [rootCopy copy];
    eventNameRoot = v5->_eventNameRoot;
    v5->_eventNameRoot = v6;
  }

  return v5;
}

+ (_CDSystemTimeCallbackScheduler)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_CDSystemTimeCallbackScheduler sharedInstance];
  }

  v3 = sharedInstance_scheduler;

  return v3;
}

- (void)scheduleCallbackAtDate:(id)date identifier:(id)identifier requiringDeviceWake:(BOOL)wake
{
  v30[3] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  identifierCopy = identifier;
  eventNameRoot = [(_CDSystemTimeCallbackScheduler *)self eventNameRoot];
  if (identifierCopy && eventNameRoot)
  {

    if (dateCopy && wake)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = MEMORY[0x1E696AD98];
      [dateCopy timeIntervalSince1970];
      v13 = [v12 numberWithDouble:?];
      v14 = [v11 stringWithFormat:@"%@", v13];

      eventNameRoot2 = [(_CDSystemTimeCallbackScheduler *)self eventNameRoot];
      v30[0] = eventNameRoot2;
      v30[1] = identifierCopy;
      v30[2] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
      v17 = [v16 componentsJoinedByString:@"."];

      date = [MEMORY[0x1E695DF00] date];
      v19 = [date compare:dateCopy];

      contextChannel = [MEMORY[0x1E6997908] contextChannel];
      v21 = contextChannel;
      if (v19 == 1)
      {
        if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
        {
          [_CDSystemTimeCallbackScheduler scheduleCallbackAtDate:dateCopy identifier:v17 requiringDeviceWake:v21];
        }
      }

      else
      {
        if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
        {
          v22 = _CDFormattedDate();
          *buf = 138412546;
          v27 = v22;
          v28 = 2112;
          v29 = v17;
          _os_log_impl(&dword_1A9611000, v21, OS_LOG_TYPE_INFO, "Setting com.apple.alarm xpc event with date %@ for %@", buf, 0x16u);
        }

        v23 = [identifierCopy hasPrefix:@"com.apple.softwareupdateservicesd"];
        [dateCopy timeIntervalSince1970];
        v25 = (ceil(v24) * 1000000000.0);
        v21 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_date(v21, "Date", v25);
        xpc_dictionary_set_BOOL(v21, "UserVisible", v23 != 1);
        [v17 UTF8String];
        xpc_set_event();
      }
    }
  }

  else
  {
  }
}

- (void)unscheduleCallbackAtDate:(id)date identifier:(id)identifier requiringDeviceWake:(BOOL)wake
{
  v24[3] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  identifierCopy = identifier;
  eventNameRoot = [(_CDSystemTimeCallbackScheduler *)self eventNameRoot];
  if (identifierCopy && eventNameRoot)
  {

    if (dateCopy && wake)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = MEMORY[0x1E696AD98];
      [dateCopy timeIntervalSince1970];
      v13 = [v12 numberWithDouble:?];
      v14 = [v11 stringWithFormat:@"%@", v13];

      eventNameRoot2 = [(_CDSystemTimeCallbackScheduler *)self eventNameRoot];
      v24[0] = eventNameRoot2;
      v24[1] = identifierCopy;
      v24[2] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
      v17 = [v16 componentsJoinedByString:@"."];

      contextChannel = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
      {
        v19 = _CDFormattedDate();
        *buf = 138412546;
        v21 = v19;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_INFO, "Removing com.apple.alarm xpc event with date %@ for %@", buf, 0x16u);
      }

      [v17 UTF8String];
      xpc_set_event();
    }
  }

  else
  {
  }
}

- (void)_handleCallbackAtDate:(id)date
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD88];
  dateCopy = date;
  defaultCenter = [v4 defaultCenter];
  v8 = @"_CDSystemTimeCallbackDateKey";
  v9[0] = dateCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"_CDSystemTimeCallbackNotification" object:self userInfo:v7];
}

- (void)scheduleCallbackAtDate:(uint64_t)a1 identifier:(uint64_t)a2 requiringDeviceWake:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = _CDFormattedDate();
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1A9611000, a3, OS_LOG_TYPE_ERROR, "Setting com.apple.alarm xpc event to a past date %@ for %@", &v6, 0x16u);
}

@end