@interface CTPhoneNumberInfo
- (NSString)tps_localizedNumber;
- (NSString)tps_normalizedNumber;
@end

@implementation CTPhoneNumberInfo

- (NSString)tps_localizedNumber
{
  number = [(CTPhoneNumberInfo *)self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v5 = active;
  v6 = 0;
  if (number && active)
  {
    active = TPSLocalizedPhoneNumberString();
    v6 = active;
  }

  v7 = TPSPhonebookLog(active, v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = number;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Telephone number was localized to %@ using digits %@ and ISO country code %@.", &v9, 0x20u);
  }

  return v6;
}

- (NSString)tps_normalizedNumber
{
  number = [(CTPhoneNumberInfo *)self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v5 = active;
  v6 = 0;
  if (number && active)
  {
    active = TPSNormalizedPhoneNumberString();
    v6 = active;
  }

  v7 = TPSPhonebookLog(active, v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = number;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Telephone number was normalized to %@ using digits %@ and ISO country code %@.", &v9, 0x20u);
  }

  return v6;
}

@end