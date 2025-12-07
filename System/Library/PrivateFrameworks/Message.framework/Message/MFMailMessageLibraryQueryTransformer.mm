@interface MFMailMessageLibraryQueryTransformer
+ (OS_os_log)log;
- (EDMessagePersistence)messagePersistence;
- (MFMailMessageLibraryQueryTransformer)initWithMessagePersistence:(id)persistence;
- (id)criterionForQuery:(id)query;
- (id)mailAccountForIdentifier:(id)identifier;
- (id)messageCriterionConverter:(id)converter expressionForConstantValue:(id)value withCriterionType:(int64_t)type;
- (int64_t)messageCriterionConverter:(id)converter criterionTypeForKey:(id)key;
- (unsigned)optionsForQuery:(id)query;
@end

@implementation MFMailMessageLibraryQueryTransformer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MFMailMessageLibraryQueryTransformer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_18 != -1)
  {
    dispatch_once(&log_onceToken_18, block);
  }

  v2 = log_log_18;

  return v2;
}

void __43__MFMailMessageLibraryQueryTransformer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_18;
  log_log_18 = v1;
}

- (MFMailMessageLibraryQueryTransformer)initWithMessagePersistence:(id)persistence
{
  persistenceCopy = persistence;
  v9.receiver = self;
  v9.super_class = MFMailMessageLibraryQueryTransformer;
  v5 = [(MFMailMessageLibraryQueryTransformer *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MFMessageCriterionConverter);
    criterionConverter = v5->_criterionConverter;
    v5->_criterionConverter = v6;

    [(MFMessageCriterionConverter *)v5->_criterionConverter setDelegate:v5];
    objc_storeWeak(&v5->_messagePersistence, persistenceCopy);
  }

  return v5;
}

- (int64_t)messageCriterionConverter:(id)converter criterionTypeForKey:(id)key
{
  converterCopy = converter;
  keyCopy = key;
  if (messageCriterionConverter_criterionTypeForKey__onceToken != -1)
  {
    [MFMailMessageLibraryQueryTransformer messageCriterionConverter:criterionTypeForKey:];
  }

  v7 = [messageCriterionConverter_criterionTypeForKey__mapping objectForKeyedSubscript:keyCopy];
  integerValue = [v7 integerValue];

  return integerValue;
}

void __86__MFMailMessageLibraryQueryTransformer_messageCriterionConverter_criterionTypeForKey___block_invoke()
{
  v15[24] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E699A868];
  v14[0] = *MEMORY[0x1E699AB20];
  v14[1] = v0;
  v15[0] = &unk_1F2775A48;
  v15[1] = &unk_1F2775A60;
  v1 = *MEMORY[0x1E699A880];
  v14[2] = *MEMORY[0x1E699A920];
  v14[3] = v1;
  v15[2] = &unk_1F2775A78;
  v15[3] = &unk_1F2775A90;
  v2 = *MEMORY[0x1E699A908];
  v14[4] = *MEMORY[0x1E699A888];
  v14[5] = v2;
  v15[4] = &unk_1F2775AA8;
  v15[5] = &unk_1F2775AC0;
  v3 = *MEMORY[0x1E699A938];
  v14[6] = *MEMORY[0x1E699A940];
  v14[7] = v3;
  v15[6] = &unk_1F2775AD8;
  v15[7] = &unk_1F2775AF0;
  v4 = *MEMORY[0x1E699A8E0];
  v14[8] = *MEMORY[0x1E699A948];
  v14[9] = v4;
  v15[8] = &unk_1F2775B08;
  v15[9] = &unk_1F2775B20;
  v5 = *MEMORY[0x1E699A8F0];
  v14[10] = *MEMORY[0x1E699A8F8];
  v14[11] = v5;
  v15[10] = &unk_1F2775B38;
  v15[11] = &unk_1F2775B50;
  v6 = *MEMORY[0x1E699A910];
  v14[12] = *MEMORY[0x1E699A870];
  v14[13] = v6;
  v15[12] = &unk_1F2775B68;
  v15[13] = &unk_1F2775B80;
  v7 = *MEMORY[0x1E699AB18];
  v14[14] = *MEMORY[0x1E699AB28];
  v14[15] = v7;
  v15[14] = &unk_1F2775B98;
  v15[15] = &unk_1F2775BB0;
  v8 = *MEMORY[0x1E699A960];
  v14[16] = *MEMORY[0x1E699A958];
  v14[17] = v8;
  v15[16] = &unk_1F2775BC8;
  v15[17] = &unk_1F2775BE0;
  v9 = *MEMORY[0x1E699A8B8];
  v14[18] = *MEMORY[0x1E699A978];
  v14[19] = v9;
  v15[18] = &unk_1F2775BF8;
  v15[19] = &unk_1F2775C10;
  v10 = *MEMORY[0x1E699A8A8];
  v14[20] = *MEMORY[0x1E699A8B0];
  v14[21] = v10;
  v15[20] = &unk_1F2775C28;
  v15[21] = &unk_1F2775C40;
  v11 = *MEMORY[0x1E699A850];
  v14[22] = *MEMORY[0x1E699A9C8];
  v14[23] = v11;
  v15[22] = &unk_1F2775C58;
  v15[23] = &unk_1F2775C70;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:24];
  v13 = messageCriterionConverter_criterionTypeForKey__mapping;
  messageCriterionConverter_criterionTypeForKey__mapping = v12;
}

- (id)messageCriterionConverter:(id)converter expressionForConstantValue:(id)value withCriterionType:(int64_t)type
{
  valueCopy = value;
  if (type == 23)
  {
    messagePersistence = [(MFMailMessageLibraryQueryTransformer *)self messagePersistence];
    v9 = [messagePersistence messageObjectIDCriterionExpressionForPredicateValue:valueCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mailAccountForIdentifier:(id)identifier
{
  v3 = [MailAccount accountWithUniqueId:identifier];

  return v3;
}

- (id)criterionForQuery:(id)query
{
  queryCopy = query;
  criterionConverter = [(MFMailMessageLibraryQueryTransformer *)self criterionConverter];
  predicate = [queryCopy predicate];
  v7 = [criterionConverter messageCriterionFromPredicate:predicate];

  return v7;
}

- (unsigned)optionsForQuery:(id)query
{
  v21 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  if (optionsForQuery__onceToken != -1)
  {
    [MFMailMessageLibraryQueryTransformer optionsForQuery:];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  sortDescriptors = [queryCopy sortDescriptors];
  v4 = 0;
  v5 = [sortDescriptors countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(sortDescriptors);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = optionsForQuery__mapping;
        v10 = [v8 key];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (v11)
        {
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          if ([v8 ascending])
          {
            v13 = 1024;
          }

          else
          {
            v13 = 0;
          }

          v4 |= v13 | unsignedIntegerValue;
        }
      }

      v5 = [sortDescriptors countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v4;
}

void __56__MFMailMessageLibraryQueryTransformer_optionsForQuery___block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E699A880];
  v4[0] = *MEMORY[0x1E699A888];
  v4[1] = v0;
  v5[0] = &unk_1F2775C88;
  v5[1] = &unk_1F2775CA0;
  v1 = *MEMORY[0x1E699A978];
  v4[2] = *MEMORY[0x1E699A958];
  v4[3] = v1;
  v5[2] = &unk_1F2775CB8;
  v5[3] = &unk_1F2775CD0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = optionsForQuery__mapping;
  optionsForQuery__mapping = v2;
}

- (EDMessagePersistence)messagePersistence
{
  WeakRetained = objc_loadWeakRetained(&self->_messagePersistence);

  return WeakRetained;
}

@end