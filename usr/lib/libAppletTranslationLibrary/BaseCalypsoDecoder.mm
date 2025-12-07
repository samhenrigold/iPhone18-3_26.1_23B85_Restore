@interface BaseCalypsoDecoder
+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
+ (id)getAppletStateAndHistory:(id)history withError:(id *)error;
+ (id)getServiceProviderData:(id)data withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPublicKey:(id)key withEncryptionScheme:(id)scheme withError:(id *)error;
+ (void)interpretTransactionEvent:(id)event;
- (id)generateEndEventFromHCI;
@end

@implementation BaseCalypsoDecoder

+ (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support GetState (YET)", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support GetState (YET)"];
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

+ (id)getAppletStateAndHistory:(id)history withError:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = ATLLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support GetState (YET)", v17, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support GetState (YET)"];
  v7 = v6;
  if (error)
  {
    v8 = *error;
    v9 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v10 = *MEMORY[0x277CCA7E8];
      v18[0] = *MEMORY[0x277CCA450];
      v18[1] = v10;
      v19[0] = v6;
      v19[1] = v8;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v19;
      v13 = v18;
      v14 = 2;
    }

    else
    {
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v6;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v21;
      v13 = &v20;
      v14 = 1;
    }

    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
    *error = [v9 errorWithDomain:@"ATL" code:2 userInfo:v15];
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
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support getServiceProviderData (YET)", v21, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support getServiceProviderData (YET)"];
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
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Calypso Base Decoder doesn't support getServiceProviderData (YET)", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso Base Decoder doesn't support getServiceProviderData (YET)"];
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

- (id)generateEndEventFromHCI
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  v3 = +[CalypsoDecoder sharedInstance];
  getHciArray = [v3 getHciArray];

  v5 = +[CalypsoDecoder sharedInstance];
  getHciArray2 = [v5 getHciArray];
  if (!getHciArray2)
  {

    goto LABEL_26;
  }

  v7 = getHciArray2;
  v8 = +[CalypsoDecoder sharedInstance];
  getHciArray3 = [v8 getHciArray];
  v10 = [getHciArray3 count];

  if (!v10)
  {
LABEL_26:
    v33 = ATLLogObject(v11);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    v43 = 0;
    goto LABEL_29;
  }

  v12 = +[CalypsoDecoder sharedInstance];
  getAppletAID = [v12 getAppletAID];

  if (getAppletAID)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = getHciArray;
    v14 = getHciArray;
    v15 = [v14 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v47;
      do
      {
        v18 = 0;
        do
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v46 + 1) + 8 * v18);
          v20 = ATLLogObject(v15);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57 = v19;
            _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
          }

          ++v18;
        }

        while (v16 != v18);
        v15 = [v14 countByEnumeratingWithState:&v46 objects:v58 count:16];
        v16 = v15;
      }

      while (v15);
    }

    v21 = +[CalypsoDecoder sharedInstance];
    if ([v21 getErrorTransaction])
    {
      v22 = 0;
    }

    else
    {
      v22 = 64;
    }

    v23 = +[CalypsoDecoder sharedInstance];
    getErrorTransaction = [v23 getErrorTransaction];

    if (getErrorTransaction)
    {
      v26 = ATLLogObject(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = +[CalypsoDecoder sharedInstance];
        getErrorCode = [v27 getErrorCode];
        *buf = 138412290;
        v57 = getErrorCode;
        _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
      }
    }

    v29 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw = [v29 getTransactionDetailRaw];

    if (!getTransactionDetailRaw)
    {
      v31 = +[CalypsoDecoder sharedInstance];
      v32 = [MEMORY[0x277CBEA90] dataWithHexString:@"020000"];
      [v31 setTransactionDetailRaw:v32];
    }

    v55[0] = @"EndEvent";
    v54[0] = @"EventType";
    v54[1] = @"appletIdentifier";
    v33 = +[CalypsoDecoder sharedInstance];
    getAppletAID2 = [v33 getAppletAID];
    v55[1] = getAppletAID2;
    v55[2] = &unk_2843C6770;
    v54[2] = @"Version";
    v54[3] = @"Interface";
    v55[3] = @"Contactless";
    v54[4] = @"didError";
    v35 = MEMORY[0x277CCABB0];
    v36 = +[CalypsoDecoder sharedInstance];
    v37 = [v35 numberWithBool:{objc_msgSend(v36, "getErrorTransaction")}];
    v55[4] = v37;
    v54[5] = @"result";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
    v55[5] = v38;
    v55[6] = &unk_2843C6788;
    v54[6] = @"type";
    v54[7] = @"parsedInfo";
    v52 = @"Transaction";
    v50 = @"TypeDetailRaw";
    v39 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw2 = [v39 getTransactionDetailRaw];
    v51 = getTransactionDetailRaw2;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v53 = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v55[7] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:8];

    getHciArray = v45;
LABEL_29:

    goto LABEL_30;
  }

  v43 = 0;
LABEL_30:

  return v43;
}

+ (void)interpretTransactionEvent:(id)event
{
  v3 = ATLLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEFAULT, "BaseCalypsoDecoder doesn't implement specific interpretTransactionEvent", v4, 2u);
  }
}

+ (id)getServiceProviderData:(id)data withError:(id *)error
{
  v4 = ATLLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "BaseCalypsoDecoder doesn't support getServiceProviderData via context (implemented in specific subDecoders)", v6, 2u);
  }

  return 0;
}

+ (id)getServiceProviderData:(id)data withPublicKey:(id)key withEncryptionScheme:(id)scheme withError:(id *)error
{
  v6 = ATLLogObject(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "BaseCalypsoDecoder doesn't support getServiceProviderData via context (implemented in specific subDecoders)", v8, 2u);
  }

  return 0;
}

@end