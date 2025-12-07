@interface EDAttachmentPersistence
+ (OS_os_log)log;
+ (id)attachmentTableSchema;
+ (id)hashForAttachmentData:(id)data;
+ (id)hashForAttachmentName:(id)name;
+ (id)messageAttachmentTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (BOOL)insertMessageAttachmentMetadata:(id)metadata;
- (BOOL)messageAttachmentExistsForGlobalMessageID:(int64_t)d mimePartNumber:(id)number hasAttachmentEntry:(BOOL *)entry;
- (BOOL)messageAttachmentExistsForGlobalMessageID:(int64_t)d remoteURL:(id)l hasAttachmentEntry:(BOOL *)entry;
- (BOOL)removeAttachments:(id)attachments;
- (BOOL)updateAttachmentIDForMessageAttachment:(id)attachment;
- (EDAttachmentPersistence)initWithDatabase:(id)database;
- (id)attachmentMetadataForMessage:(int64_t)message mimePartNumber:(id)number;
- (id)attachmentMetadataForMessage:(int64_t)message remoteURL:(id)l;
- (id)attachmentMetadataForMessageAttachmentID:(id)d;
- (id)attachmentMetadataForMessageIDs:(id)ds;
- (id)attachmentsForGlobalMessageIDs:(id)ds;
- (id)globalMessageIDsForAttachment:(id)attachment;
- (id)messageAttachmentMetadataForMessageID:(int64_t)d;
- (id)uniqueAttachmentDataForHash:(id)hash;
- (int64_t)insertAttachmentMetadata:(id)metadata;
- (void)enumerateAttachmentsInfoForGlobalMessageIDs:(id)ds withBlock:(id)block;
- (void)insertMimePartAttachments:(id)attachments forGlobalMessageID:(int64_t)d;
@end

@implementation EDAttachmentPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__EDAttachmentPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_11 != -1)
  {
    dispatch_once(&log_onceToken_11, block);
  }

  v2 = log_log_11;

  return v2;
}

void __30__EDAttachmentPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_11;
  log_log_11 = v1;
}

+ (id)attachmentTableSchema
{
  v14[7] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = +[EDAttachmentPersistence attachmentsTableName];
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"size" nullable:0 defaultValue:&unk_1F45E65B0];
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"hash" collation:1 nullable:{1, v4}];
  v14[1] = v5;
  v6 = [MEMORY[0x1E699B8D0] textColumnWithName:@"file_name_on_file_system" collation:1 nullable:1];
  v14[2] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"viewed_count" nullable:0 defaultValue:&unk_1F45E65B0];
  v14[3] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_viewed" nullable:0 defaultValue:&unk_1F45E65B0];
  v14[4] = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"viewed_by_tapped_count" nullable:0 defaultValue:&unk_1F45E65B0];
  v14[5] = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_last_downloaded" nullable:0 defaultValue:&unk_1F45E65B0];
  v14[6] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:7];
  v12 = [v2 initWithName:v3 rowIDType:2 columns:v11];

  return v12;
}

+ (id)messageAttachmentTableSchema
{
  v35[5] = *MEMORY[0x1E69E9840];
  v29 = [MEMORY[0x1E699B8D0] textColumnWithName:@"mime_part_number" collation:1 nullable:1];
  v28 = [MEMORY[0x1E699B8D0] textColumnWithName:@"remote_url" collation:1 nullable:1];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"global_message_id" nullable:0];
  v35[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"attachment" nullable:1];
  v35[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"name" collation:1 nullable:0];
  v35[2] = v5;
  v35[3] = v29;
  v35[4] = v28;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5];
  v7 = [v2 initWithName:@"message_attachments" rowIDType:2 columns:v6];

  v34[0] = @"global_message_id";
  v34[1] = @"mime_part_number";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v7 addUniquenessConstraintForColumns:v8 conflictResolution:1];

  v33[0] = @"global_message_id";
  v33[1] = @"remote_url";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v7 addUniquenessConstraintForColumns:v9 conflictResolution:1];

  v10 = objc_alloc(MEMORY[0x1E699B898]);
  columnExpression = [v29 columnExpression];
  isNotNull = [columnExpression isNotNull];
  v32[0] = isNotNull;
  columnExpression2 = [v28 columnExpression];
  isNull = [columnExpression2 isNull];
  v32[1] = isNull;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v16 = [v10 initWithExpressions:v15];

  v17 = objc_alloc(MEMORY[0x1E699B898]);
  columnExpression3 = [v29 columnExpression];
  isNull2 = [columnExpression3 isNull];
  v31[0] = isNull2;
  columnExpression4 = [v28 columnExpression];
  isNotNull2 = [columnExpression4 isNotNull];
  v31[1] = isNotNull2;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v23 = [v17 initWithExpressions:v22];

  v24 = objc_alloc(MEMORY[0x1E699B928]);
  v30[0] = v16;
  v30[1] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v26 = [v24 initWithExpressions:v25];

  [v7 addCheckConstraintForExpression:v26];

  return v7;
}

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [EDAttachmentPersistence attachmentTableSchema:resolve];
  v20[0] = @"hash";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v5 addUniquenessConstraintForColumns:v6 conflictResolution:1];

  v7 = +[EDAttachmentPersistence messageAttachmentTableSchema];
  v8 = [EDPersistenceForeignKeyPlaceholder alloc];
  v9 = [v7 columnForName:@"global_message_id"];
  v10 = +[EDMessagePersistence messageGlobalDataTableName];
  v11 = [(EDPersistenceForeignKeyPlaceholder *)v8 initWithColumn:v9 tableName:v10 onDelete:2 onUpdate:0];
  v19[0] = v11;
  v12 = [EDPersistenceForeignKeyPlaceholder alloc];
  v13 = [v7 columnForName:@"attachment"];
  v14 = +[EDAttachmentPersistence attachmentsTableName];
  v15 = [(EDPersistenceForeignKeyPlaceholder *)v12 initWithColumn:v13 tableName:v14 onDelete:0 onUpdate:0];
  v19[1] = v15;
  *resolve = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  v18[0] = v5;
  v18[1] = v7;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  return v16;
}

+ (id)hashForAttachmentData:(id)data
{
  dataCopy = data;
  v4 = [MEMORY[0x1E695DF88] dataWithLength:32];
  CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), objc_msgSend(v4, "mutableBytes"));
  ef_hexString = [v4 ef_hexString];

  return ef_hexString;
}

+ (id)hashForAttachmentName:(id)name
{
  v4 = [name dataUsingEncoding:4];
  v5 = [self hashForAttachmentData:v4];

  return v5;
}

- (EDAttachmentPersistence)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = EDAttachmentPersistence;
  v6 = [(EDAttachmentPersistence *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

- (int64_t)insertAttachmentMetadata:(id)metadata
{
  metadataCopy = metadata;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = *MEMORY[0x1E699A728];
  downloadDate = [metadataCopy downloadDate];
  v6 = downloadDate;
  if (downloadDate)
  {
    date = downloadDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v8 = date;

  v9 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"attachments" conflictResolution:3];
  v10 = [metadataCopy size];
  [v9 setObject:v10 forKeyedSubscript:@"size"];

  attachmentHash = [metadataCopy attachmentHash];
  [v9 setObject:attachmentHash forKeyedSubscript:@"hash"];

  nameOnDisk = [metadataCopy nameOnDisk];
  [v9 setObject:nameOnDisk forKeyedSubscript:@"file_name_on_file_system"];

  [v9 setObject:v8 forKeyedSubscript:@"date_last_downloaded"];
  database = [(EDAttachmentPersistence *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence insertAttachmentMetadata:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__EDAttachmentPersistence_insertAttachmentMetadata___block_invoke;
  v19[3] = &unk_1E8250288;
  v15 = v9;
  v20 = v15;
  v16 = metadataCopy;
  v21 = v16;
  v22 = &v23;
  [database __performWriteWithCaller:v14 usingBlock:v19];

  v17 = v24[3];
  _Block_object_dispose(&v23, 8);

  return v17;
}

uint64_t __52__EDAttachmentPersistence_insertAttachmentMetadata___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = 0;
  v5 = [v3 executeInsertStatement:v4 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [v3 lastInsertedDatabaseID];
    *(*(*(a1 + 48) + 8) + 24) = v7;
    v8 = EDAttachmentsLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 48) + 8) + 24);
      v10 = [*(a1 + 40) attachmentHash];
      *buf = 134349314;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Inserted attachment: %{public}lld hash: %{public}@ into attachments table", buf, 0x16u);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v8 = [*(a1 + 40) attachmentHash];
    v12 = [v11 stringWithFormat:@"Unable to insert attachment with hash: %@ into attachments table", v8];
    [v3 handleError:v6 message:v12];
  }

  return v5;
}

- (BOOL)insertMessageAttachmentMetadata:(id)metadata
{
  metadataCopy = metadata;
  globalMessageID = [metadataCopy globalMessageID];
  v7 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"message_attachments" conflictResolution:4];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:globalMessageID];
  [v7 setObject:v8 forKeyedSubscript:@"global_message_id"];

  name = [metadataCopy name];

  if (name)
  {
    name2 = [metadataCopy name];
    [v7 setObject:name2 forKeyedSubscript:@"name"];
  }

  attachmentID = [metadataCopy attachmentID];
  if (attachmentID)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:*MEMORY[0x1E699A728]];
    v13 = [attachmentID isEqualToNumber:v12];

    if ((v13 & 1) == 0)
    {
      [v7 setObject:attachmentID forKeyedSubscript:@"attachment"];
    }
  }

  mimePartNumber = [metadataCopy mimePartNumber];
  if (mimePartNumber)
  {
    remoteURL = [metadataCopy remoteURL];

    if (remoteURL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EDAttachmentPersistence.m" lineNumber:217 description:@"We should never have both a mime part number and a maildrop URL for a message."];
    }
  }

  mimePartNumber2 = [metadataCopy mimePartNumber];

  if (mimePartNumber2)
  {
    mimePartNumber3 = [metadataCopy mimePartNumber];
    [v7 setObject:mimePartNumber3 forKeyedSubscript:@"mime_part_number"];
  }

  remoteURL2 = [metadataCopy remoteURL];
  v20 = remoteURL2;
  if (remoteURL2)
  {
    absoluteString = [remoteURL2 absoluteString];
    [v7 setObject:absoluteString forKeyedSubscript:@"remote_url"];
  }

  database = [(EDAttachmentPersistence *)self database];
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence insertMessageAttachmentMetadata:]"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __59__EDAttachmentPersistence_insertMessageAttachmentMetadata___block_invoke;
  v28[3] = &unk_1E82502B0;
  v24 = v7;
  v29 = v24;
  v25 = metadataCopy;
  v30 = v25;
  v31 = globalMessageID;
  v26 = [database __performWriteWithCaller:v23 usingBlock:v28];

  return v26;
}

uint64_t __59__EDAttachmentPersistence_insertMessageAttachmentMetadata___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v23 = 0;
  v5 = [v3 executeInsertStatement:v4 error:&v23];
  v6 = v23;
  v7 = v6;
  if (v5)
  {
    v8 = MEMORY[0x1E699B858];
    v9 = [*(a1 + 40) name];
    v10 = [v8 fullyOrPartiallyRedactedStringForString:v9];

    v12 = EDAttachmentsLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) mimePartNumber];
      v14 = *(a1 + 48);
      *buf = 138543874;
      v25 = v10;
      v26 = 2114;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Inserted attachment: '%{public}@' (MIME part %{public}@) for globalMessageID: %lld into message_attachments table", buf, 0x20u);
    }

    goto LABEL_11;
  }

  v15 = [v6 domain];
  if (![v15 isEqualToString:*MEMORY[0x1E699B770]])
  {

    goto LABEL_10;
  }

  v16 = [v7 code] == 19;

  if (!v16)
  {
LABEL_10:
    v20 = MEMORY[0x1E696AEC0];
    v10 = [*(a1 + 40) name];
    v21 = [v20 stringWithFormat:@"Unable to insert attachment: %@ for globalMessageID: %lld into message_attachments table", v10, *(a1 + 48)];
    [v3 handleError:v7 message:v21];

    goto LABEL_11;
  }

  v10 = EDAttachmentsLog(v17);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) mimePartNumber];
    v19 = *(a1 + 48);
    *buf = 138543618;
    v25 = v18;
    v26 = 2048;
    v27 = v19;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Constraint while trying to insert attachment (MIME part %{public}@) for globalMessageID: %lld into message_attachments table", buf, 0x16u);
  }

LABEL_11:

  return v5;
}

- (BOOL)updateAttachmentIDForMessageAttachment:(id)attachment
{
  v34[2] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  attachmentID = [attachmentCopy attachmentID];
  globalMessageID = [attachmentCopy globalMessageID];
  mimePartNumber = [attachmentCopy mimePartNumber];
  v5 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"message_attachments"];
  [v5 setObject:attachmentID forKeyedSubscript:@"attachment"];
  v6 = objc_alloc(MEMORY[0x1E699B898]);
  v7 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:globalMessageID];
  v9 = [v7 equalTo:v8];
  v34[0] = v9;
  v10 = [MEMORY[0x1E699B8C8] column:@"mime_part_number"];
  v11 = [v10 equalTo:mimePartNumber];
  v34[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v13 = [v6 initWithExpressions:v12];
  [v5 setWhereClause:v13];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  database = [(EDAttachmentPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence updateAttachmentIDForMessageAttachment:]"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__EDAttachmentPersistence_updateAttachmentIDForMessageAttachment___block_invoke;
  v24[3] = &unk_1E82502D8;
  v16 = v5;
  v25 = v16;
  v28 = &v30;
  v29 = globalMessageID;
  v17 = mimePartNumber;
  v26 = v17;
  v18 = attachmentID;
  v27 = v18;
  if ([database __performWriteWithCaller:v15 usingBlock:v24])
  {
    v19 = *(v31 + 24);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v30, 8);
  return v19 & 1;
}

uint64_t __66__EDAttachmentPersistence_updateAttachmentIDForMessageAttachment___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0;
  v4 = [v3 executeUpdateStatement:a1[4] rowsChanged:&v14];
  v5 = v4;
  *(*(a1[7] + 8) + 24) = v4;
  if (v4)
  {
    if (v14)
    {
      v6 = EDAttachmentsLog(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[8];
        v9 = a1[5];
        v8 = a1[6];
        *buf = 138543874;
        v16 = v8;
        v17 = 2048;
        v18 = v7;
        v19 = 2114;
        v20 = v9;
        _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Updated row with attachment reference: %{public}@, globalMessageID: %lld, mimePart: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v10 = EDAttachmentsLog(v4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[8];
        v12 = a1[5];
        *buf = 134218242;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "No matching rows found for attachment globalMessageID: %lld, mimePart: %{public}@", buf, 0x16u);
      }

      *(*(a1[7] + 8) + 24) = 0;
    }
  }

  return v5;
}

- (id)attachmentsForGlobalMessageIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = [(EDAttachmentPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence attachmentsForGlobalMessageIDs:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__EDAttachmentPersistence_attachmentsForGlobalMessageIDs___block_invoke;
  v13[3] = &unk_1E8250328;
  v8 = dsCopy;
  v14 = v8;
  v9 = v5;
  v15 = v9;
  [database __performReadWithCaller:v7 usingBlock:v13];

  v10 = v15;
  v11 = v9;

  return v9;
}

uint64_t __58__EDAttachmentPersistence_attachmentsForGlobalMessageIDs___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] allColumns];
  v6 = +[EDAttachmentPersistence messageAttachmentsTableName];
  v7 = [v4 initWithResult:v5 table:v6];

  v8 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v9 = [v8 in:*(a1 + 32)];

  [v7 setWhere:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__EDAttachmentPersistence_attachmentsForGlobalMessageIDs___block_invoke_2;
  v18[3] = &unk_1E8250300;
  v19 = *(a1 + 40);
  v17 = 0;
  v10 = [v3 executeSelectStatement:v7 withBlock:v18 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v11)
  {
    v11 = [v3 handleError:v11 message:@"Determine which attachments are referenced by globalMessageIDs"];
  }

  v13 = EDAttachmentsLog(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 138543618;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Found attachments %{public}@ for globalMessageIDs %@", buf, 0x16u);
  }

  return v10;
}

void __58__EDAttachmentPersistence_attachmentsForGlobalMessageIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v5 = [a2 objectForKeyedSubscript:@"attachment"];
  v4 = [v3 numberWithLongLong:{objc_msgSend(v5, "databaseIDValue")}];
  [v2 addObject:v4];
}

- (id)globalMessageIDsForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = [(EDAttachmentPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence globalMessageIDsForAttachment:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__EDAttachmentPersistence_globalMessageIDsForAttachment___block_invoke;
  v13[3] = &unk_1E8250328;
  v8 = attachmentCopy;
  v14 = v8;
  v9 = v5;
  v15 = v9;
  [database __performReadWithCaller:v7 usingBlock:v13];

  v10 = v15;
  v11 = v9;

  return v9;
}

uint64_t __57__EDAttachmentPersistence_globalMessageIDsForAttachment___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] allColumns];
  v6 = +[EDAttachmentPersistence messageAttachmentsTableName];
  v7 = [v4 initWithResult:v5 table:v6];

  v8 = [MEMORY[0x1E699B8C8] column:@"attachment"];
  v9 = [v8 equalTo:*(a1 + 32)];

  [v7 setWhere:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__EDAttachmentPersistence_globalMessageIDsForAttachment___block_invoke_2;
  v18[3] = &unk_1E8250300;
  v19 = *(a1 + 40);
  v17 = 0;
  v10 = [v3 executeSelectStatement:v7 withBlock:v18 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v11)
  {
    v11 = [v3 handleError:v11 message:@"Determine which attachments are referenced by globalMessageIDs"];
  }

  v13 = EDAttachmentsLog(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 138543618;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Found globalMessageIDs %{public}@ for attachment %{public}@", buf, 0x16u);
  }

  return v10;
}

void __57__EDAttachmentPersistence_globalMessageIDsForAttachment___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v5 = [a2 objectForKeyedSubscript:@"global_message_id"];
  v4 = [v3 numberWithLongLong:{objc_msgSend(v5, "databaseIDValue")}];
  [v2 addObject:v4];
}

- (BOOL)removeAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  database = [(EDAttachmentPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence removeAttachments:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__EDAttachmentPersistence_removeAttachments___block_invoke;
  v9[3] = &unk_1E8250350;
  v7 = attachmentsCopy;
  v10 = v7;
  v11 = &v12;
  [database __performWriteWithCaller:v6 usingBlock:v9];

  LOBYTE(attachmentsCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return attachmentsCopy;
}

uint64_t __45__EDAttachmentPersistence_removeAttachments___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EDAttachmentsLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Removing attachments %@ from the attachments table", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v7 = [v6 in:*(a1 + 32)];

  v8 = objc_alloc(MEMORY[0x1E699B8E8]);
  v9 = +[EDAttachmentPersistence attachmentsTableName];
  v10 = [v8 initWithTable:v9 where:v7];

  v15 = 0;
  v11 = [v3 executeDeleteStatement:v10 error:&v15];
  v12 = v15;
  *(*(*(a1 + 40) + 8) + 24) = v11;
  if (v12)
  {
    [v3 handleError:v12 message:@"Removing unexpected messages from attachments table"];
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);

  return v13 & 1;
}

- (BOOL)messageAttachmentExistsForGlobalMessageID:(int64_t)d mimePartNumber:(id)number hasAttachmentEntry:(BOOL *)entry
{
  v37[2] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v8 = objc_alloc(MEMORY[0x1E699B948]);
  allColumns = [MEMORY[0x1E699B8C8] allColumns];
  v23 = [v8 initWithResult:allColumns table:@"message_attachments"];

  v10 = MEMORY[0x1E699B898];
  v11 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v13 = [v11 equalTo:v12];
  v37[0] = v13;
  v14 = [MEMORY[0x1E699B8C8] column:@"mime_part_number"];
  v15 = [v14 equalTo:numberCopy];
  v37[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v17 = [v10 combined:v16];
  [v23 setWhere:v17];

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = *MEMORY[0x1E699A728];
  database = [(EDAttachmentPersistence *)self database];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence messageAttachmentExistsForGlobalMessageID:mimePartNumber:hasAttachmentEntry:]"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __103__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_mimePartNumber_hasAttachmentEntry___block_invoke;
  v25[3] = &unk_1E82503A0;
  v20 = v23;
  v26 = v20;
  v28 = &v33;
  dCopy = d;
  entryCopy = entry;
  v29 = v32;
  v21 = numberCopy;
  v27 = v21;
  [database __performReadWithCaller:v19 usingBlock:v25];

  LOBYTE(v19) = *(v34 + 24);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v33, 8);

  return v19 & 1;
}

uint64_t __103__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_mimePartNumber_hasAttachmentEntry___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v17 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_mimePartNumber_hasAttachmentEntry___block_invoke_2;
  v18[3] = &unk_1E8250378;
  v4 = *(a1 + 72);
  v20 = *(a1 + 64);
  v21 = v4;
  v19 = *(a1 + 48);
  v5 = [a2 executeSelectStatement:v3 withBlock:v18 error:&v17];
  v6 = v17;
  v7 = v6;
  if (v6)
  {
    v8 = EDAttachmentsLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 64);
      v10 = *(a1 + 40);
      *buf = 134218498;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Failed to check if message attachment identifier and attachmennt identifier exist for messageID %lld mimePartNumber: %{public}@ with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (**(a1 + 72))
    {
      v11 = @"Found";
    }

    else
    {
      v11 = @"Did not find";
    }

    v8 = v11;
    v12 = EDAttachmentsLog(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      v14 = *(*(*(a1 + 56) + 8) + 24);
      v15 = *(a1 + 40);
      *buf = 138544130;
      v23 = v8;
      v24 = 2048;
      v25 = v14;
      v26 = 2048;
      v27 = v13;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ attachment identifier %lld for messageID %lld mimePartNumber: %{public}@", buf, 0x2Au);
    }
  }

  return v5;
}

void __103__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_mimePartNumber_hasAttachmentEntry___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"global_message_id"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue] == *(a1 + 48);

  v4 = [v7 objectForKeyedSubscript:@"attachment"];
  v5 = [v4 numberValue];
  **(a1 + 56) = v5 != 0;

  v6 = [v7 objectForKeyedSubscript:@"attachment"];
  *(*(*(a1 + 40) + 8) + 24) = [v6 databaseIDValue];
}

- (BOOL)messageAttachmentExistsForGlobalMessageID:(int64_t)d remoteURL:(id)l hasAttachmentEntry:(BOOL *)entry
{
  v37[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v8 = objc_alloc(MEMORY[0x1E699B948]);
  allColumns = [MEMORY[0x1E699B8C8] allColumns];
  entryCopy = entry;
  v24 = [v8 initWithResult:allColumns table:@"message_attachments"];

  v10 = MEMORY[0x1E699B898];
  v11 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v13 = [v11 equalTo:v12];
  v37[0] = v13;
  v14 = [MEMORY[0x1E699B8C8] column:@"remote_url"];
  absoluteString = [lCopy absoluteString];
  v16 = [v14 equalTo:absoluteString];
  v37[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v18 = [v10 combined:v17];
  [v24 setWhere:v18];

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = *MEMORY[0x1E699A728];
  database = [(EDAttachmentPersistence *)self database];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence messageAttachmentExistsForGlobalMessageID:remoteURL:hasAttachmentEntry:]"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __98__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_remoteURL_hasAttachmentEntry___block_invoke;
  v26[3] = &unk_1E82503C8;
  v21 = v24;
  v27 = v21;
  v28 = &v33;
  dCopy = d;
  v31 = entryCopy;
  v29 = v32;
  [database __performReadWithCaller:v20 usingBlock:v26];

  LOBYTE(v20) = *(v34 + 24);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v33, 8);

  return v20 & 1;
}

uint64_t __98__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_remoteURL_hasAttachmentEntry___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v15 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_remoteURL_hasAttachmentEntry___block_invoke_2;
  v16[3] = &unk_1E8250378;
  v4 = *(a1 + 64);
  v18 = *(a1 + 56);
  v19 = v4;
  v17 = *(a1 + 40);
  v5 = [a2 executeSelectStatement:v3 withBlock:v16 error:&v15];
  v6 = v15;
  v7 = v6;
  if (v6)
  {
    v8 = EDAttachmentsLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      *buf = 134218242;
      v21 = v9;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Failed to check if message attachment identifier and attachmennt identifier exist for messageID %lld remoteURL with error %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (**(a1 + 64))
    {
      v10 = @"Found";
    }

    else
    {
      v10 = @"Did not find";
    }

    v8 = v10;
    v11 = EDAttachmentsLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 56);
      v13 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 138543874;
      v21 = v8;
      v22 = 2048;
      v23 = v13;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ attachment identifier %lld for messageID %lld and remoteURL@", buf, 0x20u);
    }
  }

  return v5;
}

void __98__EDAttachmentPersistence_messageAttachmentExistsForGlobalMessageID_remoteURL_hasAttachmentEntry___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"global_message_id"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue] == *(a1 + 48);

  v4 = [v7 objectForKeyedSubscript:@"attachment"];
  v5 = [v4 numberValue];
  **(a1 + 56) = v5 != 0;

  v6 = [v7 objectForKeyedSubscript:@"attachment"];
  *(*(*(a1 + 40) + 8) + 24) = [v6 databaseIDValue];
}

- (id)messageAttachmentMetadataForMessageID:(int64_t)d
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = [(EDAttachmentPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence messageAttachmentMetadataForMessageID:]"];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __65__EDAttachmentPersistence_messageAttachmentMetadataForMessageID___block_invoke;
  v17 = &unk_1E82503F0;
  dCopy = d;
  v8 = v5;
  v18 = v8;
  [database __performReadWithCaller:v7 usingBlock:&v14];

  v10 = EDAttachmentsLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v8;
    v22 = 2048;
    dCopy2 = d;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Found attachments metadata %{public}@ for message %lld", buf, 0x16u);
  }

  if ([v8 count])
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __65__EDAttachmentPersistence_messageAttachmentMetadataForMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] allColumns];
  v6 = [v4 initWithResult:v5 table:@"message_attachments"];

  v7 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v9 = [v7 equalTo:v8];
  [v6 setWhere:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__EDAttachmentPersistence_messageAttachmentMetadataForMessageID___block_invoke_2;
  v14[3] = &unk_1E8250300;
  v15 = *(a1 + 32);
  v13 = 0;
  v10 = [v3 executeSelectStatement:v6 withBlock:v14 error:&v13];
  v11 = v13;

  return v10;
}

void __65__EDAttachmentPersistence_messageAttachmentMetadataForMessageID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [EDMessageAttachmentMetadata messageMetadataFromRow:a2];
  [v2 addObject:?];
}

- (id)uniqueAttachmentDataForHash:(id)hash
{
  v26 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  database = [(EDAttachmentPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence uniqueAttachmentDataForHash:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__EDAttachmentPersistence_uniqueAttachmentDataForHash___block_invoke;
  v13[3] = &unk_1E8250350;
  v7 = hashCopy;
  v14 = v7;
  v15 = &v16;
  [database __performReadWithCaller:v6 usingBlock:v13];

  v9 = EDAttachmentsLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v17[5];
    *buf = 138543618;
    v23 = v10;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Found attachment metadata %{public}@ for hash %{public}@", buf, 0x16u);
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __55__EDAttachmentPersistence_uniqueAttachmentDataForHash___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] allColumns];
  v6 = [v4 initWithResult:v5 table:@"attachments"];

  v7 = [MEMORY[0x1E699B8C8] column:@"hash"];
  v8 = [v7 equalTo:*(a1 + 32)];
  [v6 setWhere:v8];

  [v6 setLimit:1];
  v11 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__EDAttachmentPersistence_uniqueAttachmentDataForHash___block_invoke_2;
  v12[3] = &unk_1E8250418;
  v12[4] = *(a1 + 40);
  [v3 executeSelectStatement:v6 withBlock:v12 error:&v11];
  v9 = v11;
  if (v9)
  {
    [v3 handleError:v9 message:@"Failed to fetch attachment reference in message_attachments table"];
  }

  return 1;
}

void __55__EDAttachmentPersistence_uniqueAttachmentDataForHash___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [EDAttachmentMetadata alloc];
  v4 = [v11 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  v5 = [v4 numberValue];
  v6 = [v11 objectForKeyedSubscript:@"file_name_on_file_system"];
  v7 = [v6 stringValue];
  v8 = [(EDAttachmentMetadata *)v3 initWithAttachmentID:v5 nameOnDisk:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)attachmentMetadataForMessageIDs:(id)ds
{
  v26[4] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26[0] = @"global_message_id";
  v26[1] = @"attachment";
  v26[2] = @"file_name_on_file_system";
  v26[3] = @"name";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  v7 = [v6 componentsJoinedByString:{@", "}];

  v8 = objc_alloc(MEMORY[0x1E699B948]);
  v9 = [MEMORY[0x1E699B8C8] column:v7];
  v10 = [v8 initWithResult:v9 table:@"message_attachments"];

  v11 = [v10 leftOuterJoin:@"attachments" sourceColumn:@"attachment" targetColumn:*MEMORY[0x1E699B768]];
  v12 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v13 = [v12 in:dsCopy];
  [v10 setWhere:v13];

  database = [(EDAttachmentPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence attachmentMetadataForMessageIDs:]"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__EDAttachmentPersistence_attachmentMetadataForMessageIDs___block_invoke;
  v22[3] = &unk_1E8250440;
  v16 = v10;
  v23 = v16;
  v17 = v5;
  v24 = v17;
  v18 = dsCopy;
  v25 = v18;
  [database __performReadWithCaller:v15 usingBlock:v22];

  v19 = v25;
  v20 = v17;

  return v17;
}

uint64_t __59__EDAttachmentPersistence_attachmentMetadataForMessageIDs___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__EDAttachmentPersistence_attachmentMetadataForMessageIDs___block_invoke_2;
  v11[3] = &unk_1E8250300;
  v4 = *(a1 + 32);
  v12 = *(a1 + 40);
  v10 = 0;
  [a2 executeSelectStatement:v4 withBlock:v11 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = EDAttachmentsLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__EDAttachmentPersistence_attachmentMetadataForMessageIDs___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = EDAttachmentsLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Found attachment metadata for messages %{public}@", buf, 0xCu);
    }
  }

  return 1;
}

void __59__EDAttachmentPersistence_attachmentMetadataForMessageIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [EDAttachmentMetadata attachmentMetadataFromRow:v3];
  v5 = [v3 objectForKeyedSubscript:@"name"];
  v6 = [v5 stringValue];

  v7 = [v3 objectForKeyedSubscript:@"global_message_id"];
  v8 = [v7 numberValue];

  v9 = [MEMORY[0x1E699B848] pairWithFirst:v4 second:v6];
  v10 = [*(a1 + 32) objectForKey:v8];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v12 = [*(a1 + 32) objectForKey:v8];
    v13 = [v11 initWithArray:v12];

    [v13 addObject:v9];
    [*(a1 + 32) setObject:v13 forKey:v8];
  }

  else
  {
    v14 = *(a1 + 32);
    v16[0] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v14 setObject:v15 forKey:v8];
  }
}

- (id)attachmentMetadataForMessage:(int64_t)message mimePartNumber:(id)number
{
  v44[2] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v6 = objc_alloc(MEMORY[0x1E699B948]);
  allColumns = [MEMORY[0x1E699B8C8] allColumns];
  v8 = [v6 initWithResult:allColumns table:@"message_attachments"];

  v9 = [v8 leftOuterJoin:@"attachments" sourceColumn:@"attachment" targetColumn:*MEMORY[0x1E699B768]];
  v10 = MEMORY[0x1E699B898];
  v11 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:message];
  v13 = [v11 equalTo:v12];
  v44[0] = v13;
  v14 = [MEMORY[0x1E699B8C8] column:@"mime_part_number"];
  v15 = [v14 equalTo:numberCopy];
  v44[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v17 = [v10 combined:v16];
  [v8 setWhere:v17];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  database = [(EDAttachmentPersistence *)self database];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence attachmentMetadataForMessage:mimePartNumber:]"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__EDAttachmentPersistence_attachmentMetadataForMessage_mimePartNumber___block_invoke;
  v26[3] = &unk_1E8250490;
  v20 = v8;
  v27 = v20;
  v29 = &v38;
  v30 = &v32;
  messageCopy = message;
  v21 = numberCopy;
  v28 = v21;
  [database __performReadWithCaller:v19 usingBlock:v26];

  v22 = [EDAttachment alloc];
  v23 = [(EDAttachment *)v22 initWithAttachmentMetadata:v39[5] messageMetadata:v33[5]];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v23;
}

uint64_t __71__EDAttachmentPersistence_attachmentMetadataForMessage_mimePartNumber___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v11 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__EDAttachmentPersistence_attachmentMetadataForMessage_mimePartNumber___block_invoke_2;
  v12[3] = &unk_1E8250468;
  v13 = *(a1 + 48);
  [a2 executeSelectStatement:v3 withBlock:v12 error:&v11];
  v4 = v11;
  v5 = v4;
  if (v4)
  {
    v6 = EDAttachmentsLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__EDAttachmentPersistence_attachmentMetadataForMessage_mimePartNumber___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = EDAttachmentsLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 40);
      v9 = [*(*(*(a1 + 48) + 8) + 40) attachmentID];
      *buf = 134218498;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Found attachment metadata for message %lld mime part %{public}@ attachmentID %{public}@", buf, 0x20u);
    }
  }

  return 1;
}

void __71__EDAttachmentPersistence_attachmentMetadataForMessage_mimePartNumber___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [EDAttachmentMetadata attachmentMetadataFromRow:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [EDMessageAttachmentMetadata messageMetadataFromRow:v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)attachmentMetadataForMessage:(int64_t)message remoteURL:(id)l
{
  v46[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = objc_alloc(MEMORY[0x1E699B948]);
  allColumns = [MEMORY[0x1E699B8C8] allColumns];
  v8 = [v6 initWithResult:allColumns table:@"message_attachments"];

  v26 = v8;
  v9 = [v8 leftOuterJoin:@"attachments" sourceColumn:@"attachment" targetColumn:*MEMORY[0x1E699B768]];
  v10 = MEMORY[0x1E699B898];
  v11 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:message];
  v13 = [v11 equalTo:v12];
  v46[0] = v13;
  v14 = [MEMORY[0x1E699B8C8] column:@"remote_url"];
  absoluteString = [lCopy absoluteString];
  v16 = [v14 equalTo:absoluteString];
  v46[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v18 = [v10 combined:v17];
  [v26 setWhere:v18];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  database = [(EDAttachmentPersistence *)self database];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence attachmentMetadataForMessage:remoteURL:]"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__EDAttachmentPersistence_attachmentMetadataForMessage_remoteURL___block_invoke;
  v28[3] = &unk_1E8250490;
  v21 = v26;
  v29 = v21;
  v31 = &v40;
  v32 = &v34;
  messageCopy = message;
  v22 = lCopy;
  v30 = v22;
  [database __performReadWithCaller:v20 usingBlock:v28];

  v23 = [EDAttachment alloc];
  v24 = [(EDAttachment *)v23 initWithAttachmentMetadata:v41[5] messageMetadata:v35[5]];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v24;
}

uint64_t __66__EDAttachmentPersistence_attachmentMetadataForMessage_remoteURL___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v11 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__EDAttachmentPersistence_attachmentMetadataForMessage_remoteURL___block_invoke_2;
  v12[3] = &unk_1E8250468;
  v13 = *(a1 + 48);
  [a2 executeSelectStatement:v3 withBlock:v12 error:&v11];
  v4 = v11;
  v5 = v4;
  if (v4)
  {
    v6 = EDAttachmentsLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__EDAttachmentPersistence_attachmentMetadataForMessage_remoteURL___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = EDAttachmentsLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 40);
      v9 = [*(*(*(a1 + 48) + 8) + 40) attachmentID];
      *buf = 134218498;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Found attachment metadata for message %lld remoteURL %@ attachmentID %{public}@", buf, 0x20u);
    }
  }

  return 1;
}

void __66__EDAttachmentPersistence_attachmentMetadataForMessage_remoteURL___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [EDAttachmentMetadata attachmentMetadataFromRow:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [EDMessageAttachmentMetadata messageMetadataFromRow:v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)attachmentMetadataForMessageAttachmentID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(MEMORY[0x1E699B948]);
  allColumns = [MEMORY[0x1E699B8C8] allColumns];
  v7 = [v5 initWithResult:allColumns table:@"message_attachments"];

  v8 = [v7 leftOuterJoin:@"attachments" sourceColumn:@"attachment" targetColumn:*MEMORY[0x1E699B768]];
  v9 = [MEMORY[0x1E699B8C8] column:@"message_attachments.rowid"];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dCopy, "databaseID")}];
  v11 = [v9 equalTo:v10];
  [v7 setWhere:v11];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  database = [(EDAttachmentPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence attachmentMetadataForMessageAttachmentID:]"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __68__EDAttachmentPersistence_attachmentMetadataForMessageAttachmentID___block_invoke;
  v22 = &unk_1E82504B8;
  v14 = v7;
  v23 = v14;
  v25 = &v33;
  v26 = &v27;
  v15 = dCopy;
  v24 = v15;
  [database __performReadWithCaller:v13 usingBlock:&v19];

  if (v34[5])
  {
    v16 = [EDAttachment alloc];
    v17 = [(EDAttachment *)v16 initWithAttachmentMetadata:v34[5] messageMetadata:v28[5], v19, v20, v21, v22, v23];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

uint64_t __68__EDAttachmentPersistence_attachmentMetadataForMessageAttachmentID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__EDAttachmentPersistence_attachmentMetadataForMessageAttachmentID___block_invoke_2;
  v11[3] = &unk_1E8250468;
  v12 = *(a1 + 48);
  [a2 executeSelectStatement:v3 withBlock:v11 error:&v10];
  v4 = v10;
  v5 = v4;
  if (v4)
  {
    v6 = EDAttachmentsLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__EDAttachmentPersistence_attachmentMetadataForMessageAttachmentID___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = EDAttachmentsLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(*(*(a1 + 48) + 8) + 40) attachmentID];
      *buf = 138412546;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Found attachment metadata for messageAttachmentID %@ attachmentID %{public}@", buf, 0x16u);
    }
  }

  return 1;
}

void __68__EDAttachmentPersistence_attachmentMetadataForMessageAttachmentID___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [EDAttachmentMetadata attachmentMetadataFromRow:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [EDMessageAttachmentMetadata messageMetadataFromRow:v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)insertMimePartAttachments:(id)attachments forGlobalMessageID:(int64_t)d
{
  attachmentsCopy = attachments;
  if ([attachmentsCopy count] && *MEMORY[0x1E699A728] != d)
  {
    database = [(EDAttachmentPersistence *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence insertMimePartAttachments:forGlobalMessageID:]"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__EDAttachmentPersistence_insertMimePartAttachments_forGlobalMessageID___block_invoke;
    v9[3] = &unk_1E82503F0;
    v10 = attachmentsCopy;
    dCopy = d;
    [database __performWriteWithCaller:v8 usingBlock:v9];
  }
}

uint64_t __72__EDAttachmentPersistence_insertMimePartAttachments_forGlobalMessageID___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v29 = [a2 preparedStatementForQueryString:{@"INSERT OR IGNORE INTO message_attachments (global_message_id, name, mime_part_number) VALUES (:global_id, :name, :mime)"}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v3)
  {
    v5 = *v33;
    *&v4 = 138543874;
    v27 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [v7 first];
        v9 = @"1";
        if (([v8 isEqualToString:&stru_1F45B4608] & 1) == 0)
        {
          v9 = [v7 first];
        }

        v10 = [v7 first];
        v11 = [v10 isEqualToString:&stru_1F45B4608];

        if (v11)
        {
          v13 = EDAttachmentsLog(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 40);
            *buf = 134217984;
            v37 = v14;
            _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Updated MIME part to 1 for message with global id %lld", buf, 0xCu);
          }
        }

        if (v9)
        {
          v15 = [v7 second];
          v16 = v15;
          v17 = @"attachment";
          if (v15)
          {
            v17 = v15;
          }

          v18 = v17;

          v31 = 0;
          v42[0] = @":global_id";
          v19 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
          v43[0] = v19;
          v43[1] = v18;
          v42[1] = @":name";
          v42[2] = @":mime";
          v43[2] = v9;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

          v30 = 0;
          LOBYTE(v19) = [v29 executeWithNamedBindings:v20 rowsChanged:&v31 error:&v30];
          v21 = v30;
          v22 = v21;
          if (v19)
          {
            if (!v31)
            {
              v23 = EDAttachmentsLog(v21);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(a1 + 40);
                *buf = 138543618;
                v37 = v9;
                v38 = 2048;
                v39 = v24;
                _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Message attachment for part '%{public}@', global message ID %lld already exists. Not inserting.", buf, 0x16u);
              }

              goto LABEL_21;
            }
          }

          else
          {
            v23 = EDAttachmentsLog(v21);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v25 = *(a1 + 40);
              *buf = v27;
              v37 = v9;
              v38 = 2048;
              v39 = v25;
              v40 = 2114;
              v41 = v22;
              _os_log_error_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_ERROR, "Failed to insert message attachment for part '%{public}@', global message ID %lld: error %{public}@", buf, 0x20u);
            }

LABEL_21:
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v3);
  }

  return 1;
}

- (void)enumerateAttachmentsInfoForGlobalMessageIDs:(id)ds withBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  if ([dsCopy count])
  {
    database = [(EDAttachmentPersistence *)self database];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDAttachmentPersistence enumerateAttachmentsInfoForGlobalMessageIDs:withBlock:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__EDAttachmentPersistence_enumerateAttachmentsInfoForGlobalMessageIDs_withBlock___block_invoke;
    v10[3] = &unk_1E8250528;
    v11 = dsCopy;
    v12 = blockCopy;
    [database __performReadWithCaller:v9 usingBlock:v10];
  }
}

uint64_t __81__EDAttachmentPersistence_enumerateAttachmentsInfoForGlobalMessageIDs_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ef_map:&__block_literal_global_4];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT message_attachments.global_message_id, message_attachments.mime_part_number, attachments.rowid, attachments.file_name_on_file_system FROM message_attachments LEFT JOIN attachments ON attachments.rowid == message_attachments.attachment WHERE message_attachments.global_message_id in (%@)", v5];
  v7 = [v3 preparedStatementForQueryString:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__EDAttachmentPersistence_enumerateAttachmentsInfoForGlobalMessageIDs_withBlock___block_invoke_3;
  v13[3] = &unk_1E8250500;
  v14 = *(a1 + 40);
  v12 = 0;
  LOBYTE(a1) = [v7 executeUsingBlock:v13 error:&v12];
  v8 = v12;
  v9 = v8;
  if ((a1 & 1) == 0)
  {
    v10 = EDAttachmentsLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __81__EDAttachmentPersistence_enumerateAttachmentsInfoForGlobalMessageIDs_withBlock___block_invoke_cold_1(v9, v10);
    }
  }

  return 1;
}

id __81__EDAttachmentPersistence_enumerateAttachmentsInfoForGlobalMessageIDs_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];

  return v2;
}

void __81__EDAttachmentPersistence_enumerateAttachmentsInfoForGlobalMessageIDs_withBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectAtIndexedSubscript:0];
  [v3 int64Value];

  v4 = [v9 objectAtIndexedSubscript:1];
  v5 = [v4 stringValue];

  v6 = [v9 objectAtIndexedSubscript:2];
  [v6 int64Value];

  v7 = [v9 objectAtIndexedSubscript:3];
  v8 = [v7 stringValue];

  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __59__EDAttachmentPersistence_attachmentMetadataForMessageIDs___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_ERROR, "Failed to fetch attachment metadata for messages %{public}@", v1, 0xCu);
}

void __71__EDAttachmentPersistence_attachmentMetadataForMessage_mimePartNumber___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __66__EDAttachmentPersistence_attachmentMetadataForMessage_remoteURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __68__EDAttachmentPersistence_attachmentMetadataForMessageAttachmentID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __81__EDAttachmentPersistence_enumerateAttachmentsInfoForGlobalMessageIDs_withBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to get message attachment for global message IDs: error %{public}@", &v2, 0xCu);
}

@end