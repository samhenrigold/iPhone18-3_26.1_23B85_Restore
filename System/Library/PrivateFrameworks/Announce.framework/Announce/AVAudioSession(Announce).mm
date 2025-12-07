@interface AVAudioSession(Announce)
+ (id)an_mode;
+ (uint64_t)an_categoryOptions;
- (uint64_t)an_configureForEndpointWithError:()Announce;
- (uint64_t)an_configureWithError:()Announce;
@end

@implementation AVAudioSession(Announce)

+ (id)an_mode
{
  v0 = +[ANAnnounceFeatureStatus isVoiceMessagesPlaybackEnabled];
  v1 = MEMORY[0x277CB80E8];
  if (!v0)
  {
    v1 = MEMORY[0x277CB80A8];
  }

  v2 = *v1;

  return v2;
}

+ (uint64_t)an_categoryOptions
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  an_isSoftwareVolumeEnabled = [mEMORY[0x277D26E58] an_isSoftwareVolumeEnabled];

  v3 = ANLogHandleAudioSession(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = &stru_2836DAA20;
    v12 = 1024;
    v13 = an_isSoftwareVolumeEnabled;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "%@Software Volume Enabled: %d", &v10, 0x12u);
  }

  if (an_isSoftwareVolumeEnabled)
  {
    v4 = 59;
  }

  else if (+[ANDevice isAudioAccessory])
  {
    v4 = 59;
  }

  else
  {
    v4 = 40;
  }

  mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  an_isCarPlayConnected = [mEMORY[0x277D26E58]2 an_isCarPlayConnected];

  v8 = ANLogHandleAudioSession(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = &stru_2836DAA20;
    v12 = 1024;
    v13 = an_isCarPlayConnected;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@CarPlay Connected: %d", &v10, 0x12u);
  }

  if (an_isCarPlayConnected)
  {
    return 40;
  }

  else
  {
    return v4;
  }
}

- (uint64_t)an_configureWithError:()Announce
{
  v20 = *MEMORY[0x277D85DE8];
  an_category = [MEMORY[0x277CB83F8] an_category];
  an_mode = [MEMORY[0x277CB83F8] an_mode];
  an_categoryOptions = [MEMORY[0x277CB83F8] an_categoryOptions];
  v8 = ANLogHandleAudioSession(an_categoryOptions);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:an_categoryOptions];
    v12 = 138413058;
    v13 = &stru_2836DAA20;
    v14 = 2112;
    v15 = an_category;
    v16 = 2112;
    v17 = an_mode;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Category: %@, Mode: %@, Options: %@", &v12, 0x2Au);
  }

  v10 = [self setCategory:an_category mode:an_mode options:an_categoryOptions error:a3];
  return v10;
}

- (uint64_t)an_configureForEndpointWithError:()Announce
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CB8030];
  an_mode = [MEMORY[0x277CB83F8] an_mode];
  v7 = ANLogHandleAudioSession(an_mode);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:19];
    v11 = 138413058;
    v12 = &stru_2836DAA20;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = an_mode;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "%@Category: %@, Mode: %@, Options: %@", &v11, 0x2Au);
  }

  v9 = [self setCategory:v5 mode:an_mode options:19 error:a3];
  return v9;
}

@end