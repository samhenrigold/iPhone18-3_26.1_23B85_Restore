@interface CHManagedHandleMigrationPolicy
- (id)normalizedValueForManagedHandle:(id)handle;
@end

@implementation CHManagedHandleMigrationPolicy

- (id)normalizedValueForManagedHandle:(id)handle
{
  v37 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  normalizedValue = [handleCopy normalizedValue];
  if (![normalizedValue length])
  {
    v6 = ch_framework_log(0, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 138412290;
      v36 = handleCopy;
      _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Performing normalization migration policy for managed handle %@", &v35, 0xCu);
    }

    v7 = NSStringFromSelector(sel_type);
    v8 = [handleCopy valueForKey:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      integerValue = [v8 integerValue];
      v13 = integerValue;
    }

    else
    {
      v14 = ch_framework_log(isKindOfClass, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(CHManagedHandleMigrationPolicy *)v8 normalizedValueForManagedHandle:v7, v14];
      }

      v13 = 0;
    }

    v15 = ch_framework_log(integerValue, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134217984;
      v36 = v13;
      _os_log_impl(&dword_1C3E90000, v15, OS_LOG_TYPE_DEFAULT, "Comparing CHHandleType to managed handle type %ld", &v35, 0xCu);
    }

    switch(v13)
    {
      case 1:
        value = [handleCopy value];
        v31 = [CHHandle normalizedGenericHandleForValue:value];
        normalizedValue2 = [v31 normalizedValue];

        iso_country_code = ch_framework_log(v32, v33);
        if (os_log_type_enabled(iso_country_code, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 138412290;
          v36 = normalizedValue2;
          v22 = "Normalized user name to %@";
          goto LABEL_21;
        }

        break;
      case 2:
        remoteParticipantCalls = [handleCopy remoteParticipantCalls];
        anyObject = [remoteParticipantCalls anyObject];
        iso_country_code = [anyObject iso_country_code];

        value2 = [handleCopy value];
        v26 = [CHHandle normalizedPhoneNumberHandleForValue:value2 isoCountryCode:iso_country_code];
        normalizedValue2 = [v26 normalizedValue];

        v29 = ch_framework_log(v27, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 138412290;
          v36 = normalizedValue2;
          _os_log_impl(&dword_1C3E90000, v29, OS_LOG_TYPE_DEFAULT, "Normalized telephone number to %@", &v35, 0xCu);
        }

        break;
      case 3:
        value3 = [handleCopy value];
        v17 = [CHHandle normalizedEmailAddressHandleForValue:value3];
        normalizedValue2 = [v17 normalizedValue];

        iso_country_code = ch_framework_log(v19, v20);
        if (os_log_type_enabled(iso_country_code, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 138412290;
          v36 = normalizedValue2;
          v22 = "Normalized email address to %@";
LABEL_21:
          _os_log_impl(&dword_1C3E90000, iso_country_code, OS_LOG_TYPE_DEFAULT, v22, &v35, 0xCu);
        }

        break;
      default:
LABEL_23:

        goto LABEL_24;
    }

    normalizedValue = normalizedValue2;
    goto LABEL_23;
  }

LABEL_24:

  return normalizedValue;
}

- (void)normalizedValueForManagedHandle:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Unexpected data type found in value %@ for key %@", &v3, 0x16u);
}

@end