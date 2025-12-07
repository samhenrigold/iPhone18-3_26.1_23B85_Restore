@interface BWStillImageConditionalRouterUBConfiguration
+ (id)configurationWithPortTypes:(id)types;
- (void)dealloc;
- (void)initWithPortTypes:(void *)types;
@end

@implementation BWStillImageConditionalRouterUBConfiguration

+ (id)configurationWithPortTypes:(id)types
{
  v3 = [[BWStillImageConditionalRouterUBConfiguration alloc] initWithPortTypes:types];

  return v3;
}

BOOL __66__BWStillImageConditionalRouterUBConfiguration_initWithPortTypes___block_invoke(uint64_t a1, CMAttachmentBearerRef target, _DWORD *a3)
{
  v4 = [*(a1 + 32) indexOfObject:{objc_msgSend(CMGetAttachment(target, *off_1E798A3C8, 0), "objectForKeyedSubscript:", *off_1E798B540)}];
  if (a3 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = v4;
  }

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageConditionalRouterUBConfiguration;
  [(BWStillImageConditionalRouterConfiguration *)&v3 dealloc];
}

- (void)initWithPortTypes:(void *)types
{
  typesCopy = types;
  if (types)
  {
    if ([a2 count])
    {
      v13.receiver = typesCopy;
      v13.super_class = BWStillImageConditionalRouterUBConfiguration;
      typesCopy = objc_msgSendSuper2(&v13, sel_initWithNumberOfOutputs_, [a2 count]);
      if (typesCopy)
      {
        typesCopy[5] = a2;
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = __66__BWStillImageConditionalRouterUBConfiguration_initWithPortTypes___block_invoke;
        v11 = &unk_1E7991470;
        v12 = a2;
        [typesCopy setShouldEmitSampleBufferDecisionProvider:&v8];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, v11, v12);

      return 0;
    }
  }

  return typesCopy;
}

@end