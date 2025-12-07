@interface BWDeferredProcessingContainer
- (BOOL)hasBufferForType:(unint64_t)type portType:(id)portType;
- (BOOL)hasInference:(id)inference portType:(id)type;
- (BOOL)hasInferenceBuffer:(id)buffer portType:(id)type;
- (BWDeferredProcessingContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l openForPeeking:(BOOL)peeking err:(int *)p_info;
- (BWDeferredProcessingContainer)initWithApplicationID:(id)d resolvedSettings:(id)settings unresolvedSettings:(id)unresolvedSettings processingSettings:(id)processingSettings pipelineParameters:(id)parameters intermediates:(id)intermediates photoDescriptors:(id)descriptors;
- (BWDeferredProcessingContainer)initWithXPCEncoding:(id)encoding applicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l err:(int *)err;
- (__CVBuffer)copyBufferForTag:(id)tag err:(int *)err;
- (__CVBuffer)copyBufferForType:(unint64_t)type portType:(id)portType metadata:(id *)metadata err:(int *)err;
- (__CVBuffer)copyInferenceBufferForKey:(id)key portType:(id)type err:(int *)err;
- (id)copyArrayForTag:(id)tag customClasses:(id)classes err:(int *)err;
- (id)copyAttributesForBufferType:(unint64_t)type portType:(id)portType err:(int *)err;
- (id)copyBuffersForType:(unint64_t)type portType:(id)portType metadataArray:(id *)array err:(int *)err;
- (id)copyDictionaryForTag:(id)tag customClasses:(id)classes err:(int *)err;
- (id)copyInferenceForKey:(id)key customClasses:(id)classes portType:(id)type err:(int *)err;
- (id)copyMetadataForBufferTag:(id)tag err:(int *)err;
- (id)copyMetadataForTag:(id)tag err:(int *)err;
- (uint64_t)_buildFolderStatistics;
- (uint64_t)_convertIntermediatesToCurrentCompatibleVersion;
- (uint64_t)_copyObjectForTag:(uint64_t)tag customClasses:(int *)classes err:;
- (uint64_t)hasBufferWithCaptureFrameFlags:(uint64_t)flags portType:;
- (void)abortingProcessingDueToError:(int)error;
- (void)dealloc;
- (void)releaseIntermediates;
@end

@implementation BWDeferredProcessingContainer

uint64_t __113__BWDeferredProcessingContainer_initWithApplicationID_captureRequestIdentifier_baseFolderURL_openForPeeking_err___block_invoke(uint64_t a1, void *a2)
{
  [a2 stringByDeletingPathExtension];
  v3 = [*(a1 + 32) tag];

  return objc_msgSend_isEqualToString_(v3);
}

- (BWDeferredProcessingContainer)initWithXPCEncoding:(id)encoding applicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l err:(int *)err
{
  v72[0] = 0;
  code = 0;
  v13 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [BWDeferredProcessingContainer initWithXPCEncoding:identifier applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
    if (encoding)
    {
LABEL_3:
      v70.receiver = self;
      v70.super_class = BWDeferredProcessingContainer;
      v14 = [(BWDeferredContainer *)&v70 initWithApplicationID:d captureRequestIdentifier:identifier baseFolderURL:l queuePriority:39 err:&code];
      if (v14)
      {
        [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:name:" name:4, identifier];
        v14->_isRemote = 1;
        value = xpc_dictionary_get_value(encoding, "Container");
        if (!value)
        {
          [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
          goto LABEL_64;
        }

        xdict = xpc_dictionary_get_value(encoding, "IntermediateObjects");
        if (xdict)
        {
          value = _CFXPCCreateCFObjectFromXPCObject();
          if (value)
          {
            v16 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:value error:v72];
            v17 = v16;
            if (v72[0])
            {
              v53 = v16;
              code = -16132;
              v69 = 0;
              v68 = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            }

            else
            {
              v18 = [v16 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"Version" error:v72];
              if (!v18)
              {
LABEL_71:
                v53 = v17;
                code = [v72[0] code];
                v69 = 0;
                v68 = 0;
                v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
                goto LABEL_75;
              }

              longValue = [v18 longValue];
              v14->super._manifestVersion = longValue;
              if (longValue != 8)
              {
                code = -16130;
                goto LABEL_58;
              }

              v20 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"ApplicationID" error:v72];
              applicationID = v14->super._applicationID;
              if (applicationID)
              {
                if (objc_msgSend_isEqualToString_(applicationID))
                {
                  v22 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"CommitTime" error:v72];
                  if (!v22)
                  {
                    goto LABEL_54;
                  }

                  v23 = v22;
                  v24 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"BaseFolder" error:v72];
                  if (!v24)
                  {
                    goto LABEL_54;
                  }

                  if (([(NSURL *)v14->super._baseFolderURL isEqual:v24]& 1) == 0)
                  {
                    [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                    goto LABEL_58;
                  }

                  if ([v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"CaptureRequestIdentifier" error:v72])
                  {
                    if (objc_msgSend_isEqualToString_(v14->super._captureRequestIdentifier))
                    {
                      v25 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"StillImageCaptureSettings" error:v72];
                      v14->super._stillImageCaptureSettings = v25;
                      if (v25)
                      {
                        v26 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"StillImageSettings" error:v72];
                        v14->super._stillImageSettings = v26;
                        if (v26)
                        {
                          v27 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"StillImageProcessingSettings" error:v72];
                          v14->super._stillImageProcessingSettings = v27;
                          if (v27)
                          {
                            v28 = MEMORY[0x1E695DFD8];
                            v29 = objc_opt_class();
                            v30 = [objc_msgSend(v17 decodeTopLevelObjectOfClasses:objc_msgSend(v28 forKey:"setWithObjects:" error:{v29, objc_opt_class(), 0), @"Intermediates", v72), "mutableCopy"}];
                            v14->super._intermediates = v30;
                            if (v30)
                            {
                              v57 = v23;
                              v31 = MEMORY[0x1E695DFD8];
                              v32 = objc_opt_class();
                              v33 = [objc_msgSend(v17 decodeTopLevelObjectOfClasses:objc_msgSend(v31 forKey:"setWithObjects:" error:{v32, objc_opt_class(), 0), @"PhotoDescriptors", v72), "mutableCopy"}];
                              v14->super._photoDescriptors = v33;
                              if (v33)
                              {
                                v58 = v17;
                                v59 = value;
                                v65 = 0u;
                                v66 = 0u;
                                v63 = 0u;
                                v64 = 0u;
                                v60 = v14;
                                intermediates = v14->super._intermediates;
                                v35 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v63 objects:v62 count:16];
                                if (v35)
                                {
                                  v36 = v35;
                                  v37 = 0;
                                  v38 = *v64;
                                  v39 = *MEMORY[0x1E695E480];
LABEL_24:
                                  v40 = 0;
                                  while (1)
                                  {
                                    if (*v64 != v38)
                                    {
                                      objc_enumerationMutation(intermediates);
                                    }

                                    v41 = *(*(&v63 + 1) + 8 * v40);
                                    v42 = xpc_dictionary_get_value(xdict, [objc_msgSend(v41 "tag")]);
                                    if (!v42)
                                    {
                                      break;
                                    }

                                    v43 = xpc_dictionary_get_value(v42, "Object");
                                    if (!v43)
                                    {
                                      [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                                      goto LABEL_39;
                                    }

                                    v44 = v43;
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v45 = _CFXPCCreateCFObjectFromXPCObject();
                                      [v41 setArchive:v45];
                                      AllocSize = [v45 length];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        code = -16132;
LABEL_39:
                                        v13 = MEMORY[0x1E695FF58];
                                        v14 = v60;
                                        goto LABEL_40;
                                      }

                                      pixelBufferOut[0] = 0;
                                      v47 = IOSurfaceLookupFromXPCObject(v44);
                                      if (!v47)
                                      {
                                        [BWDeferredProcessingContainer initWithXPCEncoding:pixelBufferOut applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                                        goto LABEL_39;
                                      }

                                      v48 = v47;
                                      CVPixelBufferCreateWithIOSurface(v39, v47, 0, pixelBufferOut);
                                      [v41 setBuffer:pixelBufferOut[0]];
                                      AllocSize = IOSurfaceGetAllocSize(v48);
                                      CFRelease(v48);
                                      CFRelease(pixelBufferOut[0]);
                                    }

                                    v37 += AllocSize;
                                    if (v36 == ++v40)
                                    {
                                      v36 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v63 objects:v62 count:16];
                                      if (v36)
                                      {
                                        goto LABEL_24;
                                      }

                                      goto LABEL_48;
                                    }
                                  }

                                  [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                                  goto LABEL_39;
                                }

                                v37 = 0;
LABEL_48:
                                v14 = v60;
                                code = [(BWDeferredContainer *)v60 _validate];
                                if (code)
                                {
                                  [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                                }

                                else
                                {
                                  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
                                  v50 = v49;
                                  [v57 timeIntervalSince1970];
                                  *(v60 + 344) = (v50 - v51);
                                  *(v60 + 336) = v37;
                                  code = 0;
                                }

                                v13 = MEMORY[0x1E695FF58];
LABEL_40:
                                v17 = v58;
                                value = v59;
                              }

                              else
                              {
                                [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                              }
                            }

                            else
                            {
                              [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                            }

                            goto LABEL_58;
                          }
                        }
                      }

                      goto LABEL_71;
                    }

                    [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                  }

                  else
                  {
LABEL_54:
                    code = [v72[0] code];
                  }
                }

                else
                {
                  [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
                }

LABEL_58:

                if (code)
                {

                  v14 = 0;
                }

                if (*v13 == 1)
                {
                  kdebug_trace();
                }

                return v14;
              }

              v53 = v17;
              code = [v72[0] code];
              v69 = 0;
              v68 = 0;
              v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
            }

LABEL_75:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v17 = v53;
            goto LABEL_58;
          }

          [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
LABEL_64:
          v17 = 0;
          goto LABEL_58;
        }

        [BWDeferredProcessingContainer initWithXPCEncoding:? applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
      }

      v17 = 0;
      value = 0;
      goto LABEL_58;
    }
  }

  else if (encoding)
  {
    goto LABEL_3;
  }

  if (err)
  {
    *err = -16134;
  }

  if (*v13 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (BWDeferredProcessingContainer)initWithApplicationID:(id)d resolvedSettings:(id)settings unresolvedSettings:(id)unresolvedSettings processingSettings:(id)processingSettings pipelineParameters:(id)parameters intermediates:(id)intermediates photoDescriptors:(id)descriptors
{
  v10.receiver = self;
  v10.super_class = BWDeferredProcessingContainer;
  return [(BWDeferredContainer *)&v10 initWithApplicationID:d resolvedSettings:settings unresolvedSettings:unresolvedSettings processingSettings:processingSettings pipelineParameters:parameters intermediates:intermediates photoDescriptors:descriptors];
}

- (void)dealloc
{
  [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 4];

  metadataPrefetchQueue = self->_metadataPrefetchQueue;
  if (metadataPrefetchQueue)
  {
    dispatch_release(metadataPrefetchQueue);
  }

  bufferPrefetchQueue = self->_bufferPrefetchQueue;
  if (bufferPrefetchQueue)
  {
    dispatch_release(bufferPrefetchQueue);
  }

  v5.receiver = self;
  v5.super_class = BWDeferredProcessingContainer;
  [(BWDeferredContainer *)&v5 dealloc];
}

- (__CVBuffer)copyBufferForTag:(id)tag err:(int *)err
{
  v9 = 0;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!tag)
  {
    [BWDeferredProcessingContainer copyBufferForTag:? err:?];
    goto LABEL_8;
  }

  pthread_rwlock_rdlock(&self->super._lock);
  tag = [(BWDeferredContainer *)self _intermediateForTag:tag];
  if (!tag)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    tag = 0;
LABEL_15:
    v9 = -16136;
    goto LABEL_8;
  }

  tag = [tag fetchAndRetain:&v9];
  if (v9)
  {
    [BWDeferredProcessingContainer copyBufferForTag:err:];
  }

LABEL_8:
  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v9;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return tag;
}

- (BOOL)hasBufferForType:(unint64_t)type portType:(id)portType
{
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__BWDeferredProcessingContainer_hasBufferForType_portType___block_invoke;
  v12[3] = &unk_1E7999900;
  v12[4] = portType;
  v12[5] = type;
  v8 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
  v10 = v8 != 0x7FFFFFFFFFFFFFFFLL && (v9 = v8, v8 < [(NSMutableArray *)self->super._intermediates count]) && [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v9]!= 0;
  pthread_rwlock_unlock(&self->super._lock);
  return v10;
}

void *__59__BWDeferredProcessingContainer_hasBufferForType_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = objc_msgSend_isEqualToString_([a2 portType]);
  if (result)
  {
    return ([a2 bufferType] == *(a1 + 40));
  }

  return result;
}

void *__73__BWDeferredProcessingContainer_hasBufferWithCaptureFrameFlags_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = objc_msgSend_isEqualToString_([a2 portType]);
  if (result)
  {
    return ((*(a1 + 40) & [a2 captureFrameFlags]) != 0);
  }

  return result;
}

- (__CVBuffer)copyBufferForType:(unint64_t)type portType:(id)portType metadata:(id *)metadata err:(int *)err
{
  v20 = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__BWDeferredProcessingContainer_copyBufferForType_portType_metadata_err___block_invoke;
  v19[3] = &unk_1E7999900;
  v19[4] = portType;
  v19[5] = type;
  v12 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v19];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (v13 = v12, v12 >= [(NSMutableArray *)self->super._intermediates count]) || ![(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v13])
  {
    metadataTag = 0;
    v15 = 0;
  }

  else
  {
    v14 = [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v13];
    v15 = [v14 tag];
    metadataTag = [v14 metadataTag];
    if (v15)
    {
      v15 = [(BWDeferredProcessingContainer *)self copyBufferForTag:v15 err:&v20];
    }
  }

  if (v20)
  {
    [BWDeferredProcessingContainer copyBufferForType:portType:metadata:err:];
    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (metadata && metadataTag)
    {
      v17 = [(BWDeferredProcessingContainer *)self copyMetadataForTag:metadataTag err:&v20];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v20;
  }

  if (metadata)
  {
    *metadata = v17;
  }

  return v15;
}

void *__73__BWDeferredProcessingContainer_copyBufferForType_portType_metadata_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = objc_msgSend_isEqualToString_([a2 portType]);
  if (result)
  {
    return ([a2 bufferType] == *(a1 + 40));
  }

  return result;
}

void *__79__BWDeferredProcessingContainer_copyBuffersForType_portType_metadataArray_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = objc_msgSend_isEqualToString_([a2 portType]);
  if (result)
  {
    return ([a2 bufferType] == *(a1 + 40));
  }

  return result;
}

uint64_t __74__BWDeferredProcessingContainer_copyAttributesForBufferType_portType_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 bufferType] != *(a1 + 40))
  {
    return 0;
  }

  v4 = [a2 portType];

  return objc_msgSend_isEqualToString_(v4);
}

- (id)copyMetadataForBufferTag:(id)tag err:(int *)err
{
  selfCopy = self;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    self = kdebug_trace();
  }

  if (tag)
  {
    pthread_rwlock_rdlock(&selfCopy->super._lock);
    intermediates = selfCopy->super._intermediates;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__BWDeferredProcessingContainer_copyMetadataForBufferTag_err___block_invoke;
    v12[3] = &unk_1E7999888;
    v12[4] = tag;
    v9 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      tag = 0;
    }

    else
    {
      tag = [(NSMutableArray *)selfCopy->super._intermediates objectAtIndexedSubscript:v9];
      v10 = 0;
    }
  }

  else
  {
    [BWDeferredProcessingContainer copyMetadataForBufferTag:? err:?];
    v10 = -16134;
  }

  pthread_rwlock_unlock(&selfCopy->super._lock);
  if (err)
  {
    *err = v10;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return tag;
}

uint64_t __62__BWDeferredProcessingContainer_copyMetadataForBufferTag_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  [a2 bufferTag];

  return objc_msgSend_isEqualToString_(v4);
}

- (id)copyMetadataForTag:(id)tag err:(int *)err
{
  v12 = 0;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v8 = [(BWDeferredProcessingContainer *)self _copyObjectForTag:tag customClasses:0 err:&v12];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (*v7 == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v12 = -16132;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = v12;
  if (err)
  {
    *err = v12;
  }

  if (v9)
  {

    return 0;
  }

  return v8;
}

- (BOOL)hasInferenceBuffer:(id)buffer portType:(id)type
{
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__BWDeferredProcessingContainer_hasInferenceBuffer_portType___block_invoke;
  v12[3] = &unk_1E7999928;
  v12[4] = type;
  v12[5] = buffer;
  v8 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
  v10 = v8 != 0x7FFFFFFFFFFFFFFFLL && (v9 = v8, v8 < [(NSMutableArray *)self->super._intermediates count]) && [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v9]!= 0;
  pthread_rwlock_unlock(&self->super._lock);
  return v10;
}

uint64_t __61__BWDeferredProcessingContainer_hasInferenceBuffer_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isEqualToString_([a2 portType]))
  {
    return 0;
  }

  v4 = [a2 inferenceAttachedMediaKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (__CVBuffer)copyInferenceBufferForKey:(id)key portType:(id)type err:(int *)err
{
  v15 = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__BWDeferredProcessingContainer_copyInferenceBufferForKey_portType_err___block_invoke;
  v14[3] = &unk_1E7999928;
  v14[4] = type;
  v14[5] = key;
  v10 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v14];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10, v10 >= [(NSMutableArray *)self->super._intermediates count]) || ![(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v11])
  {
    v12 = 0;
  }

  else
  {
    v12 = [-[NSMutableArray objectAtIndexedSubscript:](self->super._intermediates objectAtIndexedSubscript:{v11), "fetchAndRetain:", &v15}];
    if (v15)
    {
      [BWDeferredProcessingContainer copyInferenceBufferForKey:portType:err:];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v15;
  }

  return v12;
}

uint64_t __72__BWDeferredProcessingContainer_copyInferenceBufferForKey_portType_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isEqualToString_([a2 portType]))
  {
    return 0;
  }

  v4 = [a2 inferenceAttachedMediaKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (BOOL)hasInference:(id)inference portType:(id)type
{
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__BWDeferredProcessingContainer_hasInference_portType___block_invoke;
  v12[3] = &unk_1E7999928;
  v12[4] = type;
  v12[5] = inference;
  v8 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
  v10 = v8 != 0x7FFFFFFFFFFFFFFFLL && (v9 = v8, v8 < [(NSMutableArray *)self->super._intermediates count]) && [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v9]!= 0;
  pthread_rwlock_unlock(&self->super._lock);
  return v10;
}

uint64_t __55__BWDeferredProcessingContainer_hasInference_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isEqualToString_([a2 portType]))
  {
    return 0;
  }

  v4 = [a2 inferenceAttachmentKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (id)copyInferenceForKey:(id)key customClasses:(id)classes portType:(id)type err:(int *)err
{
  v17 = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__BWDeferredProcessingContainer_copyInferenceForKey_customClasses_portType_err___block_invoke;
  v16[3] = &unk_1E7999928;
  v16[4] = type;
  v16[5] = key;
  v12 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v16];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (v13 = v12, v12 >= [(NSMutableArray *)self->super._intermediates count]) || ![(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v13])
  {
    v14 = 0;
  }

  else
  {
    v14 = [-[NSMutableArray objectAtIndexedSubscript:](self->super._intermediates objectAtIndexedSubscript:{v13), "fetchWithCustomClassesAndRetain:err:", classes, &v17}];
    if (v17)
    {
      [BWDeferredProcessingContainer copyInferenceForKey:customClasses:portType:err:];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v17;
  }

  return v14;
}

uint64_t __80__BWDeferredProcessingContainer_copyInferenceForKey_customClasses_portType_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isEqualToString_([a2 portType]))
  {
    return 0;
  }

  v4 = [a2 inferenceAttachmentKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (void)releaseIntermediates
{
  pthread_rwlock_wrlock(&self->super._lock);

  self->super._intermediates = 0;

  pthread_rwlock_unlock(&self->super._lock);
}

- (void)abortingProcessingDueToError:(int)error
{
  if (self->_sessionDictionary)
  {
    [(BWDeferredProcessingContainer *)*&error abortingProcessingDueToError:&v3, &self->super.super.isa];
  }

  else
  {
    [BWDeferredProcessingContainer abortingProcessingDueToError:];
  }
}

- (BWDeferredProcessingContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l openForPeeking:(BOOL)peeking err:(int *)p_info
{
  v240[0] = 0;
  v239 = 0;
  OUTLINED_FUNCTION_16_2();
  if (v13)
  {
    [(BWDeferredContainer *)self _getUUIDBytes:identifier high:0];
    v14 = OUTLINED_FUNCTION_18_0();
    [(BWDeferredContainer *)v14 _getUUIDBytes:identifier high:1];
    OUTLINED_FUNCTION_38_11();
    kdebug_trace();
  }

  v238.receiver = self;
  v238.super_class = BWDeferredProcessingContainer;
  v15 = [(BWDeferredContainer *)&v238 initWithApplicationID:d captureRequestIdentifier:identifier baseFolderURL:l queuePriority:39 err:v240];
  if (!v15)
  {
    v16 = 0;
    goto LABEL_6;
  }

  [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:name:" name:4, identifier];
  v15->_metadataPrefetchQueue = FigDispatchQueueCreateWithPriority();
  v15->_bufferPrefetchQueue = FigDispatchQueueCreateWithPriority();
  v240[0] = [(BWDeferredProcessingContainer *)v15 _buildFolderStatistics];
  if (v240[0])
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v166, v171, v173, v174, v175, v176, v177, v178);
    goto LABEL_173;
  }

  _containerManifestURL = [(BWDeferredContainer *)&v15->super.super.isa _containerManifestURL];
  v240[0] = [(BWDeferredContainer *)BWDeferredProcessingContainer validateManifestURLSize:_containerManifestURL];
  if (v240[0])
  {
LABEL_173:
    v16 = 0;
    goto LABEL_130;
  }

  v237 = 0;
  v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:_containerManifestURL options:0 error:&v237];
  if (!v18)
  {
    OUTLINED_FUNCTION_14_30(-16132);
    v141 = OUTLINED_FUNCTION_24_17(qword_1EB58E438);
    OUTLINED_FUNCTION_29_13(v141);
    OUTLINED_FUNCTION_39_7();
    if (v13)
    {
      identifierCopy = v142;
    }

    else
    {
      identifierCopy = identifier;
    }

    if (!identifierCopy)
    {
      goto LABEL_172;
    }

    [v237 description];
    OUTLINED_FUNCTION_35_15(4.8151e-34);
    OUTLINED_FUNCTION_11_36(v144, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
    OUTLINED_FUNCTION_6_55();
    goto LABEL_166;
  }

  obj = v18;
  v19 = +[BWDeferredProcessingContainer maxProcessingCount];
  v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:-[BWDeferredContainer _containerSessionDataURL](&v15->super.super.isa)];
  v178 = p_info;
  if (!v20)
  {
    v25 = 0x1E696A000;
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = &unk_1F2245478;
    goto LABEL_19;
  }

  v21 = v20;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = 0x1E696A000;
  v26 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
  p_info = BWNodeSampleBufferMessage.info;
  v27 = [BWDeferredContainer unarchiveObject:v21 classes:v26 error:&v239];
  if (!v27)
  {
    v240[0] = [v239 code];
    v236 = 0;
    v235 = OS_LOG_TYPE_DEFAULT;
    v148 = OUTLINED_FUNCTION_24_17(qword_1EB58E438);
    OUTLINED_FUNCTION_29_13(v148);
    OUTLINED_FUNCTION_39_7();
    if (v13)
    {
      identifierCopy2 = v149;
    }

    else
    {
      identifierCopy2 = identifier;
    }

    OUTLINED_FUNCTION_9_43();
    if (!identifierCopy2)
    {
      goto LABEL_172;
    }

    [v239 description];
    OUTLINED_FUNCTION_35_15(4.8151e-34);
    OUTLINED_FUNCTION_11_36(v151, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
    OUTLINED_FUNCTION_6_55();
LABEL_166:
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
LABEL_172:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_173;
  }

  v28 = v27;
  v29 = [v27 objectForKeyedSubscript:@"ProcessingCount"];
  if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    OUTLINED_FUNCTION_14_30(-16140);
    v137 = OUTLINED_FUNCTION_24_17(qword_1EB58E438);
    os_log_type_enabled(v137, v235);
    OUTLINED_FUNCTION_115_0();
    if (v13)
    {
      v139 = v138;
    }

    else
    {
      v139 = v236;
    }

    p_info = v178;
    if (v139)
    {
      OUTLINED_FUNCTION_35_15(4.8151e-34);
      *(v140 + 4) = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
      v231 = 2112;
      *(v140 + 14) = v29;
      OUTLINED_FUNCTION_6_55();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_172;
  }

  if (v19)
  {
    v30 = v19;
    if ([v29 unsignedIntValue] >= v19)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v166, v171, v173, v174, v175, d, v177, v178);
      OUTLINED_FUNCTION_14_30(-16140);
      v156 = OUTLINED_FUNCTION_24_17(qword_1EB58E438);
      if (os_log_type_enabled(v156, v235))
      {
        v157 = v236;
      }

      else
      {
        v157 = v236 & 0xFFFFFFFE;
      }

      if (v157)
      {
        captureRequestIdentifier = v15->super._captureRequestIdentifier;
        [v29 unsignedIntValue];
        OUTLINED_FUNCTION_35_15(4.8153e-34);
        *(v159 + 4) = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
        v231 = 2114;
        *(v159 + 14) = captureRequestIdentifier;
        v233 = 1024;
        *v234 = v160;
        *&v234[4] = 1024;
        *(v159 + 30) = v30;
        OUTLINED_FUNCTION_6_55();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_141(v161, v162, v163, v164, v165);
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v16 = 0;
      goto LABEL_180;
    }
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v28];
LABEL_19:
  v15->_sessionDictionary = v31;
  v15->_processingCount = [v29 longValue];
  v32 = [-[NSMutableDictionary objectForKeyedSubscript:](v15->_sessionDictionary objectForKeyedSubscript:{@"PreviousError", "intValue"}];
  v15->_previousAttemptErrorCode = v32;
  p_info = 0x1E696A000;
  if (!peeking)
  {
    if ([&unk_1F22490F0 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v32)}])
    {
      [(NSMutableDictionary *)v15->_sessionDictionary removeObjectForKey:@"PreviousError"];
      if (dword_1EB58E440)
      {
        v236 = 0;
        v235 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = 0;
        v120 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_12(v120))
        {
          previousAttemptErrorCode = v15->_previousAttemptErrorCode;
          processingCount = v15->_processingCount;
          v229 = 136315906;
          v230 = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
          v231 = 2114;
          identifierCopy4 = identifier;
          v233 = 1024;
          *v234 = previousAttemptErrorCode;
          *&v234[4] = 1024;
          *&v234[6] = processingCount;
          OUTLINED_FUNCTION_6_55();
          OUTLINED_FUNCTION_13();
          v123 = _os_log_send_and_compose_impl();
        }

        else
        {
          v123 = 0;
        }

        OUTLINED_FUNCTION_34_17(qword_1EB58E438, v121, v122, v123);
        p_info = 0x1E696A000;
      }
    }

    else if ((objc_msgSend_isEqualToString_(d) & 1) == 0)
    {
      ++v15->_processingCount;
    }

    -[NSMutableDictionary setObject:forKeyedSubscript:](v15->_sessionDictionary, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15->_processingCount], @"ProcessingCount");
    if (v15->_previousAttemptErrorCode && dword_1EB58E440)
    {
      v236 = 0;
      v235 = OS_LOG_TYPE_DEFAULT;
      v127 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = 0;
      v128 = os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_12(v128))
      {
        v132 = v15->_previousAttemptErrorCode;
        v133 = v15->_processingCount;
        v229 = 136315906;
        v230 = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
        v231 = 2114;
        identifierCopy4 = identifier;
        v233 = 1024;
        *v234 = v132;
        *&v234[4] = 1024;
        *&v234[6] = v133;
        OUTLINED_FUNCTION_6_55();
        OUTLINED_FUNCTION_7_4();
        v131 = _os_log_send_and_compose_impl();
      }

      else
      {
        v131 = 0;
      }

      OUTLINED_FUNCTION_34_17(qword_1EB58E438, v129, v130, v131);
    }

    v25 = BWDeferredContainer;
    if (![BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)&v15->super.super.isa _containerSessionDataURL] object:v15->_sessionDictionary error:&v239])
    {
      OUTLINED_FUNCTION_3_73();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v166, v171, v173, v174, v175, d, v177, v178);
      v134 = OUTLINED_FUNCTION_68_5();
      v16 = 0;
      v240[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v134, "<<<< BWDeferredContainer >>>>", 0x8AF, BWDeferredContainer, v135, v136, v168);
LABEL_180:
      OUTLINED_FUNCTION_9_43();
      goto LABEL_130;
    }
  }

  v16 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:obj error:&v239];
  if (!v16)
  {
    OUTLINED_FUNCTION_3_73();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v166, v171, v173, v174, v175, d, v177, v178);
    v145 = OUTLINED_FUNCTION_68_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v145, "<<<< BWDeferredContainer >>>>", 0x8BA, v25, v146, v147, v169);
    goto LABEL_180;
  }

  [v16 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"Version" error:&v239];
  OUTLINED_FUNCTION_9_43();
  if (!v33)
  {
    goto LABEL_148;
  }

  longValue = [v33 longValue];
  v15->super._manifestVersion = longValue;
  if (longValue <= 6)
  {
    v240[0] = -16130;
    goto LABEL_130;
  }

  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = [objc_msgSend(v16 decodeTopLevelObjectOfClasses:objc_msgSend(v35 forKey:"setWithObjects:" error:{v36, objc_opt_class(), 0), @"PhotoDescriptors", &v239), "mutableCopy"}];
  v15->super._photoDescriptors = v37;
  if (!v37)
  {
LABEL_148:
    v240[0] = [v239 code];
    goto LABEL_130;
  }

  LODWORD(v175) = 352;
  v15->_photoManifest = [[BWPhotoManifest alloc] initWithDescriptors:v15->super._photoDescriptors captureRequestIdentifier:v15->super._captureRequestIdentifier];
  _stillImageCaptureSettingsURL = [(BWDeferredContainer *)&v15->super.super.isa _stillImageCaptureSettingsURL];
  objc_opt_class();
  v39 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v40 = OUTLINED_FUNCTION_18_20(v39);
  v15->super._stillImageCaptureSettings = v40;
  if (!v40)
  {
    OUTLINED_FUNCTION_3_73();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v167, v172, v173, v174, 352, d, v177, v178);
    v152 = OUTLINED_FUNCTION_68_5();
    v155 = 2255;
LABEL_170:
    v240[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", BWDeferredContainer, v152, "<<<< BWDeferredContainer >>>>", v155, _stillImageCaptureSettingsURL, v153, v154, v170);
    goto LABEL_130;
  }

  [(BWDeferredContainer *)&v15->super.super.isa _pipelineParametersURL];
  objc_opt_class();
  v41 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v42 = OUTLINED_FUNCTION_18_20(v41);
  v15->super._pipelineParameters = v42;
  if (!v42)
  {
    v15->super._pipelineParameters = [[BWDeferredPipelineParameters alloc] _initWithLegacyCaptureSettings:?];
    v239 = 0;
  }

  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x800) != 0 && ![(BWDeferredPipelineParameters *)v15->super._pipelineParameters depthDataType])
  {
    if ([(BWDeferredPipelineParameters *)v15->super._pipelineParameters pearlModuleType])
    {
      v43 = 3;
    }

    else
    {
      v43 = 8;
    }

    [(BWDeferredPipelineParameters *)v15->super._pipelineParameters setDepthDataType:v43];
  }

  [(BWDeferredContainer *)&v15->super.super.isa _stillImageProcessingSettingsURL];
  objc_opt_class();
  v44 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v45 = OUTLINED_FUNCTION_18_20(v44);
  v15->super._stillImageProcessingSettings = v45;
  if (!v45)
  {
    v15->super._stillImageProcessingSettings = [[BWStillImageProcessingSettings alloc] initWithPhotoManifest:v15->_photoManifest processIntelligentDistortionCorrection:[(BWDeferredPipelineParameters *)v15->super._pipelineParameters intelligentDistortionCorrectionEnabled]];
    v239 = 0;
  }

  [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings setDeliverDeferredPhotoProxyImage:0];
  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x8000000000) != 0)
  {
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings disableAWBReflow];
  }

  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x200000000) != 0 && ![(BWDeferredPipelineParameters *)v15->super._pipelineParameters canProcessEnhancedResolution])
  {
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings cannotProcessDeepFusionEnhancedResolution];
  }

  _stillImageCaptureSettingsURL = [(BWDeferredContainer *)&v15->super.super.isa _stillImageSettingsURL];
  LODWORD(v46) = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v47 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v48 = OUTLINED_FUNCTION_18_20(v47);
  v15->super._stillImageSettings = v48;
  deferredPhotoFinalDimensions = [(FigCaptureStillImageSettings *)v48 deferredPhotoFinalDimensions];
  if (deferredPhotoFinalDimensions >= 1 && SHIDWORD(deferredPhotoFinalDimensions) >= 1)
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setOutputWidth:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalWidth]];
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setOutputHeight:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalHeight]];
  }

  deferredPhotoFinalThumbnailDimensions = [(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalThumbnailDimensions];
  if (deferredPhotoFinalThumbnailDimensions >= 1 && SHIDWORD(deferredPhotoFinalThumbnailDimensions) >= 1)
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setThumbnailWidth:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalThumbnailDimensions]];
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setThumbnailHeight:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalThumbnailDimensions]>> 32];
  }

  deferredPhotoFinalRawThumbnailDimensions = [(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalRawThumbnailDimensions];
  if (deferredPhotoFinalRawThumbnailDimensions >= 1 && SHIDWORD(deferredPhotoFinalRawThumbnailDimensions) >= 1)
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setRawThumbnailWidth:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalRawThumbnailDimensions]];
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setRawThumbnailHeight:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalRawThumbnailDimensions]>> 32];
  }

  if (!v15->super._stillImageSettings)
  {
    OUTLINED_FUNCTION_3_73();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v167, v172, v173, v174, 352, d, v177, v178);
    v152 = OUTLINED_FUNCTION_68_5();
    v155 = 2331;
    goto LABEL_170;
  }

  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = [v16 decodeTopLevelObjectOfClasses:objc_msgSend(v55 forKey:"setWithObjects:" error:{v56, objc_opt_class(), 0), @"Intermediates", &v239}];
  if (!v57)
  {
    goto LABEL_148;
  }

  v58 = v57;
  v176 = v16;
  v59 = objc_alloc(MEMORY[0x1E695DF70]);
  [v58 count];
  v15->super._intermediates = [OUTLINED_FUNCTION_8() initWithCapacity:?];
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v60 = OUTLINED_FUNCTION_66_7();
  if (v60)
  {
    v61 = v60;
    v62 = *v226;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v226 != v62)
        {
          objc_enumerationMutation(v58);
        }

        v46 = *(*(&v225 + 1) + 8 * i);
        [(FigCaptureStillImageSettings *)v15->super._stillImageSettings settingsID];
        [OUTLINED_FUNCTION_7() setSettingsID:?];
        [(NSMutableArray *)v15->super._intermediates addObject:v46];
      }

      v61 = OUTLINED_FUNCTION_66_7();
    }

    while (v61);
  }

  if (v15->super._manifestVersion == 7)
  {
    v240[0] = [(BWDeferredProcessingContainer *)v15 _convertIntermediatesToCurrentCompatibleVersion];
    if (v240[0])
    {
      goto LABEL_124;
    }
  }

  _intermediateFolderURL = [(BWDeferredContainer *)&v15->super.super.isa _intermediateFolderURL];
  v64 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (!v64)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v166, v171, v173, v174, 352, v176, v177, v178);
    v240[0] = [v239 code];
LABEL_124:
    v16 = v176;
    goto LABEL_130;
  }

  v65 = [MEMORY[0x1E695DF70] arrayWithArray:v64];
  [v65 sortUsingSelector:sel_caseInsensitiveCompare_];
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  obja = v15->super._intermediates;
  v66 = [(NSMutableArray *)obja countByEnumeratingWithState:&v221 objects:v220 count:16];
  if (!v66)
  {
    goto LABEL_91;
  }

  v67 = v66;
  v68 = *v222;
  while (2)
  {
    for (j = 0; j != v67; ++j)
    {
      if (*v222 != v68)
      {
        objc_enumerationMutation(obja);
      }

      p_info = *(*(&v221 + 1) + 8 * j);
      v219[0] = MEMORY[0x1E69E9820];
      v219[1] = 3221225472;
      v219[2] = __113__BWDeferredProcessingContainer_initWithApplicationID_captureRequestIdentifier_baseFolderURL_openForPeeking_err___block_invoke;
      v219[3] = &unk_1E79998D8;
      v219[4] = p_info;
      [v65 indexOfObjectPassingTest:v219];
      OUTLINED_FUNCTION_79();
      if (v13)
      {
        OUTLINED_FUNCTION_14_30(-16132);
        v109 = OUTLINED_FUNCTION_24_17(qword_1EB58E438);
        OUTLINED_FUNCTION_29_13(v109);
        OUTLINED_FUNCTION_39_7();
        if (v13)
        {
          v111 = v110;
        }

        else
        {
          v111 = v46;
        }

        if (v111)
        {
          [p_info tag];
          OUTLINED_FUNCTION_35_15(4.8151e-34);
          OUTLINED_FUNCTION_11_36(v112, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
          OUTLINED_FUNCTION_6_55();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
        }

        goto LABEL_129;
      }

      v46 = [v65 objectAtIndexedSubscript:v70];
      if (![v46 hasSuffix:@"heif"] || (v71 = objc_opt_class(), (OUTLINED_FUNCTION_46_14(v71) & 1) == 0))
      {
        if ([v46 hasSuffix:@"plist"] && (v75 = objc_opt_class(), (OUTLINED_FUNCTION_46_14(v75) & 1) != 0) || objc_msgSend(v46, "hasSuffix:", @"plist") && (v76 = objc_opt_class(), (OUTLINED_FUNCTION_46_14(v76) & 1) != 0) || objc_msgSend(v46, "hasSuffix:", @"plist") && (v77 = objc_opt_class(), (OUTLINED_FUNCTION_46_14(v77) & 1) != 0) || objc_msgSend(v46, "hasSuffix:", @"jpeg") && (v78 = objc_opt_class(), (OUTLINED_FUNCTION_46_14(v78) & 1) != 0))
        {
          [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags];
          p_metadataPrefetchQueue = &v15->_metadataPrefetchQueue;
          goto LABEL_87;
        }

        OUTLINED_FUNCTION_14_30(-16132);
        v113 = OUTLINED_FUNCTION_24_17(qword_1EB58E438);
        v114 = v236;
        os_log_type_enabled(v113, v235);
        OUTLINED_FUNCTION_115_0();
        if (v13)
        {
          v116 = v115;
        }

        else
        {
          v116 = v114;
        }

        if (v116)
        {
          [p_info tag];
          OUTLINED_FUNCTION_35_15(4.8152e-34);
          OUTLINED_FUNCTION_11_36(v117, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
          v233 = v118;
          *v234 = v46;
          OUTLINED_FUNCTION_6_55();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
        }

LABEL_129:
        OUTLINED_FUNCTION_9_43();
        v16 = v176;
        OUTLINED_FUNCTION_1_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_130;
      }

      captureFlags = [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags];
      p_metadataPrefetchQueue = &v15->_bufferPrefetchQueue;
      if ((captureFlags & 0x100000000) != 0)
      {
        v74 = 0;
        goto LABEL_88;
      }

LABEL_87:
      v74 = *p_metadataPrefetchQueue;
LABEL_88:
      v79 = MEMORY[0x1E695DFF8];
      v218[0] = [_intermediateFolderURL path];
      v218[1] = v46;
      v240[0] = [p_info setURL:objc_msgSend(v79 prefetchQueue:{"fileURLWithPathComponents:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v218, 2)), v74}];
      if (v240[0])
      {
        OUTLINED_FUNCTION_9_43();
        goto LABEL_124;
      }
    }

    v67 = [(NSMutableArray *)obja countByEnumeratingWithState:&v221 objects:v220 count:16];
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_91:
  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x800) != 0 && !BWDepthDataTypeSupportsDeferredDepthGeneration([(BWDeferredPipelineParameters *)[(BWDeferredContainer *)v15 pipelineParameters] depthDataType]) && ![(BWDeferredProcessingContainer *)v15 hasBufferForType:2001 portType:[(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings masterPortType]])
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings cannotProcessDepthPhotos];
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings cannotProcessDepthPhotos];
    [(BWStillImageProcessingSettings *)v15->super._stillImageProcessingSettings cannotProcessDepthPhotos];
    [(BWPhotoManifest *)v15->_photoManifest cannotProcessDepthPhotos];
    [(NSMutableArray *)v15->super._photoDescriptors removeAllObjects];
    [(BWPhotoManifest *)v15->_photoManifest photoDescriptors];
    [OUTLINED_FUNCTION_17() addObjectsFromArray:?];
  }

  if ([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureType]== 13 && ([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x100000) != 0)
  {
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings masterPortType];
    v80 = OUTLINED_FUNCTION_4();
    v82 = [(BWDeferredProcessingContainer *)v80 hasBufferWithCaptureFrameFlags:v81 portType:?]^ 1;
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings masterPortType];
    v83 = OUTLINED_FUNCTION_4();
    v85 = [(BWDeferredProcessingContainer *)v83 hasBufferWithCaptureFrameFlags:v84 portType:?]^ 1;
    if ((v82 & 1) != 0 || v85)
    {
      [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings updateForLearnedFusionMissingEVMinus:v82 missingHDRErrorRecoveryEVZero:v85];
    }
  }

  captureFlags2 = [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags];
  p_info = v178;
  if ((captureFlags2 & 0x4000000000) != 0)
  {
    intermediates = v15->super._intermediates;
    v95 = OUTLINED_FUNCTION_61_8(captureFlags2, v87, v88, v89, v90, v91, v92, v93, v166, v171, v173, v174, 352, v176, v177, v178, &v15->_bufferPrefetchQueue, obja, &v15->_metadataPrefetchQueue, _intermediateFolderURL, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214, v216);
    if (v95)
    {
      v96 = v95;
      v97 = MEMORY[0];
      do
      {
        for (k = 0; k != v96; ++k)
        {
          if (MEMORY[0] != v97)
          {
            objc_enumerationMutation(intermediates);
          }

          v99 = *(8 * k);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            portType = [v99 portType];
            [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings masterPortType];
            isKindOfClass = objc_msgSend_isEqualToString_(portType);
            if ((isKindOfClass & 1) == 0)
            {
              isKindOfClass = [v99 bufferType];
              if (isKindOfClass == 1)
              {
                isKindOfClass = -[BWStillImageCaptureSettings setLearnedNRStereoPhotoFrameFlag:](v15->super._stillImageCaptureSettings, "setLearnedNRStereoPhotoFrameFlag:", [v99 captureFrameFlags] & 0x14);
              }
            }
          }
        }

        v96 = OUTLINED_FUNCTION_61_8(isKindOfClass, v101, v102, v103, v104, v105, v106, v107, v166, v171, v173, v174, v175, v176, v177, v178, v179, objb, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v217);
      }

      while (v96);
    }
  }

  v16 = v176;
LABEL_6:
  v240[0] = [(BWDeferredContainer *)v15 _validate];
  if (v240[0])
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v166, v171, v173, v174, v175, v176, v177, v178);
  }

LABEL_130:

  if (p_info)
  {
    *p_info = v240[0];
  }

  OUTLINED_FUNCTION_16_2();
  if (v13)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v15;
}

- (uint64_t)_buildFolderStatistics
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v57 = 0;
  v3 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (!v3)
  {
    OUTLINED_FUNCTION_4_64();
    v28 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v49, v53, v57, v58, v59, v60, v61);
    v23 = OUTLINED_FUNCTION_44_12(v28, v29, v30, v31, v32, v33, v34, v35, v47, v51, v55, v57);
    v26 = v2;
    v27 = 3313;
LABEL_14:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v23, "<<<< BWDeferredContainer >>>>", v27, v1, v24, v25, v46);
    return 0;
  }

  v4 = v3;
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v6 = v5;
  [objc_msgSend(v4 "fileCreationDate")];
  *(v2 + 344) = (v6 - v7);
  v8 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (!v8)
  {
    OUTLINED_FUNCTION_4_64();
    v36 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v49, v53, v57, v58, v59, v60, v61);
    v23 = OUTLINED_FUNCTION_44_12(v36, v37, v38, v39, v40, v41, v42, v43, v48, v52, v56, v57);
    v26 = v2;
    v27 = 3318;
    goto LABEL_14;
  }

  objectEnumerator = [v8 objectEnumerator];
  if (objectEnumerator)
  {
    v10 = objectEnumerator;
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v13 = 0;
      while (1)
      {
        v14 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        if (!v14)
        {
          break;
        }

        v13 += [v14 fileSize];
        nextObject2 = [v10 nextObject];
        if (!nextObject2)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_4_64();
      v15 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v49, v53, v57, v58, v59, v60, v61);
      v23 = OUTLINED_FUNCTION_44_12(v15, v16, v17, v18, v19, v20, v21, v22, v45, v50, v54, v57);
      v26 = v2;
      v27 = 3325;
      goto LABEL_14;
    }

    v13 = 0;
LABEL_11:
    result = 0;
    *(v2 + 336) = v13;
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v49, v53, v57, v58, v59, v60, v61);
    return 4294951164;
  }

  return result;
}

- (uint64_t)_convertIntermediatesToCurrentCompatibleVersion
{
  if (result)
  {
    v1 = result;
    v83[0] = 0;
    v73 = [MEMORY[0x1E695DF70] arrayWithArray:*(result + 280)];
    v2 = objc_autoreleasePoolPush();
    v3 = *(v1 + 280);
    isKindOfClass = OUTLINED_FUNCTION_65_6(v2, v4, v5, v6, v7, v8, v9, v10, v48, v50, v2, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
    if (isKindOfClass)
    {
      v19 = isKindOfClass;
      v20 = 0;
      v21 = MEMORY[0];
      v54 = 0x1F219E5F0;
      v56 = 0x1F219E6F0;
      v66 = 0x1F219E9B0;
      p_info = BWNodeSampleBufferMessage.info;
      v70 = 1;
      v72 = 0x1F219E990;
      v64 = 0x1F219E970;
      v60 = 0x1F21AAD30;
      v62 = 0x1F21AABB0;
      v58 = 0x1F219E750;
      v80 = v3;
      v82 = @"PersonSemanticsSkin";
      v76 = v1;
      v78 = MEMORY[0];
      do
      {
        v23 = 0;
        do
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v3);
          }

          if (*(v1 + 240) <= 7)
          {
            v24 = *(8 * v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v24 bufferType] - 1001;
              isKindOfClass = v82;
              switch(v25)
              {
                case 0:
                  goto LABEL_24;
                case 1:
                  isKindOfClass = v58;
                  if (!v58)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_25;
                case 2:
                  isKindOfClass = v60;
LABEL_24:
                  if (isKindOfClass)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_39;
                case 3:
                  isKindOfClass = v62;
                  if (!v62)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_25;
                case 4:
                  isKindOfClass = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", v64, v70];
                  v70 = (v70 + 1);
                  p_info = (BWNodeSampleBufferMessage + 32);
                  if (!isKindOfClass)
                  {
                    goto LABEL_39;
                  }

LABEL_25:
                  v37 = [v24 fetchAndRetain:v83];
                  if (v83[0])
                  {
                    goto LABEL_41;
                  }

                  v38 = v37;
                  v39 = [BWDeferredInferenceBufferIntermediate alloc];
                  v40 = [v24 tag];
                  metadataTag = [v24 metadataTag];
                  portType = [v24 portType];
                  compressionProfile = [v24 compressionProfile];
                  v44 = [v24 URL];
                  v45 = metadataTag;
                  v1 = v76;
                  isKindOfClass = [(BWDeferredInferenceBufferIntermediate *)v39 initWithBuffer:v38 tag:v40 metadataTag:v45 inferenceAttachedMediaKey:v82 portType:portType compressionProfile:compressionProfile URL:v44];
                  break;
                default:
                  if (v82 >= 2)
                  {
                    goto LABEL_39;
                  }

                  isKindOfClass = [v24 pixelFormat];
                  if (isKindOfClass != 1651519798)
                  {
                    goto LABEL_39;
                  }

                  v28 = [v24 fetchAndRetain:v83];
                  if (v83[0])
                  {
                    goto LABEL_41;
                  }

                  v29 = v28;
                  v68 = objc_alloc((p_info + 471));
                  v30 = [v24 tag];
                  captureFrameFlags = [v24 captureFrameFlags];
                  metadataTag2 = [v24 metadataTag];
                  portType2 = [v24 portType];
                  compressionProfile2 = [v24 compressionProfile];
                  v35 = [v24 URL];
                  LODWORD(v49) = compressionProfile2;
                  v36 = v30;
                  v1 = v76;
                  isKindOfClass = [v68 initWithBuffer:v29 tag:v36 bufferType:37 captureFrameFlags:captureFrameFlags metadataTag:metadataTag2 portType:portType2 compressionProfile:v49 URL:v35];
                  break;
              }

LABEL_36:
              v47 = isKindOfClass;
              if (isKindOfClass)
              {
                [*(v1 + 256) settingsID];
                [OUTLINED_FUNCTION_8() setSettingsID:?];
                [v74 setObject:v47 atIndexedSubscript:v20];
              }

              v21 = v78;
              v3 = v80;
              p_info = (BWNodeSampleBufferMessage + 32);
              goto LABEL_39;
            }

            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_39;
            }

            if ([objc_msgSend(v24 "tag")])
            {
              v26 = MEMORY[0x1E695DFD8];
              v27 = v72;
            }

            else if ([objc_msgSend(v24 "tag")])
            {
              v26 = MEMORY[0x1E695DFD8];
              v27 = v66;
            }

            else if ([objc_msgSend(v24 "tag")])
            {
              v26 = MEMORY[0x1E695DFD8];
              getVNFaceObservationClass();
              v27 = v56;
            }

            else
            {
              isKindOfClass = [objc_msgSend(v24 "tag")];
              if (!isKindOfClass)
              {
                goto LABEL_39;
              }

              v26 = MEMORY[0x1E695DFD8];
              getVNFaceObservationClass();
              v27 = v54;
            }

            isKindOfClass = [v26 setWithObject:objc_opt_class()];
            if (v27)
            {
              v46 = [v24 fetchWithCustomClassesAndRetain:isKindOfClass err:v83];
              if (v83[0])
              {
                goto LABEL_41;
              }

              isKindOfClass = -[BWDeferredInferenceArrayIntermediate initWithArray:tag:inferenceAttachmentKey:portType:URL:]([BWDeferredInferenceArrayIntermediate alloc], "initWithArray:tag:inferenceAttachmentKey:portType:URL:", v46, [v24 tag], v27, 0, objc_msgSend(v24, "URL"));
              goto LABEL_36;
            }
          }

LABEL_39:
          ++v20;
          ++v23;
        }

        while (v19 != v23);
        isKindOfClass = OUTLINED_FUNCTION_65_6(isKindOfClass, v12, v13, v14, v15, v16, v17, v18, v49, v51, context, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82);
        v19 = isKindOfClass;
      }

      while (isKindOfClass);
    }

LABEL_41:
    objc_autoreleasePoolPop(context);
    result = v83[0];
    if (!v83[0])
    {

      *(v1 + 280) = [v74 copy];
      return v83[0];
    }
  }

  return result;
}

- (uint64_t)hasBufferWithCaptureFrameFlags:(uint64_t)flags portType:
{
  if (!self)
  {
    return 0;
  }

  pthread_rwlock_rdlock((self + 16));
  OUTLINED_FUNCTION_33_0();
  v10[1] = 3221225472;
  v10[2] = __73__BWDeferredProcessingContainer_hasBufferWithCaptureFrameFlags_portType___block_invoke;
  v10[3] = &unk_1E7999900;
  v10[4] = flags;
  v10[5] = a2;
  [v6 indexOfObjectPassingTest:v10];
  OUTLINED_FUNCTION_79();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  pthread_rwlock_unlock((self + 16));
  return v8;
}

- (id)copyBuffersForType:(unint64_t)type portType:(id)portType metadataArray:(id *)array err:(int *)err
{
  v83[0] = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __79__BWDeferredProcessingContainer_copyBuffersForType_portType_metadataArray_err___block_invoke;
  v82[3] = &unk_1E7999900;
  v82[4] = portType;
  v82[5] = type;
  v13 = [(NSMutableArray *)self->super._intermediates objectsAtIndexes:[(NSMutableArray *)intermediates indexesOfObjectsPassingTest:v82]];
  if ([v13 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = array;
    if (array)
    {
      array = [MEMORY[0x1E695DF70] array];
      v23 = array;
    }

    else
    {
      v23 = 0;
    }

    v24 = OUTLINED_FUNCTION_64_8(array, v15, v16, v17, v18, v19, v20, v21, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80);
    if (v24)
    {
      v25 = v24;
      v47 = v6;
      errCopy = err;
      v26 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (MEMORY[0] != v26)
          {
            objc_enumerationMutation(v13);
          }

          v28 = *(8 * i);
          v29 = [v28 tag];
          metadataTag = [v28 metadataTag];
          v38 = metadataTag;
          if (v29)
          {
            v39 = [(BWDeferredProcessingContainer *)self copyBufferForTag:v29 err:v83];
            if (v39)
            {
              [v22 addObject:v39];
            }

            CVPixelBufferRelease(v39);
            if (v83[0])
            {
              goto LABEL_22;
            }
          }

          if (array && v38)
          {
            v40 = [(BWDeferredProcessingContainer *)self copyMetadataForTag:v38 err:v83];
            if (v40)
            {
              [v23 addObject:v40];
            }

            if (v83[0])
            {
LABEL_22:
              OUTLINED_FUNCTION_52_13();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              goto LABEL_23;
            }
          }
        }

        v25 = OUTLINED_FUNCTION_64_8(metadataTag, v31, v32, v33, v34, v35, v36, v37, v43, v45, v47, errCopy, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
        if (v25)
        {
          continue;
        }

        break;
      }

LABEL_23:
      err = errCopy;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v83[0];
  }

  if (array)
  {
    *array = [v23 copy];
  }

  return [v22 copy];
}

- (id)copyAttributesForBufferType:(unint64_t)type portType:(id)portType err:(int *)err
{
  pthread_rwlock_rdlock(&self->super._lock);
  OUTLINED_FUNCTION_33_0();
  v17[1] = 3221225472;
  v17[2] = __74__BWDeferredProcessingContainer_copyAttributesForBufferType_portType_err___block_invoke;
  v17[3] = &unk_1E7999900;
  v17[4] = portType;
  v17[5] = type;
  [v9 indexOfObjectPassingTest:v17];
  OUTLINED_FUNCTION_79();
  if (!v11 && (v14 = v10, [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v10]&& (v15 = [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v14], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    attributes = [v15 attributes];
    v13 = 0;
  }

  else
  {
    attributes = 0;
    v13 = -16136;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v13;
  }

  return attributes;
}

- (uint64_t)_copyObjectForTag:(uint64_t)tag customClasses:(int *)classes err:
{
  if (!self)
  {
    return 0;
  }

  v13 = 0;
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_rdlock((self + 16));
  v9 = [(BWDeferredContainer *)self _intermediateForTag:a2];
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 fetchWithCustomClassesAndRetain:tag err:&v13];
  }

  else
  {
    v11 = 0;
    v13 = -16136;
  }

  pthread_rwlock_unlock((self + 16));
  if (classes)
  {
    *classes = v13;
  }

  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v11;
}

- (id)copyArrayForTag:(id)tag customClasses:(id)classes err:(int *)err
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_40_15();
  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v8 = OUTLINED_FUNCTION_62_8();
  if (!v8)
  {
    OUTLINED_FUNCTION_25_18();
    v10 = OUTLINED_FUNCTION_30_9(qword_1EB58E438);
    v11 = OUTLINED_FUNCTION_20_15(v10);
    if (OUTLINED_FUNCTION_12(v11))
    {
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141(v12, v13, v14, v15, v16);
      OUTLINED_FUNCTION_54_9();
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    OUTLINED_FUNCTION_25_18();
    v17 = OUTLINED_FUNCTION_56_12();
    v18 = OUTLINED_FUNCTION_30_9(v17);
    OUTLINED_FUNCTION_20_15(v18);
    OUTLINED_FUNCTION_37_11();
    if (v6)
    {
      objc_opt_class();
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141(v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_54_9();
    }

LABEL_18:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_58_12(0x6D1u);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

LABEL_9:
  if (v5)
  {
    *v5 = v24;
  }

  if (v24)
  {
  }

  OUTLINED_FUNCTION_56();
  return result;
}

- (id)copyDictionaryForTag:(id)tag customClasses:(id)classes err:(int *)err
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_40_15();
  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v8 = OUTLINED_FUNCTION_62_8();
  if (!v8)
  {
    OUTLINED_FUNCTION_25_18();
    v10 = OUTLINED_FUNCTION_30_9(qword_1EB58E438);
    v11 = OUTLINED_FUNCTION_20_15(v10);
    if (OUTLINED_FUNCTION_12(v11))
    {
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141(v12, v13, v14, v15, v16);
      OUTLINED_FUNCTION_54_9();
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    OUTLINED_FUNCTION_25_18();
    v17 = OUTLINED_FUNCTION_56_12();
    v18 = OUTLINED_FUNCTION_30_9(v17);
    OUTLINED_FUNCTION_20_15(v18);
    OUTLINED_FUNCTION_37_11();
    if (v6)
    {
      objc_opt_class();
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141(v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_54_9();
    }

LABEL_18:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_58_12(0x6D1u);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

LABEL_9:
  if (v5)
  {
    *v5 = v24;
  }

  if (v24)
  {
  }

  OUTLINED_FUNCTION_56();
  return result;
}

- (uint64_t)initWithXPCEncoding:(uint64_t)a1 applicationID:(uint64_t)a2 captureRequestIdentifier:baseFolderURL:err:.cold.1(uint64_t a1, uint64_t a2)
{
  [(BWDeferredContainer *)a1 _getUUIDBytes:a2 high:0];
  v3 = OUTLINED_FUNCTION_18_0();
  [(BWDeferredContainer *)v3 _getUUIDBytes:a2 high:1];
  OUTLINED_FUNCTION_38_11();

  return kdebug_trace();
}

- (uint64_t)abortingProcessingDueToError:(void *)a3 .cold.1(uint64_t a1, id *a2, void *a3, id *a4)
{
  [*a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", a1), @"PreviousError"}];
  *a3 = 0;
  result = [BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)a4 _containerSessionDataURL] object:*a2 error:a3];
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v9, v10, v11, v12, v13, v14, v15);
  }

  return result;
}

@end