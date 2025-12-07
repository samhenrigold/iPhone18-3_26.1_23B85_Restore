@interface BWFigCaptureStreamsMapper
- (uint64_t)bwFigCaptureStreamForFigCaptureStream:(uint64_t)stream;
- (uint64_t)figCaptureStreamForBWFigCaptureStream:(uint64_t)stream;
- (void)bwFigCaptureStreamsForFigCaptureStreams:(uint64_t)streams;
- (void)dealloc;
- (void)figCaptureStreamsForBWFigCaptureStreams:(uint64_t)streams;
- (void)initWithBWFigCaptureStreams:(void *)streams figCaptureStreams:;
@end

@implementation BWFigCaptureStreamsMapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFigCaptureStreamsMapper;
  [(BWFigCaptureStreamsMapper *)&v3 dealloc];
}

- (void)initWithBWFigCaptureStreams:(void *)streams figCaptureStreams:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWFigCaptureStreamsMapper;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = [a2 copy];
    v5[2] = [streams copy];
  }

  return v5;
}

- (uint64_t)bwFigCaptureStreamForFigCaptureStream:(uint64_t)stream
{
  if (!stream)
  {
    return 0;
  }

  [*(stream + 16) indexOfObject:a2];
  OUTLINED_FUNCTION_79();
  if (v4)
  {
    return 0;
  }

  v6 = v3;
  v7 = *(stream + 8);

  return [v7 objectAtIndexedSubscript:v6];
}

- (uint64_t)figCaptureStreamForBWFigCaptureStream:(uint64_t)stream
{
  if (!stream)
  {
    return 0;
  }

  [*(stream + 8) indexOfObject:a2];
  OUTLINED_FUNCTION_79();
  if (v4)
  {
    return 0;
  }

  v6 = v3;
  v7 = *(stream + 16);

  return [v7 objectAtIndexedSubscript:v6];
}

- (void)bwFigCaptureStreamsForFigCaptureStreams:(uint64_t)streams
{
  v54 = 0;
  if (streams)
  {
    if (a2)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      if (OUTLINED_FUNCTION_1_1(v7, v8, v9, v10, v11, v12, v13, v14, v45, v48, v51, v7, v56, v59, *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78))
      {
        OUTLINED_FUNCTION_20_13();
        *&v15 = 136315394;
        *v57 = v15;
        do
        {
          v16 = 0;
          do
          {
            if (*v80 != v3)
            {
              objc_enumerationMutation(a2);
            }

            v17 = *(*(&v79 + 1) + 8 * v16);
            [*(streams + 16) indexOfObject:{v17, v46, v49}];
            OUTLINED_FUNCTION_79();
            if (v26 || (v18 = [*(streams + 8) objectAtIndexedSubscript:v18]) == 0)
            {
              v35 = OUTLINED_FUNCTION_19_18(v18, v19, v20, v21, v22, v23, v24, v25, v46, v49, v52, v54, v57[0], v57[1], *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SBYTE2(v78), SBYTE3(v78), SHIDWORD(v78));
              if (OUTLINED_FUNCTION_25_14(v35, v36, v37, v38, v39, v40, v41, v42, v47, v50, v53, v55, v58, v60, *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SBYTE2(v78), BYTE3(v78), SHIDWORD(v78)))
              {
                v43 = v4;
              }

              else
              {
                v43 = v4 & 0xFFFFFFFE;
              }

              if (v43)
              {
                *v61 = v57[0];
                *&v61[4] = "[BWFigCaptureStreamsMapper bwFigCaptureStreamsForFigCaptureStreams:]";
                *&v61[12] = 2112;
                *&v61[14] = v17;
                LODWORD(v49) = 22;
                v46 = v61;
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
                v4 = HIDWORD(v78);
              }

              OUTLINED_FUNCTION_1_4();
              v27 = fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v27 = [v54 addObject:v18];
            }

            ++v16;
          }

          while (v2 != v16);
          v2 = OUTLINED_FUNCTION_1_1(v27, v28, v29, v30, v31, v32, v33, v34, v46, v49, v52, v54, v57[0], v57[1], *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
        }

        while (v2);
      }
    }
  }

  return v54;
}

- (void)figCaptureStreamsForBWFigCaptureStreams:(uint64_t)streams
{
  v54 = 0;
  if (streams)
  {
    if (a2)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      if (OUTLINED_FUNCTION_1_1(v7, v8, v9, v10, v11, v12, v13, v14, v45, v48, v51, v7, v56, v59, *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78))
      {
        OUTLINED_FUNCTION_20_13();
        *&v15 = 136315394;
        *v57 = v15;
        do
        {
          v16 = 0;
          do
          {
            if (*v80 != v3)
            {
              objc_enumerationMutation(a2);
            }

            v17 = *(*(&v79 + 1) + 8 * v16);
            [*(streams + 8) indexOfObject:{v17, v46, v49}];
            OUTLINED_FUNCTION_79();
            if (v26 || (v18 = [*(streams + 16) objectAtIndexedSubscript:v18]) == 0)
            {
              v35 = OUTLINED_FUNCTION_19_18(v18, v19, v20, v21, v22, v23, v24, v25, v46, v49, v52, v54, v57[0], v57[1], *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SBYTE2(v78), SBYTE3(v78), SHIDWORD(v78));
              if (OUTLINED_FUNCTION_25_14(v35, v36, v37, v38, v39, v40, v41, v42, v47, v50, v53, v55, v58, v60, *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, SBYTE2(v78), BYTE3(v78), SHIDWORD(v78)))
              {
                v43 = v4;
              }

              else
              {
                v43 = v4 & 0xFFFFFFFE;
              }

              if (v43)
              {
                *v61 = v57[0];
                *&v61[4] = "[BWFigCaptureStreamsMapper figCaptureStreamsForBWFigCaptureStreams:]";
                *&v61[12] = 2112;
                *&v61[14] = v17;
                LODWORD(v49) = 22;
                v46 = v61;
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
                v4 = HIDWORD(v78);
              }

              OUTLINED_FUNCTION_1_4();
              v27 = fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              v27 = [v54 addObject:v18];
            }

            ++v16;
          }

          while (v2 != v16);
          v2 = OUTLINED_FUNCTION_1_1(v27, v28, v29, v30, v31, v32, v33, v34, v46, v49, v52, v54, v57[0], v57[1], *v61, *&v61[8], *&v61[16], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
        }

        while (v2);
      }
    }
  }

  return v54;
}

@end