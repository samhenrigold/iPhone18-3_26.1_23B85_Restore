@interface NSCKRecordMetadataReceiptArchive
- (NSCKRecordMetadataReceiptArchive)initWithCoder:(id)coder;
- (NSCKRecordMetadataReceiptArchive)initWithReceiptsToEncode:(id)encode;
- (void)dealloc;
- (void)enumerateArchivedRecordIDsUsingBlock:(id)block;
@end

@implementation NSCKRecordMetadataReceiptArchive

- (NSCKRecordMetadataReceiptArchive)initWithReceiptsToEncode:(id)encode
{
  v21 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NSCKRecordMetadataReceiptArchive;
  v3 = [(NSCKRecordMetadataReceiptArchive *)&v17 init];
  if (v3)
  {
    v3->_zoneIDToArchivedReceipts = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [encode countByEnumeratingWithState:&v13 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(encode);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          createRecordIDForMovedRecord = [v8 createRecordIDForMovedRecord];
          v10 = -[NSMutableDictionary objectForKey:](v3->_zoneIDToArchivedReceipts, "objectForKey:", [createRecordIDForMovedRecord zoneID]);
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
            -[NSMutableDictionary setObject:forKey:](v3->_zoneIDToArchivedReceipts, "setObject:forKey:", v10, [createRecordIDForMovedRecord zoneID]);
          }

          v18 = @"movedAt";
          movedAt = [v8 movedAt];
          [v10 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", &movedAt, &v18, 1), objc_msgSend(createRecordIDForMovedRecord, "recordName")}];
        }

        v5 = [encode countByEnumeratingWithState:&v13 objects:v20 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (void)dealloc
{
  self->_zoneIDToArchivedReceipts = 0;
  v3.receiver = self;
  v3.super_class = NSCKRecordMetadataReceiptArchive;
  [(NSCKRecordMetadataReceiptArchive *)&v3 dealloc];
}

- (NSCKRecordMetadataReceiptArchive)initWithCoder:(id)coder
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSCKRecordMetadataReceiptArchive;
  v4 = [(NSCKRecordMetadataReceiptArchive *)&v7 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v8[0] = objc_opt_class();
    getCloudKitCKRecordZoneIDClass[0]();
    v8[1] = objc_opt_class();
    v8[2] = objc_opt_class();
    v8[3] = objc_opt_class();
    v4->_zoneIDToArchivedReceipts = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 4)), @"archiveDictionary"}];
  }

  return v4;
}

- (void)enumerateArchivedRecordIDsUsingBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_zoneIDToArchivedReceipts;
  v16 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v14 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v4;
        v5 = *(*(&v22 + 1) + 8 * v4);
        v6 = [(NSMutableDictionary *)self->_zoneIDToArchivedReceipts objectForKey:v5];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v18 + 1) + 8 * i);
              v12 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:v11 zoneID:v5];
              (*(block + 2))(block, v12, [objc_msgSend(v6 objectForKey:{v11), "objectForKey:", @"movedAt"}]);
            }

            v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }

        v4 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }
}

@end