@interface INImage(Workflow)
- (id)wf_contentItemWithCodableAttribute:()Workflow;
- (void)wf_transformUsingCodableAttribute:()Workflow completionHandler:;
@end

@implementation INImage(Workflow)

- (void)wf_transformUsingCodableAttribute:()Workflow completionHandler:
{
  v24 = *MEMORY[0x1E69E9840];
  currentHandler = a3;
  v7 = a4;
  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x2050000000;
  v8 = getINUIImageLoaderClass_softClass;
  v23 = getINUIImageLoaderClass_softClass;
  if (!getINUIImageLoaderClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getINUIImageLoaderClass_block_invoke;
    v19 = &unk_1E837FAC0;
    v20 = &v21;
    __getINUIImageLoaderClass_block_invoke(&v16);
    v8 = *(*(&v21 + 1) + 24);
  }

  v9 = v8;
  _Block_object_dispose(&v21, 8);
  registeredImageLoaderWithScreenDelegate = [v8 registeredImageLoaderWithScreenDelegate];
  v15 = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __VoiceShortcutClientLibraryCore_block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0l;
    v20 = &v15;
    v21 = xmmword_1E837C490;
    v22 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    self = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceShortcutClientLibrary(void)"];
    [currentHandler handleFailureInFunction:self file:@"INImage+Workflow.m" lineNumber:16 description:{@"%s", v15}];

    __break(1u);
    goto LABEL_9;
  }

  v11 = v15;
  if (v15)
  {
LABEL_9:
    free(v11);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__INImage_Workflow__wf_transformUsingCodableAttribute_completionHandler___block_invoke;
  v13[3] = &unk_1E837C458;
  v14 = v7;
  v12 = v7;
  [self retrieveImageDataWithCompletion:v13];
}

- (id)wf_contentItemWithCodableAttribute:()Workflow
{
  v1 = MEMORY[0x1E6996E70];
  v2 = MEMORY[0x1E6996E20];
  _imageData = [self _imageData];
  v4 = [v2 fileWithData:_imageData ofType:0 proposedFilename:0];
  v5 = [v1 itemWithFile:v4];

  return v5;
}

@end