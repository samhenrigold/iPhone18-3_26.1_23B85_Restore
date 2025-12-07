@interface LTMGeometryDataV1
- (CGPoint)deepZoomOrigin;
- (CGRect)cropRect;
- (CGRect)sourceRect;
- (CGSize)inputTextureSize;
- (LTMGeometryDataV1)initWithInputTextureWidth:(unint64_t)width height:(unint64_t)height;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCropRect:(CGRect)rect sourceRect:(CGRect)sourceRect;
@end

@implementation LTMGeometryDataV1

- (LTMGeometryDataV1)initWithInputTextureWidth:(unint64_t)width height:(unint64_t)height
{
  v10.receiver = self;
  v10.super_class = LTMGeometryDataV1;
  v6 = [(LTMGeometryDataV1 *)&v10 init];
  v7 = v6;
  if (!v6)
  {
    [LTMGeometryDataV1 initWithInputTextureWidth:height:];
LABEL_8:
    v8 = 0;
    goto LABEL_5;
  }

  if (width < 0x1E0 || height <= 0x13F)
  {
    [LTMGeometryDataV1 initWithInputTextureWidth:height:];
    goto LABEL_8;
  }

  *(v6 + 12) = width;
  *(v6 + 13) = height;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = width;
  *(v6 + 4) = height;
  *(v6 + 5) = ((width - 480) >> 1);
  *(v6 + 6) = ((height - 320) >> 1);
  *(v6 + 56) = xmmword_1C9335BB0;
  *(v6 + 10) = 0;
  *(v6 + 11) = 0;
  *(v6 + 18) = 1065353216;
  v8 = v6;
LABEL_5:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[LTMGeometryDataV1 alloc] initWithInputTextureWidth:self->_inputTextureSize.width height:self->_inputTextureSize.height];
  [(LTMGeometryDataV1 *)v4 setCropRect:self->_cropRect.origin.x sourceRect:self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height, self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height];
  [(LTMGeometryDataV1 *)self inputTextureDownsampleRatio];
  [(LTMGeometryDataV1 *)v4 setInputTextureDownsampleRatio:?];
  [(LTMGeometryDataV1 *)self deepZoomOrigin];
  [(LTMGeometryDataV1 *)v4 setDeepZoomOrigin:?];
  return v4;
}

- (void)setCropRect:(CGRect)rect sourceRect:(CGRect)sourceRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v63 = CGRectIntegral(sourceRect);
  v9 = v63.origin.x;
  v46 = v63.origin.y;
  rect2 = v63.origin.x;
  v10 = v63.origin.y;
  v51 = v63.size.width;
  v11 = v63.size.height;
  v45 = v63.size.height;
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v64 = CGRectIntegral(v63);
  v12 = v64.origin.x;
  v13 = v64.origin.y;
  v14 = v64.size.width;
  v15 = v64.size.height;
  v70.origin.x = v9;
  v70.origin.y = v10;
  v70.size.width = v51;
  v70.size.height = v11;
  v65 = CGRectIntersection(self->_inputTextureRect, v70);
  v16 = v65.origin.x;
  rect1 = v65.origin.y;
  v17 = v65.size.width;
  v18 = v65.size.height;
  v71.origin.x = v12;
  v71.origin.y = v13;
  v71.size.width = v14;
  v71.size.height = v15;
  v66 = CGRectIntersection(self->_inputTextureRect, v71);
  v52 = v66.origin.x;
  v49 = v66.size.width;
  v50 = v66.origin.y;
  v48 = v66.size.height;
  v55 = v16;
  v66.origin.x = v16;
  v72.origin.y = v46;
  v66.origin.y = rect1;
  v66.size.width = v17;
  v66.size.height = v18;
  v72.origin.x = rect2;
  v72.size.width = v51;
  v72.size.height = v45;
  if (!CGRectEqualToRect(v66, v72))
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v67.origin.x = v52;
  v73.origin.x = v12;
  v67.size.width = v49;
  v67.origin.y = v50;
  v67.size.height = v48;
  v73.origin.y = v13;
  v73.size.width = v14;
  v73.size.height = v15;
  r1 = v18;
  if (!CGRectEqualToRect(v67, v73))
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v62;
    v22 = v61;
    if (os_log_type_enabled(v20, v61))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v58 = 136315138;
      v59 = "[LTMGeometryDataV1 setCropRect:sourceRect:]";
      _os_log_send_and_compose_impl(v23, 0, v60, 128, &dword_1C92CA000, v20, v22, "<<<< LTMAlgorithm >>>> %s: The cropRect doesn't lie inside an input texture", &v58);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v51 < 480.0 || v45 < 320.0)
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v62;
    v28 = v61;
    if (os_log_type_enabled(v26, v61))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v58 = 136315138;
      v59 = "[LTMGeometryDataV1 setCropRect:sourceRect:]";
      _os_log_send_and_compose_impl(v29, 0, v60, 128, &dword_1C92CA000, v26, v28, "<<<< LTMAlgorithm >>>> %s: The sourceRect is too small", &v58);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v25 = self->_minimumRect.origin.x;
    rect1 = self->_minimumRect.origin.y;
    v17 = self->_minimumRect.size.width;
    r1 = self->_minimumRect.size.height;
    v24 = v52;
  }

  else
  {
    v24 = v52;
    v25 = v55;
  }

  if (v14 < 480.0 || v15 < 320.0)
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v34 = v62;
    v35 = v61;
    if (os_log_type_enabled(v33, v61))
    {
      v36 = v34;
    }

    else
    {
      v36 = v34 & 0xFFFFFFFE;
    }

    if (v36)
    {
      v58 = 136315138;
      v59 = "[LTMGeometryDataV1 setCropRect:sourceRect:]";
      _os_log_send_and_compose_impl(v36, 0, v60, 128, &dword_1C92CA000, v33, v35, "<<<< LTMAlgorithm >>>> %s: The cropRect is too small", &v58);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v24 = self->_minimumRect.origin.x;
    v31 = self->_minimumRect.origin.y;
    v32 = self->_minimumRect.size.width;
    v30 = self->_minimumRect.size.height;
  }

  else
  {
    v30 = v48;
    v32 = v49;
    v31 = v50;
  }

  v56 = v25;
  v68.origin.x = v25;
  v68.origin.y = rect1;
  v53 = v17;
  v68.size.width = v17;
  v68.size.height = r1;
  v74.origin.x = v24;
  v74.origin.y = v31;
  v74.size.width = v32;
  v74.size.height = v30;
  v69 = CGRectIntersection(v68, v74);
  v37 = v69.origin.x;
  v38 = v69.origin.y;
  v39 = v69.size.width;
  v40 = v69.size.height;
  v69.origin.x = v24;
  v69.origin.y = v31;
  v69.size.width = v32;
  v69.size.height = v30;
  v75.origin.x = v37;
  v75.origin.y = v38;
  v75.size.width = v39;
  v75.size.height = v40;
  if (!CGRectEqualToRect(v69, v75))
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v42 = v62;
    v43 = v61;
    if (os_log_type_enabled(v41, v61))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 0xFFFFFFFE;
    }

    if (v44)
    {
      v58 = 136315138;
      v59 = "[LTMGeometryDataV1 setCropRect:sourceRect:]";
      _os_log_send_and_compose_impl(v44, 0, v60, 128, &dword_1C92CA000, v41, v43, "<<<< LTMAlgorithm >>>> %s: The mCropRect is larger than the mSourceRect", &v58);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_cropRect.origin.x = v37;
  self->_cropRect.origin.y = v38;
  self->_cropRect.size.width = v39;
  self->_cropRect.size.height = v40;
  self->_sourceRect.origin.x = v56;
  self->_sourceRect.origin.y = rect1;
  self->_sourceRect.size.width = v53;
  self->_sourceRect.size.height = r1;
}

- (CGPoint)deepZoomOrigin
{
  x = self->_deepZoomOrigin.x;
  y = self->_deepZoomOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)inputTextureSize
{
  width = self->_inputTextureSize.width;
  height = self->_inputTextureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithInputTextureWidth:height:.cold.1()
{
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v29, v32, v38, v40, v41, v42);
  OUTLINED_FUNCTION_2();
  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v30, v33, v35, v36, v37))
  {
    v17 = v1;
  }

  else
  {
    v17 = v1 & 0xFFFFFFFE;
  }

  if (v17)
  {
    OUTLINED_FUNCTION_3("[LTMGeometryDataV1 initWithInputTextureWidth:height:]");
    v17 = OUTLINED_FUNCTION_4(v18, v19, v20, v21, &dword_1C92CA000, v22, v23, "<<<< LTMAlgorithm >>>> %s: Input image too small", v26, v28, v31, v34);
    v24 = v17;
  }

  else
  {
    v24 = 0;
  }

  OUTLINED_FUNCTION_0(v17, v11, v12, v24, v13, v14, v15, v16, v26, v28, v31, v34, SHIDWORD(v34), v39);
}

- (void)initWithInputTextureWidth:height:.cold.2()
{
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v29, v32, v38, v40, v41, v42);
  OUTLINED_FUNCTION_2();
  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v30, v33, v35, v36, v37))
  {
    v17 = v1;
  }

  else
  {
    v17 = v1 & 0xFFFFFFFE;
  }

  if (v17)
  {
    OUTLINED_FUNCTION_3("[LTMGeometryDataV1 initWithInputTextureWidth:height:]");
    v17 = OUTLINED_FUNCTION_4(v18, v19, v20, v21, &dword_1C92CA000, v22, v23, "<<<< LTMAlgorithm >>>> %s: LTMGeometryData init failed", v26, v28, v31, v34);
    v24 = v17;
  }

  else
  {
    v24 = 0;
  }

  OUTLINED_FUNCTION_0(v17, v11, v12, v24, v13, v14, v15, v16, v26, v28, v31, v34, SHIDWORD(v34), v39);
}

@end