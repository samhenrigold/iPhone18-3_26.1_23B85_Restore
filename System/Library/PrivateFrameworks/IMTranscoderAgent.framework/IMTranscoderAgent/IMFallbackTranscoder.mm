@interface IMFallbackTranscoder
- (IMFallbackTranscoder_AudioMessage)audioTranscoder;
- (id)_findPluginFallbackEncoder:(id)encoder withBalloonBundleID:(id)d;
- (void)_transcodeAudioMessageContents:(id)contents utiType:(id)type completionBlock:(id)block;
- (void)_transcodeAutoloopContents:(id)contents utiType:(id)type completionBlock:(id)block;
- (void)dealloc;
- (void)transcodeFileTransferContents:(id)contents utiType:(id)type transcoderUserInfo:(id)info completionBlock:(id)block;
- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments inFileURL:(id)l fallBack:(BOOL)back completionBlock:(id)block;
@end

@implementation IMFallbackTranscoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMFallbackTranscoder;
  [(IMFallbackTranscoder *)&v3 dealloc];
}

- (id)_findPluginFallbackEncoder:(id)encoder withBalloonBundleID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = *MEMORY[0x277D19720];
  v6 = objc_msgSend_rangeOfString_(d, a2, *MEMORY[0x277D19720], d);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(encoder, v7, &v45, v53, 16);
  if (v10)
  {
    v11 = *v46;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(encoder);
        }

        v13 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, *(*(&v45 + 1) + 8 * v12), v9);
        v14 = objc_alloc(MEMORY[0x277CCA8D8]);
        v17 = objc_msgSend_initWithURL_(v14, v15, v13, v16);
        v21 = objc_msgSend_bundleIdentifier(v17, v18, v19, v20);
        if ((objc_msgSend_isEqualToString_(v21, v22, d, v23) & 1) != 0 || !v6 && objc_msgSend_isEqualToString_(v21, v8, v44, v9))
        {
          v25 = objc_msgSend_infoDictionary(v17, v8, v24, v9);
          v28 = objc_msgSend_objectForKey_(v25, v26, @"CKFallbackClass", v27);
          if (objc_msgSend_length(v28, v29, v30, v31))
          {
            objc_msgSend_load(v17, v8, v32, v9);
            v33 = NSClassFromString(v28);
            v34 = IMBalloonExtensionIDWithSuffix();
            if (objc_msgSend_isEqualToString_(d, v35, v34, v36))
            {
              v33 = NSClassFromString(&cfstr_Msphotosextens.isa);
            }

            v37 = objc_alloc_init(v33);
            if (objc_msgSend_conformsToProtocol_(v37, v38, &unk_2866A1580, v39))
            {
              if (IMOSLoggingEnabled())
              {
                v42 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  dCopy2 = d;
                  v51 = 2112;
                  v52 = v37;
                  _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Found encoder to get bundle for identifier %@, encoder %@", buf, 0x16u);
                }
              }

              return v37;
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(encoder, v8, &v45, v53, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      dCopy2 = d;
      _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "Failed to get bundle for identifier %@", buf, 0xCu);
    }
  }

  return 0;
}

- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments inFileURL:(id)l fallBack:(BOOL)back completionBlock:(id)block
{
  backCopy = back;
  v42 = *MEMORY[0x277D85DE8];
  v15 = IMBalloonProviderBundlePaths();
  PluginFallbackEncoder_withBalloonBundleID = objc_msgSend__findPluginFallbackEncoder_withBalloonBundleID_(self, v16, v15, d);
  if (PluginFallbackEncoder_withBalloonBundleID)
  {
    v18 = PluginFallbackEncoder_withBalloonBundleID;
    v19 = PluginFallbackEncoder_withBalloonBundleID;
    if (backCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = objc_msgSend___imArrayByApplyingBlock_(attachments, v20, &unk_28669AED8, v21);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = sub_254829970;
        v35[3] = &unk_27978AC50;
        v35[4] = data;
        v35[5] = l;
        v35[7] = v18;
        v35[8] = block;
        v35[6] = attachments;
        objc_msgSend_fallbackForData_attachments_inFileURL_completionBlockWithText_(v18, v23, data, v22, l, v35);
      }

      else
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_254829B2C;
        v34[3] = &unk_27978AC78;
        v34[4] = data;
        v34[5] = l;
        v34[7] = v18;
        v34[8] = block;
        v34[6] = attachments;
        objc_msgSend_fallbackForData_inFileURL_completionBlock_(v18, v20, data, l, v34);
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          dCopy = v18;
          v38 = 2080;
          v39 = "Oct 22 2025";
          v40 = 2080;
          v41 = "22:16:28";
          _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "******** found encoder ******** %@ that responds to fullQualityForData %s %s", buf, 0x20u);
        }
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_254829CDC;
      v33[3] = &unk_27978ACA0;
      v33[4] = v18;
      v33[5] = block;
      objc_msgSend_fullQualityForData_inFileURL_completionBlock_(v18, v25, data, l, v33);
    }

    else
    {
      v27 = objc_opt_respondsToSelector();
      v28 = IMOSLoggingEnabled();
      if (v27)
      {
        if (v28)
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            dCopy = v18;
            v38 = 2080;
            v39 = "Oct 22 2025";
            v40 = 2080;
            v41 = "22:16:28";
            _os_log_impl(&dword_254811000, v30, OS_LOG_TYPE_INFO, "******** found encoder ******** %@ that responds to fullQualityForData:attachments:inFileURL:completionBlock: %s %s", buf, 0x20u);
          }
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = sub_254829E48;
        v32[3] = &unk_27978ACC8;
        v32[4] = v18;
        v32[5] = block;
        objc_msgSend_fullQualityForData_attachments_inFileURL_completionBlock_(v18, v29, data, 0, l, v32);
      }

      else
      {
        if (v28)
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            dCopy = v18;
            _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "******* did NOT ****** find encoder %@ that responds to fullQualityForData", buf, 0xCu);
          }
        }

        (*(block + 2))(block, 0, 0, 0, 1, 0);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        dCopy = d;
        _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "IMTranscoding. No encoder found for balloon id %@", buf, 0xCu);
      }
    }

    (*(block + 2))(block, 0, 0, 0, 1, 0);
  }
}

- (void)transcodeFileTransferContents:(id)contents utiType:(id)type transcoderUserInfo:(id)info completionBlock:(id)block
{
  v9 = objc_msgSend_objectForKey_(info, a2, *MEMORY[0x277D19DC8], type);
  if (objc_msgSend_BOOLValue(v9, v10, v11, v12))
  {

    MEMORY[0x2821F9670](self, sel__transcodeAudioMessageContents_utiType_completionBlock_, contents, type);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel__transcodeAutoloopContents_utiType_completionBlock_, contents, type);
  }
}

- (void)_transcodeAutoloopContents:(id)contents utiType:(id)type completionBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, contents, type);
  PathComponent = objc_msgSend_lastPathComponent(contents, v8, v9, v10);
  v15 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v12, v13, v14);
  v17 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v7, v16, @"gif", v15);
  v20 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v18, v17, v19);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3052000000;
  v24[3] = sub_25482A2F4;
  v24[4] = sub_25482A304;
  v24[5] = 0;
  if (qword_27F611A88 != -1)
  {
    sub_2548315BC();
  }

  if (off_27F611A80)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        contentsCopy = contents;
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&dword_254811000, v21, OS_LOG_TYPE_INFO, "Transcoding GIF {source: %@, target: %@}", buf, 0x16u);
      }
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_25482A440;
    v23[3] = &unk_27978AD10;
    v23[4] = v20;
    v23[5] = block;
    v23[6] = v24;
    off_27F611A80(contents, v20, &unk_28669AF38, v23);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "IMTranscoding. PFCreateGIFFromVideoURL function not available", buf, 2u);
      }
    }

    (*(block + 2))(block, 0, 0, 0, 0, 0);
  }

  _Block_object_dispose(v24, 8);
}

- (void)_transcodeAudioMessageContents:(id)contents utiType:(id)type completionBlock:(id)block
{
  v7 = objc_msgSend_audioTranscoder(self, a2, contents, type);

  MEMORY[0x2821F9670](v7, sel_transcodeOpusFile_completionBlock_, contents, block);
}

- (IMFallbackTranscoder_AudioMessage)audioTranscoder
{
  result = self->_audioTranscoder;
  if (!result)
  {
    result = objc_alloc_init(IMFallbackTranscoder_AudioMessage);
    self->_audioTranscoder = result;
  }

  return result;
}

@end