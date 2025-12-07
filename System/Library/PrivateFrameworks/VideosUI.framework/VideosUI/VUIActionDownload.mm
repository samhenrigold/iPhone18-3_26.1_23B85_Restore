@interface VUIActionDownload
- (NSString)actionType;
- (VUIActionDownload)initWithContextData:(id)data appContext:(id)context;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionDownload

- (VUIActionDownload)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = VUIActionDownload;
  v6 = [(VUIActionDownload *)&v14 init];
  if (v6)
  {
    v7 = [dataCopy vui_dictionaryForKey:@"videosPlayable"];
    v8 = [dataCopy vui_dictionaryForKey:@"contentMetadata"];
    v9 = [dataCopy copy];
    contextData = v6->_contextData;
    v6->_contextData = v9;

    v11 = [[VUIVideosPlayable alloc] initWithDictionary:v7 andMetadataDictionary:v8];
    videosPlayable = v6->_videosPlayable;
    v6->_videosPlayable = v11;
  }

  return v6;
}

- (NSString)actionType
{
  contextData = [(VUIActionDownload *)self contextData];
  v3 = [contextData vui_stringForKey:@"action"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"download";
  }

  v6 = v5;

  return &v5->isa;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  videosPlayable = [(VUIActionDownload *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIActionDownload *)self videosPlayable];
    v9 = [[VUIUniversalAssetController alloc] initWithVideosPlayable:videosPlayable2];
    actionType = [(VUIActionDownload *)self actionType];
    v11 = [actionType isEqualToString:@"remove"];

    if (v11)
    {
      v13 = VUIDefaultLogObject(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        adamID = [videosPlayable2 adamID];
        *buf = 138412290;
        v33 = adamID;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIActionDownload - removing download with id %@", buf, 0xCu);
      }

      [(VUIUniversalAssetController *)v9 cancelAndRemoveDownload];
      if (!handlerCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      actionType2 = [(VUIActionDownload *)self actionType];
      v17 = [actionType2 isEqualToString:@"status"];

      if (v17)
      {
        v19 = VUIDefaultLogObject(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          state = [(VUIUniversalAssetController *)v9 state];
          v21 = VUIMediaEntityAssetControllerStatusLogString([state status]);
          *buf = 138412290;
          v33 = v21;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIActionDownload - asset download status: %@", buf, 0xCu);
        }

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_21;
      }

      state2 = [(VUIUniversalAssetController *)v9 state];
      status = [state2 status];

      if (!status)
      {
        v28 = +[VUIPlaybackSettings sharedSettings];
        preferredWifiDownloadQuality = [v28 preferredWifiDownloadQuality];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __66__VUIActionDownload_performWithTargetResponder_completionHandler___block_invoke;
        v30[3] = &unk_1E872E470;
        v31 = handlerCopy;
        [(VUIUniversalAssetController *)v9 startDownloadAllowingCellular:0 quality:preferredWifiDownloadQuality shouldMarkAsDeletedOnCancellationOrFailure:0 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:v30];

        goto LABEL_21;
      }

      v25 = VUIDefaultLogObject(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        state3 = [(VUIUniversalAssetController *)v9 state];
        v27 = VUIMediaEntityAssetControllerStatusLogString([state3 status]);
        *buf = 138412290;
        v33 = v27;
        _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUIActionDownload - asset is already in a downloading state %@", buf, 0xCu);
      }

      if (!handlerCopy)
      {
        goto LABEL_21;
      }
    }

    handlerCopy[2](handlerCopy, 1);
LABEL_21:

    goto LABEL_22;
  }

  v15 = VUIDefaultLogObject(v7);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [VUIActionDownload performWithTargetResponder:v15 completionHandler:?];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_22:
}

uint64_t __66__VUIActionDownload_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end