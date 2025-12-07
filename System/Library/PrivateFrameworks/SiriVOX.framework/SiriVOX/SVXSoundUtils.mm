@interface SVXSoundUtils
- (SVXSoundUtils)init;
- (SVXSoundUtils)initWithSpeechSynthesisUtils:(id)utils resourceURLSupplier:(id)supplier;
- (id)createAudioPlaybackRequestFromID:(int64_t)d preferences:(id)preferences;
- (int64_t)getIDFromAudioPlaybackRequest:(id)request;
@end

@implementation SVXSoundUtils

- (id)createAudioPlaybackRequestFromID:(int64_t)d preferences:(id)preferences
{
  v44 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXSoundUtils createAudioPlaybackRequestFromID:preferences:]"];
    [currentHandler handleFailureInFunction:v33 file:@"SVXSoundUtils.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];
  }

  v7 = 0;
  if (d > 3)
  {
    if (d != 4 && d != 5)
    {
      if (d != 6)
      {
        goto LABEL_31;
      }

      v35 = preferencesCopy;
      v10 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:1 preferences:preferencesCopy];
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      languageCode = [v10 languageCode];
      v34 = v10;
      gender = [v10 gender];
      v14 = @"Female";
      if (gender == 1)
      {
        v14 = @"Male";
      }

      v15 = [v11 initWithFormat:@"%@-%@-%@", @"Phatic", languageCode, v14];

      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = [(SVXResourceURLSupplier *)self->_resourceURLSupplier URLsForResourcesWithExtension:@"wav" subdirectory:0];
      v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v40;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v39 + 1) + 8 * i);
            lastPathComponent = [v22 lastPathComponent];
            v24 = [lastPathComponent hasPrefix:v15];

            if (v24)
            {
              [v16 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v19);
      }

      v25 = [v16 count];
      if (v25)
      {
        v26 = [v16 objectAtIndex:arc4random_uniform(v25)];
      }

      else
      {
        v26 = 0;
      }

      preferencesCopy = v35;
      if (v26)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    resourceURLSupplier = self->_resourceURLSupplier;
    v9 = @"DeviceSetup-b238.wav";
  }

  else
  {
    if (d == 1)
    {
LABEL_7:
      resourceURLSupplier = self->_resourceURLSupplier;
      v9 = @"SiriSummon-b238.wav";
      goto LABEL_26;
    }

    if (d != 2)
    {
      if (d != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_7;
    }

    resourceURLSupplier = self->_resourceURLSupplier;
    v9 = @"SessionInactive-b238.wav";
  }

LABEL_26:
  stringByDeletingPathExtension = [(__CFString *)v9 stringByDeletingPathExtension];
  pathExtension = [(__CFString *)v9 pathExtension];
  v26 = [(SVXResourceURLSupplier *)resourceURLSupplier URLForResource:stringByDeletingPathExtension withExtension:pathExtension];

  if (v26)
  {
LABEL_27:
    v29 = objc_alloc(MEMORY[0x277CEF188]);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __62__SVXSoundUtils_createAudioPlaybackRequestFromID_preferences___block_invoke;
    v36[3] = &unk_279C67798;
    v37 = v26;
    dCopy = d;
    v30 = v26;
    v7 = [v29 initWithBuilder:v36];

    goto LABEL_31;
  }

LABEL_30:
  v7 = 0;
LABEL_31:

  return v7;
}

void __62__SVXSoundUtils_createAudioPlaybackRequestFromID_preferences___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setItemURL:v3];
  [v4 setNumberOfLoops:0];
  LODWORD(v5) = 1.0;
  [v4 setVolume:v5];
  [v4 setFadeInDuration:0.0];
  [v4 setFadeOutDuration:0.0];
  v8 = @"_SVXSoundID";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 setUserInfo:v7];
}

- (int64_t)getIDFromAudioPlaybackRequest:(id)request
{
  userInfo = [request userInfo];
  v4 = [userInfo objectForKey:@"_SVXSoundID"];
  integerValue = [v4 integerValue];

  if (integerValue <= 6)
  {
    return integerValue;
  }

  else
  {
    return 0;
  }
}

- (SVXSoundUtils)initWithSpeechSynthesisUtils:(id)utils resourceURLSupplier:(id)supplier
{
  utilsCopy = utils;
  supplierCopy = supplier;
  v12.receiver = self;
  v12.super_class = SVXSoundUtils;
  v9 = [(SVXSoundUtils *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_speechSynthesisUtils, utils);
    objc_storeStrong(&v10->_resourceURLSupplier, supplier);
  }

  return v10;
}

- (SVXSoundUtils)init
{
  v3 = objc_alloc_init(SVXSpeechSynthesisUtils);
  v4 = +[SVXBundleUtils sharedInstance];
  getSiriVOXFramework = [v4 getSiriVOXFramework];
  v6 = [(SVXSoundUtils *)self initWithSpeechSynthesisUtils:v3 resourceURLSupplier:getSiriVOXFramework];

  return v6;
}

@end