@interface IMTranscodingAgentController
+ (id)sharedInstance;
- (BOOL)checkPath:(id)path withSizes:(id)sizes;
- (BOOL)isMovieType:(id)type;
- (BOOL)shouldProcessFileTransfer:(id)transfer utiType:(id)type transcoderUserInfo:(id)info target:(int64_t)target allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities;
- (IMTranscodingAgentController)init;
- (id)_findTranscoderForUTI:(id)i;
- (id)generateReadOnlyPosterConfig:(id)config error:(id *)error;
- (void)_registerTranscoders;
- (void)decodeiMessageAppPayload:(id)payload senderContext:(id)context bundleID:(id)d completionBlock:(id)block;
- (void)generatePosterConfig:(id)config destinationURL:(id)l senderContext:(id)context completionBlock:(id)block;
- (void)generatePreview:(id)preview previewURL:(id)l senderContext:(id)context balloonBundleID:(id)d constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generatePreviewMetadata:(id)metadata destinationURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generateSafeRender:(id)render outputURL:(id)l constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block;
- (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block;
- (void)transcodeFileTransferContents:(id)contents utiType:(id)type isSticker:(BOOL)sticker allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)self0 transcoderUserInfo:(id)self1 fallback:(BOOL)self2 representations:(int64_t)self3 isLQMEnabled:(BOOL)self4 completionBlock:(id)self5;
- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments fallBack:(BOOL)back completionBlock:(id)block;
- (void)transcodeThumbnailFor:(id)for target:(int64_t)target allSizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)info isLQMEnabled:(BOOL)enabled outputURLs:(id)self0 outputContextInfo:(id)self1 attemptedTranscode:(BOOL)self2 additionalOutPutContext:(id)self3 completionBlock:(id)self4;
- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion;
@end

@implementation IMTranscodingAgentController

+ (id)sharedInstance
{
  if (qword_28112D508 != -1)
  {
    sub_2548315E4();
  }

  v3 = qword_28112D500;

  return v3;
}

- (void)_registerTranscoders
{
  if (!self->_transcoders)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA60]);
    v5 = objc_alloc_init(IMTranscoder_Image);
    v6 = objc_alloc_init(IMTranscoder_AV);
    v9 = objc_msgSend_initWithObjects_(v4, v7, v5, v8, v6, 0);
    transcoders = self->_transcoders;
    self->_transcoders = v9;

    v11 = objc_alloc(MEMORY[0x277CBEA60]);
    v16 = objc_alloc_init(IMFallbackTranscoder);
    v14 = objc_msgSend_initWithObjects_(v11, v12, v16, v13, 0);
    fallbackTranscoders = self->_fallbackTranscoders;
    self->_fallbackTranscoders = v14;
  }
}

- (IMTranscodingAgentController)init
{
  v15.receiver = self;
  v15.super_class = IMTranscodingAgentController;
  v2 = [(IMTranscodingAgentController *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IMTranscoderQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    v6 = dispatch_get_global_queue(-2, 0);
    dispatch_set_target_queue(v5, v6);

    v7 = dispatch_queue_create("com.apple.IMTranscoderPreviewGenerationQueue", 0);
    previewGenerationQueue = v2->_previewGenerationQueue;
    v2->_previewGenerationQueue = v7;

    v9 = v2->_previewGenerationQueue;
    v10 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v9, v10);

    objc_msgSend__registerTranscoders(v2, v11, v12, v13);
  }

  return v2;
}

- (id)_findTranscoderForUTI:(id)i
{
  v21 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_transcoders;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_opt_class();
        if (objc_msgSend_supportsUTI_(v11, v12, iCopy, v13, v16))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v16, v20, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)shouldProcessFileTransfer:(id)transfer utiType:(id)type transcoderUserInfo:(id)info target:(int64_t)target allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities
{
  transferCopy = transfer;
  typeCopy = type;
  infoCopy = info;
  isCopy = is;
  capabilitiesCopy = capabilities;
  v22 = objc_msgSend__findTranscoderForUTI_(self, v20, typeCopy, v21);
  v24 = v22;
  if (v22)
  {
    shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities_(v22, v23, transferCopy, infoCopy, target, typeCopy, isCopy, limit, capabilitiesCopy);
    v28 = objc_msgSend_transcodeProcessingRequired_(v24, v26, shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities, v27);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)transcodeFileTransferContents:(id)contents utiType:(id)type isSticker:(BOOL)sticker allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)self0 transcoderUserInfo:(id)self1 fallback:(BOOL)self2 representations:(int64_t)self3 isLQMEnabled:(BOOL)self4 completionBlock:(id)self5
{
  stickerCopy = sticker;
  v171 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  typeCopy = type;
  isCopy = is;
  sizesCopy = sizes;
  capabilitiesCopy = capabilities;
  infoCopy = info;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = contentsCopy;
      _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "Transcoder received request to transcode %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = typeCopy;
      _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "                       UTI: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = isCopy;
      _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "     Allow Unfiltered UTIs: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = sizesCopy;
      _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "                     Sizes: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      targetCopy3 = dimension;
      _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "             Max Dimension: %ld", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      targetCopy3 = infoCopy;
      _os_log_impl(&dword_254811000, v30, OS_LOG_TYPE_INFO, "           Transcoder Info: %@", buf, 0xCu);
    }
  }

  if (infoCopy)
  {
    v31 = objc_msgSend_objectForKey_(infoCopy, v28, *MEMORY[0x277D19DA0], v29);
    v35 = objc_msgSend_BOOLValue(v31, v32, v33, v34);

    if (v35)
    {
      if (IMIsHEVCWithAlphaVideoURL())
      {
        v39 = objc_msgSend_mutableCopy(infoCopy, v36, v37, v38);
        v42 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v40, 1, v41);
        objc_msgSend_setObject_forKey_(v39, v43, v42, *MEMORY[0x277D19DB8]);

        v47 = objc_msgSend_copy(v39, v44, v45, v46);
        infoCopy = v47;
      }
    }
  }

  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = sub_25482B85C;
  v166[3] = &unk_27978AD68;
  v48 = blockCopy;
  v167 = v48;
  v52 = MEMORY[0x259C1B690](v166);
  if (fallback)
  {
    v53 = objc_msgSend_lastObject(self->_fallbackTranscoders, v49, v50, v51);

    if (v53)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_25482B9F8;
      block[3] = &unk_27978ADB8;
      block[4] = self;
      v162 = contentsCopy;
      v163 = typeCopy;
      infoCopy = infoCopy;
      v164 = infoCopy;
      v165 = v52;
      dispatch_async(queue, block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v68 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          targetCopy3 = contentsCopy;
          _os_log_impl(&dword_254811000, v68, OS_LOG_TYPE_INFO, "Transcoding Not transcoding file %@", buf, 0xCu);
        }
      }

      v52[2](v52, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    v133 = sizesCopy;
    v132 = MEMORY[0x259C1B690](v52);
    representationsCopy = representations;
    if (representations == 2)
    {
      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v62, OS_LOG_TYPE_INFO, "Thumbnail with single requested, creating overrideBlock", buf, 2u);
        }
      }

      v63 = objc_msgSend_firstObject(v133, v59, v60, v61);
      v168 = v63;
      sizesCopy = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, &v168, 1);

      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = sub_25482BB00;
      v151[3] = &unk_27978ADE0;
      v151[4] = self;
      v152 = contentsCopy;
      targetCopy = target;
      v153 = v133;
      v154 = capabilitiesCopy;
      dimensionCopy2 = dimension;
      v155 = infoCopy;
      enabledCopy = enabled;
      v156 = v52;
      v157 = v132;
      v65 = MEMORY[0x259C1B690](v151);
      v132 = MEMORY[0x259C1B690]();

      representationsCopy = 0;
    }

    else
    {
      sizesCopy = v133;
    }

    if (stickerCopy)
    {
      if (infoCopy)
      {
        v66 = objc_msgSend_mutableCopy(infoCopy, v55, v56, v57);
      }

      else
      {
        v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v69 = v66;
      objc_msgSend_setObject_forKeyedSubscript_(v66, v67, MEMORY[0x277CBEC38], @"isSticker");
      v73 = objc_msgSend_copy(v69, v70, v71, v72);

      infoCopy = v73;
    }

    shouldPreserveHEIFEncoding_target_sourceUTI = objc_msgSend_shouldPreserveHEIFEncoding_target_sourceUTI_(IMTranscoder, v55, capabilitiesCopy, target, typeCopy);
    v75 = IMOSLoggingEnabled();
    if (shouldPreserveHEIFEncoding_target_sourceUTI)
    {
      if (v75)
      {
        v79 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v79, OS_LOG_TYPE_INFO, "Preserving HEIF encoding if possible.", buf, 2u);
        }
      }

      if (infoCopy)
      {
        v80 = objc_msgSend_mutableCopy(infoCopy, v76, v77, v78);
      }

      else
      {
        v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v84 = v80;
      v85 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v81, 1, v82);
      objc_msgSend_setObject_forKey_(v84, v86, v85, @"preserveHEIF");

      v90 = objc_msgSend_copy(v84, v87, v88, v89);
      infoCopy = v90;
    }

    else if (v75)
    {
      v83 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v83, OS_LOG_TYPE_INFO, "Not preserving HEIF encoding", buf, 2u);
      }
    }

    shouldPreserveHDREncoding = objc_msgSend_shouldPreserveHDREncoding_(IMTranscoder, v76, capabilitiesCopy, v78);
    v92 = IMOSLoggingEnabled();
    if (shouldPreserveHDREncoding)
    {
      if (v92)
      {
        v96 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v96, OS_LOG_TYPE_INFO, "Preserve HDR output", buf, 2u);
        }
      }

      if (infoCopy)
      {
        v97 = objc_msgSend_mutableCopy(infoCopy, v93, v94, v95);
      }

      else
      {
        v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v101 = v97;
      v102 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v98, 1, v99);
      objc_msgSend_setObject_forKey_(v101, v103, v102, @"preserveHDR");

      v107 = objc_msgSend_copy(v101, v104, v105, v106);
      infoCopy = v107;
    }

    else if (v92)
    {
      v100 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v100, OS_LOG_TYPE_INFO, "Will NOT preserve HDR output", buf, 2u);
      }
    }

    v108 = objc_msgSend_lastObject(sizesCopy, v93, v94, v95);
    v112 = objc_msgSend_unsignedLongValue(v108, v109, v110, v111);
    shouldProcessFileTransfer_utiType_transcoderUserInfo_target_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities = objc_msgSend_shouldProcessFileTransfer_utiType_transcoderUserInfo_target_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities_(self, v113, contentsCopy, typeCopy, infoCopy, target, isCopy, v112, capabilitiesCopy);

    if (shouldProcessFileTransfer_utiType_transcoderUserInfo_target_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities && (objc_msgSend__findTranscoderForUTI_(self, v115, typeCopy, v116), v117 = objc_claimAutoreleasedReturnValue(), (v118 = v117) != 0))
    {
      v119 = self->_queue;
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = sub_25482BD28;
      v138[3] = &unk_27978AE08;
      v139 = v117;
      v140 = contentsCopy;
      v141 = typeCopy;
      v142 = isCopy;
      targetCopy2 = target;
      v143 = sizesCopy;
      v144 = capabilitiesCopy;
      dimensionCopy3 = dimension;
      v145 = infoCopy;
      v149 = representationsCopy;
      enabledCopy2 = enabled;
      v146 = v132;
      v120 = v118;
      dispatch_async(v119, v138);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v124 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          targetCopy3 = typeCopy;
          _os_log_impl(&dword_254811000, v124, OS_LOG_TYPE_INFO, "Not transcoding attachment file format: %@", buf, 0xCu);
        }
      }

      if (target && (objc_msgSend_path(contentsCopy, v121, v122, v123), v125 = objc_claimAutoreleasedReturnValue(), v127 = objc_msgSend_checkPath_withSizes_(self, v126, v125, sizesCopy), v125, (v127 & 1) == 0))
      {
        if (IMOSLoggingEnabled())
        {
          v129 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            targetCopy3 = target;
            _os_log_impl(&dword_254811000, v129, OS_LOG_TYPE_INFO, "File is not small enough to send with target: %ld", buf, 0xCu);
          }
        }

        v128 = 0;
      }

      else
      {
        v128 = 1;
      }

      v130 = _IMTranscoderLinkFile(contentsCopy, v121, v122, v123);
      v120 = IMSingleObjectArray();

      (v132)[2](v132, contentsCopy, v120, 0, 0, v128, 0, 0);
    }
  }
}

- (BOOL)checkPath:(id)path withSizes:(id)sizes
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sizesCopy = sizes;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8, v9);
  v12 = objc_msgSend_attributesOfItemAtPath_error_(v10, v11, pathCopy, 0);

  if (v12)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = sizesCopy;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v27, v31, 16);
    if (v18)
    {
      v19 = *v28;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = objc_msgSend_fileSize(v12, v15, v16, v17, v27);
          if (v22 <= objc_msgSend_unsignedLongValue(v21, v23, v24, v25))
          {
            LOBYTE(v18) = 1;
            goto LABEL_12;
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v27, v31, 16);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)isMovieType:(id)type
{
  v4 = objc_msgSend_path(type, a2, type, v3);
  v8 = objc_msgSend_pathExtension(v4, v5, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_typeWithFilenameExtension_(MEMORY[0x277CE1CB8], v9, v8, v10);
    v14 = objc_msgSend_conformsToType_(v11, v12, *MEMORY[0x277CE1E00], v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)transcodeThumbnailFor:(id)for target:(int64_t)target allSizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)info isLQMEnabled:(BOOL)enabled outputURLs:(id)self0 outputContextInfo:(id)self1 attemptedTranscode:(BOOL)self2 additionalOutPutContext:(id)self3 completionBlock:(id)self4
{
  v106 = *MEMORY[0x277D85DE8];
  forCopy = for;
  sizesCopy = sizes;
  capabilitiesCopy = capabilities;
  infoCopy = info;
  lsCopy = ls;
  contextInfoCopy = contextInfo;
  contextCopy = context;
  blockCopy = block;
  v19 = forCopy;
  if (objc_msgSend_isMovieType_(self, v20, v19, v21))
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "Generating thumbnail of video %@", buf, 0xCu);
      }
    }

    v105 = 0;
    *buf = 0u;
    v104 = 0u;
    v27 = *MEMORY[0x277D1A4C0];
    v101[0] = *MEMORY[0x277D1A4B0];
    v101[1] = v27;
    v102[0] = &unk_28669CE38;
    v102[1] = &unk_28669CE48;
    v28 = *MEMORY[0x277D1A4C8];
    v101[2] = *MEMORY[0x277D1A4B8];
    v101[3] = v28;
    v102[2] = &unk_28669CE48;
    v102[3] = &unk_28669CE58;
    v29 = *MEMORY[0x277D1A4A0];
    v101[4] = *MEMORY[0x277D1A4A8];
    v101[5] = v29;
    v102[4] = MEMORY[0x277CBEC28];
    v102[5] = MEMORY[0x277CBEC28];
    v101[6] = *MEMORY[0x277D1A498];
    v102[6] = MEMORY[0x277CBEC28];
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v102, v101, 7);
    IMPreviewConstraintsFromDictionary();

    v31 = MEMORY[0x277D1AAB8];
    v35 = objc_msgSend_fromMeContext(MEMORY[0x277D1AB80], v32, v33, v34);
    v97 = 0;
    *v99 = *buf;
    *&v99[16] = v104;
    v100 = v105;
    v37 = objc_msgSend_newPreviewFromSourceURL_senderContext_withPreviewConstraints_skipPlayButton_error_(v31, v36, v19, v35, v99, 1, &v97);
    v38 = v97;

    v42 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v39, v40, v41);
    v45 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v42, v43, @"preview.jpg", v44);

    v46 = *MEMORY[0x277CE1DC0];
    v50 = objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v47, v48, v49);
    v51 = CGImageDestinationCreateWithURL(v45, v50, 1uLL, 0);

    v89 = v19;
    if (v51)
    {
      CGImageDestinationAddImage(v51, v37, 0);
      v52 = CGImageDestinationFinalize(v51);
      v53 = IMOSLoggingEnabled();
      if (v52)
      {
        if (v53)
        {
          v54 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *v99 = 138412290;
            *&v99[4] = v45;
            _os_log_impl(&dword_254811000, v54, OS_LOG_TYPE_INFO, "Generated frame of movie as jpeg to %@", v99, 0xCu);
          }
        }

        v89 = v45;
      }

      else
      {
        v89 = v19;
        if (v53)
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *v99 = 138412546;
            *&v99[4] = v19;
            *&v99[12] = 2112;
            *&v99[14] = v45;
            _os_log_impl(&dword_254811000, v55, OS_LOG_TYPE_INFO, "Failed to save JPEG frame of movie %@ to %@", v99, 0x16u);
          }

          v89 = v19;
        }
      }

      CFRelease(v51);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    objc_msgSend_identifier(v46, v56, v57, v58);
  }

  else
  {
    v46 = *MEMORY[0x277CE1DC0];
    v89 = v19;
    objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v22, v23, v24);
  }
  v59 = ;
  v62 = objc_msgSend__findTranscoderForUTI_(self, v60, v59, v61);

  if (IMOSLoggingEnabled())
  {
    v66 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v89;
      _os_log_impl(&dword_254811000, v66, OS_LOG_TYPE_INFO, "Transcoding thumbnail from %@", buf, 0xCu);
    }
  }

  v67 = objc_msgSend_identifier(v46, v63, v64, v65);
  v71 = objc_msgSend_lastObject(sizesCopy, v68, v69, v70);
  v98 = v71;
  v73 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v72, &v98, 1);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_25482C5DC;
  v90[3] = &unk_27978AE30;
  v91 = contextCopy;
  v92 = v19;
  v93 = lsCopy;
  v94 = contextInfoCopy;
  v95 = blockCopy;
  transcodeCopy = transcode;
  v79 = contextInfoCopy;
  v74 = lsCopy;
  v82 = v19;
  v75 = blockCopy;
  v76 = contextCopy;
  objc_msgSend_transcodeFileTransfer_utiType_allowUnfilteredUTIs_target_sizes_commonCapabilities_maxDimension_transcoderUserInfo_representations_isLQMEnabled_completionBlock_(v62, v77, v89, v67, MEMORY[0x277CBEBF8], target, v73, capabilitiesCopy, dimension, infoCopy, 0, enabled, v90);
}

- (void)transcodeFileTransferData:(id)data balloonBundleID:(id)d attachments:(id)attachments fallBack:(BOOL)back completionBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  attachmentsCopy = attachments;
  blockCopy = block;
  v19 = objc_msgSend_lastObject(self->_fallbackTranscoders, v16, v17, v18);

  if (v19)
  {
    queue = self->_queue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_25482C9C4;
    v22[3] = &unk_27978AE58;
    backCopy = back;
    v23 = dCopy;
    selfCopy = self;
    v25 = dataCopy;
    v26 = attachmentsCopy;
    v27 = blockCopy;
    dispatch_async(queue, v22);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = dCopy;
        _os_log_impl(&dword_254811000, v21, OS_LOG_TYPE_INFO, "Transcoding Not transcoding attachment file format: %@", buf, 0xCu);
      }
    }

    (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, 0);
  }
}

- (void)generateSafeRender:(id)render outputURL:(id)l constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  v226 = *MEMORY[0x277D85DE8];
  renderCopy = render;
  lCopy = l;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = renderCopy;
      _os_log_impl(&dword_254811000, v14, OS_LOG_TYPE_INFO, "Transcoder received request to generate safe render: %@", &buf, 0xCu);
    }
  }

  v15 = MEMORY[0x277CE1CB8];
  v16 = objc_msgSend_lastPathComponent(renderCopy, v11, v12, v13);
  v20 = objc_msgSend_pathExtension(v16, v17, v18, v19);
  v23 = objc_msgSend_typeWithFilenameExtension_(v15, v21, v20, v22);

  LODWORD(v20) = objc_msgSend_conformsToType_(v23, v24, *MEMORY[0x277CE1DB0], v25);
  v28 = objc_msgSend_conformsToType_(v23, v26, *MEMORY[0x277CE1E00], v27);
  v31 = objc_msgSend_conformsToType_(v23, v29, *MEMORY[0x277CE1D00], v30);
  v35 = objc_msgSend_im_lastPathComponent(renderCopy, v32, v33, v34);
  v38 = objc_msgSend_containsString_(v35, v36, *MEMORY[0x277D19E70], v37);

  v42 = v38 | v20;
  if ((v42 | v28 | v31))
  {
    v213 = 0;
    v214 = &v213;
    v215 = 0x2020000000;
    v216 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v222 = 0x3032000000;
    v223 = sub_25482D988;
    v224 = sub_25482D998;
    v225 = 0;
    v207 = 0;
    v208 = &v207;
    v209 = 0x3032000000;
    v210 = sub_25482D988;
    v211 = sub_25482D998;
    v212 = 0;
    v43 = objc_msgSend_pathExtension(renderCopy, v39, v40, v41);
    group = dispatch_group_create();
    v190 = objc_msgSend_untrustedContext(MEMORY[0x277D1AB80], v44, v45, v46);
    if ((v42 & 1) == 0)
    {
      if (v28)
      {
        dispatch_group_enter(group);
        v102 = MEMORY[0x277D1A8B0];
        if (constraints->var0 >= 1200.0)
        {
          var0 = constraints->var0;
        }

        else
        {
          var0 = 1200.0;
        }

        var2 = constraints->var2;
        v199[0] = MEMORY[0x277D85DD0];
        v199[1] = 3221225472;
        v199[2] = sub_25482D9A0;
        v199[3] = &unk_27978AE80;
        v202 = &v207;
        v200 = renderCopy;
        v203 = &v213;
        p_buf = &buf;
        v201 = group;
        objc_msgSend_generateMoviePreview_senderContext_maxPxWidth_minThumbnailPxSize_scale_withCompletionBlock_(v102, v105, v200, v190, v199, var0, constraints->var1.width, constraints->var1.height, var2);

        v51 = v200;
      }

      else
      {
        if (!v31)
        {
          v123 = v43;
LABEL_60:
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          if (blockCopy)
          {
            v181 = *(&buf + 1);
            if (v214[3])
            {
              v182 = 1;
            }

            else if (*(*(&buf + 1) + 40))
            {
              v182 = 0;
            }

            else
            {
              v183 = objc_alloc(MEMORY[0x277CCA9B8]);
              v185 = objc_msgSend_initWithDomain_code_userInfo_(v183, v184, *MEMORY[0x277D1A4D0], 1, 0);
              v186 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = v185;

              v181 = *(&buf + 1);
              v182 = *(v214 + 24);
            }

            (*(blockCopy + 2))(blockCopy, v182 & 1, v208[5], v123, *(v181 + 40));
          }

          _Block_object_dispose(&v207, 8);
          _Block_object_dispose(&buf, 8);

          _Block_object_dispose(&v213, 8);
          goto LABEL_68;
        }

        dispatch_group_enter(group);
        v129 = MEMORY[0x277D1A8B0];
        v193[0] = MEMORY[0x277D85DD0];
        v193[1] = 3221225472;
        v193[2] = sub_25482DC50;
        v193[3] = &unk_27978AEA8;
        v196 = &buf;
        v197 = &v207;
        v194 = renderCopy;
        v198 = &v213;
        v195 = group;
        objc_msgSend_generateAudioPreview_senderContext_withCompletionBlock_(v129, v130, v194, v190, v193);

        v51 = v194;
      }

      goto LABEL_35;
    }

    v48 = constraints->var0;
    if (constraints->var0 < 1200.0)
    {
      v48 = 1200.0;
    }

    *&v48 = v48;
    v49 = constraints->var2;
    *&v49 = v49;
    v50 = *(&buf + 1);
    obj = *(*(&buf + 1) + 40);
    v51 = objc_msgSend_generateImagePreviewForFileURL_senderContext_maxPixelDimension_scale_error_(MEMORY[0x277D1A8B0], v47, renderCopy, v190, &obj, v48, v49);
    objc_storeStrong((v50 + 40), obj);
    if (v51 && (objc_msgSend_utTypeString(v51, v52, v53, v54), (v55 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_utTypeString(v51, v52, v53, v54), v56 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend_length(v56, v57, v58, v59) == 0, v56, v55, !v60))
    {
      v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v65 = objc_msgSend_utTypeString(v51, v62, v63, v64);
      objc_msgSend_setValue_forKey_(v61, v66, v65, *MEMORY[0x277D1A2D0]);

      v67 = MEMORY[0x277CCABB0];
      v71 = objc_msgSend_isFromMe(v190, v68, v69, v70);
      v74 = objc_msgSend_numberWithBool_(v67, v72, v71, v73);
      objc_msgSend_setValue_forKey_(v61, v75, v74, *MEMORY[0x277D1A2A8]);

      v76 = MEMORY[0x277CCABB0];
      isTrustedSender = objc_msgSend_isTrustedSender(v190, v77, v78, v79);
      v83 = objc_msgSend_numberWithBool_(v76, v81, isTrustedSender, v82);
      objc_msgSend_setValue_forKey_(v61, v84, v83, *MEMORY[0x277D1A2B0]);

      v88 = objc_msgSend_serviceName(v190, v85, v86, v87);
      objc_msgSend_setValue_forKey_(v61, v89, v88, *MEMORY[0x277D1A2B8]);

      v93 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v90, v91, v92);
      objc_msgSend_trackEvent_withDictionary_(v93, v94, *MEMORY[0x277D1A128], v61);
    }

    else
    {
      v106 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v52, v53, v54);
      objc_msgSend_trackEvent_(v106, v107, *MEMORY[0x277D1A120], v108);

      if (!v51)
      {
LABEL_29:
        v124 = objc_alloc(MEMORY[0x277CCA9B8]);
        v126 = objc_msgSend_initWithDomain_code_userInfo_(v124, v125, *MEMORY[0x277D1A4D0], 9, 0);
        v127 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v126;

        if (IMOSLoggingEnabled())
        {
          v128 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            *v217 = 0;
            _os_log_impl(&dword_254811000, v128, OS_LOG_TYPE_INFO, "Lockdown - Unable to get CGImageRef from BlastDoor.", v217, 2u);
          }
        }

LABEL_35:
        v123 = v43;
LABEL_59:

        goto LABEL_60;
      }
    }

    v109 = objc_msgSend_image(v51, v95, v96, v97);
    image = objc_msgSend_cgImage(v109, v110, v111, v112);

    v116 = objc_msgSend_frameCount(v51, v113, v114, v115);
    if (image)
    {
      v117 = v116;
      v118 = *MEMORY[0x277CE1E10];
      v188 = *MEMORY[0x277CE1E10];
      if (!v38)
      {
        v118 = v23;
      }

      v119 = v118;
      if (v38)
      {
        v123 = @"png";
      }

      else
      {
        v123 = objc_msgSend_pathExtension(renderCopy, v120, v121, v122);

        if (v117 < 2)
        {
          v188 = v23;
LABEL_45:
          v138 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v131, v132, v133);
          v139 = MEMORY[0x277CCACA8];
          v143 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v140, v141, v142);
          v147 = objc_msgSend_UUIDString(v143, v144, v145, v146);
          v150 = objc_msgSend_stringWithFormat_(v139, v148, @"%@.%@", v149, v147, v123);
          url = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v138, v151, v150, v152);

          v156 = objc_msgSend_identifier(v188, v153, v154, v155);
          v157 = CGImageDestinationCreateWithURL(url, v156, 1uLL, 0);

          if (v157)
          {
            CGImageDestinationAddImage(v157, image, 0);
            if (CGImageDestinationFinalize(v157))
            {
              *(v214 + 24) = 1;
              v161 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v158, v159, v160);
              v162 = *(&buf + 1);
              v205 = *(*(&buf + 1) + 40);
              objc_msgSend_moveItemAtURL_toURL_error_(v161, v163, url, lCopy, &v205);
              objc_storeStrong((v162 + 40), v205);

              objc_storeStrong(v208 + 5, l);
              if (*(*(&buf + 1) + 40))
              {
                v164 = objc_alloc(MEMORY[0x277CCA9B8]);
                v165 = *(*(&buf + 1) + 40);
                v219 = *MEMORY[0x277CCA7E8];
                v220 = v165;
                v167 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v166, &v220, &v219, 1);
                v169 = objc_msgSend_initWithDomain_code_userInfo_(v164, v168, *MEMORY[0x277D1A4D0], 9, v167);
                v170 = *(*(&buf + 1) + 40);
                *(*(&buf + 1) + 40) = v169;
              }
            }

            else
            {
              v176 = objc_alloc(MEMORY[0x277CCA9B8]);
              v178 = objc_msgSend_initWithDomain_code_userInfo_(v176, v177, *MEMORY[0x277D1A4D0], 9, 0);
              v179 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = v178;

              if (IMOSLoggingEnabled())
              {
                v180 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
                {
                  *v217 = 138412290;
                  v218 = url;
                  _os_log_impl(&dword_254811000, v180, OS_LOG_TYPE_INFO, "Failed to write image to %@", v217, 0xCu);
                }
              }
            }

            CFRelease(v157);
          }

          else
          {
            v171 = objc_alloc(MEMORY[0x277CCA9B8]);
            v173 = objc_msgSend_initWithDomain_code_userInfo_(v171, v172, *MEMORY[0x277D1A4D0], 9, 0);
            v174 = *(*(&buf + 1) + 40);
            *(*(&buf + 1) + 40) = v173;

            if (IMOSLoggingEnabled())
            {
              v175 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
              {
                *v217 = 138412290;
                v218 = url;
                _os_log_impl(&dword_254811000, v175, OS_LOG_TYPE_INFO, "Failed to create CGImageDestination for %@", v217, 0xCu);
              }
            }
          }

          goto LABEL_59;
        }

        if (IMOSLoggingEnabled())
        {
          v134 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
          {
            *v217 = 0;
            _os_log_impl(&dword_254811000, v134, OS_LOG_TYPE_INFO, "File is actually animated lets save it as a JPEG...", v217, 2u);
          }
        }

        v188 = *MEMORY[0x277CE1DC0];

        objc_msgSend_preferredFilenameExtension(v188, v135, v136, v137);
        v123 = v43 = v123;
      }

      goto LABEL_45;
    }

    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v98 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_254811000, v98, OS_LOG_TYPE_INFO, "File is not a supported type: %@", &buf, 0xCu);
    }
  }

  v99 = objc_alloc(MEMORY[0x277CCA9B8]);
  v101 = objc_msgSend_initWithDomain_code_userInfo_(v99, v100, *MEMORY[0x277D1A4D0], 1, 0);
  (*(blockCopy + 2))(blockCopy, 0, 0, 0, v101);

LABEL_68:
}

- (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block
{
  dCopy = d;
  lCopy = l;
  iDCopy = iD;
  contextCopy = context;
  blockCopy = block;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_25482E0B0;
  v31[3] = &unk_27978AEF8;
  v32 = blockCopy;
  v17 = blockCopy;
  v18 = MEMORY[0x259C1B690](v31);
  queue = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_25482E1A0;
  v25[3] = &unk_27978ADB8;
  v26 = dCopy;
  v27 = lCopy;
  v28 = iDCopy;
  v29 = contextCopy;
  v30 = v18;
  v20 = v18;
  v21 = contextCopy;
  v22 = iDCopy;
  v23 = lCopy;
  v24 = dCopy;
  dispatch_async(queue, v25);
}

- (void)generatePreview:(id)preview previewURL:(id)l senderContext:(id)context balloonBundleID:(id)d constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  previewCopy = preview;
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  blockCopy = block;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_25482E380;
  v37[3] = &unk_27978AF48;
  v38 = blockCopy;
  v19 = blockCopy;
  v20 = MEMORY[0x259C1B690](v37);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v21 = *&constraints->var1.height;
  v34 = *&constraints->var0;
  v35 = v21;
  v28[2] = sub_25482E488;
  v28[3] = &unk_27978AF70;
  v29 = previewCopy;
  v30 = lCopy;
  v31 = contextCopy;
  v32 = dCopy;
  v36 = *&constraints->var3;
  v33 = v20;
  v22 = v20;
  v23 = dCopy;
  v24 = contextCopy;
  v25 = lCopy;
  v26 = previewCopy;
  v27 = MEMORY[0x259C1B690](v28);
  dispatch_sync(self->_previewGenerationQueue, v27);
}

- (void)generatePreviewMetadata:(id)metadata destinationURL:(id)l senderContext:(id)context constraints:(IMPreviewConstraints *)constraints completionBlock:(id)block
{
  metadataCopy = metadata;
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_25482E6DC;
  v32[3] = &unk_27978AF48;
  v33 = blockCopy;
  v16 = blockCopy;
  v17 = MEMORY[0x259C1B690](v32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_25482E7E4;
  v24[3] = &unk_27978AF98;
  v25 = metadataCopy;
  v26 = lCopy;
  v18 = *&constraints->var1.height;
  v29 = *&constraints->var0;
  v30 = v18;
  v31 = *&constraints->var3;
  v27 = contextCopy;
  v28 = v17;
  v19 = v17;
  v20 = contextCopy;
  v21 = lCopy;
  v22 = metadataCopy;
  v23 = MEMORY[0x259C1B690](v24);
  dispatch_sync(self->_previewGenerationQueue, v23);
}

- (void)decodeiMessageAppPayload:(id)payload senderContext:(id)context bundleID:(id)d completionBlock:(id)block
{
  payloadCopy = payload;
  contextCopy = context;
  dCopy = d;
  blockCopy = block;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_25482EAD4;
  v26[3] = &unk_27978AFE8;
  v27 = blockCopy;
  v14 = blockCopy;
  v15 = MEMORY[0x259C1B690](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_25482EC10;
  v21[3] = &unk_27978B010;
  v22 = payloadCopy;
  v23 = contextCopy;
  v24 = dCopy;
  v25 = v15;
  v16 = v15;
  v17 = dCopy;
  v18 = contextCopy;
  v19 = payloadCopy;
  v20 = MEMORY[0x259C1B690](v21);
  dispatch_sync(self->_previewGenerationQueue, v20);
}

- (void)generatePosterConfig:(id)config destinationURL:(id)l senderContext:(id)context completionBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  configCopy = config;
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = configCopy;
      v31 = 2112;
      v32 = lCopy;
      _os_log_impl(&dword_254811000, v14, OS_LOG_TYPE_INFO, "Request to generate poster config from source %@ to dest %@", buf, 0x16u);
    }
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_25482EEF0;
  v27[3] = &unk_27978AEF8;
  v28 = blockCopy;
  v15 = blockCopy;
  v16 = MEMORY[0x259C1B690](v27);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_25482EFE0;
  v22[3] = &unk_27978B010;
  v23 = configCopy;
  v24 = contextCopy;
  v25 = lCopy;
  v26 = v16;
  v17 = v16;
  v18 = lCopy;
  v19 = contextCopy;
  v20 = configCopy;
  v21 = MEMORY[0x259C1B690](v22);
  dispatch_sync(self->_previewGenerationQueue, v21);
}

- (id)generateReadOnlyPosterConfig:(id)config error:(id *)error
{
  v85[2] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2050000000;
  v5 = qword_27F611A90;
  v83 = qword_27F611A90;
  if (!qword_27F611A90)
  {
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_25482FAC0;
    v79[3] = &unk_27978B088;
    v79[4] = &v80;
    sub_25482FAC0(v79);
    v5 = v81[3];
  }

  v6 = v5;
  _Block_object_dispose(&v80, 8);
  v78 = 0;
  v66 = v5;
  v69 = configCopy;
  v70 = objc_msgSend_unarchiveConfigurationAtURL_format_error_(v5, v7, configCopy, -1, &v78);
  v68 = v78;
  v11 = v70;
  if (v70)
  {
    v12 = objc_msgSend_providerBundleIdentifier(v70, v8, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"com.apple.PhotosUIPrivate.PhotosPosterProvider", v14);

    if (isEqualToString)
    {
      v65 = objc_msgSend_assetDirectory(v70, v16, v17, v18);
      v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v19, v20, v21);
      v23 = *MEMORY[0x277CBE8E8];
      v24 = *MEMORY[0x277CBE868];
      v85[0] = *MEMORY[0x277CBE8E8];
      v85[1] = v24;
      v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v85, 2);
      v28 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v22, v27, v65, v26, 4, 0);

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v29 = v28;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v74, v84, 16);
      if (v32)
      {
        v33 = *v75;
        while (2)
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v75 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v74 + 1) + 8 * i);
            v73 = 0;
            ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v35, v31, &v73, v24, 0);
            v37 = v73;
            v41 = v37;
            if (ResourceValue_forKey_error && objc_msgSend_BOOLValue(v37, v38, v39, v40))
            {
              v72 = 0;
              v43 = objc_msgSend_getResourceValue_forKey_error_(v35, v42, &v72, v23, 0);
              v44 = v72;
              v47 = v44;
              if (v43)
              {
                if (objc_msgSend_isEqualToString_(v44, v45, @"input.segmentation", v46))
                {
                  v57 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v48, v49, v50);
                  objc_msgSend_removeItemAtURL_error_(v57, v58, v35, 0);

                  goto LABEL_24;
                }

                if (objc_msgSend_isEqualToString_(v47, v48, @"supplements", v50))
                {
                  objc_msgSend_skipDescendants(v29, v51, v52, v53);
                }
              }
            }
          }

          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v74, v84, 16);
          if (v32)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v71 = 0;
      v56 = objc_msgSend_archiveConfiguration_format_error_(v66, v59, v70, 1, &v71);
      v60 = v71;
      v61 = v60;
      if (v56)
      {
        v62 = v56;
      }

      else if (error)
      {
        v63 = v60;
        *error = v61;
      }
    }

    else
    {
      v56 = v69;
    }
  }

  else
  {
    if (!error)
    {
      v56 = 0;
      goto LABEL_31;
    }

    v54 = objc_alloc(MEMORY[0x277CCA9B8]);
    v56 = 0;
    *error = objc_msgSend_initWithDomain_code_userInfo_(v54, v55, *MEMORY[0x277D1A4D0], 1, 0);
  }

  v11 = v70;
LABEL_31:

  return v56;
}

- (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_25482FA40;
  v8[3] = &unk_27978B060;
  v9 = completionCopy;
  v6 = completionCopy;
  objc_msgSend_transcribeAudioForAudioTransferURL_withCompletion_(IMTranscriptionUtilities, v7, l, v8);
}

@end