@interface DCCryptoUtilities
+ (id)identityCertificateOptions;
@end

@implementation DCCryptoUtilities

+ (id)identityCertificateOptions
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = +[DCCryptoUtilities generateTTL];
  if (DCInternalLogSystem_onceToken_2 != -1)
  {
    +[DCCryptoUtilities identityCertificateOptions];
  }

  v3 = DCInternalLogSystem_log_2;
  if (os_log_type_enabled(DCInternalLogSystem_log_2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 0;
    v5 = 0;
    v6 = 47;
    do
    {
      v7 = &aLibraryCachesC_2[v4];
      if (v6 == 47)
      {
        v5 = &aLibraryCachesC_2[v4];
      }

      v6 = v7[1];
      if (!v7[1])
      {
        break;
      }
    }

    while (v4++ < 0xFFF);
    if (v5)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCryptoUtilities.m";
    }

    *buf = 136316162;
    v25 = v9;
    v26 = 1024;
    v27 = 35;
    v28 = 1024;
    v29 = 262080;
    v30 = 1024;
    v31 = v2;
    v32 = 1024;
    v33 = 525600;
    _os_log_impl(&dword_2488FB000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to generate certificate data. { minTtl=%dh, validity=%dh, maxTtl=%dh }", buf, 0x24u);
  }

  v10 = MEMORY[0x277CBEB38];
  v22[0] = *MEMORY[0x277D04950];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v2];
  v12 = *MEMORY[0x277D04948];
  v23[0] = v11;
  v23[1] = MEMORY[0x277CBEC28];
  v13 = *MEMORY[0x277D048E0];
  v22[1] = v12;
  v22[2] = v13;
  v14 = *MEMORY[0x277D048D8];
  v23[2] = @"2bit-identity";
  v23[3] = @"2bit-identity";
  v15 = *MEMORY[0x277D048D0];
  v22[3] = v14;
  v22[4] = v15;
  v23[4] = MEMORY[0x277CBEC28];
  v22[5] = *MEMORY[0x277D04928];
  v21 = *MEMORY[0x277D04930];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v23[5] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v18 = [v10 dictionaryWithDictionary:v17];

  if (os_variant_allows_internal_security_policies())
  {
    v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if ([v19 BOOLForKey:@"DCIgnoreExistingKeychainItems"])
    {
      [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v15];
    }
  }

  if ((MEMORY[0x24C1DCA40]() & 1) == 0)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
  }

  [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D04940]];

  return v18;
}

@end