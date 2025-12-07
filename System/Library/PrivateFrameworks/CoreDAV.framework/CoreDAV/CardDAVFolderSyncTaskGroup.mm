@interface CardDAVFolderSyncTaskGroup
- (CardDAVFolderSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions syncItemOrder:(BOOL)order context:(id)context accountInfoProvider:(id)provider taskManager:(id)self0 appSpecificDataItemClass:(Class)self1;
- (id)copyGetTaskWithURL:(id)l;
- (id)copyMultiGetTaskWithURLs:(id)ls;
- (void)applyAdditionalPropertiesFromPutTask:(id)task;
@end

@implementation CardDAVFolderSyncTaskGroup

- (CardDAVFolderSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions syncItemOrder:(BOOL)order context:(id)context accountInfoProvider:(id)provider taskManager:(id)self0 appSpecificDataItemClass:(Class)self1
{
  v12.receiver = self;
  v12.super_class = CardDAVFolderSyncTaskGroup;
  result = [(CoreDAVContainerSyncTaskGroup *)&v12 initWithFolderURL:l previousCTag:tag previousSyncToken:token actions:actions syncItemOrder:order context:context accountInfoProvider:provider taskManager:manager];
  if (result)
  {
    result->super._appSpecificDataItemClass = class;
  }

  return result;
}

- (id)copyMultiGetTaskWithURLs:(id)ls
{
  lsCopy = ls;
  v5 = [[CardDAVFolderMultiGetTask alloc] initWithURLs:lsCopy atContainerURL:self->super._folderURL appSpecificDataItemClass:self->super._appSpecificDataItemClass];

  return v5;
}

- (id)copyGetTaskWithURL:(id)l
{
  lCopy = l;
  v4 = [(CoreDAVTask *)[CardDAVFolderGetTask alloc] initWithURL:lCopy];

  return v4;
}

- (void)applyAdditionalPropertiesFromPutTask:(id)task
{
  taskCopy = task;
  responseHeaders = [taskCopy responseHeaders];
  v5 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"Location"];

  if (v5)
  {
    delegate = [(CoreDAVTaskGroup *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(CoreDAVTaskGroup *)self delegate];
      v9 = [taskCopy url];
      v10 = [delegate2 setExternalLocation:v5 forItemWithURL:v9 inFolderWithURL:self->super._folderURL];

      if (v10)
      {
        locationChangedURLs = self->super._locationChangedURLs;
        v12 = [taskCopy url];
        [(NSMutableSet *)locationChangedURLs addObject:v12];
      }
    }
  }
}

@end