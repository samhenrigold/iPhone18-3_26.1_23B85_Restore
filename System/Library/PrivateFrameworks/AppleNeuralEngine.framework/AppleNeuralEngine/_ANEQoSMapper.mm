@interface _ANEQoSMapper
+ (id)dispatchQueueArrayByMappingPrioritiesWithTag:(id)tag;
+ (int)programPriorityForQoS:(unsigned int)s;
+ (unint64_t)queueIndexForQoS:(unsigned int)s;
+ (unsigned)qosForProgramPriority:(int)priority;
@end

@implementation _ANEQoSMapper

+ (unint64_t)queueIndexForQoS:(unsigned int)s
{
  v14 = *MEMORY[0x1E69E9840];
  if ([self aneRealTimeTaskQoS] == s)
  {
    return 2;
  }

  HIDWORD(v7) = s - 9;
  LODWORD(v7) = s - 9;
  v6 = v7 >> 2;
  if (v6 < 7 && ((0x5Du >> v6) & 1) != 0)
  {
    return qword_1AD28F120[v6];
  }

  v8 = +[_ANELog daemon];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v9;
    v12 = 1024;
    sCopy = s;
    _os_log_impl(&dword_1AD246000, v8, OS_LOG_TYPE_INFO, "%@: %d => Invalid qos requested", &v10, 0x12u);
  }

  return 5;
}

+ (int)programPriorityForQoS:(unsigned int)s
{
  v14 = *MEMORY[0x1E69E9840];
  if ([self aneRealTimeTaskQoS] == s)
  {
    return 2;
  }

  HIDWORD(v7) = s - 9;
  LODWORD(v7) = s - 9;
  v6 = v7 >> 2;
  if (v6 < 7 && ((0x5Du >> v6) & 1) != 0)
  {
    return dword_1AD28F158[v6];
  }

  v8 = +[_ANELog daemon];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v9;
    v12 = 1024;
    sCopy = s;
    _os_log_impl(&dword_1AD246000, v8, OS_LOG_TYPE_INFO, "%@: %d => Invalid qos requested", &v10, 0x12u);
  }

  return 5;
}

+ (unsigned)qosForProgramPriority:(int)priority
{
  v3 = priority - 4;
  if (priority < 4)
  {
    return 33;
  }

  if (v3 > 2)
  {
    return 21;
  }

  return dword_1AD28F174[v3];
}

+ (id)dispatchQueueArrayByMappingPrioritiesWithTag:(id)tag
{
  tagCopy = tag;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695E0F0] mutableCopy];
  for (i = 0; i != 8; ++i)
  {
    v7 = [tagCopy stringByAppendingFormat:@".p%d", i];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, [_ANEQoSMapper qosForProgramPriority:i], 0);

    v10 = dispatch_queue_create([v7 UTF8String], v9);
    [v5 setObject:v10 atIndexedSubscript:i];
  }

  v11 = [v5 copy];

  objc_autoreleasePoolPop(v4);

  return v11;
}

@end