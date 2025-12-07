@interface SLRemoteService
+ (id)_cachedServiceWithType:(id)type;
+ (id)_cachedServices;
- (BOOL)_isSupportedURL:(id)l withSupportedSchemes:(id)schemes;
- (BOOL)_isValidAuthenicationStyleIdentifier:(id)identifier;
- (BOOL)infoDictHasRequiredKeys:(id)keys;
- (BOOL)supportsImageURL:(id)l;
- (BOOL)supportsVideoURL:(id)l;
- (NSBundle)serviceBundle;
- (SLRemoteService)initWithCoder:(id)coder;
- (SLRemoteService)initWithServiceBundle:(id)bundle socialInfoDictionary:(id)dictionary;
- (id)_activityImageForImageResourceName:(id)name inBundle:(id)bundle;
- (id)_requiredInfoDictKeys;
- (id)_setFromArrayWithKey:(id)key inDictionary:(id)dictionary;
- (id)activityImage;
- (id)composeViewController;
- (id)description;
- (id)integerPropertyKeyMappings;
- (int64_t)_authenticationStyleFromAuthenticationStyleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLRemoteService

- (SLRemoteService)initWithServiceBundle:(id)bundle socialInfoDictionary:(id)dictionary
{
  bundleCopy = bundle;
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = SLRemoteService;
  v15 = [(SLRemoteService *)&v48 init];
  if (!v15)
  {
    goto LABEL_15;
  }

  if (!bundleCopy)
  {
    v40 = v4;
    v41 = @"Bundle cannot be nil for remote service";
LABEL_12:
    v42 = 3;
LABEL_14:
    _SLLog(v40, v42, v41, v10, v11, v12, v13, v14, v44);
LABEL_15:
    v39 = 0;
    goto LABEL_16;
  }

  if (![dictionaryCopy count])
  {
    v40 = v4;
    v41 = @"Social service info dictionary cannot be nil or empty";
    goto LABEL_12;
  }

  if (![(SLRemoteService *)v15 infoDictHasRequiredKeys:dictionaryCopy])
  {
    _SLLog(v4, 3, @"Social service info dictionary has missing or invalid required keys", v16, v17, v18, v19, v20, v44);
    v44 = dictionaryCopy;
    v41 = @"Social info dict is %@";
    v40 = v4;
    v42 = 6;
    goto LABEL_14;
  }

  objc_storeStrong(&v15->_serviceBundle, bundle);
  bundleURL = [bundleCopy bundleURL];
  [(SLRemoteService *)v15 setServiceBundleURL:bundleURL];

  v22 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceTypeIdentifier"];
  [(SLRemoteService *)v15 setServiceTypeIdentifier:v22];

  v23 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceLocalizedName"];

  if (v23)
  {
    v25 = SLSocialFrameworkBundle(v24);
    v26 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceLocalizedName"];
    v27 = [v25 localizedStringForKey:v26 value:&stru_1F41EC300 table:@"Localizable"];
    [(SLRemoteService *)v15 setLocalizedServiceName:v27];
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceActivityViewIcon"];
  [(SLRemoteService *)v15 setActivityViewIconResourceName:v28];

  v29 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceTargetRegionChina"];
  -[SLRemoteService setServiceRegionTargetIsChina:](v15, "setServiceRegionTargetIsChina:", [v29 BOOLValue]);

  v30 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceAccountTypeIdentifier"];
  [(SLRemoteService *)v15 setAccountTypeIdentifier:v30];

  v31 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceAuthenticationStyle"];
  [(SLRemoteService *)v15 setAuthenticationStyle:[(SLRemoteService *)v15 _authenticationStyleFromAuthenticationStyleIdentifier:v31]];

  v32 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceAddDeviceClassToRequests"];
  -[SLRemoteService setAddDeviceClassToRequest:](v15, "setAddDeviceClassToRequest:", [v32 BOOLValue]);

  v33 = [(SLRemoteService *)v15 _setFromArrayWithKey:@"SLServiceSupportedImageAssetURLSchemes" inDictionary:dictionaryCopy];
  [(SLRemoteService *)v15 setSupportedImageAssetURLSchemes:v33];

  v34 = [(SLRemoteService *)v15 _setFromArrayWithKey:@"SLServiceSupportedVideoAssetURLSchemes" inDictionary:dictionaryCopy];
  [(SLRemoteService *)v15 setSupportedVideoAssetURLSchemes:v34];

  v35 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceActivityViewIcon"];

  if (v35)
  {
    v36 = [dictionaryCopy objectForKeyedSubscript:@"SLServiceActivityViewIcon"];
    [(SLRemoteService *)v15 setActivityImageName:v36];
  }

  integerPropertyKeyMappings = [(SLRemoteService *)v15 integerPropertyKeyMappings];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __62__SLRemoteService_initWithServiceBundle_socialInfoDictionary___block_invoke;
  v45[3] = &unk_1E8176790;
  v46 = dictionaryCopy;
  v38 = v15;
  v47 = v38;
  [integerPropertyKeyMappings enumerateKeysAndObjectsUsingBlock:v45];

  v39 = v38;
LABEL_16:

  return v39;
}

void __62__SLRemoteService_initWithServiceBundle_socialInfoDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v5 || (v6 = objc_opt_respondsToSelector(), v7 = v5, (v6 & 1) == 0))
  {
    v7 = &unk_1F4202AA8;
  }

  [*(a1 + 40) setValue:v7 forKey:v8];
}

- (BOOL)infoDictHasRequiredKeys:(id)keys
{
  v37 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  _requiredInfoDictKeys = [(SLRemoteService *)self _requiredInfoDictKeys];
  v7 = [_requiredInfoDictKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(_requiredInfoDictKeys);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [keysCopy objectForKeyedSubscript:v11];

        if (!v12)
        {
          _SLLog(v3, 3, @"Social Info Dictionary is missing required key %@", v13, v14, v15, v16, v17, v11);
          _SLLog(v3, 6, @"Social info dict is %@", v21, v22, v23, v24, v25, keysCopy);
          goto LABEL_13;
        }
      }

      v8 = [_requiredInfoDictKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = [keysCopy objectForKeyedSubscript:@"SLServiceAuthenticationStyle"];
  v19 = [(SLRemoteService *)self _isValidAuthenicationStyleIdentifier:v18];

  if (v19)
  {
    v20 = 1;
  }

  else
  {
    _requiredInfoDictKeys = [keysCopy objectForKeyedSubscript:@"SLServiceAuthenticationStyle"];
    _SLLog(v3, 3, @"Social Info Dictionary has invalid authentication style identifier %@", v26, v27, v28, v29, v30, _requiredInfoDictKeys);
LABEL_13:

    v20 = 0;
  }

  return v20;
}

- (id)_requiredInfoDictKeys
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"SLServiceTypeIdentifier";
  v4[1] = @"SLServiceLocalizedName";
  v4[2] = @"SLServiceAuthenticationStyle";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)integerPropertyKeyMappings
{
  v5[6] = *MEMORY[0x1E69E9840];
  v4[0] = @"SLServiceMaximumURLCount";
  v4[1] = @"SLServiceMaximumImageCount";
  v5[0] = @"maximumURLCount";
  v5[1] = @"maximumImageCount";
  v4[2] = @"SLServiceMaximumImageDataSize";
  v4[3] = @"SLServiceMaximumVideoCount";
  v5[2] = @"maximumImageDataSize";
  v5[3] = @"maximumVideoCount";
  v4[4] = @"SLServiceMaximumVideoDataSize";
  v4[5] = @"SLServiceMaximumVideoTimeLimit";
  v5[4] = @"maximumVideoDataSize";
  v5[5] = @"maximumVideoTimeLimit";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (BOOL)_isValidAuthenicationStyleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _authenticationStyleIdentifierMappings = [(SLRemoteService *)self _authenticationStyleIdentifierMappings];
  v6 = [_authenticationStyleIdentifierMappings objectForKey:identifierCopy];

  return v6 != 0;
}

- (int64_t)_authenticationStyleFromAuthenticationStyleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    _authenticationStyleIdentifierMappings = [(SLRemoteService *)self _authenticationStyleIdentifierMappings];
    v12 = [_authenticationStyleIdentifierMappings objectForKeyedSubscript:identifierCopy];
    v18 = v12;
    if (v12)
    {
      integerValue = [v12 integerValue];
    }

    else
    {
      _SLLog(v3, 3, @"Invalid authentication style %@ in Social Service info dictionary", v13, v14, v15, v16, v17, identifierCopy);
      integerValue = -1;
    }
  }

  else
  {
    _SLLog(v3, 3, @"Invalid authentication style %@ in Social Service info dictionary", v5, v6, v7, v8, v9, 0);
    integerValue = -1;
  }

  return integerValue;
}

- (id)_setFromArrayWithKey:(id)key inDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = MEMORY[0x1E695DFD8];
      v17 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
      v18 = [v16 setWithArray:v17];

      goto LABEL_6;
    }

    _SLLog(v4, 3, @"Incorrect type for SLService info key %@, must be of type NSArray", v11, v12, v13, v14, v15, keyCopy);
  }

  v18 = 0;
LABEL_6:

  return v18;
}

- (id)_activityImageForImageResourceName:(id)name inBundle:(id)bundle
{
  v7 = MEMORY[0x1E69DCEB0];
  bundleCopy = bundle;
  nameCopy = name;
  mainScreen = [v7 mainScreen];
  [mainScreen scale];
  _UISharedImageSetPreferredImageScale();

  v11 = [MEMORY[0x1E69DCAB8] _deviceSpecificImageNamed:nameCopy inBundle:bundleCopy];

  v12 = [v11 _applicationIconImageForFormat:10 precomposed:1];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    serviceTypeIdentifier = [(SLRemoteService *)self serviceTypeIdentifier];
    _SLLog(v4, 4, @"Unable to fetch activity image for Social XPC service %@", v15, v16, v17, v18, v19, serviceTypeIdentifier);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  serviceBundleURL = [(SLRemoteService *)self serviceBundleURL];
  [coderCopy encodeObject:serviceBundleURL forKey:@"serviceBundleURL"];

  [coderCopy encodeBool:-[SLRemoteService serviceRegionTargetIsChina](self forKey:{"serviceRegionTargetIsChina"), @"serviceRegionTargetIsChina"}];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SLRemoteService authenticationStyle](self, "authenticationStyle")}];
  [coderCopy encodeObject:v6 forKey:@"authenticationStyle"];

  [coderCopy encodeBool:-[SLRemoteService addDeviceClassToRequest](self forKey:{"addDeviceClassToRequest"), @"addDeviceClassToRequest"}];
  supportedImageAssetURLSchemes = [(SLRemoteService *)self supportedImageAssetURLSchemes];
  [coderCopy encodeObject:supportedImageAssetURLSchemes forKey:@"supportedImageAssetURLSchemes"];

  supportedVideoAssetURLSchemes = [(SLRemoteService *)self supportedVideoAssetURLSchemes];
  [coderCopy encodeObject:supportedVideoAssetURLSchemes forKey:@"supportedVideoAssetURLSchemes"];

  _encodableStringProperties = [(SLRemoteService *)self _encodableStringProperties];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __35__SLRemoteService_encodeWithCoder___block_invoke;
  v23[3] = &unk_1E81767B8;
  v10 = coderCopy;
  v24 = v10;
  selfCopy = self;
  [_encodableStringProperties enumerateObjectsUsingBlock:v23];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  integerPropertyKeyMappings = [(SLRemoteService *)self integerPropertyKeyMappings];
  objectEnumerator = [integerPropertyKeyMappings objectEnumerator];

  v13 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        v18 = [(SLRemoteService *)self valueForKey:v17];
        [v10 encodeObject:v18 forKey:v17];
      }

      v14 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v14);
  }
}

void __35__SLRemoteService_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [v2 encodeObject:v5 forKey:v4];
}

- (SLRemoteService)initWithCoder:(id)coder
{
  v42[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = SLRemoteService;
  v5 = [(SLRemoteService *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceBundleURL"];
    [(SLRemoteService *)v5 setServiceBundleURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceRegionTargetIsChina"];
    -[SLRemoteService setServiceRegionTargetIsChina:](v5, "setServiceRegionTargetIsChina:", [v7 BOOLValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationStyle"];
    -[SLRemoteService setAuthenticationStyle:](v5, "setAuthenticationStyle:", [v8 integerValue]);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addDeviceClassToRequest"];
    -[SLRemoteService setAddDeviceClassToRequest:](v5, "setAddDeviceClassToRequest:", [v9 BOOLValue]);

    v10 = MEMORY[0x1E695DFD8];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"supportedImageAssetURLSchemes"];
    [(SLRemoteService *)v5 setSupportedImageAssetURLSchemes:v13];

    v14 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"supportedVideoAssetURLSchemes"];
    [(SLRemoteService *)v5 setSupportedVideoAssetURLSchemes:v17];

    _encodableStringProperties = [(SLRemoteService *)v5 _encodableStringProperties];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __33__SLRemoteService_initWithCoder___block_invoke;
    v36[3] = &unk_1E81767B8;
    v19 = v5;
    v37 = v19;
    v31 = coderCopy;
    v20 = coderCopy;
    v38 = v20;
    [_encodableStringProperties enumerateObjectsUsingBlock:v36];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    integerPropertyKeyMappings = [(SLRemoteService *)v19 integerPropertyKeyMappings];
    objectEnumerator = [integerPropertyKeyMappings objectEnumerator];

    v23 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        v26 = 0;
        do
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v27 = *(*(&v32 + 1) + 8 * v26);
          v28 = [v20 decodeObjectOfClass:objc_opt_class() forKey:v27];
          [(SLRemoteService *)v19 setValue:v28 forKey:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v24);
    }

    v29 = v19;
    coderCopy = v31;
  }

  return v5;
}

void __33__SLRemoteService_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [v2 setValue:v5 forKey:v4];
}

- (BOOL)supportsImageURL:(id)l
{
  lCopy = l;
  supportedImageAssetURLSchemes = [(SLRemoteService *)self supportedImageAssetURLSchemes];
  LOBYTE(self) = [(SLRemoteService *)self _isSupportedURL:lCopy withSupportedSchemes:supportedImageAssetURLSchemes];

  return self;
}

- (BOOL)supportsVideoURL:(id)l
{
  lCopy = l;
  supportedVideoAssetURLSchemes = [(SLRemoteService *)self supportedVideoAssetURLSchemes];
  LOBYTE(self) = [(SLRemoteService *)self _isSupportedURL:lCopy withSupportedSchemes:supportedVideoAssetURLSchemes];

  return self;
}

- (BOOL)_isSupportedURL:(id)l withSupportedSchemes:(id)schemes
{
  schemesCopy = schemes;
  scheme = [l scheme];
  v7 = [schemesCopy member:scheme];

  return v7 != 0;
}

- (NSBundle)serviceBundle
{
  serviceBundle = self->_serviceBundle;
  if (!serviceBundle)
  {
    v4 = MEMORY[0x1E696AAE8];
    serviceBundleURL = [(SLRemoteService *)self serviceBundleURL];
    v6 = [v4 bundleWithURL:serviceBundleURL];
    v7 = self->_serviceBundle;
    self->_serviceBundle = v6;

    serviceBundle = self->_serviceBundle;
  }

  return serviceBundle;
}

- (id)activityImage
{
  activityImageName = [(SLRemoteService *)self activityImageName];

  if (activityImageName)
  {
    activityImageName2 = [(SLRemoteService *)self activityImageName];
    serviceBundle = [(SLRemoteService *)self serviceBundle];
    v12 = [(SLRemoteService *)self _activityImageForImageResourceName:activityImageName2 inBundle:serviceBundle];
  }

  else
  {
    _SLLog(v2, 4, @"Cannot create activity image, activityImageName is nil", v5, v6, v7, v8, v9, v14);
    v12 = 0;
  }

  return v12;
}

- (id)composeViewController
{
  serviceType = [(SLRemoteService *)self serviceType];
  v3 = [SLComposeViewController composeViewControllerForServiceType:serviceType];

  return v3;
}

+ (id)_cachedServices
{
  if (_cachedServices_onceToken != -1)
  {
    +[SLRemoteService _cachedServices];
  }

  v3 = __remoteServices;

  return v3;
}

uint64_t __34__SLRemoteService__cachedServices__block_invoke()
{
  __remoteServices = +[SLRemoteServicePlistLoader allServices];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_cachedServiceWithType:(id)type
{
  v17 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  +[SLRemoteService _cachedServices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        serviceType = [v8 serviceType];
        v10 = [serviceType isEqualToString:typeCopy];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  serviceType = [(SLRemoteService *)self serviceType];
  v4 = [v2 stringWithFormat:@"SLRemoteService(serviceType=%@)", serviceType];

  return v4;
}

@end