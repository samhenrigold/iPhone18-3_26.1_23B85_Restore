@interface IMTranscoder_Image
+ (BOOL)_canConvertPNGToJPEG:(CGImage *)g;
+ (BOOL)_imageContainsTranslucentPixels:(CGImage *)pixels;
+ (id)findOrientationFromProperties:(id)properties;
+ (unint64_t)findLargerDimensionFromImage:(CGImageSource *)image withProperties:(id)properties toWidth:(id *)width toHeight:(id *)height;
- (BOOL)_isWideGamutImage:(CGImageSource *)image;
- (id)_checkAndSaveImageData:(id)data sourceURL:(id)l inFormat:(__CFString *)format withMaxByteSize:(unint64_t)size actualSize:(unint64_t *)actualSize usedLengthIndex:(int *)index currentIndex:(int)currentIndex;
- (id)_getScaleFactorArray:(id)array transferURL:(id)l outputURLs:(id)ls;
- (id)_imMetricsCollectorForLQMQualityEstimatorModel:(__CFString *)model suggestedMaxLength:(unint64_t)length shouldUseQualityEstimatorModel:(BOOL)estimatorModel inputImageFeatures:(id)features;
- (id)_newGeneratedImage:(CGImageSource *)image sourceWidth:(id)width sourceHeight:(id)height sourceLength:(unint64_t)length sourceProps:(id)props target:(int64_t)target hardwareEncoder:(id)encoder inFormat:(__CFString *)self0 fromFormat:(__CFString *)self1 withMaxLength:(unint64_t)self2 withMaxCount:(unint64_t)self3 withCompressionQuality:(double)self4 enforceMaxes:(BOOL)self5 subsampling:(int)self6 shouldSkipAuxillaryData:(BOOL)self7;
- (id)_wideGamutImage:(CGImageSource *)image sourceURL:(id)l inFormat:(__CFString *)format withMaxByteSize:(unint64_t)size maxDimension:(unint64_t)dimension actualSize:(unint64_t *)actualSize telemetry:(id)telemetry;
- (id)_writeHEIFImage:(CGImageSource *)image sourceURL:(id)l inFormat:(__CFString *)format withMaxByteSize:(unint64_t)size maxDimension:(unint64_t)dimension downgradingMultiFrameImageToSingleFrame:(BOOL)frame actualSize:(unint64_t *)actualSize startingLengthIndex:(int)self0 usedLengthIndex:(int *)self1 telemetry:(id)self2;
- (id)_writeImage:(CGImageSource *)image sourceURL:(id)l target:(int64_t)target hardwareEncoder:(id)encoder inFormat:(__CFString *)format fromFormat:(__CFString *)fromFormat withMaxByteSize:(unint64_t)size maxDimension:(unint64_t)self0 actualSize:(unint64_t *)self1 startingLengthIndex:(int)self2 usedLengthIndex:(int *)self3 estimator:(id)self4 isLQMEnabled:(BOOL)self5 telemetry:(id)self6;
- (id)_writeImageData:(id)data inFormat:(__CFString *)format sourceURL:(id)l;
- (id)_writeRepresentationsForImage:(CGImageSource *)image target:(int64_t)target sourceURL:(id)l sizes:(id)sizes maxDimension:(unint64_t)dimension srcUTI:(__CFString *)i inFormat:(__CFString *)format downgradingMultiFrameImageToSingleFrame:(BOOL)self0 estimator:(id)self1 isLQMEnabled:(BOOL)self2 telemetry:(id)self3;
- (id)copyFramePropertiesFrom:(CGImageSource *)from index:(unint64_t)index inFormat:(__CFString *)format outFormat:(__CFString *)outFormat;
- (id)copyImagePropertiesFrom:(CGImageSource *)from frameCount:(unint64_t)count withProps:(id)props inFormat:(__CFString *)format outFormat:(__CFString *)outFormat;
- (int64_t)shouldTranscodeTransfer:(id)transfer transcoderUserInfo:(id)info target:(int64_t)target utiType:(id)type allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities;
- (unint64_t)_determineFrameIndexForDowngradeFromMultiFrameToSingleFrameWithMaxDimension:(unint64_t)dimension fromImageSource:(CGImageSource *)source;
- (unint64_t)_getImageWidth:(CGImageSource *)width;
- (void)_imMetricsCollectorForLQMQualityEstimatorModeImageTypeHEIC:(unint64_t)c shouldUseQualityEstimatorModel:(BOOL)model inputImageFeatures:(id)features metricsDict:(id)dict;
- (void)_setWideGamutProperties:(id)properties scaledImage:(CGImage *)image;
- (void)copyAuxiliaryImagesFromImageSource:(CGImageSource *)source toDestination:(CGImageDestination *)destination fromImageAtIndex:(unint64_t)index scaleFactor:(double)factor;
- (void)transcodeFileTransfer:(id)transfer utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3;
@end

@implementation IMTranscoder_Image

- (BOOL)_isWideGamutImage:(CGImageSource *)image
{
  v11 = *MEMORY[0x277D85DE8];
  if (image)
  {
    IsColorOptimizedForSharing = CGImageSourceIsColorOptimizedForSharing();
    v4 = IsColorOptimizedForSharing ^ 1;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"YES";
        if (IsColorOptimizedForSharing)
        {
          v6 = @"NO";
        }

        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "_isWideGamut %@ ", &v9, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_254811000, v7, OS_LOG_TYPE_INFO, "Transcoding _isWideGamut nil sourceRef", &v9, 2u);
      }
    }

    return 0;
  }

  return v4;
}

- (int64_t)shouldTranscodeTransfer:(id)transfer transcoderUserInfo:(id)info target:(int64_t)target utiType:(id)type allowUnfilteredUTIs:(id)is fileSizeLimit:(unint64_t)limit commonCapabilities:(id)capabilities
{
  v106[1] = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  infoCopy = info;
  typeCopy = type;
  isCopy = is;
  capabilitiesCopy = capabilities;
  if (!transferCopy)
  {
    v23 = 0;
    goto LABEL_90;
  }

  if (!objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v19, infoCopy, *MEMORY[0x277D19E80]))
  {
    if (objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v21, infoCopy, *MEMORY[0x277D19E78]))
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "This is a genmoji, skip transcoding", buf, 2u);
        }

LABEL_19:

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v26 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v24, infoCopy, @"isSticker");
    if (target != 1 && v26)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "This is a sticker, skip transcoding", buf, 2u);
        }

        goto LABEL_19;
      }

LABEL_20:
      v23 = 1;
      goto LABEL_90;
    }

    v28 = objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v27, infoCopy, @"preserveHEIF");
    if (target)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v102 = transferCopy;
        _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "Creating CGImageSource from url: %@", buf, 0xCu);
      }
    }

    if (typeCopy)
    {
      v105 = *MEMORY[0x277CD3668];
      v106[0] = typeCopy;
      v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v106, &v105, 1);
    }

    else
    {
      v32 = 0;
    }

    v97 = v32;
    isrc = CGImageSourceCreateWithURL(transferCopy, v32);
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = @"good";
        if (!isrc)
        {
          v34 = @"NULL";
        }

        *buf = 138412290;
        v102 = v34;
        _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "Source ref is %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v102 = transferCopy;
        _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "Checking uti from source ref at url: %@", buf, 0xCu);
      }
    }

    Type = CGImageSourceGetType(isrc);
    if (objc_msgSend__isHEIFImageFormat_(self, v37, Type, v38))
    {
      if ((v29 & 1) == 0)
      {
        if (isrc)
        {
          CFRelease(isrc);
        }

        if (!IMOSLoggingEnabled())
        {
          goto LABEL_87;
        }

        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "Needs transcode, the image was HEIF but preserveHEIF was NO", buf, 2u);
        }

        goto LABEL_86;
      }

      if (IMImageSourceHasStereoPair())
      {
        if (isrc)
        {
          CFRelease(isrc);
        }

        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Image is HEIF standard-compliant, recipients prefer it, and it has a stereo pair. Not transcoding", buf, 2u);
          }
        }

        v23 = 1;
        goto LABEL_88;
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v48, OS_LOG_TYPE_INFO, "Image is HEIF standard-compliant. Proceeding with other checks", buf, 2u);
        }

LABEL_66:
      }
    }

    else
    {
      if (v29)
      {
        v43 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v39, v40, v41);
        isHighQualityPhotosEnabled = objc_msgSend_isHighQualityPhotosEnabled(v43, v44, v45, v46);

        if ((isHighQualityPhotosEnabled & 1) == 0)
        {
          if (isrc)
          {
            CFRelease(isrc);
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_87;
          }

          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v102 = typeCopy;
            _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "Needs transcode as all recipients support heif (source uti %@)", buf, 0xCu);
          }

          goto LABEL_86;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v48, OS_LOG_TYPE_INFO, "Image is not HEIF-standard compliant. Proceeding with other checks", buf, 2u);
        }

        goto LABEL_66;
      }
    }

    v50 = CGImageSourceGetType(isrc);
    if (objc_msgSend__isWebPImageFormat_(self, v51, v50, v52))
    {
      if (isrc)
      {
        CFRelease(isrc);
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "Needs transcode as WebP is not supported", buf, 2u);
      }

      goto LABEL_86;
    }

    if (objc_msgSend__isWideGamutImage_(self, v53, isrc, v54))
    {
      if (isrc)
      {
        CFRelease(isrc);
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "Needs transcode as image is wide-gamut", buf, 2u);
      }

      goto LABEL_86;
    }

    if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v57, OS_LOG_TYPE_INFO, "Not wide gamut image. Proceeding with other checks", buf, 2u);
      }
    }

    if (isrc)
    {
      CFRelease(isrc);
    }

    v58 = IMOSLoggingEnabled();
    if (typeCopy)
    {
      if (v58)
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v102 = typeCopy;
          _os_log_impl(&dword_254811000, v59, OS_LOG_TYPE_INFO, "shouldTranscodeTransfer with uti: %@ ?", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v60, OS_LOG_TYPE_INFO, "Trying to discriminate based on type alone:", buf, 2u);
        }
      }

      v61 = objc_opt_class();
      v65 = objc_msgSend_supportedUTIs(v61, v62, v63, v64);
      v68 = objc_msgSend_containsObject_(v65, v66, typeCopy, v67);

      if (v68)
      {
        if (objc_msgSend_isEqualToIgnoringCase_(typeCopy, v69, @"________WBMP_________", v70))
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_87;
          }

          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "This appears to be a WBMP, this requires a transcode", buf, 2u);
          }
        }

        else
        {
          v72 = IMOSLoggingEnabled();
          if (target != 1)
          {
            if (v72)
            {
              v76 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v76, OS_LOG_TYPE_INFO, "That wasn't enough, let's look at filesize too:", buf, 2u);
              }
            }

            v77 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v73, v74, v75);
            v81 = objc_msgSend_path(transferCopy, v78, v79, v80);
            v100 = 0;
            v83 = objc_msgSend_attributesOfItemAtPath_error_(v77, v82, v81, &v100);
            isrca = v100;
            v87 = objc_msgSend_fileSize(v83, v84, v85, v86);

            if (IMOSLoggingEnabled())
            {
              v88 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v102 = transferCopy;
                v103 = 2112;
                v104 = isrca;
                _os_log_impl(&dword_254811000, v88, OS_LOG_TYPE_INFO, "Checked size of file %@ with error %@", buf, 0x16u);
              }
            }

            v89 = isCopy;
            v92 = v89;
            if (v89)
            {
              LODWORD(v89) = objc_msgSend_containsObject_(v89, v90, typeCopy, v91);
            }

            if (isrca)
            {
              v93 = 0;
            }

            else
            {
              v93 = v89;
            }

            if (v87 < limit)
            {
              v94 = v93;
            }

            else
            {
              v94 = 0;
            }

            if (IMOSLoggingEnabled())
            {
              v95 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
              {
                v96 = @"NO";
                if (v94)
                {
                  v96 = @"YES";
                }

                *buf = 138412290;
                v102 = v96;
                _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "Is the original sendable without transcode? %@", buf, 0xCu);
              }
            }

            if (v94)
            {
              v23 = 1;
            }

            else
            {
              v23 = 2;
            }

            goto LABEL_88;
          }

          v55 = v97;
          if (!v72)
          {
            v23 = 2;
            goto LABEL_89;
          }

          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "This is MMS, we should always transcode", buf, 2u);
          }
        }

LABEL_86:

LABEL_87:
        v23 = 2;
LABEL_88:
        v55 = v97;
LABEL_89:

        goto LABEL_90;
      }

      if (IMOSLoggingEnabled())
      {
        v71 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v71, OS_LOG_TYPE_INFO, "Uti is not contained in supportedUTIs", buf, 2u);
        }

LABEL_119:
      }
    }

    else if (v58)
    {
      v71 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v71, OS_LOG_TYPE_INFO, "No UTI supplied", buf, 2u);
      }

      goto LABEL_119;
    }

    v23 = 0;
    goto LABEL_88;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "Genmoji heic needs fallback to png", buf, 2u);
    }
  }

  v23 = 2;
LABEL_90:

  return v23;
}

- (id)copyImagePropertiesFrom:(CGImageSource *)from frameCount:(unint64_t)count withProps:(id)props inFormat:(__CFString *)format outFormat:(__CFString *)outFormat
{
  v77 = *MEMORY[0x277D85DE8];
  propsCopy = props;
  v11 = *MEMORY[0x277CC2120];
  v63 = propsCopy;
  if (UTTypeConformsTo(format, *MEMORY[0x277CC2120]))
  {
    v12 = *MEMORY[0x277CD3438];
    v13 = *MEMORY[0x277CD2DC0];
    v14 = *MEMORY[0x277CD2DB0];
    v15 = *MEMORY[0x277CD2DC8];
    v16 = MEMORY[0x277CD2DB8];
LABEL_5:
    v17 = *v16;
    v18 = v17;
    goto LABEL_6;
  }

  if (UTTypeConformsTo(format, *MEMORY[0x277D1AD78]))
  {
    v12 = *MEMORY[0x277CD3340];
    v13 = *MEMORY[0x277CD3350];
    v14 = *MEMORY[0x277CD3338];
    v15 = *MEMORY[0x277CD3358];
    v16 = MEMORY[0x277CD3348];
    goto LABEL_5;
  }

  if (!UTTypeConformsTo(format, *MEMORY[0x277D1AD80]))
  {
    if (UTTypeConformsTo(format, *MEMORY[0x277CC2088]))
    {
      v12 = *MEMORY[0x277CD31C8];
      v13 = *MEMORY[0x277CD31E0];
      v14 = *MEMORY[0x277CD31C0];
      v15 = *MEMORY[0x277CD31E8];
      v16 = MEMORY[0x277CD31D0];
    }

    else
    {
      if (!UTTypeConformsTo(format, *MEMORY[0x277D1AD88]))
      {
        v24 = 0;
        v13 = 0;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v12 = 0;
        goto LABEL_11;
      }

      v12 = *MEMORY[0x277CD3500];
      v13 = *MEMORY[0x277CD3510];
      v14 = *MEMORY[0x277CD34F8];
      v15 = *MEMORY[0x277CD3518];
      v16 = MEMORY[0x277CD3508];
    }

    goto LABEL_5;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v18 = 0;
  v17 = *MEMORY[0x277CD3360];
  v12 = *MEMORY[0x277CD3360];
LABEL_6:
  v65 = v15;
  v66 = v18;
  v64 = v14;
  v19 = v17;
  if (v12)
  {
    v23 = objc_msgSend_objectForKey_(propsCopy, v20, v12, v22);
    v24 = v23;
    if (v23)
    {
      if (v13)
      {
        v68 = objc_msgSend_objectForKey_(v23, v20, v13, v22);
      }

      else
      {
        v68 = 0;
      }

      if (v14)
      {
        v26 = objc_msgSend_objectForKey_(v24, v20, v14, v22);
      }

      else
      {
        v26 = 0;
      }

      if (v65)
      {
        v25 = objc_msgSend_objectForKey_(v24, v20, v65, v22);
      }

      else
      {
        v25 = 0;
      }

      v21 = v66;
      if (v66)
      {
        v67 = objc_msgSend_objectForKey_(v24, v20, v66, v22);
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_11:
  v67 = 0;
  v68 = 0;
  v25 = 0;
  v26 = 0;
LABEL_22:
  if (count < 2)
  {
    goto LABEL_40;
  }

  if (!v26 || !v25)
  {
    v27 = CGImageSourceCopyPropertiesAtIndex(from, 0, 0);
    v30 = v27;
    if (v27)
    {
      v31 = objc_msgSend_objectForKey_(v27, v28, v12, v29);
      v34 = v31;
      if (v31)
      {
        if (!v26)
        {
          v26 = objc_msgSend_objectForKey_(v31, v32, v64, v33);
        }

        if (!v25)
        {
          v25 = objc_msgSend_objectForKey_(v34, v32, v65, v33);
        }
      }
    }
  }

  if (!objc_msgSend_count(v24, v20, v21, v22))
  {
LABEL_40:
    v35 = v13;
    v42 = 0;
    goto LABEL_84;
  }

  v35 = v13;
  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v70 = v26;
      v71 = 2112;
      v72 = v25;
      v73 = 2112;
      v74 = v68;
      v75 = 2112;
      v76 = v67;
      _os_log_impl(&dword_254811000, v36, OS_LOG_TYPE_INFO, "Found delay %@ unclampedDelay %@ loopCount %@ FrameInfo %@. copying to destination", buf, 0x2Au);
    }
  }

  if (UTTypeConformsTo(outFormat, v11))
  {
    v37 = MEMORY[0x277CD2DB8];
    v38 = MEMORY[0x277CD2DC8];
    v39 = MEMORY[0x277CD2DB0];
    v40 = MEMORY[0x277CD2DC0];
    v41 = MEMORY[0x277CD3438];
  }

  else if (UTTypeConformsTo(outFormat, *MEMORY[0x277D1AD78]))
  {
    v37 = MEMORY[0x277CD3348];
    v38 = MEMORY[0x277CD3358];
    v39 = MEMORY[0x277CD3338];
    v40 = MEMORY[0x277CD3350];
    v41 = MEMORY[0x277CD3340];
  }

  else if (UTTypeConformsTo(outFormat, *MEMORY[0x277CC2088]))
  {
    v37 = MEMORY[0x277CD31D0];
    v38 = MEMORY[0x277CD31E8];
    v39 = MEMORY[0x277CD31C0];
    v40 = MEMORY[0x277CD31E0];
    v41 = MEMORY[0x277CD31C8];
  }

  else
  {
    if (!UTTypeConformsTo(outFormat, *MEMORY[0x277D1AD88]))
    {
      isrca = 0;
      v47 = 0;
      v48 = 0;
      v53 = 0;
      Mutable = 0;
      v56 = objc_msgSend_count(0, v43, v44, v45, 0);
      goto LABEL_80;
    }

    v37 = MEMORY[0x277CD3508];
    v38 = MEMORY[0x277CD3518];
    v39 = MEMORY[0x277CD34F8];
    v40 = MEMORY[0x277CD3510];
    v41 = MEMORY[0x277CD3500];
  }

  isrca = *v41;
  v46 = *v40;
  v47 = *v39;
  v48 = *v38;
  v49 = *v37;
  v53 = v49;
  v59 = v46;
  if (!v68 || !v46)
  {
    if (!v26 || !v47)
    {
      if (!v25 || !v48)
      {
        Mutable = 0;
        if (!v67 || !v49)
        {
          goto LABEL_79;
        }

LABEL_77:
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        goto LABEL_78;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  objc_msgSend_setObject_forKey_(Mutable, v55, v68, v46);
  if (v26 && v47)
  {
    if (Mutable)
    {
LABEL_62:
      objc_msgSend_setObject_forKey_(Mutable, v50, v26, v47, v46);
      goto LABEL_63;
    }

LABEL_61:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    goto LABEL_62;
  }

LABEL_63:
  if (v25 && v48)
  {
    if (Mutable)
    {
LABEL_70:
      objc_msgSend_setObject_forKey_(Mutable, v50, v25, v48, v59);
      goto LABEL_71;
    }

LABEL_69:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    goto LABEL_70;
  }

LABEL_71:
  if (!v67 || !v53)
  {
    goto LABEL_79;
  }

  if (!Mutable)
  {
    goto LABEL_77;
  }

LABEL_78:
  objc_msgSend_setObject_forKey_(Mutable, v50, v67, v53, v59);
LABEL_79:
  v56 = objc_msgSend_count(Mutable, v50, v51, v52, v59);
LABEL_80:
  if (v56)
  {
    v42 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    objc_msgSend_setObject_forKey_(v42, v57, Mutable, isrca);
  }

  else
  {
    v42 = 0;
  }

LABEL_84:
  return v42;
}

- (id)copyFramePropertiesFrom:(CGImageSource *)from index:(unint64_t)index inFormat:(__CFString *)format outFormat:(__CFString *)outFormat
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = CGImageSourceCopyPropertiesAtIndex(from, index, 0);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v60 = 134218242;
      indexCopy = index;
      v62 = 2112;
      v63 = v9;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "Got image properties for image at index %zu: %@", &v60, 0x16u);
    }
  }

  v11 = *MEMORY[0x277CC2120];
  v12 = UTTypeConformsTo(format, *MEMORY[0x277CC2120]);
  v15 = MEMORY[0x277D1AD78];
  v16 = MEMORY[0x277D1AD88];
  if (v12)
  {
    v17 = objc_msgSend_objectForKey_(v9, v13, *MEMORY[0x277CD3438], v14);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v60 = 138412290;
        indexCopy = v17;
        _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "Checking for PNG Properties: %@", &v60, 0xCu);
      }
    }

    v21 = MEMORY[0x277CD2DC8];
    v22 = MEMORY[0x277CD2DB0];
LABEL_29:
    v32 = objc_msgSend_objectForKey_(v17, v18, *v22, v19);
    v35 = objc_msgSend_objectForKey_(v17, v33, *v21, v34);
    goto LABEL_30;
  }

  if (UTTypeConformsTo(format, *MEMORY[0x277D1AD78]))
  {
    v17 = objc_msgSend_objectForKey_(v9, v23, *MEMORY[0x277CD3340], v24);
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v60 = 138412290;
        indexCopy = v17;
        _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "Checking for HEICS Properties: %@", &v60, 0xCu);
      }
    }

    v21 = MEMORY[0x277CD3358];
    v22 = MEMORY[0x277CD3338];
    goto LABEL_29;
  }

  if (UTTypeConformsTo(format, *MEMORY[0x277CC2088]))
  {
    v17 = objc_msgSend_objectForKey_(v9, v26, *MEMORY[0x277CD31C8], v27);
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v60 = 138412290;
        indexCopy = v17;
        _os_log_impl(&dword_254811000, v28, OS_LOG_TYPE_INFO, "Checking for GIF Properties: %@", &v60, 0xCu);
      }
    }

    v21 = MEMORY[0x277CD31E8];
    v22 = MEMORY[0x277CD31C0];
    goto LABEL_29;
  }

  if (UTTypeConformsTo(format, *v16))
  {
    v17 = objc_msgSend_objectForKey_(v9, v29, *MEMORY[0x277CD3500], v30);
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v60 = 138412290;
        indexCopy = v17;
        _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "Checking for WebP Properties: %@", &v60, 0xCu);
      }
    }

    v21 = MEMORY[0x277CD3518];
    v22 = MEMORY[0x277CD34F8];
    goto LABEL_29;
  }

  v35 = 0;
  v32 = 0;
  v17 = 0;
LABEL_30:
  if (UTTypeConformsTo(outFormat, v11))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v37 = v32;
    if (v37)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2DB0], v37);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2548310E0();
    }

    v39 = v35;
    if (v39)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2DC8], v39);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831168();
    }

    if (objc_msgSend_count(Mutable, v40, v41, v42))
    {
      v38 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v43 = Mutable;
      if (v43)
      {
        CFDictionarySetValue(v38, *MEMORY[0x277CD3438], v43);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2548311F0();
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60) = 0;
          _os_log_impl(&dword_254811000, v44, OS_LOG_TYPE_INFO, "No png property dictionary to add", &v60, 2u);
        }
      }

      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  if (UTTypeConformsTo(outFormat, *v15))
  {
    v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = v32;
    if (v46)
    {
      CFDictionarySetValue(v45, *MEMORY[0x277CD3338], v46);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831278();
    }

    v47 = v35;
    if (v47)
    {
      CFDictionarySetValue(v45, *MEMORY[0x277CD3358], v47);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831300();
    }

    if (objc_msgSend_count(v45, v48, v49, v50))
    {
      if (!v38)
      {
        v38 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v51 = v45;
      if (v51)
      {
        CFDictionarySetValue(v38, *MEMORY[0x277CD3340], v51);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254831388();
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_73:

        goto LABEL_74;
      }

      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        LOWORD(v60) = 0;
        _os_log_impl(&dword_254811000, v51, OS_LOG_TYPE_INFO, "No HEICS property dictionary to add", &v60, 2u);
      }
    }

    goto LABEL_73;
  }

LABEL_74:
  if (UTTypeConformsTo(outFormat, *v16))
  {
    v52 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v53 = v32;
    if (v53)
    {
      CFDictionarySetValue(v52, *MEMORY[0x277CD34F8], v53);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831410();
    }

    v54 = v35;
    if (v54)
    {
      CFDictionarySetValue(v52, *MEMORY[0x277CD3518], v54);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_254831498();
    }

    if (objc_msgSend_count(v52, v55, v56, v57))
    {
      if (!v38)
      {
        v38 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v58 = v52;
      if (v58)
      {
        CFDictionarySetValue(v38, *MEMORY[0x277CD3500], v58);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_254831520();
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_95:

        goto LABEL_96;
      }

      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        LOWORD(v60) = 0;
        _os_log_impl(&dword_254811000, v58, OS_LOG_TYPE_INFO, "No WebP property dictionary to add", &v60, 2u);
      }
    }

    goto LABEL_95;
  }

LABEL_96:

  return v38;
}

+ (id)findOrientationFromProperties:(id)properties
{
  v17 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v4 = *MEMORY[0x277CD3410];
  v9 = objc_msgSend_objectForKey_(propertiesCopy, v5, *MEMORY[0x277CD3410], v6);
  if (v9)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "Orientation data found in default location: %@", &v15, 0xCu);
    }
  }

  else
  {
    v11 = objc_msgSend_objectForKey_(propertiesCopy, v7, *MEMORY[0x277CD3490], v8);
    v9 = objc_msgSend_objectForKey_(v11, v12, v4, v13);

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "Orientation data NOT found in default location, checked TIFF location: %@", &v15, 0xCu);
    }
  }

LABEL_10:

  return v9;
}

+ (unint64_t)findLargerDimensionFromImage:(CGImageSource *)image withProperties:(id)properties toWidth:(id *)width toHeight:(id *)height
{
  propertiesCopy = properties;
  v12 = propertiesCopy;
  if (!propertiesCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *v44 = 0;
        _os_log_impl(&dword_254811000, v41, OS_LOG_TYPE_INFO, "Couldn't find props for image to find source height and width", v44, 2u);
      }
    }

    v14 = 0;
    v22 = 0;
    goto LABEL_30;
  }

  v13 = *MEMORY[0x277CD3450];
  v14 = objc_msgSend_objectForKey_(propertiesCopy, v10, *MEMORY[0x277CD3450], v11);
  v15 = *MEMORY[0x277CD3448];
  v18 = objc_msgSend_objectForKey_(v12, v16, *MEMORY[0x277CD3448], v17);
  v22 = v18;
  if (v14)
  {
    v23 = v18 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 && CGImageSourceGetCount(image))
  {
    v24 = CGImageSourceCopyPropertiesAtIndex(image, 0, 0);
    v27 = v24;
    if (v24)
    {
      v28 = objc_msgSend_objectForKey_(v24, v25, v13, v26);

      v31 = objc_msgSend_objectForKey_(v27, v29, v15, v30);

      v22 = v31;
      v14 = v28;
    }
  }

  if (width && v14)
  {
    v32 = v14;
    *width = v14;
  }

  if (height && v22)
  {
    v33 = v22;
    *height = v22;
  }

  if (v14)
  {
    v34 = v22 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
LABEL_30:
    v36 = 0;
    v40 = objc_msgSend_unsignedIntegerValue(0, v19, v20, v21);
    goto LABEL_31;
  }

  if (objc_msgSend_compare_(v14, v19, v22, v21) >= 0)
  {
    v35 = v14;
  }

  else
  {
    v35 = v22;
  }

  v36 = v35;
  v40 = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39);
LABEL_31:
  v42 = v40;

  return v42;
}

- (id)_newGeneratedImage:(CGImageSource *)image sourceWidth:(id)width sourceHeight:(id)height sourceLength:(unint64_t)length sourceProps:(id)props target:(int64_t)target hardwareEncoder:(id)encoder inFormat:(__CFString *)self0 fromFormat:(__CFString *)self1 withMaxLength:(unint64_t)self2 withMaxCount:(unint64_t)self3 withCompressionQuality:(double)self4 enforceMaxes:(BOOL)self5 subsampling:(int)self6 shouldSkipAuxillaryData:(BOOL)self7
{
  v182 = *MEMORY[0x277D85DE8];
  widthCopy = width;
  heightCopy = height;
  propsCopy = props;
  encoderCopy = encoder;
  v23 = encoderCopy;
  if (image)
  {
    v167 = encoderCopy;
    if (!format)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "Cannot generate image because format is NULL", buf, 2u);
        }
      }

      v26 = 0;
      goto LABEL_31;
    }

    v24 = CGImageSourceGetCount(image);
    if (v24)
    {
      v166 = CGImageSourceCopyPropertiesAtIndex(image, 0, 0);
    }

    else
    {
      v166 = 0;
    }

    if (!widthCopy || !heightCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "No source width and height", buf, 2u);
        }
      }

      goto LABEL_29;
    }

    if (maxLength > length && maxes && v24 < count)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 134218752;
          *v176 = maxLength;
          *&v176[8] = 2048;
          imageCopy = count;
          v178 = 2048;
          lengthCopy = length;
          v180 = 2048;
          v181 = v24;
          _os_log_impl(&dword_254811000, v28, OS_LOG_TYPE_INFO, "Not considering resizing to %lu or reducing to %zd images, it's larger than the current image dimension (%zd) and the current image count (%zd)", buf, 0x2Au);
        }
      }

LABEL_29:
      v26 = 0;
LABEL_30:

LABEL_31:
      v23 = v167;
      goto LABEL_32;
    }

    if (v24 >= count)
    {
      countCopy2 = count;
    }

    else
    {
      countCopy2 = v24;
    }

    count = countCopy2;
    if (maxLength >= length)
    {
      maxLengthCopy = length;
    }

    else
    {
      maxLengthCopy = maxLength;
    }

    v165 = maxLengthCopy;
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v176 = count;
        _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "    Image count = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v176 = v24;
        _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, " Original count = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v176 = count;
        _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "      Max count = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v176 = v165;
        _os_log_impl(&dword_254811000, v36, OS_LOG_TYPE_INFO, "         Length = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v176 = maxLength;
        _os_log_impl(&dword_254811000, v37, OS_LOG_TYPE_INFO, "     Max length = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v176 = length;
        _os_log_impl(&dword_254811000, v38, OS_LOG_TYPE_INFO, "Original Length = %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v176 = subsampling;
        _os_log_impl(&dword_254811000, v39, OS_LOG_TYPE_INFO, "    subsampling = %d", buf, 8u);
      }
    }

    v42 = v165 / length;
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v176 = v42;
        _os_log_impl(&dword_254811000, v43, OS_LOG_TYPE_INFO, "   scale factor = %f", buf, 0xCu);
      }
    }

    isWideGamutImage = objc_msgSend__isWideGamutImage_(self, v40, image, v41);
    Type = CGImageSourceGetType(image);
    if ((v167 == 0) | (isWideGamutImage | objc_msgSend__isHEIFImageFormat_(self, v46, Type, v47)) & 1)
    {
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = @"NO";
          if (isWideGamutImage)
          {
            v52 = @"YES";
          }

          *buf = 138412546;
          *v176 = v167;
          *&v176[8] = 2112;
          imageCopy = v52;
          _os_log_impl(&dword_254811000, v51, OS_LOG_TYPE_INFO, "Not using hardware encoding. encoder %@  isWideGamut %@", buf, 0x16u);
        }
      }
    }

    else
    {
      objc_msgSend_setTargetJPEGCompressionValue_(v167, v48, v49, v50, quality);
      v55 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v53, v165, v54);
      v174 = 0;
      v57 = objc_msgSend_scaleImageToFitLargestDimension_outputData_(v167, v56, v55, &v174);
      v26 = v174;

      v58 = IMOSLoggingEnabled();
      if (v57)
      {
        if (v58)
        {
          v59 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v59, OS_LOG_TYPE_INFO, "Successfully used hardware encoding", buf, 2u);
          }
        }

        goto LABEL_30;
      }

      if (v58)
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v60, OS_LOG_TYPE_INFO, "Failed using hardware encoding", buf, 2u);
        }
      }
    }

    data = objc_alloc_init(MEMORY[0x277CBEB28]);
    idst = CGImageDestinationCreateWithData(data, format, count, 0);
    if (idst)
    {
      if (propsCopy)
      {
        v63 = objc_msgSend_copyImagePropertiesFrom_frameCount_withProps_inFormat_outFormat_(self, v61, image, v24, propsCopy, fromFormat, format);
        if (v63)
        {
          if (IMOSLoggingEnabled())
          {
            v64 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v176 = v63;
              _os_log_impl(&dword_254811000, v64, OS_LOG_TYPE_INFO, "Setting output props: %@", buf, 0xCu);
            }
          }

          CGImageDestinationSetProperties(idst, v63);
        }
      }

      if (count)
      {
        v65 = 0;
        v67 = target != 1 && v166 != 0;
        v159 = v67;
        v157 = *MEMORY[0x277CD3650];
        v163 = *MEMORY[0x277CD3568];
        v161 = *MEMORY[0x277CD3578];
        v162 = *MEMORY[0x277CD3660];
        inConformsToUTI = *MEMORY[0x277CC20C8];
        v155 = *MEMORY[0x277D1AD80];
        qualityCopy = quality;
        key = *MEMORY[0x277CD2D48];
        v153 = *MEMORY[0x277CD3410];
        v158 = *MEMORY[0x277CD2D60];
        *&v62 = 134218242;
        v152 = v62;
        do
        {
          v69 = objc_autoreleasePoolPush();
          v70 = objc_alloc(MEMORY[0x277CBEB38]);
          v73 = objc_msgSend_initWithCapacity_(v70, v71, 4, v72);
          v76 = v73;
          if (subsampling == -1)
          {
            objc_msgSend_setObject_forKey_(v73, v74, MEMORY[0x277CBEC38], v163);
            v92 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v90, v165, v91);
            objc_msgSend_setObject_forKey_(v76, v93, v92, v162);

            v96 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v94, target == 1, v95);
            objc_msgSend_setObject_forKey_(v76, v97, v96, v161);

            ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(image, v65, v76);
            if (IMOSLoggingEnabled())
            {
              v99 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *v176 = ThumbnailAtIndex;
                _os_log_impl(&dword_254811000, v99, OS_LOG_TYPE_INFO, "Used thumbnail path %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v77 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v74, subsampling, v75);
            objc_msgSend_setObject_forKey_(v76, v78, v77, v157);

            objc_msgSend_setObject_forKey_(v76, v79, MEMORY[0x277CBEC38], v163);
            v82 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v80, v165, v81);
            objc_msgSend_setObject_forKey_(v76, v83, v82, v162);

            v86 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v84, target == 1, v85);
            objc_msgSend_setObject_forKey_(v76, v87, v86, v161);

            if (IMOSLoggingEnabled())
            {
              v88 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
              {
                *buf = 67109376;
                *v176 = subsampling;
                *&v176[4] = 1024;
                *&v176[6] = v65;
                _os_log_impl(&dword_254811000, v88, OS_LOG_TYPE_INFO, "Using subsamping with: %d  (index: %d)", buf, 0xEu);
              }
            }

            if (count == 1)
            {
              ImageAtIndex = CGImageSourceCreateImageAtIndex(image, v65, v76);
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v100 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                {
                  *buf = v152;
                  *v176 = v65;
                  *&v176[8] = 2112;
                  imageCopy = image;
                  _os_log_impl(&dword_254811000, v100, OS_LOG_TYPE_INFO, "Getting thumbnail at index %zu from %@", buf, 0x16u);
                }
              }

              ImageAtIndex = CGImageSourceCreateThumbnailAtIndex(image, v65, v76);
            }

            v101 = ImageAtIndex;
            if (target != 1)
            {
              goto LABEL_133;
            }

            ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(image, v65, v76);
            v102 = IMOSLoggingEnabled();
            if (!ThumbnailAtIndex)
            {
              if (v102)
              {
                v104 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v104, OS_LOG_TYPE_INFO, "Failed to create a a rotated image for MMS", buf, 2u);
                }
              }

LABEL_133:
              ThumbnailAtIndex = v101;
              goto LABEL_134;
            }

            if (v102)
            {
              v103 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *v176 = ThumbnailAtIndex;
                _os_log_impl(&dword_254811000, v103, OS_LOG_TYPE_INFO, "Created a rotated image for MMS: %@", buf, 0xCu);
              }
            }

            if (v101)
            {
              CFRelease(v101);
            }
          }

LABEL_134:
          if (!UTTypeConformsTo(format, inConformsToUTI) && !UTTypeConformsTo(format, v155))
          {
            v132 = objc_msgSend_copyFramePropertiesFrom_index_inFormat_outFormat_(self, v105, image, v65, fromFormat, format);
            if (!v132)
            {
              goto LABEL_171;
            }

LABEL_168:
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
LABEL_169:
            objc_msgSend_addEntriesFromDictionary_(Mutable, v130, v132, v131, v152);
            goto LABEL_170;
          }

          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *&v107 = qualityCopy;
          v111 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v108, v109, v110, v107);
          if (v111)
          {
            CFDictionarySetValue(Mutable, key, v111);
          }

          else
          {
            v112 = MEMORY[0x277D86220];
            v113 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v176 = key;
              *&v176[8] = 2080;
              imageCopy = "properties";
              _os_log_error_impl(&dword_254811000, v112, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
            }
          }

          v114 = CGImageSourceCopyPropertiesAtIndex(image, 0, 0);
          if (IMOSLoggingEnabled())
          {
            v115 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v176 = v114;
              _os_log_impl(&dword_254811000, v115, OS_LOG_TYPE_INFO, "Checking for properties: %@", buf, 0xCu);
            }
          }

          if (v114)
          {
            if (target == 1)
            {
              if (IMOSLoggingEnabled())
              {
                v119 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v119, OS_LOG_TYPE_INFO, " ...this is MMS, we don't want orientation appended, it's all pre-rotated", buf, 2u);
                }
              }

              if (objc_msgSend_count(propsCopy, v116, v117, v118, v152))
              {
                if (IMOSLoggingEnabled())
                {
                  v122 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_254811000, v122, OS_LOG_TYPE_INFO, " ... * Adding original properties to the set", buf, 2u);
                  }
                }

                objc_msgSend_addEntriesFromDictionary_(Mutable, v120, propsCopy, v121);
              }
            }

            else
            {
              v123 = objc_opt_class();
              v126 = objc_msgSend_findOrientationFromProperties_(v123, v124, v114, v125);
              if (v126)
              {
                if (IMOSLoggingEnabled())
                {
                  v128 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    *v176 = v153;
                    *&v176[8] = 2112;
                    imageCopy = v126;
                    _os_log_impl(&dword_254811000, v128, OS_LOG_TYPE_INFO, "Setting the image orientation (key=%@) to (%@)", buf, 0x16u);
                  }
                }

                objc_msgSend_setValue_forKey_(Mutable, v127, v126, v153, v152);
              }
            }
          }

          v132 = objc_msgSend_copyFramePropertiesFrom_index_inFormat_outFormat_(self, v129, image, v65, fromFormat, format);
          if (v132)
          {
            if (!Mutable)
            {
              goto LABEL_168;
            }

            goto LABEL_169;
          }

LABEL_170:
          if (!Mutable)
          {
LABEL_171:
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v133 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v130, 1, v131, v152);
          if (v133)
          {
            CFDictionarySetValue(Mutable, v158, v133);
          }

          else
          {
            v134 = MEMORY[0x277D86220];
            v135 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v176 = v158;
              *&v176[8] = 2080;
              imageCopy = "properties";
              _os_log_error_impl(&dword_254811000, v134, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
            }
          }

          if (v159)
          {
            objc_msgSend_addEntriesFromDictionary_(Mutable, v136, v166, v137);
          }

          if ((objc_msgSend__isHEIFImageFormat_(self, v136, format, v137) & 1) == 0)
          {
            objc_msgSend__setWideGamutProperties_scaledImage_(self, v138, Mutable, ThumbnailAtIndex);
          }

          v139 = IMOSLoggingEnabled();
          if (ThumbnailAtIndex)
          {
            if (v139)
            {
              v140 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *v176 = v65;
                _os_log_impl(&dword_254811000, v140, OS_LOG_TYPE_INFO, "adding scaled image at index %lu", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v141 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *v176 = Mutable;
                _os_log_impl(&dword_254811000, v141, OS_LOG_TYPE_INFO, "  properties: %@", buf, 0xCu);
              }
            }

            CGImageDestinationAddImage(idst, ThumbnailAtIndex, Mutable);
            v142 = IMOSLoggingEnabled();
            if (data)
            {
              if (v142)
              {
                v144 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v144, OS_LOG_TYPE_INFO, "Skipping Aux data addition for new quality estimator based transcoding for LQM", buf, 2u);
                }
              }
            }

            else
            {
              if (v142)
              {
                v146 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v146, OS_LOG_TYPE_INFO, "Adding Aux data", buf, 2u);
                }
              }

              objc_msgSend_copyAuxiliaryImagesFromImageSource_toDestination_fromImageAtIndex_scaleFactor_(self, v143, image, idst, v65, v42);
            }

            CGImageRelease(ThumbnailAtIndex);
          }

          else if (v139)
          {
            v145 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *v176 = v65;
              _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, "Failed adding scaled image at index (%zd)!", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v69);
          ++v65;
        }

        while (count != v65);
      }

      v147 = CGImageDestinationFinalize(idst);
      if (IMOSLoggingEnabled())
      {
        v148 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
        {
          v149 = @"NO";
          if (v147)
          {
            v149 = @"YES";
          }

          *buf = 138412290;
          *v176 = v149;
          _os_log_impl(&dword_254811000, v148, OS_LOG_TYPE_INFO, "Success finalizing image: %@", buf, 0xCu);
        }
      }

      if (!v147)
      {

        data = 0;
      }

      CFRelease(idst);
      dataCopy2 = data;
      v26 = dataCopy2;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v151 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v151, OS_LOG_TYPE_INFO, "Cannot generate image because imageDestination is NULL", buf, 2u);
        }
      }

      v26 = 0;
      dataCopy2 = data;
    }

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "Cannot generate image because source is NULL", buf, 2u);
    }
  }

  v26 = 0;
LABEL_32:

  return v26;
}

- (void)_setWideGamutProperties:(id)properties scaledImage:(CGImage *)image
{
  propertiesCopy = properties;
  if (image)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_254811000, v6, OS_LOG_TYPE_INFO, "Adding backward compatible color profile for non-heif-destination wide-gamut image", v14, 2u);
      }
    }

    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    if (Width <= Height)
    {
      objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v9, Height, v10);
    }

    else
    {
      objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v9, Width, v10);
    }
    v11 = ;
    objc_msgSend_setObject_forKey_(propertiesCopy, v12, v11, *MEMORY[0x277CD2D40]);

    objc_msgSend_setObject_forKey_(propertiesCopy, v13, MEMORY[0x277CBEC38], *MEMORY[0x277CD2D60]);
  }
}

- (id)_checkAndSaveImageData:(id)data sourceURL:(id)l inFormat:(__CFString *)format withMaxByteSize:(unint64_t)size actualSize:(unint64_t *)actualSize usedLengthIndex:(int *)index currentIndex:(int)currentIndex
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  v20 = objc_msgSend_length(dataCopy, v17, v18, v19);
  v21 = IMOSLoggingEnabled();
  if (!dataCopy || !v20)
  {
    if (v21)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "No image generated for this iteration, we got no image data.", &v29, 2u);
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v29 = 67109376;
      v30[0] = v20;
      LOWORD(v30[1]) = 1024;
      *(&v30[1] + 2) = size;
      _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "Successfully generated image! Comparing data length (%d) to maxByteSize (%d)", &v29, 0xEu);
    }
  }

  if (actualSize)
  {
    *actualSize = v20;
  }

  if (v20 > size)
  {
LABEL_25:
    v25 = 0;
    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "This image is a keeper, writing it out to url!", &v29, 2u);
    }
  }

  v25 = objc_msgSend__writeImageData_inFormat_sourceURL_(self, v23, dataCopy, format, lCopy);
  if (v25)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        *v30 = v25;
        _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "Saving %@ and breaking out of transcode loop", &v29, 0xCu);
      }
    }

    if (index)
    {
      *index = currentIndex;
    }
  }

LABEL_26:

  return v25;
}

- (void)copyAuxiliaryImagesFromImageSource:(CGImageSource *)source toDestination:(CGImageDestination *)destination fromImageAtIndex:(unint64_t)index scaleFactor:(double)factor
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_auxiliaryImagesToPreserveForDerivativesFromImageSource_imageIndex_(MEMORY[0x277D3B408], a2, source, index);
  v13 = objc_msgSend_count(v9, v10, v11, v12);
  if (v9)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = v13;
    v17 = objc_msgSend_transformAuxiliaryImages_scaleFactor_applyingOrientation_(MEMORY[0x277D3B408], v14, v9, 1, factor);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134219266;
        v23 = v16;
        v24 = 2048;
        indexCopy = index;
        v26 = 2048;
        factorCopy = factor;
        v28 = 1024;
        v29 = 1;
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "Copying %zd aux images (index %zd scaleFactor %f orientation %d) from input %@, to output %@", buf, 0x3Au);
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_25481C700;
    v21[3] = &unk_27978AB68;
    v21[4] = destination;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v17, v18, v21, v19);
  }
}

- (id)_writeImageData:(id)data inFormat:(__CFString *)format sourceURL:(id)l
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  if (!dataCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&dword_254811000, v41, OS_LOG_TYPE_INFO, "Cannot write out image because data is nil", &v45, 2u);
      }

      goto LABEL_23;
    }

LABEL_24:
    v37 = 0;
    goto LABEL_38;
  }

  if (!format)
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&dword_254811000, v41, OS_LOG_TYPE_INFO, "Cannot write out image because format is NULL", &v45, 2u);
      }

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v9 = UTTypeCopyPreferredTagWithClass(format, *MEMORY[0x277CC1F58]);
  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (v10)
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Nil file extension, aborting writing of image", &v45, 2u);
      }
    }

    v37 = 0;
    goto LABEL_37;
  }

  if (v10)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v45 = 138412290;
      v46 = v9;
      _os_log_impl(&dword_254811000, v14, OS_LOG_TYPE_INFO, "Using file extension: %@", &v45, 0xCu);
    }
  }

  v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12, v13);
  v19 = objc_msgSend_lastPathComponent(lCopy, v16, v17, v18);
  v23 = objc_msgSend_stringByDeletingPathExtension(v19, v20, v21, v22);
  v26 = objc_msgSend_stringByAppendingPathExtension_(v23, v24, v9, v25);
  v29 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v15, v27, v26, v28);
  v33 = objc_msgSend_path(v29, v30, v31, v32);

  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v45 = 138412290;
      v46 = v33;
      _os_log_impl(&dword_254811000, v36, OS_LOG_TYPE_INFO, "creating destination with output path: %@", &v45, 0xCu);
    }
  }

  if (!v33)
  {
    v37 = 0;
LABEL_31:
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v45 = 138412290;
        v46 = v37;
        _os_log_impl(&dword_254811000, v43, OS_LOG_TYPE_INFO, "Writing to url %@ failed", &v45, 0xCu);
      }
    }

    v37 = 0;
    goto LABEL_36;
  }

  v37 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v34, v33, v35);
  if (!v37)
  {
    goto LABEL_31;
  }

  v38 = objc_autoreleasePoolPush();
  v40 = objc_msgSend_writeToURL_atomically_(dataCopy, v39, v37, 1);
  objc_autoreleasePoolPop(v38);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_36:

LABEL_37:
LABEL_38:

  return v37;
}

- (id)_writeImage:(CGImageSource *)image sourceURL:(id)l target:(int64_t)target hardwareEncoder:(id)encoder inFormat:(__CFString *)format fromFormat:(__CFString *)fromFormat withMaxByteSize:(unint64_t)size maxDimension:(unint64_t)self0 actualSize:(unint64_t *)self1 startingLengthIndex:(int)self2 usedLengthIndex:(int *)self3 estimator:(id)self4 isLQMEnabled:(BOOL)self5 telemetry:(id)self6
{
  v186 = *MEMORY[0x277D85DE8];
  lCopy = l;
  encoderCopy = encoder;
  estimatorCopy = estimator;
  telemetryCopy = telemetry;
  imageCopy = image;
  if (!image)
  {
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "Invalid image source given to writeImage!", buf, 2u);
      }

      goto LABEL_32;
    }

LABEL_33:
    v36 = 0;
    goto LABEL_152;
  }

  if (*&format == 0.0)
  {
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "Invalid destination format provided to writeImage", buf, 2u);
      }

LABEL_32:

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  formatCopy = format;
  Count = CGImageSourceGetCount(image);
  *&v169 = COERCE_DOUBLE(CGImageSourceCopyProperties(image, 0));
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v181 = *&v169;
      _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "Original image properties: %@", buf, 0xCu);
    }
  }

  v21 = objc_opt_class();
  v178 = 0;
  v179 = 0;
  LargerDimensionFromImage_withProperties_toWidth_toHeight = objc_msgSend_findLargerDimensionFromImage_withProperties_toWidth_toHeight_(v21, v22, image, v169, &v179, &v178);
  v167 = v179;
  v168 = v178;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v181 = *&format;
      v182 = 1024;
      *v183 = size;
      *&v183[4] = 2048;
      *&v183[6] = dimension;
      *&v183[14] = 2112;
      *&v183[16] = v167;
      v184 = 2112;
      v185 = v168;
      _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "Beginning transcode loop for image format %@ with maxByteSize %d maxDimension %zd width %@ height %@", buf, 0x30u);
    }
  }

  if (lengthIndex)
  {
    *lengthIndex = -1;
  }

  v24 = *MEMORY[0x277CC2088];
  if (!UTTypeConformsTo(format, *MEMORY[0x277CC2088]) || !UTTypeConformsTo(fromFormat, v24))
  {
    goto LABEL_47;
  }

  v31 = objc_msgSend_objectForKey_(v169, v25, *MEMORY[0x277CD31B8], v27);
  if (v167)
  {
    v32 = v168 == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v32;
  if (v32)
  {
    v34 = 1.79769313e308;
    v38 = 1.79769313e308;
    if (!v31)
    {
      goto LABEL_43;
    }
  }

  else
  {
    objc_msgSend_doubleValue(v167, v28, v29, v30);
    v38 = v37;
    objc_msgSend_doubleValue(v168, v39, v40, v41);
    v34 = v42;
    if (!v31)
    {
      goto LABEL_43;
    }
  }

  v43 = objc_msgSend_longValue(v31, v28, v29, v30) / size;
  if (v43 <= 2.0)
  {
    v44 = 1;
  }

  else
  {
    v44 = v33;
  }

  if ((v44 & 1) == 0)
  {
    v38 = v38 * 0.8;
    v34 = v34 * 0.8;
    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v181 = v43;
        v182 = 2048;
        *v183 = v38;
        *&v183[8] = 2048;
        *&v183[10] = v34;
        _os_log_impl(&dword_254811000, v45, OS_LOG_TYPE_INFO, "Compressed input size is %.02f times larger than target output size, using initial scaled res of %.02f %.02f", buf, 0x20u);
      }
    }
  }

LABEL_43:
  v46 = sub_25481DAD4(imageCopy, size, v38, v34);
  if (objc_msgSend_length(v46, v47, v48, v49) >= size)
  {
  }

  else
  {
    v36 = objc_msgSend__writeImageData_inFormat_sourceURL_(self, v50, v46, format, lCopy);

    if (v36)
    {
      goto LABEL_151;
    }
  }

LABEL_47:
  v51 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v25, v26, v27);
  isLQMImageQualityEstimatorEnabled = objc_msgSend_isLQMImageQualityEstimatorEnabled(v51, v52, v53, v54);

  if (isLQMImageQualityEstimatorEnabled)
  {
    v58 = 0;
    v163 = 0;
    v59 = -1;
    if (UTTypeConformsTo(fromFormat, @"public.heic") && enabled)
    {
      v163 = objc_msgSend_getInputImageFeatures_(IMTranscoderImageQualityEstimator, v56, imageCopy, v57);
      if (v163)
      {
        if (IMOSLoggingEnabled())
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v60, OS_LOG_TYPE_INFO, "Use image quality estimator model for getting low quality image.", buf, 2u);
          }
        }

        v59 = 0;
        v58 = 1;
      }

      else
      {
        v163 = 0;
        v58 = 0;
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v61 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v61, OS_LOG_TYPE_INFO, "Legacy iMessage estimator to be used for getting low quality image.", buf, 2u);
      }
    }

    v163 = 0;
    v58 = 0;
    v59 = -1;
  }

  inConformsToUTI = *MEMORY[0x277CC2120];
  v161 = *MEMORY[0x277CC20C8];
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v62 = LargerDimensionFromImage_withProperties_toWidth_toHeight;
    if (v59 < 0)
    {
      break;
    }

    v63 = dword_254832E48[v59];
    v62 = v63;
    v64 = !LargerDimensionFromImage_withProperties_toWidth_toHeight || LargerDimensionFromImage_withProperties_toWidth_toHeight >= v63;
    v65 = !v64;
    v66 = v62 <= dimension || dimension == 0;
    if (v66 && !v65)
    {
      break;
    }

LABEL_146:
    objc_autoreleasePoolPop(context);
    if (v59++ >= 25)
    {

      if (IMOSLoggingEnabled())
      {
        v156 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v156, OS_LOG_TYPE_INFO, "Warning! Did not find a valid size for this image given the filesize constraint!", buf, 2u);
        }
      }

      v36 = 0;
      goto LABEL_151;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v67 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v181 = *&v62;
      v182 = 1024;
      *v183 = v59;
      *&v183[4] = 1024;
      *&v183[6] = 26;
      _os_log_impl(&dword_254811000, v67, OS_LOG_TYPE_INFO, "Trying maxSize = %lu  (index: %d/%d)", buf, 0x18u);
    }
  }

  if (v59 > 2)
  {
    v68 = -1;
  }

  else
  {
    v68 = 2;
  }

  v170 = v68;
  if (CGImageSourceGetCount(imageCopy) >= 2 && UTTypeConformsTo(fromFormat, inConformsToUTI))
  {
    if (IMOSLoggingEnabled())
    {
      v69 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v181) = 8;
        _os_log_impl(&dword_254811000, v69, OS_LOG_TYPE_INFO, "Overrriding subsampling to %d for APNG", buf, 8u);
      }
    }

    v170 = 8;
  }

  if (UTTypeConformsTo(formatCopy, v161))
  {
    if (UTTypeConformsTo(fromFormat, v161))
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }
  }

  else
  {
    v73 = 1;
  }

  v74 = &dword_254832EB0;
  while (1)
  {
    v75 = *v74;
    objc_msgSend_overrideJPEGCompressionQuality(self, v70, v71, v72);
    if (v79 == 0.0)
    {
      v81 = v75;
    }

    else
    {
      objc_msgSend_overrideJPEGCompressionQuality(self, v76, v77, v78);
      v81 = v80;
    }

    v82 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v76, v77, v78);
    v86 = objc_msgSend_isLQMImageQualityEstimatorEnabled(v82, v83, v84, v85);

    if (v86)
    {
      break;
    }

    *&v101 = COERCE_DOUBLE(objc_msgSend_estimatedSizeForOutputUTI_maximumDimension_quality_(estimatorCopy, v87, formatCopy, v62, v81));
    if (v101 <= size)
    {
      LOBYTE(v92) = 0;
      goto LABEL_121;
    }

    if (IMOSLoggingEnabled())
    {
      shouldSkipAuxillaryData = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(shouldSkipAuxillaryData, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v181 = *&v101;
        v182 = 2048;
        *v183 = size;
        _os_log_impl(&dword_254811000, shouldSkipAuxillaryData, OS_LOG_TYPE_INFO, "Estimated size %lu is larger than required size %lu, skipping", buf, 0x16u);
      }

      goto LABEL_132;
    }

LABEL_133:
    ++v74;
    if (!--v73)
    {
      goto LABEL_146;
    }
  }

  v89 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v87, v62, v88);
  v92 = objc_msgSend_containsObject_(&unk_28669CC60, v90, v89, v91);

  if (v58 & v92)
  {
    v94 = CACurrentMediaTime();
    objc_msgSend_predictQualityFactor_suggestedMaxLength_(IMTranscoderImageQualityEstimator, v95, v163, v62);
    v81 = v96;
    v97 = CACurrentMediaTime();
    if (IMOSLoggingEnabled())
    {
      v98 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v181 = v97 - v94;
        _os_log_impl(&dword_254811000, v98, OS_LOG_TYPE_INFO, "Prediction Time taken by image quality estimator: %f", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v100 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v181 = v81;
        _os_log_impl(&dword_254811000, v100, OS_LOG_TYPE_INFO, "[v5.1]Estimated quality factor for image when LQM is enabled: %lf", buf, 0xCu);
      }
    }

    if (v81 < 0.45)
    {
      if (IMOSLoggingEnabled())
      {
        v131 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v181 = v81;
          _os_log_impl(&dword_254811000, v131, OS_LOG_TYPE_INFO, "Estimated quality factor is less than pivot : %lf, try for lower dimension.", buf, 0xCu);
        }
      }

      v132 = objc_msgSend_lastObject(&unk_28669CC60, v128, v129, v130);
      v136 = v62 == objc_msgSend_integerValue(v132, v133, v134, v135);

      if (v136)
      {
        v59 -= objc_msgSend_count(&unk_28669CC60, v70, v71, v72);
        if (IMOSLoggingEnabled())
        {
          v137 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v181 = v81;
            _os_log_impl(&dword_254811000, v137, OS_LOG_TYPE_INFO, "Estimated quality factor is less than pivot : %lf for the lowest model supported dimension. Fallback to iMessage estimator.", buf, 0xCu);
          }
        }

        v58 = 0;
      }

      else
      {
        v58 = 1;
      }

      goto LABEL_133;
    }

    LOBYTE(v92) = 1;
  }

  else
  {
    *&v103 = COERCE_DOUBLE(objc_msgSend_estimatedSizeForOutputUTI_maximumDimension_quality_(estimatorCopy, v93, formatCopy, v62, v81));
    if (v103 > size)
    {
      if (IMOSLoggingEnabled())
      {
        v104 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v181 = *&v103;
          v182 = 2048;
          *v183 = size;
          _os_log_impl(&dword_254811000, v104, OS_LOG_TYPE_INFO, "Estimated size %lu is larger than required size %lu, skipping", buf, 0x16u);
        }
      }

      goto LABEL_133;
    }
  }

LABEL_121:
  HIDWORD(v158) = v170;
  LOBYTE(v158) = v59 < 0x19;
  LOBYTE(v159) = v58 & v92 & 1;
  shouldSkipAuxillaryData = objc_msgSend__newGeneratedImage_sourceWidth_sourceHeight_sourceLength_sourceProps_target_hardwareEncoder_inFormat_fromFormat_withMaxLength_withMaxCount_withCompressionQuality_enforceMaxes_subsampling_shouldSkipAuxillaryData_(self, v99, imageCopy, v167, v168, LargerDimensionFromImage_withProperties_toWidth_toHeight, v169, target, v81, encoderCopy, formatCopy, fromFormat, v62, Count, v158, v159);
  LODWORD(v157) = v59;
  v36 = objc_msgSend__checkAndSaveImageData_sourceURL_inFormat_withMaxByteSize_actualSize_usedLengthIndex_currentIndex_(self, v105, shouldSkipAuxillaryData, lCopy, formatCopy, size, actualSize, lengthIndex, v157);
  v109 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v106, v107, v108);
  v113 = objc_msgSend_isLQMImageQualityEstimatorEnabled(v109, v110, v111, v112);

  if ((v113 & v58) == 1 && !v36)
  {
    v117 = objc_msgSend_lastObject(&unk_28669CC60, v114, v115, v116);
    v121 = v62 == objc_msgSend_integerValue(v117, v118, v119, v120);

    if (v121)
    {
      v59 -= objc_msgSend_count(&unk_28669CC60, v114, v122, v116);
      if (IMOSLoggingEnabled())
      {
        v123 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
        {
          *&v127 = COERCE_DOUBLE(objc_msgSend_length(shouldSkipAuxillaryData, v124, v125, v126));
          *buf = 134217984;
          v181 = *&v127;
          _os_log_impl(&dword_254811000, v123, OS_LOG_TYPE_INFO, "Transcoded Image size of %lu is greater than the LQM maxLimit using image quality estimator model. Fallback to iMessage legacy estimator.", buf, 0xCu);
        }
      }

      v58 = 0;
LABEL_132:

      goto LABEL_133;
    }

LABEL_130:
    if (shouldSkipAuxillaryData)
    {
      objc_msgSend_emitSignpostTranscodeStepForDestinationUTI_(telemetryCopy, v114, formatCopy, v116);
    }

    goto LABEL_132;
  }

  if (!v36)
  {
    goto LABEL_130;
  }

  objc_msgSend_emitSignpostTranscodeFinalForDestinationUTI_(telemetryCopy, v114, formatCopy, v116);

  v142 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v139, v140, v141);
  v146 = objc_msgSend_isLQMImageQualityEstimatorEnabled(v142, v143, v144, v145);

  if (v146 & enabled)
  {
    v148 = objc_msgSend__imMetricsCollectorForLQMQualityEstimatorModel_suggestedMaxLength_shouldUseQualityEstimatorModel_inputImageFeatures_(self, v147, fromFormat, v62, v58 & 1, v163);
    v152 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v149, v150, v151);
    objc_msgSend_trackEvent_withDictionary_(v152, v153, *MEMORY[0x277D1A168], v148);
  }

  objc_autoreleasePoolPop(context);

LABEL_151:
LABEL_152:

  return v36;
}

- (id)_writeRepresentationsForImage:(CGImageSource *)image target:(int64_t)target sourceURL:(id)l sizes:(id)sizes maxDimension:(unint64_t)dimension srcUTI:(__CFString *)i inFormat:(__CFString *)format downgradingMultiFrameImageToSingleFrame:(BOOL)self0 estimator:(id)self1 isLQMEnabled:(BOOL)self2 telemetry:(id)self3
{
  v148 = *MEMORY[0x277D85DE8];
  lCopy = l;
  sizesCopy = sizes;
  estimatorCopy = estimator;
  inUTI = i;
  telemetryCopy = telemetry;
  v20 = 0;
  if (i && format)
  {
    v21 = *MEMORY[0x277CC20C8];
    if (CFEqual(format, *MEMORY[0x277CC20C8]))
    {
      v22 = UTTypeConformsTo(i, v21);
      v20 = 0;
      if (target != 1 && v22)
      {
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "Will use hardware JPEG encoding", buf, 2u);
          }
        }

        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18, v19);
  v28 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26, v27);
  v32 = objc_msgSend_path(lCopy, v29, v30, v31);
  v142 = 0;
  v34 = objc_msgSend_attributesOfItemAtPath_error_(v28, v33, v32, &v142);
  v129 = v142;
  v136 = objc_msgSend_fileSize(v34, v35, v36, v37);

  v141 = v136;
  v40 = objc_msgSend_objectAtIndexedSubscript_(sizesCopy, v38, 0, v39);
  v44 = objc_msgSend_unsignedLongValue(v40, v41, v42, v43);

  if (IMOSLoggingEnabled())
  {
    v47 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      formatCopy = v136;
      v145 = 2112;
      *v146 = v129;
      *&v146[8] = 2112;
      v147 = sizesCopy;
      _os_log_impl(&dword_254811000, v47, OS_LOG_TYPE_INFO, "Generating the representations, originalSize %ld (err %@) sizes %@", buf, 0x20u);
    }
  }

  isWideGamutImage = objc_msgSend__isWideGamutImage_(self, v45, image, v46);
  v49 = 0;
  if (v129)
  {
    v50 = 0;
  }

  else
  {
    v50 = isWideGamutImage;
  }

  if (v50 == 1 && v136 < v44)
  {
    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        formatCopy = v136;
        v145 = 2048;
        *v146 = v44;
        _os_log_impl(&dword_254811000, v52, OS_LOG_TYPE_INFO, "Attempting copy+add props for size %lu (reason: the source is wide gamut and smaller than the limit %lu)", buf, 0x16u);
      }
    }

    v53 = objc_msgSend__wideGamutImage_sourceURL_inFormat_withMaxByteSize_maxDimension_actualSize_telemetry_(self, v51, image, lCopy, format, v44, dimension, &v141, telemetryCopy);
    v54 = IMOSLoggingEnabled();
    if (v53)
    {
      if (v54)
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          formatCopy = v53;
          _os_log_impl(&dword_254811000, v55, OS_LOG_TYPE_INFO, "Using original wide-gamut image with added properties answerImageURL: %@", buf, 0xCu);
        }
      }

      if (v24)
      {
        CFArrayAppendValue(v24, v53);
      }

      v49 = 1;
    }

    else
    {
      if (v54)
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          formatCopy = v141;
          v145 = 2048;
          *v146 = v44;
          _os_log_impl(&dword_254811000, v56, OS_LOG_TYPE_INFO, "Couldn't use copy of wide-gamut image with added properties (size %ld max %ld), transcoding", buf, 0x16u);
        }
      }

      v49 = 0;
      v136 = v141;
    }
  }

  v57 = v20 ^ 1;
  if (!lCopy)
  {
    v57 = 1;
  }

  if (v57)
  {
    v132 = 0;
  }

  else
  {
    v58 = objc_alloc(MEMORY[0x277CBEA90]);
    v60 = objc_msgSend_initWithContentsOfURL_options_error_(v58, v59, lCopy, 1, 0);
    if (objc_msgSend_length(v60, v61, v62, v63))
    {
      v64 = [IMEmbeddedHardwareJPEGTranscoder alloc];
      v132 = objc_msgSend_initWithImageData_imageSource_(v64, v65, v60, image);
    }

    else
    {
      v132 = 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v69 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      formatCopy = sizesCopy;
      v145 = 2048;
      *v146 = v136;
      _os_log_impl(&dword_254811000, v69, OS_LOG_TYPE_INFO, "Beginning to transcode images with size limits: %@ originalFileSize %lu", buf, 0x16u);
    }
  }

  if (v49 < objc_msgSend_count(sizesCopy, v66, v67, v68))
  {
    v70 = 0;
    if (v129)
    {
      v71 = 1;
    }

    else
    {
      v71 = v136 == 0;
    }

    v72 = !v71;
    v130 = v72;
    while (1)
    {
      if (IMOSLoggingEnabled())
      {
        v75 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v78 = objc_msgSend_objectAtIndexedSubscript_(sizesCopy, v76, v49, v77);
          *buf = 134218242;
          formatCopy = v49;
          v145 = 2112;
          *v146 = v78;
          _os_log_impl(&dword_254811000, v75, OS_LOG_TYPE_INFO, "Trying to transcode to target size index %lu size limit %@", buf, 0x16u);
        }
      }

      if (v70 >= 0x1A)
      {
        if (IMOSLoggingEnabled())
        {
          v118 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(formatCopy) = v70;
            _os_log_impl(&dword_254811000, v118, OS_LOG_TYPE_INFO, "Transcoding: Aborting further transcoding attempts: current image resize index is %d.", buf, 8u);
          }
        }

        goto LABEL_151;
      }

      v79 = objc_msgSend_objectAtIndexedSubscript_(sizesCopy, v73, v49, v74);
      v83 = objc_msgSend_unsignedLongValue(v79, v80, v81, v82);

      if (!v49)
      {
        break;
      }

      v86 = objc_msgSend_objectAtIndexedSubscript_(sizesCopy, v84, v49 - 1, v85);
      v90 = objc_msgSend_unsignedLongValue(v86, v87, v88, v89) == v83;

      if (!v90)
      {
        v95 = objc_autoreleasePoolPush();
        if (v141 > v83)
        {
          if (IMOSLoggingEnabled())
          {
            v98 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              formatCopy = v83;
              v145 = 2048;
              *v146 = v141;
              _os_log_impl(&dword_254811000, v98, OS_LOG_TYPE_INFO, "Transcoding at size %tu (the previous size is %tu)", buf, 0x16u);
            }

            goto LABEL_122;
          }

LABEL_132:
          v140 = v70;
          LOBYTE(v128) = enabled;
          LODWORD(v127) = v70;
          v108 = objc_msgSend__writeImage_sourceURL_target_hardwareEncoder_inFormat_fromFormat_withMaxByteSize_maxDimension_actualSize_startingLengthIndex_usedLengthIndex_estimator_isLQMEnabled_telemetry_(self, v97, image, lCopy, target, v132, format, inUTI, v83, dimension, &v141, v127, &v140, estimatorCopy, v128, telemetryCopy);
          if (IMOSLoggingEnabled())
          {
            v116 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              formatCopy = v108;
              v145 = 1024;
              *v146 = v70;
              *&v146[4] = 1024;
              *&v146[6] = v140;
              _os_log_impl(&dword_254811000, v116, OS_LOG_TYPE_INFO, "Transcoding result URL: %@ (start/stop length index: %d => %d)", buf, 0x18u);
            }
          }

          v70 = v140 + 1;
LABEL_137:
          if (IMOSLoggingEnabled())
          {
            v117 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              formatCopy = v24;
              v145 = 2112;
              *v146 = v108;
              _os_log_impl(&dword_254811000, v117, OS_LOG_TYPE_INFO, "answer: %@ answerImageURL: %@", buf, 0x16u);
            }
          }

          if (v24 && v108)
          {
            CFArrayAppendValue(v24, v108);
          }

          objc_autoreleasePoolPop(v95);
          goto LABEL_145;
        }

LABEL_123:
        v108 = 0;
LABEL_124:
        if (IMOSLoggingEnabled())
        {
          v115 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            formatCopy = v83;
            _os_log_impl(&dword_254811000, v115, OS_LOG_TYPE_INFO, "Not transcoding an image for size: %tu", buf, 0xCu);
          }
        }

        goto LABEL_137;
      }

      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          formatCopy = v83;
          _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, "Aborting transcoding attempt: current size limit %tu is the same as the previous size.", buf, 0xCu);
        }
      }

LABEL_145:
      if (++v49 >= objc_msgSend_count(sizesCopy, v91, v92, v93))
      {
        goto LABEL_151;
      }
    }

    v95 = objc_autoreleasePoolPush();
    if (v136 <= v83)
    {
      v96 = v130;
    }

    else
    {
      v96 = 0;
    }

    if (target == 1)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_132;
      }

      v98 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        formatCopy = v83;
        _os_log_impl(&dword_254811000, v98, OS_LOG_TYPE_INFO, "Transcoding large size %tu (reason: the target is MMS).", buf, 0xCu);
      }

      goto LABEL_122;
    }

    Type = CGImageSourceGetType(image);
    if (objc_msgSend__isHEIFImageFormat_(self, v100, Type, v101) && (objc_msgSend__isHEIFImageFormat_(self, v102, format, v103) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v109 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          formatCopy = v83;
          _os_log_impl(&dword_254811000, v109, OS_LOG_TYPE_INFO, "Transcoding to size %tu (reason: the source is HEIF).", buf, 0xCu);
        }
      }

      if (v136 * 2.5 <= v83)
      {
        v110 = v130;
      }

      else
      {
        v110 = 0;
      }

      v111 = IMOSLoggingEnabled();
      if (v110)
      {
        if (v111)
        {
          v112 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v112, OS_LOG_TYPE_INFO, "Transcoded size fits within the max limit so only writing URL for wide gamut properties", buf, 2u);
          }
        }

        *buf = v70;
        LODWORD(v126) = v70;
        v108 = objc_msgSend__writeHEIFImage_sourceURL_inFormat_withMaxByteSize_maxDimension_downgradingMultiFrameImageToSingleFrame_actualSize_startingLengthIndex_usedLengthIndex_telemetry_(self, v97, image, lCopy, format, v83, dimension, frame, &v141, v126, buf, telemetryCopy);
        v70 = *buf + 1;
        if (!v108)
        {
          goto LABEL_132;
        }

        goto LABEL_124;
      }

      if (!v111)
      {
        goto LABEL_132;
      }

      v113 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v113, OS_LOG_TYPE_INFO, "Original size is larger than max limit so needs transcoding", buf, 2u);
      }
    }

    else
    {
      if (!objc_msgSend__isHEIFImageFormat_(self, v102, format, v103) || (v104 = CGImageSourceGetType(image), (objc_msgSend__isHEIFImageFormat_(self, v105, v104, v106) & 1) != 0))
      {
        if (UTTypeEqual(format, inUTI))
        {
          if (v96)
          {
            if (IMOSLoggingEnabled())
            {
              v107 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                formatCopy = v83;
                v145 = 2048;
                *v146 = v136;
                _os_log_impl(&dword_254811000, v107, OS_LOG_TYPE_INFO, "Given size limit %lu is already greater than the original file size %lu.", buf, 0x16u);
              }
            }

            v108 = lCopy;
            goto LABEL_124;
          }

          v114 = v130;
          if (v136 <= v83)
          {
            v114 = 0;
          }

          if (v114 != 1)
          {
            goto LABEL_123;
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_132;
          }

          v98 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            formatCopy = v136;
            v145 = 2048;
            *v146 = v83;
            _os_log_impl(&dword_254811000, v98, OS_LOG_TYPE_INFO, "Original file size limit %lu is bigger than target size %lu", buf, 0x16u);
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_132;
          }

          v98 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            formatCopy = format;
            v145 = 2112;
            *v146 = inUTI;
            _os_log_impl(&dword_254811000, v98, OS_LOG_TYPE_INFO, "Destination (%@) and source (%@) UTIs do not match, so transcoding", buf, 0x16u);
          }
        }

LABEL_122:

        goto LABEL_132;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_132;
      }

      v113 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v113, OS_LOG_TYPE_INFO, "Original is not HEIF, we want to send HEIF, so transcoding", buf, 2u);
      }
    }

    goto LABEL_132;
  }

LABEL_151:
  if (IMOSLoggingEnabled())
  {
    v119 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
    {
      v123 = objc_msgSend_count(v24, v120, v121, v122);
      *buf = 134218242;
      formatCopy = v123;
      v145 = 2112;
      *v146 = v24;
      _os_log_impl(&dword_254811000, v119, OS_LOG_TYPE_INFO, "Finished transcoding images with %tu results: %@", buf, 0x16u);
    }
  }

  v124 = v24;

  return v124;
}

- (id)_wideGamutImage:(CGImageSource *)image sourceURL:(id)l inFormat:(__CFString *)format withMaxByteSize:(unint64_t)size maxDimension:(unint64_t)dimension actualSize:(unint64_t *)actualSize telemetry:(id)telemetry
{
  v53 = *MEMORY[0x277D85DE8];
  lCopy = l;
  telemetryCopy = telemetry;
  Count = CGImageSourceGetCount(image);
  context = objc_autoreleasePoolPush();
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v52 = Count;
      _os_log_impl(&dword_254811000, v13, OS_LOG_TYPE_INFO, "Trying to copy wide gamut properties with original image count = %zu", buf, 0xCu);
    }
  }

  data = objc_alloc_init(MEMORY[0x277CBEB28]);
  v14 = CGImageDestinationCreateWithData(data, format, Count, 0);
  v15 = IMOSLoggingEnabled();
  if (!v14)
  {
    if (v15)
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "Cannot set gamut properties because imageDestination is NULL", buf, 2u);
      }
    }

    goto LABEL_48;
  }

  if (v15)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v52 = Count;
      _os_log_impl(&dword_254811000, v16, OS_LOG_TYPE_INFO, " ==> Image Count = %zu", buf, 0xCu);
    }
  }

  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = CGImageSourceCopyPropertiesAtIndex(image, i, 0);
      v23 = objc_msgSend_mutableCopy(v19, v20, v21, v22);

      ImageAtIndex = CGImageSourceCreateImageAtIndex(image, i, 0);
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = @"YES";
          if (!ImageAtIndex)
          {
            v28 = @"NO";
          }

          *buf = 138412290;
          v52 = v28;
          _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "adding image properties for wide gamut properties only. Created scaled image: %@", buf, 0xCu);
        }
      }

      if ((objc_msgSend__isHEIFImageFormat_(self, v25, format, v26) & 1) == 0)
      {
        objc_msgSend__setWideGamutProperties_scaledImage_(self, v29, v23, ImageAtIndex);
      }

      v30 = IMOSLoggingEnabled();
      if (ImageAtIndex)
      {
        if (v30)
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v52 = i;
            _os_log_impl(&dword_254811000, v31, OS_LOG_TYPE_INFO, "adding scaled image at index %lu", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v23;
            _os_log_impl(&dword_254811000, v32, OS_LOG_TYPE_INFO, "  properties: %@", buf, 0xCu);
          }
        }

        CGImageDestinationAddImage(v14, ImageAtIndex, v23);
        objc_msgSend_copyAuxiliaryImagesFromImageSource_toDestination_fromImageAtIndex_scaleFactor_(self, v33, image, v14, i, 1.0);
        CGImageRelease(ImageAtIndex);
      }

      else if (v30)
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v52 = i;
          _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "Failed adding scaled image at index (%zd)!", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  if (!CGImageDestinationFinalize(v14))
  {
    CFRelease(v14);
LABEL_48:

    objc_autoreleasePoolPop(context);
    v39 = 0;
    goto LABEL_49;
  }

  v39 = objc_msgSend__checkAndSaveImageData_sourceURL_inFormat_withMaxByteSize_actualSize_usedLengthIndex_currentIndex_(self, v36, data, lCopy, format, size, actualSize, 0, -1);
  if (v39)
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = v39;
        _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Success copying wide gamut image w/ props to url: %@", buf, 0xCu);
      }
    }

    objc_msgSend_emitSignpostTranscodeFinalForDestinationUTI_(telemetryCopy, v40, format, v41);
    CFRelease(v14);

    objc_autoreleasePoolPop(context);
  }

  else
  {
    objc_msgSend_emitSignpostTranscodeStepForDestinationUTI_(telemetryCopy, v37, format, v38);
    CFRelease(v14);

    objc_autoreleasePoolPop(context);
    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v44, OS_LOG_TYPE_INFO, "Failed to copy an image url for a wide gamut transformation", buf, 2u);
      }
    }
  }

LABEL_49:

  return v39;
}

- (id)_writeHEIFImage:(CGImageSource *)image sourceURL:(id)l inFormat:(__CFString *)format withMaxByteSize:(unint64_t)size maxDimension:(unint64_t)dimension downgradingMultiFrameImageToSingleFrame:(BOOL)frame actualSize:(unint64_t *)actualSize startingLengthIndex:(int)self0 usedLengthIndex:(int *)self1 telemetry:(id)self2
{
  frameCopy = frame;
  *(&v81[2] + 2) = *MEMORY[0x277D85DE8];
  lCopy = l;
  telemetryCopy = telemetry;
  if (index >= 0x1A)
  {
    indexCopy = 0;
  }

  else
  {
    indexCopy = index;
  }

  Count = CGImageSourceGetCount(image);
  if (dimension)
  {
    v16 = indexCopy - 1;
    v17 = &dword_254832E48[indexCopy];
    do
    {
      v18 = *v17++;
      ++v16;
    }

    while (v18 > dimension);
    if (v16 > 0x19)
    {
LABEL_59:
      if (IMOSLoggingEnabled())
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v56, OS_LOG_TYPE_INFO, "Failed to generate an image url for a wide gamut transformation", buf, 2u);
        }
      }

      goto LABEL_69;
    }

    LODWORD(indexCopy) = v16;
  }

  v74 = indexCopy;
  dimensionCopy = dimension;
  v63 = *MEMORY[0x277CD3660];
  v64 = *MEMORY[0x277CD3568];
  dimensionCopy2 = dimension;
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v20 = dword_254832E48[v74];
    v21 = dword_254832EB8[v74];
    if (dimension)
    {
      v22 = v20 / dimensionCopy;
    }

    else
    {
      v22 = 1.0;
    }

    if (Count >= v21)
    {
      v23 = dword_254832EB8[v74];
    }

    else
    {
      v23 = Count;
    }

    if (frameCopy)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v75 = v24;
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v79 = v21;
        v80 = 1024;
        LODWORD(v81[0]) = v74;
        WORD2(v81[0]) = 2048;
        *(v81 + 6) = Count;
        _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "Trying to copy wide gamut properties for index maxSize = %lu (index: %d) with original image count = %zu", buf, 0x1Cu);
      }
    }

    v73 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v26 = CGImageDestinationCreateWithData(v73, format, v75, 0);
    v27 = IMOSLoggingEnabled();
    if (!v26)
    {
      break;
    }

    if (v27)
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v79 = v75;
        v80 = 2048;
        v81[0] = v20;
        _os_log_impl(&dword_254811000, v30, OS_LOG_TYPE_INFO, " ==> Image Count = %zu, suggestedMaxLength = %zu", buf, 0x16u);
      }
    }

    v76[0] = v64;
    v76[1] = v63;
    v77[0] = MEMORY[0x277CBEC38];
    v31 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v28, v20, v29);
    v77[1] = v31;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v77, v76, 2);

    if (frameCopy)
    {
      v35 = objc_msgSend__determineFrameIndexForDowngradeFromMultiFrameToSingleFrameWithMaxDimension_fromImageSource_(self, v34, dimensionCopy2, image);
      v23 = 1;
    }

    else
    {
      v35 = 0;
    }

    if (v35 < v23 + v35)
    {
      do
      {
        v36 = objc_autoreleasePoolPush();
        v37 = CGImageSourceCopyPropertiesAtIndex(image, v35, 0);
        v41 = objc_msgSend_mutableCopy(v37, v38, v39, v40);

        if (v75 >= 2)
        {
          ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(image, v35, v33);
        }

        else
        {
          ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(image, v35, 0);
        }

        v43 = ThumbnailAtIndex;
        if (IMOSLoggingEnabled())
        {
          v45 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = @"YES";
            if (!v43)
            {
              v46 = @"NO";
            }

            *buf = 138412290;
            v79 = v46;
            _os_log_impl(&dword_254811000, v45, OS_LOG_TYPE_INFO, "adding image properties for HEIF Images only. Created scaled image: %@", buf, 0xCu);
          }
        }

        objc_msgSend__setWideGamutProperties_scaledImage_(self, v44, v41, v43);
        v47 = IMOSLoggingEnabled();
        if (v43)
        {
          if (v47)
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v79 = v35;
              _os_log_impl(&dword_254811000, v48, OS_LOG_TYPE_INFO, "adding scaled image at index %lu", buf, 0xCu);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v49 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v79 = v41;
              _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "  properties: %@", buf, 0xCu);
            }
          }

          CGImageDestinationAddImage(v26, v43, v41);
          objc_msgSend_copyAuxiliaryImagesFromImageSource_toDestination_fromImageAtIndex_scaleFactor_(self, v50, image, v26, v35, v22);
          CGImageRelease(v43);
        }

        else if (v47)
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v79 = v35;
            _os_log_impl(&dword_254811000, v51, OS_LOG_TYPE_INFO, "Failed adding scaled image at index (%zd)!", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v36);
        ++v35;
        --v23;
      }

      while (v23);
    }

    if (!CGImageDestinationFinalize(v26))
    {
      CFRelease(v26);

      objc_autoreleasePoolPop(context);
      goto LABEL_69;
    }

    LODWORD(v62) = v74;
    v55 = objc_msgSend__checkAndSaveImageData_sourceURL_inFormat_withMaxByteSize_actualSize_usedLengthIndex_currentIndex_(self, v52, v73, lCopy, format, size, actualSize, lengthIndex, v62);
    if (v55)
    {
      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v79 = v55;
          _os_log_impl(&dword_254811000, v61, OS_LOG_TYPE_INFO, "Success writing wide gamut image out, breaking from loop with url: %@", buf, 0xCu);
        }
      }

      objc_msgSend_emitSignpostTranscodeFinalForDestinationUTI_(telemetryCopy, v59, format, v60);
      CFRelease(v26);

      objc_autoreleasePoolPop(context);
      goto LABEL_70;
    }

    objc_msgSend_emitSignpostTranscodeStepForDestinationUTI_(telemetryCopy, v53, format, v54);
    CFRelease(v26);

    objc_autoreleasePoolPop(context);
    ++v74;
    dimension = dimensionCopy2;
    if (v74 == 26)
    {
      goto LABEL_59;
    }
  }

  if (v27)
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v57, OS_LOG_TYPE_INFO, "Cannot set gamut properties because imageDestination is NULL", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
LABEL_69:
  v55 = 0;
LABEL_70:

  return v55;
}

- (unint64_t)_determineFrameIndexForDowngradeFromMultiFrameToSingleFrameWithMaxDimension:(unint64_t)dimension fromImageSource:(CGImageSource *)source
{
  sourceCopy = source;
  v51 = *MEMORY[0x277D85DE8];
  Count = CGImageSourceGetCount(source);
  v7 = Count;
  if (!Count)
  {
    v41 = 0;
    v42 = -1;
    v10 = 0;
LABEL_22:
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      v9 = v42;
      v44 = v42;
      v45 = 2048;
      v46 = v10;
      v47 = 2048;
      v48 = v41;
      v49 = 2048;
      v50 = v7;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "Using frame index %ld with dimensions (%ld x %ld) for downgrade from %ld frame image to single frame.", buf, 0x2Au);
    }

    else
    {
      v9 = v42;
    }

    goto LABEL_25;
  }

  if (Count != 1)
  {
    v10 = 0;
    v41 = 0;
    v11 = 0;
    v12 = *MEMORY[0x277CD3450];
    v40 = *MEMORY[0x277CD3448];
    v42 = -1;
    do
    {
      v13 = CGImageSourceCopyPropertiesAtIndex(sourceCopy, v11, 0);
      v16 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v12, v15);
      v20 = objc_msgSend_unsignedIntegerValue(v16, v17, v18, v19);

      if (v20 <= dimension)
      {
        v23 = objc_msgSend_objectForKeyedSubscript_(v13, v21, v40, v22);
        v27 = sourceCopy;
        v28 = v7;
        v29 = objc_msgSend_unsignedIntegerValue(v23, v24, v25, v26);

        v30 = v10 < v20;
        v32 = v41;
        v31 = v42;
        v33 = v41 < v29;
        v34 = !v30 || !v33;
        if (v30 && v33)
        {
          v35 = v29;
        }

        else
        {
          v35 = v41;
        }

        if (v34)
        {
          v36 = v10;
        }

        else
        {
          v36 = v20;
        }

        if (v34)
        {
          v37 = v42;
        }

        else
        {
          v37 = v11;
        }

        v38 = v29 > dimension;
        v7 = v28;
        sourceCopy = v27;
        if (!v38)
        {
          v32 = v35;
          v10 = v36;
          v31 = v37;
        }

        v41 = v32;
        v42 = v31;
      }

      ++v11;
    }

    while (v7 != v11);
    goto LABEL_22;
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "Image only contains one frame, no need to choose a best frame for downgrade from multiframe to single frame.", buf, 2u);
  }

  v9 = 0;
LABEL_25:

  return v9;
}

- (unint64_t)_getImageWidth:(CGImageSource *)width
{
  if (!width || !CGImageSourceGetCount(width))
  {
    return 0;
  }

  v4 = CGImageSourceCopyPropertiesAtIndex(width, 0, 0);
  v7 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x277CD3450], v6);
  v11 = objc_msgSend_unsignedIntegerValue(v7, v8, v9, v10);

  return v11;
}

- (id)_getScaleFactorArray:(id)array transferURL:(id)l outputURLs:(id)ls
{
  v75 = *MEMORY[0x277D85DE8];
  inUTI = array;
  url = l;
  lsCopy = ls;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v70 = inUTI;
      v71 = 2112;
      v72 = url;
      v73 = 2112;
      v74 = lsCopy;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "_getScaleFactorArray uti %@ transferURL %@ outputURLs %@", buf, 0x20u);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((UTTypeConformsTo(inUTI, *MEMORY[0x277CC2120]) || UTTypeConformsTo(inUTI, *MEMORY[0x277CC2088]) || UTTypeConformsTo(inUTI, *MEMORY[0x277CC20C8])) && (v13 = objc_msgSend_count(lsCopy, v10, v11, v12), url) && v13)
  {
    cf = CGImageSourceCreateWithURL(url, 0);
    ImageWidth = objc_msgSend__getImageWidth_(self, v14, cf, v15);
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v70 = ImageWidth;
        _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "_getScaleFactor inImageWidth = %lu", buf, 0xCu);
      }
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = lsCopy;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v64, v68, 16);
    if (v19)
    {
      v20 = *v65;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v65 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = CGImageSourceCreateWithURL(*(*(&v64 + 1) + 8 * i), 0);
          v25 = objc_msgSend__getImageWidth_(self, v23, v22, v24);
          if (IMOSLoggingEnabled())
          {
            v26 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v70 = v25;
              _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "_getScaleFactor outImageWidth = %lu", buf, 0xCu);
            }
          }

          if (v25)
          {
            v27 = ImageWidth == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            v28 = 1.0;
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_36;
            }

            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              LODWORD(v33) = 1.0;
              v34 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v30, v31, v32, v33);
              *buf = 138412290;
              v70 = v34;
              _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "_getScaleFactorArray resorting to default scale factor for outPutURL %@", buf, 0xCu);
            }

            goto LABEL_35;
          }

          v35 = IMOSLoggingEnabled();
          v28 = ImageWidth / v25;
          if (v35)
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *&v43 = v28;
              v44 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v40, v41, v42, v43);
              *buf = 138412290;
              v70 = v44;
              _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "_getScaleFactorArray scale factor for outPutURL %@", buf, 0xCu);
            }

LABEL_35:
          }

LABEL_36:
          if (v22)
          {
            CFRelease(v22);
          }

          *&v39 = v28;
          v45 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v38, v39);
          objc_msgSend_addObject_(v9, v46, v45, v47);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v64, v68, 16);
      }

      while (v19);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v53 = MEMORY[0x277CCABB0];
      v54 = objc_msgSend_count(lsCopy, v50, v51, v52);
      v57 = objc_msgSend_numberWithUnsignedInteger_(v53, v55, v54, v56);
      *buf = 138412802;
      v70 = v57;
      v71 = 2112;
      v72 = inUTI;
      v73 = 2112;
      v74 = url;
      _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "Did not compute sticker scale. [outputURLs count] %@, uti %@, transferURL %@", buf, 0x20u);
    }
  }

  return v9;
}

- (void)transcodeFileTransfer:(id)transfer utiType:(id)type allowUnfilteredUTIs:(id)is target:(int64_t)target sizes:(id)sizes commonCapabilities:(id)capabilities maxDimension:(unint64_t)dimension transcoderUserInfo:(id)self0 representations:(int64_t)self1 isLQMEnabled:(BOOL)self2 completionBlock:(id)self3
{
  v292 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  typeCopy = type;
  isCopy = is;
  sizesCopy = sizes;
  capabilitiesCopy = capabilities;
  infoCopy = info;
  blockCopy = block;
  v22 = sizesCopy;
  if (objc_msgSend_count(v22, v23, v24, v25) < 2)
  {
    v40 = 0;
  }

  else
  {
    v28 = 1;
    do
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(v22, v26, v28, v27);
      v30 = v28 - 1;
      v33 = objc_msgSend_objectAtIndexedSubscript_(v22, v31, v30, v32);
      isEqualToValue = objc_msgSend_isEqualToValue_(v29, v34, v33, v35);

      if ((isEqualToValue & 1) == 0)
      {
        break;
      }

      v28 = v30 + 2;
    }

    while (v28 < objc_msgSend_count(v22, v37, v38, v39));
    v40 = isEqualToValue ^ 1u;
  }

  if (v40 != representations && IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 1024;
      *&buf[14] = representations;
      _os_log_impl(&dword_254811000, v42, OS_LOG_TYPE_INFO, "Warning - sizes %@ do not match the number of reps requested (%d)", buf, 0x12u);
    }
  }

  shouldPreserveHEIFEncoding_target_sourceUTI = objc_msgSend_shouldPreserveHEIFEncoding_target_sourceUTI_(IMTranscoder, v41, capabilitiesCopy, target, typeCopy);
  v46 = objc_msgSend_lastObject(v22, v43, v44, v45);
  v50 = objc_msgSend_longValue(v46, v47, v48, v49);
  shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities = objc_msgSend_shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities_(self, v51, transferCopy, infoCopy, target, typeCopy, isCopy, v50, capabilitiesCopy);

  v53 = shouldTranscodeTransfer_transcoderUserInfo_target_utiType_allowUnfilteredUTIs_fileSizeLimit_commonCapabilities == 2;
  isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(typeCopy, v54, @"________WBMP_________", v55);
  v277 = objc_msgSend_objectForKey_(infoCopy, v57, @"ImageQuality", v58);
  if (v277)
  {
    objc_msgSend_floatValue(v277, v59, v60, v61);
    objc_msgSend_setOverrideJPEGCompressionQuality_(self, v63, v64, v65, v62);
  }

  v275 = isEqualToIgnoringCase | v53;
  if (IMOSLoggingEnabled())
  {
    v68 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = @"NO";
      if (v275)
      {
        v69 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = transferCopy;
      *&buf[12] = 2112;
      *&buf[14] = v69;
      _os_log_impl(&dword_254811000, v68, OS_LOG_TYPE_INFO, "Transfer: %@   needsTranscode? %@", buf, 0x16u);
    }
  }

  if (target == 1)
  {
    v70 = objc_msgSend_objectForKey_(infoCopy, v66, *MEMORY[0x277D1A7D8], v67);
    v73 = objc_msgSend_objectForKey_(infoCopy, v71, *MEMORY[0x277D1A7E0], v72);
    v75 = (objc_msgSend_IMMMSMaximumMessageByteCountForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v74, v70, v73) * 0.92);
    if (IMOSLoggingEnabled())
    {
      v76 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v75;
        _os_log_impl(&dword_254811000, v76, OS_LOG_TYPE_INFO, "       Max byte size is: %d", buf, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v79 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&dword_254811000, v79, OS_LOG_TYPE_INFO, "         Supplied sizes: %@", buf, 0xCu);
      }
    }

    v80 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v77, v75, v78);
    v282[0] = MEMORY[0x277D85DD0];
    v282[1] = 3221225472;
    v282[2] = sub_254823284;
    v282[3] = &unk_27978AB90;
    v284 = v75;
    v81 = v80;
    v283 = v81;
    v84 = objc_msgSend___imArrayByApplyingBlock_(v22, v82, v282, v83);

    v86 = objc_msgSend_IMMMSMaxImageDimensionForPhoneNumber_simID_(MEMORY[0x277D1A8F8], v85, v70, v73);
    if (IMOSLoggingEnabled())
    {
      v87 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v87, OS_LOG_TYPE_INFO, " Always transcoding MMS, setting transcoding to YES", buf, 2u);
      }
    }

    dimensionCopy = v86;
    v275 = 1;
    v22 = v84;
  }

  else
  {
    dimensionCopy = dimension;
  }

  if (IMOSLoggingEnabled())
  {
    v88 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = dimensionCopy;
      _os_log_impl(&dword_254811000, v88, OS_LOG_TYPE_INFO, " Max image dimension is: %zd", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v89 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&dword_254811000, v89, OS_LOG_TYPE_INFO, "              Max sizes: %@", buf, 0xCu);
    }
  }

  v278 = objc_alloc_init(IMTranscoderTelemetry);
  if (v275)
  {
    objc_msgSend_emitTranscodeBeginFromUTI_(v278, v90, typeCopy, v91);
    if (IMOSLoggingEnabled())
    {
      v94 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, "This image needs to be transcoded!", buf, 2u);
      }
    }

    if (!objc_msgSend_isEqualToIgnoringCase_(typeCopy, v92, @"________WBMP_________", v93))
    {
      if (transferCopy)
      {
LABEL_108:
        if (IMOSLoggingEnabled())
        {
          v140 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = transferCopy;
            _os_log_impl(&dword_254811000, v140, OS_LOG_TYPE_INFO, "Creating CGImageSource from url: %@", buf, 0xCu);
          }
        }

        if (typeCopy)
        {
          v287 = *MEMORY[0x277CD3668];
          v288 = typeCopy;
          v141 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v139, &v288, &v287, 1);
        }

        else
        {
          v141 = 0;
        }

        v130 = CGImageSourceCreateWithURL(transferCopy, v141);
        if (IMOSLoggingEnabled())
        {
          v145 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
          {
            v146 = @"good";
            if (!v130)
            {
              v146 = @"NULL";
            }

            *buf = 138412290;
            *&buf[4] = v146;
            _os_log_impl(&dword_254811000, v145, OS_LOG_TYPE_INFO, "Source ref is %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v147 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v147, OS_LOG_TYPE_INFO, "Source image properties unavailable (sourceRef is NULL)", buf, 2u);
          }
        }

        v144 = 0;
        goto LABEL_131;
      }

      v130 = 0;
LABEL_114:
      if (IMOSLoggingEnabled())
      {
        v143 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v143, OS_LOG_TYPE_INFO, "transferURL is nil, no image to transcode...", buf, 2u);
        }
      }

      v144 = 1;
LABEL_131:
      v268 = v130 == 0;
      if (!v130 && !IMIsRunningInUnitTesting())
      {
        if (IMOSLoggingEnabled())
        {
          v182 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_254811000, v182, OS_LOG_TYPE_INFO, "The imageSource was NULL when trying to load original attachment file", buf, 2u);
          }
        }

        v128 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v181, @"__kIMTranscodeErrorDomain", -2, 0);
        v129 = 0;
        v126 = 0;
        goto LABEL_284;
      }

      loga = objc_msgSend_newEstimatorWithURL_uti_imageSource_(IMTranscoderImageSizeEstimator, v142, transferCopy, typeCopy, v130);
      if (target == 1)
      {
        if (v144)
        {
          v148 = 0;
          v267 = 0;
          goto LABEL_138;
        }

LABEL_137:
        v151 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v136, v137, v138);
        v155 = objc_msgSend_path(transferCopy, v152, v153, v154);
        v281 = 0;
        v157 = objc_msgSend_attributesOfItemAtPath_error_(v151, v156, v155, &v281);
        v267 = v281;
        v148 = objc_msgSend_fileSize(v157, v158, v159, v160);

LABEL_138:
        if (IMOSLoggingEnabled())
        {
          v164 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            *&buf[4] = transferCopy;
            *&buf[12] = 2112;
            *&buf[14] = v267;
            *&buf[22] = 2048;
            v291 = v148;
            _os_log_impl(&dword_254811000, v164, OS_LOG_TYPE_INFO, " File size of file %@ with error %@   (%llu bytes)", buf, 0x20u);
          }
        }

        v165 = objc_msgSend_firstObject(v22, v161, v162, v163);
        v169 = v148 < objc_msgSend_longValue(v165, v166, v167, v168);

        if (v169)
        {
          if (UTTypeConformsTo(typeCopy, *MEMORY[0x277CC20C8]))
          {
            v170 = CGImageSourceCopyPropertiesAtIndex(v130, 0, 0);
            if (IMOSLoggingEnabled())
            {
              v173 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v170;
                _os_log_impl(&dword_254811000, v173, OS_LOG_TYPE_INFO, "  This is a JPEG, checking properties: %@", buf, 0xCu);
              }
            }

            v174 = objc_msgSend_objectForKey_(v170, v171, *MEMORY[0x277CD3410], v172);
            v178 = objc_msgSend_intValue(v174, v175, v176, v177);
            if (IMOSLoggingEnabled())
            {
              v179 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = v178;
                *&buf[8] = 2112;
                *&buf[10] = v174;
                _os_log_impl(&dword_254811000, v179, OS_LOG_TYPE_INFO, "  Image orientation is: %d  (%@)", buf, 0x12u);
              }
            }

            v150 = v178 != 0;
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v185 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v185, OS_LOG_TYPE_INFO, "  Image still might requiree transcoding", buf, 2u);
              }
            }

            v150 = 1;
          }

          if (IMOSLoggingEnabled())
          {
            v186 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
            {
              v187 = @"NO";
              if (v150)
              {
                v187 = @"YES";
              }

              *buf = 138412290;
              *&buf[4] = v187;
              _os_log_impl(&dword_254811000, v186, OS_LOG_TYPE_INFO, " File still requires transcoding: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v180 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_254811000, v180, OS_LOG_TYPE_INFO, " File is too large, we'll need to transcode it", buf, 2u);
            }
          }

          v150 = 1;
        }

        if (IMMMSRestrictedModeEnabled())
        {
          v149 = UTTypeConformsTo(typeCopy, *MEMORY[0x277CC2088]) != 0;
          if (!v150)
          {
            goto LABEL_187;
          }
        }

        else
        {
          v149 = 0;
          if (!v150)
          {
            goto LABEL_187;
          }
        }

LABEL_178:
        if (!v149)
        {
          if (objc_msgSend_BOOLFromTranscoderUserInfo_withKey_(self, v136, infoCopy, *MEMORY[0x277D19E80]))
          {
            if (IMOSLoggingEnabled())
            {
              v189 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = typeCopy;
                _os_log_impl(&dword_254811000, v189, OS_LOG_TYPE_INFO, "Transcoding Genmoji to single frame PNG, original uti: %@", buf, 0xCu);
              }
            }

            v126 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v188, v130, target, transferCopy, v22, dimensionCopy, typeCopy, *MEMORY[0x277CC2120], 1, loga, enabled, v278);
            if (objc_msgSend_count(v126, v190, v191, v192))
            {
              if (v126)
              {
                goto LABEL_262;
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v203 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v203, OS_LOG_TYPE_INFO, "Couldn't fit genmoji image into any size of PNG", buf, 2u);
                }
              }
            }
          }

          if (target == 1 && (IMMMSRestrictedModeEnabled() & 1) != 0)
          {
            goto LABEL_254;
          }

          Count = CGImageSourceGetCount(v130);
          v208 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v205, v206, v207);
          isHighQualityPhotosEnabled = objc_msgSend_isHighQualityPhotosEnabled(v208, v209, v210, v211);

          if ((Count > 1) | isHighQualityPhotosEnabled & 1)
          {
            v213 = UTTypeConformsTo(typeCopy, *MEMORY[0x277D1AD80]) == 0;
          }

          else
          {
            v213 = 0;
          }

          if (shouldPreserveHEIFEncoding_target_sourceUTI && !v213)
          {
            if (IMOSLoggingEnabled())
            {
              v214 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = typeCopy;
                _os_log_impl(&dword_254811000, v214, OS_LOG_TYPE_INFO, "Transcoding to HEIF, original uti: %@", buf, 0xCu);
              }
            }

            v215 = MEMORY[0x277D1AD78];
            if (Count <= 1)
            {
              v215 = MEMORY[0x277D1AD70];
            }

            v216 = *v215;
            LOBYTE(v266) = enabled;
            LOBYTE(v265) = 0;
            v126 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v217, v130, target, transferCopy, v22, dimensionCopy, typeCopy, v216, v265, loga, v266, v278);
            if (!objc_msgSend_count(v126, v218, v219, v220))
            {
              if (IMOSLoggingEnabled())
              {
                v221 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_254811000, v221, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of HEIF", buf, 2u);
                }
              }

              v126 = 0;
            }

            goto LABEL_247;
          }

          v222 = *MEMORY[0x277CC2120];
          if (UTTypeConformsTo(typeCopy, *MEMORY[0x277CC2120]))
          {
            if (enabled)
            {
              if (CGImageSourceGetCount(v130) == 1)
              {
                ImageAtIndex = CGImageSourceCreateImageAtIndex(v130, 0, 0);
                v225 = objc_opt_class();
                if (objc_msgSend__canConvertPNGToJPEG_(v225, v226, ImageAtIndex, v227))
                {
                  v228 = IMOSLoggingEnabled();
                  v222 = *MEMORY[0x277CC20C8];
                  if (v228)
                  {
                    v229 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_254811000, v229, OS_LOG_TYPE_INFO, "We've got an opaque PNG, try to reencode as a JPEG", buf, 2u);
                    }
                  }
                }

                if (ImageAtIndex)
                {
                  CFRelease(ImageAtIndex);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v237 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v237, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v237, OS_LOG_TYPE_INFO, "We've got a PNG, we'll try to preserve it since LQM is not enabled.", buf, 2u);
              }
            }

            LOBYTE(v266) = enabled;
            LOBYTE(v265) = 0;
            v126 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v223, v130, target, transferCopy, v22, dimensionCopy, typeCopy, v222, v265, loga, v266, v278);
            if (objc_msgSend_count(v126, v238, v239, v240))
            {
              goto LABEL_247;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_253;
            }

            v236 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v236, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_254811000, v236, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of PNG", buf, 2u);
            }

            goto LABEL_252;
          }

          v230 = *MEMORY[0x277CC2088];
          if (UTTypeConformsTo(typeCopy, *MEMORY[0x277CC2088]))
          {
            if (IMOSLoggingEnabled())
            {
              v232 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v232, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v232, OS_LOG_TYPE_INFO, "We've got a GIF, try to reencode as a GIF", buf, 2u);
              }
            }

            LOBYTE(v266) = enabled;
            LOBYTE(v265) = 0;
            v126 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v231, v130, target, transferCopy, v22, dimensionCopy, typeCopy, v230, v265, loga, v266, v278);
            if (!objc_msgSend_count(v126, v233, v234, v235))
            {
              if (!IMOSLoggingEnabled())
              {
LABEL_253:

LABEL_254:
                v241 = UTTypeConformsTo(typeCopy, *MEMORY[0x277D1AD80]);
                v242 = *MEMORY[0x277CC20C8];
                if (v241 && IMIsScreenshotURL())
                {
                  v242 = *MEMORY[0x277CC2120];
                }

                if (IMOSLoggingEnabled())
                {
                  v244 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v244, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *&buf[4] = v242;
                    _os_log_impl(&dword_254811000, v244, OS_LOG_TYPE_INFO, "Default/fallback transcode for image as type %@", buf, 0xCu);
                  }
                }

                LOBYTE(v266) = enabled;
                LOBYTE(v265) = 0;
                v126 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v243, v130, target, transferCopy, v22, dimensionCopy, typeCopy, v242, v265, loga, v266, v278);
                if (!v126)
                {
LABEL_263:
                  if (IMOSLoggingEnabled())
                  {
                    v248 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v248, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_254811000, v248, OS_LOG_TYPE_INFO, "Image failed to transcode; falling back to original", buf, 2u);
                    }
                  }

                  v202 = _IMTranscoderLinkFile(transferCopy, v245, v246, v247);
                  v249 = IMSingleObjectArray();

                  v126 = v249;
                  goto LABEL_268;
                }

LABEL_262:
                if (objc_msgSend_count(v126, v193, v194, v195))
                {
LABEL_269:
                  if (IMOSLoggingEnabled())
                  {
                    v253 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v253, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      *&buf[4] = v126;
                      _os_log_impl(&dword_254811000, v253, OS_LOG_TYPE_INFO, "We've reached the end of the image transcode attempt. outputURL = %@", buf, 0xCu);
                    }
                  }

                  if (v126 && objc_msgSend_count(v126, v250, v251, v252))
                  {
                    v128 = 0;
                    v129 = 1;
                  }

                  else
                  {
                    v128 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v250, @"__kIMTranscodeErrorDomain", -7, 0);
                    if (IMOSLoggingEnabled())
                    {
                      v254 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v254, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        *&buf[4] = v128;
                        _os_log_impl(&dword_254811000, v254, OS_LOG_TYPE_INFO, "Failed to re-encode: %@", buf, 0xCu);
                      }
                    }

                    v129 = 0;
                  }

                  if (!v268)
                  {
                    CFRelease(v130);
                  }

LABEL_284:
                  objc_msgSend_emitTranscodeEndFromUTI_(v278, v183, typeCopy, v184);
                  goto LABEL_285;
                }

                goto LABEL_263;
              }

              v236 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v236, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v236, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of GIF", buf, 2u);
              }

LABEL_252:

              goto LABEL_253;
            }
          }

          else
          {
            if (!UTTypeConformsTo(typeCopy, *MEMORY[0x277D1AD88]))
            {
              goto LABEL_254;
            }

            v259 = *MEMORY[0x277CC20C8];
            if (Count > 1)
            {
              v259 = v230;
            }

            v270 = v259;
            if (IMOSLoggingEnabled())
            {
              v261 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *&buf[4] = v270;
                *&buf[12] = 2048;
                *&buf[14] = Count;
                _os_log_impl(&dword_254811000, v261, OS_LOG_TYPE_INFO, "We've got a WebP, try to reencode as a %@ (frame count %zu)", buf, 0x16u);
              }
            }

            LOBYTE(v266) = enabled;
            LOBYTE(v265) = 0;
            v126 = objc_msgSend__writeRepresentationsForImage_target_sourceURL_sizes_maxDimension_srcUTI_inFormat_downgradingMultiFrameImageToSingleFrame_estimator_isLQMEnabled_telemetry_(self, v260, v130, target, transferCopy, v22, dimensionCopy, typeCopy, v270, v265, loga, v266, v278);
            if (!objc_msgSend_count(v126, v262, v263, v264))
            {
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_253;
              }

              v236 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v236, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v270;
                _os_log_impl(&dword_254811000, v236, OS_LOG_TYPE_INFO, "Couldn't fit this image into any size of %@", buf, 0xCu);
              }

              goto LABEL_252;
            }
          }

LABEL_247:
          if (v126)
          {
            goto LABEL_262;
          }

          goto LABEL_254;
        }

LABEL_187:
        if (IMOSLoggingEnabled())
        {
          v199 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
          {
            v200 = @"NO";
            if (v149)
            {
              v201 = @"YES";
            }

            else
            {
              v201 = @"NO";
            }

            if (v150)
            {
              v200 = @"YES";
            }

            *buf = 138412546;
            *&buf[4] = v201;
            *&buf[12] = 2112;
            *&buf[14] = v200;
            _os_log_impl(&dword_254811000, v199, OS_LOG_TYPE_INFO, "Didn't require transcode, defaulting to the original image MMSGIFCarrierTesting %@, needsTrancode %@", buf, 0x16u);
          }
        }

        v202 = _IMTranscoderLinkFile(transferCopy, v196, v197, v198);
        v126 = IMSingleObjectArray();
LABEL_268:

        goto LABEL_269;
      }

LABEL_136:
      v149 = 0;
      v150 = 1;
      goto LABEL_178;
    }

    if (IMOSLoggingEnabled())
    {
      v95 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "This is a WBMP, converting to JPEG first", buf, 2u);
      }
    }

    v96 = objc_alloc(MEMORY[0x277CBEA90]);
    v99 = objc_msgSend_initWithContentsOfURL_(v96, v97, transferCopy, v98);
    if (!objc_msgSend_length(v99, v100, v101, v102) && IMOSLoggingEnabled())
    {
      v103 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = transferCopy;
        _os_log_impl(&dword_254811000, v103, OS_LOG_TYPE_INFO, "Failing, Empty data created from URL: %@", buf, 0xCu);
      }
    }

    if (v99 && (v104 = CGImageCreateWithWBMPData()) != 0)
    {
      values[3] = 0;
      valuePtr = 0x3FF0000000000000;
      v105 = *MEMORY[0x277CD2D48];
      v291 = 0;
      *buf = v105;
      values[0] = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      *&buf[8] = *MEMORY[0x277CD2D40];
      Width = CGImageGetWidth(v104);
      Height = CGImageGetHeight(v104);
      if (Width <= Height)
      {
        objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v108, Height, v109);
      }

      else
      {
        objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v108, Width, v109);
      }
      v110 = ;
      values[1] = CFRetain(v110);

      *&buf[16] = *MEMORY[0x277CD2D60];
      values[2] = CFRetain(MEMORY[0x277CBEC38]);
      v111 = CFDictionaryCreate(0, buf, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v112 = 2;
      do
      {
        CFRelease(values[v112]);
        v113 = v112-- + 1;
      }

      while (v113 > 1);
      v114 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v115 = v114;
      if (v114)
      {
        v116 = CGImageDestinationCreateWithData(v114, @"public.jpeg", 1uLL, 0);
        v117 = v116;
        if (v116)
        {
          CGImageDestinationAddImage(v116, v104, v111);
          if (CGImageDestinationFinalize(v117))
          {
            CFRelease(v117);
            CFRelease(v111);
            v118 = v115;

            if (IMOSLoggingEnabled())
            {
              v119 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_254811000, v119, OS_LOG_TYPE_INFO, "Created source from JPEG converted data", buf, 2u);
              }
            }

            v120 = CGImageSourceCreateWithData(v118, 0);
            CFRelease(v104);
            goto LABEL_103;
          }

          if (IMOSLoggingEnabled())
          {
            log = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *v285 = 0;
              _os_log_impl(&dword_254811000, log, OS_LOG_TYPE_INFO, "Failed finalizing image destination from WBMP", v285, 2u);
            }
          }

          CFRelease(v117);
        }

        else if (IMOSLoggingEnabled())
        {
          v133 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            *v285 = 0;
            _os_log_impl(&dword_254811000, v133, OS_LOG_TYPE_INFO, "Failed creating image destination with data", v285, 2u);
          }
        }
      }

      CFRelease(v111);

      if (!IMOSLoggingEnabled())
      {
        v120 = 0;
        v118 = v104;
        goto LABEL_103;
      }

      v132 = 0;
      v118 = v104;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v131 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v131, OS_LOG_TYPE_INFO, "Failing to create jpeg from WBMP, no image ref passed in", buf, 2u);
        }
      }

      v118 = 0;
      if ((IMOSLoggingEnabled() & 1) == 0)
      {
        v120 = 0;
        goto LABEL_104;
      }

      v132 = 1;
    }

    v134 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v134, OS_LOG_TYPE_INFO, "Failed converting WBMP to JPEG", buf, 2u);
    }

    v120 = 0;
    if (v132)
    {
LABEL_104:

      v130 = v120;
      if (transferCopy)
      {
        if (v120)
        {
          loga = objc_msgSend_newEstimatorWithURL_uti_imageSource_(IMTranscoderImageSizeEstimator, v135, transferCopy, typeCopy, v120);
          v268 = 0;
          if (target == 1)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        goto LABEL_108;
      }

      goto LABEL_114;
    }

LABEL_103:
    CFRelease(v118);
    goto LABEL_104;
  }

  objc_msgSend_emitSignpostTranscodeSkipSourceUTI_(v278, v90, typeCopy, v91);
  if (IMOSLoggingEnabled())
  {
    v124 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254811000, v124, OS_LOG_TYPE_INFO, "Image ended up not needing a transcode operation", buf, 2u);
    }
  }

  v125 = _IMTranscoderLinkFile(transferCopy, v121, v122, v123);
  v126 = IMSingleObjectArray();

  v128 = 0;
  v129 = 1;
LABEL_285:
  v255 = objc_msgSend__getScaleFactorArray_transferURL_outputURLs_(self, v127, typeCopy, transferCopy, v126);
  if (IMOSLoggingEnabled())
  {
    v256 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v256, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v255;
      _os_log_impl(&dword_254811000, v256, OS_LOG_TYPE_INFO, "scaleFactorArray = %@", buf, 0xCu);
    }
  }

  v257 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v258 = v255;
  if (v258)
  {
    CFDictionarySetValue(v257, *MEMORY[0x277D1A7D0], v258);
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, transferCopy, v126, 0, v128, v129, v275 & 1, v257);
  }
}

- (id)_imMetricsCollectorForLQMQualityEstimatorModel:(__CFString *)model suggestedMaxLength:(unint64_t)length shouldUseQualityEstimatorModel:(BOOL)estimatorModel inputImageFeatures:(id)features
{
  estimatorModelCopy = estimatorModel;
  featuresCopy = features;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (UTTypeConformsTo(model, @"public.heic"))
  {
    objc_msgSend__imMetricsCollectorForLQMQualityEstimatorModeImageTypeHEIC_shouldUseQualityEstimatorModel_inputImageFeatures_metricsDict_(self, v12, length, estimatorModelCopy, featuresCopy, v11);
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, 1, v14);
  }

  else if (UTTypeConformsTo(model, @"public.png"))
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v15, 2, v16);
  }

  else if (UTTypeConformsTo(model, @"public.jpeg"))
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v17, 3, v18);
  }

  else if (UTTypeConformsTo(model, *MEMORY[0x277CC2088]))
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v19, 4, v20);
  }

  else if (UTTypeConformsTo(model, *MEMORY[0x277CC2158]))
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v21, 6, v22);
  }

  else if (UTTypeConformsTo(model, *MEMORY[0x277D1AD88]))
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, 5, v24);
  }

  else
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, 7, v24);
  }
  v25 = ;
  objc_msgSend_setObject_forKey_(v11, v26, v25, *MEMORY[0x277D1A158]);

  return v11;
}

- (void)_imMetricsCollectorForLQMQualityEstimatorModeImageTypeHEIC:(unint64_t)c shouldUseQualityEstimatorModel:(BOOL)model inputImageFeatures:(id)features metricsDict:(id)dict
{
  modelCopy = model;
  v58 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  dictCopy = dict;
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, c, v12);
  v16 = objc_msgSend_containsObject_(&unk_28669CC60, v14, v13, v15);

  if (v16)
  {
    v17 = !modelCopy;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v56 = 134217984;
        cCopy3 = c;
        _os_log_impl(&dword_254811000, v52, OS_LOG_TYPE_INFO, "Quality estimator model used, suggestedMaxLength: %zu", &v56, 0xCu);
      }
    }

    v53 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v50, 3, v51);
LABEL_25:
    v47 = v53;
    objc_msgSend_setObject_forKey_(dictCopy, v54, v53, *MEMORY[0x277D1A160]);
    goto LABEL_26;
  }

  v18 = IMOSLoggingEnabled();
  if (!featuresCopy || ((v16 | !modelCopy) & 1) == 0)
  {
    if (v18)
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = 134217984;
        cCopy3 = c;
        _os_log_impl(&dword_254811000, v55, OS_LOG_TYPE_INFO, "Legacy model used without fallback, suggestedMaxLength: %zu", &v56, 0xCu);
      }
    }

    v53 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v19, 1, v20);
    goto LABEL_25;
  }

  if (v18)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v56 = 134217984;
      cCopy3 = c;
      _os_log_impl(&dword_254811000, v21, OS_LOG_TYPE_INFO, "Legacy model used with fallback, suggestedMaxLength: %zu", &v56, 0xCu);
    }
  }

  v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v19, 2, v20);
  objc_msgSend_setObject_forKey_(dictCopy, v23, v22, *MEMORY[0x277D1A160]);

  v24 = MEMORY[0x277CCABB0];
  v27 = objc_msgSend_objectForKey_(featuresCopy, v25, @"Input File Size", v26);
  v31 = objc_msgSend_intValue(v27, v28, v29, v30);
  v34 = v31 + 0xFFFFF;
  if (v31 >= 0)
  {
    v34 = v31;
  }

  v35 = objc_msgSend_numberWithInteger_(v24, v32, v34 >> 20, v33);
  objc_msgSend_setObject_forKey_(dictCopy, v36, v35, *MEMORY[0x277D1A148]);

  v39 = objc_msgSend_objectForKey_(featuresCopy, v37, @"Input Entropy", v38);
  objc_msgSend_setObject_forKey_(dictCopy, v40, v39, *MEMORY[0x277D1A140]);

  v43 = objc_msgSend_objectForKey_(featuresCopy, v41, @"Input Height", v42);
  objc_msgSend_setObject_forKey_(dictCopy, v44, v43, *MEMORY[0x277D1A138]);

  v47 = objc_msgSend_objectForKey_(featuresCopy, v45, @"Aspect Ratio", v46);
  objc_msgSend_setObject_forKey_(dictCopy, v48, v47, *MEMORY[0x277D1A130]);
LABEL_26:
}

+ (BOOL)_canConvertPNGToJPEG:(CGImage *)g
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__imageContainsTranslucentPixels_(self, a2, g, v3);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"YES";
      if (v4)
      {
        v6 = @"NO";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "PNG can be converted to JPG: %@", &v8, 0xCu);
    }
  }

  return v4 ^ 1;
}

+ (BOOL)_imageContainsTranslucentPixels:(CGImage *)pixels
{
  v40 = *MEMORY[0x277D85DE8];
  AlphaInfo = CGImageGetAlphaInfo(pixels);
  if (AlphaInfo > kCGImageAlphaOnly)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Image alpha channel unknown, translucency check may fail", &v36, 2u);
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (((1 << AlphaInfo) & 0x61) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_254811000, v6, OS_LOG_TYPE_INFO, "Image has no alpha channel, assuming opaque", &v36, 2u);
        }
      }

      LOBYTE(v7) = 0;
      return v7;
    }

    if (((1 << AlphaInfo) & 0x98) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Image has alpha channel, checking for translucent pixels", &v36, 2u);
        }

LABEL_20:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Image has premultiplied alpha channel, checking for translucent pixels", &v36, 2u);
      }

      goto LABEL_20;
    }
  }

  BitsPerComponent = CGImageGetBitsPerComponent(pixels);
  if (BitsPerComponent >= 9)
  {
    v9 = 16;
  }

  else
  {
    v9 = 8;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v36 = 134218240;
      v37 = BitsPerComponent;
      v38 = 2048;
      v39 = v9;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, " ==> Image has %ld bits per component, using %ld bpc for test", &v36, 0x16u);
    }
  }

  Width = CGImageGetWidth(pixels);
  Height = CGImageGetHeight(pixels);
  v13 = Height;
  if (BitsPerComponent < 9)
  {
    v14 = 1;
  }

  else
  {
    v14 = 8;
  }

  if (BitsPerComponent >= 9)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  if (!is_mul_ok(Width, Height) || (v16 = Width * Height, !is_mul_ok(Width * Height, v14)))
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_40:
      LOBYTE(v7) = 1;
      return v7;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v36 = 134218240;
      v37 = Width;
      v38 = 2048;
      v39 = v13;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "_imageContainsTranslucentPixels overflowed with %ld width and %ld height", &v36, 0x16u);
    }

LABEL_39:

    goto LABEL_40;
  }

  v19 = v16 * v14;
  v20 = IMOSLoggingEnabled();
  if (v16 * v14 > 0x2FAF080)
  {
    if (!v20)
    {
      goto LABEL_40;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v36 = 134217984;
      v37 = v19 / 0xF4240;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Translucency buffer size (%ld MB) exceeds maximum, cannot test pixels, assuming YES", &v36, 0xCu);
    }

    goto LABEL_39;
  }

  if (v20)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v36 = 134218240;
      v37 = v19 / 0xF4240uLL;
      v38 = 2048;
      v39 = v19 / 0x3E8uLL;
      _os_log_impl(&dword_254811000, v21, OS_LOG_TYPE_INFO, " ==> Attempting to allocate opacity test buffer of size %ld MB (%ld KB)", &v36, 0x16u);
    }
  }

  v22 = malloc_type_calloc(Width * v13, v14, 0xBE8FF4E6uLL);
  if (!v22)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_40;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "Failed to allocate buffer for image translucency test", &v36, 2u);
    }

    goto LABEL_39;
  }

  if (BitsPerComponent >= 9)
  {
    v23 = 1;
  }

  else
  {
    v23 = 7;
  }

  if (BitsPerComponent >= 9)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    DeviceRGB = 0;
  }

  v25 = CGBitmapContextCreate(v22, Width, v13, v9, Width << v15, DeviceRGB, v23);
  v26 = v25;
  if (!v25)
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "Failed to create bitmap context while checking translucency of image, returning YES", &v36, 2u);
      }
    }

    if (DeviceRGB)
    {
      CFRelease(DeviceRGB);
    }

    goto LABEL_40;
  }

  v41.size.width = Width;
  v41.size.height = v13;
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  CGContextDrawImage(v25, v41, pixels);
  if (!v13)
  {
LABEL_73:
    v7 = 0;
    goto LABEL_81;
  }

  v27 = 0;
  v28 = v22 + 3;
  v29 = v22;
  while (!Width)
  {
LABEL_72:
    ++v27;
    v28 += 4 * Width;
    v29 += Width;
    if (v27 == v13)
    {
      goto LABEL_73;
    }
  }

  v30 = v29;
  v31 = v28;
  v32 = Width;
  while (BitsPerComponent <= 8)
  {
    if (*v30 != 255)
    {
      goto LABEL_80;
    }

LABEL_71:
    v31 += 4;
    ++v30;
    if (!--v32)
    {
      goto LABEL_72;
    }
  }

  if (*v31 == -1)
  {
    goto LABEL_71;
  }

LABEL_80:
  v7 = 1;
LABEL_81:
  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = @"NO";
      if (v7)
      {
        v35 = @"YES";
      }

      v36 = 138412290;
      v37 = v35;
      _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "Found translucent pixel(s) in image: %@", &v36, 0xCu);
    }
  }

  CFRelease(v26);
  if (DeviceRGB)
  {
    CFRelease(DeviceRGB);
  }

  free(v22);
  return v7;
}

@end