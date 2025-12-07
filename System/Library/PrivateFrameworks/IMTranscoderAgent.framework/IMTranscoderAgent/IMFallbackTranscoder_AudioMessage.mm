@interface IMFallbackTranscoder_AudioMessage
- (id)_tmpOutputFileURL;
- (void)_failWithOSStatusErrorCode:(int)code description:(id)description completion:(id)completion;
- (void)transcodeOpusFile:(id)file completionBlock:(id)block;
@end

@implementation IMFallbackTranscoder_AudioMessage

- (void)transcodeOpusFile:(id)file completionBlock:(id)block
{
  v66 = *MEMORY[0x277D85DE8];
  if (file)
  {
    outExtAudioFile = 0;
    v7 = ExtAudioFileOpenURL(file, &outExtAudioFile);
    v11 = v7;
    if (outExtAudioFile)
    {
      v12 = v7 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v16 = objc_msgSend__tmpOutputFileURL(self, v8, v9, v10);
      v59 = 0;
      v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v17, v18, v19);
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v16, v21, v22, v23);
      objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v20, v25, PathComponent, 1, 0, &v59);
      if (v59)
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v63 = v16;
            v64 = 2112;
            v65 = v59;
            _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "IMFallbackTranscoder_AudioMessage: error creating directory for path %@ with error %@", buf, 0x16u);
          }
        }

        (*(block + 2))(block, 0, 0, v59, 0, 1);
      }

      else
      {
        v58 = 0;
        memset(&inStreamDesc.mFormatID, 0, 32);
        inStreamDesc.mSampleRate = 8000.0;
        inStreamDesc.mFormatID = 1935764850;
        inStreamDesc.mChannelsPerFrame = 1;
        v27 = ExtAudioFileCreateWithURL(v16, 0x616D7266u, &inStreamDesc, 0, 1u, &v58);
        if (!v58 || v27)
        {
          ExtAudioFileDispose(outExtAudioFile);
          if (v58)
          {
            ExtAudioFileDispose(v58);
          }

          v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"Creating new file at path: %@", v31, v16);
          objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v33, v27, v32, block);
        }

        else
        {
          inPropertyData = xmmword_254832F70;
          v55 = unk_254832F80;
          v56 = 32;
          v28 = ExtAudioFileSetProperty(v58, 0x63666D74u, 0x28u, &inPropertyData);
          if (v28)
          {
            ExtAudioFileDispose(outExtAudioFile);
            ExtAudioFileDispose(v58);
            objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v29, v28, @"ExtAudioFileSetProperty / kExtAudioFileProperty_ClientDataFormat for AMR", block);
          }

          else
          {
            v34 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, &inPropertyData);
            if (v34)
            {
              ExtAudioFileDispose(outExtAudioFile);
              ExtAudioFileDispose(v58);
              objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v35, v34, @"ExtAudioFileSetProperty / kExtAudioFileProperty_ClientDataFormat for Opus", block);
            }

            else
            {
              outPropertyData = 0;
              v52 = 6700;
              ioPropertyDataSize = 8;
              Property = ExtAudioFileGetProperty(v58, 0x61636E76u, &ioPropertyDataSize, &outPropertyData);
              if (Property)
              {
                ExtAudioFileDispose(outExtAudioFile);
                ExtAudioFileDispose(v58);
                objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v37, Property, @"ExtAudioFileGetProperty / kExtAudioFileProperty_AudioConverter for AMR", block);
              }

              else
              {
                v38 = AudioConverterSetProperty(outPropertyData, 0x62726174u, 4u, &v52);
                if (v38)
                {
                  ExtAudioFileDispose(outExtAudioFile);
                  ExtAudioFileDispose(v58);
                  objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v39, v38, @"AudioConverterSetProperty / kAudioConverterEncodeBitRate for outConverter", block);
                }

                else
                {
                  v50 = 0;
                  v40 = ExtAudioFileSetProperty(v58, 0x61636366u, 8u, &v50);
                  if (v40)
                  {
                    ExtAudioFileDispose(outExtAudioFile);
                    ExtAudioFileDispose(v58);
                    objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v41, v40, @"ExtAudioFileSetProperty / kExtAudioFileProperty_ConverterConfig for AMR", block);
                  }

                  else
                  {
                    bzero(buf, 0x8000uLL);
                    while (1)
                    {
                      *(&ioData.mNumberBuffers + 1) = 0;
                      *&ioData.mBuffers[0].mNumberChannels = 0x800000000001;
                      ioData.mBuffers[0].mData = buf;
                      ioNumberFrames = 0x8000u / DWORD2(v55);
                      ioData.mNumberBuffers = 1;
                      v42 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
                      if (v42)
                      {
                        ExtAudioFileDispose(outExtAudioFile);
                        ExtAudioFileDispose(v58);
                        objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v45, v42, @"ExtAudioFileRead", block);
                        return;
                      }

                      if (!ioNumberFrames)
                      {
                        break;
                      }

                      v43 = ExtAudioFileWrite(v58, ioNumberFrames, &ioData);
                      if (v43)
                      {
                        ExtAudioFileDispose(outExtAudioFile);
                        ExtAudioFileDispose(v58);
                        objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v44, v43, @"ExtAudioFileWrite", block);
                        return;
                      }
                    }

                    ExtAudioFileDispose(outExtAudioFile);
                    ExtAudioFileDispose(v58);
                    v61 = v16;
                    v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, &v61, 1);
                    (*(block + 2))(block, v47, 0, 0, 1, 1);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"Opening Opus file at path %@", v10, file);
      objc_msgSend__failWithOSStatusErrorCode_description_completion_(self, v14, v11, v13, block);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v15, OS_LOG_TYPE_INFO, "IMFallbackTranscoder_AudioMessage: nil filePath", buf, 2u);
      }
    }

    (*(block + 2))(block, 0, 0, 0, 0, 1);
  }
}

- (id)_tmpOutputFileURL
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = IMSafeTemporaryDirectory();
  v6 = objc_msgSend_path(v2, v3, v4, v5);
  v17[1] = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v7, v8, v9, v6);
  v17[2] = @"Audio Message.amr";
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v17, 3);
  v14 = objc_msgSend_pathWithComponents_(MEMORY[0x277CCACA8], v12, v11, v13);
  return objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v15, v14, 0);
}

- (void)_failWithOSStatusErrorCode:(int)code description:(id)description completion:(id)completion
{
  descriptionCopy = description;
  v15 = *MEMORY[0x277D85DE8];
  if (!description)
  {
    IMLogBacktrace();
    descriptionCopy = @"NO DESCRIPTION!";
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = descriptionCopy;
      v13 = 1024;
      codeCopy = code;
      _os_log_impl(&dword_254811000, v9, OS_LOG_TYPE_INFO, "IMFallbackTranscoder_AudioMessage: %@ failed with error code %d", &v11, 0x12u);
    }
  }

  if (completion)
  {
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, *MEMORY[0x277CCA590], code, 0);
    (*(completion + 2))(completion, 0, 0, v10, 0, 1);
  }
}

@end