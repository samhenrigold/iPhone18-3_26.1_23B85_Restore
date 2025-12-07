@interface RTEventAgentHelper
+ (id)signingIdentifierFromSelf;
- (RTEventAgentHelper)initWithRestorationIdentifier:(id)identifier;
@end

@implementation RTEventAgentHelper

+ (id)signingIdentifierFromSelf
{
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopySigningIdentifier(v2, 0);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RTEventAgentHelper)initWithRestorationIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy && +[RTEventAgentHelper launchdManaged])
  {
    v21.receiver = self;
    v21.super_class = RTEventAgentHelper;
    v5 = [(RTEventAgentHelper *)&v21 init];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = +[RTEventAgentHelper signingIdentifierFromSelf];
      identifierCopy = [v6 initWithFormat:@"%@-%@", v7, identifierCopy];
      restorationIdentifier = v5->_restorationIdentifier;
      v5->_restorationIdentifier = identifierCopy;

      if (v5->_restorationIdentifier)
      {
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10)
        {
          v11 = v10;
          v12 = xpc_string_create([(NSString *)v5->_restorationIdentifier UTF8String]);
          if (v12)
          {
            v13 = v12;
            xpc_dictionary_set_value(v11, "RestorationIdentifier", v12);
            [@"com.apple.routined-events" UTF8String];
            xpc_set_event();
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                restorationIdentifier = [(RTEventAgentHelper *)v5 restorationIdentifier];
                *buf = 138412290;
                v23 = restorationIdentifier;
                _os_log_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_INFO, "setup client with restorationIdentifier, %@", buf, 0xCu);
              }
            }

            uTF8String = [@"com.apple.routined-events" UTF8String];
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __52__RTEventAgentHelper_initWithRestorationIdentifier___block_invoke;
            handler[3] = &unk_1E80B4C58;
            v20 = v5;
            xpc_set_event_stream_handler(uTF8String, MEMORY[0x1E69E96A0], handler);
          }
        }
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __52__RTEventAgentHelper_initWithRestorationIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) restorationIdentifier];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_INFO, "client with restorationIdentifier, %@, woken up by CoreRoutine", &v4, 0xCu);
    }
  }
}

@end