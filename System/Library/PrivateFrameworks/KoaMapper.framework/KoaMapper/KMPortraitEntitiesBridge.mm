@interface KMPortraitEntitiesBridge
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMPortraitEntitiesBridge)init;
@end

@implementation KMPortraitEntitiesBridge

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  v6 = objc_alloc_init(MEMORY[0x277D3A430]);
  [v6 setLimit:500];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__432;
  v32[4] = __Block_byref_object_dispose__433;
  v33 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__432;
  v26 = __Block_byref_object_dispose__433;
  v27 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v7 = objc_opt_new();
  v9 = (v23 + 5);
  v8 = v23[5];
  v18 = &v28;
  obj = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__KMPortraitEntitiesBridge_enumerateItemsWithError_usingBlock___block_invoke;
  v13[3] = &unk_279805BA0;
  v15 = v32;
  v16 = v20;
  v13[4] = self;
  v17 = &v22;
  v10 = blockCopy;
  v14 = v10;
  [v7 iterRankedNamedEntitiesWithQuery:v6 error:&obj block:v13];
  objc_storeStrong(v9, obj);

  v11 = *(v29 + 24);
  if (v11 == 1)
  {
    KVSetError();
  }

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v32, 8);

  return v11 ^ 1;
}

void __63__KMPortraitEntitiesBridge_enumerateItemsWithError_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v29 = *(a1[4] + 16);
  v7 = MEMORY[0x277CCACA8];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 + 1;
  v10 = [v7 stringWithFormat:@"%ld", v9];
  v30[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(a1[4] + 8);
  v15 = *(*(a1[6] + 8) + 40);
  v16 = *(a1[8] + 8);
  obj = *(v16 + 40);
  v17 = [v14 mapObject:v5 additionalFields:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  if ([v17 count] == 1)
  {
    v18 = a1[5];
    v19 = [v17 firstObject];
    LOBYTE(v18) = (*(v18 + 16))(v18, v19);

    if (v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v21 = *(*(a1[8] + 8) + 40);
      *buf = 136315650;
      v24 = "[KMPortraitEntitiesBridge enumerateItemsWithError:usingBlock:]_block_invoke";
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v21;
      _os_log_error_impl(&dword_2559DF000, v20, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
    }
  }

  *(*(a1[9] + 8) + 24) = 1;
  *a3 = 1;
LABEL_7:

  objc_autoreleasePoolPop(v6);
}

- (KMPortraitEntitiesBridge)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = KMPortraitEntitiesBridge;
  v2 = [(KMPortraitEntitiesBridge *)&v12 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v11 = 0;
  v3 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v11];
  v4 = v11;
  itemMapper = v2->_itemMapper;
  v2->_itemMapper = v3;

  if (v2->_itemMapper)
  {
    v6 = KVAdditionalFieldTypeToNumber();
    alternativeItemIdKey = v2->_alternativeItemIdKey;
    v2->_alternativeItemIdKey = v6;

LABEL_4:
    v8 = v2;
    goto LABEL_8;
  }

  v9 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "[KMPortraitEntitiesBridge init]";
    v15 = 2112;
    v16 = v4;
    _os_log_error_impl(&dword_2559DF000, v9, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end