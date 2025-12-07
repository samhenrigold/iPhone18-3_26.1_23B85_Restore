@interface WBSPasswordBreachConfigurationBag
- (WBSPasswordBreachConfigurationBag)initWithBagDictionary:(id)dictionary;
- (WBSPasswordBreachConfigurationBag)initWithSnapshotData:(id)data error:(id *)error;
- (id)firstConfigurationForSupportedProtocolVersion:(unint64_t)version rampIdentifier:(unint64_t)identifier allowValuesForTesting:(BOOL)testing;
@end

@implementation WBSPasswordBreachConfigurationBag

- (WBSPasswordBreachConfigurationBag)initWithSnapshotData:(id)data error:(id *)error
{
  v7 = [MEMORY[0x1E695DF20] safari_dictionaryWithJSONOrPropertyListData:data];
  if (!v7)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationBag initWithSnapshotData:v9 error:?];
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *error = selfCopy = 0;
      goto LABEL_8;
    }

    selfCopy = 0;
    goto LABEL_8;
  }

  self = [(WBSPasswordBreachConfigurationBag *)self initWithBagDictionary:v7];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (WBSPasswordBreachConfigurationBag)initWithBagDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = WBSPasswordBreachConfigurationBag;
  v5 = [(WBSPasswordBreachConfigurationBag *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy safari_numberForKey:@"BagVersion"];
    v8 = v6;
    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      if (unsignedIntegerValue < 2)
      {
        v14 = [dictionaryCopy copy];
        bag = v5->_bag;
        v5->_bag = v14;

        v12 = v5;
        goto LABEL_11;
      }

      v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(unsignedIntegerValue, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordBreachConfigurationBag *)v8 initWithBagDictionary:v11];
      }
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachConfigurationBag initWithBagDictionary:v13];
      }
    }

    v12 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)firstConfigurationForSupportedProtocolVersion:(unint64_t)version rampIdentifier:(unint64_t)identifier allowValuesForTesting:(BOOL)testing
{
  testingCopy = testing;
  v42 = *MEMORY[0x1E69E9840];
  v7 = [(NSDictionary *)self->_bag safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"Configurations"];
  v9 = v7;
  if (v7)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [objc_alloc(MEMORY[0x1E69C8908]) initWithDictionary:v15];
          [v16 unsignedIntegerForKey:@"ProtocolVersion" minimumValue:1 maximumValue:version];
          errorOccurred = [v16 errorOccurred];
          if (errorOccurred)
          {
            v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(errorOccurred, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [WBSPasswordBreachConfigurationBag firstConfigurationForSupportedProtocolVersion:v40 rampIdentifier:&v40[1] allowValuesForTesting:v19];
            }
          }

          else
          {
            [v16 unsignedIntegerForKey:@"MaximumRampIdentifier" minimumValue:identifier maximumValue:-1];
            errorOccurred2 = [v16 errorOccurred];
            if (errorOccurred2)
            {
              v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(errorOccurred2, v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                [WBSPasswordBreachConfigurationBag firstConfigurationForSupportedProtocolVersion:v35 rampIdentifier:v22 allowValuesForTesting:?];
              }
            }

            else
            {
              v23 = objc_alloc(MEMORY[0x1E69C8900]);
              v24 = [v23 initWithDictionary:v15 protocolClasses:MEMORY[0x1E695E0F0] allowValuesForTesting:testingCopy];
              if (v24)
              {
                v28 = v24;

                goto LABEL_23;
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v27 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v27, OS_LOG_TYPE_INFO, "No valid configuration available in the bag.", buf, 2u);
    }

    v28 = 0;
LABEL_23:
    v9 = v31;
  }

  else
  {
    v29 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *v40 = 0;
      _os_log_impl(&dword_1BB6F3000, v29, OS_LOG_TYPE_INFO, "No configurations were found in the bag.", v40, 2u);
    }

    v28 = 0;
  }

  return v28;
}

- (void)initWithBagDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Unsupported bag version %@", &v2, 0xCu);
}

- (void)firstConfigurationForSupportedProtocolVersion:(uint8_t *)buf rampIdentifier:(_BYTE *)a2 allowValuesForTesting:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Skipping configuration with ineligible maximum ramp identifier.", buf, 2u);
}

- (void)firstConfigurationForSupportedProtocolVersion:(uint8_t *)buf rampIdentifier:(_BYTE *)a2 allowValuesForTesting:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Skipping configuration with ineligible protocol version.", buf, 2u);
}

@end