@interface NEAppPush
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)overlapsWithConfiguration:(id)configuration;
- (NEAppPush)init;
- (NEAppPush)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEAppPush

- (BOOL)overlapsWithConfiguration:(id)configuration
{
  v70 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = MEMORY[0x1E695DFD8];
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  v7 = [v5 setWithArray:matchSSIDs];

  v8 = MEMORY[0x1E695DFD8];
  matchSSIDs2 = [configurationCopy matchSSIDs];
  v10 = [v8 setWithArray:matchSSIDs2];

  if (([v10 intersectsSet:v7] & 1) == 0)
  {
    matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
    matchPrivateLTENetworks2 = [configurationCopy matchPrivateLTENetworks];
    v13 = matchPrivateLTENetworks;
    v14 = matchPrivateLTENetworks2;
    v15 = v14;
    if (!self || (LOBYTE(self) = 0, !v13) || !v14)
    {
LABEL_45:

      goto LABEL_46;
    }

    if (![v13 count] || !objc_msgSend(v15, "count"))
    {
      LOBYTE(self) = 0;
      goto LABEL_45;
    }

    v16 = [v13 count];
    v17 = [v15 count];
    if (v16 >= v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = v13;
    }

    if (v16 >= v17)
    {
      v19 = v13;
    }

    else
    {
      v19 = v15;
    }

    v20 = v18;
    v21 = v19;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v22 = v20;
    v47 = [v22 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (!v47)
    {
      LOBYTE(self) = 0;
      goto LABEL_44;
    }

    v23 = *v61;
    v54 = v7;
    v55 = configurationCopy;
    v52 = v13;
    v53 = v10;
    v50 = v21;
    v51 = v15;
    v49 = v22;
    v46 = *v61;
LABEL_16:
    v24 = 0;
LABEL_17:
    if (*v61 != v23)
    {
      objc_enumerationMutation(v22);
    }

    v48 = v24;
    v25 = *(*(&v60 + 1) + 8 * v24);
    v26 = v21;
    v27 = v25;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (!v29)
    {
      goto LABEL_38;
    }

    v30 = v29;
    v31 = *v65;
    v56 = v28;
LABEL_21:
    v32 = 0;
    while (1)
    {
      if (*v65 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v64 + 1) + 8 * v32);
      mobileCountryCode = [v33 mobileCountryCode];
      mobileCountryCode2 = [v27 mobileCountryCode];
      if ([mobileCountryCode isEqual:mobileCountryCode2])
      {
        break;
      }

LABEL_36:
      if (v30 == ++v32)
      {
        v30 = [v28 countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v30)
        {
          goto LABEL_21;
        }

LABEL_38:

        v24 = v48 + 1;
        v7 = v54;
        configurationCopy = v55;
        v13 = v52;
        v10 = v53;
        v21 = v50;
        v15 = v51;
        v22 = v49;
        v23 = v46;
        if (v48 + 1 == v47)
        {
          LOBYTE(self) = 0;
          v47 = [v49 countByEnumeratingWithState:&v60 objects:v68 count:16];
          if (!v47)
          {
LABEL_44:

            goto LABEL_45;
          }

          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    mobileNetworkCode = [v33 mobileNetworkCode];
    mobileNetworkCode2 = [v27 mobileNetworkCode];
    if (![mobileNetworkCode isEqual:mobileNetworkCode2])
    {
      v44 = 0;
      goto LABEL_35;
    }

    trackingAreaCode = [v33 trackingAreaCode];
    if (trackingAreaCode || ([v27 trackingAreaCode], (v57 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      trackingAreaCode2 = [v33 trackingAreaCode];
      [v27 trackingAreaCode];
      v39 = v30;
      v40 = v31;
      v42 = v41 = v27;
      v59 = [trackingAreaCode2 isEqual:v42];

      v27 = v41;
      v31 = v40;
      v30 = v39;

      v28 = v56;
      v43 = trackingAreaCode;
      if (trackingAreaCode)
      {
LABEL_34:

        v44 = v59;
LABEL_35:

        if (v44)
        {

          LOBYTE(self) = 1;
          v7 = v54;
          configurationCopy = v55;
          v13 = v52;
          v10 = v53;
          v21 = v50;
          v15 = v51;
          v22 = v49;
          goto LABEL_44;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v57 = 0;
      v59 = 1;
      v43 = 0;
    }

    goto LABEL_34;
  }

  LOBYTE(self) = 1;
LABEL_46:

  return self;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v7 appendPrettyBOOL:-[NEAppPush isEnabled](self withName:"isEnabled") andIndent:@"enabled" options:{v5, options}];
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  [v7 appendPrettyObject:matchSSIDs withName:@"matching SSID List" andIndent:v5 options:options];

  matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
  [v7 appendPrettyObject:matchPrivateLTENetworks withName:@"matching Private LTE Network List" andIndent:v5 options:options];

  [v7 appendPrettyBOOL:-[NEAppPush matchEthernet](self withName:"matchEthernet") andIndent:@"Match on Ethernet" options:{v5, options}];
  providerConfiguration = [(NEAppPush *)self providerConfiguration];
  [v7 appendPrettyObject:providerConfiguration withName:@"vendor specific provider configuration" andIndent:v5 options:options];

  providerBundleIdentifier = [(NEAppPush *)self providerBundleIdentifier];
  [v7 appendPrettyObject:providerBundleIdentifier withName:@"provider bundle identifier" andIndent:v5 options:options];

  pluginType = [(NEAppPush *)self pluginType];
  [v7 appendPrettyObject:pluginType withName:@"plugin type" andIndent:v5 options:options];

  return v7;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v67 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  if ([matchSSIDs count])
  {
    goto LABEL_4;
  }

  matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
  if ([matchPrivateLTENetworks count])
  {

LABEL_4:
    goto LABEL_5;
  }

  matchEthernet = [(NEAppPush *)self matchEthernet];

  if (!matchEthernet)
  {
    v50 = ne_log_obj();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_DEFAULT, "%@ no network matching configuration found", buf, 0xCu);
    }

    [(NEAppPush *)self setEnabled:0];
  }

LABEL_5:
  matchSSIDs2 = [(NEAppPush *)self matchSSIDs];
  v8 = [matchSSIDs2 count];

  if (v8 < 0xB)
  {
    matchPrivateLTENetworks2 = [(NEAppPush *)self matchPrivateLTENetworks];
    v11 = [matchPrivateLTENetworks2 count];

    if (v11 < 0xB)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      matchSSIDs3 = [(NEAppPush *)self matchSSIDs];
      v15 = [matchSSIDs3 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v60;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v60 != v17)
            {
              objc_enumerationMutation(matchSSIDs3);
            }

            v19 = *(*(&v59 + 1) + 8 * i);
            if (!isa_nsstring(v19) || ![v19 length])
            {
              [NEConfiguration addError:errorsCopy toList:?];

              goto LABEL_10;
            }
          }

          v16 = [matchSSIDs3 countByEnumeratingWithState:&v59 objects:v64 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = [(NEAppPush *)self matchPrivateLTENetworks];
      v20 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v20)
      {
        v21 = v20;
        v53 = *v56;
        v22 = 0x1E696A000uLL;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v56 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v55 + 1) + 8 * j);
            mobileCountryCode = [v24 mobileCountryCode];
            v26 = mobileCountryCode;
            if (!self || !isa_nsstring(mobileCountryCode) || [v26 length] != 3)
            {
              v51 = v26;
              v52 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_61;
            }

            decimalDigitCharacterSet = [*(v22 + 2824) decimalDigitCharacterSet];
            invertedSet = [decimalDigitCharacterSet invertedSet];

            v29 = [v26 rangeOfCharacterFromSet:invertedSet];
            if (v29 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v52 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_62;
            }

            mobileNetworkCode = [v24 mobileNetworkCode];
            if (!isa_nsstring(mobileNetworkCode) || [mobileNetworkCode length] != 3 && objc_msgSend(mobileNetworkCode, "length") != 2)
            {
              v52 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_60;
            }

            v31 = v22;
            decimalDigitCharacterSet2 = [*(v22 + 2824) decimalDigitCharacterSet];
            invertedSet2 = [decimalDigitCharacterSet2 invertedSet];

            v34 = [mobileNetworkCode rangeOfCharacterFromSet:invertedSet2];
            if (v34 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v52 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_63;
            }

            trackingAreaCode = [v24 trackingAreaCode];
            v22 = v31;
            if (trackingAreaCode)
            {
              v26 = trackingAreaCode;
              mobileNetworkCode = [v24 trackingAreaCode];
              if (!isa_nsstring(mobileNetworkCode))
              {
                goto LABEL_59;
              }

              decimalDigitCharacterSet3 = [*(v31 + 2824) decimalDigitCharacterSet];
              invertedSet3 = [decimalDigitCharacterSet3 invertedSet];

              if ([mobileNetworkCode rangeOfCharacterFromSet:invertedSet3] != 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(mobileNetworkCode, "length"))
              {

LABEL_59:
                v52 = @"Invalid TAC in Private LTE configuration";
LABEL_60:
                v51 = v26;

                v26 = mobileNetworkCode;
LABEL_61:

                v26 = v51;
LABEL_62:

LABEL_63:
                [NEConfiguration addError:v52 toList:errorsCopy];

                goto LABEL_10;
              }

              v38 = [mobileNetworkCode length];

              if (v38 > 5)
              {
                v52 = @"Invalid TAC in Private LTE configuration";
                goto LABEL_63;
              }
            }
          }

          v21 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      providerBundleIdentifier = [(NEAppPush *)self providerBundleIdentifier];
      v40 = [providerBundleIdentifier length];

      if (v40)
      {
        providerConfiguration = [(NEAppPush *)self providerConfiguration];
        if (!providerConfiguration || (v42 = providerConfiguration, -[NEAppPush providerConfiguration](self, "providerConfiguration"), v43 = objc_claimAutoreleasedReturnValue(), [v43 allKeys], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "count"), v44, v43, v42, !v45))
        {
          v46 = ne_log_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy2 = self;
            _os_log_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_INFO, "%@ no provider configuration found", buf, 0xCu);
          }
        }

        pluginType = [(NEAppPush *)self pluginType];
        v48 = [pluginType length];

        if (v48)
        {
          v12 = 1;
          goto LABEL_11;
        }

        v9 = @"missing plugin type";
      }

      else
      {
        v9 = @"provider bundle identifier not found";
      }
    }

    else
    {
      v9 = @"A configuration can have maximum 10 Private LTE networks";
    }
  }

  else
  {
    v9 = @"A configuration can have maximum 10 SSIDs";
  }

  [NEConfiguration addError:v9 toList:errorsCopy];
LABEL_10:
  v12 = 0;
LABEL_11:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEAppPush allocWithZone:?]];
  [(NEAppPush *)v4 setEnabled:[(NEAppPush *)self isEnabled]];
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  [(NEAppPush *)v4 setMatchSSIDs:matchSSIDs];

  providerConfiguration = [(NEAppPush *)self providerConfiguration];
  [(NEAppPush *)v4 setProviderConfiguration:providerConfiguration];

  providerBundleIdentifier = [(NEAppPush *)self providerBundleIdentifier];
  [(NEAppPush *)v4 setProviderBundleIdentifier:providerBundleIdentifier];

  pluginType = [(NEAppPush *)self pluginType];
  [(NEAppPush *)v4 setPluginType:pluginType];

  matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
  [(NEAppPush *)v4 setMatchPrivateLTENetworks:matchPrivateLTENetworks];

  [(NEAppPush *)v4 setMatchEthernet:[(NEAppPush *)self matchEthernet]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEAppPush isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  [coderCopy encodeObject:matchSSIDs forKey:@"MatchSSIDs"];

  providerConfiguration = [(NEAppPush *)self providerConfiguration];
  [coderCopy encodeObject:providerConfiguration forKey:@"ProviderConfig"];

  providerBundleIdentifier = [(NEAppPush *)self providerBundleIdentifier];
  [coderCopy encodeObject:providerBundleIdentifier forKey:@"ProviderBundleID"];

  pluginType = [(NEAppPush *)self pluginType];
  [coderCopy encodeObject:pluginType forKey:@"PluginType"];

  matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
  [coderCopy encodeObject:matchPrivateLTENetworks forKey:@"MatchPLTEs"];

  [coderCopy encodeBool:-[NEAppPush matchEthernet](self forKey:{"matchEthernet"), @"MatchEthernet"}];
}

- (NEAppPush)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = NEAppPush;
  v5 = [(NEAppPush *)&v29 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MatchSSIDs"];
    matchSSIDs = v5->_matchSSIDs;
    v5->_matchSSIDs = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"ProviderConfig"];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProviderBundleID"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"MatchPLTEs"];
    matchPrivateLTENetworks = v5->_matchPrivateLTENetworks;
    v5->_matchPrivateLTENetworks = v26;

    v5->_matchEthernet = [coderCopy decodeBoolForKey:@"MatchEthernet"];
  }

  return v5;
}

- (NEAppPush)init
{
  v5.receiver = self;
  v5.super_class = NEAppPush;
  v2 = [(NEAppPush *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEAppPush *)v2 setEnabled:0];
  }

  return v3;
}

@end