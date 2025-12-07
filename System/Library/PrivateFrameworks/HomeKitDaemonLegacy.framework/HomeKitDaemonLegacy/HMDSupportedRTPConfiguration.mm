@interface HMDSupportedRTPConfiguration
- (BOOL)_parseFromTLVData;
- (HMDSupportedRTPConfiguration)initWithCoder:(id)coder;
- (HMDSupportedRTPConfiguration)initWithCryptoSuites:(id)suites;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSupportedRTPConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  srtpCryptoSuites = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  [coderCopy encodeObject:srtpCryptoSuites forKey:@"kSupportedRTPParameters__SRTPCryptoSuite"];
}

- (HMDSupportedRTPConfiguration)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HMDSupportedRTPConfiguration;
  v5 = [(HMDSupportedRTPConfiguration *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSupportedRTPParameters__SRTPCryptoSuite"];
    srtpCryptoSuites = v5->_srtpCryptoSuites;
    v5->_srtpCryptoSuites = v9;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  srtpCryptoSuites = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  v9 = arrayToString(srtpCryptoSuites, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ srtpCryptoSuites = %@ ", indentCopy, v9];
}

- (NSData)tlvData
{
  v17 = *MEMORY[0x277D85DE8];
  creator = [MEMORY[0x277CFEC80] creator];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  srtpCryptoSuites = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  v5 = [srtpCryptoSuites countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(srtpCryptoSuites);
        }

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "srtpCryptoSuite")}];
        [creator addTLV:2 number:v9];
      }

      v6 = [srtpCryptoSuites countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kSupportedRTPParameters__SRTPCryptoSuite" objectCreator:&__block_literal_global_529];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];
  if (v5)
  {
    field = [v3 field];
    srtpCryptoSuites = self->_srtpCryptoSuites;
    self->_srtpCryptoSuites = field;
  }

  return v5;
}

HMDSRTPCryptoSuite *__49__HMDSupportedRTPConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDSRTPCryptoSuite alloc] initWithTLVData:v2];

  return v3;
}

- (HMDSupportedRTPConfiguration)initWithCryptoSuites:(id)suites
{
  suitesCopy = suites;
  v9.receiver = self;
  v9.super_class = HMDSupportedRTPConfiguration;
  v5 = [(HMDSupportedRTPConfiguration *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(suitesCopy);
    srtpCryptoSuites = v5->_srtpCryptoSuites;
    v5->_srtpCryptoSuites = v6;
  }

  return v5;
}

@end