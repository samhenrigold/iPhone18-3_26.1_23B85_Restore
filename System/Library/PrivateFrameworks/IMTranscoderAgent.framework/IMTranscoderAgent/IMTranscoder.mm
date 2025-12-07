@interface IMTranscoder
+ (BOOL)shouldPreserveAAEncoding:(id)encoding;
+ (BOOL)shouldPreserveHDREncoding:(id)encoding;
+ (BOOL)shouldPreserveHEIFEncoding:(id)encoding target:(int64_t)target sourceUTI:(id)i;
+ (BOOL)supportsUTI:(id)i;
- (BOOL)BOOLFromTranscoderUserInfo:(id)info withKey:(id)key;
- (void)transcodeFileTransfer:(id)transfer utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3;
@end

@implementation IMTranscoder

+ (BOOL)supportsUTI:(id)i
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = objc_msgSend_supportedUTIs(self, a2, i, v3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (UTTypeConformsTo(i, *(*(&v13 + 1) + 8 * v10)))
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v13, v17, 16);
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v7;
}

+ (BOOL)shouldPreserveHEIFEncoding:(id)encoding target:(int64_t)target sourceUTI:(id)i
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, encoding, target);
  v11 = objc_msgSend_objectForKey_(v8, v9, @"ForceHEIFEncoding", v10);
  if (v11)
  {
    v12 = v11;
    if (objc_opt_respondsToSelector())
    {
      if (objc_msgSend_BOOLValue(v12, v13, v14, v15))
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          LOBYTE(v17) = 1;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            LOWORD(v28) = 0;
            _os_log_impl(&dword_254811000, v16, OS_LOG_TYPE_INFO, "Forcing HEIF encoding from default", &v28, 2u);
          }
        }

        else
        {
          LOBYTE(v17) = 1;
        }

        return v17;
      }
    }
  }

  if (UTTypeConformsTo(i, *MEMORY[0x277CC2120]))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v18 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v28 = 138412290;
    encodingCopy = i;
    v19 = "Rejecting HEIF encoding, source is %@";
LABEL_15:
    _os_log_impl(&dword_254811000, v18, OS_LOG_TYPE_INFO, v19, &v28, 0xCu);
LABEL_16:
    LOBYTE(v17) = 0;
    return v17;
  }

  v20 = IMOSLoggingEnabled();
  if ((target & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (!v20)
    {
      goto LABEL_16;
    }

    v18 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v28 = 134217984;
    encodingCopy = target;
    v19 = "Rejecting HEIF encoding for non iMessage/RCS target %ld";
    goto LABEL_15;
  }

  if (v20)
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      encodingCopy = encoding;
      _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "Checking for HEIF support %@", &v28, 0xCu);
    }
  }

  v17 = objc_msgSend_objectForKey_(encoding, v21, *MEMORY[0x277D188A0], v22);
  if (v17)
  {
    if (objc_opt_respondsToSelector())
    {
      LOBYTE(v17) = objc_msgSend_integerValue(v17, v25, v26, v27) == 1;
      return v17;
    }

    goto LABEL_16;
  }

  return v17;
}

+ (BOOL)shouldPreserveHDREncoding:(id)encoding
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, encoding, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"ForceHDREncoding", v7);
  if (v8 && (v9 = v8, (objc_opt_respondsToSelector() & 1) != 0) && objc_msgSend_BOOLValue(v9, v10, v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      LOBYTE(v14) = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_254811000, v13, OS_LOG_TYPE_INFO, "Forcing HDR encoding from default", &v22, 2u);
      }
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        encodingCopy = encoding;
        _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Checking for HDR support %@", &v22, 0xCu);
      }
    }

    v14 = objc_msgSend_objectForKey_(encoding, v15, *MEMORY[0x277D18898], v16);
    if (v14)
    {
      LOBYTE(v14) = (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_integerValue(v14, v18, v19, v20) == 1;
    }
  }

  return v14;
}

+ (BOOL)shouldPreserveAAEncoding:(id)encoding
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, encoding, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"ForceAAEncoding", v7);
  if (v8 && (v9 = v8, (objc_opt_respondsToSelector() & 1) != 0) && objc_msgSend_BOOLValue(v9, v10, v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      LOBYTE(v14) = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_254811000, v13, OS_LOG_TYPE_INFO, "Forcing AA encoding from default", &v22, 2u);
      }
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        encodingCopy = encoding;
        _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Checking for HEIF support %@", &v22, 0xCu);
      }
    }

    v14 = objc_msgSend_objectForKey_(encoding, v15, *MEMORY[0x277D188A0], v16);
    if (v14)
    {
      LOBYTE(v14) = (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_integerValue(v14, v18, v19, v20) == 1;
    }
  }

  return v14;
}

- (void)transcodeFileTransfer:(id)transfer utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3
{
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_254811000, v14, OS_LOG_TYPE_INFO, "Attempted to transcode with generic transcoder--this is probably unintentional!!", v15, 2u);
    }
  }

  if (block)
  {
    (*(block + 2))(block, transfer, 0, 0, 0, 1, 0, 0);
  }
}

- (BOOL)BOOLFromTranscoderUserInfo:(id)info withKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  if (info)
  {
    v6 = objc_msgSend_objectForKey_(info, a2, key, key);
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = objc_msgSend_BOOLValue(v6, v7, v8, v9);
    }

    else
    {
      v10 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        v15 = 138413058;
        keyCopy2 = info;
        v17 = 2112;
        if (v10)
        {
          v12 = @"YES";
        }

        v18 = v6;
        v19 = 2112;
        keyCopy = key;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_254811000, v11, OS_LOG_TYPE_INFO, "Has transcoderUserInfo: %@, found %@, so %@ = %@", &v15, 0x2Au);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        keyCopy2 = key;
        _os_log_impl(&dword_254811000, v13, OS_LOG_TYPE_INFO, "No transcoderUserInfo for %@", &v15, 0xCu);
      }
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

@end