@interface REMReminderAttachmentContextChangeItem
- (NSArray)attachments;
- (NSArray)fileAttachments;
- (NSArray)imageAttachments;
- (NSArray)urlAttachments;
- (REMReminderAttachmentContextChangeItem)initWithReminderChangeItem:(id)item;
- (id)addFileAttachmentWithData:(id)data uti:(id)uti;
- (id)addFileAttachmentWithURL:(id)l error:(id *)error;
- (id)addImageAttachmentWithData:(id)data uti:(id)uti width:(unint64_t)width height:(unint64_t)height;
- (id)addImageAttachmentWithURL:(id)l width:(unint64_t)width height:(unint64_t)height error:(id *)error;
- (id)addURLAttachmentWithURL:(id)l;
- (id)attachmentsOfClass:(Class)class;
- (id)newObjectIDForFileAttachment;
- (id)newObjectIDForImageAttachment;
- (id)newObjectIDForURLAttachment;
- (id)setURLAttachmentWithURL:(id)l;
- (void)insertAttachment:(id)attachment afterAttachment:(id)afterAttachment;
- (void)insertAttachment:(id)attachment beforeAttachment:(id)beforeAttachment;
- (void)removeAllAttachments;
- (void)removeAllAttachmentsWithClass:(Class)class;
- (void)removeAttachment:(id)attachment;
- (void)removeURLAttachments;
@end

@implementation REMReminderAttachmentContextChangeItem

- (REMReminderAttachmentContextChangeItem)initWithReminderChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMReminderAttachmentContextChangeItem;
  v6 = [(REMReminderAttachmentContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, item);
  }

  return v7;
}

- (NSArray)attachments
{
  reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  attachments = [reminderChangeItem attachments];

  return attachments;
}

- (id)attachmentsOfClass:(Class)class
{
  attachments = [(REMReminderAttachmentContextChangeItem *)self attachments];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__REMReminderAttachmentContextChangeItem_attachmentsOfClass___block_invoke;
  v8[3] = &__block_descriptor_40_e26_B24__0__REMAttachment_8_16lu32l8;
  v8[4] = class;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [attachments filteredArrayUsingPredicate:v5];

  return v6;
}

- (NSArray)fileAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContextChangeItem *)self attachmentsOfClass:v3];
}

- (NSArray)imageAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContextChangeItem *)self attachmentsOfClass:v3];
}

- (NSArray)urlAttachments
{
  v3 = objc_opt_class();

  return [(REMReminderAttachmentContextChangeItem *)self attachmentsOfClass:v3];
}

- (id)addFileAttachmentWithURL:(id)l error:(id *)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = *MEMORY[0x1E695DC68];
  v8 = *MEMORY[0x1E695DB50];
  v21[0] = *MEMORY[0x1E695DC68];
  v21[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v10 = [lCopy resourceValuesForKeys:v9 error:error];

  if (v10)
  {
    v20 = [v10 objectForKeyedSubscript:v7];
    v19 = [v10 objectForKeyedSubscript:v8];
    newObjectIDForFileAttachment = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForFileAttachment];
    v12 = [REMFileAttachment alloc];
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    accountID = [reminderChangeItem accountID];
    reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    objectID = [reminderChangeItem2 objectID];
    v17 = -[REMFileAttachment initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:](v12, "initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:", newObjectIDForFileAttachment, accountID, objectID, v20, [v19 unsignedLongLongValue], lCopy, 0);

    [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v17 afterAttachment:0];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)addFileAttachmentWithData:(id)data uti:(id)uti
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  utiCopy = uti;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138412802;
    v19 = reminderChangeItem;
    v20 = 2048;
    v21 = [dataCopy length];
    v22 = 2112;
    v23 = utiCopy;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding data attachment {reminderChangeItem: %@, data.length: %ld, uti: %@}", buf, 0x20u);
  }

  newObjectIDForFileAttachment = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForFileAttachment];
  v11 = [REMFileAttachment alloc];
  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem2 accountID];
  reminderChangeItem3 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem3 objectID];
  v16 = -[REMFileAttachment initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:](v11, "initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:", newObjectIDForFileAttachment, accountID, objectID, utiCopy, [dataCopy length], 0, dataCopy);

  [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v16 afterAttachment:0];

  return v16;
}

- (id)addImageAttachmentWithURL:(id)l width:(unint64_t)width height:(unint64_t)height error:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11 = *MEMORY[0x1E695DC68];
  v12 = *MEMORY[0x1E695DB50];
  v29[0] = *MEMORY[0x1E695DC68];
  v29[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v14 = [lCopy resourceValuesForKeys:v13 error:error];

  if (v14)
  {
    [v14 objectForKeyedSubscript:v11];
    v28 = v26 = width;
    v15 = [v14 objectForKeyedSubscript:v12];
    newObjectIDForImageAttachment = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForImageAttachment];
    v17 = lCopy;
    v18 = [REMImageAttachment alloc];
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    accountID = [reminderChangeItem accountID];
    reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    objectID = [reminderChangeItem2 objectID];
    unsignedLongLongValue = [v15 unsignedLongLongValue];
    v23 = v18;
    lCopy = v17;
    v24 = [(REMImageAttachment *)v23 initWithObjectID:newObjectIDForImageAttachment accountID:accountID reminderID:objectID UTI:v28 fileSize:unsignedLongLongValue fileURL:v17 data:0 width:v26 height:height];

    [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v24 afterAttachment:0];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)addImageAttachmentWithData:(id)data uti:(id)uti width:(unint64_t)width height:(unint64_t)height
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  utiCopy = uti;
  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138413058;
    v23 = reminderChangeItem;
    v24 = 2048;
    v25 = [dataCopy length];
    v26 = 2048;
    widthCopy = width;
    v28 = 2048;
    heightCopy = height;
    _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_INFO, "Adding image attachment {reminderChangeItem: %@, data.length: %ld, width: %ld, height: %ld}", buf, 0x2Au);
  }

  newObjectIDForImageAttachment = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForImageAttachment];
  v14 = [REMImageAttachment alloc];
  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem2 accountID];
  reminderChangeItem3 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem3 objectID];
  v19 = -[REMImageAttachment initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:width:height:](v14, "initWithObjectID:accountID:reminderID:UTI:fileSize:fileURL:data:width:height:", newObjectIDForImageAttachment, accountID, objectID, utiCopy, [dataCopy length], 0, dataCopy, width, height);

  [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v19 afterAttachment:0];

  return v19;
}

- (id)setURLAttachmentWithURL:(id)l
{
  lCopy = l;
  [(REMReminderAttachmentContextChangeItem *)self removeURLAttachments];
  v5 = [(REMReminderAttachmentContextChangeItem *)self addURLAttachmentWithURL:lCopy];

  return v5;
}

- (id)addURLAttachmentWithURL:(id)l
{
  lCopy = l;
  newObjectIDForURLAttachment = [(REMReminderAttachmentContextChangeItem *)self newObjectIDForURLAttachment];
  v6 = [REMURLAttachment alloc];
  reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem accountID];
  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem2 objectID];
  v11 = [(REMURLAttachment *)v6 initWithObjectID:newObjectIDForURLAttachment accountID:accountID reminderID:objectID url:lCopy metadata:0];

  [(REMReminderAttachmentContextChangeItem *)self insertAttachment:v11 afterAttachment:0];

  return v11;
}

- (void)removeURLAttachments
{
  v3 = objc_opt_class();

  [(REMReminderAttachmentContextChangeItem *)self removeAllAttachmentsWithClass:v3];
}

- (void)insertAttachment:(id)attachment beforeAttachment:(id)beforeAttachment
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  beforeAttachmentCopy = beforeAttachment;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v15 = 138412802;
    v16 = reminderChangeItem;
    v17 = 2112;
    v18 = attachmentCopy;
    v19 = 2112;
    v20 = beforeAttachmentCopy;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding attachment before attachment {reminderChangeItem: %@, attachment: %@, siblisngAttachment: %@}", &v15, 0x20u);
  }

  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  attachments = [reminderChangeItem2 attachments];
  v12 = [attachments mutableCopy];

  if (v12)
  {
    if (!beforeAttachmentCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!beforeAttachmentCopy)
    {
LABEL_8:
      v13 = 0;
      goto LABEL_9;
    }
  }

  v13 = [v12 indexOfObject:beforeAttachmentCopy];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v12 insertObject:attachmentCopy atIndex:v13];
  reminderChangeItem3 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem3 setAttachments:v12];
}

- (void)insertAttachment:(id)attachment afterAttachment:(id)afterAttachment
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  afterAttachmentCopy = afterAttachment;
  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v15 = 138412802;
    v16 = reminderChangeItem;
    v17 = 2112;
    v18 = attachmentCopy;
    v19 = 2112;
    v20 = afterAttachmentCopy;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Adding attachment after attachment {reminderChangeItem: %@, attachment: %@, siblisngAttachment: %@}", &v15, 0x20u);
  }

  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  attachments = [reminderChangeItem2 attachments];
  v12 = [attachments mutableCopy];

  if (v12)
  {
    if (!afterAttachmentCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!afterAttachmentCopy)
    {
      goto LABEL_8;
    }
  }

  v13 = [v12 indexOfObject:afterAttachmentCopy];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 insertObject:attachmentCopy atIndex:v13 + 1];
    goto LABEL_10;
  }

LABEL_8:
  [v12 addObject:attachmentCopy];
LABEL_10:
  reminderChangeItem3 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem3 setAttachments:v12];
}

- (void)removeAttachment:(id)attachment
{
  v19 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138412546;
    v16 = reminderChangeItem;
    v17 = 2112;
    v18 = attachmentCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing attachment {reminderChangeItem: %@, attachment: %@}", buf, 0x16u);
  }

  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  attachments = [reminderChangeItem2 attachments];
  v9 = [attachments mutableCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__REMReminderAttachmentContextChangeItem_removeAttachment___block_invoke;
  v13[3] = &unk_1E7507A08;
  v10 = attachmentCopy;
  v14 = v10;
  v11 = [v9 indexOfObjectPassingTest:v13];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeObjectAtIndex:v11];
    reminderChangeItem3 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    [reminderChangeItem3 setAttachments:v9];
  }
}

uint64_t __59__REMReminderAttachmentContextChangeItem_removeAttachment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [*(a1 + 32) objectID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)removeAllAttachments
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    v6 = 138412290;
    v7 = reminderChangeItem;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all attachments {reminderChangeItem: %@}", &v6, 0xCu);
  }

  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem2 setAttachments:MEMORY[0x1E695E0F0]];
}

- (void)removeAllAttachmentsWithClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
    *buf = 138412546;
    v14 = reminderChangeItem;
    v15 = 2112;
    classCopy = class;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing all attachments {reminderChangeItem: %@} for class %@", buf, 0x16u);
  }

  reminderChangeItem2 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  attachments = [reminderChangeItem2 attachments];
  v9 = [attachments mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__REMReminderAttachmentContextChangeItem_removeAllAttachmentsWithClass___block_invoke;
  v12[3] = &__block_descriptor_40_e40_B24__0__REMAttachment_8__NSDictionary_16lu32l8;
  v12[4] = class;
  v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v12];
  [v9 filterUsingPredicate:v10];

  reminderChangeItem3 = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem3 setAttachments:v9];
}

- (id)newObjectIDForURLAttachment
{
  reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem objectID];
  entityName = [objectID entityName];
  v5 = +[REMTemplate cdEntityNameForSavedReminder];
  v6 = [entityName isEqualToString:v5];

  if (v6)
  {

    return +[REMTemplate newObjectIDForSavedAttachment];
  }

  else
  {

    return +[(REMAttachment *)REMURLAttachment];
  }
}

- (id)newObjectIDForFileAttachment
{
  reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem objectID];
  entityName = [objectID entityName];
  v5 = +[REMTemplate cdEntityNameForSavedReminder];
  v6 = [entityName isEqualToString:v5];

  if (v6)
  {

    return +[REMTemplate newObjectIDForSavedAttachment];
  }

  else
  {

    return +[(REMAttachment *)REMFileAttachment];
  }
}

- (id)newObjectIDForImageAttachment
{
  reminderChangeItem = [(REMReminderAttachmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem objectID];
  entityName = [objectID entityName];
  v5 = +[REMTemplate cdEntityNameForSavedReminder];
  v6 = [entityName isEqualToString:v5];

  if (v6)
  {

    return +[REMTemplate newObjectIDForSavedAttachment];
  }

  else
  {

    return +[(REMAttachment *)REMImageAttachment];
  }
}

@end