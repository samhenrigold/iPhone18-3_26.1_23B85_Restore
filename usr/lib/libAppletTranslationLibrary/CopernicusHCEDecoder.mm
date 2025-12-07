@interface CopernicusHCEDecoder
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation CopernicusHCEDecoder

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"Supported";
  v10[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:{1, transceiver, error}];

  return v7;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "HCE has no history", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"HCE has no history"];
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
    *error = [v12 errorWithDomain:@"ATL" code:7 userInfo:v18];
  }

  return 0;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "HCE has no EOT", v20, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"HCE has no EOT"];
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
    *error = [v12 errorWithDomain:@"ATL" code:7 userInfo:v18];
  }

  return 0;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v12 = [eventCopy length];
  if (v12 > 1)
  {
    v23 = MEMORY[0x277CBEB38];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"EndEvent";
    v29[1] = appletCopy;
    v28[2] = @"didError";
    v28[3] = @"command";
    v29[2] = MEMORY[0x277CBEC38];
    v29[3] = &unk_2843C7190;
    v28[4] = @"status";
    v28[5] = @"result";
    v29[4] = &unk_2843C7190;
    v29[5] = &unk_2843C71A8;
    v28[6] = @"informative";
    v29[6] = &unk_2843C7190;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:7];
    error = [v23 dictionaryWithDictionary:v24];

    if ([eventCopy length] < 4)
    {
      goto LABEL_12;
    }

    bytes = [eventCopy bytes];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 2)) >> 16];
    [error setObject:v15 forKeyedSubscript:@"PairingModeBrandCode"];
  }

  else
  {
    v13 = ATLLogObject(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v35 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Bad length %u", buf, 8u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Bad length %u", objc_msgSend(eventCopy, "length")];
    v15 = v14;
    if (error)
    {
      v16 = *error;
      v17 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v18 = *MEMORY[0x277CCA7E8];
        v30[0] = *MEMORY[0x277CCA450];
        v30[1] = v18;
        v31[0] = v14;
        v31[1] = v16;
        v19 = MEMORY[0x277CBEAC0];
        v20 = v31;
        v21 = v30;
        v22 = 2;
      }

      else
      {
        v32 = *MEMORY[0x277CCA450];
        v33 = v14;
        v19 = MEMORY[0x277CBEAC0];
        v20 = &v33;
        v21 = &v32;
        v22 = 1;
      }

      v26 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
      *error = [v17 errorWithDomain:@"ATL" code:3 userInfo:v26];

      error = 0;
    }
  }

LABEL_12:

  return error;
}

@end