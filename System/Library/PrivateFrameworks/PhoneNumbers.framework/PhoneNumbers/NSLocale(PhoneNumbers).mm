@interface NSLocale(PhoneNumbers)
+ (id)nationalDirectDialingPrefixForISOCountryCode:()PhoneNumbers;
+ (uint64_t)ITUCountryCodeForISOCountryCode:()PhoneNumbers;
- (id)nationalDirectDialingPrefix;
- (uint64_t)ITUCountryCode;
@end

@implementation NSLocale(PhoneNumbers)

+ (uint64_t)ITUCountryCodeForISOCountryCode:()PhoneNumbers
{
  v3 = _PNCopyInternationalCodeForCountry();
  v4 = v3;
  if (v3 && [v3 integerValue] >= 1)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

+ (id)nationalDirectDialingPrefixForISOCountryCode:()PhoneNumbers
{
  v3 = _PNCopyNationalDirectDialingPrefixForCountry();

  return v3;
}

- (uint64_t)ITUCountryCode
{
  countryCode = [self countryCode];
  if (countryCode)
  {
    v2 = [objc_opt_class() ITUCountryCodeForISOCountryCode:countryCode];
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

- (id)nationalDirectDialingPrefix
{
  countryCode = [self countryCode];
  if (countryCode)
  {
    v2 = [objc_opt_class() nationalDirectDialingPrefixForISOCountryCode:countryCode];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end