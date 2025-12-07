@interface BMIntentStream
- (BMIntentStream)init;
- (id)publisher;
- (void)deleteIntentsWithGroupIdentifiers:(id)identifiers bundleID:(id)d;
- (void)deleteIntentsWithIdentifiers:(id)identifiers bundleID:(id)d;
@end

@implementation BMIntentStream

- (BMIntentStream)init
{
  v10.receiver = self;
  v10.super_class = BMIntentStream;
  v2 = [(BMIntentStream *)&v10 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 App];
    intent = [v4 Intent];
    v6 = [intent storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v6;

    if (!v2->_storeStream)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMIntentStream init];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMIntentStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

- (void)deleteIntentsWithIdentifiers:(id)identifiers bundleID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  v8 = [identifiersCopy count];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (!v8)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1848EE000, v9, OS_LOG_TYPE_INFO, "No itemIDs specified for deletion, returning early", buf, 2u);
    }
  }

  storeStream = self->_storeStream;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __56__BMIntentStream_deleteIntentsWithIdentifiers_bundleID___block_invoke;
  v24 = &unk_1E6E52F28;
  v11 = dCopy;
  v25 = v11;
  v12 = identifiersCopy;
  v26 = v12;
  v27 = &v29;
  v28 = v8;
  [(BMStoreStream *)storeStream pruneWithPredicateBlock:&v21];
  v13 = v30[3];
  if (v13 == [v12 count])
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 count];
      *buf = 134217984;
      v34 = v15;
      v16 = "Deleted all intents identifiers matching %lu specified";
      v17 = v14;
      v18 = 12;
LABEL_10:
      _os_log_impl(&dword_1848EE000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v30[3];
      v20 = [v12 count];
      *buf = 134218240;
      v34 = v19;
      v35 = 2048;
      v36 = v20;
      v16 = "Deleted %ld intents matching %lu provided";
      v17 = v14;
      v18 = 22;
      goto LABEL_10;
    }
  }

  _Block_object_dispose(&v29, 8);
}

uint64_t __56__BMIntentStream_deleteIntentsWithIdentifiers_bundleID___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __56__BMIntentStream_deleteIntentsWithIdentifiers_bundleID___block_invoke_cold_3();
    }

    goto LABEL_11;
  }

  v8 = [v6 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __56__BMIntentStream_deleteIntentsWithIdentifiers_bundleID___block_invoke_cold_1(v7);
    }

    goto LABEL_11;
  }

  v10 = [v7 eventBody];
  v11 = [v10 bundleID];
  if (v11 || a1[4])
  {
    v3 = [v10 bundleID];
    if (([v3 isEqualToString:a1[4]] & 1) == 0)
    {
      goto LABEL_18;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v14 = [v10 itemID];
  if (!v14)
  {

    if ((v12 & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  v15 = a1[5];
  v16 = [v10 itemID];
  v17 = [v15 containsObject:v16];

  if ((v12 & 1) == 0)
  {

    if (v17)
    {
      goto LABEL_23;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __56__BMIntentStream_deleteIntentsWithIdentifiers_bundleID___block_invoke_cold_2(v10);
  }

  if (++*(*(a1[6] + 8) + 24) != a1[7])
  {
LABEL_11:
    v13 = 1;
    goto LABEL_21;
  }

  v20 = __biome_log_for_category();
  v13 = 1;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v21 = 0;
    _os_log_impl(&dword_1848EE000, v20, OS_LOG_TYPE_INFO, "Deleted all requested identifiers, stopping early", v21, 2u);
  }

  *a3 = 1;
LABEL_21:

  return v13;
}

- (void)deleteIntentsWithGroupIdentifiers:(id)identifiers bundleID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = objc_opt_new();
  if ([identifiersCopy count])
  {
    storeStream = self->_storeStream;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__BMIntentStream_deleteIntentsWithGroupIdentifiers_bundleID___block_invoke;
    v14[3] = &unk_1E6E52F50;
    v15 = dCopy;
    v9 = identifiersCopy;
    v16 = v9;
    v17 = &v18;
    [(BMStoreStream *)storeStream pruneWithPredicateBlock:v14];
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v19[5] count];
      v12 = [v9 count];
      *buf = 134218240;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_DEFAULT, "Deleted %lu intents matching %lu provided group identifiers", buf, 0x16u);
    }

    v13 = v15;
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_INFO, "No groupIdentifiers specified for deletion, returning early", buf, 2u);
    }
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __61__BMIntentStream_deleteIntentsWithGroupIdentifiers_bundleID___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__BMIntentStream_deleteIntentsWithIdentifiers_bundleID___block_invoke_cold_3();
    }

    goto LABEL_11;
  }

  v6 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__BMIntentStream_deleteIntentsWithIdentifiers_bundleID___block_invoke_cold_1(v5);
    }

    goto LABEL_11;
  }

  v8 = [v5 eventBody];
  v9 = [v8 bundleID];
  if (v9 || a1[4])
  {
    v2 = [v8 bundleID];
    if (([v2 isEqualToString:a1[4]] & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v12 = [v8 groupIdentifier];
  if (!v12)
  {

    if ((v10 & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  v13 = a1[5];
  v14 = [v8 groupIdentifier];
  v15 = [v13 containsObject:v14];

  if (v10)
  {

    if (v15)
    {
      goto LABEL_23;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_23:
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __61__BMIntentStream_deleteIntentsWithGroupIdentifiers_bundleID___block_invoke_cold_2(v8);
  }

  v18 = *(*(a1[6] + 8) + 40);
  v19 = [v8 identifier];
  [v18 addObject:v19];

LABEL_11:
  v11 = 1;
LABEL_21:

  return v11;
}

@end