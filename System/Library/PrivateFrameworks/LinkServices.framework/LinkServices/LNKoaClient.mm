@interface LNKoaClient
- (id)buildKVItemFrom:(id)from;
- (id)buildKVItemListWithIncrementalIDs:(id)ds;
- (id)getKVItemBuilderFor:(id)for itemId:(id)id;
- (id)initForBundleIdentifier:(id)identifier;
- (void)completeSuccessfully:(id)successfully;
- (void)completeWithError:(id)error completion:(id)completion;
- (void)donateFullVocabularySet:(id)set completionHandler:(id)handler;
@end

@implementation LNKoaClient

- (void)completeSuccessfully:(id)successfully
{
  if (successfully)
  {
    (*(successfully + 2))(successfully, 0);
  }
}

- (void)completeWithError:(id)error completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, error);
  }
}

- (id)buildKVItemFrom:(id)from
{
  v10 = *MEMORY[0x1E69E9840];
  if (from)
  {
    v7 = 0;
    v3 = [from buildItemWithError:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Failed to build a KVItem. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getKVItemBuilderFor:(id)for itemId:(id)id
{
  v39 = *MEMORY[0x1E69E9840];
  forCopy = for;
  idCopy = id;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v7 = getKVItemBuilderClass_softClass;
  v34 = getKVItemBuilderClass_softClass;
  if (!getKVItemBuilderClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v36 = __getKVItemBuilderClass_block_invoke;
    v37 = &unk_1E74B26D0;
    v38 = &v31;
    __getKVItemBuilderClass_block_invoke(&buf);
    v7 = v32[3];
  }

  v8 = v7;
  _Block_object_dispose(&v31, 8);
  v9 = objc_alloc_init(v7);
  term = [forCopy term];
  entityIdentifier = [forCopy entityIdentifier];
  typeIdentifier = [entityIdentifier typeIdentifier];

  entityIdentifier2 = [forCopy entityIdentifier];
  instanceIdentifier = [entityIdentifier2 instanceIdentifier];

  v30 = 0;
  v15 = [v9 setItemType:7 itemId:idCopy error:&v30];
  v16 = v30;

  if (!v15)
  {
    v22 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_19763D000, v22, OS_LOG_TYPE_ERROR, "Failed to create a KVItemBuilder. Error: %@", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  v29 = v16;
  v17 = [v9 addFieldWithType:275 value:term error:&v29];
  v18 = v29;

  if (!v17)
  {
    v23 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_ERROR, "Failed to add a app entity name field. Error: %@", &buf, 0xCu);
    }

    goto LABEL_21;
  }

  v28 = v18;
  v19 = [v9 addFieldWithType:276 value:typeIdentifier error:&v28];
  v16 = v28;

  if (!v19)
  {
    v24 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_19763D000, v24, OS_LOG_TYPE_ERROR, "Failed to add a app entity type class name field. Error: %@", &buf, 0xCu);
    }

LABEL_17:
    v21 = 0;
    goto LABEL_23;
  }

  v27 = v16;
  v20 = [v9 addFieldWithType:277 value:instanceIdentifier error:&v27];
  v18 = v27;

  if (!v20)
  {
    v25 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_19763D000, v25, OS_LOG_TYPE_ERROR, "Failed to add a app entity id field. Error: %@", &buf, 0xCu);
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v21 = v9;
LABEL_22:
  v16 = v18;
LABEL_23:

  return v21;
}

- (id)buildKVItemListWithIncrementalIDs:(id)ds
{
  v49 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%0%du", 3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = dsCopy;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        entityIdentifier = [v11 entityIdentifier];
        v13 = [v5 objectForKey:entityIdentifier];

        if (v13)
        {
          term = [v11 term];
          v40 = 0;
          v15 = [v13 addFieldWithType:275 value:term error:&v40];
          v16 = v40;

          if (!v15)
          {
            v17 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v16;
              _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Failed to add a app entity name field. Error: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v34, v8];
          v18 = [(LNKoaClient *)self getKVItemBuilderFor:v11 itemId:v16];
          if (v18)
          {
            v13 = v18;
            entityIdentifier2 = [v11 entityIdentifier];
            [v5 setObject:v13 forKey:entityIdentifier2];

            v8 = (v8 + 1);
          }

          else
          {
            v20 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_INFO, "Could not create KVItemBuilder for term, skipping", buf, 2u);
            }

            v13 = 0;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v7);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = obj;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
  v23 = v33;
  if (v22)
  {
    v24 = v22;
    v25 = *v37;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v21);
        }

        entityIdentifier3 = [*(*(&v36 + 1) + 8 * j) entityIdentifier];
        v28 = [v5 objectForKey:entityIdentifier3];
        if (v28)
        {
          v29 = [(LNKoaClient *)self buildKVItemFrom:v28];
          if (v29)
          {
            [v23 addObject:v29];
            [v5 removeObjectForKey:entityIdentifier3];
          }

          else
          {
            v30 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = entityIdentifier3;
              _os_log_impl(&dword_19763D000, v30, OS_LOG_TYPE_ERROR, "Failed to build a KVItem for %@, skipping", buf, 0xCu);
            }

            v23 = v33;
          }
        }
      }

      v24 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v24);
  }

  v31 = v23;
  return v23;
}

- (void)donateFullVocabularySet:(id)set completionHandler:(id)handler
{
  setCopy = set;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke;
  block[3] = &unk_1E74B2580;
  block[4] = self;
  v12 = setCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = setCopy;
  dispatch_async(queue, block);
}

void __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke(id *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if ([*(a1[4] + 3) isEqualToOrderedSet:a1[5]])
  {
    v2 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "Vocabulary set did not change, exiting early from donation method.", &buf, 2u);
    }

    [a1[4] completeSuccessfully:a1[6]];
  }

  else
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v3 = getKVDonatorClass_softClass;
    v31 = getKVDonatorClass_softClass;
    if (!getKVDonatorClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = __getKVDonatorClass_block_invoke;
      v34 = &unk_1E74B26D0;
      v35 = &v28;
      __getKVDonatorClass_block_invoke(&buf);
      v3 = v29[3];
    }

    v4 = v3;
    _Block_object_dispose(&v28, 8);
    if (!v3)
    {
      [a1[4] completeSuccessfully:a1[6]];
    }

    v5 = [a1[5] copy];
    v6 = a1[4];
    v7 = v6[3];
    v6[3] = v5;

    v8 = [MEMORY[0x1E695DF00] date];
    v9 = dispatch_group_create();
    v10 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [a1[5] count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_INFO, "Making a full vocabulary donation to SiriVocabulary (%lu terms)", &buf, 0xCu);
    }

    v12 = *(a1[4] + 1);
    v27 = 0;
    v13 = [v3 donatorWithItemType:7 originAppId:v12 error:&v27];
    v14 = v27;
    if (v13)
    {
      dispatch_group_enter(v9);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_15;
      v22[3] = &unk_1E74B1460;
      v15 = v9;
      v16 = a1[4];
      v23 = v15;
      v24 = v16;
      v26 = a1[6];
      v25 = a1[5];
      [v13 donateWithOptions:0 usingStream:v22];
      v17 = dispatch_time(0, 300000000000);
      if (dispatch_group_wait(v15, v17))
      {
        v18 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = 0x4072C00000000000;
          _os_log_impl(&dword_19763D000, v18, OS_LOG_TYPE_ERROR, "Timed out waiting for stream after %f seconds", &buf, 0xCu);
        }
      }

      v19 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [v8 timeIntervalSinceNow];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = -v20;
        _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_DEBUG, "Koa donation took %f", &buf, 0xCu);
      }
    }

    else
    {
      v21 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_ERROR, "Cannot create a KVDonator. Error: %@", &buf, 0xCu);
      }

      [a1[4] completeWithError:v14 completion:a1[6]];
    }
  }
}

void __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v25 = a3;
  v22 = v4;
  if (v25)
  {
    v5 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Cannot initiate donation stream. Error: %@", &buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
    [*(a1 + 40) completeWithError:v25 completion:{*(a1 + 56), v4}];
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v6 = getKVFullDatasetStreamClass_softClass;
    v38 = getKVFullDatasetStreamClass_softClass;
    if (!getKVFullDatasetStreamClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v41 = __getKVFullDatasetStreamClass_block_invoke;
      v42 = &unk_1E74B26D0;
      v43 = &v35;
      __getKVFullDatasetStreamClass_block_invoke(&buf);
      v6 = v36[3];
    }

    v7 = v6;
    _Block_object_dispose(&v35, 8);
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
      v9 = [*(a1 + 40) buildKVItemListWithIncrementalIDs:*(a1 + 48)];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = 0;
      v11 = 0;
      v12 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v12)
      {
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            v30 = v10;
            [v8 registerItem:v15 error:{&v30, v22}];
            v16 = v30;

            v10 = v16;
            if (v16)
            {
              v17 = getLNLogCategoryVocabulary();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_INFO, "Could not register KVItem with stream, skipping", &buf, 2u);
              }

              ++v11;
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v12);
      }

      v18 = [v9 count];
      v19 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v18 - v11;
        WORD4(buf) = 1024;
        *(&buf + 10) = v11;
        _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_DEBUG, "Stream registered %d and rejected %d items", &buf, 0xEu);
      }

      if (v11 && v18 == v11)
      {
        v20 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_INFO, "No items were registered with some items rejected, cancelling stream", &buf, 2u);
        }

        [v8 cancel];
        dispatch_group_leave(*(a1 + 32));
        [*(a1 + 40) completeSuccessfully:*(a1 + 56)];
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_16;
        v26[3] = &unk_1E74B1438;
        v26[4] = *(a1 + 40);
        v28 = *(a1 + 56);
        v29 = v18 - v11;
        v27 = *(a1 + 32);
        [v8 finish:v26];
      }
    }

    else
    {
      v21 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_ERROR, "Received unexpected donation stream type", &buf, 2u);
      }

      dispatch_group_leave(*(a1 + 32));
      [*(a1 + 40) completeWithError:0 completion:{*(a1 + 56), v4}];
    }
  }
}

void __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryVocabulary();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Cannot finish stream. Error: %@", &v7, 0xCu);
    }

    [*(a1 + 32) completeWithError:v3 completion:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 56);
      v7 = 67109120;
      LODWORD(v8) = v6;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Successfully donated %d terms to SiriVocabulary", &v7, 8u);
    }

    [*(a1 + 32) completeSuccessfully:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)initForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNKoaClient.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = LNKoaClient;
  v6 = [(LNKoaClient *)&v17 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);

    v11 = dispatch_queue_create("com.apple.link.vocabularyDonationQueue", v10);
    queue = v6->_queue;
    v6->_queue = v11;

    currentVocabularySet = v6->_currentVocabularySet;
    v6->_currentVocabularySet = 0;

    v14 = v6;
  }

  return v6;
}

@end