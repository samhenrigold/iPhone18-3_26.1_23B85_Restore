@interface ICPostToInstagramAction
- (id)inputContentClasses;
- (void)appDidResume:(id)resume;
- (void)dealloc;
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
- (void)shareAsALAssetWithItem:(id)item caption:(id)caption userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
- (void)shareAsImageFileWithItem:(id)item caption:(id)caption userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation ICPostToInstagramAction

- (void)shareAsImageFileWithItem:(id)item caption:(id)caption userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  captionCopy = caption;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__ICPostToInstagramAction_shareAsImageFileWithItem_caption_userInterface_successHandler_errorHandler___block_invoke;
  v17[3] = &unk_1E837B3C8;
  v17[4] = self;
  v18 = captionCopy;
  v19 = errorHandlerCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = captionCopy;
  v16 = errorHandlerCopy;
  [item getFileRepresentation:v17 forType:0];
}

void __102__ICPostToInstagramAction_shareAsImageFileWithItem_caption_userInterface_successHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 wfName];
    v6 = [v5 stringByAppendingPathExtension:@"ig"];

    v7 = [MEMORY[0x1E6996F68] proposedTemporaryFileURLForFilename:v6];
    v23 = 0;
    [v4 writeToFileURL:v7 overwriting:0 error:&v23];
    v8 = v23;
    v9 = MEMORY[0x1E6996E20];
    v10 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.instagram.photo"];
    v11 = [v9 fileWithURL:v7 options:1 ofType:v10];

    if (!v11)
    {
      (*(*(a1 + 48) + 16))();
    }

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *(a1 + 32);
    v14 = getUIApplicationWillEnterForegroundNotification();
    [v12 addObserver:v13 selector:sel_appDidResume_ name:v14 object:0];

    [*(a1 + 32) setInstagramRepresentation:v11];
    v15 = *(a1 + 40);
    v24 = @"InstagramCaption";
    v25[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [(objc_class *)getUIPasteboardClass_49609() generalPasteboard];
    [v17 setString:*(a1 + 40)];

    v18 = [*(a1 + 32) app];
    v19 = [v11 fileURL];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __102__ICPostToInstagramAction_shareAsImageFileWithItem_caption_userInterface_successHandler_errorHandler___block_invoke_2;
    v20[3] = &unk_1E837B3A0;
    v21 = *(a1 + 56);
    v22 = *(a1 + 48);
    [v18 openFile:v19 withAnnotation:v16 completionHandler:v20];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __102__ICPostToInstagramAction_shareAsImageFileWithItem_caption_userInterface_successHandler_errorHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)shareAsALAssetWithItem:(id)item caption:(id)caption userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  interfaceCopy = interface;
  captionCopy = caption;
  asset = [item asset];
  aLAssetURL = [asset ALAssetURL];

  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v16 = [uRLQueryAllowedCharacterSet mutableCopy];

  [v16 removeCharactersInString:@"?&="];
  v17 = MEMORY[0x1E695DFF8];
  v18 = MEMORY[0x1E696AEC0];
  absoluteString = [aLAssetURL absoluteString];
  v20 = [absoluteString stringByAddingPercentEncodingWithAllowedCharacters:v16];
  v21 = [captionCopy stringByAddingPercentEncodingWithAllowedCharacters:v16];
  v22 = [v18 stringWithFormat:@"instagram://library?AssetPath=%@&InstagramCaption=%@", v20, v21];
  v23 = [v17 URLWithString:v22];

  generalPasteboard = [(objc_class *)getUIPasteboardClass_49609() generalPasteboard];
  [generalPasteboard setString:captionCopy];

  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __100__ICPostToInstagramAction_shareAsALAssetWithItem_caption_userInterface_successHandler_errorHandler___block_invoke;
  v27[3] = &unk_1E837F0F0;
  v28 = handlerCopy;
  v26 = handlerCopy;
  [mEMORY[0x1E6996CA8] openURL:v23 withBundleIdentifier:@"com.burbn.instagram" userInterface:interfaceCopy completionHandler:v27];
}

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  v30[2] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  parametersCopy = parameters;
  interfaceCopy = interface;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __103__ICPostToInstagramAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke;
  v23[3] = &unk_1E83806C0;
  v24 = inputCopy;
  v25 = parametersCopy;
  selfCopy = self;
  v27 = interfaceCopy;
  v28 = errorHandlerCopy;
  v29 = handlerCopy;
  v18 = handlerCopy;
  v19 = interfaceCopy;
  v20 = parametersCopy;
  v21 = errorHandlerCopy;
  v22 = inputCopy;
  [v22 generateCollectionByCoercingToItemClasses:v17 completionHandler:v23];
}

void __103__ICPostToInstagramAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a2 items];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [*(a1 + 40) objectForKey:@"InstagramCaption"];
    v10 = v9;
    v11 = &stru_1F4A1C408;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 preferredFileType], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "conformsToUTType:", *MEMORY[0x1E6982E30]), v13, (v14 & 1) == 0))
    {
      [*(a1 + 48) shareAsALAssetWithItem:v8 caption:v12 userInterface:*(a1 + 56) successHandler:*(a1 + 72) errorHandler:*(a1 + 64)];
    }

    else
    {
      [*(a1 + 48) shareAsImageFileWithItem:v8 caption:v12 userInterface:*(a1 + 56) successHandler:*(a1 + 72) errorHandler:*(a1 + 64)];
    }
  }

  else
  {
    v15 = [*(a1 + 32) collectionByFilteringToItemClass:objc_opt_class() excludedItems:0];
    v16 = [v15 numberOfItems];

    v17 = *(a1 + 64);
    if (!v16)
    {
      (*(v17 + 16))(v17, v6);
      goto LABEL_11;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A798];
    v23[0] = *MEMORY[0x1E696A588];
    v12 = WFLocalizedString(@"Could Not Post Video");
    v24[0] = v12;
    v23[1] = *MEMORY[0x1E696A578];
    v20 = WFLocalizedString(@"Shortcuts can only post video on Instagram if the video is in a photo album.\n\nTry putting a “Save to Photos” action before “Post on Instagram.”");
    v24[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v22 = [v18 errorWithDomain:v19 code:79 userInfo:v21];
    (*(v17 + 16))(v17, v22);
  }

LABEL_11:
}

- (id)inputContentClasses
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)appDidResume:(id)resume
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = getUIApplicationWillEnterForegroundNotification();
  [defaultCenter removeObserver:self name:v5 object:0];

  [(ICPostToInstagramAction *)self setInstagramRepresentation:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getUIApplicationWillEnterForegroundNotification();
  [defaultCenter removeObserver:self name:v4 object:0];

  v5.receiver = self;
  v5.super_class = ICPostToInstagramAction;
  [(ICPostToInstagramAction *)&v5 dealloc];
}

@end