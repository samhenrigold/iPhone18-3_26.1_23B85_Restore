@interface MFAttachmentCompositionContext
- (MFAttachmentCompositionContext)init;
- (MFAttachmentCompositionContext)initWithContextID:(id)d;
- (NSArray)attachments;
- (void)dealloc;
@end

@implementation MFAttachmentCompositionContext

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  attachments = [(MFAttachmentCompositionContext *)self attachments];
  v4 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = +[MFAttachmentManager defaultManager];
        v10 = [v8 url];
        [v9 removeAttachmentForURL:v10];

        v11 = +[MFAttachmentManager defaultManager];
        [v11 clearMetadataForAttachment:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = +[MFAttachmentManager defaultManager];
  attachmentsBaseURL = [(MFAttachmentCompositionContext *)self attachmentsBaseURL];
  [v12 removeProviderForBaseURL:attachmentsBaseURL];

  v14.receiver = self;
  v14.super_class = MFAttachmentCompositionContext;
  [(MFAttachmentCompositionContext *)&v14 dealloc];
}

- (MFAttachmentCompositionContext)init
{
  mf_UUID = [MEMORY[0x277CCACA8] mf_UUID];
  v4 = [(MFAttachmentCompositionContext *)self initWithContextID:mf_UUID];

  return v4;
}

- (MFAttachmentCompositionContext)initWithContextID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MFAttachmentCompositionContext;
  v6 = [(MFAttachmentCompositionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextID, d);
  }

  return v7;
}

- (NSArray)attachments
{
  v3 = +[MFAttachmentManager defaultManager];
  contextID = [(MFAttachmentCompositionContext *)self contextID];
  v5 = [v3 attachmentsForContext:contextID];

  return v5;
}

@end