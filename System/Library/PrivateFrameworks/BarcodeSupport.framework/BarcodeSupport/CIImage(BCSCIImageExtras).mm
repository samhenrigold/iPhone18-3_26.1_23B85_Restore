@interface CIImage(BCSCIImageExtras)
- (id)_bcs_stringValueIfQRCode;
@end

@implementation CIImage(BCSCIImageExtras)

- (id)_bcs_stringValueIfQRCode
{
  v24[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBF748];
  v3 = *MEMORY[0x277CBF718];
  v4 = *MEMORY[0x277CBF6E0];
  v5 = *MEMORY[0x277CBF6F0];
  v23[0] = *MEMORY[0x277CBF6D8];
  v23[1] = v5;
  v24[0] = v4;
  v24[1] = &unk_28539D428;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v7 = [v2 detectorOfType:v3 context:0 options:v6];

  v8 = [v7 featuresInImage:self];
  if ([v8 count] == 1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            messageString = [v14 messageString];

            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSCIImageExtras: image has multiple QR codes", buf, 2u);
  }

  messageString = 0;
LABEL_15:

  return messageString;
}

@end