@interface IMBalloonPluginManagerModel
- (BOOL)hasCompletedInitialization;
- (BOOL)hasDeferredInstalledAppsChangedNotification;
- (Class)richLinksDataSourceClass;
- (IMBalloonPluginManagerModel)init;
- (NSString)pluginMetaDataFolder;
- (id)extensionMatchingContext;
- (id)highMemoryExtensionMatchingContext;
- (void)setExtensionMatchingContext:(id)context;
- (void)setHasCompletedInitialization:(BOOL)initialization;
- (void)setHasDeferredInstalledAppsChangedNotification:(BOOL)notification;
- (void)setHighMemoryExtensionMatchingContext:(id)context;
- (void)setPluginIDToMetadataCache:(id)cache;
- (void)setPluginMetaDataFolder:(id)folder;
- (void)setPluginsToRemoveAfterExtensionsUpdate:(id)update;
- (void)setRichLinksDataSourceClass:(Class)class;
@end

@implementation IMBalloonPluginManagerModel

- (IMBalloonPluginManagerModel)init
{
  v14.receiver = self;
  v14.super_class = IMBalloonPluginManagerModel;
  v2 = [(IMBalloonPluginManagerModel *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.IMCore.IMBalloonPluginManagerModel", v4);
    dataQueue = v2->_dataQueue;
    v2->_dataQueue = v5;

    v7 = [[IMThreadSafeBalloonPluginMap alloc] initWithConcurrentDataQueue:v2->_dataQueue];
    pluginsMap = v2->_pluginsMap;
    v2->_pluginsMap = v7;

    dictionary = [MEMORY[0x1E695DF20] dictionary];
    pluginIDToMetadataCache = v2->_pluginIDToMetadataCache;
    v2->_pluginIDToMetadataCache = dictionary;

    v11 = [MEMORY[0x1E695DFD8] set];
    pluginsToRemoveAfterExtensionsUpdate = v2->_pluginsToRemoveAfterExtensionsUpdate;
    v2->_pluginsToRemoveAfterExtensionsUpdate = v11;
  }

  return v2;
}

- (BOOL)hasCompletedInitialization
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasCompletedInitialization = selfCopy->_hasCompletedInitialization;
  objc_sync_exit(selfCopy);

  return hasCompletedInitialization;
}

- (BOOL)hasDeferredInstalledAppsChangedNotification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasDeferredInstalledAppsChangedNotification = selfCopy->_hasDeferredInstalledAppsChangedNotification;
  objc_sync_exit(selfCopy);

  return hasDeferredInstalledAppsChangedNotification;
}

- (void)setExtensionMatchingContext:(id)context
{
  contextCopy = context;
  obj = self;
  objc_sync_enter(obj);
  extensionMatchingContext = obj->_extensionMatchingContext;
  obj->_extensionMatchingContext = contextCopy;

  objc_sync_exit(obj);
}

- (id)extensionMatchingContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_extensionMatchingContext;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setHighMemoryExtensionMatchingContext:(id)context
{
  contextCopy = context;
  obj = self;
  objc_sync_enter(obj);
  highMemoryExtensionMatchingContext = obj->_highMemoryExtensionMatchingContext;
  obj->_highMemoryExtensionMatchingContext = contextCopy;

  objc_sync_exit(obj);
}

- (id)highMemoryExtensionMatchingContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_highMemoryExtensionMatchingContext;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setPluginMetaDataFolder:(id)folder
{
  folderCopy = folder;
  obj = self;
  objc_sync_enter(obj);
  pluginMetaDataFolder = obj->_pluginMetaDataFolder;
  obj->_pluginMetaDataFolder = folderCopy;

  objc_sync_exit(obj);
}

- (NSString)pluginMetaDataFolder
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_pluginMetaDataFolder;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setPluginsToRemoveAfterExtensionsUpdate:(id)update
{
  updateCopy = update;
  obj = self;
  objc_sync_enter(obj);
  pluginsToRemoveAfterExtensionsUpdate = obj->_pluginsToRemoveAfterExtensionsUpdate;
  obj->_pluginsToRemoveAfterExtensionsUpdate = updateCopy;

  objc_sync_exit(obj);
}

- (void)setPluginIDToMetadataCache:(id)cache
{
  cacheCopy = cache;
  obj = self;
  objc_sync_enter(obj);
  pluginIDToMetadataCache = obj->_pluginIDToMetadataCache;
  obj->_pluginIDToMetadataCache = cacheCopy;

  objc_sync_exit(obj);
}

- (void)setHasCompletedInitialization:(BOOL)initialization
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasCompletedInitialization = initialization;
  objc_sync_exit(obj);
}

- (void)setHasDeferredInstalledAppsChangedNotification:(BOOL)notification
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasDeferredInstalledAppsChangedNotification = notification;
  objc_sync_exit(obj);
}

- (Class)richLinksDataSourceClass
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_richLinksDataSourceClass;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRichLinksDataSourceClass:(Class)class
{
  obj = self;
  objc_sync_enter(obj);
  objc_storeStrong(&obj->_richLinksDataSourceClass, class);
  objc_sync_exit(obj);
}

@end