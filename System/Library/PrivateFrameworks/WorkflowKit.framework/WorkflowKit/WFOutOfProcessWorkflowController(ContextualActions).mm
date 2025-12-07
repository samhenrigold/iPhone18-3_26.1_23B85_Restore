@interface WFOutOfProcessWorkflowController(ContextualActions)
+ (id)computeFinderResizedSizesForImages:()ContextualActions inSizes:error:;
@end

@implementation WFOutOfProcessWorkflowController(ContextualActions)

+ (id)computeFinderResizedSizesForImages:()ContextualActions inSizes:error:
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [objc_alloc(MEMORY[0x1E69E0C20]) initWithEnvironment:0 runningContext:0 presentationMode:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke;
  aBlock[3] = &unk_1E837FA70;
  v12 = v11;
  v35 = v12;
  v13 = _Block_copy(aBlock);
  v33 = 0;
  v14 = [v12 synchronousRunnerWithError:&v33 reason:@"computing finder resized image"];
  v15 = v33;
  v16 = v15;
  if (v14)
  {
    v17 = v15;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = __Block_byref_object_copy__15279;
    v38 = __Block_byref_object_dispose__15280;
    v39 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__15279;
    v31 = __Block_byref_object_dispose__15280;
    v32 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke_173;
    v21[3] = &unk_1E8375DC0;
    v22 = v10;
    v23 = &v27;
    v25 = a2;
    selfCopy = self;
    v24 = buf;
    [v14 computeFinderResizedSizesForImages:v9 inSizes:v22 completion:v21];
    v16 = v17;
    if (a5)
    {
      *a5 = v28[5];
    }

    v18 = *(*&buf[8] + 40);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[WFOutOfProcessWorkflowController(ContextualActions) computeFinderResizedSizesForImages:inSizes:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Unable to connect to runner: %@", buf, 0x16u);
    }

    v18 = 0;
  }

  v13[2](v13);

  return v18;
}

@end