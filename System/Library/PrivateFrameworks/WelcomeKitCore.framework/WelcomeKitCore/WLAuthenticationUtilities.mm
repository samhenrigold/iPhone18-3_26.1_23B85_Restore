@interface WLAuthenticationUtilities
+ (id)dataFromPEMFormattedData:(id)data;
+ (id)hashWithString:(id)string;
+ (id)pemFormattedCertificateData:(id)data;
+ (void)_appendBase64Data:(id)data toString:(id)string;
+ (void)generateSelfSignedCertificateWithOrganization:(id)organization commonName:(id)name completion:(id)completion;
@end

@implementation WLAuthenticationUtilities

+ (id)hashWithString:(id)string
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [string dataUsingEncoding:4];
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  string = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != 20; ++i)
  {
    [string appendFormat:@"%02x", md[i]];
  }

  v6 = [string copy];

  return v6;
}

+ (void)generateSelfSignedCertificateWithOrganization:(id)organization commonName:(id)name completion:(id)completion
{
  values[2] = *MEMORY[0x277D85DE8];
  organizationCopy = organization;
  nameCopy = name;
  completionCopy = completion;
  v10 = MEMORY[0x277CBEAC0];
  v11 = *MEMORY[0x277CDC060];
  v12 = *MEMORY[0x277CDC028];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:2048];
  v14 = [v10 dictionaryWithObjectsAndKeys:{v11, v12, v13, *MEMORY[0x277CDC018], 0}];

  RandomKey = SecKeyCreateRandomKey(v14, 0);
  v16 = SecKeyCopyPublicKey(RandomKey);
  values[0] = *MEMORY[0x277CDC458];
  values[1] = organizationCopy;
  v26[0] = *MEMORY[0x277CDC448];
  v26[1] = nameCopy;
  v17 = *MEMORY[0x277CBECE8];
  v23 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, 0);
  v22 = CFArrayCreate(v17, v26, 2, 0);
  cf = CFArrayCreate(v17, &v23, 1, 0);
  v25 = CFArrayCreate(v17, &v22, 1, 0);
  v18 = CFArrayCreate(v17, &cf, 2, 0);
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:127];
  [v19 setObject:v20 forKey:*MEMORY[0x277CDC210]];

  [v19 setObject:*MEMORY[0x277CDC1C0] forKey:*MEMORY[0x277CDC1E0]];
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, SelfSignedCertificate, v16, RandomKey);
  }
}

+ (id)pemFormattedCertificateData:(id)data
{
  v4 = MEMORY[0x277CCAB68];
  dataCopy = data;
  string = [v4 string];
  [string appendString:@"-----BEGIN CERTIFICATE-----\n"];
  [self _appendBase64Data:dataCopy toString:string];

  [string appendString:@"\n-----END CERTIFICATE-----\n"];
  v7 = [string dataUsingEncoding:4];

  return v7;
}

+ (void)_appendBase64Data:(id)data toString:(id)string
{
  stringCopy = string;
  v6 = [data base64EncodedStringWithOptions:33];
  [stringCopy appendString:v6];
}

+ (id)dataFromPEMFormattedData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  v5 = [v4 componentsSeparatedByString:@"\n"];
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(dataCopy, "length")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 hasPrefix:{@"-----", v15}] & 1) == 0)
        {
          [v6 appendString:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:1];

  return v13;
}

@end