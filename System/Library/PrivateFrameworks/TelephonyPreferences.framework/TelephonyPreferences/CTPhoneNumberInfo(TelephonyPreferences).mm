@interface CTPhoneNumberInfo(TelephonyPreferences)
- (id)tps_localizedNumber;
- (id)tps_normalizedNumber;
@end

@implementation CTPhoneNumberInfo(TelephonyPreferences)

- (id)tps_localizedNumber
{
  v14 = *MEMORY[0x277D85DE8];
  number = [self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v4 = active;
  v5 = 0;
  if (number && active)
  {
    active = TPSLocalizedPhoneNumberString(number, active);
    v5 = active;
  }

  v6 = TPSLog(active, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = number;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Telephone number was localized to %@ using digits %@ and ISO country code %@.", &v8, 0x20u);
  }

  return v5;
}

- (id)tps_normalizedNumber
{
  v14 = *MEMORY[0x277D85DE8];
  number = [self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v4 = active;
  v5 = 0;
  if (number && active)
  {
    active = TPSNormalizedPhoneNumberString(number, active);
    v5 = active;
  }

  v6 = TPSLog(active, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = number;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Telephone number was normalized to %@ using digits %@ and ISO country code %@.", &v8, 0x20u);
  }

  return v5;
}

@end