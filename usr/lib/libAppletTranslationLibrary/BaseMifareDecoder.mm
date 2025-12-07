@interface BaseMifareDecoder
+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result;
+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
+ (id)getServiceProvider:(unsigned __int8)provider;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
@end

@implementation BaseMifareDecoder

+ (id)getServiceProvider:(unsigned __int8)provider
{
  if (provider - 48) < 7 && ((0x59u >> (provider - 48)))
  {
    provider = *(&off_2788752A8 + (provider - 48));
  }

  else
  {
    provider = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", provider];
  }

  return provider;
}

+ (BOOL)didTransactionError:(id *)error withTransactionResult:(unsigned __int16 *)result
{
  v6 = *(&error->var7 + 1) == 18 && error->var8[1] == 1 || *(&error->var7 + 1) == 19 && error->var8[1] == 238;
  v7 = *&error->var4[31] == 0x4000 && v6;
  if (result)
  {
    if (*&error->var4[31] == 0x4000 && v6)
    {
      v8 = 64;
    }

    else
    {
      v8 = 0;
    }

    if (HIBYTE(error->var7) == 15)
    {
      v9 = -4096;
    }

    else
    {
      v9 = v8;
    }

    *result = v9;
  }

  return !v7;
}

+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "MIFARE Decoder doesn't support GetState", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Decoder doesn't support GetState"];
  v10 = v9;
  if (error)
  {
    v11 = *error;
    v12 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v21[0] = *MEMORY[0x277CCA450];
      v21[1] = v13;
      v22[0] = v9;
      v22[1] = v11;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v22;
      v16 = v21;
      v17 = 2;
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v24[0] = v9;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v24;
      v16 = &v23;
      v17 = 1;
    }

    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
    *error = [v12 errorWithDomain:@"ATL" code:2 userInfo:v18];
  }

  return 0;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = ATLLogObject(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "MIFARE Decoder doesn't support getServiceProviderData", v21, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Decoder doesn't support getServiceProviderData"];
  v11 = v10;
  if (error)
  {
    v12 = *error;
    v13 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v22[0] = *MEMORY[0x277CCA450];
      v22[1] = v14;
      v23[0] = v10;
      v23[1] = v12;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v23;
      v17 = v22;
      v18 = 2;
    }

    else
    {
      v24 = *MEMORY[0x277CCA450];
      v25[0] = v10;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v25;
      v17 = &v24;
      v18 = 1;
    }

    v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    *error = [v13 errorWithDomain:@"ATL" code:2 userInfo:v19];
  }

  return 0;
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "MIFARE Decoder doesn't support getServiceProviderData", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Decoder doesn't support getServiceProviderData"];
  v10 = v9;
  if (error)
  {
    v11 = *error;
    v12 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v21[0] = *MEMORY[0x277CCA450];
      v21[1] = v13;
      v22[0] = v9;
      v22[1] = v11;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v22;
      v16 = v21;
      v17 = 2;
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v24[0] = v9;
      v14 = MEMORY[0x277CBEAC0];
      v15 = v24;
      v16 = &v23;
      v17 = 1;
    }

    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
    *error = [v12 errorWithDomain:@"ATL" code:2 userInfo:v18];
  }

  return 0;
}

@end