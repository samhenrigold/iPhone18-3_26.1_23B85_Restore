@interface IMTranscriptionUtilities
+ (id)localizedSeparatorString;
+ (id)transcoderBundle;
+ (void)commitTranscriptionWithString:(id)string confidenceSum:(double)sum numberOfSegments:(unint64_t)segments completion:(id)completion;
+ (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion;
@end

@implementation IMTranscriptionUtilities

+ (void)transcribeAudioForAudioTransferURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (lCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277CDCF00]);
    if (objc_msgSend_supportsOnDeviceRecognition(v7, v8, v9, v10))
    {
      objc_msgSend_setDefaultTaskHint_(v7, v11, 1, v12);
      if (objc_msgSend_isAvailable(v7, v13, v14, v15))
      {
        v16 = objc_alloc(MEMORY[0x277CDCF08]);
        v19 = objc_msgSend_initWithURL_(v16, v17, lCopy, v18);
        objc_msgSend_setRequiresOnDeviceRecognition_(v19, v20, 1, v21);
        objc_msgSend_setAddsPunctuation_(v19, v22, 1, v23);
        objc_msgSend_setShouldReportPartialResults_(v19, v24, 0, v25);
        *buf = 0;
        v45 = buf;
        v46 = 0x3032000000;
        v47 = sub_254826284;
        v48 = sub_254826294;
        v49 = &stru_28669B2D8;
        v43[0] = 0;
        v43[1] = v43;
        v43[2] = 0x2020000000;
        v43[3] = 0;
        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x2020000000;
        v42[3] = 0;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_25482629C;
        v37[3] = &unk_27978ABE0;
        v38 = completionCopy;
        v39 = buf;
        v40 = v43;
        v41 = v42;
        v27 = objc_msgSend_recognitionTaskWithRequest_resultHandler_(v7, v26, v19, v37);

        _Block_object_dispose(v42, 8);
        _Block_object_dispose(v43, 8);
        _Block_object_dispose(buf, 8);

LABEL_17:
        goto LABEL_18;
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v34, OS_LOG_TYPE_INFO, "Speech recognizer is not available.", buf, 2u);
        }
      }

      v35 = objc_alloc(MEMORY[0x277CCA9B8]);
      v33 = objc_msgSend_initWithDomain_code_userInfo_(v35, v36, @"__kIMTranscriptionGenerationErrorDomain", 2, 0);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v30, OS_LOG_TYPE_INFO, "Speech recognizer does not support on device recognition. There are likely missing assets.", buf, 2u);
        }
      }

      v31 = objc_alloc(MEMORY[0x277CCA9B8]);
      v33 = objc_msgSend_initWithDomain_code_userInfo_(v31, v32, @"__kIMTranscriptionGenerationErrorDomain", 1, 0);
    }

    v19 = v33;
    (*(completionCopy + 2))(completionCopy, 0, v33);
    goto LABEL_17;
  }

  v28 = objc_alloc(MEMORY[0x277CCA9B8]);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v28, v29, @"__kIMTranscriptionGenerationErrorDomain", 0, 0);
  (*(completionCopy + 2))(completionCopy, 0, v7);
LABEL_18:
}

+ (id)localizedSeparatorString
{
  v4 = objc_msgSend_transcoderBundle(IMTranscriptionUtilities, a2, v2, v3);
  v8 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v5, v6, v7);
  v12 = objc_msgSend_localeIdentifier(v8, v9, v10, v11);

  v13 = MEMORY[0x277CCA8D8];
  v17 = objc_msgSend_localizations(v4, v14, v15, v16);
  v21 = objc_msgSend_preferredLanguages(MEMORY[0x277CBEAF8], v18, v19, v20);
  v23 = objc_msgSend_preferredLocalizationsFromArray_forPreferences_(v13, v22, v17, v21);
  v27 = objc_msgSend_firstObject(v23, v24, v25, v26);

  if (v27)
  {
    objc_msgSend_localizedStringForKey_value_table_localization_(v4, v28, @"SPEECH_PAUSE_SEPARATOR_BETWEEN_2_PARTS_OF_SENTENCE", 0, @"TranscriptionStrings", v27);
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_localization_(v4, v28, @"SPEECH_PAUSE_SEPARATOR_BETWEEN_2_PARTS_OF_SENTENCE", 0, @"TranscriptionStrings", v12);
  }
  v29 = ;

  return v29;
}

+ (id)transcoderBundle
{
  if (qword_27F611A70 != -1)
  {
    sub_2548315A8();
  }

  v3 = qword_27F611A68;

  return v3;
}

+ (void)commitTranscriptionWithString:(id)string confidenceSum:(double)sum numberOfSegments:(unint64_t)segments completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  completionCopy = completion;
  if (segments)
  {
    if (objc_msgSend_length(stringCopy, v10, v11, v12))
    {
      if (sum / segments >= 0.6)
      {
        completionCopy[2](completionCopy, stringCopy, 0);
        goto LABEL_20;
      }

      v14 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = objc_msgSend_initWithDomain_code_userInfo_(v14, v15, @"__kIMTranscriptionGenerationErrorDomain", 4, 0);
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = v16;
          _os_log_impl(&dword_254811000, v17, OS_LOG_TYPE_INFO, "The transcription has a low confidence score, it is likely the audio was in a different language to the system language: %@", &v24, 0xCu);
        }
      }
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = objc_msgSend_initWithDomain_code_userInfo_(v21, v22, @"__kIMTranscriptionGenerationErrorDomain", 3, 0);
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = v16;
          _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "The transcription has no text: %@", &v24, 0xCu);
        }
      }
    }
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = objc_msgSend_initWithDomain_code_userInfo_(v18, v19, @"__kIMTranscriptionGenerationErrorDomain", 5, 0);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v16;
        _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "There are no segments to transcribe: %@", &v24, 0xCu);
      }
    }
  }

  (completionCopy)[2](completionCopy, 0, v16);

LABEL_20:
}

@end