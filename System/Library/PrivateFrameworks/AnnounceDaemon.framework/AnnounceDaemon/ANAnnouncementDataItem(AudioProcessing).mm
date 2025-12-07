@interface ANAnnouncementDataItem(AudioProcessing)
- (BOOL)processAudioWithEffects:()AudioProcessing error:;
@end

@implementation ANAnnouncementDataItem(AudioProcessing)

- (BOOL)processAudioWithEffects:()AudioProcessing error:
{
  v53 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if ([self type] == 1)
    {
      data = [self data];

      if (data)
      {
        v8 = MEMORY[0x277CEAB98];
        data2 = [self data];
        v10 = *MEMORY[0x277CEA9D8];
        v11 = objc_opt_new();
        uUIDString = [v11 UUIDString];
        v13 = [v8 createTemporaryFileWithData:data2 extension:v10 directory:uUIDString];

        if (v13)
        {
          v14 = MEMORY[0x277CEAB98];
          v15 = objc_opt_new();
          uUIDString2 = [v15 UUIDString];
          v17 = [v14 createTemporaryURLWithFileExtension:v10 directory:uUIDString2];

          if (!v17)
          {
            if (a4)
            {
              [MEMORY[0x277CCA9B8] an_errorWithCode:1041 component:*MEMORY[0x277CEA9A8]];
              *a4 = v31 = 0;
            }

            else
            {
              v31 = 0;
            }

LABEL_44:

            return v31;
          }

          v19 = ANLogHandleAnnouncementDataItem_AudioProcessing(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = MEMORY[0x277CCABB0];
            [v13 audioDuration];
            [v20 numberWithDouble:?];
            v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v47 = 138412802;
            v48 = &stru_2851BDB18;
            v49 = 2112;
            v50 = v13;
            v51 = 2112;
            v52 = v21;
            _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Process Audio Input File: %@, Duration: %@", &v47, 0x20u);
          }

          v22 = [MEMORY[0x277CEABC0] process:v13 to:v17 withOptions:a3 error:a4];
          v23 = v22;
          v24 = ANLogHandleAnnouncementDataItem_AudioProcessing(v22);
          v25 = v24;
          if (v23)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v47 = 138412290;
              v48 = &stru_2851BDB18;
              _os_log_impl(&dword_23F525000, v25, OS_LOG_TYPE_DEFAULT, "%@Audio Processed Succesfully", &v47, 0xCu);
            }

            audioDuration = [v17 audioDuration];
            v28 = v27;
            v29 = ANLogHandleAnnouncementDataItem_AudioProcessing(audioDuration);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v47 = 138412802;
              v48 = &stru_2851BDB18;
              v49 = 2112;
              v50 = v17;
              v51 = 2048;
              v52 = v28;
              _os_log_impl(&dword_23F525000, v29, OS_LOG_TYPE_DEFAULT, "%@Process Audio Output File: %@, Duration = %f seconds", &v47, 0x20u);
            }

            if (v28 > 0.0)
            {
              v30 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v17 options:2 error:a4];
              v31 = v30 != 0;
              if (v30)
              {
                [self setData:v30];
              }

              else
              {
                v42 = ANLogHandleAnnouncementDataItem_AudioProcessing(0);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = *a4;
                  v47 = 138412802;
                  v48 = &stru_2851BDB18;
                  v49 = 2112;
                  v50 = v17;
                  v51 = 2112;
                  v52 = v43;
                  _os_log_impl(&dword_23F525000, v42, OS_LOG_TYPE_ERROR, "%@Failed to load data from file: URL = %@, Error = %@", &v47, 0x20u);
                }
              }

              goto LABEL_42;
            }

            mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
            v39 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA978]];

            if (v39)
            {
              v41 = ANLogHandleAnnouncementDataItem_AudioProcessing(v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v47 = 138412290;
                v48 = &stru_2851BDB18;
                _os_log_impl(&dword_23F525000, v41, OS_LOG_TYPE_ERROR, "%@Processed audio file is empty. Using original file.", &v47, 0xCu);
              }

              v31 = 1;
              goto LABEL_42;
            }

            if (a4)
            {
              [MEMORY[0x277CCA9B8] an_errorWithCode:1044 component:*MEMORY[0x277CEA9A8]];
              *a4 = v31 = 0;
LABEL_42:
              mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
              v45 = [mEMORY[0x277CEAB80]2 BOOLForDefault:*MEMORY[0x277CEA908]];

              if ((v45 & 1) == 0)
              {
                [MEMORY[0x277CEAB98] removeItem:v13];
                [MEMORY[0x277CEAB98] removeItem:v17];
              }

              goto LABEL_44;
            }
          }

          else
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v36 = *a4;
              v47 = 138412546;
              v48 = &stru_2851BDB18;
              v49 = 2112;
              v50 = v36;
              _os_log_impl(&dword_23F525000, v25, OS_LOG_TYPE_ERROR, "%@Failed to process audio data. Error = %@", &v47, 0x16u);
            }

            v37 = +[ANAnalytics shared];
            [v37 error:5019];
          }

          v31 = 0;
          goto LABEL_42;
        }
      }

      if (a4)
      {
        v33 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CEA9A8];
        v35 = 5016;
        goto LABEL_23;
      }
    }

    else if (a4)
    {
      v33 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CEA9A8];
      v35 = 1042;
LABEL_23:
      [v33 an_errorWithCode:v35 component:v34];
      *a4 = v31 = 0;
      return v31;
    }

    return 0;
  }

  v32 = ANLogHandleAnnouncementDataItem_AudioProcessing(self);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 138412290;
    v48 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_DEFAULT, "%@No effects set. Skipping Audio Processing.", &v47, 0xCu);
  }

  return 1;
}

@end