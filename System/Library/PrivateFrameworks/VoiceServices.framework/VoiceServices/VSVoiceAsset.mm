@interface VSVoiceAsset
+ (id)compatibilityVersionFromMobileAssetAttributes:(id)attributes;
+ (id)footprintStringFromFootprint:(int64_t)footprint;
+ (id)genderStringFromGender:(int64_t)gender;
+ (id)languagesFromMobileAssetAttributes:(id)attributes;
+ (id)typeStringFromType:(int64_t)type;
+ (int64_t)footprintFromString:(id)string;
+ (int64_t)genderFromString:(id)string;
+ (int64_t)typeFromString:(id)string;
- (VSVoiceAsset)initWithCoder:(id)coder;
- (VSVoiceAsset)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)descriptiveKey;
- (id)dictionaryRepresentation;
- (id)initFromMobileAssetAttributes:(id)attributes;
- (id)nameKey;
- (id)voiceKey;
- (void)amendNameVersionAndSizeWithMobileAssetAttributes:(id)attributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSVoiceAsset

- (void)amendNameVersionAndSizeWithMobileAssetAttributes:(id)attributes
{
  attributesCopy = attributes;
  name = [(VSVoiceAsset *)self name];
  v5 = [name length];

  if (!v5)
  {
    v6 = [attributesCopy objectForKeyedSubscript:@"Name"];
    [(VSVoiceAsset *)self setName:v6];
  }

  masteredVersion = [(VSAssetBase *)self masteredVersion];
  v8 = [masteredVersion length];

  if (!v8)
  {
    v9 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D28918]];
    [(VSAssetBase *)self setMasteredVersion:v9];
  }

  contentVersion = [(VSAssetBase *)self contentVersion];

  if (!contentVersion)
  {
    v11 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D28900]];
    [(VSAssetBase *)self setContentVersion:v11];
  }

  compatibilityVersion = [(VSAssetBase *)self compatibilityVersion];

  if (!compatibilityVersion)
  {
    v13 = [VSVoiceAsset compatibilityVersionFromMobileAssetAttributes:attributesCopy];
    [(VSAssetBase *)self setCompatibilityVersion:v13];
  }

  downloadSize = [(VSAssetBase *)self downloadSize];

  if (!downloadSize)
  {
    v15 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D28908]];
    [(VSAssetBase *)self setDownloadSize:v15];
  }
}

- (id)initFromMobileAssetAttributes:(id)attributes
{
  v10.receiver = self;
  v10.super_class = VSVoiceAsset;
  attributesCopy = attributes;
  v4 = [(VSVoiceAsset *)&v10 init];
  v5 = [VSVoiceAsset languagesFromMobileAssetAttributes:attributesCopy, v10.receiver, v10.super_class];
  [(VSVoiceAsset *)v4 setLanguages:v5];

  v6 = [attributesCopy objectForKeyedSubscript:@"Gender"];
  [(VSVoiceAsset *)v4 setGender:[VSVoiceAsset genderFromString:v6]];

  v7 = [attributesCopy objectForKeyedSubscript:@"Type"];
  [(VSVoiceAsset *)v4 setType:[VSVoiceAsset typeFromString:v7]];

  v8 = [attributesCopy objectForKeyedSubscript:@"Footprint"];
  [(VSVoiceAsset *)v4 setFootprint:[VSVoiceAsset footprintFromString:v8]];

  [(VSVoiceAsset *)v4 amendNameVersionAndSizeWithMobileAssetAttributes:attributesCopy];
  return v4;
}

+ (id)compatibilityVersionFromMobileAssetAttributes:(id)attributes
{
  v17 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D288E8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [attributesCopy objectForKeyedSubscript:@"Name"];
      v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D28900]];
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_debug_impl(&dword_272850000, v5, OS_LOG_TYPE_DEBUG, "ASAttributeCompatibilityVersion should be NSNumber, got NSString for %@\tCV: %@\tCompatibility: %@", &v11, 0x20u);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

+ (id)languagesFromMobileAssetAttributes:(id)attributes
{
  v22 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:@"LanguagesCompatibility"];

  if (v4)
  {
    v5 = [attributesCopy objectForKeyedSubscript:@"LanguagesCompatibility"];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"_" withString:{@"-", v16}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"Languages"];
    if (v13)
    {
      v7 = v13;
      v6 = v7;
    }

    else
    {
      v14 = [attributesCopy objectForKeyedSubscript:@"Language"];
      v20 = v14;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

      v7 = 0;
    }
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
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

  v7 = [MEMORY[0x277CCABB0] numberWithLong:self->_gender];
  [v4 setObject:v7 forKey:@"Gender"];

  if (self->_type)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLong:?];
    [v4 setObject:v8 forKey:@"Type"];
  }

  masteredVersion = [(VSAssetBase *)self masteredVersion];

  if (masteredVersion)
  {
    masteredVersion2 = [(VSAssetBase *)self masteredVersion];
    [v4 setObject:masteredVersion2 forKey:@"MasteredVersion"];
  }

  contentVersion = [(VSAssetBase *)self contentVersion];

  if (contentVersion)
  {
    contentVersion2 = [(VSAssetBase *)self contentVersion];
    [v4 setObject:contentVersion2 forKey:@"ContentVersion"];
  }

  return v4;
}

- (VSVoiceAsset)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v21.receiver = self;
  v21.super_class = VSVoiceAsset;
  v5 = [(VSVoiceAsset *)&v21 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"Name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [(VSVoiceAsset *)v5 setName:v7];
    v8 = [representationCopy objectForKey:@"Languages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3476];
      v10 = [v8 filteredArrayUsingPredicate:v9];
      [(VSVoiceAsset *)v5 setLanguages:v10];
    }

    else
    {
      [(VSVoiceAsset *)v5 setLanguages:0];
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

    [(VSVoiceAsset *)v5 setGender:integerValue];
    v13 = [representationCopy objectForKey:@"Type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue2 = [v13 integerValue];
    }

    else
    {
      integerValue2 = 0;
    }

    [(VSVoiceAsset *)v5 setType:integerValue2];
    v15 = [representationCopy objectForKey:@"MasteredVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [(VSAssetBase *)v5 setMasteredVersion:v16];
    v17 = [representationCopy objectForKey:@"ContentVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    [(VSAssetBase *)v5 setContentVersion:v18];
    v19 = v5;
  }

  return v5;
}

uint64_t __49__VSVoiceAsset_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (VSVoiceAsset)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VSVoiceAsset;
  v5 = [(VSAssetBase *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_languages"];
    languages = v5->_languages;
    v5->_languages = v11;

    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_gender = [coderCopy decodeIntegerForKey:@"_gender"];
    v5->_footprint = [coderCopy decodeIntegerForKey:@"_footprint"];
    v5->_isInstalled = [coderCopy decodeBoolForKey:@"_isInstalled"];
    v5->_isBuiltInVoice = [coderCopy decodeBoolForKey:@"_isBuiltInVoice"];
    v5->_isVoiceReadyToUse = [coderCopy decodeBoolForKey:@"_isVoiceReadyToUse"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VSVoiceAsset;
  coderCopy = coder;
  [(VSAssetBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"_name", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_languages forKey:@"_languages"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeInteger:self->_gender forKey:@"_gender"];
  [coderCopy encodeInteger:self->_footprint forKey:@"_footprint"];
  [coderCopy encodeBool:self->_isInstalled forKey:@"_isInstalled"];
  [coderCopy encodeBool:self->_isBuiltInVoice forKey:@"_isBuiltInVoice"];
  [coderCopy encodeBool:self->_isVoiceReadyToUse forKey:@"_isVoiceReadyToUse"];
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = [VSVoiceAsset typeStringFromType:[(VSVoiceAsset *)self type]];
  name = self->_name;
  v4 = [(NSArray *)self->_languages componentsJoinedByString:@", "];
  v5 = [VSVoiceAsset genderStringFromGender:[(VSVoiceAsset *)self gender]];
  v6 = [VSVoiceAsset footprintStringFromFootprint:[(VSVoiceAsset *)self footprint]];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInstalled];
  contentVersion = [(VSAssetBase *)self contentVersion];
  masteredVersion = [(VSAssetBase *)self masteredVersion];
  downloadSize = [(VSAssetBase *)self downloadSize];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isBuiltInVoice];
  v12 = [v15 stringWithFormat:@"Type:%@, Name: %@, Languages: %@, Gender: %@, Footprint: %@, Installed: %@, ContentVersion: %@, MasteredVersion: %@, downloadSize: %@, isBuiltIn: %@", v3, name, v4, v5, v6, v7, contentVersion, masteredVersion, downloadSize, v11];

  return v12;
}

- (id)descriptiveKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSArray *)self->_languages componentsJoinedByString:@", "];
  v5 = [VSVoiceAsset typeStringFromType:[(VSVoiceAsset *)self type]];
  v6 = [VSVoiceAsset genderStringFromGender:[(VSVoiceAsset *)self gender]];
  nameKey = [(VSVoiceAsset *)self nameKey];
  v8 = [VSVoiceAsset footprintStringFromFootprint:[(VSVoiceAsset *)self footprint]];
  contentVersion = [(VSAssetBase *)self contentVersion];
  masteredVersion = [(VSAssetBase *)self masteredVersion];
  compatibilityVersion = [(VSAssetBase *)self compatibilityVersion];
  v12 = [v3 stringWithFormat:@"%@:%@:%@:%@:%@:CV%@:MV%@:Compatibility%@", v4, v5, v6, nameKey, v8, contentVersion, masteredVersion, compatibilityVersion];

  return v12;
}

- (id)voiceKey
{
  v3 = MEMORY[0x277CCACA8];
  firstObject = [(NSArray *)self->_languages firstObject];
  v5 = [VSVoiceAsset typeStringFromType:self->_type];
  v6 = [VSVoiceAsset genderStringFromGender:self->_gender];
  nameKey = [(VSVoiceAsset *)self nameKey];
  v8 = [VSVoiceAsset footprintStringFromFootprint:self->_footprint];
  contentVersion = [(VSAssetBase *)self contentVersion];
  v10 = [v3 stringWithFormat:@"%@:%@:%@:%@:%@:%@", firstObject, v5, v6, nameKey, v8, contentVersion];

  return v10;
}

- (id)nameKey
{
  name = self->_name;
  if (!name)
  {
    if (self->_isBuiltInVoice)
    {
      return @"builtin";
    }

    name = 0;
  }

  return name;
}

+ (int64_t)typeFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [@"vocalizer" lowercaseString];
  v5 = [lowercaseString isEqualToString:lowercaseString2];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    lowercaseString3 = [@"custom" lowercaseString];
    v8 = [lowercaseString isEqualToString:lowercaseString3];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      lowercaseString4 = [@"gryphon" lowercaseString];
      v10 = [lowercaseString isEqualToString:lowercaseString4];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        lowercaseString5 = [@"neural" lowercaseString];
        v12 = [lowercaseString isEqualToString:lowercaseString5];

        if (v12)
        {
          v6 = 4;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

+ (id)typeStringFromType:(int64_t)type
{
  if (type > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279E4F9F0[type];
  }
}

+ (int64_t)footprintFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [@"compact" lowercaseString];
  v5 = [lowercaseString isEqualToString:lowercaseString2];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    lowercaseString3 = [@"premium" lowercaseString];
    v8 = [lowercaseString isEqualToString:lowercaseString3];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      lowercaseString4 = [@"premiumhigh" lowercaseString];
      v10 = [lowercaseString isEqualToString:lowercaseString4];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        lowercaseString5 = [@"beta" lowercaseString];
        v12 = [lowercaseString isEqualToString:lowercaseString5];

        v6 = v12 << 63 >> 63;
      }
    }
  }

  return v6;
}

+ (id)footprintStringFromFootprint:(int64_t)footprint
{
  if ((footprint + 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279E4F9C8[footprint + 1];
  }
}

+ (int64_t)genderFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [@"male" lowercaseString];
  v5 = [lowercaseString isEqualToString:lowercaseString2];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    lowercaseString3 = [@"female" lowercaseString];
    v8 = [lowercaseString isEqualToString:lowercaseString3];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      lowercaseString4 = [@"neutral" lowercaseString];
      v10 = [lowercaseString isEqualToString:lowercaseString4];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

+ (id)genderStringFromGender:(int64_t)gender
{
  if (gender > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279E4F9A8[gender];
  }
}

@end