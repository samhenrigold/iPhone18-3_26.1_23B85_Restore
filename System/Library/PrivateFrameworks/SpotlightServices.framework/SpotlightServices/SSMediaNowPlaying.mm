@interface SSMediaNowPlaying
+ (id)sharedInstance;
- (BOOL)filterEvent:(id)event;
- (SSMediaNowPlaying)init;
- (id)_attributesUpdatesForEvent:(id)event;
- (id)_identifierForItemUpdate:(id)update;
- (id)_itemUpdateForEvent:(id)event itemIdentifier:(id)identifier bundleToUpdate:(id)update;
- (id)stream;
- (void)handleEvent:(id)event;
@end

@implementation SSMediaNowPlaying

- (id)stream
{
  v2 = BiomeLibrary();
  media = [v2 Media];
  nowPlaying = [media NowPlaying];

  return nowPlaying;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SSMediaNowPlaying sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __35__SSMediaNowPlaying_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SSMediaNowPlaying)init
{
  v6.receiver = self;
  v6.super_class = SSMediaNowPlaying;
  v2 = [(SSBaseConsumer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)filterEvent:(id)event
{
  eventCopy = event;
  v10 = !bundleID || (v5 = bundleID, [eventCopy bundleID], v6 = bundleID = [eventCopy bundleID];

  return v10;
}

- (void)handleEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    if (![(SSMediaNowPlaying *)self filterEvent:v5])
    {
      iTunesStoreIdentifier = [v5 iTunesStoreIdentifier];
      v7 = SSRedactString(iTunesStoreIdentifier, 1);

      if (v7)
      {
        v8 = SSGeneralLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(SSBaseConsumer *)self identifier];
          *buf = 138412546;
          v18 = identifier;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_DEFAULT, "%@: processing event media nowplaying: %@", buf, 0x16u);
        }
      }

      v10 = @"com.apple.Music";
      v11 = *MEMORY[0x1E696A388];
      v12 = [(SSMediaNowPlaying *)self _identifierForItemUpdate:v5];
      if (v12)
      {
        v13 = [(SSMediaNowPlaying *)self _itemUpdateForEvent:v5 itemIdentifier:v12 bundleToUpdate:v10];
        v14 = v13;
        if (v13 && v11)
        {
          v16 = v13;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
          [(SSBaseConsumer *)self indexItems:v15 protectionClass:v11 bundleID:v10];
        }
      }
    }
  }
}

- (id)_identifierForItemUpdate:(id)update
{
  v14[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  iTunesStoreIdentifier = [updateCopy iTunesStoreIdentifier];

  if (iTunesStoreIdentifier)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *MEMORY[0x1E6963BC8];
    iTunesStoreIdentifier2 = [updateCopy iTunesStoreIdentifier];
    v9 = [v6 stringWithFormat:@"%@=%@", v7, iTunesStoreIdentifier2];
    v14[0] = @"com.apple.Music";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [(SSBaseConsumer *)self queryWithString:v9 bundleIDs:v10 fetchAttributes:MEMORY[0x1E695E0F0]];

    if (objc_msgSend_count(v11) == 1)
    {
      firstObject = [v11 firstObject];
      iTunesStoreIdentifier = [firstObject uniqueIdentifier];
    }

    else
    {
      iTunesStoreIdentifier = 0;
    }
  }

  return iTunesStoreIdentifier;
}

- (id)_attributesUpdatesForEvent:(id)event
{
  v10[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  absoluteTimestamp = [eventCopy absoluteTimestamp];

  if (absoluteTimestamp)
  {
    v9[0] = @"_kMDItemLastOutOfSpotlightEngagementDate";
    absoluteTimestamp2 = [eventCopy absoluteTimestamp];
    v10[0] = absoluteTimestamp2;
    v9[1] = *MEMORY[0x1E6964548];
    absoluteTimestamp3 = [eventCopy absoluteTimestamp];
    v10[1] = absoluteTimestamp3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)_itemUpdateForEvent:(id)event itemIdentifier:(id)identifier bundleToUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  v10 = [(SSMediaNowPlaying *)self _attributesUpdatesForEvent:event];
  v11 = v10;
  if (v10 && objc_msgSend_count(v10))
  {
    v12 = objc_alloc_init(MEMORY[0x1E6964E80]);
    [v12 setUniqueIdentifier:identifierCopy];
    [v12 setBundleID:updateCopy];
    [v12 setIsUpdate:1];
    v13 = [objc_alloc(MEMORY[0x1E6964E90]) initWithAttributes:v11];
    [v12 setAttributeSet:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end