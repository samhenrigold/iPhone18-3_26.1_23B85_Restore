@interface RegWarpHelperShaders
- (RegWarpHelperShaders)initWithMetalContext:(id)context;
@end

@implementation RegWarpHelperShaders

- (RegWarpHelperShaders)initWithMetalContext:(id)context
{
  contextCopy = context;
  v22 = 0;
  if (!contextCopy)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v15.receiver, v15.super_class, v16, *&v17[1], v18, v19);
    v21 = 0;
    v20 = 0;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_10:
    v7 = 0;
    goto LABEL_5;
  }

  v15.receiver = self;
  v15.super_class = RegWarpHelperShaders;
  v7 = [(RegWarpHelperShaders *)&v15 init];
  if (!v7)
  {
    sub_295893A74();
    goto LABEL_5;
  }

  v8 = objc_msgSend_computePipelineStateFor_constants_fault_(contextCopy, v6, @"rwppDownsampleAndConvert10To8", 0, &v22);
  downsampleAndConvert10To8 = v7->_downsampleAndConvert10To8;
  v7->_downsampleAndConvert10To8 = v8;

  if (!v8)
  {
    sub_295893A04(v7);
    goto LABEL_10;
  }

  v11 = objc_msgSend_computePipelineStateFor_constants_fault_(contextCopy, v10, @"downsampleRGBToLuma", 0, &v22);
  downsampleRGBToLuma = v7->_downsampleRGBToLuma;
  v7->_downsampleRGBToLuma = v11;

  if (!v11)
  {
    sub_295893994(v7);
    goto LABEL_10;
  }

LABEL_5:

  return v7;
}

@end