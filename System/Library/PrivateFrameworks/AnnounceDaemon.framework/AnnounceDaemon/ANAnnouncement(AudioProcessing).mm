@interface ANAnnouncement(AudioProcessing)
- (uint64_t)processAudioWithEffects:()AudioProcessing error:;
@end

@implementation ANAnnouncement(AudioProcessing)

- (uint64_t)processAudioWithEffects:()AudioProcessing error:
{
  v24 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA910]];

  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    dataItems = [self dataItems];
    v10 = [dataItems countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(dataItems);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 type] == 1 && (objc_msgSend(v14, "flags") & 1) != 0)
          {
            if (![v14 processAudioWithEffects:a3 error:a4])
            {
              v15 = 0;
              goto LABEL_20;
            }

            [v14 setFlags:{objc_msgSend(v14, "flags") & 0xFFFFFFFFFFFFFFFELL}];
          }
        }

        v11 = [dataItems countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    if (ANLogHandleAudioProcessing_once != -1)
    {
      [ANAnnouncement(AudioProcessing) processAudioWithEffects:error:];
    }

    dataItems = ANLogHandleAudioProcessing_logger;
    if (os_log_type_enabled(dataItems, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, dataItems, OS_LOG_TYPE_DEFAULT, "%@Audio Normalization is Disabled", buf, 0xCu);
    }
  }

  v15 = 1;
LABEL_20:

  return v15;
}

@end