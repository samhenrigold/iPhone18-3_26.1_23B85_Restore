@interface TTSAXResourceManager
+ (id)sharedInstance;
- (NSSet)allAvailableLanguages;
- (TTSAXResourceManager)init;
- (id)_resourceWithVoiceId:(id)id assetId:(id)assetId;
- (id)_resourcesWithType:(unint64_t)type subType:(unint64_t)subType languageCode:(id)code;
- (id)allLanguagesForVoices:(BOOL)voices;
- (id)allVoices:(BOOL)voices;
- (id)languageCodeForResourceName:(id)name withType:(unint64_t)type;
- (id)resourceWithVoiceId:(id)id;
- (id)resourcesWithType:(unint64_t)type subType:(unint64_t)subType;
- (id)speechVoiceWithVoiceId:(id)id;
- (id)superCompactVoiceIdForCompactVoiceId:(id)id;
- (void)_performBlockOnObservers:(id)observers;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation TTSAXResourceManager

+ (id)sharedInstance
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A934B6E0;
  v8 = sub_1A934B6F0;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (TTSAXResourceManager)init
{
  v6.receiver = self;
  v6.super_class = TTSAXResourceManager;
  v2 = [(TTSAXResourceManager *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->__observers;
    v2->__observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = TTSAXResourceManager;
  [(TTSAXResourceManager *)&v4 dealloc];
}

- (id)resourcesWithType:(unint64_t)type subType:(unint64_t)subType
{
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [TTSAXResourceManager _resourcesWithType:"_resourcesWithType:subType:languageCode:" subType:v4 languageCode:?];
  }

  return v6;
}

- (id)_resourcesWithType:(unint64_t)type subType:(unint64_t)subType languageCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v9 = +[_TtC12TextToSpeech22CoreSynthesisVoiceShim shared];
    v10 = [v9 resourcesWithLanguageCode:codeCopy];
  }

  else
  {
    v10 = [(TTSAXResourceManager *)self allVoices:0];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A934B98C;
  v13[3] = &unk_1E7880598;
  v13[4] = type;
  v13[5] = subType;
  v11 = [v10 ax_filteredArrayUsingBlock:v13];

  return v11;
}

- (id)resourceWithVoiceId:(id)id
{
  if (id)
  {
    v4 = [(TTSAXResourceManager *)self _resourceWithVoiceId:id assetId:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_resourceWithVoiceId:(id)id assetId:(id)assetId
{
  idCopy = id;
  v5 = +[_TtC12TextToSpeech22CoreSynthesisVoiceShim shared];
  v6 = [v5 resourceVoiceWithIdentifier:idCopy];

  return v6;
}

- (id)languageCodeForResourceName:(id)name withType:(unint64_t)type
{
  nameCopy = name;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    primaryLanguage = 0;
  }

  else
  {
    v8 = [(TTSAXResourceManager *)self resourcesWithType:type subType:1];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = sub_1A934BBE0;
    v15 = &unk_1E78805C0;
    v16 = nameCopy;
    typeCopy = type;
    v9 = [v8 indexOfObjectPassingTest:&v12];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v8 objectAtIndex:{v9, v12, v13, v14, v15}];
    }

    primaryLanguage = [v10 primaryLanguage];
  }

  return primaryLanguage;
}

- (id)superCompactVoiceIdForCompactVoiceId:(id)id
{
  idCopy = id;
  if ([idCopy hasPrefix:@"com.apple.voice.compact"])
  {
    v4 = [idCopy stringByReplacingOccurrencesOfString:@"compact" withString:@"super-compact"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)speechVoiceWithVoiceId:(id)id
{
  idCopy = id;
  v5 = [(TTSAXResourceManager *)self allVoices:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A934BDE8;
  v10[3] = &unk_1E78805E8;
  v6 = idCopy;
  v11 = v6;
  v7 = [v5 indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndex:v7];
  }

  return v8;
}

- (id)allVoices:(BOOL)voices
{
  voicesCopy = voices;
  v4 = +[_TtC12TextToSpeech22CoreSynthesisVoiceShim shared];
  v5 = [v4 resourceVoicesWithOnlyInstalled:voicesCopy];

  return v5;
}

- (id)allLanguagesForVoices:(BOOL)voices
{
  v3 = [(TTSAXResourceManager *)self allVoices:voices];
  v4 = [v3 ax_flatMappedArrayUsingBlock:&unk_1F1CEDB68];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];

  return v5;
}

- (NSSet)allAvailableLanguages
{
  allAvailableLanguages = self->_allAvailableLanguages;
  if (!allAvailableLanguages)
  {
    v4 = [(TTSAXResourceManager *)self resourcesWithType:4 subType:2];
    v5 = [(TTSAXResourceManager *)self resourcesWithType:9 subType:2];
    v6 = [v4 ax_filteredArrayUsingBlock:&unk_1F1CEFD58];
    v7 = [v6 arrayByAddingObjectsFromArray:v5];
    v8 = [MEMORY[0x1E695DFD8] set];
    v9 = [v7 ax_flatMappedArrayUsingBlock:&unk_1F1CEFD78];
    v10 = [v8 setByAddingObjectsFromArray:v9];
    v11 = self->_allAvailableLanguages;
    self->_allAvailableLanguages = v10;

    allAvailableLanguages = self->_allAvailableLanguages;
  }

  return allAvailableLanguages;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  AX_PERFORM_WITH_LOCK();
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  AX_PERFORM_WITH_LOCK();
}

- (void)_performBlockOnObservers:(id)observers
{
  v26 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A934B6E0;
  v23 = sub_1A934B6F0;
  v24 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_1A934C430;
  v16 = &unk_1E7880670;
  selfCopy = self;
  v18 = &v19;
  AX_PERFORM_WITH_LOCK();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v20[5];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v25 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        observersCopy[2](observersCopy, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v25 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v19, 8);
}

@end