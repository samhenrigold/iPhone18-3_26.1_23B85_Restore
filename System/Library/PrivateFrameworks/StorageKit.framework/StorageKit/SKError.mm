@interface SKError
+ (BOOL)failWithError:(id)error error:(id *)a4;
+ (BOOL)failWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error;
+ (BOOL)failWithSKErrorCode:(int64_t)code error:(id *)error;
+ (NSBundle)frameworkBundle;
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description;
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description error:(id *)error;
+ (id)errorWithCode:(int64_t)code disks:(id)disks userInfo:(id)info;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)errorWithOSStatus:(int)status debugDescription:(id)description error:(id *)error;
+ (id)errorWithOSStatus:(int)status error:(id *)error;
+ (id)errorWithPOSIXCode:(int)code debugDescription:(id)description error:(id *)error;
+ (id)errorWithPOSIXCode:(int)code error:(id *)error;
+ (id)localizedDescriptionForCode:(int64_t)code;
+ (id)nilWithError:(id)error error:(id *)a4;
+ (id)nilWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error;
+ (id)nilWithSKErrorCode:(int64_t)code error:(id *)error;
@end

@implementation SKError

+ (NSBundle)frameworkBundle
{
  if (frameworkBundle_onceToken != -1)
  {
    +[SKError frameworkBundle];
  }

  v3 = frameworkBundle__bundle;

  return v3;
}

void __26__SKError_frameworkBundle__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA8D8];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/StorageKit.framework"];
  v2 = [v0 bundleWithURL:v1];
  v3 = frameworkBundle__bundle;
  frameworkBundle__bundle = v2;

  if (!frameworkBundle__bundle)
  {
    v4 = +[SKBaseManager sharedManager];
    [v4 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_28];

    v5 = SKGetOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "+[SKError frameworkBundle]_block_invoke";
      _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_FAULT, "%s: FATAL ERROR: Failed to get the NSBundle of StorageKit framework", &v6, 0xCu);
    }
  }
}

id __26__SKError_frameworkBundle__block_invoke_2()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"faultCode";
  v0 = base64Encode("SKError.m", 55);
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

+ (id)localizedDescriptionForCode:(int64_t)code
{
  code = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v6 = [v5 localizedStringForKey:code value:0 table:@"SKError"];

  v7 = 0;
  if (([v6 isEqualToString:code] & 1) == 0)
  {
    v7 = v6;
  }

  return v7;
}

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA068];
  v11[0] = description;
  v5 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [SKError errorWithCode:code disks:0 userInfo:v7];

  return v8;
}

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CCA068];
  v14[0] = description;
  v7 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [SKError errorWithCode:code disks:0 userInfo:v9];

  if (error)
  {
    v11 = v10;
    *error = v10;
  }

  return v10;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA7E8];
  v11[0] = error;
  v5 = MEMORY[0x277CBEAC0];
  errorCopy = error;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [SKError errorWithCode:code userInfo:v7];

  return v8;
}

+ (id)errorWithCode:(int64_t)code disks:(id)disks userInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  disksCopy = disks;
  infoCopy = info;
  if (infoCopy)
  {
    v10 = infoCopy;
    dictionary = [infoCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = *MEMORY[0x277CCA450];
  v13 = [dictionary objectForKey:*MEMORY[0x277CCA450]];

  if (!v13)
  {
    if (disksCopy)
    {
      v14 = SKGetOSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [self localizedDescriptionForCode:code];
        *buf = 136315650;
        v27 = "+[SKError errorWithCode:disks:userInfo:]";
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = disksCopy;
        _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: %@ : %@", buf, 0x20u);
      }

      v16 = MEMORY[0x277CCACA8];
      v17 = [self localizedDescriptionForCode:code];
      v18 = commaSeparatedDiskListFromArray(disksCopy);
      v19 = [v16 stringWithFormat:@"%@ : %@", v17, v18];
    }

    else
    {
      v19 = [self localizedDescriptionForCode:code];
      v22 = *MEMORY[0x277CCA068];
      v23 = [dictionary objectForKeyedSubscript:*MEMORY[0x277CCA068]];

      v17 = SKGetOSLog();
      v24 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (v23)
      {
        if (v24)
        {
          v25 = [dictionary objectForKeyedSubscript:v22];
          *buf = 136315650;
          v27 = "+[SKError errorWithCode:disks:userInfo:]";
          v28 = 2112;
          v29 = v19;
          v30 = 2112;
          v31 = v25;
          _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_ERROR, "%s: %@ [%@]", buf, 0x20u);
        }
      }

      else if (v24)
      {
        *buf = 136315394;
        v27 = "+[SKError errorWithCode:disks:userInfo:]";
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
      }
    }

    if (v19)
    {
      [dictionary setObject:v19 forKey:v12];
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.StorageKit" code:code userInfo:dictionary];

  return v20;
}

+ (id)nilWithError:(id)error error:(id *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&dword_26BBB8000, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  if (a4)
  {
    v7 = errorCopy;
    *a4 = errorCopy;
  }

  return 0;
}

+ (BOOL)failWithError:(id)error error:(id *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&dword_26BBB8000, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  if (a4)
  {
    v7 = errorCopy;
    *a4 = errorCopy;
  }

  return 0;
}

+ (id)errorWithPOSIXCode:(int)code debugDescription:(id)description error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA5B8];
  codeCopy = code;
  v9 = userInfoWithDebugDescription(description);
  v10 = [v6 errorWithDomain:v7 code:codeCopy userInfo:v9];

  v11 = SKGetOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
  }

  if (error)
  {
    v12 = v10;
    *error = v10;
  }

  return v10;
}

+ (id)errorWithPOSIXCode:(int)code error:(id *)error
{
  v5 = *&code;
  v6 = objc_opt_class();

  return [v6 errorWithPOSIXCode:v5 debugDescription:0 error:error];
}

+ (id)errorWithOSStatus:(int)status debugDescription:(id)description error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v8 = descriptionCopy;
  v9 = MEMORY[0x277CCA9B8];
  if ((status - 49152) > 0x6B)
  {
    v10 = *MEMORY[0x277CCA590];
    statusCopy = status;
  }

  else
  {
    v10 = *MEMORY[0x277CCA5B8];
    statusCopy = status & 0x7F;
  }

  v12 = userInfoWithDebugDescription(descriptionCopy);
  v13 = [v9 errorWithDomain:v10 code:statusCopy userInfo:v12];

  v14 = SKGetOSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = v13;
    _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
  }

  if (error)
  {
    v15 = v13;
    *error = v13;
  }

  return v13;
}

+ (id)errorWithOSStatus:(int)status error:(id *)error
{
  v5 = *&status;
  v6 = objc_opt_class();

  return [v6 errorWithOSStatus:v5 debugDescription:0 error:error];
}

+ (id)nilWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error
{
  v7 = userInfoWithDebugDescription(description);
  v8 = [SKError errorWithCode:code userInfo:v7];
  v9 = [SKError nilWithError:v8 error:error];

  return v9;
}

+ (id)nilWithSKErrorCode:(int64_t)code error:(id *)error
{
  v5 = [SKError errorWithCode:code userInfo:0];
  v6 = [SKError nilWithError:v5 error:error];

  return v6;
}

+ (BOOL)failWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error
{
  v7 = userInfoWithDebugDescription(description);
  v8 = [SKError errorWithCode:code userInfo:v7];
  LOBYTE(error) = [SKError failWithError:v8 error:error];

  return error;
}

+ (BOOL)failWithSKErrorCode:(int64_t)code error:(id *)error
{
  v5 = [SKError errorWithCode:code userInfo:0];
  LOBYTE(error) = [SKError failWithError:v5 error:error];

  return error;
}

@end