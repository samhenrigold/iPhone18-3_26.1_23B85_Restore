@interface FCChannelUpsellConfig
- (FCChannelUpsellConfig)initWithChannelID:(id)d configDictionary:(id)dictionary;
@end

@implementation FCChannelUpsellConfig

- (FCChannelUpsellConfig)initWithChannelID:(id)d configDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = FCChannelUpsellConfig;
  v9 = [(FCChannelUpsellConfig *)&v38 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_channelID, d);
    v33 = dictionaryCopy;
    v11 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"triggers", 0);
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[FCChannelUpsellTrigger alloc] initWithConfigDictionary:*(*(&v34 + 1) + 8 * i)];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCChannelUpsellTrigger triggerMethod](v18, "triggerMethod")}];
          [v12 setObject:v18 forKeyedSubscript:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    v20 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v12];
    triggersByMethod = v10->_triggersByMethod;
    v10->_triggersByMethod = v20;

    dictionaryCopy = v33;
    v10->_presentationCap = FCAppConfigurationIntegerValue(v33, @"presentationCap", 1);
    v10->_presentationCountResetInterval = FCAppConfigurationIntegerValue(v33, @"presentationCountResetInterval", 0);
    v10->_quiescenceInterval = FCAppConfigurationIntegerValue(v33, @"quiescenceInterval", 0);
    v10->_engagedUserQuiescenceInterval = FCAppConfigurationIntegerValue(v33, @"engagedUserQuiescenceInterval", 0);
    v22 = [FCEmailSignupConfig alloc];
    v23 = FCAppConfigurationDictionaryValueWithDefaultValue(v33, @"emailSignupConfiguration", 0);
    v24 = [(FCEmailSignupConfig *)v22 initWithConfigDictionary:v23];
    emailSignupConfiguration = v10->_emailSignupConfiguration;
    v10->_emailSignupConfiguration = v24;

    v10->_ignoreWebOptInStatus = FCAppConfigurationBoolValue(v33, @"ignoreWebOptInStatus", 0);
    v26 = FCAppConfigurationDictionaryValueWithDefaultValue(v33, @"hideMyEmailSignupConfiguration", 0);
    if (v26)
    {
      v27 = [[FCHideMyEmailSignupConfig alloc] initWithConfigDictionary:v26];
      hideMyEmailSignupConfiguration = v10->_hideMyEmailSignupConfiguration;
      v10->_hideMyEmailSignupConfiguration = v27;
    }

    v29 = FCAppConfigurationDictionaryValueWithDefaultValue(v33, @"siwaPurchaseConfiguration", 0);
    if (v29)
    {
      v30 = [[FCSIWAPurchaseConfig alloc] initWithConfigDictionary:v29];
      siwaPurchaseConfiguration = v10->_siwaPurchaseConfiguration;
      v10->_siwaPurchaseConfiguration = v30;
    }
  }

  return v10;
}

@end