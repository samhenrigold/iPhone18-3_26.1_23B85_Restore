@interface ICDFileEnumerator
- (ICDFileEnumerator)initWithFileObjectID:(id)d itemIdentifier:(id)identifier recursive:(BOOL)recursive request:(id)request fileProviderManager:(id)manager;
- (void)invalidate;
- (void)invalidateChangeToken;
- (void)watchItemWithUpdateSender:(id)sender options:(unsigned __int16)options errorHandler:(id)handler gatherReply:(id)reply;
@end

@implementation ICDFileEnumerator

- (ICDFileEnumerator)initWithFileObjectID:(id)d itemIdentifier:(id)identifier recursive:(BOOL)recursive request:(id)request fileProviderManager:(id)manager
{
  recursiveCopy = recursive;
  identifierCopy = identifier;
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = ICDFileEnumerator;
  v14 = [(BRBaseFileEnumerator *)&v21 initWithFileObjectID:d itemIdentifier:identifierCopy recursive:recursiveCopy fileProviderManager:manager];
  v15 = v14;
  if (v14)
  {
    v14->_hasBoostedItemIdentifier = 0;
    objc_storeStrong(&v14->_request, request);
    if ([identifierCopy br_isBoostableItemIdentifier])
    {
      queue = v15->super._queue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10001A634;
      v18[3] = &unk_100045180;
      v19 = v15;
      v20 = identifierCopy;
      dispatch_async(queue, v18);
    }
  }

  return v15;
}

- (void)watchItemWithUpdateSender:(id)sender options:(unsigned __int16)options errorHandler:(id)handler gatherReply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (sender)
  {
    handlerCopy = handler;
    v12 = [sender remoteObjectProxyWithErrorHandler:handlerCopy];

    [v12 watchItemWithFileObjectID:self->super._fileObjectID options:optionsCopy request:self->_request gatherReply:replyCopy];
  }

  else
  {
    v13 = (handler + 16);
    handlerCopy2 = handler;
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_10002836C(v15, v16);
    }

    v17 = [NSError br_errorWithDomain:BRInternalErrorDomain code:15 description:@"unreachable: Can't watch an item without a sender"];
    (*v13)(handlerCopy2, v17);
  }
}

- (void)invalidateChangeToken
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000283E4(v3, v4);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_hasBoostedItemIdentifier = 0;
  v6.receiver = selfCopy;
  v6.super_class = ICDFileEnumerator;
  [(BRBaseFileEnumerator *)&v6 invalidateChangeToken];
  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasBoostedItemIdentifier = selfCopy->_hasBoostedItemIdentifier;
  selfCopy->_hasBoostedItemIdentifier = 0;
  objc_sync_exit(selfCopy);

  if (hasBoostedItemIdentifier)
  {
    queue = selfCopy->super._queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AB6C;
    block[3] = &unk_1000446B0;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  v5.receiver = selfCopy;
  v5.super_class = ICDFileEnumerator;
  [(BRBaseFileEnumerator *)&v5 invalidate];
}

@end