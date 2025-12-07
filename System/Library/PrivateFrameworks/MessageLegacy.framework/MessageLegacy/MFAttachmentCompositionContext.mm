@interface MFAttachmentCompositionContext
- (MFAttachmentCompositionContext)init;
- (MFAttachmentCompositionContext)initWithContextID:(id)d;
- (NSArray)attachments;
- (void)dealloc;
@end

@implementation MFAttachmentCompositionContext

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  attachments = [(MFAttachmentCompositionContext *)self attachments];
  v4 = [(NSArray *)attachments countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];
        [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)attachments countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];

  v9.receiver = self;
  v9.super_class = MFAttachmentCompositionContext;
  [(MFAttachmentCompositionContext *)&v9 dealloc];
}

- (MFAttachmentCompositionContext)init
{
  mf_UUID = [MEMORY[0x277CCACA8] mf_UUID];

  return [(MFAttachmentCompositionContext *)self initWithContextID:mf_UUID];
}

- (MFAttachmentCompositionContext)initWithContextID:(id)d
{
  v6.receiver = self;
  v6.super_class = MFAttachmentCompositionContext;
  v4 = [(MFAttachmentCompositionContext *)&v6 init];
  if (v4)
  {
    v4->_contextID = d;
  }

  return v4;
}

- (NSArray)attachments
{
  v3 = +[MFAttachmentManager defaultManager];
  contextID = [(MFAttachmentCompositionContext *)self contextID];

  return [v3 attachmentsForContext:contextID];
}

@end