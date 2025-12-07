@interface BWDeferredCaptureContainer
+ (id)captureRequestIdentifierForManifest:(id)manifest;
+ (id)timeForManifest:(id)manifest index:(unint64_t)index;
- (BWDeferredCaptureContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l flushBuffersUponCommit:(BOOL)commit err:(int *)err;
- (id)copyXPCEncoding:(int *)encoding;
- (int)abort;
- (int)commit;
- (int)commitArray:(id)array tag:(id)tag;
- (int)commitBuffer:(__CVBuffer *)buffer tag:(id)tag bufferType:(unint64_t)type captureFrameFlags:(unint64_t)flags compressionProfile:(int)profile metadataTag:(id)metadataTag rawThumbnailsBufferTag:(id)bufferTag rawThumbnailsMetadataTag:(id)self0 mainRawThumbnailBufferTag:(id)self1 mainRawThumbnailMetadataTag:(id)self2 sifrRawThumbnailBufferTag:(id)self3 sifrRawThumbnailMetadataTag:(id)self4 portType:(id)self5;
- (int)commitDictionary:(id)dictionary tag:(id)tag;
- (int)commitInference:(id)inference tag:(id)tag inferenceAttachmentKey:(id)key portType:(id)type;
- (int)commitInferenceBuffer:(__CVBuffer *)buffer tag:(id)tag metadataTag:(id)metadataTag inferenceAttachedMediaKey:(id)key compressionProfile:(int)profile portType:(id)type;
- (int)commitMetadata:(id)metadata tag:(id)tag bufferTag:(id)bufferTag;
- (int)commitPhotoDescriptor:(id)descriptor;
- (int)commitStillImageSettings:(id)settings;
- (int)flush;
- (int)preflush;
- (int)waitForFlushWithTimeoutInSeconds:(int)seconds;
- (uint64_t)_addIntermediateObjectToXPCDictionary:(void *)dictionary xpcDictionary:;
- (uint64_t)_createFolders;
- (void)dealloc;
@end

@implementation BWDeferredCaptureContainer

+ (id)captureRequestIdentifierForManifest:(id)manifest
{
  if (manifest)
  {

    return [manifest objectForKeyedSubscript:@"CaptureRequestIdentifier"];
  }

  else
  {
    [(BWDeferredCaptureContainer *)self captureRequestIdentifierForManifest:a2];
    return 0;
  }
}

- (BWDeferredCaptureContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l flushBuffersUponCommit:(BOOL)commit err:(int *)err
{
  v13 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [BWDeferredCaptureContainer initWithApplicationID:identifier captureRequestIdentifier:? baseFolderURL:? flushBuffersUponCommit:? err:?];
  }

  v17 = 0;
  v16.receiver = self;
  v16.super_class = BWDeferredCaptureContainer;
  v14 = [(BWDeferredContainer *)&v16 initWithApplicationID:d captureRequestIdentifier:identifier baseFolderURL:l queuePriority:14 err:&v17];
  if (v14)
  {
    [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:name:" name:3, identifier];
    v14->_flushQueue = FigDispatchQueueCreateWithPriority();
    v14->_flushGroup = dispatch_group_create();
    v14->_flushBuffersUponCommit = commit;
    v14->_committed = 0;
    v14->_preflushed = 0;
    v14->_cacheExpiryTime = -1;
    v14->super._intermediates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->super._photoDescriptors = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->super._pipelineParameters = objc_alloc_init(BWDeferredPipelineParameters);
  }

  if (err)
  {
    *err = v17;
  }

  if (*v13 == 1)
  {
    kdebug_trace();
  }

  return v14;
}

- (void)dealloc
{
  [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 3];

  dispatch_release(self->_flushQueue);
  dispatch_release(self->_flushGroup);
  v3.receiver = self;
  v3.super_class = BWDeferredCaptureContainer;
  [(BWDeferredContainer *)&v3 dealloc];
}

- (id)copyXPCEncoding:(int *)encoding
{
  pthread_rwlock_rdlock(&self->super._lock);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
LABEL_24:
    v9 = 0;
LABEL_27:
    pthread_rwlock_unlock(&self->super._lock);

    v20 = -16133;
LABEL_17:
    xpc_release(v5);
    v5 = 0;
    goto LABEL_18;
  }

  v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  if (!v6)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
    goto LABEL_24;
  }

  v7 = v6;
  [v6 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLong:", self->super._manifestVersion), @"Version"}];
  [v7 encodeObject:self->super._applicationID forKey:@"ApplicationID"];
  [v7 encodeObject:self->_commitTime forKey:@"CommitTime"];
  [v7 encodeObject:self->super._baseFolderURL forKey:@"BaseFolder"];
  [v7 encodeObject:self->super._captureRequestIdentifier forKey:@"CaptureRequestIdentifier"];
  [v7 encodeObject:self->super._stillImageCaptureSettings forKey:@"StillImageCaptureSettings"];
  [v7 encodeObject:self->super._stillImageSettings forKey:@"StillImageSettings"];
  stillImageProcessingSettings = self->super._stillImageProcessingSettings;
  if (stillImageProcessingSettings)
  {
    [v7 encodeObject:stillImageProcessingSettings forKey:@"StillImageProcessingSettings"];
  }

  [v7 encodeObject:self->super._intermediates forKey:@"Intermediates"];
  [v7 encodeObject:self->super._photoDescriptors forKey:@"PhotoDescriptors"];
  [v7 finishEncoding];
  v9 = [objc_msgSend(v7 "encodedData")];

  v10 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v10)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
    goto LABEL_27;
  }

  v11 = v10;
  xpc_dictionary_set_value(v5, "Container", v10);
  xpc_release(v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
    goto LABEL_27;
  }

  v13 = v12;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  intermediates = self->super._intermediates;
  v15 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(intermediates);
        }

        v19 = [(BWDeferredCaptureContainer *)self _addIntermediateObjectToXPCDictionary:v13 xpcDictionary:?];
        if (v19)
        {
          v20 = v19;
          [BWDeferredCaptureContainer copyXPCEncoding:];
          goto LABEL_16;
        }
      }

      v16 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  xpc_dictionary_set_value(v5, "IntermediateObjects", v13);
  v20 = 0;
LABEL_16:
  pthread_rwlock_unlock(&self->super._lock);
  xpc_release(v13);

  if (v20)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (encoding)
  {
    *encoding = v20;
  }

  return v5;
}

- (int)commitStillImageSettings:(id)settings
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (![settings captureSettings])
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
LABEL_14:
    v6 = -16134;
    goto LABEL_8;
  }

  if (![settings requestedSettings])
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
    goto LABEL_14;
  }

  if (![settings processingSettings])
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
    goto LABEL_14;
  }

  if (self->_committed)
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
    v6 = -16135;
  }

  else
  {
    self->super._stillImageCaptureSettings = [settings captureSettings];
    self->super._stillImageSettings = [objc_msgSend(settings "requestedSettings")];
    self->super._stillImageProcessingSettings = [settings processingSettings];
    pthread_rwlock_unlock(&self->super._lock);
    v6 = 0;
  }

LABEL_8:
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

uint64_t __52__BWDeferredCaptureContainer_commitPhotoDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 photoIdentifier];
  [*(a1 + 32) photoIdentifier];

  return objc_msgSend_isEqualToString_(v3);
}

- (int)commitInference:(id)inference tag:(id)tag inferenceAttachmentKey:(id)key portType:(id)type
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v11 = 0;
  v12 = -16134;
  if (inference && tag && key)
  {
    if (self->_committed)
    {
      v11 = 0;
    }

    else
    {
      if ([inference conformsToProtocol:&unk_1F224F640])
      {
        inferenceCopy = [inference copy];
      }

      else
      {
        inferenceCopy = inference;
      }

      v11 = inferenceCopy;
      if (![(BWDeferredContainer *)self _intermediateForTag:tag])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [[BWDeferredInferenceArrayIntermediate alloc] initWithArray:v11 tag:tag inferenceAttachmentKey:key portType:type URL:[(BWDeferredContainer *)&self->super.super.isa _intermediateArrayURLForTag:tag]];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Committing a deferred inference for key '%@' of type %@ must be implemented.", key, objc_opt_class()), 0}];
            objc_exception_throw(v17);
          }

          v14 = [[BWDeferredInferenceDictionaryIntermediate alloc] initWithDictionary:v11 tag:tag inferenceAttachmentKey:key portType:type URL:[(BWDeferredContainer *)&self->super.super.isa _intermediateArrayURLForTag:tag]];
        }

        v15 = v14;
        if (v14)
        {
          [(BWDeferredIntermediate *)v14 setSettingsID:[(FigCaptureStillImageSettings *)self->super._stillImageSettings settingsID]];
          [(NSMutableArray *)self->super._intermediates addObject:v15];
        }

        v12 = 0;
        goto LABEL_18;
      }
    }

    v12 = -16135;
  }

LABEL_18:
  [BWDeferredCaptureContainer commitInference:v12 tag:&self->super._lock inferenceAttachmentKey:v11 portType:?];
  return v12;
}

- (int)commit
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v4 = pthread_rwlock_wrlock(&self->super._lock);
  if (self->_committed)
  {
    [(BWDeferredCaptureContainer *)v4 commit];
    v5 = -16135;
  }

  else
  {
    self->_committed = 1;
    self->_cacheExpiryTime = dispatch_time(0, 0);
    self->_commitTime = [MEMORY[0x1E695DF00] date];
    v5 = 0;
    self->_commitDurationNS = FigGetUpTimeNanoseconds() - self->super._creationTimeNS;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v5;
}

- (int)abort
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v4 = pthread_rwlock_wrlock(&self->super._lock);
  if (self->_committed)
  {
    [(BWDeferredCaptureContainer *)v4 abort];
    v7 = -16135;
  }

  else
  {
    self->_committed = 1;
    flushGroup = self->_flushGroup;
    v6 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(flushGroup, v6))
    {
      [BWDeferredCaptureContainer abort];
      v7 = -16138;
    }

    else
    {
      v7 = 0;
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

- (int)preflush
{
  if (self->_committed)
  {
    if (self->_preflushed)
    {
      [BWDeferredCaptureContainer preflush];
      v3 = -16135;
    }

    else
    {
      pthread_rwlock_wrlock(&self->super._lock);
      self->_preflushed = 1;
      dispatch_group_enter(self->_flushGroup);
      v3 = 0;
    }
  }

  else
  {
    [BWDeferredCaptureContainer preflush];
    v3 = -16131;
  }

  pthread_rwlock_unlock(&self->super._lock);
  return v3;
}

- (int)flush
{
  v44[0] = 0;
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_rdlock(&self->super._lock);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (!self->_committed || !self->_preflushed)
  {
    code = -16131;
LABEL_27:
    pthread_rwlock_unlock(&self->super._lock);
LABEL_28:
    [+[BWDeferredCaptureContainerManager deleteContainerForApplicationID:v27], "deleteContainerForApplicationID:captureRequestIdentifier:", [(BWStillImageCaptureSettings *)self->super._stillImageCaptureSettings applicationID], self->super._captureRequestIdentifier];
    goto LABEL_29;
  }

  v5 = UpTimeNanoseconds;
  if (dword_1EB58E440)
  {
    v43 = 0;
    v42 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _createFolders = [(BWDeferredCaptureContainer *)self _createFolders];
  if (_createFolders)
  {
    code = _createFolders;
    [(BWDeferredCaptureContainer *)_createFolders flush];
    goto LABEL_27;
  }

  _writeManifest = [(BWDeferredContainer *)self _writeManifest];
  if (_writeManifest)
  {
    code = _writeManifest;
    [(BWDeferredCaptureContainer *)_writeManifest flush];
    goto LABEL_27;
  }

  if ([BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)&self->super.super.isa _pipelineParametersURL] object:self->super._pipelineParameters error:v44])
  {
    if ([BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)&self->super.super.isa _stillImageCaptureSettingsURL] object:self->super._stillImageCaptureSettings error:v44]&& [BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)&self->super.super.isa _stillImageSettingsURL] object:self->super._stillImageSettings error:v44]&& [BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)&self->super.super.isa _stillImageProcessingSettingsURL] object:self->super._stillImageProcessingSettings error:v44])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      intermediates = self->super._intermediates;
      v12 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v30 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(intermediates);
            }

            flush = [*(*(&v30 + 1) + 8 * i) flush];
            if (flush)
            {
              code = flush;
              [BWDeferredCaptureContainer flush];
              goto LABEL_27;
            }
          }

          v13 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v30 objects:v29 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      dispatch_group_leave(self->_flushGroup);
      flushGroup = self->_flushGroup;
      v18 = dispatch_time(0, 10000000000);
      if (dispatch_group_wait(flushGroup, v18))
      {
        [BWDeferredCaptureContainer flush];
        code = -16138;
      }

      else
      {
        code = 0;
      }

      self->_flushDurationNS = FigGetUpTimeNanoseconds() - v5;
    }

    else
    {
      code = [v44[0] code];
    }
  }

  else
  {
    code = [v44[0] code];
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (code)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (dword_1EB58E440)
  {
    v43 = 0;
    v42 = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v43;
    if (os_log_type_enabled(v20, v42))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      settingsID = [(BWStillImageCaptureSettings *)self->super._stillImageCaptureSettings settingsID];
      applicationID = [(BWStillImageCaptureSettings *)self->super._stillImageCaptureSettings applicationID];
      captureRequestIdentifier = self->super._captureRequestIdentifier;
      v34 = 136315907;
      v35 = "[BWDeferredCaptureContainer flush]";
      v36 = 2048;
      v37 = settingsID;
      v38 = 2113;
      v39 = applicationID;
      v40 = 2113;
      v41 = captureRequestIdentifier;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return code;
}

- (int)waitForFlushWithTimeoutInSeconds:(int)seconds
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  flushGroup = self->_flushGroup;
  v7 = dispatch_time(0, 1000000000 * seconds);
  if (dispatch_group_wait(flushGroup, v7))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = -16138;
  }

  else
  {
    v8 = 0;
  }

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v8;
}

+ (id)timeForManifest:(id)manifest index:(unint64_t)index
{
  if (!manifest || (v5 = [manifest objectForKeyedSubscript:@"Photos"]) == 0 || (v6 = objc_msgSend(v5, "objectAtIndexedSubscript:", index)) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  v7 = v6;
  if (![v6 objectForKeyedSubscript:@"Time"])
  {
    return 0;
  }

  [v7 objectForKeyedSubscript:@"Time"];
  v8 = OUTLINED_FUNCTION_17();

  return [v8 dateFromString:?];
}

- (uint64_t)_addIntermediateObjectToXPCDictionary:(void *)dictionary xpcDictionary:
{
  if (result)
  {
    v7 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      xpc_dictionary_set_value(dictionary, [objc_msgSend(a2 "tag")], v5);
      v6 = [a2 archive:&v7];
      if (v6)
      {
        xpc_dictionary_set_value(v5, "Object", v6);
LABEL_5:
        xpc_release(v5);
        return v7;
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    v7 = -16133;
    goto LABEL_5;
  }

  return result;
}

- (uint64_t)_createFolders
{
  if (result)
  {
    v2 = result;
    if (*(result + 321))
    {
      return 0;
    }

    [MEMORY[0x1E696AC08] defaultManager];
    path = [*(v2 + 216) path];
    if (OUTLINED_FUNCTION_63_11(path, v4, path, v5, v6, v7, v8, v9, v38))
    {
      path2 = [*(v2 + 216) path];
      v53 = @"Intermediates";
      [MEMORY[0x1E695DEC8] arrayWithObjects:&path2 count:2];
      v10 = [objc_msgSend(OUTLINED_FUNCTION_7() "fileURLWithPathComponents:"path"")];
      if (OUTLINED_FUNCTION_63_11(v10, v11, v10, v12, v13, v14, v15, v16, v39))
      {
        result = 0;
        *(v2 + 321) = 1;
        return result;
      }

      OUTLINED_FUNCTION_4_64();
      v30 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, v44, v47, 0, path2, v53, v54, v55);
      v25 = OUTLINED_FUNCTION_44_12(v30, v31, v32, v33, v34, v35, v36, v37, v43, v46, v49, v51);
      v28 = v2;
      v29 = 1584;
    }

    else
    {
      OUTLINED_FUNCTION_4_64();
      v17 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v39, v44, v47, 0, path2, v53, v54, v55);
      v25 = OUTLINED_FUNCTION_44_12(v17, v18, v19, v20, v21, v22, v23, v24, v41, v45, v48, v50);
      v28 = v2;
      v29 = 1581;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v25, "<<<< BWDeferredContainer >>>>", v29, v1, v26, v27, v42);
  }

  return result;
}

- (int)commitPhotoDescriptor:(id)descriptor
{
  photoIdentifier = [descriptor photoIdentifier];
  OUTLINED_FUNCTION_57_10();
  if (v7)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (!photoIdentifier)
  {
    goto LABEL_17;
  }

  if (!descriptor)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_17;
  }

  objc_msgSend_presentationTimeStamp(descriptor);
  if ((v29 & 0x100000000) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v15 = -16134;
    goto LABEL_11;
  }

  if (self->_committed)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    photoDescriptors = self->super._photoDescriptors;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __52__BWDeferredCaptureContainer_commitPhotoDescriptor___block_invoke;
    v26 = &unk_1E79998B0;
    descriptorCopy = descriptor;
    [(NSMutableArray *)photoDescriptors indexOfObjectPassingTest:&v23];
    OUTLINED_FUNCTION_79();
    if (v7)
    {
      v9 = [descriptor processingFlags] & 0xFFFFCFFF;
      v10 = [BWPhotoDescriptor alloc];
      photoIdentifier2 = [OUTLINED_FUNCTION_18_0() photoIdentifier];
      v12 = objc_msgSend_time(descriptor);
      timeZone = [descriptor timeZone];
      objc_msgSend_presentationTimeStamp(descriptor);
      v14 = [v3 initWithPhotoIdentifier:photoIdentifier2 processingFlags:v9 | 0x2000u time:v12 timeZone:timeZone presentationTimeStamp:&v20];
      [(NSMutableArray *)self->super._photoDescriptors addObject:v14];

      v15 = 0;
      goto LABEL_11;
    }
  }

  v15 = -16135;
LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);
  OUTLINED_FUNCTION_57_10();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v15;
}

- (int)commitArray:(id)array tag:(id)tag
{
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock((v4 + 16));
  v8 = 0;
  v9 = -16134;
  if (v6 && v5)
  {
    if (*(v4 + 322))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 copy];
      v10 = OUTLINED_FUNCTION_70();
      if (![(BWDeferredContainer *)v10 _intermediateForTag:v11])
      {
        v12 = [BWDeferredArrayIntermediate alloc];
        v13 = OUTLINED_FUNCTION_70();
        [(BWDeferredContainer *)v13 _intermediateArrayURLForTag:v14];
        [OUTLINED_FUNCTION_49_9() initWithArray:? tag:? URL:?];
        OUTLINED_FUNCTION_69_4();
        [OUTLINED_FUNCTION_8() setSettingsID:?];
        OUTLINED_FUNCTION_73_5();

        v9 = 0;
        goto LABEL_9;
      }
    }

    v9 = -16135;
  }

LABEL_9:
  pthread_rwlock_unlock((v4 + 16));

  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v9;
}

- (int)commitBuffer:(__CVBuffer *)buffer tag:(id)tag bufferType:(unint64_t)type captureFrameFlags:(unint64_t)flags compressionProfile:(int)profile metadataTag:(id)metadataTag rawThumbnailsBufferTag:(id)bufferTag rawThumbnailsMetadataTag:(id)self0 mainRawThumbnailBufferTag:(id)self1 mainRawThumbnailMetadataTag:(id)self2 sifrRawThumbnailBufferTag:(id)self3 sifrRawThumbnailMetadataTag:(id)self4 portType:(id)self5
{
  v23 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v24 = -16134;
  if (buffer && tag)
  {
    if (self->_committed)
    {
      v24 = -16135;
    }

    else
    {
      LODWORD(v34) = profile;
      [[BWDeferredBufferIntermediate alloc] initWithBuffer:buffer tag:tag bufferType:type captureFrameFlags:flags metadataTag:metadataTag rawThumbnailsBufferTag:bufferTag rawThumbnailsMetadataTag:thumbnailsMetadataTag mainRawThumbnailBufferTag:thumbnailBufferTag mainRawThumbnailMetadataTag:thumbnailMetadataTag sifrRawThumbnailBufferTag:rawThumbnailBufferTag sifrRawThumbnailMetadataTag:rawThumbnailMetadataTag portType:portType compressionProfile:v34 URL:[(BWDeferredContainer *)&self->super.super.isa _intermediateBufferURLForTag:tag compressionProfile:profile]];
      OUTLINED_FUNCTION_69_4();
      [OUTLINED_FUNCTION_8() setSettingsID:?];
      OUTLINED_FUNCTION_73_5();

      if (self->_flushBuffersUponCommit)
      {
        _createFolders = [(BWDeferredCaptureContainer *)self _createFolders];
        v24 = _createFolders;
        if (_createFolders)
        {
          LODWORD(v29) = _createFolders;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v29, v15, v30, v31, v32, v33, v35, v36);
        }

        else
        {
          flushGroup = self->_flushGroup;
          flushQueue = self->_flushQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __272__BWDeferredCaptureContainer_commitBuffer_tag_bufferType_captureFrameFlags_compressionProfile_metadataTag_rawThumbnailsBufferTag_rawThumbnailsMetadataTag_mainRawThumbnailBufferTag_mainRawThumbnailMetadataTag_sifrRawThumbnailBufferTag_sifrRawThumbnailMetadataTag_portType___block_invoke;
          block[3] = &unk_1E798F870;
          block[4] = rawThumbnailMetadataTag;
          dispatch_group_async(flushGroup, flushQueue, block);
        }
      }

      else
      {
        v24 = 0;
      }

      v23 = MEMORY[0x1E695FF58];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v23 == 1)
  {
    OUTLINED_FUNCTION_58_12(0x6CDu);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v24;
}

- (int)commitMetadata:(id)metadata tag:(id)tag bufferTag:(id)bufferTag
{
  OUTLINED_FUNCTION_57_10();
  if (v9)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v10 = 0;
  v11 = -16134;
  if (metadata && tag)
  {
    if (self->_committed)
    {
      v10 = 0;
    }

    else
    {
      v10 = [metadata copy];
      if (![(BWDeferredContainer *)self _intermediateForTag:tag])
      {
        [[BWDeferredMetadataIntermediate alloc] initWithMetadata:v10 tag:tag bufferTag:bufferTag URL:[(BWDeferredContainer *)&self->super.super.isa _intermediateArrayURLForTag:tag]];
        OUTLINED_FUNCTION_69_4();
        [OUTLINED_FUNCTION_8() setSettingsID:?];
        OUTLINED_FUNCTION_73_5();

        v11 = 0;
        goto LABEL_9;
      }
    }

    v11 = -16135;
  }

LABEL_9:
  pthread_rwlock_unlock(&self->super._lock);

  OUTLINED_FUNCTION_57_10();
  if (v9)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v11;
}

- (int)commitInferenceBuffer:(__CVBuffer *)buffer tag:(id)tag metadataTag:(id)metadataTag inferenceAttachedMediaKey:(id)key compressionProfile:(int)profile portType:(id)type
{
  v10 = *&profile;
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v17 = -16134;
  if (buffer && tag && key)
  {
    if (self->_committed)
    {
      v17 = -16135;
    }

    else
    {
      v18 = [[BWDeferredInferenceBufferIntermediate alloc] initWithBuffer:buffer tag:tag metadataTag:metadataTag inferenceAttachedMediaKey:key portType:type compressionProfile:v10 URL:[(BWDeferredContainer *)&self->super.super.isa _intermediateBufferURLForTag:tag compressionProfile:v10]];
      [(FigCaptureStillImageSettings *)self->super._stillImageSettings settingsID];
      [OUTLINED_FUNCTION_7() setSettingsID:?];
      [(NSMutableArray *)self->super._intermediates addObject:v18];

      if (self->_flushBuffersUponCommit)
      {
        _createFolders = [(BWDeferredCaptureContainer *)self _createFolders];
        v17 = _createFolders;
        if (_createFolders)
        {
          LODWORD(v23) = _createFolders;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v23, v8, v24, block, v26, v27, v28, v29);
        }

        else
        {
          flushGroup = self->_flushGroup;
          flushQueue = self->_flushQueue;
          block = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = __122__BWDeferredCaptureContainer_commitInferenceBuffer_tag_metadataTag_inferenceAttachedMediaKey_compressionProfile_portType___block_invoke;
          v28 = &unk_1E798F870;
          v29 = v18;
          dispatch_group_async(flushGroup, flushQueue, &block);
        }
      }

      else
      {
        v17 = 0;
      }
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_58_12(0x6CDu);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v17;
}

- (int)commitDictionary:(id)dictionary tag:(id)tag
{
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock((v4 + 16));
  v8 = 0;
  v9 = -16134;
  if (v6 && v5)
  {
    if (*(v4 + 322))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 copy];
      v10 = OUTLINED_FUNCTION_70();
      if (![(BWDeferredContainer *)v10 _intermediateForTag:v11])
      {
        v12 = [BWDeferredDictionaryIntermediate alloc];
        v13 = OUTLINED_FUNCTION_70();
        [(BWDeferredContainer *)v13 _intermediateArrayURLForTag:v14];
        [OUTLINED_FUNCTION_49_9() initWithDictionary:? tag:? URL:?];
        OUTLINED_FUNCTION_69_4();
        [OUTLINED_FUNCTION_8() setSettingsID:?];
        OUTLINED_FUNCTION_73_5();

        v9 = 0;
        goto LABEL_9;
      }
    }

    v9 = -16135;
  }

LABEL_9:
  pthread_rwlock_unlock((v4 + 16));

  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v9;
}

- (uint64_t)initWithApplicationID:(uint64_t)a1 captureRequestIdentifier:(uint64_t)a2 baseFolderURL:flushBuffersUponCommit:err:.cold.1(uint64_t a1, uint64_t a2)
{
  [(BWDeferredContainer *)a1 _getUUIDBytes:a2 high:0];
  v3 = OUTLINED_FUNCTION_18_0();
  [(BWDeferredContainer *)v3 _getUUIDBytes:a2 high:1];
  OUTLINED_FUNCTION_28_12();

  return kdebug_trace();
}

- (void)commitInference:(void *)a3 tag:inferenceAttachmentKey:portType:.cold.1(int a1, pthread_rwlock_t *a2, void *a3)
{
  pthread_rwlock_unlock(a2);

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_17_14();

    kdebug_trace();
  }
}

@end