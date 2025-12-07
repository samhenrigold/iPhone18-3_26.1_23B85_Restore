@interface MADUserSafetyQRCodeDetector
+ (BOOL)enabled;
- (MADUserSafetyQRCodeDetector)init;
- (void)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation signpostPayload:(id)payload;
@end

@implementation MADUserSafetyQRCodeDetector

+ (BOOL)enabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.sensitivecontentanalysis.testing"];
  v3 = [v2 objectForKey:@"SensitiveContentAnalysisTestMode"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (MADUserSafetyQRCodeDetector)init
{
  v3.receiver = self;
  v3.super_class = MADUserSafetyQRCodeDetector;
  return [(MADUserSafetyQRCodeDetector *)&v3 init];
}

- (void)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation signpostPayload:(id)payload
{
  v5 = *&orientation;
  v89[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v85 = objc_opt_class();
    v7 = v85;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] start barcode detection", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  mad_defaultRequest = [MEMORY[0x1E69844A0] mad_defaultRequest];
  if (mad_defaultRequest)
  {
    v76 = *MEMORY[0x1E69848C0];
    v89[0] = *MEMORY[0x1E69848C0];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:1];
    [mad_defaultRequest setSymbologies:v8];

    v10 = VCPSignPostLog(v9);
    v11 = os_signpost_id_generate(v10);

    v13 = VCPSignPostLog(v12);
    v14 = v13;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 138412290;
      v85 = payloadCopy;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    v15 = objc_alloc(MEMORY[0x1E69845B8]);
    v72 = [v15 initWithCVPixelBuffer:buffer orientation:v5 options:MEMORY[0x1E695E0F8]];
    v16 = VCPSignPostLog(v72);
    v17 = v16;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 138412290;
      v85 = payloadCopy;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_END, v11, "VNImageRequestHandler_init", "%@", buf, 0xCu);
    }

    if (v72)
    {
      v19 = VCPSignPostLog(v18);
      v20 = os_signpost_id_generate(v19);

      v22 = VCPSignPostLog(v21);
      v23 = v22;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 138412290;
        v85 = payloadCopy;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
      }

      v88 = mad_defaultRequest;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
      v82 = 0;
      v25 = [v72 performRequests:v24 error:&v82];
      v71 = v82;

      v27 = VCPSignPostLog(v26);
      v28 = v27;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 138412290;
        v85 = payloadCopy;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v20, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
      }

      if (v25)
      {
        results = [mad_defaultRequest results];
        unsignedIntegerValue = [(NSNumber *)self->_sensitivity unsignedIntegerValue];
        v30 = unsignedIntegerValue;
        if (results && unsignedIntegerValue != 3)
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          obj = results;
          v31 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
          if (!v31)
          {
            goto LABEL_46;
          }

          v33 = *v79;
          *&v32 = 138412290;
          v68 = v32;
          while (1)
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v79 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v78 + 1) + 8 * i);
              symbology = [v35 symbology];
              v37 = symbology == v76;

              if (!v37)
              {
                continue;
              }

              payloadStringValue = [v35 payloadStringValue];
              nudityAndGoreViolenceURLString = [objc_opt_class() nudityAndGoreViolenceURLString];
              v40 = [payloadStringValue isEqualToString:nudityAndGoreViolenceURLString];

              if (v40)
              {
                v30 |= 3uLL;
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  v41 = objc_opt_class();
                  *buf = v68;
                  v85 = v41;
                  v42 = v41;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Successfully detected the nudity + gore and violence sensitive barcode!", buf, 0xCu);
                }

                goto LABEL_43;
              }

              payloadStringValue2 = [v35 payloadStringValue];
              nudityURLStringLegacy = [objc_opt_class() nudityURLStringLegacy];
              if ([payloadStringValue2 isEqualToString:nudityURLStringLegacy])
              {

LABEL_34:
                v30 |= 1uLL;
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  v48 = objc_opt_class();
                  *buf = v68;
                  v85 = v48;
                  v49 = v48;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Successfully detected the nudity sensitive barcode!", buf, 0xCu);
                }

                goto LABEL_43;
              }

              payloadStringValue3 = [v35 payloadStringValue];
              nudityURLString = [objc_opt_class() nudityURLString];
              v47 = [payloadStringValue3 isEqualToString:nudityURLString];

              if (v47)
              {
                goto LABEL_34;
              }

              payloadStringValue4 = [v35 payloadStringValue];
              goreViolenceURLStringLegacy = [objc_opt_class() goreViolenceURLStringLegacy];
              if ([payloadStringValue4 isEqualToString:goreViolenceURLStringLegacy])
              {
              }

              else
              {
                payloadStringValue5 = [v35 payloadStringValue];
                goreViolenceURLString = [objc_opt_class() goreViolenceURLString];
                v54 = [payloadStringValue5 isEqualToString:goreViolenceURLString];

                if (!v54)
                {
                  goto LABEL_43;
                }
              }

              v30 |= 2uLL;
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                v55 = objc_opt_class();
                *buf = v68;
                v85 = v55;
                v56 = v55;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Successfully detected the gore and violence sensitive barcode!", buf, 0xCu);
              }

LABEL_43:
              if (v30 == 3)
              {
                goto LABEL_46;
              }
            }

            v31 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
            if (!v31)
            {
LABEL_46:

              break;
            }
          }
        }

        v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
        sensitivity = self->_sensitivity;
        self->_sensitivity = v57;

        v59 = 1;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v64 = objc_opt_class();
          *buf = 138412546;
          v85 = v64;
          v86 = 2112;
          v87 = v71;
          v65 = v64;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to perform vision requests, err %@", buf, 0x16u);
        }

        v59 = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = objc_opt_class();
        *buf = 138412290;
        v85 = v62;
        v63 = v62;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create VNImageRequestHandler", buf, 0xCu);
      }

      v59 = 0;
      v71 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v60 = objc_opt_class();
      *buf = 138412290;
      v85 = v60;
      v61 = v60;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to configure VNDetectBarcodesRequest", buf, 0xCu);
    }

    v59 = 0;
    v71 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (v59 && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v66 = objc_opt_class();
    *buf = 138412290;
    v85 = v66;
    v67 = v66;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] complete barcode detection", buf, 0xCu);
  }
}

@end