@interface MCAirPrintPayload
+ (id)typeStrings;
- (MCAirPrintPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCAirPrintPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.airprint";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCAirPrintPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v61.receiver = self;
  v61.super_class = MCAirPrintPayload;
  v10 = [(MCPayload *)&v61 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_56;
  }

  v52 = profileCopy;
  if ([profileCopy isStub])
  {
    v55 = 0;
    v11 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"AirPrintCount" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v55];
    v12 = v55;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v10->_airPrintCount = [v11 unsignedIntegerValue];
      v54 = 0;
      v30 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"IPPAddresses" isRequired:0 outError:&v54];
      v13 = v54;
      v31 = [v30 mutableCopy];
      ippAddresses = v10->_ippAddresses;
      v10->_ippAddresses = v31;
    }

    goto LABEL_46;
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = v10->_ippAddresses;
  v10->_ippAddresses = array;

  v60 = 0;
  v16 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"AirPrint" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v60];
  v13 = v60;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = v16;
  v50 = [v11 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (!v50)
  {
    goto LABEL_35;
  }

  v17 = 0x1E696A000uLL;
  v51 = *v57;
  errorCopy = error;
  v48 = dictionaryCopy;
  obj = v11;
  while (2)
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v57 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v56 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MCPayload badFieldTypeErrorWithField:@"AirPrint"];
        v13 = v20 = v13;
LABEL_44:

        goto LABEL_45;
      }

      v20 = [v19 objectForKeyedSubscript:@"IPAddress"];
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v33 = [MCPayload badFieldTypeErrorWithField:@"IPAddress"];

LABEL_43:
        v13 = v33;
        goto LABEL_44;
      }

      v21 = [v19 objectForKeyedSubscript:@"ResourcePath"];
      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v33 = [MCPayload badFieldTypeErrorWithField:@"ResourcePath"];

LABEL_42:
        goto LABEL_43;
      }

      v22 = [v19 objectForKeyedSubscript:@"Port"];
      if (v22)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33 = [MCPayload badFieldTypeErrorWithField:@"Port"];

          goto LABEL_42;
        }
      }

      v23 = [v19 objectForKeyedSubscript:@"ForceTLS"];
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [MCPayload badFieldTypeErrorWithField:@"ForceTLS"];
        v53 = v28 = 0;
      }

      else
      {
        v53 = v13;
        v13 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v13 setHost:v20];
        if ([v22 integerValue] >= 1)
        {
          [v13 setPort:v22];
        }

        if ([v23 BOOLValue])
        {
          v24 = @"ipps";
        }

        else
        {
          v24 = @"ipp";
        }

        [v13 setScheme:v24];
        if ([v21 rangeOfString:@"/" options:8] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = [*(v17 + 3776) stringWithFormat:@"/%@", v21];
          [v13 setPath:v25];
        }

        else
        {
          [v13 setPath:v21];
        }

        v26 = [v13 URL];
        absoluteString = [v26 absoluteString];

        v28 = absoluteString != 0;
        if (absoluteString)
        {
          [(NSMutableArray *)v10->_ippAddresses addObject:absoluteString];
        }

        else
        {
          v29 = [MCPayload badFieldTypeErrorWithField:@"AirPrint"];

          v53 = v29;
        }

        error = errorCopy;
        dictionaryCopy = v48;
      }

      if (!v28)
      {
        v13 = v53;
LABEL_45:
        v11 = obj;

        goto LABEL_46;
      }

      v13 = v53;
      v17 = 0x1E696A000;
    }

    v11 = obj;
    v50 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v50)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v10->_airPrintCount = [(NSMutableArray *)v10->_ippAddresses count];
LABEL_46:

  if (v13)
  {
    v34 = [(MCPayload *)v10 malformedPayloadErrorWithError:v13];
    v35 = v34;
    if (error)
    {
      v36 = v34;
      *error = v35;
    }

    v37 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      v39 = dictionaryCopy;
      v40 = objc_opt_class();
      v41 = v40;
      mCVerboseDescription = [v35 MCVerboseDescription];
      *buf = 138543618;
      v63 = v40;
      dictionaryCopy = v39;
      v64 = 2114;
      v65 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([dictionaryCopy count])
  {
    v43 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v44 = v43;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v63 = friendlyName;
      v64 = 2114;
      v65 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v44, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

  profileCopy = v52;
LABEL_56:

  return v10;
}

- (id)stubDictionary
{
  v8.receiver = self;
  v8.super_class = MCAirPrintPayload;
  stubDictionary = [(MCPayload *)&v8 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MCAirPrintPayload airPrintCount](self, "airPrintCount")}];
  [stubDictionary setObject:v4 forKeyedSubscript:@"AirPrintCount"];

  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];

  if (ippAddresses)
  {
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    [stubDictionary setObject:ippAddresses2 forKeyedSubscript:@"IPPAddresses"];
  }

  return stubDictionary;
}

- (id)subtitle1Label
{
  if ([(MCAirPrintPayload *)self airPrintCount])
  {
    MCLocalizedFormat(@"AIRPRINT_TITLE_COLON", v2, v3, v4, v5, v6, v7, v8, vars0);
  }

  else
  {
    MCLocalizedString(@"AIRPRINT_COUNT_NONE");
  }
  v9 = ;

  return v9;
}

- (id)verboseDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MCAirPrintPayload;
  verboseDescription = [(MCPayload *)&v16 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];

  if (ippAddresses)
  {
    [v4 appendString:@"AirPrint paths:\n"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    v7 = [ippAddresses2 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(ippAddresses2);
          }

          [v4 appendFormat:@"  %@\n", *(*(&v12 + 1) + 8 * i)];
        }

        v8 = [ippAddresses2 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    ippAddresses2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MCAirPrintPayload airPrintCount](self, "airPrintCount")}];
    [v4 appendFormat:@"AirPrint devices: %@\n", ippAddresses2];
  }

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];
  v5 = [ippAddresses count];

  if (v5)
  {
    v31 = v3;
    v6 = MEMORY[0x1E695DF70];
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(ippAddresses2, "count")}];

    v9 = v8;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(MCAirPrintPayload *)self ippAddresses];
    v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    v33 = v8;
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v34 + 1) + 8 * i)];
          scheme = [v14 scheme];
          port = [v14 port];
          host = [v14 host];
          path = [v14 path];
          v19 = path;
          v20 = MEMORY[0x1E696AEC0];
          if (port)
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@", port];
            v22 = [v20 stringWithFormat:@"%@://%@%@%@", scheme, host, v21, v19];

            v9 = v33;
          }

          else
          {
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@%@%@", scheme, host, &stru_1F1A7FAB0, path];
          }

          [v9 addObject:v22];
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    v23 = MCLocalizedString(@"AIRPRINT_PATHS");
    v24 = [MCKeyValueSection sectionWithLocalizedArray:v9 title:v23 footer:0];

    v3 = v31;
    if (v24)
    {
      [v31 addObject:v24];
    }

    v25 = v33;
  }

  else
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[MCAirPrintPayload airPrintCount](self, "airPrintCount")];
    v26 = [MCKeyValue alloc];
    v27 = MCLocalizedString(@"AIRPRINT_DEVICES");
    v24 = [(MCKeyValue *)v26 initWithLocalizedString:v25 localizedKey:v27];

    v38 = v24;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v29 = [MCKeyValueSection sectionWithKeyValues:v28];
    [v3 addObject:v29];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (id)restrictions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"union"];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary2 setObject:dictionary3 forKeyedSubscript:@"knownAirPrintTargets"];
  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];

  if (ippAddresses)
  {
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    [dictionary3 setObject:ippAddresses2 forKeyedSubscript:@"values"];
  }

  return dictionary;
}

@end