@interface MFAttachmentLibraryManager
- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library;
- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error;
- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes;
- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)removeProviderForBaseURL:(id)l;
@end

@implementation MFAttachmentLibraryManager

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = MFAttachmentLibraryManager;
  [(MFAttachmentComposeManager *)&v3 dealloc];
}

- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library
{
  v4 = [(MFAttachmentManager *)self init];
  if (v4)
  {
    dataProvider = [library dataProvider];
    -[MFAttachmentManager addProvider:forBaseURL:](v4, "addProvider:forBaseURL:", dataProvider, [MEMORY[0x277CBEBC0] URLWithString:@"x-attach"]);
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v4;
}

- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [objc_msgSend(notification "userInfo")];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v15 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(obj);
        }

        libraryID = [*(*(&v20 + 1) + 8 * i) libraryID];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        allKeys = [(NSMutableDictionary *)self->super.super._metadata allKeys];
        v9 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(allKeys);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              if ([v13 mf_rowID] == libraryID)
              {
                [(NSMutableDictionary *)self->super.super._metadata removeObjectForKey:v13];
              }
            }

            v10 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }
}

- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error
{
  v13.receiver = self;
  v13.super_class = MFAttachmentLibraryManager;
  v14 = 0;
  result = [(MFAttachmentManager *)&v13 _dataProviderForAttachmentURL:l error:&v14];
  if (!result)
  {
    v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->super.super._providers, "objectForKeyedSubscript:", [l scheme]);
    if (!v8)
    {
      v8 = [(NSMutableDictionary *)self->super.super._providers objectForKeyedSubscript:@"x-attach"];
    }

    result = v8;
    if (error && !result)
    {
      if (v14)
      {
        v9 = [objc_msgSend(v14 "userInfo")];
        v10 = [v9 objectForKey:@"MFLocalizedDescriptionKey"];
        v11 = [v9 objectForKey:@"MFErrorTitleKey"];
        domain = [v14 domain];
        [v9 removeObjectForKey:@"MFLocalizedDescriptionKey"];
        [v9 removeObjectForKey:@"MFErrorTitleKey"];
      }

      else
      {
        v9 = 0;
        domain = @"MFMessageErrorDomain";
        v11 = @"No Provider Found";
        v10 = @"Could not find a provider for the given URL.";
      }

      *error = [MFError errorWithDomain:domain code:1030 localizedDescription:v10 title:v11 userInfo:v9];

      return 0;
    }
  }

  return result;
}

- (void)removeProviderForBaseURL:(id)l
{
  if (([objc_msgSend(l "absoluteString")] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = MFAttachmentLibraryManager;
    [(MFAttachmentManager *)&v5 removeProviderForBaseURL:l];
  }
}

- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  messageBodyIfAvailable = [message messageBodyIfAvailable];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attachments = [messageBodyIfAvailable attachments];
  v9 = [attachments countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(attachments);
        }

        v13 = [objc_msgSend(*(*(&v18 + 1) + 8 * v12) "mimePart")];
        if (([message messageFlags] & 8) != 0)
        {
          v14 = 0;
          if (schemes)
          {
            goto LABEL_13;
          }
        }

        else
        {
          [(MFAttachmentLibraryManager *)self _dataProviderForAttachmentURL:v13 error:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = 0;
          }

          else
          {
            v14 = messageBodyIfAvailable;
          }

          if (schemes)
          {
LABEL_13:
            if (![schemes containsObject:{objc_msgSend(v13, "scheme")}])
            {
              goto LABEL_16;
            }
          }
        }

        v15 = [(MFAttachmentManager *)self attachmentForURL:v13 withMimeBody:v14 error:0];
        if (v15)
        {
          [array addObject:v15];
        }

LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v10 = [attachments countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return array;
}

@end