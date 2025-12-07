@interface ENExposureDetectionHistorySession
- (ENExposureDetectionHistorySession)init;
- (ENExposureDetectionHistorySession)initWithUUID:(id)d;
- (ENExposureDetectionHistorySession)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ENExposureDetectionHistorySession

- (ENExposureDetectionHistorySession)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [(ENExposureDetectionHistorySession *)self initWithUUID:uUID];

  return v4;
}

- (ENExposureDetectionHistorySession)initWithUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = ENExposureDetectionHistorySession;
  v5 = [(ENExposureDetectionHistorySession *)&v10 init];
  if (v5)
  {
    v6 = [dCopy copy];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)object
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  uTF8String = [(NSString *)self->_appBundleIdentifier UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(objectCopy, "aBid", uTF8String);
  }

  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(objectCopy, "date", v6);
  exposureClassificationIdentifier = self->_exposureClassificationIdentifier;
  v8 = objectCopy;
  uTF8String2 = [(NSString *)exposureClassificationIdentifier UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v8, "expCID", uTF8String2);
  }

  fileCount = self->_fileCount;
  if (fileCount)
  {
    xpc_dictionary_set_uint64(v8, "fileCt", fileCount);
  }

  xpc_dictionary_set_uint64(v8, "mtKC", self->_matchCount);
  region = self->_region;
  if (region)
  {
    ENXPCEncodeSecureObject(v8, "regionData", region, 0);
  }

  systemBuildVersion = self->_systemBuildVersion;
  v13 = v8;
  uTF8String3 = [(NSString *)systemBuildVersion UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v13, "sysBV", uTF8String3);
  }

  v15 = self->_UUID;
  if (v15)
  {
    *uuid = 0;
    v18 = 0;
    v16 = v13;
    [(NSUUID *)v15 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v16, "sessID", uuid);
  }
}

- (id)description
{
  v25 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF_safe(&v25, "%@", v4);
  v5 = v25;

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    v24 = v5;
    NSAppendPrintF_safe(&v24, ", %@", appBundleIdentifier);
    v7 = v24;

    v5 = v7;
  }

  region = self->_region;
  if (region)
  {
    v23 = v5;
    NSAppendPrintF_safe(&v23, ", %@", region);
    v9 = v23;

    v5 = v9;
  }

  v22 = v5;
  systemBuildVersion = self->_systemBuildVersion;
  if (!systemBuildVersion)
  {
    systemBuildVersion = @"<>";
  }

  NSAppendPrintF_safe(&v22, ", Build %@", systemBuildVersion);
  v11 = v22;

  v21 = v11;
  NSAppendPrintF_safe(&v21, ", Date %@", self->_date);
  v12 = v21;

  v20 = v12;
  NSAppendPrintF_safe(&v20, ", Files %u", self->_fileCount);
  v13 = v20;

  v19 = v13;
  NSAppendPrintF_safe(&v19, ", Matches %llu", self->_matchCount);
  v14 = v19;

  exposureClassificationIdentifier = self->_exposureClassificationIdentifier;
  if (exposureClassificationIdentifier)
  {
    v18 = v14;
    NSAppendPrintF_safe(&v18, ", Clss %@", exposureClassificationIdentifier);
    v16 = v18;

    v14 = v16;
  }

  return v14;
}

- (ENExposureDetectionHistorySession)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (!CUXPCDecodeNSUUID())
  {
    goto LABEL_14;
  }

  v7 = [(ENExposureDetectionHistorySession *)self initWithUUID:0];
  if (!v7)
  {
    if (error)
    {
      ENErrorF(2, "super init failed");
      self = 0;
      *error = selfCopy = 0;
      goto LABEL_10;
    }

    self = 0;
    goto LABEL_14;
  }

  self = v7;
  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_14;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{xpc_dictionary_get_double(objectCopy, "date")}];
  date = self->_date;
  self->_date = v8;

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_14;
  }

  v10 = CUXPCDecodeUInt64RangedEx();
  if (v10 == 6)
  {
    self->_fileCount = 0;
    goto LABEL_8;
  }

  if (v10 == 5)
  {
LABEL_14:
    selfCopy = 0;
    goto LABEL_10;
  }

LABEL_8:
  self->_matchCount = xpc_dictionary_get_uint64(objectCopy, "mtKC");
  objc_opt_class();
  v11 = OUTLINED_FUNCTION_0_0();
  v15 = ENXPCDecodeSecureObjectIfPresent(v11, v12, v13, v14);
  region = self->_region;
  self->_region = v15;

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_14;
  }

  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

@end