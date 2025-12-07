@interface CNPhoneNumber(PKAdditions)
- (id)pkFormattedStringValue;
@end

@implementation CNPhoneNumber(PKAdditions)

- (id)pkFormattedStringValue
{
  countryCode = [self countryCode];
  defaultCountryCode = [MEMORY[0x1E695CF50] defaultCountryCode];
  isEqualToString = objc_msgSend_isEqualToString_(countryCode);

  if (isEqualToString)
  {
    formattedStringValue = [self formattedStringValue];
    if (formattedStringValue)
    {
      goto LABEL_6;
    }
  }

  else
  {
    formattedStringValue = [self formattedInternationalStringValue];
    if (formattedStringValue)
    {
      goto LABEL_6;
    }
  }

  formattedStringValue = [self stringValue];
LABEL_6:

  return formattedStringValue;
}

@end