@interface IMLocalizedTapbackStringFormat
- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string;
- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string languageIdentifier:(id)identifier;
@end

@implementation IMLocalizedTapbackStringFormat

- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string
{
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = IMLocalizedTapbackStringFormat;
  v7 = [(IMLocalizedTapbackStringFormat *)&v17 init];
  v9 = v7;
  if (v7)
  {
    v7->_localizedStringFormatType = type;
    v10 = IMSharedUtilitiesFrameworkBundle(v7, v8);
    v11 = [v10 localizedStringForKey:stringCopy value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
    localizedFormatString = v9->_localizedFormatString;
    v9->_localizedFormatString = v11;

    uppercaseString = [(NSString *)v9->_localizedFormatString uppercaseString];
    v14 = [uppercaseString isEqualToString:v9->_localizedFormatString];

    if (v14)
    {
      v15 = IMLogHandleForCategory("IMLocalizedTapbackStringFormat");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2498(stringCopy, v15);
      }
    }
  }

  return v9;
}

- (IMLocalizedTapbackStringFormat)initWithLocalizedStringFormatType:(int64_t)type unlocalizedFormatString:(id)string languageIdentifier:(id)identifier
{
  v27[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = IMLocalizedTapbackStringFormat;
  v10 = [(IMLocalizedTapbackStringFormat *)&v26 init];
  v12 = v10;
  if (v10)
  {
    v10->_localizedStringFormatType = type;
    v13 = IMSharedUtilitiesFrameworkBundle(v10, v11);
    v14 = MEMORY[0x1E696AAE8];
    localizations = [v13 localizations];
    v27[0] = identifierCopy;
    preferredLocalizations = [v13 preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    v27[1] = firstObject;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v19 = [v14 preferredLocalizationsFromArray:localizations forPreferences:v18];
    firstObject2 = [v19 firstObject];

    v21 = [v13 localizedStringForKey:stringCopy value:0 table:@"IMSharedUtilities" localization:firstObject2];
    localizedFormatString = v12->_localizedFormatString;
    v12->_localizedFormatString = v21;

    uppercaseString = [(NSString *)v12->_localizedFormatString uppercaseString];
    LODWORD(localizations) = [uppercaseString isEqualToString:v12->_localizedFormatString];

    if (localizations)
    {
      v24 = IMLogHandleForCategory("IMLocalizedTapbackStringFormat");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2498(stringCopy, v24);
      }
    }

    identifierCopy = firstObject2;
  }

  return v12;
}

@end