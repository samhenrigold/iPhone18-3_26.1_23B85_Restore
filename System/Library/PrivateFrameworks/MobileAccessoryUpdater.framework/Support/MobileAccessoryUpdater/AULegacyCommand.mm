@interface AULegacyCommand
- (AULegacyCommand)initWithCommand:(int)command forFilter:(id)filter options:(id)options;
@end

@implementation AULegacyCommand

- (AULegacyCommand)initWithCommand:(int)command forFilter:(id)filter options:(id)options
{
  filterCopy = filter;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = AULegacyCommand;
  v10 = [(AULegacyCommand *)&v26 init];
  v11 = v10;
  if (v10)
  {
    v10->_commandType = command;
    v12 = [filterCopy copy];
    filter = v11->_filter;
    v11->_filter = v12;

    v11->_isConnectionEvent = 0;
    if (optionsCopy)
    {
      v14 = xpc_copy(optionsCopy);
      eventOptions = v11->_eventOptions;
      v11->_eventOptions = v14;

      v16 = objc_opt_new();
      uint64 = xpc_dictionary_get_uint64(v11->_eventOptions, "IOMatchLaunchServiceID");
      if (uint64)
      {
        v18 = [NSNumber numberWithUnsignedLongLong:uint64];
        [v16 setObject:v18 forKey:@"IOMatchLaunchServiceID"];
      }

      v19 = objectFromXpcDictionary();
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v16 addEntriesFromDictionary:v19];
        }
      }

      v20 = xpc_dictionary_get_value(v11->_eventOptions, "EAMatchingSerialNumber");
      v21 = v20;
      if (v20 && xpc_get_type(v20) == &_xpc_type_string)
      {
        v22 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v21)];
        [v16 setObject:v22 forKey:@"SerialNumber"];
      }

      if (xpc_dictionary_get_BOOL(v11->_eventOptions, "DeviceIdleLaunch"))
      {
        [v16 setObject:&__kCFBooleanTrue forKey:@"DeviceIdleLaunch"];
      }

      v23 = [NSDictionary dictionaryWithDictionary:v16];
      commandOptions = v11->_commandOptions;
      v11->_commandOptions = v23;
    }
  }

  return v11;
}

@end