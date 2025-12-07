@interface IMDStickerRegistry
+ (id)sharedInstance;
- (BOOL)_isRecipeBasedSticker:(id)sticker;
- (IMDStickerRegistry)init;
- (void)dealloc;
- (void)retrieveStickerWithProperties:(id)properties isAdaptiveImageGlyph:(BOOL)glyph completionBlock:(id)block;
@end

@implementation IMDStickerRegistry

+ (id)sharedInstance
{
  if (qword_2814211D8 != -1)
  {
    sub_22B7D971C();
  }

  return qword_281421060;
}

- (IMDStickerRegistry)init
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = IMDStickerRegistry;
  v2 = [(IMDStickerRegistry *)&v8 init];
  if (v2)
  {
    if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")])
    {
      stringByExpandingTildeInPath = [@"/var/mobile/Library/SMS/Stickers" stringByExpandingTildeInPath];
      if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
      {
        v7 = 0;
        [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v10 = stringByExpandingTildeInPath;
            v11 = 2112;
            v12 = v7;
            _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Deleting legacy Sticker folder at path %@, error %@", buf, 0x16u);
          }
        }
      }
    }

    if (!v2->_stickerPackGUIDToPackMap)
    {
      v2->_stickerPackGUIDToPackMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Initialized IMDStickerStore", buf, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDStickerRegistry;
  [(IMDStickerRegistry *)&v3 dealloc];
}

- (BOOL)_isRecipeBasedSticker:(id)sticker
{
  if ([sticker count])
  {
    v4 = [objc_msgSend(sticker objectForKey:{*MEMORY[0x277D1A738]), "length"}];
    if (v4)
    {
      LOBYTE(v4) = [objc_msgSend(sticker objectForKey:{*MEMORY[0x277D1A770]), "length"}] != 0;
    }
  }

  else
  {
    LODWORD(v4) = IMOSLoggingEnabled();
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      LODWORD(v4) = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (v4)
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_isRecipeBasedSticker invalid properties", v7, 2u);
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (void)retrieveStickerWithProperties:(id)properties isAdaptiveImageGlyph:(BOOL)glyph completionBlock:(id)block
{
  glyphCopy = glyph;
  v28 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      propertiesCopy2 = properties;
      v26 = 2112;
      blockCopy = block;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Retrieve sticker with properties %@, completionBlock %@", buf, 0x16u);
    }
  }

  if (block)
  {
    if (properties && [properties count])
    {
      v10 = [(IMDStickerRegistry *)self _cachedPathForStickerWithProperties:properties isAdaptiveImageGlyph:glyphCopy];
      v11 = [properties objectForKey:*MEMORY[0x277D1A738]];
      if (v10)
      {
        v12 = v11;
        if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              propertiesCopy2 = v10;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "sticker found in cache %@", buf, 0xCu);
            }
          }

          (*(block + 2))(block, v10, 0);
        }

        else
        {
          v15 = [(IMDStickerRegistry *)self _isRecipeBasedSticker:properties];
          v16 = IMOSLoggingEnabled();
          if (v15)
          {
            if (v16)
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                propertiesCopy2 = v12;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Received ME-sticker from balloon %@", buf, 0xCu);
              }
            }

            v18 = [properties objectForKey:*MEMORY[0x277D1A770]];
            mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
            _FTDataFromHexString = [v18 _FTDataFromHexString];
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = sub_22B6BB904;
            v23[3] = &unk_278708128;
            v23[5] = 0;
            v23[6] = block;
            v23[4] = v12;
            [mEMORY[0x277D1ADE0] transcodeLocalTransferPayloadData:_FTDataFromHexString balloonBundleID:v12 completionBlock:v23];
          }

          else
          {
            if (v16)
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Sticker not found in cache", buf, 2u);
              }
            }

            (*(block + 2))(block, 0, 0);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            propertiesCopy2 = properties;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Invalid sticker properties passed to retrieveStickerWithProperties %@", buf, 0xCu);
          }
        }

        (*(block + 2))(block, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.IMDaemonCore.IMDStickerRegistry" code:2 userInfo:0]);
      }
    }

    else
    {
      (*(block + 2))(block, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.IMDaemonCore.IMDStickerRegistry" code:1 userInfo:0]);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "IMDStickerRegistry. No completion block passed in.", buf, 2u);
    }
  }
}

@end