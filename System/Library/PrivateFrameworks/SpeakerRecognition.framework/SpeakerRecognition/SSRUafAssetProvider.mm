@interface SSRUafAssetProvider
- (SSRUafAssetProvider)init;
- (id)installedAssetOfType:(unint64_t)type forLanguageCode:(id)code;
- (void)dealloc;
@end

@implementation SSRUafAssetProvider

- (id)installedAssetOfType:(unint64_t)type forLanguageCode:(id)code
{
  v35 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v7 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5297;
  v29 = __Block_byref_object_dispose__5298;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5297;
  v23 = __Block_byref_object_dispose__5298;
  v24 = 0;
  uafAssetManager = self->_uafAssetManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__SSRUafAssetProvider_installedAssetOfType_forLanguageCode___block_invoke;
  v15[3] = &unk_2785789F0;
  v17 = &v25;
  v18 = &v19;
  v9 = v7;
  v16 = v9;
  [(CSUAFAssetManager *)uafAssetManager getInstalledAssetofType:type forLocale:codeCopy completion:v15];
  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = v26[5];
  if (v11)
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[SSRUafAssetProvider installedAssetOfType:forLanguageCode:]";
      v33 = 2112;
      v34 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s uaf asset fetching error: %@", buf, 0x16u);
    }
  }

  v13 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __60__SSRUafAssetProvider_installedAssetOfType_forLanguageCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  uafAssetManager = self->_uafAssetManager;
  self->_uafAssetManager = 0;

  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SSRUafAssetProvider dealloc]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SSRUafAssetProvider;
  [(SSRUafAssetProvider *)&v5 dealloc];
}

- (SSRUafAssetProvider)init
{
  v7.receiver = self;
  v7.super_class = SSRUafAssetProvider;
  v2 = [(SSRUafAssetProvider *)&v7 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (([MEMORY[0x277D018F8] supportsUnderstandingOnDevice] & 1) != 0 || objc_msgSend(MEMORY[0x277D018F8], "supportsHybridUnderstandingOnDevice"))
  {
    v3 = objc_alloc_init(MEMORY[0x277D018D0]);
    uafAssetManager = v2->_uafAssetManager;
    v2->_uafAssetManager = v3;
  }

  if (!v2->_uafAssetManager)
  {
    v5 = 0;
  }

  else
  {
LABEL_6:
    v5 = v2;
  }

  return v5;
}

@end