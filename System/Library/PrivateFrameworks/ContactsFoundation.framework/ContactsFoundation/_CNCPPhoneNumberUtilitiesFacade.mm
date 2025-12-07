@interface _CNCPPhoneNumberUtilitiesFacade
+ (NSString)currentCountryCode;
+ (NSString)homeCountryCode;
+ (id)triage_log;
+ (void)currentCountryCode;
+ (void)homeCountryCode;
@end

@implementation _CNCPPhoneNumberUtilitiesFacade

+ (NSString)homeCountryCode
{
  v2 = CPPhoneNumberCopyHomeCountryCode();
  if ([v2 isEqualToString:@"001"])
  {
    triage_log = [objc_opt_class() triage_log];
    if (os_log_type_enabled(triage_log, OS_LOG_TYPE_ERROR))
    {
      [(_CNCPPhoneNumberUtilitiesFacade *)v2 homeCountryCode:triage_log];
    }

    v2 = 0;
  }

  return v2;
}

+ (NSString)currentCountryCode
{
  v2 = CPPhoneNumberCopyNetworkCountryCode();
  if ([v2 isEqualToString:@"001"])
  {
    triage_log = [objc_opt_class() triage_log];
    if (os_log_type_enabled(triage_log, OS_LOG_TYPE_ERROR))
    {
      [(_CNCPPhoneNumberUtilitiesFacade *)v2 currentCountryCode:triage_log];
    }

    v2 = 0;
  }

  return v2;
}

+ (id)triage_log
{
  v2 = os_log_create("com.apple.contacts", "triage");

  return v2;
}

+ (void)homeCountryCode
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "Invalid home country code: %@. Phone numbers and postal addresses may not be processed correctly.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)currentCountryCode
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "Invalid network country code: %@. Phone numbers and postal addresses may not be processed correctly.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end