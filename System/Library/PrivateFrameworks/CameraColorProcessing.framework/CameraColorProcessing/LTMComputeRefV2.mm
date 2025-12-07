@interface LTMComputeRefV2
- (LTMComputeRefV2)init;
@end

@implementation LTMComputeRefV2

- (LTMComputeRefV2)init
{
  v15.receiver = self;
  v15.super_class = LTMComputeRefV2;
  v3 = [(LTMComputeRefV2 *)&v15 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v8[0], v8[1], v9, v10, v11, v12);
    v14 = 0;
    v13 = 0;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

@end