@interface IMBalloonPlugin
- (BOOL)allowsPresentationWithSendLater;
- (BOOL)linkedBeforeSDKVersion:(id)version;
- (BOOL)shouldShowForRecipients:(id)recipients;
- (BOOL)supportsControllerReuse;
- (BOOL)wantsLoadingView;
- (IMBalloonPlugin)init;
- (IMBalloonPlugin)initWithBundle:(id)bundle;
- (IMBalloonPlugin)initWithBundle:(id)bundle app:(id)app;
- (NSString)extensionBundleIdentifier;
- (NSString)extensionIdentifier;
- (id)_getControllerFromReusePoolForChatItem:(id)item contextIdentifier:(id)identifier;
- (id)attributionInfo;
- (id)balloonControllerForChatItem:(id)item contextIdentifier:(id)identifier;
- (id)dataSourceForPluginPayload:(id)payload;
- (id)existingBalloonControllerWithMessageGUID:(id)d contextIdentifier:(id)identifier;
- (id)existingDataSourceForMessageGUID:(id)d;
- (void)dealloc;
- (void)insertDataSource:(id)source forGUID:(id)d;
- (void)moveController:(id)controller toReusePoolFromChatItem:(id)item contextIdentifier:(id)identifier;
- (void)removeController:(id)controller forChatItem:(id)item contextIdentifier:(id)identifier;
- (void)removeDataSourceForChatItem:(id)item;
- (void)unloadBundle;
@end

@implementation IMBalloonPlugin

- (IMBalloonPlugin)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unsupported init" reason:@"[IMBalloonPlugin init] is not supported" userInfo:0];
  objc_exception_throw(v2);
}

- (IMBalloonPlugin)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [IMBalloonApp appWithPluginBundle:bundleCopy];
  v6 = [(IMBalloonPlugin *)self initWithBundle:bundleCopy app:v5];
  if (v6)
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    [v5 setIdentifier:bundleIdentifier];
  }

  return v6;
}

- (IMBalloonPlugin)initWithBundle:(id)bundle app:(id)app
{
  bundleCopy = bundle;
  appCopy = app;
  v20.receiver = self;
  v20.super_class = IMBalloonPlugin;
  v8 = [(IMBalloonPlugin *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(IMBalloonPlugin *)v8 setPluginLoaded:0];
    objc_storeStrong(&v9->_app, app);
    [(IMBalloonPlugin *)v9 setBundle:bundleCopy];
    infoDictionary = [bundleCopy infoDictionary];
    v11 = [infoDictionary objectForKey:@"CKBrowserGroup"];
    integerValue = [v11 integerValue];

    [(IMBalloonPlugin *)v9 setBrowserGroup:integerValue];
    v13 = [infoDictionary objectForKey:@"CKBrowserShowInBrowser"];
    v14 = v13;
    if (v13 && ([v13 BOOLValue] & 1) == 0)
    {
      [appCopy setShowInBrowser:0];
      [appCopy setShowInSendMenu:0];
    }

    v15 = [infoDictionary objectForKey:@"CKBrowserDisplayImageName"];
    if ([v15 length])
    {
      [(IMBalloonPlugin *)v9 setBrowserImageName:v15];
    }

    v16 = [infoDictionary objectForKey:@"kCKBrowserDisplayImagePath"];
    if ([v16 length])
    {
      [(IMBalloonPlugin *)v9 setBrowserImagePath:v16];
    }

    if (!v9->_messageToBalloonControllerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      messageToBalloonControllerMap = v9->_messageToBalloonControllerMap;
      v9->_messageToBalloonControllerMap = Mutable;
    }
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(IMBalloonPlugin *)self unloadBundle];
  v4.receiver = self;
  v4.super_class = IMBalloonPlugin;
  [(IMBalloonPlugin *)&v4 dealloc];
}

- (void)unloadBundle
{
  [(IMBalloonPlugin *)self setPluginLoaded:0];
  [(IMBalloonPlugin *)self setBubbleClass:0];
  [(IMBalloonPlugin *)self setBrowserClass:0];
  [(IMBalloonPlugin *)self setDataSourceClass:0];
  [(IMBalloonPlugin *)self setCustomTypingIndicatorLayerClass:0];
  [(IMBalloonPlugin *)self setEntryClass:0];
  balloonControllerPool = self->_balloonControllerPool;
  self->_balloonControllerPool = 0;
}

- (id)_getControllerFromReusePoolForChatItem:(id)item contextIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  balloonControllerPool = self->_balloonControllerPool;
  if (!balloonControllerPool)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = self->_balloonControllerPool;
    self->_balloonControllerPool = v9;

    balloonControllerPool = self->_balloonControllerPool;
  }

  if ([(NSMutableArray *)balloonControllerPool count])
  {
    lastObject = [(NSMutableArray *)self->_balloonControllerPool lastObject];
    dataSource = [itemCopy dataSource];
    if ([lastObject conformsToProtocol:&unk_1F1BF7248])
    {
      [lastObject setDataSource:dataSource];
    }

    messageGUID = [dataSource messageGUID];
    v14 = [(IMBalloonPlugin *)self balloonControllerKeyForMessageGUID:messageGUID contextIdentifier:identifierCopy];

    [(NSMutableDictionary *)self->_messageToBalloonControllerMap setObject:lastObject forKey:v14];
    [(NSMutableArray *)self->_balloonControllerPool removeLastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)existingBalloonControllerWithMessageGUID:(id)d contextIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = [(IMBalloonPlugin *)self balloonControllerKeyForMessageGUID:dCopy contextIdentifier:identifierCopy];
    v9 = [(NSMutableDictionary *)self->_messageToBalloonControllerMap objectForKeyedSubscript:v8];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Context identifier is nil, can't load balloonController from cache", v12, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)balloonControllerForChatItem:(id)item contextIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    dataSource = [itemCopy dataSource];
    messageGUID = [dataSource messageGUID];
    v10 = [messageGUID length];

    if (v10)
    {
      messageGUID2 = [dataSource messageGUID];
      v12 = [(IMBalloonPlugin *)self existingBalloonControllerWithMessageGUID:messageGUID2 contextIdentifier:identifierCopy];

      if (v12)
      {
        goto LABEL_19;
      }

      if ([(IMBalloonPlugin *)self supportsControllerReuse])
      {
        v12 = [(IMBalloonPlugin *)self _getControllerFromReusePoolForChatItem:itemCopy contextIdentifier:identifierCopy];
        if (v12)
        {
          goto LABEL_19;
        }
      }

      if (([(objc_class *)[(IMBalloonPlugin *)self bubbleClass] conformsToProtocol:&unk_1F1BE8250]& 1) != 0)
      {
        v12 = [objc_alloc(-[IMBalloonPlugin bubbleClass](self "bubbleClass"))];
        if (v12)
        {
          messageGUID3 = [dataSource messageGUID];
          v14 = [(IMBalloonPlugin *)self balloonControllerKeyForMessageGUID:messageGUID3 contextIdentifier:identifierCopy];

          [(NSMutableDictionary *)self->_messageToBalloonControllerMap setObject:v12 forKey:v14];
        }

        goto LABEL_19;
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          messageGUID4 = [dataSource messageGUID];
          guid = [itemCopy guid];
          v21 = 138412802;
          v22 = messageGUID4;
          v23 = 2048;
          v24 = dataSource;
          v25 = 2112;
          v26 = guid;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "IMBalloonPluginManager - bubbleClass does not conform to IMBalloonPluginController protocol; message guid: %@, dataSource: %p, chat item guid: %@", &v21, 0x20u);
        }

LABEL_17:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        guid2 = [itemCopy guid];
        v21 = 134218242;
        v22 = dataSource;
        v23 = 2112;
        v24 = guid2;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "balloonControllerForChatItem dataSource: %p, chat item guid: %@", &v21, 0x16u);
      }

      goto LABEL_17;
    }

    v12 = 0;
LABEL_19:

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Context identifier is nil!", &v21, 2u);
    }
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (void)moveController:(id)controller toReusePoolFromChatItem:(id)item contextIdentifier:(id)identifier
{
  controllerCopy = controller;
  itemCopy = item;
  identifierCopy = identifier;
  [controllerCopy setDataSource:0];
  if (controllerCopy)
  {
    balloonControllerPool = self->_balloonControllerPool;
    if (!balloonControllerPool)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = self->_balloonControllerPool;
      self->_balloonControllerPool = v11;

      balloonControllerPool = self->_balloonControllerPool;
    }

    [(NSMutableArray *)balloonControllerPool addObject:controllerCopy];
    dataSource = [itemCopy dataSource];
    messageGUID = [dataSource messageGUID];
    v15 = [(IMBalloonPlugin *)self balloonControllerKeyForMessageGUID:messageGUID contextIdentifier:identifierCopy];

    [(NSMutableDictionary *)self->_messageToBalloonControllerMap removeObjectForKey:v15];
  }
}

- (void)removeController:(id)controller forChatItem:(id)item contextIdentifier:(id)identifier
{
  if (controller)
  {
    identifierCopy = identifier;
    itemCopy = item;
    dataSource = [itemCopy dataSource];
    messageGUID = [dataSource messageGUID];
    v11 = [(IMBalloonPlugin *)self balloonControllerKeyForMessageGUID:messageGUID contextIdentifier:identifierCopy];

    [(NSMutableDictionary *)self->_messageToBalloonControllerMap removeObjectForKey:v11];
    [(IMBalloonPlugin *)self removeDataSourceForChatItem:itemCopy];
  }
}

- (void)removeDataSourceForChatItem:(id)item
{
  itemCopy = item;
  if ([(IMBalloonPlugin *)self _canRemoveControllerFromCachedDatasource])
  {
    messageToDatasourceMap = self->_messageToDatasourceMap;
    dataSource = [itemCopy dataSource];
    pluginPayload = [dataSource pluginPayload];
    pluginSessionGUID = [pluginPayload pluginSessionGUID];
    [(NSMutableDictionary *)messageToDatasourceMap removeObjectForKey:pluginSessionGUID];
  }
}

- (BOOL)supportsControllerReuse
{
  bubbleClass = [(IMBalloonPlugin *)self bubbleClass];

  return [(objc_class *)bubbleClass conformsToProtocol:&unk_1F1BF7248];
}

- (BOOL)shouldShowForRecipients:(id)recipients
{
  v14 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if ([recipientsCopy count] && (-[IMBalloonPlugin identifier](self, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69A68E8]), v5, v6) && (objc_msgSend(recipientsCopy, "count") != 1 || (objc_msgSend(recipientsCopy, "objectAtIndexedSubscript:", 0), v7 = objc_claimAutoreleasedReturnValue(), v8 = MEMORY[0x1AC56C3A0](), v7, (v8 & 1) == 0)))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = recipientsCopy;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Attempt to display the business extension in a non-business context, recipients: %@", &v12, 0xCu);
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)linkedBeforeSDKVersion:(id)version
{
  versionCopy = version;
  v5 = [(IMBalloonPlugin *)self app];
  v6 = [v5 linkedBeforeSDKVersion:versionCopy];

  return v6;
}

- (id)existingDataSourceForMessageGUID:(id)d
{
  dCopy = d;
  messageToDatasourceMap = [(IMBalloonPlugin *)self messageToDatasourceMap];
  v6 = [messageToDatasourceMap objectForKey:dCopy];

  return v6;
}

- (void)insertDataSource:(id)source forGUID:(id)d
{
  sourceCopy = source;
  dCopy = d;
  if (sourceCopy && dCopy)
  {
    if (!self->_messageToDatasourceMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      messageToDatasourceMap = self->_messageToDatasourceMap;
      self->_messageToDatasourceMap = Mutable;
    }

    messageToDatasourceMap = [(IMBalloonPlugin *)self messageToDatasourceMap];
    [messageToDatasourceMap setObject:sourceCopy forKey:dCopy];
  }
}

- (id)dataSourceForPluginPayload:(id)payload
{
  v18 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  pluginSessionGUID = [payloadCopy pluginSessionGUID];
  messageToDatasourceMap = [(IMBalloonPlugin *)self messageToDatasourceMap];
  v7 = [messageToDatasourceMap objectForKey:pluginSessionGUID];

  if (!v7)
  {
    if (!self->_messageToDatasourceMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      messageToDatasourceMap = self->_messageToDatasourceMap;
      self->_messageToDatasourceMap = Mutable;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = pluginSessionGUID;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "We did not find a datasource for messageGUID: %@", &v16, 0xCu);
      }
    }

    v12 = +[IMBalloonPluginManager sharedInstance];
    identifier = [(IMBalloonPlugin *)self identifier];
    v14 = [v12 dataSourceClassForBundleID:identifier];

    if (v14)
    {
      v7 = [[v14 alloc] initWithPluginPayload:payloadCopy];
      if (pluginSessionGUID)
      {
        messageToDatasourceMap2 = [(IMBalloonPlugin *)self messageToDatasourceMap];
        [messageToDatasourceMap2 setObject:v7 forKey:pluginSessionGUID];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)extensionIdentifier
{
  extensionIdentifier = self->_extensionIdentifier;
  if (!extensionIdentifier)
  {
    identifier = [(IMBalloonPlugin *)self identifier];
    if ([identifier hasPrefix:*MEMORY[0x1E69A69F0]])
    {
      v5 = identifier;
    }

    else
    {
      v5 = IMBalloonExtensionIDWithSuffix();
    }

    v6 = self->_extensionIdentifier;
    self->_extensionIdentifier = v5;

    extensionIdentifier = self->_extensionIdentifier;
  }

  return extensionIdentifier;
}

- (NSString)extensionBundleIdentifier
{
  plugin = [(IMBalloonApp *)self->_app plugin];
  identifier = [plugin identifier];

  return identifier;
}

- (BOOL)allowsPresentationWithSendLater
{
  identifier = [(IMBalloonPlugin *)self identifier];
  v3 = IMBalloonExtensionIDWithSuffix();
  v4 = [identifier isEqualToString:v3];

  return v4 ^ 1;
}

- (BOOL)wantsLoadingView
{
  identifier = [(IMBalloonApp *)self->_app identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  if ([identifier isEqualToString:v4])
  {

    return 0;
  }

  else
  {
    prefersNoLoadingBubbles = [(IMBalloonPlugin *)self prefersNoLoadingBubbles];

    return !prefersNoLoadingBubbles;
  }
}

- (id)attributionInfo
{
  if ([(IMBalloonPlugin *)self hideAttributionInformation])
  {
    v3 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    identifier = [(IMBalloonPlugin *)self identifier];
    if (identifier)
    {
      CFDictionarySetValue(dictionary, *MEMORY[0x1E69A6FB0], identifier);
    }

    browserDisplayName = [(IMBalloonPlugin *)self browserDisplayName];
    if (browserDisplayName)
    {
      CFDictionarySetValue(dictionary, *MEMORY[0x1E69A6FA8], browserDisplayName);
    }

    adamID = [(IMBalloonPlugin *)self adamID];
    if (adamID)
    {
      CFDictionarySetValue(dictionary, *MEMORY[0x1E69A6FA0], adamID);
    }

    if ([(__CFDictionary *)dictionary count])
    {
      v8 = dictionary;
    }

    else
    {
      v8 = 0;
    }

    v3 = v8;
  }

  return v3;
}

@end