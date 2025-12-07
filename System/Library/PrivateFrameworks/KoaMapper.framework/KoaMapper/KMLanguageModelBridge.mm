@interface KMLanguageModelBridge
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMLanguageModelBridge)initWithLanguageCode:(id)code;
- (id)_getItemWithTokenID:(unsigned int)d dynamicToken:(id)token error:(id *)error;
@end

@implementation KMLanguageModelBridge

- (id)_getItemWithTokenID:(unsigned int)d dynamicToken:(id)token error:(id *)error
{
  v6 = *&d;
  tokenCopy = token;
  builder = self->_builder;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v6];
  v11 = [(KVItemBuilder *)builder setItemType:10 itemId:v10 error:error];

  v12 = [(KVItemBuilder *)self->_builder addFieldWithType:400 value:tokenCopy error:error];
  v13 = [(KVItemBuilder *)self->_builder buildItemWithError:error];

  return v13;
}

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v40[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = AFKeyboardLMLocaleOverride();
  v7 = *MEMORY[0x277D23078];
  v39[0] = *MEMORY[0x277D230E0];
  v39[1] = v7;
  v40[0] = v6;
  v40[1] = MEMORY[0x277CBEC38];
  v39[2] = *MEMORY[0x277D23098];
  v8 = AFKeyboardResourcesDirectoryPath();
  v40[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];

  if (LMLanguageModelCreate())
  {
    v28 = 0;
    if (LMLanguageModelGetDynamicTokenIDRange())
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v34 = __Block_byref_object_copy__857;
      v35 = __Block_byref_object_dispose__858;
      v36 = 0;
      v23 = blockCopy;
      LMLanguageModelEnumerateDynamicTokensWithBlock();
      LMLanguageModelRelease();
      v10 = *(v25 + 24);
      if (v10 == 1)
      {
        v11 = KMLogContextCore;
        if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
        {
          languageCode = self->_languageCode;
          *v29 = 136315394;
          v30 = "[KMLanguageModelBridge enumerateItemsWithError:usingBlock:]";
          v31 = 2112;
          v32 = languageCode;
          _os_log_error_impl(&dword_2559DF000, v11, OS_LOG_TYPE_ERROR, "%s Enumeration failed while fetching dynamic tokens for Keyboard from LanguageModel for language=%@", v29, 0x16u);
        }

        KVSetError();
      }

      _Block_object_dispose(buf, 8);
      v12 = v10 ^ 1;
      _Block_object_dispose(&v24, 8);
    }

    else
    {
      v18 = KMLogContextCore;
      v12 = 1;
      if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
      {
        v19 = self->_languageCode;
        *buf = 136315394;
        *&buf[4] = "[KMLanguageModelBridge enumerateItemsWithError:usingBlock:]";
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&dword_2559DF000, v18, OS_LOG_TYPE_INFO, "%s No dynamic tokens for language=%@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_languageCode;
      *buf = 136315394;
      *&buf[4] = "[KMLanguageModelBridge enumerateItemsWithError:usingBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_error_impl(&dword_2559DF000, v13, OS_LOG_TYPE_ERROR, "%s Could not get dynamic vocabulary for Keyboard from LanguageModel for language=%@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA068];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get dynamic vocabulary for Keyboard from LanguageModel for language=%@", self->_languageCode];
    v38 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v17 = [v14 errorWithDomain:@"com.apple.siri.vocabulary.donate.keyboard" code:2 userInfo:v16];
    KVSetError();

    v12 = 0;
  }

  return v12;
}

void __60__KMLanguageModelBridge_enumerateItemsWithError_usingBlock___block_invoke(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  StringForTokenID = LMLanguageModelCreateStringForTokenID();
  if (StringForTokenID)
  {
    v6 = StringForTokenID;
    v7 = objc_autoreleasePoolPush();
    LMLanguageModelGetUsageCount();
    if (v8 <= 0.0)
    {
      CFRelease(v6);
    }

    else
    {
      v9 = v6;
      v10 = v9;
      if (a2 >= *(a1 + 72) && a2 <= *(a1 + 76))
      {
        v11 = *(*(a1 + 48) + 8);
        obj = *(v11 + 40);
        v12 = [*(a1 + 32) _getItemWithTokenID:? dynamicToken:? error:?];
        objc_storeStrong((v11 + 40), obj);
        if (!v12 || ((*(*(a1 + 40) + 16))() & 1) == 0)
        {
          *a3 = 1;
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        CFRelease(v10);
      }

      else
      {
        CFRelease(v9);
      }
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (KMLanguageModelBridge)initWithLanguageCode:(id)code
{
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = KMLanguageModelBridge;
  v6 = [(KMLanguageModelBridge *)&v12 init];
  v7 = v6;
  if (v6)
  {
    if (!codeCopy)
    {
      v10 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_languageCode, code);
    v8 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v7->_builder;
    v7->_builder = v8;
  }

  v10 = v7;
LABEL_6:

  return v10;
}

@end