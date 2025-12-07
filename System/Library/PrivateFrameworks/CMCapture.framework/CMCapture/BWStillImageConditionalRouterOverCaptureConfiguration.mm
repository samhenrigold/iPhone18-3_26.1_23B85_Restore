@interface BWStillImageConditionalRouterOverCaptureConfiguration
+ (id)overCaptureConfiguration;
- (BWStillImageConditionalRouterOverCaptureConfiguration)init;
@end

@implementation BWStillImageConditionalRouterOverCaptureConfiguration

+ (id)overCaptureConfiguration
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BWStillImageConditionalRouterOverCaptureConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterOverCaptureConfiguration;
  v2 = [(BWStillImageConditionalRouterConfiguration *)&v5 initWithNumberOfOutputs:3];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageConditionalRouterConfiguration *)v2 setShouldEmitSampleBufferDecisionProvider:&__block_literal_global_131];
  }

  return v3;
}

uint64_t __61__BWStillImageConditionalRouterOverCaptureConfiguration_init__block_invoke(int a1, CMAttachmentBearerRef target, _DWORD *a3)
{
  *a3 = 0;
  v5 = CMGetAttachment(target, @"BWStillImageCaptureSettings", 0);
  if (v5)
  {
    v6 = v5;
    v7 = [CMGetAttachment(target *off_1E798A3C8];
    if (v7)
    {
      v8 = v7;
      if ([objc_msgSend(v6 "captureStreamSettings")] >= 2)
      {
        v9 = [MEMORY[0x1E695DF70] array];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v6 captureStreamSettings];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * i);
              if ([v15 hasValidFrames])
              {
                [v9 addObject:{objc_msgSend(v15, "portType")}];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v18 count:16];
          }

          while (v12);
        }

        v16 = *off_1E798A0C0;
        if ([v9 containsObject:*off_1E798A0C0] && objc_msgSend(v9, "containsObject:", *off_1E798A0D8))
        {
          *a3 = objc_msgSend_isEqualToString_(v8);
        }

        if ([v9 containsObject:*off_1E798A0D0] && objc_msgSend(v9, "containsObject:", v16))
        {
          *a3 = objc_msgSend_isEqualToString_(v8);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  return 1;
}

@end