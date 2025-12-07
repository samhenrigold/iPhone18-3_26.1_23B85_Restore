@interface NSPersistentCloudKitContainerActivityVoucher
+ (id)describeConfiguration:(id)configuration;
+ (id)describeConfigurationWithoutPointer:(id)pointer;
+ (id)stringForQoS:(int64_t)s;
+ (id)stringForQoSClass:(unsigned int)class;
+ (unsigned)qosClassForQualityOfService:(int64_t)service;
- (NSPersistentCloudKitContainerActivityVoucher)initWithCoder:(id)coder;
- (NSPersistentCloudKitContainerActivityVoucher)initWithLabel:(id)label forEventsOfType:(int64_t)type withConfiguration:(id)configuration affectingObjectsMatching:(id)matching;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPersistentCloudKitContainerActivityVoucher

- (NSPersistentCloudKitContainerActivityVoucher)initWithLabel:(id)label forEventsOfType:(int64_t)type withConfiguration:(id)configuration affectingObjectsMatching:(id)matching
{
  v41[1] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = NSPersistentCloudKitContainerActivityVoucher;
  v10 = [(NSPersistentCloudKitContainerActivityVoucher *)&v39 init];
  if (v10)
  {
    if (type)
    {
      if (configuration)
      {
        if ([configuration isLongLived])
        {
          v23 = MEMORY[0x1E695DF30];
          v24 = *MEMORY[0x1E695D940];
          v25 = MEMORY[0x1E696AEC0];
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = objc_msgSend_stringWithFormat_(v25, v27, v29);
          v40 = @"offendingConfiguration";
          v41[0] = configuration;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
          v32 = v23;
          v33 = v24;
          v34 = v30;
          goto LABEL_14;
        }

        if ([configuration allowsCellularAccess] & 1) != 0 && (objc_msgSend(configuration, "allowsExpensiveNetworkAccess"))
        {
          v10->_eventType = type;
          v10->_bundleIdentifier = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
          v10->_processName = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
          v10->_label = [label copy];
          v10->_fetchRequest = [matching copy];
          v10->_operationConfiguration = [configuration copy];
          return v10;
        }

        v12 = MEMORY[0x1E695DF30];
        v13 = *MEMORY[0x1E695D940];
        v35 = MEMORY[0x1E696AEC0];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v17 = objc_msgSend_stringWithFormat_(v35, v37);
      }

      else
      {
        v12 = MEMORY[0x1E695DF30];
        v13 = *MEMORY[0x1E695D940];
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        getCloudKitCKOperationConfigurationClass(v20, v21);
        v22 = objc_opt_class();
        v38 = NSStringFromClass(v22);
        v17 = objc_msgSend_stringWithFormat_(v18, v20, v38);
      }
    }

    else
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = objc_msgSend_stringWithFormat_(v14, v16, [NSPersistentCloudKitContainerEvent eventTypeString:0], [NSPersistentCloudKitContainerEvent eventTypeString:0], [NSPersistentCloudKitContainerEvent eventTypeString:2], [NSPersistentCloudKitContainerEvent eventTypeString:1]);
    }

    v34 = v17;
    v32 = v12;
    v33 = v13;
    v31 = 0;
LABEL_14:
    objc_exception_throw([v32 exceptionWithName:v33 reason:v34 userInfo:v31]);
  }

  return v10;
}

- (void)dealloc
{
  self->_bundleIdentifier = 0;

  self->_fetchRequest = 0;
  self->_fetchRequest = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerActivityVoucher;
  [(NSPersistentCloudKitContainerActivityVoucher *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPersistentCloudKitContainerActivityVoucher alloc] initWithLabel:self->_label forEventsOfType:self->_eventType withConfiguration:self->_operationConfiguration affectingObjectsMatching:self->_fetchRequest];

  v4->_bundleIdentifier = self->_bundleIdentifier;
  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, self, self->_label, [NSPersistentCloudKitContainerEvent eventTypeString:self->_eventType], self->_processName, self->_bundleIdentifier, [NSPersistentCloudKitContainerActivityVoucher describeConfiguration:self->_operationConfiguration], self->_fetchRequest);
  objc_autoreleasePoolPop(v3);

  return v7;
}

- (NSPersistentCloudKitContainerActivityVoucher)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSPersistentCloudKitContainerActivityVoucher;
  v4 = [(NSPersistentCloudKitContainerActivityVoucher *)&v8 init];
  if (v4)
  {
    v4->_label = [coder decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    v4->_bundleIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v4->_eventType = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"eventTypeNum", "unsignedIntegerValue"}];
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"fetchRequest"];
    v4->_fetchRequest = v5;
    getCloudKitCKOperationConfigurationClass(v5, v6);
    v4->_operationConfiguration = [coder decodeObjectOfClass:objc_opt_class() forKey:@"operationConfiguration"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", self->_eventType), @"eventTypeNum"}];
  [coder encodeObject:self->_label forKey:@"label"];
  [coder encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coder encodeObject:self->_fetchRequest forKey:@"fetchRequest"];
  operationConfiguration = self->_operationConfiguration;

  [coder encodeObject:operationConfiguration forKey:@"operationConfiguration"];
}

+ (id)describeConfiguration:(id)configuration
{
  if (!configuration)
  {
    return @"nil";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = +[NSPersistentCloudKitContainerActivityVoucher stringForQoS:](NSPersistentCloudKitContainerActivityVoucher, "stringForQoS:", [configuration qualityOfService]);
  if ([configuration allowsCellularAccess])
  {
    v8 = @"wifi+celluar";
  }

  else
  {
    v8 = @"wifi-only";
  }

  isLongLived = [configuration isLongLived];
  [configuration timeoutIntervalForRequest];
  v11 = v10;
  [configuration timeoutIntervalForResource];
  return objc_msgSend_stringWithFormat_(v4, v6, configuration, v7, v8, isLongLived, v11, v12);
}

+ (id)describeConfigurationWithoutPointer:(id)pointer
{
  if (!pointer)
  {
    return @"nil";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = +[NSPersistentCloudKitContainerActivityVoucher stringForQoS:](NSPersistentCloudKitContainerActivityVoucher, "stringForQoS:", [pointer qualityOfService]);
  if ([pointer allowsCellularAccess])
  {
    v6 = @"wifi+celluar";
  }

  else
  {
    v6 = @"wifi-only";
  }

  isLongLived = [pointer isLongLived];
  [pointer timeoutIntervalForRequest];
  v9 = v8;
  [pointer timeoutIntervalForResource];
  return objc_msgSend_stringWithFormat_(v4, v5, v6, isLongLived, v9, v10);
}

+ (id)stringForQoS:(int64_t)s
{
  if (s > 16)
  {
    switch(s)
    {
      case 17:
        return @"Utility";
      case 33:
        return @"UserInteractive";
      case 25:
        return @"UserInitiated";
    }
  }

  else
  {
    switch(s)
    {
      case -1:
        return @"Default";
      case 5:
        return @"Maintenance";
      case 9:
        return @"Background";
    }
  }

  v10 = v3;
  v11 = v4;
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Did someone add a new QoS class? This method should probably be updated.\n", buf, 2u);
  }

  v7 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Did someone add a new QoS class? This method should probably be updated.", v8, 2u);
  }

  return @"unknown";
}

+ (id)stringForQoSClass:(unsigned int)class
{
  v9 = *MEMORY[0x1E69E9840];
  if (class <= 16)
  {
    switch(class)
    {
      case 0u:
        return @"QOS_CLASS_UNSPECIFIED";
      case 5u:
        return @"QOS_CLASS_MAINTENANCE";
      case 9u:
        return @"QOS_CLASS_BACKGROUND";
    }
  }

  else if (class > 24)
  {
    if (class == 33)
    {
      return @"QOS_CLASS_USER_INTERACTIVE";
    }

    if (class == 25)
    {
      return @"QOS_CLASS_USER_INITIATED";
    }
  }

  else
  {
    if (class == 17)
    {
      return @"QOS_CLASS_UTILITY";
    }

    if (class == 21)
    {
      return @"QOS_CLASS_DEFAULT";
    }
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v7 = 67109120;
    classCopy2 = class;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: What qos class is this? %u\n", &v7, 8u);
  }

  v6 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = 67109120;
    classCopy2 = class;
    _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: What qos class is this? %u", &v7, 8u);
  }

  return @"Unknown QOS Class";
}

+ (unsigned)qosClassForQualityOfService:(int64_t)service
{
  v9 = *MEMORY[0x1E69E9840];
  if (service > 16)
  {
    if (service == 17)
    {
      return 17;
    }

    if (service != 33)
    {
      if (service == 25)
      {
        return 25;
      }

      goto LABEL_11;
    }

    return 33;
  }

  else
  {
    if (service == -1)
    {
      return 21;
    }

    if (service != 5)
    {
      if (service == 9)
      {
        return 9;
      }

LABEL_11:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v7 = 134217984;
        serviceCopy2 = service;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown quality of service: %ld\n", &v7, 0xCu);
      }

      v6 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = 134217984;
        serviceCopy2 = service;
        _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Unknown quality of service: %ld", &v7, 0xCu);
      }

      return 21;
    }

    return 5;
  }
}

@end