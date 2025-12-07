@interface STBackgroundActivitiesBundleRecord
- (STBackgroundActivitiesBundleRecord)initWithBundleInfoDictionary:(id)dictionary bundleRecordIdentifier:(id)identifier bundleURL:(id)l;
@end

@implementation STBackgroundActivitiesBundleRecord

- (STBackgroundActivitiesBundleRecord)initWithBundleInfoDictionary:(id)dictionary bundleRecordIdentifier:(id)identifier bundleURL:(id)l
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = STBackgroundActivitiesBundleRecord;
  v9 = [(STBundleRecord_Base *)&v35 initWithBundleInfoDictionary:dictionaryCopy bundleRecordIdentifier:identifier bundleURL:l];
  v10 = v9;
  if (v9)
  {
    v28 = v9;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v29 = [MEMORY[0x1E695DFA8] set];
    v11 = [dictionaryCopy bs_safeArrayForKey:@"STBackgroundActivities"];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 bs_safeStringForKey:@"Identifier"];
            v18 = [v16 bs_safeDictionaryForKey:@"VisualDescriptor"];
            v19 = [[STBackgroundActivityVisualDescriptor alloc] initWithPlistRepresentation:v18];
            v20 = v19;
            if (v17)
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21)
            {
              v22 = STSystemStatusLogBundleLoading();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138477827;
                v37 = v17;
                _os_log_error_impl(&dword_1DA9C2000, v22, OS_LOG_TYPE_ERROR, "No valid visual descriptor for background activity '%{private}@'", buf, 0xCu);
              }
            }

            else
            {
              [dictionary setObject:v19 forKey:v17];
              [v29 addObject:v17];
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v13);
    }

    v23 = [dictionary copy];
    v10 = v28;
    backgroundActivitiesToVisualDescriptors = v28->_backgroundActivitiesToVisualDescriptors;
    v28->_backgroundActivitiesToVisualDescriptors = v23;

    v25 = [v29 copy];
    backgroundActivityIdentifiers = v28->_backgroundActivityIdentifiers;
    v28->_backgroundActivityIdentifiers = v25;
  }

  return v10;
}

@end