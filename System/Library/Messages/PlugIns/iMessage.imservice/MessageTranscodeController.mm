@interface MessageTranscodeController
+ (id)sharedInstance;
- (void)generateSnapshotForMessageGUID:(id)d payloadData:(id)data balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block;
- (void)transcodeFileTransferContents:(id)contents utiType:(id)type isSticker:(BOOL)sticker transcoderUserInfo:(id)info sizes:(id)sizes commonCapabilities:(id)capabilities representations:(int64_t)representations isLQMEnabled:(BOOL)self0 completionBlock:(id)self1;
- (void)transcodePayloadData:(id)data balloonBundleID:(id)d attachments:(id)attachments completionBlock:(id)block;
- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion;
@end

@implementation MessageTranscodeController

+ (id)sharedInstance
{
  if (qword_124338 != -1)
  {
    sub_BD444();
  }

  return qword_124320;
}

- (void)transcodeFileTransferContents:(id)contents utiType:(id)type isSticker:(BOOL)sticker transcoderUserInfo:(id)info sizes:(id)sizes commonCapabilities:(id)capabilities representations:(int64_t)representations isLQMEnabled:(BOOL)self0 completionBlock:(id)self1
{
  if (block)
  {
    stickerCopy = sticker;
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        contentsCopy2 = contents;
        v25 = 2112;
        infoCopy = info;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Transcoder received request to transcode: %@  transcodeInfo: %@", buf, 0x16u);
      }
    }

    v22 = 0;
    if (-[NSFileManager fileExistsAtPath:isDirectory:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:isDirectory:", [contents path], &v22))
    {
      if (v22 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Input URL is a directory, not transcoding", buf, 2u);
          }
        }

        v19 = IMSingleObjectArray();
        (*(block + 2))(block, contents, v19, 0, 0, 1, 0, 0);
      }

      else
      {
        LOBYTE(v21) = enabled;
        [+[IMTranscodeController sharedInstance](IMTranscodeController transcodeFileTransferContents:"transcodeFileTransferContents:utiType:isSticker:allowUnfilteredUTIs:target:sizes:commonCapabilities:maxDimension:transcoderUserInfo:representations:isLQMEnabled:completionBlock:" utiType:contents isSticker:type allowUnfilteredUTIs:stickerCopy target:+[IMDAttachmentUtilities sizes:"messageAttachmentSendableUTIs"]commonCapabilities:0 maxDimension:sizes transcoderUserInfo:capabilities representations:-1 isLQMEnabled:info completionBlock:representations, v21, block];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          contentsCopy2 = contents;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "File doesn't exist at source path (%@), failing transcoding", buf, 0xCu);
        }
      }

      (*(block + 2))(block, contents, 0, 0, 0, 0, 0, 0);
    }
  }
}

- (void)transcodePayloadData:(id)data balloonBundleID:(id)d attachments:(id)attachments completionBlock:(id)block
{
  if (block)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134218242;
        v12 = [data length];
        v13 = 2112;
        dCopy = d;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Transcoder received request to fallback data : %lu  balloonBundleID: %@", &v11, 0x16u);
      }
    }

    [+[IMTranscodeController sharedInstance](IMTranscodeController transcodeFallbackFileTransferPayloadData:"transcodeFallbackFileTransferPayloadData:balloonBundleID:attachments:completionBlock:" balloonBundleID:data attachments:d completionBlock:attachments, block];
  }
}

- (void)generateSnapshotForMessageGUID:(id)d payloadData:(id)data balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block
{
  PayloadURL = IMSharedHelperExtractPayloadURL();
  v13 = IMOSLoggingEnabled();
  if (PayloadURL)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 134218242;
        v17 = [data length];
        v18 = 2112;
        iDCopy = iD;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Transcoder received request to snapshot data: %lu  balloonBundleID: %@", &v16, 0x16u);
      }
    }

    [+[IMTranscodeController sharedInstance](IMTranscodeController generateSnapshotForMessageGUID:"generateSnapshotForMessageGUID:payloadURL:balloonBundleID:senderContext:completionBlock:" payloadURL:d balloonBundleID:PayloadURL senderContext:iD completionBlock:context, block];
  }

  else
  {
    if (v13)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed to extract URL from payload data!", &v16, 2u);
      }
    }

    (*(block + 2))(block, 0, [NSError errorWithDomain:IMTranscodeErrorDomain code:-3 userInfo:0]);
  }
}

- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion
{
  v6 = +[IMTranscodeController sharedInstance];

  [(IMTranscodeController *)v6 transcribeAudioForAudioTransferURL:l withCompletion:completion];
}

@end