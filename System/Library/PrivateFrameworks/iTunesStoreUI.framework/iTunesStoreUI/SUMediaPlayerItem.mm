@interface SUMediaPlayerItem
- (SUMediaPlayerItem)initWithItem:(id)item;
- (double)bookmarkedStartTime;
- (id)_newPingURLsWithArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setBookmarkedStartTime:(double)time;
@end

@implementation SUMediaPlayerItem

- (SUMediaPlayerItem)initWithItem:(id)item
{
  if (!item)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have item"];
  }

  v16.receiver = self;
  v16.super_class = SUMediaPlayerItem;
  v5 = [(SUMediaPlayerItem *)&v16 init];
  if (v5)
  {
    v5->_bookmarkIdentifier = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", objc_msgSend(item, "itemIdentifier")];
    v5->_itemIdentifier = [item itemIdentifier];
    v5->_itemType = [item itemType];
    v5->_subtitle = [item artistName];
    v5->_title = [item unmodifiedTitle];
    if (SUItemTypeIsVideoType(v5->_itemType))
    {
      v6 = 3;
    }

    else
    {
      itemMediaKind = [item itemMediaKind];
      v8 = [itemMediaKind isEqualToString:*MEMORY[0x1E69D4D00]];
      v6 = 3;
      if (!v8)
      {
        v6 = 1;
      }
    }

    v5->_initialOrientation = v6;
    v9 = [item valueForProperty:@"pings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = -[SUMediaPlayerItem _newPingURLsWithArray:](v5, "_newPingURLsWithArray:", [v9 objectForKey:@"download"]);
      v5->_downloadPingURLs = [v10 copy];

      v11 = -[SUMediaPlayerItem _newPingURLsWithArray:](v5, "_newPingURLsWithArray:", [v9 objectForKey:@"play"]);
      v5->_playbackPingURLs = [v11 copy];
    }

    v12 = [objc_msgSend(item "defaultStoreOffer")];
    itemType = [item itemType];
    v14 = [v12 URL];
    if (itemType != 1007)
    {
      v5->_playableDuration = [v12 durationInMilliseconds] / 1000.0;
    }

    v5->_url = v14;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUMediaPlayerItem;
  [(SUMediaPlayerItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(NSURL *)self->_backgroundImageURL copyWithZone:zone];
  *(v5 + 16) = [(NSString *)self->_bookmarkIdentifier copyWithZone:zone];
  *(v5 + 24) = [(NSArray *)self->_downloadPingURLs copyWithZone:zone];
  *(v5 + 32) = *&self->_initialOrientation;
  *(v5 + 48) = self->_itemType;
  *(v5 + 64) = self->_playableDuration;
  *(v5 + 56) = [(NSArray *)self->_playbackPingURLs copyWithZone:zone];
  *(v5 + 72) = [(NSString *)self->_subtitle copyWithZone:zone];
  *(v5 + 80) = [(NSString *)self->_title copyWithZone:zone];
  *(v5 + 88) = [(NSURL *)self->_url copyWithZone:zone];
  return v5;
}

- (double)bookmarkedStartTime
{
  if (!self->_bookmarkIdentifier)
  {
    return 0.0;
  }

  v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0.0;
  }

  v4 = [v3 objectForKey:self->_bookmarkIdentifier];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  [v4 doubleValue];
  return result;
}

- (void)setBookmarkedStartTime:(double)time
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_bookmarkIdentifier)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [objc_msgSend(standardUserDefaults objectForKey:{@"MSStreamStartTimes", "mutableCopy"}];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (time >= 2.22044605e-16)
    {
      if (v9)
      {
        v16 = objc_opt_class();
        bookmarkIdentifier = self->_bookmarkIdentifier;
        v22 = 138412802;
        v23 = v16;
        v24 = 2048;
        timeCopy = time;
        v26 = 2112;
        v27 = bookmarkIdentifier;
        v18 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Saved start time %.2f for key %@", &v22, 32);
        if (v18)
        {
          v19 = v18;
          v20 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
          free(v19);
          v21 = v20;
          SSFileLog();
        }
      }

      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", time, v21), self->_bookmarkIdentifier}];
    }

    else
    {
      if (v9)
      {
        v11 = objc_opt_class();
        v12 = self->_bookmarkIdentifier;
        v22 = 138412546;
        v23 = v11;
        v24 = 2112;
        timeCopy = *&v12;
        v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Reset start time for key %@", &v22, 22);
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
          free(v14);
          v21 = v15;
          SSFileLog();
        }
      }

      [v6 removeObjectForKey:{self->_bookmarkIdentifier, v21}];
    }

    [standardUserDefaults setObject:v6 forKey:@"MSStreamStartTimes"];
    [standardUserDefaults synchronize];
  }
}

- (id)_newPingURLsWithArray:(id)array
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [array countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(array);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
            if (v10)
            {
              v11 = v10;
              [v4 addObject:v10];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [array countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

@end