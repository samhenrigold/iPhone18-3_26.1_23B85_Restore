@interface HMDSupportedAudioStreamConfiguration
- (BOOL)_parseFromTLVData;
- (HMDSupportedAudioStreamConfiguration)initWithCoder:(id)coder;
- (HMDSupportedAudioStreamConfiguration)initWithComfortNoise:(id)noise CodecConfigurations:(id)configurations;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSupportedAudioStreamConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codecConfigurations = [(HMDSupportedAudioStreamConfiguration *)self codecConfigurations];
  [coderCopy encodeObject:codecConfigurations forKey:@"kSupportedAudioStreamConfiguration_AudioCodecConfigurations"];

  supportsComfortNoise = [(HMDSupportedAudioStreamConfiguration *)self supportsComfortNoise];
  [coderCopy encodeObject:supportsComfortNoise forKey:@"kSupportedAudioStreamConfiguration_ComfortNoise"];
}

- (HMDSupportedAudioStreamConfiguration)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HMDSupportedAudioStreamConfiguration;
  v5 = [(HMDSupportedAudioStreamConfiguration *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSupportedAudioStreamConfiguration_AudioCodecConfigurations"];
    codecConfigurations = v5->_codecConfigurations;
    v5->_codecConfigurations = v9;

    v11 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kSupportedAudioStreamConfiguration_ComfortNoise"];
    supportsComfortNoise = v5->_supportsComfortNoise;
    v5->_supportsComfortNoise = v14;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  codecConfigurations = [(HMDSupportedAudioStreamConfiguration *)self codecConfigurations];
  allValues = [codecConfigurations allValues];
  v11 = arrayToString(allValues, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ configurations = %@ ", indentCopy, v11];

  tlvDatablob2 = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ comfortNoise = %@ ", indentCopy, tlvDatablob2];
}

- (NSData)tlvData
{
  v19 = *MEMORY[0x277D85DE8];
  creator = [MEMORY[0x277CFEC80] creator];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  codecConfigurations = [(HMDSupportedAudioStreamConfiguration *)self codecConfigurations];
  allValues = [codecConfigurations allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        tlvData = [*(*(&v14 + 1) + 8 * i) tlvData];
        [creator addTLV:1 data:tlvData];
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  supportsComfortNoise = [(HMDSupportedAudioStreamConfiguration *)self supportsComfortNoise];
  [creator addTLV:2 number:supportsComfortNoise];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kSupportedAudioStreamConfiguration_AudioCodecConfigurations" objectCreator:&__block_literal_global_491];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kSupportedAudioStreamConfiguration_ComfortNoise"];
  v30[0] = v3;
  v30[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];
  v7 = v6;
  if (v6)
  {
    v23 = v5;
    v24 = v6;
    v8 = MEMORY[0x277CBEB38];
    field = [v3 field];
    v10 = [v8 dictionaryWithCapacity:{objc_msgSend(field, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    field2 = [v3 field];
    v12 = [field2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(field2);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          codecGroup = [v16 codecGroup];
          [v10 setObject:v16 forKeyedSubscript:codecGroup];
        }

        v13 = [field2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v18 = objc_msgSend_copy(v10);
    codecConfigurations = self->_codecConfigurations;
    self->_codecConfigurations = v18;

    field3 = [v4 field];
    supportsComfortNoise = self->_supportsComfortNoise;
    self->_supportsComfortNoise = field3;

    v7 = v24;
    v5 = v23;
  }

  return v7;
}

HMDAudioCodecConfiguration *__57__HMDSupportedAudioStreamConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HAPTLVBase *)[HMDAudioCodecConfiguration alloc] initWithTLVData:v2];

  return v3;
}

- (HMDSupportedAudioStreamConfiguration)initWithComfortNoise:(id)noise CodecConfigurations:(id)configurations
{
  noiseCopy = noise;
  configurationsCopy = configurations;
  v14.receiver = self;
  v14.super_class = HMDSupportedAudioStreamConfiguration;
  v9 = [(HMDSupportedAudioStreamConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_supportsComfortNoise, noise);
    v11 = objc_msgSend_copy(configurationsCopy);
    codecConfigurations = v10->_codecConfigurations;
    v10->_codecConfigurations = v11;
  }

  return v10;
}

@end