@interface IMDRelayTranscodeController
+ (id)sharedInstance;
- (void)transcodeFileTransferContents:(id)contents utiType:(id)type target:(int64_t)target transcoderUserInfo:(id)info isSticker:(BOOL)sticker highQualityMaxByteSize:(unint64_t)size lowQualityMaxByteSize:(unint64_t)byteSize representations:(int64_t)self0 completionBlock:(id)self1;
@end

@implementation IMDRelayTranscodeController

+ (id)sharedInstance
{
  if (qword_2814211B0 != -1)
  {
    sub_22B7D7EE8();
  }

  v3 = qword_281421030;

  return v3;
}

- (void)transcodeFileTransferContents:(id)contents utiType:(id)type target:(int64_t)target transcoderUserInfo:(id)info isSticker:(BOOL)sticker highQualityMaxByteSize:(unint64_t)size lowQualityMaxByteSize:(unint64_t)byteSize representations:(int64_t)self0 completionBlock:(id)self1
{
  stickerCopy = sticker;
  v42 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  typeCopy = type;
  infoCopy = info;
  blockCopy = block;
  if (blockCopy)
  {
    targetCopy = target;
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v39 = contentsCopy;
        v40 = 2112;
        v41 = infoCopy;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Transcoder received request to transcode: %@  transcodeInfo: %@", buf, 0x16u);
      }
    }

    v36 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [contentsCopy path];
    v23 = [defaultManager fileExistsAtPath:path isDirectory:&v36];

    if (v23)
    {
      if (v36 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Input URL is a directory, not transcoding", buf, 2u);
          }
        }

        v25 = IMSingleObjectArray();
        (*(blockCopy + 2))(blockCopy, contentsCopy, v25, 0, 0, 1, 0, 0);
      }

      else
      {
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        resourcePath = [v27 resourcePath];

        v33 = [IMDAttachmentUtilities messageAttachmentSendableUTIsForResourcePath:resourcePath];
        mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:size];
        v37[0] = v29;
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:byteSize];
        v37[1] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
        LOBYTE(v32) = 0;
        [mEMORY[0x277D1ADE0] transcodeFileTransferContents:contentsCopy utiType:typeCopy isSticker:stickerCopy allowUnfilteredUTIs:v33 target:targetCopy sizes:v31 commonCapabilities:0 maxDimension:-1 transcoderUserInfo:infoCopy representations:representations isLQMEnabled:v32 completionBlock:blockCopy];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = contentsCopy;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "File doesn't exist at source path (%@), failing transcoding", buf, 0xCu);
        }
      }

      (*(blockCopy + 2))(blockCopy, contentsCopy, 0, 0, 0, 0, 0, 0);
    }
  }
}

@end