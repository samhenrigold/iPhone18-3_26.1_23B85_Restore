@interface TTSVoiceAsset
- (TTSVoiceAsset)initWithCoder:(id)coder;
- (TTSVoiceAsset)initWithDictionaryRepresentation:(id)representation;
- (TTSVoiceAsset)initWithName:(id)name languages:(id)languages gender:(int64_t)gender footprint:(int64_t)footprint isInstalled:(BOOL)installed isBuiltIn:(BOOL)in masteredVersion:(id)version compatibilityVersion:(id)self0 neural:(BOOL)self1;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTSVoiceAsset

- (TTSVoiceAsset)initWithName:(id)name languages:(id)languages gender:(int64_t)gender footprint:(int64_t)footprint isInstalled:(BOOL)installed isBuiltIn:(BOOL)in masteredVersion:(id)version compatibilityVersion:(id)self0 neural:(BOOL)self1
{
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  languagesCopy = languages;
  v40.receiver = self;
  v40.super_class = TTSVoiceAsset;
  v19 = [(TTSVoiceAsset *)&v40 init];
  if (v19)
  {
    genderCopy = gender;
    footprintCopy = footprint;
    inCopy = in;
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = languagesCopy;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        v26 = 0;
        do
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if ([*(*(&v36 + 1) + 8 * v26) containsString:@"_"])
          {
            v27 = AXTTSLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              sub_1A9579CB8(&buf, v35, v27);
            }
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v24);
    }

    v28 = [v22 copy];
    languages = v19->_languages;
    v19->_languages = v28;

    v19->_gender = genderCopy;
    v19->_footprint = footprintCopy;
    v19->_isInstalled = installed;
    v19->_isBuiltInVoice = inCopy;
    v19->_neural = neural;
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = TTSVoiceAsset;
  v4 = [(TTSVoiceAsset *)&v17 description];
  name = self->_name;
  languages = self->_languages;
  gender = self->_gender;
  v8 = @"any";
  if (gender == 2)
  {
    v8 = @"female";
  }

  if (gender == 1)
  {
    v9 = @"male";
  }

  else
  {
    v9 = v8;
  }

  if (self->_footprint == 3)
  {
    v10 = @"compact";
  }

  else
  {
    v10 = @"premium";
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_neural];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInstalled];
  masteredVersion = [(TTSAssetBase *)self masteredVersion];
  compatibilityVersion = [(TTSAssetBase *)self compatibilityVersion];
  v15 = [v3 stringWithFormat:@"%@ Name: %@, Languages: %@, Gender: %@, Footprint: %@, Neural: %@, Installed: %@, Version: %@/%@", v4, name, languages, v9, v10, v11, v12, masteredVersion, compatibilityVersion];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"_name"];
  [coderCopy encodeObject:self->_languages forKey:@"_languages"];
  [coderCopy encodeInteger:self->_gender forKey:@"_gender"];
  [coderCopy encodeInteger:self->_footprint forKey:@"_footprint"];
  [coderCopy encodeBool:self->_isInstalled forKey:@"_isInstalled"];
  [coderCopy encodeBool:self->_isBuiltInVoice forKey:@"_isBuiltInVoice"];
  [coderCopy encodeObject:self->_voicePath forKey:@"_voicePath"];
  [coderCopy encodeBool:self->_neural forKey:@"_neural"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_fileSize];
  [coderCopy encodeObject:v6 forKey:@"fileSizeWithNumber"];
}

- (TTSVoiceAsset)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TTSVoiceAsset;
  v5 = [(TTSVoiceAsset *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_languages"];
    languages = v5->_languages;
    v5->_languages = v11;

    v5->_gender = [coderCopy decodeIntegerForKey:@"_gender"];
    v5->_footprint = [coderCopy decodeIntegerForKey:@"_footprint"];
    v5->_isInstalled = [coderCopy decodeBoolForKey:@"_isInstalled"];
    v5->_isBuiltInVoice = [coderCopy decodeBoolForKey:@"_isBuiltInVoice"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voicePath"];
    voicePath = v5->_voicePath;
    v5->_voicePath = v13;

    v5->_neural = [coderCopy decodeBoolForKey:@"_neural"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSizeWithNumber"];
    v5->_fileSize = [v15 integerValue];
  }

  return v5;
}

- (TTSVoiceAsset)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKey:@"Name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [representationCopy objectForKey:@"Languages"];
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    lastObject = [v7 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;
  }

  v11 = [representationCopy objectForKey:@"Gender"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v11 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v13 = [representationCopy objectForKeyedSubscript:@"neural"];
  bOOLValue = [v13 BOOLValue];

  v15 = [representationCopy objectForKeyedSubscript:@"MasteredVersion"];
  v16 = [representationCopy objectForKeyedSubscript:@"CompatabilityVersion"];
  LOBYTE(v21) = bOOLValue;
  v17 = [(TTSVoiceAsset *)self initWithName:v6 languages:v8 gender:integerValue footprint:1 isInstalled:0 isBuiltIn:1 masteredVersion:v15 compatibilityVersion:v16 neural:v21];

  v18 = v17;
  v19 = [representationCopy objectForKeyedSubscript:@"VoicePath"];
  [(TTSVoiceAsset *)v18 setVoicePath:v19];

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"Name"];
  }

  languages = self->_languages;
  if (languages)
  {
    [v4 setObject:languages forKey:@"Languages"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_gender];
  [v4 setObject:v7 forKey:@"Gender"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_neural];
  [v4 setObject:v8 forKey:@"neural"];

  contentVersion = [(TTSAssetBase *)self contentVersion];

  if (contentVersion)
  {
    contentVersion2 = [(TTSAssetBase *)self contentVersion];
    [v4 setObject:contentVersion2 forKey:@"ContentVersion"];
  }

  masteredVersion = [(TTSAssetBase *)self masteredVersion];

  if (masteredVersion)
  {
    masteredVersion2 = [(TTSAssetBase *)self masteredVersion];
    [v4 setObject:masteredVersion2 forKey:@"MasteredVersion"];
  }

  compatibilityVersion = [(TTSAssetBase *)self compatibilityVersion];

  if (compatibilityVersion)
  {
    compatibilityVersion2 = [(TTSAssetBase *)self compatibilityVersion];
    [v4 setObject:compatibilityVersion2 forKey:@"CompatabilityVersion"];
  }

  voicePath = [(TTSVoiceAsset *)self voicePath];

  if (voicePath)
  {
    voicePath2 = [(TTSVoiceAsset *)self voicePath];
    [v4 setObject:voicePath2 forKey:@"VoicePath"];
  }

  return v4;
}

@end