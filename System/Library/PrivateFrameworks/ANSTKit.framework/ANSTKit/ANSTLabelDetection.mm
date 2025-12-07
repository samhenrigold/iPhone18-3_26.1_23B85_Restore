@interface ANSTLabelDetection
+ (id)new;
- (ANSTLabelDetection)init;
- (ANSTLabelDetection)initWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)addSupportedLabels:(id)labels error:(id *)error;
- (BOOL)executeDecoderInferenceWithError:(id *)error;
- (BOOL)executeEncoderInferenceWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)updateTextFeature:(float *)feature error:(id *)error;
- (BOOL)updateTextIds:(int *)ids error:(id *)error;
- (NSSet)supportedLabels;
- (id)listWithPixelBuffer:(__CVBuffer *)buffer labels:(id)labels detectionThreshold:(float)threshold error:(id *)error;
- (id)listWithPixelBuffer:(__CVBuffer *)buffer labels:(id)labels error:(id *)error;
- (id)trackWithPixelBuffer:(__CVBuffer *)buffer objects:(id)objects error:(id *)error;
- (void)createESOP:(e5rt_execution_stream_operation *)p modelURL:(id)l error:(id *)error;
- (void)dealloc;
- (void)preprocessInputImage:(__CVBuffer *)image;
@end

@implementation ANSTLabelDetection

- (ANSTLabelDetection)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (BOOL)prepareWithError:(id *)error
{
  v316[1] = *MEMORY[0x277D85DE8];
  if (!self->_readyForInference)
  {
    v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, error);
    if (objc_msgSend_fileExistsAtPath_(v6, v7, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/encoder.mil"))
    {
      v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
      v12 = objc_msgSend_fileExistsAtPath_(v10, v11, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/model.mil");

      if (v12)
      {
        if (!self->decoder_stream)
        {
          v31 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v14, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/model.mil");
          v33 = e5rt_execution_stream_create();
          if (v33)
          {
            last_error_message = e5rt_get_last_error_message();
            v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&decoder_stream)", v33, last_error_message);
            v37 = _ANSTLoggingGetOSLogForCategoryANSTKit(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_22E65B094();
            }

            if (error)
            {
              v39 = MEMORY[0x277CCA9B8];
              v313 = *MEMORY[0x277CCA068];
              v314 = v36;
              v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v314, &v313, 1);
              *error = objc_msgSend_errorWithDomain_code_userInfo_(v39, v41, @"ANSTErrorDomain", 5, v40);
            }

            return 0;
          }

          objc_msgSend_createESOP_modelURL_error_(self, v32, &self->decoder_operation, v31, error);
        }

        if (!self->encoder_stream)
        {
          v42 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v14, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/encoder.mil");
          v44 = e5rt_execution_stream_create();
          if (v44)
          {
            v45 = e5rt_get_last_error_message();
            v47 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&encoder_stream)", v44, v45);
            v48 = _ANSTLoggingGetOSLogForCategoryANSTKit(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_22E65B094();
            }

            if (error)
            {
              v50 = MEMORY[0x277CCA9B8];
              v311 = *MEMORY[0x277CCA068];
              v312 = v47;
              v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v312, &v311, 1);
              *error = objc_msgSend_errorWithDomain_code_userInfo_(v50, v52, @"ANSTErrorDomain", 5, v51);
            }

            return 0;
          }

          objc_msgSend_createESOP_modelURL_error_(self, v43, &self->encoder_operation, v42, error);
        }

        v15 = e5rt_buffer_object_alloc();
        if (v15)
        {
          v16 = v15;
          v17 = e5rt_get_last_error_message();
          v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_buffer_object_alloc(&_inputBufferObject_text, kDecoderTextNumber * kFeatureLength * sizeof(float), E5RT_BUFFER_OBJECT_TYPE_IOSURFACE)", v16, v17);
          v20 = _ANSTLoggingGetOSLogForCategoryANSTKit(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_22E65B094();
          }

          if (error)
          {
            v22 = MEMORY[0x277CCA9B8];
            v309 = *MEMORY[0x277CCA068];
            v310 = v19;
            v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v310, &v309, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 5, v23);
          }

          return 0;
        }

        _esopBindInputBufferObject(self->decoder_operation, @"text_feats", self->_inputBufferObject_text, error);
        v53 = e5rt_execution_stream_operation_retain_input_port();
        if (v53)
        {
          v54 = e5rt_get_last_error_message();
          v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(decoder_operation, input_image, &input_port)", v53, v54);
          v57 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            sub_22E65B094();
          }

          if (error)
          {
            v59 = MEMORY[0x277CCA9B8];
            v307 = *MEMORY[0x277CCA068];
            v308 = v56;
            v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, &v308, &v307, 1);
            v62 = objc_msgSend_errorWithDomain_code_userInfo_(v59, v61, @"ANSTErrorDomain", 5, v60);
LABEL_59:
            v3 = 0;
            *error = v62;

LABEL_177:
            return v3;
          }
        }

        else
        {
          v63 = e5rt_io_port_retain_tensor_desc();
          if (v63)
          {
            v64 = e5rt_get_last_error_message();
            v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(input_port, &tensor_desc_input_image)", v63, v64);
            v66 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              sub_22E65B094();
            }

            if (error)
            {
              v68 = MEMORY[0x277CCA9B8];
              v305 = *MEMORY[0x277CCA068];
              v306 = v56;
              v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, &v306, &v305, 1);
              v62 = objc_msgSend_errorWithDomain_code_userInfo_(v68, v69, @"ANSTErrorDomain", 5, v60);
              goto LABEL_59;
            }
          }

          else
          {
            v70 = e5rt_tensor_desc_alloc_buffer_object();
            if (v70)
            {
              v71 = e5rt_get_last_error_message();
              v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_input_image, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &input_buffer_object)", v70, v71);
              v73 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                sub_22E65B094();
              }

              if (error)
              {
                v75 = MEMORY[0x277CCA9B8];
                v303 = *MEMORY[0x277CCA068];
                v304 = v56;
                v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, &v304, &v303, 1);
                v62 = objc_msgSend_errorWithDomain_code_userInfo_(v75, v76, @"ANSTErrorDomain", 5, v60);
                goto LABEL_59;
              }
            }

            else
            {
              v77 = e5rt_io_port_bind_buffer_object();
              if (v77)
              {
                v78 = e5rt_get_last_error_message();
                v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v79, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(input_port, input_buffer_object)", v77, v78);
                v80 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                {
                  sub_22E65B094();
                }

                if (error)
                {
                  v82 = MEMORY[0x277CCA9B8];
                  v301 = *MEMORY[0x277CCA068];
                  v302 = v56;
                  v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v81, &v302, &v301, 1);
                  v62 = objc_msgSend_errorWithDomain_code_userInfo_(v82, v83, @"ANSTErrorDomain", 5, v60);
                  goto LABEL_59;
                }
              }

              else
              {
                iosurface = e5rt_buffer_object_get_iosurface();
                if (iosurface)
                {
                  v85 = e5rt_get_last_error_message();
                  v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v86, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(input_buffer_object, &_inputImageTensorSurface)", iosurface, v85);
                  v87 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                  {
                    sub_22E65B094();
                  }

                  if (error)
                  {
                    v89 = MEMORY[0x277CCA9B8];
                    v299 = *MEMORY[0x277CCA068];
                    v300 = v56;
                    v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v88, &v300, &v299, 1);
                    v62 = objc_msgSend_errorWithDomain_code_userInfo_(v89, v90, @"ANSTErrorDomain", 5, v60);
                    goto LABEL_59;
                  }
                }

                else
                {
                  v91 = e5rt_tensor_desc_release();
                  if (v91)
                  {
                    v92 = e5rt_get_last_error_message();
                    v94 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v93, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_input_image)", v91, v92);
                    v95 = _ANSTLoggingGetOSLogForCategoryANSTKit(v94);
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }
                  }

                  v96 = e5rt_buffer_object_release();
                  if (v96)
                  {
                    v97 = e5rt_get_last_error_message();
                    v99 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v98, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&input_buffer_object)", v96, v97);
                    v100 = _ANSTLoggingGetOSLogForCategoryANSTKit(v99);
                    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }
                  }

                  v101 = e5rt_io_port_release();
                  if (v101)
                  {
                    v102 = e5rt_get_last_error_message();
                    v104 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v103, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port)", v101, v102);
                    v105 = _ANSTLoggingGetOSLogForCategoryANSTKit(v104);
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }
                  }

                  if (self->_outputPort_score || (v113 = e5rt_execution_stream_operation_retain_output_port(), !v113))
                  {
                    if (self->_outputTensorDesc_score || (v120 = e5rt_io_port_retain_tensor_desc(), !v120))
                    {
                      if (self->_outputBufferObject_score || (v127 = e5rt_tensor_desc_alloc_buffer_object(), !v127))
                      {
                        v106 = e5rt_io_port_bind_buffer_object();
                        if (v106)
                        {
                          v107 = e5rt_get_last_error_message();
                          v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v108, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_score, _outputBufferObject_score)", v106, v107);
                          v109 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                          {
                            sub_22E65B094();
                          }

                          if (error)
                          {
                            v111 = MEMORY[0x277CCA9B8];
                            v291 = *MEMORY[0x277CCA068];
                            v292 = v56;
                            v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v110, &v292, &v291, 1);
                            v62 = objc_msgSend_errorWithDomain_code_userInfo_(v111, v112, @"ANSTErrorDomain", 5, v60);
                            goto LABEL_59;
                          }
                        }

                        else
                        {
                          v134 = e5rt_buffer_object_get_iosurface();
                          if (v134)
                          {
                            v135 = e5rt_get_last_error_message();
                            v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v136, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_score, &_outputScoreSurface)", v134, v135);
                            v137 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                            {
                              sub_22E65B094();
                            }

                            if (error)
                            {
                              v139 = MEMORY[0x277CCA9B8];
                              v289 = *MEMORY[0x277CCA068];
                              v290 = v56;
                              v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v138, &v290, &v289, 1);
                              v62 = objc_msgSend_errorWithDomain_code_userInfo_(v139, v140, @"ANSTErrorDomain", 5, v60);
                              goto LABEL_59;
                            }
                          }

                          else if (self->_outputPort_bbox || (v148 = e5rt_execution_stream_operation_retain_output_port(), !v148))
                          {
                            if (self->_outputTensorDesc_bbox || (v155 = e5rt_io_port_retain_tensor_desc(), !v155))
                            {
                              if (self->_outputBufferObject_bbox || (v162 = e5rt_tensor_desc_alloc_buffer_object(), !v162))
                              {
                                v141 = e5rt_io_port_bind_buffer_object();
                                if (v141)
                                {
                                  v142 = e5rt_get_last_error_message();
                                  v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v143, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_bbox, _outputBufferObject_bbox)", v141, v142);
                                  v144 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_22E65B094();
                                  }

                                  if (error)
                                  {
                                    v146 = MEMORY[0x277CCA9B8];
                                    v281 = *MEMORY[0x277CCA068];
                                    v282 = v56;
                                    v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v145, &v282, &v281, 1);
                                    v62 = objc_msgSend_errorWithDomain_code_userInfo_(v146, v147, @"ANSTErrorDomain", 5, v60);
                                    goto LABEL_59;
                                  }
                                }

                                else
                                {
                                  v169 = e5rt_buffer_object_get_iosurface();
                                  if (v169)
                                  {
                                    v170 = e5rt_get_last_error_message();
                                    v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v171, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_bbox, &_outputBBoxSurface)", v169, v170);
                                    v172 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
                                    {
                                      sub_22E65B094();
                                    }

                                    if (error)
                                    {
                                      v174 = MEMORY[0x277CCA9B8];
                                      v279 = *MEMORY[0x277CCA068];
                                      v280 = v56;
                                      v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v173, &v280, &v279, 1);
                                      v62 = objc_msgSend_errorWithDomain_code_userInfo_(v174, v175, @"ANSTErrorDomain", 5, v60);
                                      goto LABEL_59;
                                    }
                                  }

                                  else
                                  {
                                    self->_textFeature = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
                                    self->_textIds = malloc_type_malloc(0x9A0uLL, 0x100004052888210uLL);
                                    v176 = e5rt_buffer_object_alloc();
                                    if (v176)
                                    {
                                      v177 = e5rt_get_last_error_message();
                                      v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v178, @"%s returned error code %u (%s)", "e5rt_buffer_object_alloc(&_inputBufferObject_text_ids, kEncoderTextNumber * kMaxTextLength * sizeof(int32_t), E5RT_BUFFER_OBJECT_TYPE_IOSURFACE)", v176, v177);
                                      v179 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                      if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
                                      {
                                        sub_22E65B094();
                                      }

                                      if (error)
                                      {
                                        v181 = MEMORY[0x277CCA9B8];
                                        v277 = *MEMORY[0x277CCA068];
                                        v278 = v56;
                                        v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v180, &v278, &v277, 1);
                                        v62 = objc_msgSend_errorWithDomain_code_userInfo_(v181, v182, @"ANSTErrorDomain", 5, v60);
                                        goto LABEL_59;
                                      }
                                    }

                                    else
                                    {
                                      _esopBindInputBufferObject(self->encoder_operation, @"text_ids", self->_inputBufferObject_text_ids, error);
                                      if (self->_outputPort_text_feats || (v190 = e5rt_execution_stream_operation_retain_output_port(), !v190))
                                      {
                                        if (self->_outputTensorDesc_text_feats || (v197 = e5rt_io_port_retain_tensor_desc(), !v197))
                                        {
                                          if (self->_outputBufferObject_text_feats || (v204 = e5rt_tensor_desc_alloc_buffer_object(), !v204))
                                          {
                                            v183 = e5rt_io_port_bind_buffer_object();
                                            if (v183)
                                            {
                                              v184 = e5rt_get_last_error_message();
                                              v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v185, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_text_feats, _outputBufferObject_text_feats)", v183, v184);
                                              v186 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                              if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                                              {
                                                sub_22E65B094();
                                              }

                                              if (error)
                                              {
                                                v188 = MEMORY[0x277CCA9B8];
                                                v269 = *MEMORY[0x277CCA068];
                                                v270 = v56;
                                                v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v187, &v270, &v269, 1);
                                                v62 = objc_msgSend_errorWithDomain_code_userInfo_(v188, v189, @"ANSTErrorDomain", 5, v60);
                                                goto LABEL_59;
                                              }
                                            }

                                            else
                                            {
                                              v211 = e5rt_buffer_object_get_iosurface();
                                              if (v211)
                                              {
                                                v212 = e5rt_get_last_error_message();
                                                v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v213, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_text_feats, &_outputTextFeatsSurface)", v211, v212);
                                                v214 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                                if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
                                                {
                                                  sub_22E65B094();
                                                }

                                                if (error)
                                                {
                                                  v216 = MEMORY[0x277CCA9B8];
                                                  v267 = *MEMORY[0x277CCA068];
                                                  v268 = v56;
                                                  v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v215, &v268, &v267, 1);
                                                  v62 = objc_msgSend_errorWithDomain_code_userInfo_(v216, v217, @"ANSTErrorDomain", 5, v60);
                                                  goto LABEL_59;
                                                }
                                              }

                                              else
                                              {
                                                v218 = e5rt_execution_stream_encode_operation();
                                                if (v218)
                                                {
                                                  v219 = e5rt_get_last_error_message();
                                                  v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v220, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(encoder_stream, encoder_operation)", v218, v219);
                                                  v221 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                                  if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
                                                  {
                                                    sub_22E65B094();
                                                  }

                                                  if (error)
                                                  {
                                                    v223 = MEMORY[0x277CCA9B8];
                                                    v265 = *MEMORY[0x277CCA068];
                                                    v266 = v56;
                                                    v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v222, &v266, &v265, 1);
                                                    v62 = objc_msgSend_errorWithDomain_code_userInfo_(v223, v224, @"ANSTErrorDomain", 5, v60);
                                                    goto LABEL_59;
                                                  }
                                                }

                                                else
                                                {
                                                  v227 = e5rt_execution_stream_encode_operation();
                                                  if (v227)
                                                  {
                                                    v228 = e5rt_get_last_error_message();
                                                    v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v229, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(decoder_stream, decoder_operation)", v227, v228);
                                                    v230 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                                    if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
                                                    {
                                                      sub_22E65B094();
                                                    }

                                                    if (error)
                                                    {
                                                      v232 = MEMORY[0x277CCA9B8];
                                                      v263 = *MEMORY[0x277CCA068];
                                                      v264 = v56;
                                                      v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v231, &v264, &v263, 1);
                                                      v62 = objc_msgSend_errorWithDomain_code_userInfo_(v232, v233, @"ANSTErrorDomain", 5, v60);
                                                      goto LABEL_59;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v234 = objc_msgSend_networkInputBufferWidth(self, v225, v226);
                                                    v237 = objc_msgSend_networkInputBufferHeight(self, v235, v236);
                                                    v240 = objc_msgSend_networkInputBufferPixelFormat(self, v238, v239);
                                                    v241 = v234;
                                                    v261[0] = *MEMORY[0x277CC4EC8];
                                                    v244 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v242, v243, v234);
                                                    v245 = v237;
                                                    v262[0] = v244;
                                                    v261[1] = *MEMORY[0x277CC4DD8];
                                                    v248 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v246, v247, v237);
                                                    v262[1] = v248;
                                                    v261[2] = *MEMORY[0x277CC4E30];
                                                    v250 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v249, v240);
                                                    v261[3] = *MEMORY[0x277CC4DE8];
                                                    v262[2] = v250;
                                                    v262[3] = MEMORY[0x277CBEC10];
                                                    v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v251, v262, v261, 4);

                                                    CVPixelBufferCreate(0, v241, v245, v240, v56, &self->_transformedInputImage);
                                                    v252 = MEMORY[0x277CBF2C0];
                                                    v254 = *(MEMORY[0x277CBF2C0] + 16);
                                                    v253 = *(MEMORY[0x277CBF2C0] + 32);
                                                    *&self->_inputAffineTransform.a = *MEMORY[0x277CBF2C0];
                                                    *&self->_inputAffineTransform.c = v254;
                                                    *&self->_inputAffineTransform.tx = v253;
                                                    v255 = *v252;
                                                    v256 = v252[2];
                                                    *&self->_outputAffineTransform.c = v252[1];
                                                    *&self->_outputAffineTransform.tx = v256;
                                                    *&self->_outputAffineTransform.a = v255;
                                                    v259 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v257, v258);
                                                    LOBYTE(v240) = objc_msgSend_fileExistsAtPath_(v259, v260, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/bpe_simple_vocab_s.txt");

                                                    if (v240)
                                                    {
                                                      operator new();
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v205 = e5rt_get_last_error_message();
                                            v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v206, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_text_feats, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_text_feats)", v204, v205);
                                            v207 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                            if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
                                            {
                                              sub_22E65B094();
                                            }

                                            if (error)
                                            {
                                              v209 = MEMORY[0x277CCA9B8];
                                              v271 = *MEMORY[0x277CCA068];
                                              v272 = v56;
                                              v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v208, &v272, &v271, 1);
                                              v62 = objc_msgSend_errorWithDomain_code_userInfo_(v209, v210, @"ANSTErrorDomain", 5, v60);
                                              goto LABEL_59;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v198 = e5rt_get_last_error_message();
                                          v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v199, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_text_feats, &_outputTensorDesc_text_feats)", v197, v198);
                                          v200 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                          if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                                          {
                                            sub_22E65B094();
                                          }

                                          if (error)
                                          {
                                            v202 = MEMORY[0x277CCA9B8];
                                            v273 = *MEMORY[0x277CCA068];
                                            v274 = v56;
                                            v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v201, &v274, &v273, 1);
                                            v62 = objc_msgSend_errorWithDomain_code_userInfo_(v202, v203, @"ANSTErrorDomain", 5, v60);
                                            goto LABEL_59;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v191 = e5rt_get_last_error_message();
                                        v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v192, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(encoder_operation, text_feats, &_outputPort_text_feats)", v190, v191);
                                        v193 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                                        {
                                          sub_22E65B094();
                                        }

                                        if (error)
                                        {
                                          v195 = MEMORY[0x277CCA9B8];
                                          v275 = *MEMORY[0x277CCA068];
                                          v276 = v56;
                                          v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v194, &v276, &v275, 1);
                                          v62 = objc_msgSend_errorWithDomain_code_userInfo_(v195, v196, @"ANSTErrorDomain", 5, v60);
                                          goto LABEL_59;
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v163 = e5rt_get_last_error_message();
                                v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v164, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_bbox, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_bbox)", v162, v163);
                                v165 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                                {
                                  sub_22E65B094();
                                }

                                if (error)
                                {
                                  v167 = MEMORY[0x277CCA9B8];
                                  v283 = *MEMORY[0x277CCA068];
                                  v284 = v56;
                                  v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v166, &v284, &v283, 1);
                                  v62 = objc_msgSend_errorWithDomain_code_userInfo_(v167, v168, @"ANSTErrorDomain", 5, v60);
                                  goto LABEL_59;
                                }
                              }
                            }

                            else
                            {
                              v156 = e5rt_get_last_error_message();
                              v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v157, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_bbox, &_outputTensorDesc_bbox)", v155, v156);
                              v158 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                              if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                              {
                                sub_22E65B094();
                              }

                              if (error)
                              {
                                v160 = MEMORY[0x277CCA9B8];
                                v285 = *MEMORY[0x277CCA068];
                                v286 = v56;
                                v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v159, &v286, &v285, 1);
                                v62 = objc_msgSend_errorWithDomain_code_userInfo_(v160, v161, @"ANSTErrorDomain", 5, v60);
                                goto LABEL_59;
                              }
                            }
                          }

                          else
                          {
                            v149 = e5rt_get_last_error_message();
                            v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v150, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(decoder_operation, bboxes, &_outputPort_bbox)", v148, v149);
                            v151 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                            if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                            {
                              sub_22E65B094();
                            }

                            if (error)
                            {
                              v153 = MEMORY[0x277CCA9B8];
                              v287 = *MEMORY[0x277CCA068];
                              v288 = v56;
                              v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v152, &v288, &v287, 1);
                              v62 = objc_msgSend_errorWithDomain_code_userInfo_(v153, v154, @"ANSTErrorDomain", 5, v60);
                              goto LABEL_59;
                            }
                          }
                        }
                      }

                      else
                      {
                        v128 = e5rt_get_last_error_message();
                        v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v129, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_score, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_score)", v127, v128);
                        v130 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                        {
                          sub_22E65B094();
                        }

                        if (error)
                        {
                          v132 = MEMORY[0x277CCA9B8];
                          v293 = *MEMORY[0x277CCA068];
                          v294 = v56;
                          v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v131, &v294, &v293, 1);
                          v62 = objc_msgSend_errorWithDomain_code_userInfo_(v132, v133, @"ANSTErrorDomain", 5, v60);
                          goto LABEL_59;
                        }
                      }
                    }

                    else
                    {
                      v121 = e5rt_get_last_error_message();
                      v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v122, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_score, &_outputTensorDesc_score)", v120, v121);
                      v123 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                      {
                        sub_22E65B094();
                      }

                      if (error)
                      {
                        v125 = MEMORY[0x277CCA9B8];
                        v295 = *MEMORY[0x277CCA068];
                        v296 = v56;
                        v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v124, &v296, &v295, 1);
                        v62 = objc_msgSend_errorWithDomain_code_userInfo_(v125, v126, @"ANSTErrorDomain", 5, v60);
                        goto LABEL_59;
                      }
                    }
                  }

                  else
                  {
                    v114 = e5rt_get_last_error_message();
                    v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v115, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(decoder_operation, scores, &_outputPort_score)", v113, v114);
                    v116 = _ANSTLoggingGetOSLogForCategoryANSTKit(v56);
                    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }

                    if (error)
                    {
                      v118 = MEMORY[0x277CCA9B8];
                      v297 = *MEMORY[0x277CCA068];
                      v298 = v56;
                      v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v117, &v298, &v297, 1);
                      v62 = objc_msgSend_errorWithDomain_code_userInfo_(v118, v119, @"ANSTErrorDomain", 5, v60);
                      goto LABEL_59;
                    }
                  }
                }
              }
            }
          }
        }

        v3 = 0;
        goto LABEL_177;
      }
    }

    else
    {
    }

    v25 = _ANSTLoggingGetOSLogForCategoryANSTKit(v13);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B014();
    }

    if (error)
    {
      v27 = MEMORY[0x277CCA9B8];
      v315 = *MEMORY[0x277CCA450];
      v316[0] = @"Model files does not exist. Returning NO.";
      v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v316, &v315, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v27, v29, @"ANSTErrorDomain", 3, v28);
    }

    return 0;
  }

  return 1;
}

- (void)createESOP:(e5rt_execution_stream_operation *)p modelURL:(id)l error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!e5rt_e5_compiler_create() && !e5rt_e5_compiler_options_create())
  {
    v9 = objc_msgSend_relativePath(lCopy, v7, v8);
    v10 = v9;
    objc_msgSend_UTF8String(v9, v11, v12);
    if (e5rt_e5_compiler_compile() || e5rt_program_library_retain_program_function() || e5rt_precompiled_compute_op_create_options_create_with_program_function())
    {
    }

    else
    {
      v27 = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options() == 0;

      if (v27)
      {
        goto LABEL_11;
      }
    }
  }

  last_error_message = e5rt_get_last_error_message();
  v14 = _ANSTLoggingGetOSLogForCategoryANSTKit(last_error_message);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_22E65B1FC(last_error_message, v14, v15, v16, v17, v18, v19, v20);
  }

  if (error)
  {
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"MIL compilation failed due to E5 error (%s)", last_error_message);
    v23 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA068];
    v29[0] = v22;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v29, &v28, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v26, @"ANSTErrorDomain", 5, v25);
  }

LABEL_11:
}

- (ANSTLabelDetection)initWithConfiguration:(id)configuration error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = ANSTLabelDetection;
  v7 = [(ANSTAlgorithm *)&v18 initWithConfiguration:configurationCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, configuration);
    v8->_readyForInference = 0;
    v8->_bgraInputBuffer = 0;
    v8->_inputImageTensorSurface = 0;
    v21 = xmmword_22E662270;
    v22 = 64;
    v9 = [ANSTTensorDescriptor alloc];
    v11 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v9, v10, @"scores", 102, 3, &v21, 64, 0);
    outputScoreDescriptor = v8->_outputScoreDescriptor;
    v8->_outputScoreDescriptor = v11;

    v19 = xmmword_22E662288;
    v20 = 4;
    v13 = [ANSTTensorDescriptor alloc];
    v15 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v13, v14, @"bboxes", 102, 3, &v19, 64, 0);
    outputBBoxDescriptor = v8->_outputBBoxDescriptor;
    v8->_outputBBoxDescriptor = v15;
  }

  return v8;
}

- (void)preprocessInputImage:(__CVBuffer *)image
{
  CVPixelBufferLockBaseAddress(image, 0);
  CVPixelBufferLockBaseAddress(self->_transformedInputImage, 0);
  IOSurfaceLock(self->_inputImageTensorSurface, 0, 0);
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v7 = CVPixelBufferGetWidth(self->_transformedInputImage);
  v8 = CVPixelBufferGetHeight(self->_transformedInputImage);
  if (v7 / Width >= v8 / Height)
  {
    v9 = v8 / Height;
  }

  else
  {
    v9 = v7 / Width;
  }

  v10 = MEMORY[0x277CBF2C0];
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  *&self->_inputAffineTransform.c = *(MEMORY[0x277CBF2C0] + 16);
  *&self->_inputAffineTransform.tx = v12;
  *&self->_inputAffineTransform.a = v11;
  v13 = v10[1];
  *&v36.a = *v10;
  *&v36.c = v13;
  *&v36.tx = v10[2];
  CGAffineTransformTranslate(&v37, &v36, vcvtd_n_f64_u64(v7, 1uLL), vcvtd_n_f64_u64(v8, 1uLL));
  v14 = *&v37.c;
  *&self->_inputAffineTransform.a = *&v37.a;
  *&self->_inputAffineTransform.c = v14;
  *&self->_inputAffineTransform.tx = *&v37.tx;
  v15 = *&self->_inputAffineTransform.c;
  *&v36.a = *&self->_inputAffineTransform.a;
  *&v36.c = v15;
  *&v36.tx = *&self->_inputAffineTransform.tx;
  CGAffineTransformScale(&v37, &v36, v9, v9);
  v16 = *&v37.c;
  *&self->_inputAffineTransform.a = *&v37.a;
  *&self->_inputAffineTransform.c = v16;
  *&self->_inputAffineTransform.tx = *&v37.tx;
  v17 = *&self->_inputAffineTransform.c;
  *&v36.a = *&self->_inputAffineTransform.a;
  *&v36.c = v17;
  *&v36.tx = *&self->_inputAffineTransform.tx;
  CGAffineTransformTranslate(&v37, &v36, Width * -0.5, Height * -0.5);
  v18 = *&v37.c;
  *&self->_inputAffineTransform.a = *&v37.a;
  *&self->_inputAffineTransform.c = v18;
  *&self->_inputAffineTransform.tx = *&v37.tx;
  v19 = *&self->_inputAffineTransform.c;
  *&v37.a = *&self->_inputAffineTransform.a;
  *&v37.c = v19;
  *&v37.tx = *&self->_inputAffineTransform.tx;
  v35[0] = CVPixelBufferGetBaseAddress(image);
  v35[1] = CVPixelBufferGetHeight(image);
  v35[2] = CVPixelBufferGetWidth(image);
  v35[3] = CVPixelBufferGetBytesPerRow(image);
  v34[0] = CVPixelBufferGetBaseAddress(self->_transformedInputImage);
  v34[1] = CVPixelBufferGetHeight(self->_transformedInputImage);
  v34[2] = CVPixelBufferGetWidth(self->_transformedInputImage);
  v34[3] = CVPixelBufferGetBytesPerRow(self->_transformedInputImage);
  v33 = -16777216;
  MEMORY[0x2318EAF80](v35, v34, 0, &v37, &v33, 4);
  memset(&v36, 0, sizeof(v36));
  v20 = *&self->_inputAffineTransform.c;
  *&v32.a = *&self->_inputAffineTransform.a;
  *&v32.c = v20;
  *&v32.tx = *&self->_inputAffineTransform.tx;
  CGAffineTransformInvert(&v36, &v32);
  v21 = *&v36.c;
  *&self->_outputAffineTransform.a = *&v36.a;
  *&self->_outputAffineTransform.c = v21;
  *&self->_outputAffineTransform.tx = *&v36.tx;
  BaseAddress = IOSurfaceGetBaseAddress(self->_inputImageTensorSurface);
  v23 = CVPixelBufferGetBaseAddress(self->_transformedInputImage);
  v24 = CVPixelBufferGetWidth(self->_transformedInputImage);
  v25 = CVPixelBufferGetHeight(self->_transformedInputImage);
  v27 = v25 * v24;
  if (v25 * v24)
  {
    v28 = 2 * v27;
    v29 = v23 + 2;
    do
    {
      LOBYTE(v26) = *(v29 - 2);
      v30 = *&v26 / 255.0;
      *&v30 = v30;
      BaseAddress[v28] = LODWORD(v30);
      LOBYTE(v30) = *(v29 - 1);
      v31 = *&v30 / 255.0;
      *&v31 = v31;
      BaseAddress[v24 * v25] = LODWORD(v31);
      LOBYTE(v31) = *v29;
      v26 = *&v31 / 255.0;
      *&v26 = v26;
      *BaseAddress++ = LODWORD(v26);
      v29 += 4;
      --v27;
    }

    while (v27);
  }

  CVPixelBufferUnlockBaseAddress(image, 0);
  CVPixelBufferUnlockBaseAddress(self->_transformedInputImage, 0);
  IOSurfaceUnlock(self->_inputImageTensorSurface, 0, 0);
}

- (BOOL)executeDecoderInferenceWithError:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = e5rt_execution_stream_execute_sync();
  if (v4)
  {
    last_error_message = e5rt_get_last_error_message();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(decoder_stream)", v4, last_error_message);
    v8 = _ANSTLoggingGetOSLogForCategoryANSTKit(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B27C();
    }

    if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA068];
      v15[0] = v7;
      v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v15, &v14, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 5, v11);
    }
  }

  return v4 == 0;
}

- (BOOL)executeEncoderInferenceWithError:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = e5rt_execution_stream_execute_sync();
  if (v4)
  {
    last_error_message = e5rt_get_last_error_message();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(encoder_stream)", v4, last_error_message);
    v8 = _ANSTLoggingGetOSLogForCategoryANSTKit(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B2F0();
    }

    if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA068];
      v15[0] = v7;
      v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v15, &v14, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 5, v11);
    }
  }

  return v4 == 0;
}

- (BOOL)updateTextFeature:(float *)feature error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_inputBufferObject_text, &feature_in)", iosurface, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B364();
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA068];
      v18[0] = v9;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v18, &v17, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 5, v13);
    }
  }

  else
  {
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    memcpy(BaseAddress, feature, 0x20000uLL);
    IOSurfaceUnlock(0, 0, 0);
  }

  return iosurface == 0;
}

- (BOOL)updateTextIds:(int *)ids error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_inputBufferObject_text_ids, &feature_in)", iosurface, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B3D8();
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA068];
      v18[0] = v9;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v18, &v17, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 5, v13);
    }
  }

  else
  {
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    memcpy(BaseAddress, ids, 0x4000uLL);
    IOSurfaceUnlock(0, 0, 0);
  }

  return iosurface == 0;
}

- (id)listWithPixelBuffer:(__CVBuffer *)buffer labels:(id)labels error:(id *)error
{
  LODWORD(v5) = 1036831949;
  v6 = objc_msgSend_listWithPixelBuffer_labels_detectionThreshold_error_(self, a2, buffer, labels, error, v5);

  return v6;
}

- (id)listWithPixelBuffer:(__CVBuffer *)buffer labels:(id)labels detectionThreshold:(float)threshold error:(id *)error
{
  v208[1] = *MEMORY[0x277D85DE8];
  obj = labels;
  if (!self->_readyForInference)
  {
    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v207 = *MEMORY[0x277CCA450];
      v175 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v208, &v207, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v21, v22, @"ANSTErrorDomain", 4);
      *error = v23 = 0;

      goto LABEL_88;
    }

    goto LABEL_22;
  }

  errorCopy = error;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (PixelFormatType == objc_msgSend_networkInputBufferPixelFormat(self, v11, v12))
  {
LABEL_24:
    v176 = objc_msgSend_set(MEMORY[0x277CBEB58], v13, v14);
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    obj = obj;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v196, v202, 16);
    if (v41)
    {
      v42 = *v197;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v197 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = objc_msgSend_lowercaseString(*(*(&v196 + 1) + 8 * i), v39, v40);
          objc_msgSend_addObject_(v176, v45, v44);
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v196, v202, 16);
      }

      while (v41);
    }

    v48 = objc_msgSend_supportedLabels(self, v46, v47);
    isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v176, v49, v48);

    if (isSubsetOfSet)
    {
      objc_msgSend_preprocessInputImage_(self, v51, buffer);
      if (obj && objc_msgSend_count(obj, v52, v53))
      {
        v54 = obj;
      }

      else
      {
        v57 = objc_msgSend_supportedLabels(self, v52, v53);
        v60 = objc_msgSend_allObjects(v57, v58, v59);

        v54 = v60;
      }

      obj = v54;
      v61 = objc_msgSend_count(v54, v52, v53);
      v178 = objc_msgSend_array(MEMORY[0x277CBEB18], v62, v63);
      v171 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v61, 6uLL));
      if (v171)
      {
        v66 = 0;
        while (1)
        {
          textFeature = self->_textFeature;
          v68 = v66 << 6;
          v172 = v66 + 1;
          if (v66 << 6 < ((v66 + 1) << 6))
          {
            v69 = 64;
            v70 = v66 << 6;
            do
            {
              v73 = @"none";
              if (v70 < objc_msgSend_count(obj, v64, v65))
              {
                v73 = objc_msgSend_objectAtIndexedSubscript_(obj, v71, v70);
              }

              currentFeatureMap = self->_currentFeatureMap;
              v75 = objc_msgSend_lowercaseString(v73, v71, v72);
              v77 = objc_msgSend_objectForKeyedSubscript_(currentFeatureMap, v76, v75);

              objc_msgSend_getBytes_length_(v77, v78, textFeature, 2048);
              textFeature += 512;
              ++v70;
              --v69;
            }

            while (v69);
            textFeature = self->_textFeature;
          }

          if ((objc_msgSend_updateTextFeature_error_(self, v64, textFeature, errorCopy) & 1) == 0 || !objc_msgSend_executeDecoderInferenceWithError_(self, v79, errorCopy))
          {
            break;
          }

          outputScoreSurface = self->_outputScoreSurface;
          IOSurfaceLock(outputScoreSurface, 1u, 0);
          BaseAddress = IOSurfaceGetBaseAddress(outputScoreSurface);
          IOSurfaceUnlock(outputScoreSurface, 1u, 0);
          outputBBoxSurface = self->_outputBBoxSurface;
          IOSurfaceLock(outputBBoxSurface, 1u, 0);
          v83 = IOSurfaceGetBaseAddress(outputBBoxSurface);
          IOSurfaceUnlock(outputBBoxSurface, 1u, 0);
          v86 = objc_msgSend_lengths(self->_outputScoreDescriptor, v84, v85);
          v88 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, 1);
          v174 = objc_msgSend_unsignedIntegerValue(v88, v89, v90);

          if (v66 == v171 - 1)
          {
            v93 = objc_msgSend_count(obj, v91, v92) - v68;
          }

          else
          {
            v93 = 64;
          }

          memset(v194, 0, sizeof(v194));
          v195 = 1065353216;
          memset(v192, 0, sizeof(v192));
          v193 = 1065353216;
          memset(v190, 0, sizeof(v190));
          v191 = 1065353216;
          v187 = 0u;
          v188 = 0u;
          v189 = 1065353216;
          v186 = 0;
          if (v174 > 0)
          {
            do
            {
              v185 = 0;
              if (v93 >= 1)
              {
                v94 = 0;
                v95 = 0;
                do
                {
                  v96 = BaseAddress[v94];
                  v97 = objc_msgSend_objectAtIndexedSubscript_(obj, v91, v95 + v68);
                  v99 = objc_msgSend_objectForKeyedSubscript_(self->_classwiseThreshold, v98, v97);
                  objc_msgSend_doubleValue(v99, v100, v101);
                  v103 = v102;

                  v104 = 0.1;
                  if (v103 >= 0.000001)
                  {
                    v104 = v103;
                  }

                  if (v104 <= 0.32)
                  {
                    v105 = v104;
                  }

                  else
                  {
                    v105 = 0.32;
                  }

                  if (v104 >= 0.12)
                  {
                    v106 = v105;
                  }

                  else
                  {
                    v106 = 0.12;
                  }

                  v107 = -1.60943791 / log(v106);
                  v108 = powf(v96, v107);
                  if (v108 > threshold)
                  {
                    *&v181.a = &v185;
                    v109 = sub_22E621730(v194, &v185, &std::piecewise_construct, &v181);
                    sub_22E60BF14(v109 + 3, &v186);
                    *&v181.a = &v185;
                    v110 = sub_22E621730(v192, &v185, &std::piecewise_construct, &v181);
                    sub_22E60BF14(v110 + 3, &v185);
                    *&v181.a = &v185;
                    v111 = sub_22E6219E8(v190, &v185, &std::piecewise_construct, &v181);
                    v112 = v111;
                    v114 = v111[4];
                    v113 = v111[5];
                    if (v114 >= v113)
                    {
                      v116 = v111[3];
                      v117 = v114 - v116;
                      v118 = (v114 - v116) >> 2;
                      v119 = v118 + 1;
                      if ((v118 + 1) >> 62)
                      {
                        sub_22E61047C();
                      }

                      v120 = v113 - v116;
                      if (v120 >> 1 > v119)
                      {
                        v119 = v120 >> 1;
                      }

                      v121 = v120 >= 0x7FFFFFFFFFFFFFFCLL;
                      v122 = 0x3FFFFFFFFFFFFFFFLL;
                      if (!v121)
                      {
                        v122 = v119;
                      }

                      if (v122)
                      {
                        sub_22E610C54((v111 + 3), v122);
                      }

                      v123 = (v114 - v116) >> 2;
                      v124 = (4 * v118);
                      v125 = (4 * v118 - 4 * v123);
                      *v124 = v108;
                      v115 = v124 + 1;
                      memcpy(v125, v116, v117);
                      v126 = v112[3];
                      v112[3] = v125;
                      v112[4] = v115;
                      v112[5] = 0;
                      if (v126)
                      {
                        operator delete(v126);
                      }
                    }

                    else
                    {
                      *v114 = v108;
                      v115 = v114 + 1;
                    }

                    v112[4] = v115;
                    memset(&v181, 0, 32);
                    *&v181.a = *v83;
                    *&v181.d = v108;
                    LODWORD(v181.c) = v185 + v68;
                    __p = &v185;
                    v127 = sub_22E621C3C(&v187, &v185, &std::piecewise_construct, &__p);
                    sub_22E618194((v127 + 3), &v181);
                  }

                  v94 = ++v185;
                  v95 = v94;
                }

                while (v93 > v94);
              }

              v128 = objc_msgSend_lengths(self->_outputScoreDescriptor, v91, v92);
              v131 = objc_msgSend_lastObject(v128, v129, v130);
              v134 = objc_msgSend_unsignedIntegerValue(v131, v132, v133);

              v137 = objc_msgSend_lengths(self->_outputBBoxDescriptor, v135, v136);
              v140 = objc_msgSend_lastObject(v137, v138, v139);
              v143 = objc_msgSend_unsignedIntegerValue(v140, v141, v142);

              BaseAddress += v134;
              v83 = (v83 + 4 * v143);
              v145 = ++v186;
            }

            while (v174 > v145);
            for (j = v188; j; j = *j)
            {
              __p = 0;
              v183 = 0;
              v184 = 0;
              v144.n128_u32[0] = 0.5;
              performNMS(j + 3, &__p, v144);
              v147 = j[3];
              for (k = j[4]; v147 != k; v147 += 8)
              {
                v149 = *v147;
                v150 = v147[1];
                v151 = v147[2];
                v152 = v147[3];
                v153 = *(v147 + 4);
                v154 = *(v147 + 6);
                ++self->_detectedObjectId;
                v210.origin.x = v149;
                v210.origin.y = v150;
                v210.size.width = (v151 - v149);
                v210.size.height = (v152 - v150);
                v155 = *&self->_outputAffineTransform.c;
                *&v181.a = *&self->_outputAffineTransform.a;
                *&v181.c = v155;
                *&v181.tx = *&self->_outputAffineTransform.tx;
                v211 = CGRectApplyAffineTransform(v210, &v181);
                x = v211.origin.x;
                y = v211.origin.y;
                width = v211.size.width;
                height = v211.size.height;
                v160 = [ANSTLabelObject alloc];
                detectedObjectId = self->_detectedObjectId;
                v163 = objc_msgSend_objectAtIndexedSubscript_(obj, v162, v153);
                LODWORD(v164) = v154;
                v166 = objc_msgSend_initWithObjectID_category_boundingBox_confidence_(v160, v165, detectedObjectId, v163, x, y, width, height, v164);

                objc_msgSend_addObject_(v178, v167, v166);
              }

              if (__p)
              {
                v183 = __p;
                operator delete(__p);
              }
            }
          }

          sub_22E6216A8(&v187);
          sub_22E6216A8(v190);
          sub_22E6216A8(v192);
          sub_22E6216A8(v194);
          v66 = v172;
          if (v172 == v171)
          {
            goto LABEL_84;
          }
        }

        v23 = 0;
      }

      else
      {
LABEL_84:
        v168 = [ANSTLabelDetectionResult alloc];
        v23 = objc_msgSend_initWithLabels_(v168, v169, v178);
      }
    }

    else if (errorCopy)
    {
      v55 = MEMORY[0x277CCA9B8];
      v200 = *MEMORY[0x277CCA450];
      v177 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, &v201, &v200, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v55, v56, @"ANSTErrorDomain", 2);
      *errorCopy = v23 = 0;
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_87;
  }

  v15 = CVPixelBufferGetWidth(buffer);
  v18 = CVPixelBufferGetHeight(buffer);
  bgraInputBuffer = self->_bgraInputBuffer;
  if (bgraInputBuffer)
  {
    if (CVPixelBufferGetWidth(bgraInputBuffer) == v15 && CVPixelBufferGetHeight(self->_bgraInputBuffer) == v18)
    {
      v20 = self->_bgraInputBuffer;
      goto LABEL_12;
    }

    v24 = self->_bgraInputBuffer;
    if (v24)
    {
      CVPixelBufferRelease(v24);
      self->_bgraInputBuffer = 0;
    }
  }

  v25 = objc_msgSend_networkInputBufferPixelFormat(self, v16, v17);
  PixelBufferWithPixelFormat_width_height_handle = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v26, v25, v15, v18, &self->_bgraInputBuffer);
  v20 = self->_bgraInputBuffer;
  if (!v20)
  {
    v34 = _ANSTLoggingGetOSLogForCategoryANSTKit(PixelBufferWithPixelFormat_width_height_handle);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B4CC();
    }

    if (error)
    {
      v36 = MEMORY[0x277CCA9B8];
      v205 = *MEMORY[0x277CCA450];
      v206 = @"Failed to prepare resized input buffer.";
      v176 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v206, &v205, 1);
      v33 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v37, @"ANSTErrorDomain", 3);
      goto LABEL_21;
    }

LABEL_22:
    v23 = 0;
    goto LABEL_88;
  }

LABEL_12:
  v28 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, buffer, v20);
  if (!v28)
  {
    buffer = self->_bgraInputBuffer;
    goto LABEL_24;
  }

  v29 = _ANSTLoggingGetOSLogForCategoryANSTKit(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_22E65B44C();
  }

  if (!error)
  {
    goto LABEL_22;
  }

  v31 = MEMORY[0x277CCA9B8];
  v203 = *MEMORY[0x277CCA450];
  v204 = @"Failed to transfer input pixel buffer.";
  v176 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v204, &v203, 1);
  v33 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v32, @"ANSTErrorDomain", 4);
LABEL_21:
  v23 = 0;
  *error = v33;
LABEL_87:

LABEL_88:

  return v23;
}

- (id)trackWithPixelBuffer:(__CVBuffer *)buffer objects:(id)objects error:(id *)error
{
  v182[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  if (objc_msgSend_runningFrameRate(self->_configuration, v7, v8) != 2)
  {
    v174[1] = 0;
    v174[0] = 0;
    v173 = v174;
    memset(v172, 0, sizeof(v172));
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v14 = objectsCopy;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v168, v180, 16);
    if (v16)
    {
      v17 = 0;
      v18 = *v169;
      for (i = *v169; ; i = *v169)
      {
        if (i != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v168 + 1) + 8 * v17);
        v21 = acAcObjectMaskNull(&v157);
        objc_msgSend_boundingBox(v20, v22, v23, v21);
        *&v24 = v24;
        HIDWORD(v157) = LODWORD(v24);
        objc_msgSend_boundingBox(v20, v25, v26);
        v28 = v27;
        *&v158 = v28;
        objc_msgSend_boundingBox(v20, v29, v30);
        v32 = v31;
        *(&v158 + 1) = v32;
        objc_msgSend_boundingBox(v20, v33, v34);
        v36 = v35;
        *(&v158 + 2) = v36;
        HIDWORD(v158) = objc_msgSend_confidence(v20, v37, v38);
        v41 = objc_msgSend_label(v20, v39, v40);
        v42 = v41;
        v45 = objc_msgSend_UTF8String(v41, v43, v44);
        sub_22E6206FC(&__p, v45);

        LODWORD(v157) = objc_msgSend_objectID(v20, v46, v47);
        sub_22E60AE14(v172, &v157);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (++v17 >= v16)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v48, &v168, v180, 16);
          if (!v16)
          {
            break;
          }

          v17 = 0;
        }
      }
    }

    ANSTKCFTrackingNode::process_new_object(self->_trackingNode, v172);
    v51 = objc_msgSend_set(MEMORY[0x277CBEB58], v49, v50);
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v52 = v14;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v153, v179, 16);
    if (v56)
    {
      v57 = *v154;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v154 != v57)
          {
            objc_enumerationMutation(v52);
          }

          v59 = objc_msgSend_label(*(*(&v153 + 1) + 8 * j), v54, v55);
          objc_msgSend_addObject_(v51, v60, v59);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v153, v179, 16);
      }

      while (v56);
    }

    v63 = objc_msgSend_allObjects(v51, v61, v62);
    LODWORD(v64) = 1036831949;
    v139 = objc_msgSend_listWithPixelBuffer_labels_detectionThreshold_error_(self, v65, buffer, v63, error, v64);

    objc_msgSend_labels(v139, v66, v67);
    memset(v152, 0, sizeof(v152));
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    obj = v151 = 0u;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v148, v178, 16);
    if (v69)
    {
      v70 = 0;
      v71 = *v149;
      for (k = *v149; ; k = *v149)
      {
        if (k != v71)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v148 + 1) + 8 * v70);
        v74 = acAcObjectMaskNull(&v157);
        objc_msgSend_boundingBox(v73, v75, v76, v74);
        *&v77 = v77;
        HIDWORD(v157) = LODWORD(v77);
        objc_msgSend_boundingBox(v73, v78, v79);
        v81 = v80;
        *&v158 = v81;
        objc_msgSend_boundingBox(v73, v82, v83);
        v85 = v84;
        *(&v158 + 1) = v85;
        objc_msgSend_boundingBox(v73, v86, v87);
        v89 = v88;
        *(&v158 + 2) = v89;
        HIDWORD(v158) = objc_msgSend_confidence(v73, v90, v91);
        v94 = objc_msgSend_label(v73, v92, v93);
        v95 = v94;
        v98 = objc_msgSend_UTF8String(v94, v96, v97);
        sub_22E6206FC(&__p, v98);

        LODWORD(v157) = objc_msgSend_objectID(v73, v99, v100);
        sub_22E60AE14(v152, &v157);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (++v70 >= v69)
        {
          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v148, v178, 16);
          if (!v69)
          {
            break;
          }

          v70 = 0;
        }
      }
    }

    v102 = ANSTKCFTrackingNode::process(self->_trackingNode, v152, &v173);
    if (v102)
    {
      v106 = objc_msgSend_array(MEMORY[0x277CBEB18], v103, v104);
      v107 = v173;
      if (v173 != v174)
      {
        do
        {
          v108 = *(v107 + 21);
          v164 = *(v107 + 19);
          v165 = v108;
          *v166 = *(v107 + 23);
          *&v166[13] = *(v107 + 197);
          v109 = *(v107 + 13);
          v160 = *(v107 + 11);
          v161 = v109;
          v110 = *(v107 + 17);
          v162 = *(v107 + 15);
          v163 = v110;
          v111 = *(v107 + 7);
          v157 = *(v107 + 5);
          v158 = v111;
          v159 = *(v107 + 9);
          if (*(v107 + 231) < 0)
          {
            sub_22E5DAE38(&__p, v107[26], v107[27]);
          }

          else
          {
            __p = *(v107 + 26);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v105, &__p, 4, v139);
          }

          else
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v105, __p.__r_.__value_.__l.__data_, 4, v139);
          }
          v112 = ;
          v113 = *(&v157 + 3);
          v114 = v158;
          v115 = *(&v158 + 2);
          v116 = [ANSTLabelObject alloc];
          LODWORD(v117) = HIDWORD(v158);
          v118 = v117 / 1000.0;
          *&v118 = v118;
          v120 = objc_msgSend_initWithObjectID_category_boundingBox_confidence_(v116, v119, v157, v112, v113, *&v114, *(&v114 + 1), v115, v118);
          v142 = v112;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v121 = v52;
          v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, &v144, v175, 16);
          if (v125)
          {
            v126 = *v145;
            do
            {
              for (m = 0; m != v125; ++m)
              {
                if (*v145 != v126)
                {
                  objc_enumerationMutation(v121);
                }

                v128 = v157;
                if (objc_msgSend_objectID(*(*(&v144 + 1) + 8 * m), v123, v124) == v128)
                {
                  objc_msgSend_addObject_(v106, v123, v120);
                }
              }

              v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v123, &v144, v175, 16);
            }

            while (v125);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v129 = v107[1];
          if (v129)
          {
            do
            {
              v130 = v129;
              v129 = *v129;
            }

            while (v129);
          }

          else
          {
            do
            {
              v130 = v107[2];
              v131 = *v130 == v107;
              v107 = v130;
            }

            while (!v131);
          }

          v107 = v130;
        }

        while (v130 != v174);
      }

      v132 = [ANSTLabelDetectionResult alloc];
      v13 = objc_msgSend_initWithLabels_(v132, v133, v106);
    }

    else
    {
      v134 = _ANSTLoggingGetOSLogForCategoryANSTKit(v102);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B54C();
      }

      if (!error)
      {
        v13 = 0;
        goto LABEL_63;
      }

      v136 = MEMORY[0x277CCA9B8];
      v176 = *MEMORY[0x277CCA450];
      v177 = @"Failed to post-process. Returning nil.";
      v106 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v135, &v177, &v176, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v136, v137, @"ANSTErrorDomain", 3, v106);
      *error = v13 = 0;
    }

LABEL_63:
    *&v157 = v152;
    sub_22E610A88(&v157);

    *&v157 = v172;
    sub_22E610A88(&v157);
    sub_22E621E90(&v173, v174[0]);
    goto LABEL_64;
  }

  if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v181 = *MEMORY[0x277CCA450];
    v182[0] = @"Do not support ANSTLabelDetectionFrameRateOneTime in tracking, please use ANSTLabelDetectionFrameRateStandard or ANSTLabelDetectionFrameRateLow.";
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v182, &v181, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 3, v11);
  }

  v13 = 0;
LABEL_64:

  return v13;
}

- (void)dealloc
{
  transformedInputImage = self->_transformedInputImage;
  if (transformedInputImage)
  {
    CVPixelBufferRelease(transformedInputImage);
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  CVPixelBufferRelease(self->_bgraInputBuffer);
  self->_bgraInputBuffer = 0;
  trackingNode = self->_trackingNode;
  if (trackingNode)
  {
    ANSTKCFTrackingNode::~ANSTKCFTrackingNode(trackingNode);
    MEMORY[0x2318EA430]();
  }

  if (self->_inputBufferObject_text)
  {
    v6 = e5rt_buffer_object_release();
    if (v6)
    {
      last_error_message = e5rt_get_last_error_message();
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_inputBufferObject_text)", v6, last_error_message);
      v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_inputBufferObject_text_ids)
  {
    v11 = e5rt_buffer_object_release();
    if (v11)
    {
      v12 = e5rt_get_last_error_message();
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_inputBufferObject_text_ids)", v11, v12);
      v15 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputBufferObject_score)
  {
    v16 = e5rt_buffer_object_release();
    if (v16)
    {
      v17 = e5rt_get_last_error_message();
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_score)", v16, v17);
      v20 = _ANSTLoggingGetOSLogForCategoryANSTKit(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputTensorDesc_score)
  {
    v21 = e5rt_tensor_desc_release();
    if (v21)
    {
      v22 = e5rt_get_last_error_message();
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_score)", v21, v22);
      v25 = _ANSTLoggingGetOSLogForCategoryANSTKit(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputPort_score)
  {
    v26 = e5rt_io_port_release();
    if (v26)
    {
      v27 = e5rt_get_last_error_message();
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_score)", v26, v27);
      v30 = _ANSTLoggingGetOSLogForCategoryANSTKit(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputBufferObject_bbox)
  {
    v31 = e5rt_buffer_object_release();
    if (v31)
    {
      v32 = e5rt_get_last_error_message();
      v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_bbox)", v31, v32);
      v35 = _ANSTLoggingGetOSLogForCategoryANSTKit(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputTensorDesc_bbox)
  {
    v36 = e5rt_tensor_desc_release();
    if (v36)
    {
      v37 = e5rt_get_last_error_message();
      v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_bbox)", v36, v37);
      v40 = _ANSTLoggingGetOSLogForCategoryANSTKit(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputPort_bbox)
  {
    v41 = e5rt_io_port_release();
    if (v41)
    {
      v42 = e5rt_get_last_error_message();
      v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_bbox)", v41, v42);
      v45 = _ANSTLoggingGetOSLogForCategoryANSTKit(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputPort_text_feats)
  {
    v46 = e5rt_io_port_release();
    if (v46)
    {
      v47 = e5rt_get_last_error_message();
      v49 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v48, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_text_feats)", v46, v47);
      v50 = _ANSTLoggingGetOSLogForCategoryANSTKit(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputTensorDesc_text_feats)
  {
    v51 = e5rt_tensor_desc_release();
    if (v51)
    {
      v52 = e5rt_get_last_error_message();
      v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_text_feats)", v51, v52);
      v55 = _ANSTLoggingGetOSLogForCategoryANSTKit(v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputBufferObject_text_feats)
  {
    v56 = e5rt_buffer_object_release();
    if (v56)
    {
      v57 = e5rt_get_last_error_message();
      v59 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_text_feats)", v56, v57);
      v60 = _ANSTLoggingGetOSLogForCategoryANSTKit(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->decoder_operation)
  {
    v61 = e5rt_execution_stream_operation_release();
    if (v61)
    {
      v62 = e5rt_get_last_error_message();
      v64 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&decoder_operation)", v61, v62);
      v65 = _ANSTLoggingGetOSLogForCategoryANSTKit(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->decoder_stream)
  {
    v66 = e5rt_execution_stream_release();
    if (v66)
    {
      v67 = e5rt_get_last_error_message();
      v69 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v68, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&decoder_stream)", v66, v67);
      v70 = _ANSTLoggingGetOSLogForCategoryANSTKit(v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->encoder_operation)
  {
    v71 = e5rt_execution_stream_operation_release();
    if (v71)
    {
      v72 = e5rt_get_last_error_message();
      v74 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v73, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&encoder_operation)", v71, v72);
      v75 = _ANSTLoggingGetOSLogForCategoryANSTKit(v74);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->encoder_stream)
  {
    v76 = e5rt_execution_stream_release();
    if (v76)
    {
      v77 = e5rt_get_last_error_message();
      v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v78, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&encoder_stream)", v76, v77);
      v80 = _ANSTLoggingGetOSLogForCategoryANSTKit(v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  textFeature = self->_textFeature;
  if (textFeature)
  {
    free(textFeature);
  }

  self->_textFeature = 0;
  textIds = self->_textIds;
  if (textIds)
  {
    free(textIds);
  }

  self->_textIds = 0;
  v83.receiver = self;
  v83.super_class = ANSTLabelDetection;
  [(ANSTLabelDetection *)&v83 dealloc];
}

- (BOOL)addSupportedLabels:(id)labels error:(id *)error
{
  v86[1] = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  v9 = labelsCopy;
  if (self->_readyForInference)
  {
    v75 = labelsCopy;
    v10 = objc_msgSend_count(labelsCopy, v7, v8);
    errorCopy = error;
    v13 = objc_msgSend_count(v9, v11, v12);
    v71 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v10, 3uLL));
    if (!v71)
    {
LABEL_34:
      objc_msgSend_addObjectsFromArray_(self->_currentLabels, v14, v75);
      v60 = objc_msgSend_count(self->_currentFeatureMap, v58, v59);
      if (v60 >= 0x65)
      {
        v63 = v60 - 100;
        do
        {
          v64 = objc_msgSend_firstObject(self->_currentLabels, v61, v62);
          objc_msgSend_removeObjectForKey_(self->_currentFeatureMap, v65, v64);
          objc_msgSend_removeObject_(self->_currentLabels, v66, v64);

          --v63;
        }

        while (v63);
      }

      v67 = 1;
      goto LABEL_41;
    }

    v16 = v13;
    v74 = 0;
    v72 = 0;
    while (1)
    {
      v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15);
      v19 = 8;
      v20 = v74;
      do
      {
        if (v20 >= v16)
        {
          objc_msgSend_addObject_(v18, v17, @"none");
        }

        else
        {
          v21 = objc_msgSend_objectAtIndexedSubscript_(v75, v17, v20);
          objc_msgSend_addObject_(v18, v22, v21);
        }

        ++v20;
        --v19;
      }

      while (v19);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v23 = v18;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v80, v84, 16);
      if (v25)
      {
        v26 = *v81;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v81 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v80 + 1) + 8 * i);
            v31 = objc_msgSend_UTF8String(v28, v29, v30);
            sub_22E5D8EB4(__p, v31);
            sub_22E617BB0(self->_bpeApplyer.__ptr_, __p, &v76);
            v33 = v76;
            v34 = (v77 - v76) >> 2;
            textIds = self->_textIds;
            v36 = (v77 - 4);
            v37 = -77;
            v38 = v76;
            do
            {
              if (v37 + 77 >= v34)
              {
                v39 = v36;
              }

              else
              {
                v39 = v38;
              }

              *textIds++ = *v39;
              ++v38;
            }

            while (!__CFADD__(v37++, 1));
            self->_textIds = textIds;
            if (v33)
            {
              v77 = v33;
              operator delete(v33);
            }

            if (v79 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v32, &v80, v84, 16);
        }

        while (v25);
      }

      v41 = self->_textIds - 616;
      self->_textIds = v41;
      if ((objc_msgSend_updateTextIds_error_(self, v42, v41, errorCopy) & 1) == 0 || !objc_msgSend_executeEncoderInferenceWithError_(self, v43, errorCopy))
      {
        break;
      }

      outputTextFeatsSurface = self->_outputTextFeatsSurface;
      IOSurfaceLock(outputTextFeatsSurface, 1u, 0);
      BaseAddress = IOSurfaceGetBaseAddress(outputTextFeatsSurface);
      IOSurfaceUnlock(outputTextFeatsSurface, 1u, 0);
      for (j = 0; j < objc_msgSend_count(v23, v46, v47); ++j)
      {
        v50 = objc_msgSend_objectAtIndexedSubscript_(v23, v49, j);
        v53 = objc_msgSend_lowercaseString(v50, v51, v52);

        if ((objc_msgSend_isEqualToString_(v53, v54, @"none") & 1) == 0)
        {
          v56 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v55, BaseAddress, 2048);
          objc_msgSend_setObject_forKeyedSubscript_(self->_currentFeatureMap, v57, v56, v53);
        }

        BaseAddress += 2048;
      }

      v74 += 8;
      if (++v72 == v71)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (!error)
    {
      v67 = 0;
      goto LABEL_42;
    }

    v68 = MEMORY[0x277CCA9B8];
    v85 = *MEMORY[0x277CCA450];
    v75 = labelsCopy;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v86, &v85, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v68, v69, @"ANSTErrorDomain", 4, v23);
  }

  v67 = 0;
LABEL_41:
  v9 = v75;
LABEL_42:

  return v67;
}

- (NSSet)supportedLabels
{
  v3 = MEMORY[0x277CBEB58];
  v4 = objc_msgSend_allKeys(self->_currentFeatureMap, a2, v2);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  objc_msgSend_removeObject_(v6, v7, @"none");

  return v6;
}

@end