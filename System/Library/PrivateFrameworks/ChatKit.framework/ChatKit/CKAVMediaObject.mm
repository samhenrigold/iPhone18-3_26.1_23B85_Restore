@interface CKAVMediaObject
+ (id)durationCache;
- (double)duration;
- (id)description;
- (void)setDuration:(double)duration;
@end

@implementation CKAVMediaObject

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKAVMediaObject;
  v4 = [(CKMediaObject *)&v8 description];
  transcoderUserInfo = [(CKMediaObject *)self transcoderUserInfo];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, transcoderUserInfo];

  return v6;
}

- (double)duration
{
  v71 = *MEMORY[0x1E69E9840];
  if (duration__pred_CMTimeGetSecondsCoreMedia != -1)
  {
    [CKAVMediaObject duration];
  }

  if (!self->_durationLoaded)
  {
    v3 = +[CKAVMediaObject durationCache];
    transferGUID = [(CKMediaObject *)self transferGUID];
    v5 = [v3 objectForKey:transferGUID];

    if (v5)
    {
      [v5 doubleValue];
      [(CKAVMediaObject *)self setDuration:?];
    }

    transcoderUserInfo = [(CKMediaObject *)self transcoderUserInfo];
    v7 = transcoderUserInfo;
    durationLoaded = self->_durationLoaded;
    if (!transcoderUserInfo)
    {
      goto LABEL_33;
    }

    if (self->_durationLoaded)
    {
      goto LABEL_61;
    }

    v9 = [transcoderUserInfo objectForKey:*MEMORY[0x1E69A6F60]];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(46);
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_DEBUG, "For media object (%@), getting duration (%@) from transcoderUserInfo", buf, 0x16u);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          _CKLog(0x2Eu, @"For media object (%@), getting duration (%@) from transcoderUserInfo", v11, v12, v13, v14, v15, v16, self);
        }

        [v9 doubleValue];
        [(CKAVMediaObject *)self setDuration:?];
      }
    }

    if (self->_durationLoaded)
    {
      goto LABEL_61;
    }

    v17 = [v7 objectForKey:*MEMORY[0x1E69A6F90]];
    v18 = [v7 objectForKey:*MEMORY[0x1E69A6F68]];
    v19 = v18;
    if (v17)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (!v19)
      {
        goto LABEL_32;
      }
    }

    else
    {
      isKindOfClass = 0;
      if (!v18)
      {
LABEL_32:

        durationLoaded = self->_durationLoaded;
LABEL_33:
        if (!durationLoaded)
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(46);
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              fileURL = [(CKMediaObject *)self fileURL];
              *buf = 138412546;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = fileURL;
              _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_DEBUG, "For media object (%@), calculating duration from file: %@", buf, 0x16u);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
          {
            fileURL2 = [(CKMediaObject *)self fileURL];
            _CKLog(0x2Eu, @"For media object (%@), calculating duration from file: %@", v34, v35, v36, v37, v38, v39, self);
          }

          v40 = objc_alloc_init(MEMORY[0x1E696AC08]);
          v66 = 0;
          fileURL3 = [(CKMediaObject *)self fileURL];
          path = [fileURL3 path];
          v43 = [v40 fileExistsAtPath:path isDirectory:&v66];
          v44 = v66;

          if (v44 & 1 | ((v43 & 1) == 0))
          {
            if (IMOSLoggingEnabled())
            {
              CKLogCStringForType(46);
              v45 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                fileURL4 = [(CKMediaObject *)self fileURL];
                *buf = 138412290;
                *&buf[4] = fileURL4;
                _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_DEBUG, "  => No file at URL (%@), aborting duration calculation", buf, 0xCu);
              }
            }

            if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
            {
              fileURL5 = [(CKMediaObject *)self fileURL];
              _CKLog(0x2Eu, @"  => No file at URL (%@), aborting duration calculation", v48, v49, v50, v51, v52, v53, fileURL5);
            }

            self->_durationLoaded = 1;
          }

          else
          {
            transcoderUserInfo2 = [(CKMediaObject *)self transcoderUserInfo];
            v55 = [transcoderUserInfo2 objectForKey:*MEMORY[0x1E69A6F58]];

            if (v55)
            {
              [MEMORY[0x1E695DFF8] URLWithString:v55];
            }

            else
            {
              [(CKMediaObject *)self fileURL];
            }
            v56 = ;
            v57 = MEMORY[0x193AF5EC0](@"PLAssetSharingUtilities", @"PhotoLibraryServices");
            fileURL6 = [(CKMediaObject *)self fileURL];
            path2 = [fileURL6 path];
            v60 = [v57 playerItemForVideoURL:v56 fallbackFilePath:path2 library:0];

            asset = [v60 asset];
            v62 = asset;
            v63 = duration__CMTimeGetSeconds;
            if (asset)
            {
              objc_msgSend_duration(asset);
            }

            else
            {
              memset(buf, 0, sizeof(buf));
            }

            if (v63(buf) >= 0.0)
            {
              [(CKAVMediaObject *)self setDuration:?];
            }

            else
            {
              self->_durationLoaded = 1;
            }
          }
        }

LABEL_61:

        return self->_duration;
      }
    }

    objc_opt_class();
    if (isKindOfClass & objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      v22 = v21;
      [v17 doubleValue];
      v24 = v22 - v23;
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(46);
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v24;
          *&buf[22] = 2112;
          v68 = v17;
          v69 = 2112;
          v70 = v19;
          _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_DEBUG, "For media object (%@), getting duration (%f) from start and end: (%@|%@)", buf, 0x2Au);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog(0x2Eu, @"For media object (%@), getting duration (%f) from start and end: (%@|%@)", v26, v27, v28, v29, v30, v31, self);
      }

      [(CKAVMediaObject *)self setDuration:v24];
    }

    goto LABEL_32;
  }

  return self->_duration;
}

void *__27__CKAVMediaObject_duration__block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  duration__CMTimeGetSeconds = result;
  return result;
}

+ (id)durationCache
{
  if (durationCache_once != -1)
  {
    +[CKAVMediaObject durationCache];
  }

  v3 = durationCache_sDurationCache;

  return v3;
}

void __32__CKAVMediaObject_durationCache__block_invoke()
{
  v0 = CKCreateCache(0);
  v1 = durationCache_sDurationCache;
  durationCache_sDurationCache = v0;
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    self->_durationLoaded = 1;
    v7 = +[CKAVMediaObject durationCache];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    transferGUID = [(CKMediaObject *)self transferGUID];
    [v7 setObject:v5 forKey:transferGUID];
  }
}

@end