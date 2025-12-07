@interface BLTBulletinSendQueueAttachmentSender
- (BLTBulletinSendQueueAttachmentSender)init;
- (BOOL)sendAttachmentsWithSender:(id)sender timeout:(id)timeout completion:(id)completion;
- (void)addAttachment:(id)attachment key:(id)key;
@end

@implementation BLTBulletinSendQueueAttachmentSender

- (BLTBulletinSendQueueAttachmentSender)init
{
  v6.receiver = self;
  v6.super_class = BLTBulletinSendQueueAttachmentSender;
  v2 = [(BLTBulletinSendQueueAttachmentSender *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    urls = v2->_urls;
    v2->_urls = array;
  }

  return v2;
}

- (void)addAttachment:(id)attachment key:(id)key
{
  if (attachment)
  {
    keyCopy = key;
    attachmentCopy = attachment;
    v8 = objc_alloc_init(BLTBulletinSendQueueAttachmentInfo);
    [(BLTBulletinSendQueueAttachmentInfo *)v8 setUrl:attachmentCopy];

    [(BLTBulletinSendQueueAttachmentInfo *)v8 setKey:keyCopy];
    [(NSMutableArray *)self->_urls addObject:v8];
  }
}

- (BOOL)sendAttachmentsWithSender:(id)sender timeout:(id)timeout completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  timeoutCopy = timeout;
  completionCopy = completion;
  v11 = [(NSMutableArray *)self->_urls count];
  if (v11)
  {
    v23 = v11;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setIdsMetadataFileURLType:1];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
    obj = self->_urls;
    v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [v17 key];
          [dictionary setIdsMetadataFileKey:v18];

          v19 = [v17 url];
          v20 = [dictionary copy];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __85__BLTBulletinSendQueueAttachmentSender_sendAttachmentsWithSender_timeout_completion___block_invoke;
          v26[3] = &unk_278D31A20;
          v27 = completionCopy;
          [senderCopy sendFileURL:v19 withTimeout:timeoutCopy extraMetadata:v20 responseHandlers:0 didSend:v26 didQueue:0];
        }

        v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)selfCopy->_urls removeAllObjects];
    v11 = v23;
  }

  v21 = v11 != 0;

  return v21;
}

uint64_t __85__BLTBulletinSendQueueAttachmentSender_sendAttachmentsWithSender_timeout_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end