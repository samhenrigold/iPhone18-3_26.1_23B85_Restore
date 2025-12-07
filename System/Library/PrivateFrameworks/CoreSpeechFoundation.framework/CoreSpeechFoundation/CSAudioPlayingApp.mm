@interface CSAudioPlayingApp
- (CSAudioPlayingApp)initWithPid:(int)pid;
@end

@implementation CSAudioPlayingApp

- (CSAudioPlayingApp)initWithPid:(int)pid
{
  v3 = *&pid;
  v45 = *MEMORY[0x1E69E9840];
  if (!+[CSUtils isDarwinOS])
  {
    v36.receiver = self;
    v36.super_class = CSAudioPlayingApp;
    self = [(CSAudioPlayingApp *)&v36 init];
    if (self)
    {
      v6 = [MEMORY[0x1E69C75D8] identifierWithPid:v3];
      if (!v6)
      {
        v23 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v38 = "[CSAudioPlayingApp initWithPid:]";
          _os_log_error_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_ERROR, "%s Failed to fetch RBSProcessIdentifier", buf, 0xCu);
        }

        goto LABEL_2;
      }

      v7 = v6;
      v35 = 0;
      v8 = [MEMORY[0x1E69C75C8] handleForIdentifier:v6 error:&v35];
      v9 = v35;
      if (!v8)
      {
        v24 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v30 = v24;
          localizedDescription = [v9 localizedDescription];
          *buf = 136315394;
          v38 = "[CSAudioPlayingApp initWithPid:]";
          v39 = 2114;
          v40 = localizedDescription;
          _os_log_error_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_ERROR, "%s Fail to create RBSProcessHandle : %{public}@", buf, 0x16u);
        }

        goto LABEL_2;
      }

      bundle = [v8 bundle];
      identifier = [bundle identifier];
      v12 = [identifier copy];
      bundleId = self->_bundleId;
      self->_bundleId = v12;

      v14 = self->_bundleId;
      v34 = 0;
      v15 = [MEMORY[0x1E6963628] bundleRecordWithBundleIdentifier:v14 allowPlaceholder:0 error:&v34];
      v16 = v34;
      if (v15)
      {
        localizedName = [v15 localizedName];
        v18 = [localizedName copy];
        appName = self->_appName;
        self->_appName = v18;

        bundleVersion = [v15 bundleVersion];
        v21 = [bundleVersion copy];
        version = self->_version;
        self->_version = v21;
      }

      else
      {
        v25 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v32 = &stru_1F58FE330;
          v33 = self->_bundleId;
          if (v16)
          {
            v32 = v16;
          }

          *buf = 136315650;
          v38 = "[CSAudioPlayingApp initWithPid:]";
          v39 = 2112;
          v40 = v32;
          v41 = 2112;
          v42 = v33;
          _os_log_error_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_ERROR, "%s Failed to create application proxy %@ from bundleId %@", buf, 0x20u);
        }

        objc_storeStrong(&self->_appName, self->_bundleId);
        bundleVersion = self->_version;
        self->_version = @"unknown";
      }

      v26 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_appName;
        v28 = self->_version;
        *buf = 136315906;
        v38 = "[CSAudioPlayingApp initWithPid:]";
        v39 = 2114;
        v40 = v27;
        v41 = 2114;
        v42 = v28;
        v43 = 1024;
        v44 = v3;
        _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s Playing app: %{public}@, version: %{public}@, pid: %d", buf, 0x26u);
      }
    }

    self = self;
    selfCopy = self;
    goto LABEL_19;
  }

LABEL_2:
  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

@end