@interface IMTranscoder_AV
- (BOOL)_isHEVCVideo:(id)video;
- (int64_t)shouldTranscodeTransfer:(id)transfer transcoderUserInfo:(id)info target:(int64_t)target utiType:(id)type allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities;
- (int64_t)shouldTranscodeTransfer:(id)transfer transcoderUserInfo:(id)info target:(int64_t)target utiType:(id)type allowUnfilteredUTIs:(id)is isAnimojiV2:(BOOL)v2 removeAlpha:(BOOL)alpha isHDR:(BOOL)self0 preserveHDR:(BOOL)self1 isAA:(BOOL)self2 preserveAA:(BOOL)self3 fileSizeLimit:(unint64_t)self4;
- (unint64_t)_fileSizeForTransfer:(id)transfer;
- (void)_transcodeVideoAsync:(id)async target:(int64_t)target maxBytes:(unint64_t)bytes isAnimojiV2:(BOOL)v2 removeAlpha:(BOOL)alpha preserveHDR:(BOOL)r isAA:(BOOL)a preserveAA:(BOOL)self0 userInfo:(id)self1 completionHandler:(id)self2;
- (void)_transcodeVideoPassThrough:(id)through completionHandler:(id)handler;
- (void)transcodeFileTransfer:(id)transfer utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3;
@end

@implementation IMTranscoder_AV

- (BOOL)_isHEVCVideo:(id)video
{
  v46 = *MEMORY[0x277D85DE8];
  videoCopy = video;
  v4 = IMAVURLAssetOptionsDefault();
  v5 = objc_alloc(MEMORY[0x277CE6650]);
  v34 = videoCopy;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = objc_msgSend_initWithURL_options_(v5, v6, videoCopy, v4);
  obj = objc_msgSend_tracks(v33, v7, v8, v9);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v40, v45, 16);
  if (v11)
  {
    v15 = v11;
    v16 = 0;
    v17 = *v41;
    v18 = *MEMORY[0x277CE5EA8];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        v21 = objc_msgSend_mediaType(v20, v12, v13, v14);
        isEqual = objc_msgSend_isEqual_(v21, v22, v18, v23);

        if (isEqual)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v25 = objc_msgSend_formatDescriptions(v20, v12, v13, v14);
          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v36, v44, 16);
          if (v27)
          {
            v28 = v27;
            v29 = *v37;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v37 != v29)
                {
                  objc_enumerationMutation(v25);
                }

                v16 |= CMFormatDescriptionGetMediaSubType(*(*(&v36 + 1) + 8 * j)) == 1752589105;
              }

              v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v31, &v36, v44, 16);
            }

            while (v28);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v40, v45, 16);
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (int64_t)shouldTranscodeTransfer:(id)transfer transcoderUserInfo:(id)info target:(int64_t)target utiType:(id)type allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities
{
  if (!transfer)
  {
    return 0;
  }

  v14 = *MEMORY[0x277D19DB8];
  capabilitiesCopy = capabilities;
  isCopy = is;
  typeCopy = type;
  infoCopy = info;
  transferCopy = transfer;
  v33 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v20, infoCopy, v14);
  v22 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v21, infoCopy, *MEMORY[0x277D19DD8]);
  IMCheckVideoURLProperties();
  shouldPreserveHDREncoding = objc_msgSend_shouldPreserveHDREncoding_(IMTranscoder, v23, capabilitiesCopy, v24);
  v26 = IMIsAAVideoURL();
  LOBYTE(v14) = objc_msgSend_shouldPreserveAAEncoding_(IMTranscoder, v27, capabilitiesCopy, v28);

  BYTE4(v32) = v14;
  BYTE3(v32) = v26;
  BYTE2(v32) = shouldPreserveHDREncoding;
  LOWORD(v32) = v22;
  v30 = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_isAnimojiV2_removeAlpha_isHDR_preserveHDR_isAA_preserveAA_fileSizeLimit_(self, v29, transferCopy, infoCopy, target, typeCopy, isCopy, v33, v32, limit);

  return v30;
}

- (int64_t)shouldTranscodeTransfer:(id)transfer transcoderUserInfo:(id)info target:(int64_t)target utiType:(id)type allowUnfilteredUTIs:(id)is isAnimojiV2:(BOOL)v2 removeAlpha:(BOOL)alpha isHDR:(BOOL)self0 preserveHDR:(BOOL)self1 isAA:(BOOL)self2 preserveAA:(BOOL)self3 fileSizeLimit:(unint64_t)self4
{
  v2Copy = v2;
  v129 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  infoCopy = info;
  typeCopy = type;
  isCopy = is;
  if (!transferCopy)
  {
    goto LABEL_20;
  }

  v26 = objc_msgSend_objectForKey_(infoCopy, v23, *MEMORY[0x277D19DC0], v24);
  v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29);

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v123 = 138412290;
      v124 = *&typeCopy;
      _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "Checking if we support the AV uti: %@", &v123, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      LOWORD(v123) = 0;
      _os_log_impl(&dword_254811000, v32, OS_LOG_TYPE_INFO, "Trying to discriminate based on type alone:", &v123, 2u);
    }
  }

  v33 = objc_opt_class();
  v37 = objc_msgSend_supportedUTIs(v33, v34, v35, v36);
  v40 = objc_msgSend_containsObject_(v37, v38, typeCopy, v39);

  if (!v40)
  {
LABEL_20:
    v53 = 0;
    goto LABEL_85;
  }

  if (target == 2)
  {
    v44 = objc_msgSend_typeWithIdentifier_(MEMORY[0x277CE1CB8], v41, typeCopy, v43);
    v49 = objc_msgSend_typeWithIdentifier_(MEMORY[0x277CE1CB8], v45, @"org.3gpp.adaptive-multi-rate-audio", v46);
    if (v30 && (objc_msgSend_conformsToType_(v44, v47, v49, v48) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v95 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          v99 = objc_msgSend_preferredFilenameExtension(v49, v96, v97, v98);
          v103 = objc_msgSend_preferredFilenameExtension(v44, v100, v101, v102);
          v123 = 138412802;
          v124 = *&v99;
          v125 = 2112;
          v126 = typeCopy;
          v127 = 2112;
          v128 = v103;
          _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "RCS expects AMR type (ext %@) for audio message, not %@ (ext %@), we need to transcode", &v123, 0x20u);
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (objc_msgSend_conformsToType_(v44, v47, *MEMORY[0x277CE1DE0], v48))
      {
        if (IMOSLoggingEnabled())
        {
          v52 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v123 = 138412290;
            v124 = *&typeCopy;
            _os_log_impl(&dword_254811000, v52, OS_LOG_TYPE_INFO, "RCS Allows %@ as-is", &v123, 0xCu);
          }
        }

        v53 = 1;
        goto LABEL_84;
      }

      if (objc_msgSend_conformsToType_(v44, v50, *MEMORY[0x277CE1DF0], v51) & 1) != 0 || (objc_msgSend_conformsToType_(v44, v54, *MEMORY[0x277CE1DE8], v55))
      {

        goto LABEL_24;
      }

      if (IMOSLoggingEnabled())
      {
        v95 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          v123 = 138412290;
          v124 = *&typeCopy;
          _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "RCS does not expect AV type %@, we need to transcode", &v123, 0xCu);
        }

LABEL_82:
      }
    }

    v53 = 2;
LABEL_84:

    goto LABEL_85;
  }

LABEL_24:
  if (objc_msgSend_count(infoCopy, v41, v42, v43))
  {
    v58 = objc_msgSend_objectForKey_(infoCopy, v56, *MEMORY[0x277D19DE0], v57);
    objc_msgSend_doubleValue(v58, v59, v60, v61);
    v63 = v62;

    v66 = objc_msgSend_objectForKey_(infoCopy, v64, *MEMORY[0x277D19DB0], v65);
    objc_msgSend_doubleValue(v66, v67, v68, v69);
    v71 = v70;

    v74 = objc_msgSend_objectForKey_(infoCopy, v72, *MEMORY[0x277D19DA8], v73);
    objc_msgSend_doubleValue(v74, v75, v76, v77);
    v79 = v78;

    v82 = objc_msgSend_objectForKey_(infoCopy, v80, *MEMORY[0x277D19D98], v81);
    if (IMOSLoggingEnabled())
    {
      v83 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        v123 = 134217984;
        v124 = v63;
        _os_log_impl(&dword_254811000, v83, OS_LOG_TYPE_INFO, "   Start time: %f", &v123, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        v123 = 134217984;
        v124 = v71;
        _os_log_impl(&dword_254811000, v84, OS_LOG_TYPE_INFO, "     End time: %f", &v123, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v85 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v123 = 134217984;
        v124 = v79;
        _os_log_impl(&dword_254811000, v85, OS_LOG_TYPE_INFO, "     Duration: %f", &v123, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v86 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v123 = 138412290;
        v124 = *&v82;
        _os_log_impl(&dword_254811000, v86, OS_LOG_TYPE_INFO, "  assetLibURI: %@", &v123, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v87 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        v88 = @"NO";
        if (alpha)
        {
          v88 = @"YES";
        }

        v123 = 138412290;
        v124 = *&v88;
        _os_log_impl(&dword_254811000, v87, OS_LOG_TYPE_INFO, " removeAlpha: %@", &v123, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v92 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        v93 = @"NO";
        if (dR)
        {
          v93 = @"YES";
        }

        v123 = 138412290;
        v124 = *&v93;
        _os_log_impl(&dword_254811000, v92, OS_LOG_TYPE_INFO, " preserveHDR: %@", &v123, 0xCu);
      }
    }

    if (v63 > 0.00000011920929)
    {
      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          LOWORD(v123) = 0;
          _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, " Start time > 0, we need to transcode", &v123, 2u);
        }

LABEL_76:

        goto LABEL_77;
      }

      goto LABEL_77;
    }

    if (v71 > 0.00000011920929)
    {
      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          LOWORD(v123) = 0;
          _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, " End time > 0, we need to transcode", &v123, 2u);
        }

        goto LABEL_76;
      }

LABEL_77:

LABEL_78:
      v53 = 2;
      goto LABEL_85;
    }

    if (v79 > 0.00000011920929)
    {
      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          LOWORD(v123) = 0;
          _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, " End time > 0, we need to transcode", &v123, 2u);
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (objc_msgSend_length(v82, v89, v90, v91))
    {
      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          LOWORD(v123) = 0;
          _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, " We have an assets library URI, we need to transcode (video might be slow-mo).", &v123, 2u);
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }
  }

  if (v2Copy && alpha)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_78;
    }

    v105 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      LOWORD(v123) = 0;
      _os_log_impl(&dword_254811000, v105, OS_LOG_TYPE_INFO, " This is an AnimojiV2 video, and we want to remove alpha", &v123, 2u);
    }

LABEL_120:

    goto LABEL_78;
  }

  if (r && !dR)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_78;
    }

    v105 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      LOWORD(v123) = 0;
      _os_log_impl(&dword_254811000, v105, OS_LOG_TYPE_INFO, " This is an HDR video, and we don't want to preserve HDR", &v123, 2u);
    }

    goto LABEL_120;
  }

  v106 = IMOSLoggingEnabled();
  if (a && !aA)
  {
    if (!v106)
    {
      goto LABEL_78;
    }

    v105 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      LOWORD(v123) = 0;
      _os_log_impl(&dword_254811000, v105, OS_LOG_TYPE_INFO, " This is an AA video, and we don't want to preserve AA", &v123, 2u);
    }

    goto LABEL_120;
  }

  if (v106)
  {
    v109 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
    {
      LOWORD(v123) = 0;
      _os_log_impl(&dword_254811000, v109, OS_LOG_TYPE_INFO, "That wasn't enough, let's look at filesize too:", &v123, 2u);
    }
  }

  v110 = objc_msgSend__fileSizeForTransfer_(self, v107, transferCopy, v108);
  v111 = isCopy;
  if (IMOSLoggingEnabled())
  {
    v114 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
    {
      v123 = 138412290;
      v124 = *&v111;
      _os_log_impl(&dword_254811000, v114, OS_LOG_TYPE_INFO, "SendableUTIs: %@", &v123, 0xCu);
    }
  }

  if (v111 && ((v115 = objc_msgSend_containsObject_(v111, v112, typeCopy, v113), v110) ? (v118 = v110 >= limit) : (v118 = 1), !v118 ? (v119 = v115) : (v119 = 0), v119 == 1))
  {
    v120 = objc_msgSend__isHEVCVideo_(self, v116, transferCopy, v117) & alpha ^ 1;
  }

  else
  {
    v120 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v121 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
    {
      v122 = @"NO";
      if (v120)
      {
        v122 = @"YES";
      }

      v123 = 138412290;
      v124 = *&v122;
      _os_log_impl(&dword_254811000, v121, OS_LOG_TYPE_INFO, "Is the original sendable without transcode? %@", &v123, 0xCu);
    }
  }

  if (v120)
  {
    v53 = 1;
  }

  else
  {
    v53 = 2;
  }

LABEL_85:
  return v53;
}

- (unint64_t)_fileSizeForTransfer:(id)transfer
{
  v28 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6);
  v11 = objc_msgSend_path(transferCopy, v8, v9, v10);
  v21 = 0;
  v13 = objc_msgSend_attributesOfItemAtPath_error_(v7, v12, v11, &v21);
  v14 = v21;
  v18 = objc_msgSend_fileSize(v13, v15, v16, v17);

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v23 = v18;
      v24 = 2112;
      v25 = transferCopy;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_254811000, v19, OS_LOG_TYPE_INFO, "Found size %llu of file %@ with error %@", buf, 0x20u);
    }
  }

  if (v14)
  {
    v18 = 0;
  }

  return v18;
}

- (void)_transcodeVideoAsync:(id)async target:(int64_t)target maxBytes:(unint64_t)bytes isAnimojiV2:(BOOL)v2 removeAlpha:(BOOL)alpha preserveHDR:(BOOL)r isAA:(BOOL)a preserveAA:(BOOL)self0 userInfo:(id)self1 completionHandler:(id)self2
{
  rCopy = r;
  alphaCopy = alpha;
  v2Copy = v2;
  v317 = *MEMORY[0x277D85DE8];
  asyncCopy = async;
  infoCopy = info;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v20 = handlerCopy;
    v21 = objc_msgSend_copy(handlerCopy, v17, v18, v19);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_msgSend_tracksWithMediaType_(asyncCopy, v17, *MEMORY[0x277CE5EA8], v19);
  v26 = objc_msgSend_count(v22, v23, v24, v25);

  v29 = objc_msgSend_tracksWithMediaType_(asyncCopy, v27, *MEMORY[0x277CE5E48], v28);
  v33 = objc_msgSend_count(v29, v30, v31, v32);

  if (!(v26 | v33))
  {
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v37, OS_LOG_TYPE_INFO, "No audio/video tracks, failing transcode.", buf, 2u);
      }
    }

    v299 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v36, @"__kIMTranscodeErrorDomain", -3, 0);
    if (v21)
    {
      (v21)[2](v21, 0, 0, v299);
    }

    goto LABEL_281;
  }

  v38 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v34, *MEMORY[0x277D19DC0], v35);
  v289 = objc_msgSend_BOOLValue(v38, v39, v40, v41);

  if (v33)
  {
    v42 = v26 == 0;
  }

  else
  {
    v42 = 0;
  }

  inUTI = v42;
  v45 = *MEMORY[0x277CE5C60];
  if (!v26)
  {
    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v52, OS_LOG_TYPE_INFO, "Actually, using the audio preset", buf, 2u);
      }
    }

    if (target == 2)
    {
      v53 = MEMORY[0x277CE5BE8];
      if (!v289)
      {
        v53 = MEMORY[0x277CE5C68];
      }
    }

    else if (target == 1)
    {
      v53 = MEMORY[0x277CE5BE8];
    }

    else
    {
      v53 = MEMORY[0x277CE5C68];
    }

    v299 = *v53;
    v46 = v45;
    goto LABEL_47;
  }

  if (target == 1)
  {
    v46 = objc_msgSend_objectForKey_(infoCopy, v43, *MEMORY[0x277D1A7D8], v44);
    v49 = objc_msgSend_objectForKey_(infoCopy, v47, *MEMORY[0x277D1A7E0], v48);
    if (objc_msgSend_IMMMSSupportsH264VideoForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v50, v46, v49))
    {
      v299 = *MEMORY[0x277CE5BC0];

      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v299;
          _os_log_impl(&dword_254811000, v51, OS_LOG_TYPE_INFO, "   Carrier supports H264, selecting: %@", buf, 0xCu);
        }

LABEL_40:
      }
    }

    else
    {
      v299 = *MEMORY[0x277CE5C48];

      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v299;
          _os_log_impl(&dword_254811000, v51, OS_LOG_TYPE_INFO, "   Carrier does not support H264, selecting: %@", buf, 0xCu);
        }

        goto LABEL_40;
      }
    }

    alphaCopy = 1;
LABEL_47:

    v56 = target == 2;
    goto LABEL_48;
  }

  if (rCopy)
  {
    v54 = *MEMORY[0x277CE5C70];

    v45 = v54;
  }

  if (a && aA)
  {
    v55 = MEMORY[0x277CE5C78];
LABEL_36:
    v299 = *v55;

    goto LABEL_95;
  }

  if (v2Copy)
  {
    v55 = MEMORY[0x277CE5BD8];
    if (!alphaCopy)
    {
      v55 = MEMORY[0x277CE5BF0];
    }

    goto LABEL_36;
  }

  v299 = v45;
LABEL_95:
  if (target != 2)
  {
    v56 = 0;
LABEL_48:
    if (IMOSLoggingEnabled())
    {
      v60 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = @"NO";
        if (rCopy)
        {
          v62 = @"YES";
        }

        else
        {
          v62 = @"NO";
        }

        *buf = 138413570;
        *&buf[4] = v299;
        if (v2Copy)
        {
          v63 = @"YES";
        }

        else
        {
          v63 = @"NO";
        }

        *&buf[12] = 2112;
        *&buf[14] = v62;
        if (alphaCopy)
        {
          v64 = @"YES";
        }

        else
        {
          v64 = @"NO";
        }

        *&buf[22] = 2112;
        *&buf[24] = v63;
        if (a)
        {
          v65 = @"YES";
        }

        else
        {
          v65 = @"NO";
        }

        *v314 = 2112;
        if (aA)
        {
          v61 = @"YES";
        }

        *&v314[2] = v64;
        *&v314[10] = 2112;
        *&v314[12] = v65;
        v315 = 2112;
        v316 = v61;
        _os_log_impl(&dword_254811000, v60, OS_LOG_TYPE_INFO, "Using preset %@ for audio/video transcoding (preserveHDR %@ isAnimojiV2 %@ removeAlpha %@ isAA %@ preserveAA %@)", buf, 0x3Eu);
      }
    }

    v311 = 0uLL;
    v312 = 0;
    if (asyncCopy)
    {
      objc_msgSend_duration(asyncCopy, v57, v58, v59);
    }

    v292 = objc_msgSend_objectForKey_(infoCopy, v57, *MEMORY[0x277D19DD0], v59);
    v297 = objc_msgSend_objectForKey_(infoCopy, v66, *MEMORY[0x277D19D98], v67);
    if (objc_msgSend_length(v297, v68, v69, v70))
    {
      v73 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v71, v297, v72);
      if (IMOSLoggingEnabled())
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = v73;
          *&buf[12] = 2112;
          *&buf[14] = asyncCopy;
          *&buf[22] = 2112;
          *&buf[24] = v299;
          _os_log_impl(&dword_254811000, v74, OS_LOG_TYPE_INFO, "Trying to use assetLibURL %@, asset %@, presetName %@", buf, 0x20u);
        }
      }

      v75 = MEMORY[0x259C1B1F0](@"PhotoLibraryServices", @"PLPhotoLibrary");
      v76 = MEMORY[0x259C1B1F0](@"PhotoLibraryServices", @"PLAssetSharingUtilities");
      v80 = objc_msgSend_systemPhotoLibrary(v75, v77, v78, v79);
      v84 = objc_msgSend_URL(asyncCopy, v81, v82, v83);
      v88 = objc_msgSend_absoluteString(v84, v85, v86, v87);
      v90 = objc_msgSend_exportSessionForVideoURL_library_fallbackFilePath_exportPreset_(v76, v89, v73, v80, v88, v299);

      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          v98 = objc_msgSend_asset(v90, v95, v96, v97);
          *buf = 138412546;
          *&buf[4] = v98;
          *&buf[12] = 2112;
          *&buf[14] = v90;
          _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, "New asset: %@, exportSession %@", buf, 0x16u);
        }
      }

      if (v90)
      {
        v99 = objc_msgSend_asset(v90, v91, v92, v93);
        v103 = v99;
        if (v99)
        {
          objc_msgSend_duration(v99, v100, v101, v102);
        }

        else
        {
          memset(buf, 0, 24);
        }

        v311 = *buf;
        v312 = *&buf[16];

LABEL_102:
        goto LABEL_114;
      }
    }

    else if (v292)
    {
      if (IMOSLoggingEnabled())
      {
        v104 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = v292;
          *&buf[12] = 2112;
          *&buf[14] = asyncCopy;
          *&buf[22] = 2112;
          *&buf[24] = v299;
          _os_log_impl(&dword_254811000, v104, OS_LOG_TYPE_INFO, "Trying to use metadata %@, asset %@, presetName %@", buf, 0x20u);
        }
      }

      v105 = MEMORY[0x259C1B1F0](@"PhotoLibraryServices", @"PLAssetSharingUtilities");
      v109 = objc_msgSend_URL(asyncCopy, v106, v107, v108);
      v113 = objc_msgSend_relativePath(v109, v110, v111, v112);
      v90 = objc_msgSend_exportSessionForVideoFilePath_metadata_exportPreset_(v105, v114, v113, v292, v299);

      if (IMOSLoggingEnabled())
      {
        v118 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
        {
          v122 = objc_msgSend_asset(v90, v119, v120, v121);
          *buf = 138412546;
          *&buf[4] = v122;
          *&buf[12] = 2112;
          *&buf[14] = v90;
          _os_log_impl(&dword_254811000, v118, OS_LOG_TYPE_INFO, "New asset: %@, exportSession %@", buf, 0x16u);
        }
      }

      if (v90)
      {
        v123 = objc_msgSend_asset(v90, v115, v116, v117);
        v73 = v123;
        if (v123)
        {
          objc_msgSend_duration(v123, v124, v125, v126);
        }

        else
        {
          memset(buf, 0, 24);
        }

        v311 = *buf;
        v312 = *&buf[16];
        goto LABEL_102;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v144 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v144, OS_LOG_TYPE_INFO, "Using a standard AVAssetExportSession.", buf, 2u);
      }
    }

    v145 = objc_alloc(MEMORY[0x277CE6400]);
    v90 = objc_msgSend_initWithAsset_presetName_(v145, v146, asyncCopy, v299);
    if (!v90)
    {
      if (IMOSLoggingEnabled())
      {
        v173 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v173, OS_LOG_TYPE_INFO, "Could not create export session with Message presets", buf, 2u);
        }
      }

      v90 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v172, @"__kIMTranscodeErrorDomain", -4, 0);
      if (v21)
      {
        (v21)[2](v21, 0, 0, v90);
      }

      goto LABEL_280;
    }

LABEL_114:
    if (IMOSLoggingEnabled())
    {
      v150 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
      {
        v154 = objc_msgSend_supportedFileTypes(v90, v151, v152, v153);
        *buf = 138412290;
        *&buf[4] = v154;
        _os_log_impl(&dword_254811000, v150, OS_LOG_TYPE_INFO, "Supported file types: %@", buf, 0xCu);
      }
    }

    v155 = objc_msgSend_supportedFileTypes(v90, v147, v148, v149);
    v158 = objc_msgSend_objectAtIndex_(v155, v156, 0, v157);

    if (target == 1)
    {
      if (inUTI)
      {
        v162 = objc_msgSend_supportedFileTypes(v90, v159, v160, v161);
        v165 = objc_msgSend_containsObject_(v162, v163, @"org.3gpp.adaptive-multi-rate-audio", v164);

        if (v165)
        {
LABEL_121:
          inUTIa = @"org.3gpp.adaptive-multi-rate-audio";
LABEL_147:

LABEL_149:
          if (IMOSLoggingEnabled())
          {
            v180 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = inUTIa;
              _os_log_impl(&dword_254811000, v180, OS_LOG_TYPE_INFO, "   outputFileType: %@", buf, 0xCu);
            }
          }

          if (inUTIa)
          {
            objc_msgSend_setOutputFileType_(v90, v178, inUTIa, v179);
            v290 = UTTypeCopyPreferredTagWithClass(inUTIa, *MEMORY[0x277CC1F58]);
            v184 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v181, v182, v183);
            v188 = objc_msgSend_URL(asyncCopy, v185, v186, v187);
            v192 = objc_msgSend_lastPathComponent(v188, v189, v190, v191);
            v196 = objc_msgSend_stringByDeletingPathExtension(v192, v193, v194, v195);
            v288 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v184, v197, v290, v196);

            v200 = objc_msgSend_objectForKey_(infoCopy, v198, *MEMORY[0x277D19DE0], v199);
            objc_msgSend_doubleValue(v200, v201, v202, v203);
            v205 = v204;

            v208 = objc_msgSend_objectForKey_(infoCopy, v206, *MEMORY[0x277D19DB0], v207);
            objc_msgSend_doubleValue(v208, v209, v210, v211);
            v213 = v212;

            v216 = objc_msgSend_objectForKey_(infoCopy, v214, *MEMORY[0x277D19DA8], v215);
            objc_msgSend_doubleValue(v216, v217, v218, v219);
            v221 = v220;

            *buf = v311;
            *&buf[16] = v312;
            Seconds = CMTimeGetSeconds(buf);
            if (v221 < 2.22044605e-16)
            {
              v221 = Seconds;
              if (v213 >= 2.22044605e-16)
              {
                if (Seconds >= v213 - v205)
                {
                  v221 = v213 - v205;
                }

                else
                {
                  v221 = Seconds;
                }
              }
            }

            v223 = v205 + v221;
            if (Seconds < v205 + v221)
            {
              v223 = Seconds;
            }

            if (v213 >= 2.22044605e-16)
            {
              v223 = v213;
            }

            v224 = fmax(v223 - v221, 0.0);
            if (v205 < 2.22044605e-16)
            {
              v205 = v224;
            }

            if (v221 >= Seconds)
            {
              v221 = Seconds;
            }

            if (v223 >= Seconds)
            {
              v225 = Seconds;
            }

            else
            {
              v225 = v223;
            }

            if (IMOSLoggingEnabled())
            {
              v226 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v288;
                _os_log_impl(&dword_254811000, v226, OS_LOG_TYPE_INFO, "Exporting video to file %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v227 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = Seconds;
                _os_log_impl(&dword_254811000, v227, OS_LOG_TYPE_INFO, "    Asset length: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v228 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = v205;
                _os_log_impl(&dword_254811000, v228, OS_LOG_TYPE_INFO, "      Start time: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v229 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = v225;
                _os_log_impl(&dword_254811000, v229, OS_LOG_TYPE_INFO, "        End time: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v230 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = v221;
                _os_log_impl(&dword_254811000, v230, OS_LOG_TYPE_INFO, "        Duration: %f", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v233 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v233, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = bytes;
                _os_log_impl(&dword_254811000, v233, OS_LOG_TYPE_INFO, "       Max bytes: %zd", buf, 0xCu);
              }
            }

            if (target == 1)
            {
              v234 = v26 == 0;
              v235 = objc_msgSend_objectForKey_(infoCopy, v231, *MEMORY[0x277D1A7D8], v232);
              v239 = objc_msgSend_objectForKey_(infoCopy, v236, *MEMORY[0x277D1A7E0], v237);
              if (v234)
              {
                objc_msgSend_IMMMSMaximumAudioDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v238, v235, v239);
              }

              else
              {
                objc_msgSend_IMMMSMaximumVideoDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v238, v235, v239);
              }

              v243 = v240;
              if (IMOSLoggingEnabled())
              {
                v244 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v244, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v243;
                  _os_log_impl(&dword_254811000, v244, OS_LOG_TYPE_INFO, "     Checking maximum MMS slide duration of: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v245 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v245, OS_LOG_TYPE_INFO))
                {
                  objc_msgSend_IMMMSMaximumVideoDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v246, v235, v239);
                  *buf = 134217984;
                  *&buf[4] = v247;
                  _os_log_impl(&dword_254811000, v245, OS_LOG_TYPE_INFO, "  Max MMS Video Duration: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v248 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v248, OS_LOG_TYPE_INFO))
                {
                  objc_msgSend_IMMMSMaximumAudioDurationForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v249, v235, v239);
                  *buf = 134217984;
                  *&buf[4] = v250;
                  _os_log_impl(&dword_254811000, v248, OS_LOG_TYPE_INFO, "  Max MMS Audio Duration: %f", buf, 0xCu);
                }
              }

              if (v221 > v243)
              {
                v221 = v243;
                v225 = v205 + v243;
              }

              if (IMOSLoggingEnabled())
              {
                v251 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v205;
                  _os_log_impl(&dword_254811000, v251, OS_LOG_TYPE_INFO, "       => Final start time is: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v252 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v225;
                  _os_log_impl(&dword_254811000, v252, OS_LOG_TYPE_INFO, "       => Final end time is: %f", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v253 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v253, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = v221;
                  _os_log_impl(&dword_254811000, v253, OS_LOG_TYPE_INFO, "       => Final duration is: %f", buf, 0xCu);
                }
              }
            }

            memset(&v310, 0, sizeof(v310));
            CMTimeMakeWithSeconds(&v310, v205, 90000);
            memset(&v309, 0, sizeof(v309));
            CMTimeMakeWithSeconds(&v309, v225, 90000);
            v254 = IMOSLoggingEnabled();
            if (fmax(v205, v225) <= 2.22044605e-16)
            {
              v260 = 0x277CBE000uLL;
              if (v254)
              {
                v261 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v261, OS_LOG_TYPE_INFO, "     Ignoring time range, transcoding full", buf, 2u);
                }
              }
            }

            else
            {
              if (v254)
              {
                v257 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v257, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v257, OS_LOG_TYPE_INFO, "     Setting time range", buf, 2u);
                }
              }

              *v314 = 0u;
              memset(buf, 0, sizeof(buf));
              *start = v310;
              end = v309;
              CMTimeRangeFromTimeToTime(buf, start, &end);
              *start = *buf;
              *&start[16] = *&buf[16];
              v307 = *v314;
              objc_msgSend_setTimeRange_(v90, v258, start, v259);
              if (v221 < 1.0)
              {
                v221 = v225 - v205;
              }

              v260 = 0x277CBE000;
            }

            if (!a || !aA)
            {
              objc_msgSend_setFileLengthLimit_(v90, v255, bytes, v256);
            }

            v262 = objc_msgSend_fileURLWithPath_(*(v260 + 3008), v255, v288, v256);
            objc_msgSend_setOutputURL_(v90, v263, v262, v264);

            if (alphaCopy && v2Copy)
            {
              if (IMOSLoggingEnabled())
              {
                v265 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v265, OS_LOG_TYPE_INFO, "Removing the alpha because this was an HEVC video with alpha", buf, 2u);
                }
              }

              v266 = objc_alloc_init(MEMORY[0x277CE6570]);
              SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
              objc_msgSend_setBackgroundColor_(v266, v268, SRGB, v269);
              v271 = objc_msgSend_videoCompositionWithPropertiesOfAsset_prototypeInstruction_(MEMORY[0x277CE6568], v270, asyncCopy, v266);
              objc_msgSend_setVideoComposition_(v90, v272, v271, v273);
              CFRelease(SRGB);
            }

            if (!target)
            {
              if (IMOSLoggingEnabled())
              {
                v276 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v276, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v276, OS_LOG_TYPE_INFO, "Preserving alternate audio tracks, if present", buf, 2u);
                }
              }

              objc_msgSend_setAudioTrackGroupHandling_(v90, v274, 1, v275);
            }

            if (IMOSLoggingEnabled())
            {
              v277 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v277, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v299;
                _os_log_impl(&dword_254811000, v277, OS_LOG_TYPE_INFO, "     Preset name: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v278 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v278, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v90;
                _os_log_impl(&dword_254811000, v278, OS_LOG_TYPE_INFO, "  Export session: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v279 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v279, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = asyncCopy;
                _os_log_impl(&dword_254811000, v279, OS_LOG_TYPE_INFO, "           Asset: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v280 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v280, OS_LOG_TYPE_INFO))
              {
                v284 = objc_msgSend_outputURL(v90, v281, v282, v283);
                *buf = 138412290;
                *&buf[4] = v284;
                _os_log_impl(&dword_254811000, v280, OS_LOG_TYPE_INFO, "       outputURL: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v285 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v285, OS_LOG_TYPE_INFO, "Dispatching video export", buf, 2u);
              }
            }

            v300[0] = MEMORY[0x277D85DD0];
            v300[1] = 3221225472;
            v300[2] = sub_254815874;
            v300[3] = &unk_27978AAD8;
            v301 = v90;
            v302 = v21;
            v303 = v221;
            v304 = v311;
            v305 = v312;
            objc_msgSend_exportAsynchronouslyWithCompletionHandler_(v301, v286, v300, v287);
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v242 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v242, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v242, OS_LOG_TYPE_INFO, "Could not find a valid outputType for Message presets", buf, 2u);
              }
            }

            v290 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v241, @"__kIMTranscodeErrorDomain", -4, 0);
            if (v21)
            {
              (v21)[2](v21, 0, 0, v290);
            }
          }

LABEL_280:
          goto LABEL_281;
        }
      }

      goto LABEL_148;
    }

    if (!v56)
    {
      goto LABEL_148;
    }

    v166 = objc_msgSend_supportedFileTypes(v90, v159, v160, v161);
    v169 = v166;
    if (inUTI)
    {
      if (v289)
      {
        v170 = objc_msgSend_containsObject_(v166, v167, @"org.3gpp.adaptive-multi-rate-audio", v168);

        if (v170)
        {
          if (IMOSLoggingEnabled())
          {
            v171 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_254811000, v171, OS_LOG_TYPE_INFO, "AMR supported as output type, using for RCS audio message", buf, 2u);
            }
          }

          goto LABEL_121;
        }

LABEL_148:
        inUTIa = v158;
        goto LABEL_149;
      }

      v174 = *MEMORY[0x277CE5D68];
      v177 = objc_msgSend_containsObject_(v166, v167, *MEMORY[0x277CE5D68], v168);

      if (!v177)
      {
        goto LABEL_148;
      }

      if (IMOSLoggingEnabled())
      {
        v176 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v176, OS_LOG_TYPE_INFO, "M4A supported as output type, using for RCS audio attachment", buf, 2u);
        }

LABEL_145:
      }
    }

    else
    {
      v174 = *MEMORY[0x277CE5D98];
      v175 = objc_msgSend_containsObject_(v166, v167, *MEMORY[0x277CE5D98], v168);

      if (!v175)
      {
        goto LABEL_148;
      }

      if (IMOSLoggingEnabled())
      {
        v176 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v176, OS_LOG_TYPE_INFO, "MPEG4 supported as output type, using for RCS video", buf, 2u);
        }

        goto LABEL_145;
      }
    }

    inUTIa = v174;
    goto LABEL_147;
  }

  if (IMMaxBitDepthForVideo() != 8 || (objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v127, v128, v129), v130 = objc_claimAutoreleasedReturnValue(), objc_msgSend_URL(asyncCopy, v131, v132, v133), v134 = objc_claimAutoreleasedReturnValue(), objc_msgSend_path(v134, v135, v136, v137), v138 = objc_claimAutoreleasedReturnValue(), v141 = objc_msgSend__im_fileSizeFor_(v130, v139, v138, v140), v138, v134, v130, v141 > bytes))
  {
    v56 = 1;
    goto LABEL_48;
  }

  if (IMOSLoggingEnabled())
  {
    v143 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v143, OS_LOG_TYPE_INFO, "Performing a pass-through transcode for format conversion for 8-bit RCS video", buf, 2u);
    }
  }

  objc_msgSend__transcodeVideoPassThrough_completionHandler_(self, v142, asyncCopy, v21);
LABEL_281:
}

- (void)_transcodeVideoPassThrough:(id)through completionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  throughCopy = through;
  handlerCopy = handler;
  v7 = IMOSLoggingEnabled();
  v8 = MEMORY[0x277CE5D98];
  if (v7)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *v8;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_254811000, v9, OS_LOG_TYPE_INFO, "Converting export to %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = sub_254815F10;
  v57 = sub_254815F20;
  v58 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_254815F10;
  v52[4] = sub_254815F20;
  v53 = 0;
  v11 = objc_alloc(MEMORY[0x277CE6400]);
  v13 = objc_msgSend_initWithAsset_presetName_(v11, v12, throughCopy, *MEMORY[0x277CE5C78]);
  v14 = *v8;
  objc_msgSend_setOutputFileType_(v13, v15, *v8, v16);
  v17 = UTTypeCopyPreferredTagWithClass(v14, *MEMORY[0x277CC1F58]);
  v21 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19, v20);
  v25 = objc_msgSend_URL(throughCopy, v22, v23, v24);
  v29 = objc_msgSend_lastPathComponent(v25, v26, v27, v28);
  v33 = objc_msgSend_stringByDeletingPathExtension(v29, v30, v31, v32);
  v35 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v21, v34, v17, v33);

  v38 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v36, v35, v37);
  objc_msgSend_setOutputURL_(v13, v39, v38, v40);

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_254815F28;
  v46[3] = &unk_27978AB00;
  v41 = v13;
  v47 = v41;
  v50 = v52;
  p_buf = &buf;
  v42 = handlerCopy;
  v49 = v42;
  v43 = throughCopy;
  v48 = v43;
  objc_msgSend_exportAsynchronouslyWithCompletionHandler_(v41, v44, v46, v45);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)transcodeFileTransfer:(id)transfer utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3
{
  v251[1] = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  typeCopy = type;
  isCopy = is;
  sizesCopy = sizes;
  capabilitiesCopy = capabilities;
  infoCopy = info;
  blockCopy = block;
  v174 = sizesCopy;
  v22 = objc_msgSend_firstObject(sizesCopy, v19, v20, v21);
  v176 = objc_msgSend_unsignedLongValue(v22, v23, v24, v25);

  v29 = objc_msgSend_lastObject(sizesCopy, v26, v27, v28);
  v183 = objc_msgSend_unsignedLongValue(v29, v30, v31, v32);

  v240 = 0;
  shouldPreserveHDREncoding = objc_msgSend_shouldPreserveHDREncoding_(IMTranscoder, v33, capabilitiesCopy, v34);
  v37 = objc_msgSend_objectForKey_(infoCopy, v35, *MEMORY[0x277D19DB8], v36);
  v41 = objc_msgSend_BOOLValue(v37, v38, v39, v40);

  v44 = objc_msgSend_objectForKey_(infoCopy, v42, *MEMORY[0x277D19DD8], v43);
  v173 = objc_msgSend_BOOLValue(v44, v45, v46, v47);

  IMCheckVideoURLProperties();
  v169 = IMIsAAVideoURL();
  shouldPreserveAAEncoding = objc_msgSend_shouldPreserveAAEncoding_(IMTranscoder, v48, capabilitiesCopy, v49);
  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v242 = v176;
      v243 = 2048;
      *v244 = v183;
      _os_log_impl(&dword_254811000, v51, OS_LOG_TYPE_INFO, "BigSize: %zu SmallSize: %zu", buf, 0x16u);
    }
  }

  if ((representations && v176 == v183 || representations != 1 && v176 != v183) && IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v242 = v176;
      v243 = 2048;
      *v244 = v183;
      *&v244[8] = 1024;
      LODWORD(v245) = representations;
      _os_log_impl(&dword_254811000, v52, OS_LOG_TYPE_INFO, "Warning - bigSize (%lu), smallSize (%lu) combination does not match the number of reps requested (%d)", buf, 0x1Cu);
    }
  }

  BYTE4(v161) = shouldPreserveAAEncoding;
  BYTE3(v161) = v169;
  BYTE2(v161) = shouldPreserveHDREncoding;
  BYTE1(v161) = v240;
  LOBYTE(v161) = v173;
  v53 = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_isAnimojiV2_removeAlpha_isHDR_preserveHDR_isAA_preserveAA_fileSizeLimit_(self, v50, transferCopy, infoCopy, target, typeCopy, isCopy, v41, v161, v183);
  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      if (v53 <= 1)
      {
        v55 = @"NO";
      }

      else
      {
        v55 = @"YES";
      }

      *buf = 138412546;
      v242 = v55;
      v243 = 2112;
      *v244 = @"NO";
      _os_log_impl(&dword_254811000, v54, OS_LOG_TYPE_INFO, "NeedsTranscode? %@ isHDR %@", buf, 0x16u);
    }
  }

  v56 = v53 > 1;
  v57 = _iMessageTelemetryLogHandle();
  v58 = os_signpost_id_generate(v57);
  log = v57;
  spid = v58;
  v59 = v58 - 1;
  if (v56)
  {
    v164 = v58 - 1;
    if (v59 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254811000, log, OS_SIGNPOST_INTERVAL_BEGIN, v58, "IMTranscoderAV.transcode.type.av", " enableTelemetry=YES ", buf, 2u);
    }

    if (IMOSLoggingEnabled())
    {
      v61 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v242 = transferCopy;
        _os_log_impl(&dword_254811000, v61, OS_LOG_TYPE_INFO, "Transfer %@ is a supported format, will transcode", buf, 0xCu);
      }
    }

    v250 = *MEMORY[0x277CE6240];
    v251[0] = MEMORY[0x277CBEC38];
    v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, v251, &v250, 1);
    v175 = IMAVURLAssetOptionsWithExtraOptionsForWrite();

    v63 = objc_alloc(MEMORY[0x277CE6650]);
    v180 = objc_msgSend_initWithURL_options_(v63, v64, transferCopy, v175);
    v67 = objc_msgSend_tracksWithMediaType_(v180, v65, *MEMORY[0x277CE5EA8], v66);
    v71 = objc_msgSend_count(v67, v68, v69, v70);

    v74 = objc_msgSend_tracksWithMediaType_(v180, v72, *MEMORY[0x277CE5E48], v73);
    v78 = objc_msgSend_count(v74, v75, v76, v77);

    v166 = objc_msgSend_tracks(v180, v79, v80, v81);
    if (IMOSLoggingEnabled())
    {
      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v242 = v180;
        v243 = 1024;
        *v244 = v71;
        *&v244[4] = 1024;
        *&v244[6] = v78;
        _os_log_impl(&dword_254811000, v82, OS_LOG_TYPE_INFO, "Created asset %@ with %d video tracks, %d audio tracks", buf, 0x18u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v83 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v242 = v166;
        _os_log_impl(&dword_254811000, v83, OS_LOG_TYPE_INFO, "   => Tracks: %@", buf, 0xCu);
      }
    }

    if (!(v71 | v78))
    {
      if (IMOSLoggingEnabled())
      {
        v85 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v85, OS_LOG_TYPE_INFO, "No video or audio tracks found", buf, 2u);
        }
      }

      v86 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v84, @"__kIMTranscodeErrorDomain", -3, 0);
      if (blockCopy)
      {
        (*(blockCopy + 2))(blockCopy, transferCopy, 0, 0, v86, 0, 1, 0);
      }

LABEL_136:
LABEL_137:

      v94 = v175;
      goto LABEL_138;
    }

    v234 = 0;
    v235 = &v234;
    v236 = 0x3032000000;
    v237 = sub_254815F10;
    v238 = sub_254815F20;
    v239 = 0;
    v228 = 0;
    v229 = &v228;
    v230 = 0x3032000000;
    v231 = sub_254815F10;
    v232 = sub_254815F20;
    v233 = 0;
    v222 = 0;
    v223 = &v222;
    v224 = 0x3032000000;
    v225 = sub_254815F10;
    v226 = sub_254815F20;
    v227 = 0;
    v221[0] = 0;
    v221[1] = v221;
    v221[2] = 0x2020000000;
    v221[3] = 0;
    v215 = 0;
    v216 = &v215;
    v217 = 0x3032000000;
    v218 = sub_254815F10;
    v219 = sub_254815F20;
    v220 = 0;
    v209 = 0;
    v210 = &v209;
    v211 = 0x3032000000;
    v212 = sub_254815F10;
    v213 = sub_254815F20;
    v214 = 0;
    v203 = 0;
    v204 = &v203;
    v205 = 0x3032000000;
    v206 = sub_254815F10;
    v207 = sub_254815F20;
    v208 = 0;
    v199 = 0;
    v200 = &v199;
    v201 = 0x2020000000;
    v202 = 0;
    if (IMOSLoggingEnabled())
    {
      v95 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "Using a dispatch group when generating multiple video transcodings", buf, 2u);
      }
    }

    group = dispatch_group_create();
    if (IMOSLoggingEnabled())
    {
      v97 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v242 = v180;
        _os_log_impl(&dword_254811000, v97, OS_LOG_TYPE_INFO, "Asset to use for bigSize: %@", buf, 0xCu);
      }
    }

    BYTE4(v162) = shouldPreserveAAEncoding;
    BYTE3(v162) = v169;
    BYTE2(v162) = shouldPreserveHDREncoding;
    BYTE1(v162) = v240;
    LOBYTE(v162) = v173;
    v98 = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_isAnimojiV2_removeAlpha_isHDR_preserveHDR_isAA_preserveAA_fileSizeLimit_(self, v96, transferCopy, infoCopy, target, typeCopy, isCopy, v41, v162, v176);
    if (IMOSLoggingEnabled())
    {
      v102 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
      {
        v103 = @"NO";
        if (v98 <= 1)
        {
          v104 = @"NO";
        }

        else
        {
          v104 = @"YES";
        }

        *buf = 134219010;
        v242 = v176;
        if ((v41 & v173) != 0)
        {
          v105 = @"YES";
        }

        else
        {
          v105 = @"NO";
        }

        v243 = 2112;
        *v244 = v104;
        if (v240)
        {
          v106 = @"YES";
        }

        else
        {
          v106 = @"NO";
        }

        *&v244[8] = 2112;
        if (shouldPreserveHDREncoding)
        {
          v103 = @"YES";
        }

        v245 = v105;
        v246 = 2112;
        v247 = v106;
        v248 = 2112;
        v249 = v103;
        _os_log_impl(&dword_254811000, v102, OS_LOG_TYPE_INFO, "Do we need to transcode to get the big(%lu) representation? %@ (removeAlphaFromAnimojiV2 %@ isHDR %@ preserveHDR %@)", buf, 0x34u);
      }
    }

    if (v98 < 2)
    {
      v112 = _IMTranscoderLinkFile(transferCopy, v99, v100, v101);
      v113 = v210[5];
      v210[5] = v112;

      v116 = objc_msgSend__fileSizeForTransfer_(self, v114, v210[5], v115);
      v200[3] = v116;
    }

    else
    {
      dispatch_group_enter(group);
      v192[0] = MEMORY[0x277D85DD0];
      v192[1] = 3221225472;
      v192[2] = sub_254817AC4;
      v192[3] = &unk_27978AB28;
      v194 = &v199;
      v192[4] = self;
      v198 = v173;
      v195 = &v209;
      v196 = &v215;
      v197 = &v203;
      v107 = group;
      v193 = v107;
      BYTE1(v163) = shouldPreserveAAEncoding;
      LOBYTE(v163) = v169;
      objc_msgSend__transcodeVideoAsync_target_maxBytes_isAnimojiV2_removeAlpha_preserveHDR_isAA_preserveAA_userInfo_completionHandler_(self, v108, v180, target, v176, v41, v173, shouldPreserveHDREncoding, v163, infoCopy, v192);
      dispatch_group_wait(v107, 0xFFFFFFFFFFFFFFFFLL);
    }

    v117 = objc_msgSend_array(MEMORY[0x277CBEB18], v109, v110, v111);
    v121 = objc_msgSend_array(MEMORY[0x277CBEB18], v118, v119, v120);
    if (v210[5])
    {
      if (IMOSLoggingEnabled())
      {
        v124 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v125 = v210[5];
          v126 = v204[5];
          *buf = 138412546;
          v242 = v125;
          v243 = 2112;
          *v244 = v126;
          _os_log_impl(&dword_254811000, v124, OS_LOG_TYPE_INFO, "Adding bigURL %@ to outputPaths with context: %@", buf, 0x16u);
        }
      }

      objc_msgSend_addObject_(v117, v122, v210[5], v123);
      v129 = v204[5];
      if (v129)
      {
        objc_msgSend_addObject_(v121, v127, v129, v128);
      }

      else
      {
        v130 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v127, 0, v128);
        objc_msgSend_addObject_(v121, v131, v130, v132);
      }
    }

    if (v98 < 2)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_103;
      }

      v133 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v133, OS_LOG_TYPE_INFO, "We didn't have to transcode to get the big representation so we know we have to for the small one.", buf, 2u);
      }
    }

    else if (v216[5] || !v210[5])
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_103;
      }

      v133 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v133, OS_LOG_TYPE_INFO, "Generating the big representation was not successful. Let's potentially try for small.", buf, 2u);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v154 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
        {
          v155 = v200[3];
          *buf = 134218240;
          v242 = v155;
          v243 = 2048;
          *v244 = v183;
          _os_log_impl(&dword_254811000, v154, OS_LOG_TYPE_INFO, "actualBigSize: %llu   smallSize %zu", buf, 0x16u);
        }
      }

      if (v200[3] < v183)
      {
        if (IMOSLoggingEnabled())
        {
          v156 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
          {
            v157 = v200[3];
            *buf = 134218240;
            v242 = v157;
            v243 = 2048;
            *v244 = v183;
            _os_log_impl(&dword_254811000, v156, OS_LOG_TYPE_INFO, "Only using the big representation because the big output (%llu) fits in the small requirements (%zu)", buf, 0x16u);
          }
        }

LABEL_104:
        if ((v41 & v173 & 1) == 0 && shouldPreserveHDREncoding & 1 | ((v240 & 1) == 0))
        {
LABEL_123:
          if (!v235[5] && v229[5])
          {
            if (IMOSLoggingEnabled())
            {
              v148 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
              {
                v149 = v229[5];
                v150 = v223[5];
                *buf = 138412546;
                v242 = v149;
                v243 = 2112;
                *v244 = v150;
                _os_log_impl(&dword_254811000, v148, OS_LOG_TYPE_INFO, "Adding smallURL %@ to outputPaths with context: %@", buf, 0x16u);
              }
            }

            objc_msgSend_addObject_(v117, v146, v229[5], v147);
            v153 = v223[5];
            if (v153)
            {
              objc_msgSend_addObject_(v121, v151, v153, v152);
            }

            else
            {
              v158 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v151, 0, v152);
              objc_msgSend_addObject_(v121, v159, v158, v160);
            }
          }

          v141 = log;
          v142 = v141;
          if (v164 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v141))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_254811000, v142, OS_SIGNPOST_INTERVAL_END, spid, "IMTranscoderAV.transcode.type.av", " enableTelemetry=YES ", buf, 2u);
          }

          v143 = v235[5];
          if (!v143)
          {
            v143 = v216[5];
          }

          v144 = v143;
          if (IMOSLoggingEnabled())
          {
            v145 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v242 = transferCopy;
              v243 = 2112;
              *v244 = v117;
              *&v244[8] = 2112;
              v245 = v144;
              _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, "Calling completionBlock with: transfer %@ outputPaths %@ error %@", buf, 0x20u);
            }
          }

          if (blockCopy)
          {
            (*(blockCopy + 2))(blockCopy, transferCopy, v117, v121, v144, v144 == 0, 1, 0);
          }

          _Block_object_dispose(&v199, 8);
          _Block_object_dispose(&v203, 8);

          _Block_object_dispose(&v209, 8);
          _Block_object_dispose(&v215, 8);

          _Block_object_dispose(v221, 8);
          _Block_object_dispose(&v222, 8);

          _Block_object_dispose(&v228, 8);
          _Block_object_dispose(&v234, 8);

          goto LABEL_136;
        }

LABEL_106:
        if (IMOSLoggingEnabled())
        {
          v134 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
          {
            v135 = @"NO";
            if ((v41 & v173) != 0)
            {
              v136 = @"YES";
            }

            else
            {
              v136 = @"NO";
            }

            if (v240)
            {
              v137 = @"YES";
            }

            else
            {
              v137 = @"NO";
            }

            *buf = 138412802;
            v242 = v136;
            v243 = 2112;
            *v244 = v137;
            if (shouldPreserveHDREncoding)
            {
              v135 = @"YES";
            }

            *&v244[8] = 2112;
            v245 = v135;
            _os_log_impl(&dword_254811000, v134, OS_LOG_TYPE_INFO, "There were two sizes requested && big doesn't satisfy the requirements for both, generating small. removeAlphaForAnimojiV2 %@ isHDR %@ preserveHDR %@", buf, 0x20u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v138 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v242 = v180;
            _os_log_impl(&dword_254811000, v138, OS_LOG_TYPE_INFO, "Asset to use for smallSize: %@", buf, 0xCu);
          }
        }

        dispatch_group_enter(group);
        v185[0] = MEMORY[0x277D85DD0];
        v185[1] = 3221225472;
        v185[2] = sub_254817C84;
        v185[3] = &unk_27978AB28;
        v187 = v221;
        v185[4] = self;
        v191 = v173;
        v188 = &v228;
        v189 = &v222;
        v190 = &v234;
        v139 = group;
        v186 = v139;
        BYTE1(v163) = shouldPreserveAAEncoding;
        LOBYTE(v163) = v169;
        objc_msgSend__transcodeVideoAsync_target_maxBytes_isAnimojiV2_removeAlpha_preserveHDR_isAA_preserveAA_userInfo_completionHandler_(self, v140, v180, target, v183, v41, v173, 0, v163, infoCopy, v185);
        dispatch_group_wait(v139, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_123;
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_103:
        if (v176 != v183)
        {
          goto LABEL_106;
        }

        goto LABEL_104;
      }

      v133 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v133, OS_LOG_TYPE_INFO, "bigURL was too big for smallSize or there was a FS error", buf, 2u);
      }
    }

    goto LABEL_103;
  }

  if (v59 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254811000, log, OS_SIGNPOST_EVENT, v58, "IMTranscoderImage.transcode.none", " enableTelemetry=YES ", buf, 2u);
  }

  if (IMOSLoggingEnabled())
  {
    v90 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v242 = transferCopy;
      _os_log_impl(&dword_254811000, v90, OS_LOG_TYPE_INFO, "Transfer %@ doesn't need any processing", buf, 0xCu);
    }
  }

  v175 = _IMTranscoderLinkFile(transferCopy, v87, v88, v89);
  if (IMOSLoggingEnabled())
  {
    v93 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v242 = v175;
      _os_log_impl(&dword_254811000, v93, OS_LOG_TYPE_INFO, "We need a hard link to this file for our clients who assume it's a file we created: %@", buf, 0xCu);
    }
  }

  v94 = v175;
  if (blockCopy)
  {
    if (v175)
    {
      v180 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v91, v175, v92, 0);
      (*(blockCopy + 2))(blockCopy, transferCopy, v180, 0, 0, 1, 0, 0);
    }

    else
    {
      v180 = objc_msgSend_array(MEMORY[0x277CBEA60], v91, 0, v92);
      (*(blockCopy + 2))(blockCopy, transferCopy, v180, 0, 0, 0, 0, 0);
    }

    goto LABEL_137;
  }

LABEL_138:
}

@end