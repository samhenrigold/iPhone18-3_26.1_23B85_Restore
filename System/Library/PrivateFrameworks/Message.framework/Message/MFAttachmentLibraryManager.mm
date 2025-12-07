@interface MFAttachmentLibraryManager
- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library;
- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error;
- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes;
- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes updatingFlags:(BOOL)flags;
- (void)removeProviderForBaseURL:(id)l;
@end

@implementation MFAttachmentLibraryManager

- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library
{
  libraryCopy = library;
  v5 = [(MFAttachmentComposeManager *)self init];
  if (v5)
  {
    dataProvider = [libraryCopy dataProvider];
    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach"];
    v8 = [[MFMailDropAttachmentDataProvider alloc] initWithLibrary:libraryCopy];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach-maildrop"];
    v10 = [(MFAttachmentLibraryDataProvider *)[MFMailDropAttachmentPreviewDataProvider alloc] initWithLibrary:libraryCopy];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach-maildrop-image"];
    [(MFAttachmentManager *)v5 addProvider:dataProvider forBaseURL:v7];
    [(MFAttachmentManager *)v5 addProvider:v8 forBaseURL:v9];
    [(MFAttachmentManager *)v5 addProvider:v10 forBaseURL:v11];
  }

  return v5;
}

- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error
{
  lCopy = l;
  v24.receiver = self;
  v24.super_class = MFAttachmentLibraryManager;
  v25 = 0;
  v7 = [(MFAttachmentManager *)&v24 _dataProviderForAttachmentURL:lCopy error:&v25];
  v8 = v25;
  if (!v7)
  {
    providers = self->super.super._providers;
    scheme = [lCopy scheme];
    v11 = [(NSMutableDictionary *)providers objectForKeyedSubscript:scheme];

    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(NSMutableDictionary *)self->super.super._providers objectForKeyedSubscript:@"x-attach"];
      v7 = v12;
      if (error && !v12)
      {
        if (v8)
        {
          userInfo = [v8 userInfo];
          v14 = [userInfo mutableCopy];

          v22 = v14;
          v15 = [v14 objectForKey:@"MFLocalizedDescriptionKey"];
          v16 = [v14 objectForKey:@"MFErrorTitleKey"];
          domain = [v8 domain];
          [v22 removeObjectForKey:@"MFLocalizedDescriptionKey"];
          v18 = v15;
          v19 = v16;
          v20 = domain;
          [v22 removeObjectForKey:@"MFErrorTitleKey"];
        }

        else
        {
          v20 = @"MFMessageErrorDomain";
          v22 = 0;
          v19 = @"No Provider Found";
          v18 = @"Could not find a provider for the given URL.";
        }

        *error = [MFError errorWithDomain:v20 code:1030 localizedDescription:v18 title:v19 userInfo:v22, v22];

        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)removeProviderForBaseURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v6 = [absoluteString isEqualToString:@"x-attach://"];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = MFAttachmentLibraryManager;
    [(MFAttachmentManager *)&v7 removeProviderForBaseURL:lCopy];
  }
}

- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes
{
  v4 = [(MFAttachmentLibraryManager *)self attachmentsForMessage:message withSchemes:schemes updatingFlags:1];

  return v4;
}

- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes updatingFlags:(BOOL)flags
{
  flagsCopy = flags;
  v29 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  schemesCopy = schemes;
  array = [MEMORY[0x1E695DF70] array];
  [messageCopy messageBodyIfAvailableUpdatingFlags:flagsCopy];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v21 = v25 = 0u;
  obj = [v21 attachments];
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        mimePart = [*(*(&v24 + 1) + 8 * i) mimePart];
        partURL = [mimePart partURL];

        if (([messageCopy messageFlags] & 8) != 0)
        {
          v16 = 0;
        }

        else
        {
          v15 = [(MFAttachmentLibraryManager *)self _dataProviderForAttachmentURL:partURL error:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = 0;
          }

          else
          {
            v16 = v21;
          }
        }

        if (!schemesCopy || ([partURL scheme], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(schemesCopy, "containsObject:", v17), v17, (v18 & 1) != 0))
        {
          v19 = [(MFAttachmentManager *)self attachmentForURL:partURL withMimeBody:v16 error:0];
          if (v19)
          {
            [array addObject:v19];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  return array;
}

@end