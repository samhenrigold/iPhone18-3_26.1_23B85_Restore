@interface UAPBIRPublicURLConverter
+ (void)registerConverter;
- (id)convertIRDataToPlatform:(id)platform;
- (id)convertPlatformDataToIR:(id)r;
@end

@implementation UAPBIRPublicURLConverter

+ (void)registerConverter
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(@"PBIR");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = @"public.url";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "Registering converter for type: %@ -> %@", &v5, 0x16u);
  }

  v4 = +[UASharedPasteboardIRManager sharedIRManager];
  [v4 registerIRHandlerClass:self forType:@"public.url"];
}

- (id)convertPlatformDataToIR:(id)r
{
  v8 = *MEMORY[0x277D85DE8];
  rCopy = r;
  v4 = _uaGetLogForCategory(@"PBIR");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"public.url";
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "Converting from platform to IR for type: %@", &v6, 0xCu);
  }

  return rCopy;
}

- (id)convertIRDataToPlatform:(id)platform
{
  v8 = *MEMORY[0x277D85DE8];
  platformCopy = platform;
  v4 = _uaGetLogForCategory(@"PBIR");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"public.url";
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "Converting from IR to platform for type: %@", &v6, 0xCu);
  }

  return platformCopy;
}

@end