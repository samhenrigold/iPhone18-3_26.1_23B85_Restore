@interface UARPDyanamicAssetLogManager
- (BOOL)newLog:(id)log error:(id *)error;
- (UARPDyanamicAssetLogManager)init;
- (UARPDyanamicAssetLogManager)initWithBaseURL:(id)l;
@end

@implementation UARPDyanamicAssetLogManager

- (UARPDyanamicAssetLogManager)init
{
  [(UARPDyanamicAssetLogManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDyanamicAssetLogManager)initWithBaseURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = UARPDyanamicAssetLogManager;
  v5 = [(UARPDyanamicAssetLogManager *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    baseURL = v5->_baseURL;
    v5->_baseURL = v6;
  }

  return v5;
}

- (BOOL)newLog:(id)log error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  logCopy = log;
  if (self->_baseURL)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v8 = objc_alloc(MEMORY[0x277CBEA80]);
    v51 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    [v51 components:252 fromDate:date];
    v50 = v53 = error;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.04d-%.02d-%.02d-%.02d%.02d%.02d", objc_msgSend(v50, "year"), objc_msgSend(v50, "month"), objc_msgSend(v50, "day"), objc_msgSend(v50, "hour"), objc_msgSend(v50, "minute"), objc_msgSend(v50, "second")];
    v10 = [[UARPSuperBinaryAsset alloc] initWithURL:logCopy];
    if ([(UARPSuperBinaryAsset *)v10 expandHeadersAndTLVs:v53])
    {
      v42 = date;
      v52 = logCopy;
      tlvs = [(UARPSuperBinaryAsset *)v10 tlvs];
      v12 = [UARPSuperBinaryAssetTLV findTLVWithType:272691969 tlvs:tlvs];

      v41 = v12;
      if (v12)
      {
        valueAsString = [v12 valueAsString];
      }

      else
      {
        valueAsString = @"UnknownAppleModelNumber";
      }

      tlvs2 = [(UARPSuperBinaryAsset *)v10 tlvs];
      v15 = [UARPSuperBinaryAssetTLV findTLVWithType:272691970 tlvs:tlvs2];

      v40 = v15;
      if (v15)
      {
        valueAsString2 = [v15 valueAsString];
      }

      else
      {
        valueAsString2 = @"UnknownSerialNumber";
      }

      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:valueAsString isDirectory:1 relativeToURL:self->_baseURL];
      v39 = valueAsString2;
      if (v17)
      {
        v38 = v17;
        v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:valueAsString2 isDirectory:1 relativeToURL:v17];
        if (v18 && ([MEMORY[0x277CCAA00] defaultManager], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v18, 1, 0, v53), v19, v20))
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = [(UARPSuperBinaryAsset *)v10 payloads];
          v49 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
          if (v49)
          {
            v45 = *v55;
            v46 = v18;
            v47 = v10;
            v48 = v9;
            while (2)
            {
              for (i = 0; i != v49; ++i)
              {
                if (*v55 != v45)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v54 + 1) + 8 * i);
                v23 = MEMORY[0x277CCACA8];
                payloadTag = [v22 payloadTag];
                char1 = [payloadTag char1];
                payloadTag2 = [v22 payloadTag];
                char2 = [payloadTag2 char2];
                payloadTag3 = [v22 payloadTag];
                char3 = [payloadTag3 char3];
                payloadTag4 = [v22 payloadTag];
                v37 = char1;
                v9 = v48;
                v31 = [v23 stringWithFormat:@"%@-%c%c%c%c.uarplog", v48, v37, char2, char3, objc_msgSend(payloadTag4, "char4")];

                rangePayload = [v22 rangePayload];
                v34 = v33;
                v35 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v52 error:v53];
                v18 = v46;
                LODWORD(rangePayload) = [v22 expandPayloadToURL:v46 payloadFilename:v31 superbinary:v35 offset:rangePayload length:v34 error:v53];

                if (!rangePayload)
                {
                  v13 = 0;
                  date = v42;
                  v10 = v47;
                  goto LABEL_27;
                }

                v10 = v47;
              }

              v49 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
              if (v49)
              {
                continue;
              }

              break;
            }

            v13 = 1;
            date = v42;
          }

          else
          {
            v13 = 1;
          }

LABEL_27:
        }

        else
        {
          v13 = 0;
        }

        logCopy = v52;

        v17 = v38;
      }

      else
      {
        v13 = 0;
        logCopy = v52;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end