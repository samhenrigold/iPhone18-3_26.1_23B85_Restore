@interface ACCMediaLibraryFeaturePlugin
- (NSString)description;
- (NSString)pluginName;
- (void)initPlugin;
- (void)mediaLibrary:(id)library accessoryArrived:(id)arrived windowPerLibrary:(unsigned int)perLibrary;
- (void)mediaLibrary:(id)library accessoryLeft:(id)left;
- (void)mediaLibrary:(id)library accessoryUpdate:(id)update windowPerLibrary:(unsigned int)perLibrary;
- (void)mediaLibrary:(id)library confirmPlaylistContentUpdate:(id)update lastRevision:(id)revision accessory:(id)accessory;
- (void)mediaLibrary:(id)library confirmUpdate:(id)update lastRevision:(id)revision updateCount:(unsigned int)count accessory:(id)accessory;
- (void)mediaLibrary:(id)library play:(id)play collection:(unint64_t)collection type:(int)type firstItemIndex:(unint64_t)index accessory:(id)accessory;
- (void)mediaLibrary:(id)library play:(id)play collection:(unint64_t)collection type:(int)type firstItemPersistentID:(unint64_t)d accessory:(id)accessory;
- (void)mediaLibrary:(id)library play:(id)play itemList:(id)list firstItemIndex:(unint64_t)index accessory:(id)accessory;
- (void)mediaLibrary:(id)library playAllSongs:(id)songs accessory:(id)accessory;
- (void)mediaLibrary:(id)library playAllSongs:(id)songs firstItemPersistentID:(unint64_t)d accessory:(id)accessory;
- (void)mediaLibrary:(id)library playCurrentSelection:(id)selection accessory:(id)accessory;
- (void)mediaLibrary:(id)library startUpdate:(id)update lastRevision:(id)revision requestedInfo:(id)info accessory:(id)accessory;
- (void)mediaLibrary:(id)library stopAllUpdate:(id)update;
- (void)mediaLibrary:(id)library stopUpdate:(id)update accessory:(id)accessory;
- (void)notify:(id)notify stateChange:(int)change enabled:(BOOL)enabled;
- (void)notifyAvailableLibraries:(id)libraries;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCMediaLibraryFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCMediaLibraryFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCMediaLibraryFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  mediaLibraryProvider = self->_mediaLibraryProvider;
  self->_mediaLibraryProvider = 0;

  [(ACCMediaLibraryFeaturePlugin *)self setIsRunning:0];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "Starting Media Library feature plugin...", v12, 2u);
  }

  v6 = dispatch_queue_create("com.apple.mlPlugin.mediaLibraryCBProcessQ", 0);
  mediaLibraryCBProcessQ = self->_mediaLibraryCBProcessQ;
  self->_mediaLibraryCBProcessQ = v6;

  v8 = [objc_alloc(MEMORY[0x277CE82A0]) initWithDelegate:self queue:self->_mediaLibraryCBProcessQ];
  mediaLibraryProvider = self->_mediaLibraryProvider;
  self->_mediaLibraryProvider = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mediaLibraryShimList = self->_mediaLibraryShimList;
  self->_mediaLibraryShimList = v10;

  [(ACCMediaLibraryFeaturePlugin *)self setIsRunning:1];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Media Library feature plugin...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_2335D3000, v6, OS_LOG_TYPE_INFO, "Removing all observers...", v12, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mediaLibraryProvider = self->_mediaLibraryProvider;
  self->_mediaLibraryProvider = 0;

  mediaLibraryShimList = self->_mediaLibraryShimList;
  self->_mediaLibraryShimList = 0;

  mediaLibraryCBProcessQ = self->_mediaLibraryCBProcessQ;
  self->_mediaLibraryCBProcessQ = 0;
}

- (void)notifyAvailableLibraries:(id)libraries
{
  v10 = *MEMORY[0x277D85DE8];
  librariesCopy = libraries;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = librariesCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_INFO, "notifyAvailableLibraries: %@", &v8, 0xCu);
  }

  [(ACCMediaLibraryProvider *)self->_mediaLibraryProvider notifyAvailableLibraries:librariesCopy];
}

- (void)notify:(id)notify stateChange:(int)change enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = *&change;
  v18 = *MEMORY[0x277D85DE8];
  notifyCopy = notify;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = notifyCopy;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = enabledCopy;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_INFO, "notifyStateChange: %@  type=%d enabled=%d", &v12, 0x18u);
  }

  [(ACCMediaLibraryProvider *)self->_mediaLibraryProvider notify:notifyCopy stateChange:v6 enabled:enabledCopy];
}

- (void)mediaLibrary:(id)library accessoryArrived:(id)arrived windowPerLibrary:(unsigned int)perLibrary
{
  v5 = *&perLibrary;
  v22 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [arrivedCopy accessoryUID];
  v10 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 138412802;
    v17 = arrivedCopy;
    v18 = 1024;
    v19 = v5;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_INFO, "mediaLibraryAccessoryArrived: accessory=%@  windowPerLibrary=%d, shim=%@", &v16, 0x1Cu);
  }

  if (!v10)
  {
    v10 = [[ACCMediaLibraryShim alloc] initWithAccessory:arrivedCopy windowPerLibrary:v5 delegate:self];
    v14 = self->_mediaLibraryShimList;
    accessoryUID2 = [arrivedCopy accessoryUID];
    [(NSMutableDictionary *)v14 setObject:v10 forKey:accessoryUID2];

    [(ACCMediaLibraryShim *)v10 startShimForAccessoryAttach:arrivedCopy];
    [(ACCMediaLibraryShim *)v10 startSendingMediaLibraryInfomationUpdates];
  }
}

- (void)mediaLibrary:(id)library accessoryLeft:(id)left
{
  v18 = *MEMORY[0x277D85DE8];
  leftCopy = left;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [leftCopy accessoryUID];
  v8 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = leftCopy;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_INFO, "mediaLibraryAccessoryLeft: %@  shim=%@", &v14, 0x16u);
  }

  if (v8)
  {
    [v8 shuttingDown];
    v12 = self->_mediaLibraryShimList;
    accessoryUID2 = [leftCopy accessoryUID];
    [(NSMutableDictionary *)v12 removeObjectForKey:accessoryUID2];
  }
}

- (void)mediaLibrary:(id)library accessoryUpdate:(id)update windowPerLibrary:(unsigned int)perLibrary
{
  v5 = *&perLibrary;
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [updateCopy accessoryUID];
  v10 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138412802;
    v15 = updateCopy;
    v16 = 1024;
    v17 = v5;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_INFO, "mediaLibraryAccessoryUpdate: %@  windowPerLibrary=%d, shim=%@", &v14, 0x1Cu);
  }

  if (v10)
  {
    [v10 setWindowPerLibrary:v5];
  }
}

- (void)mediaLibrary:(id)library startUpdate:(id)update lastRevision:(id)revision requestedInfo:(id)info accessory:(id)accessory
{
  v31 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  infoCopy = info;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v17 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = ACCMediaLibraryFeatureRequestedInfoDesc(infoCopy);
    v21 = 138413314;
    v22 = accessoryCopy;
    v23 = 2112;
    v24 = updateCopy;
    v25 = 2112;
    v26 = revisionCopy;
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&dword_2335D3000, v18, OS_LOG_TYPE_INFO, "mediaLibraryStartUpdate: %@ libUID=%@ lastRevision=%@ requestedInfo=%@ shim=%@", &v21, 0x34u);
  }

  if (v17)
  {
    [v17 startMediaLibraryUpdate:updateCopy lastRevision:revisionCopy requestedInfo:infoCopy];
  }
}

- (void)mediaLibrary:(id)library confirmUpdate:(id)update lastRevision:(id)revision updateCount:(unsigned int)count accessory:(id)accessory
{
  v8 = *&count;
  v30 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v16 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v17 = gNumLogObjects < 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *gLogObjects;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = 138413314;
    v21 = accessoryCopy;
    v22 = 2112;
    v23 = updateCopy;
    v24 = 2112;
    v25 = revisionCopy;
    v26 = 1024;
    v27 = v8;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&dword_2335D3000, v19, OS_LOG_TYPE_INFO, "mediaLibraryConfirmUpdate: %@ libUID=%@ lastRevision=%@ count=%d shim=%@", &v20, 0x30u);
  }

  if (v16)
  {
    [v16 confirmMediaLibraryUpdate:updateCopy lastRevision:revisionCopy updateCount:v8];
  }
}

- (void)mediaLibrary:(id)library confirmPlaylistContentUpdate:(id)update lastRevision:(id)revision accessory:(id)accessory
{
  v26 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  revisionCopy = revision;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v14 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = 138413058;
    v19 = accessoryCopy;
    v20 = 2112;
    v21 = updateCopy;
    v22 = 2112;
    v23 = revisionCopy;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_2335D3000, v17, OS_LOG_TYPE_INFO, "mediaLibraryConfirmUpdate: %@ libUID=%@ lastRevision=%@ shim=%@", &v18, 0x2Au);
  }

  if (v14)
  {
    [v14 confirmMediaLibraryPlaylistContentUpdate:updateCopy lastRevision:revisionCopy];
  }
}

- (void)mediaLibrary:(id)library stopUpdate:(id)update accessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = 138412802;
    v16 = accessoryCopy;
    v17 = 2112;
    v18 = updateCopy;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ shim=%@", &v15, 0x20u);
  }

  if (v11)
  {
    [v11 stopMediaLibraryUpdate:updateCopy];
  }
}

- (void)mediaLibrary:(id)library stopAllUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [updateCopy accessoryUID];
  v8 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = updateCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_INFO, "mediaLibraryStopAllUpdate: %@ shim=%@", &v12, 0x16u);
  }

  if (v8)
  {
    [v8 stopAllMediaLibraryUpdate];
  }
}

- (void)mediaLibrary:(id)library play:(id)play itemList:(id)list firstItemIndex:(unint64_t)index accessory:(id)accessory
{
  v30 = *MEMORY[0x277D85DE8];
  playCopy = play;
  listCopy = list;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v16 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v17 = gNumLogObjects < 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *gLogObjects;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = 138413314;
    v21 = accessoryCopy;
    v22 = 2112;
    v23 = playCopy;
    v24 = 2048;
    indexCopy = index;
    v26 = 2112;
    v27 = listCopy;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&dword_2335D3000, v19, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ firstItemIndex=%lu itemList=%@ shim=%@", &v20, 0x34u);
  }

  if (v16)
  {
    [v16 playMediaLibraryItems:playCopy itemList:listCopy firstItemIndex:index];
  }
}

- (void)mediaLibrary:(id)library play:(id)play collection:(unint64_t)collection type:(int)type firstItemIndex:(unint64_t)index accessory:(id)accessory
{
  v10 = *&type;
  v33 = *MEMORY[0x277D85DE8];
  playCopy = play;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v17 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v18 = gNumLogObjects < 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v20 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  else
  {
    v20 = *gLogObjects;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = 138413570;
    v22 = accessoryCopy;
    v23 = 2112;
    v24 = playCopy;
    v25 = 2048;
    collectionCopy = collection;
    v27 = 1024;
    v28 = v10;
    v29 = 2048;
    indexCopy = index;
    v31 = 2112;
    v32 = v17;
    _os_log_impl(&dword_2335D3000, v20, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ collection=%llu type=%d firstItemIndex=%lu shim=%@", &v21, 0x3Au);
  }

  if (v17)
  {
    [v17 playMediaLibraryCollection:playCopy collection:collection type:v10 firstItemIndex:index];
  }
}

- (void)mediaLibrary:(id)library play:(id)play collection:(unint64_t)collection type:(int)type firstItemPersistentID:(unint64_t)d accessory:(id)accessory
{
  v10 = *&type;
  v33 = *MEMORY[0x277D85DE8];
  playCopy = play;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v17 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v18 = gNumLogObjects < 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v20 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  else
  {
    v20 = *gLogObjects;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = 138413570;
    v22 = accessoryCopy;
    v23 = 2112;
    v24 = playCopy;
    v25 = 2048;
    collectionCopy = collection;
    v27 = 1024;
    v28 = v10;
    v29 = 2048;
    dCopy = d;
    v31 = 2112;
    v32 = v17;
    _os_log_impl(&dword_2335D3000, v20, OS_LOG_TYPE_INFO, "mediaLibraryStopUpdate: %@ libUID=%@ collection=%llu type=%d firstItemPersistentID=%llu shim=%@", &v21, 0x3Au);
  }

  if (v17)
  {
    [v17 playMediaLibraryCollection:playCopy collection:collection type:v10 firstItemPersistentID:d];
  }
}

- (void)mediaLibrary:(id)library playCurrentSelection:(id)selection accessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = 138412802;
    v16 = accessoryCopy;
    v17 = 2112;
    v18 = selectionCopy;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryplayCurrentSelection: %@ libUID=%@ shim=%@", &v15, 0x20u);
  }

  if (v11)
  {
    [v11 playMediaLibraryCurrentSelection:selectionCopy];
  }
}

- (void)mediaLibrary:(id)library playAllSongs:(id)songs accessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  songsCopy = songs;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v11 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = 138412802;
    v16 = accessoryCopy;
    v17 = 2112;
    v18 = songsCopy;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "mediaLibraryplayAllSongs: %@ libUID=%@ shim=%@", &v15, 0x20u);
  }

  if (v11)
  {
    [v11 playAllSongs:songsCopy];
  }
}

- (void)mediaLibrary:(id)library playAllSongs:(id)songs firstItemPersistentID:(unint64_t)d accessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  songsCopy = songs;
  accessoryCopy = accessory;
  mediaLibraryShimList = self->_mediaLibraryShimList;
  accessoryUID = [accessoryCopy accessoryUID];
  v13 = [(NSMutableDictionary *)mediaLibraryShimList objectForKey:accessoryUID];

  if (gLogObjects)
  {
    v14 = gNumLogObjects < 1;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = 138413058;
    v18 = accessoryCopy;
    v19 = 2112;
    v20 = songsCopy;
    v21 = 2048;
    dCopy = d;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_INFO, "mediaLibraryplayAllSongs: %@ libUID=%@ firstItemPersistentID=%llu shim=%@", &v17, 0x2Au);
  }

  if (v13)
  {
    [v13 playAllSongs:songsCopy firstItemPersistentID:d];
  }
}

@end