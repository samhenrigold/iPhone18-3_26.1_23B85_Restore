@interface MMCSHTTPContext
- (BOOL)createNewRequestBodyInputStream;
- (BOOL)requestBodyCanAcceptData;
- (MMCSHTTPContext)initWithContext:(mmcs_http_context *)context options:(const mmcs_http_context_options *)options activityMarker:(os_activity_s *)marker;
- (NSString)description;
- (__CFError)send;
- (int64_t)countOfRequestBodyBytesSent;
- (int64_t)writeRequestBody:(const char *)body maxLength:(unint64_t)length;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)cleanupResponse;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateStreamPair;
- (void)requestBodyDone;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation MMCSHTTPContext

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v55 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self hc][584], &state);
  selfCopy = self;
  outputStream = [(MMCSHTTPContext *)selfCopy outputStream];
  if (outputStream == streamCopy && ![(MMCSHTTPContext *)selfCopy isTaskDone])
  {
    isValid = [(MMCSHTTPContext *)selfCopy isValid];

    if (!isValid)
    {
      goto LABEL_4;
    }

    if (event > 7)
    {
      if (event == 8)
      {
        v35 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          streamError = [streamCopy streamError];
          v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ error %@", selfCopy, streamCopy, streamError);

          v40 = mmcs_logging_logger_default(v38, v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = v37;
            _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v37)
          {
            CFRelease(v37);
          }
        }

        v41 = MEMORY[0x277CCACA8];
        streamError2 = [streamCopy streamError];
        v43 = [v41 stringWithFormat:@"Write stream had error:%@", streamError2];

        streamError3 = [streamCopy streamError];
        error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, streamError3, @"%@", v45, v46, v47, v48, v43);
        mmcs_http_context_set_error([(MMCSHTTPContext *)selfCopy hc], error_with_underlying_error);
        if (error_with_underlying_error)
        {
          CFRelease(error_with_underlying_error);
        }

        outputStream2 = [(MMCSHTTPContext *)selfCopy outputStream];
        [outputStream2 close];

        if (![(MMCSHTTPContext *)selfCopy hc][496])
        {
          __assert_rtn("[MMCSHTTPContext stream:handleEvent:]", "MMCSHTTPContext.m", 138, "self.hc->requestBodyCallback");
        }

        ([(MMCSHTTPContext *)selfCopy hc][496])([(MMCSHTTPContext *)selfCopy hc], [(MMCSHTTPContext *)selfCopy hc][576], 3);

        goto LABEL_9;
      }

      if (event != 16)
      {
        goto LABEL_33;
      }

      if (gMMCS_DebugLevel >= 4)
      {
        v20 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ ended", selfCopy, streamCopy);
          v23 = mmcs_logging_logger_default(v21, v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v54 = v21;
            _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v21)
          {
            CFRelease(v21);
          }
        }
      }

      if (![(MMCSHTTPContext *)selfCopy hc][496])
      {
        v51 = 148;
        goto LABEL_59;
      }

      v24 = [(MMCSHTTPContext *)selfCopy hc][496];
      v25 = [(MMCSHTTPContext *)selfCopy hc];
      v26 = [(MMCSHTTPContext *)selfCopy hc];
      v27 = 4;
    }

    else
    {
      if (event != 1)
      {
        if (event == 4)
        {
          if (gMMCS_DebugLevel >= 5)
          {
            v16 = mmcs_logging_logger_default(v9, v10);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ has space available", selfCopy, streamCopy);
              v19 = mmcs_logging_logger_default(v17, v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v54 = v17;
                _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v17)
              {
                CFRelease(v17);
              }
            }
          }

          if ([(MMCSHTTPContext *)selfCopy hc][496])
          {
            ([(MMCSHTTPContext *)selfCopy hc][496])([(MMCSHTTPContext *)selfCopy hc], [(MMCSHTTPContext *)selfCopy hc][576], 2);
            if (![(MMCSHTTPContext *)selfCopy isTaskDone])
            {
              [(MMCSHTTPContext *)selfCopy isValid];
            }

            goto LABEL_9;
          }

          v51 = 121;
LABEL_59:
          __assert_rtn("[MMCSHTTPContext stream:handleEvent:]", "MMCSHTTPContext.m", v51, "self.hc->requestBodyCallback");
        }

LABEL_33:
        v28 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ ignoring stream event %u from stream %@", selfCopy, event, streamCopy);
          v30 = mmcs_logging_logger_default(v12, v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = v12;
            _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v12)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_9;
      }

      if (gMMCS_DebugLevel >= 4)
      {
        v31 = mmcs_logging_logger_default(v9, v10);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ opened", selfCopy, streamCopy);
          v34 = mmcs_logging_logger_default(v32, v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v54 = v32;
            _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v32)
          {
            CFRelease(v32);
          }
        }
      }

      if (![(MMCSHTTPContext *)selfCopy hc][496])
      {
        v51 = 113;
        goto LABEL_59;
      }

      v24 = [(MMCSHTTPContext *)selfCopy hc][496];
      v25 = [(MMCSHTTPContext *)selfCopy hc];
      v26 = [(MMCSHTTPContext *)selfCopy hc];
      v27 = 1;
    }

    v24(v25, *(v26 + 576), v27);
    goto LABEL_9;
  }

LABEL_4:
  v11 = mmcs_logging_logger_default(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ ignoring stream event %u from stream %@", selfCopy, event, streamCopy);
    v14 = mmcs_logging_logger_default(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = v12;
      _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v12)
    {
LABEL_8:
      CFRelease(v12);
    }
  }

LABEL_9:

  os_activity_scope_leave(&state);
}

- (int64_t)writeRequestBody:(const char *)body maxLength:(unint64_t)length
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outputStream = [(MMCSHTTPContext *)selfCopy outputStream];
  isHandlingError = [(MMCSHTTPContext *)selfCopy isHandlingError];
  objc_sync_exit(selfCopy);

  if (outputStream == 0 || isHandlingError)
  {
    v11 = mmcs_logging_logger_default(v9, v10);
    if (outputStream)
    {
      if (!isHandlingError)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ not writing to output stream for unknown reason; attempted to write %lu bytes.", selfCopy, length);
          v25 = mmcs_logging_logger_default(v12, v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v31 = v12;
            _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          v18 = -1;
          if (v12)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v18 = -1;
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ writing 0 bytes because request cannot accept data at the moment.", selfCopy);
        v14 = mmcs_logging_logger_default(v12, v13);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_26;
        }

        *buf = 138543362;
        v31 = v12;
        v15 = v14;
        v16 = OS_LOG_TYPE_DEBUG;
        goto LABEL_25;
      }

LABEL_14:
      v18 = 0;
      goto LABEL_28;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ output stream is nil; attempted to write %lu bytes.", selfCopy, length);
    v23 = mmcs_logging_logger_default(v12, v22);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v31 = v12;
LABEL_24:
    v15 = v23;
    v16 = OS_LOG_TYPE_ERROR;
LABEL_25:
    _os_log_impl(&dword_2577D8000, v15, v16, "%{public}@", buf, 0xCu);
    goto LABEL_26;
  }

  v18 = [outputStream write:body maxLength:length];
  if (v18 != -1)
  {
    goto LABEL_28;
  }

  v19 = mmcs_logging_logger_default(-1, v17);
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  streamStatus = [outputStream streamStatus];
  if (streamStatus > 7)
  {
    v21 = @"none";
  }

  else
  {
    v21 = off_279845078[streamStatus];
  }

  streamError = [outputStream streamError];
  v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ output stream %@ had an error writing in state %@: stream error %@: Ignoring this, and treating this as if the stream cannot accept data at the moment", selfCopy, outputStream, v21, streamError);

  v23 = mmcs_logging_logger_default(v27, v28);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v31 = v12;
    goto LABEL_24;
  }

LABEL_26:
  v18 = 0;
  if (v12)
  {
LABEL_27:
    CFRelease(v12);
  }

LABEL_28:

  return v18;
}

- (void)requestBodyDone
{
  v13 = *MEMORY[0x277D85DE8];
  outputStream = [(MMCSHTTPContext *)self outputStream];

  if (outputStream)
  {
    outputStream2 = [(MMCSHTTPContext *)self outputStream];
    [outputStream2 close];
  }

  else
  {
    v6 = mmcs_logging_logger_default(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ has no output stream to close.", self);
      v9 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(MMCSHTTPContext *)self isValid])
  {
    v4 = "valid";
  }

  else
  {
    v4 = "invalid";
  }

  if ([(MMCSHTTPContext *)self isTaskDone])
  {
    v5 = "done";
  }

  else
  {
    v5 = "undone";
  }

  return [v3 stringWithFormat:@"%s %s %@", v4, v5, MMCSRequestOptionsDiscretionaryNetworkBehaviorGetString(*(-[MMCSHTTPContext hc](self, "hc")[368] + 80))];
}

- (void)invalidateStreamPair
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  inputStream = [(MMCSHTTPContext *)self inputStream];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  outputStream = [(MMCSHTTPContext *)self outputStream];
  if (v13[5] || v7[5])
  {
    outputStream2 = [(MMCSHTTPContext *)self outputStream];
    [outputStream2 setDelegate:0];

    outputStream3 = [(MMCSHTTPContext *)self outputStream];
    [outputStream3 close];

    [(MMCSHTTPContext *)self setOutputStream:0];
    [(MMCSHTTPContext *)self setInputStream:0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__MMCSHTTPContext_invalidateStreamPair__block_invoke;
    v5[3] = &unk_279844F68;
    v5[4] = &v12;
    v5[5] = &v6;
    HttpContextPerformBlockAsync(self, v5);
  }

  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

void __39__MMCSHTTPContext_invalidateStreamPair__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (BOOL)requestBodyCanAcceptData
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outputStream = [(MMCSHTTPContext *)selfCopy outputStream];

  if (outputStream)
  {
    outputStream2 = [(MMCSHTTPContext *)selfCopy outputStream];
    hasSpaceAvailable = [outputStream2 hasSpaceAvailable];

    if (hasSpaceAvailable)
    {
      LODWORD(outputStream) = ![(MMCSHTTPContext *)selfCopy isHandlingError];
    }

    else
    {
      LODWORD(outputStream) = 0;
    }
  }

  objc_sync_exit(selfCopy);

  if (gMMCS_DebugLevel >= 5)
  {
    v8 = mmcs_logging_logger_default(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"NO";
      if (outputStream)
      {
        v9 = @"YES";
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ canAcceptData %@", selfCopy, v9);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  return outputStream;
}

- (int64_t)countOfRequestBodyBytesSent
{
  dataTask = [(MMCSHTTPContext *)self dataTask];
  countOfBytesSent = [dataTask countOfBytesSent];

  return countOfBytesSent;
}

- (BOOL)createNewRequestBodyInputStream
{
  v20 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v3 = mmcs_logging_logger_default(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"createNewRequestBodyInputStream %@", self);
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v19 = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  [(MMCSHTTPContext *)self invalidateStreamPair];
  v7 = [(MMCSHTTPContext *)self hc];
  mmcs_http_reset_context_for_new_stream(v7, v8);
  v16 = 0;
  v17 = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:0x8000 inputStream:&v17 outputStream:&v16];
  v9 = v17;
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (!v12)
  {
    [(MMCSHTTPContext *)self setInputStream:v9];
    [(MMCSHTTPContext *)self setOutputStream:v11];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(MMCSHTTPContext *)selfCopy setIsHandlingError:0];
    objc_sync_exit(selfCopy);

    [v11 setDelegate:selfCopy];
    mmcs_nshttp_schedule_stream([(MMCSHTTPContext *)selfCopy hc], v11);
    [v11 open];
  }

  return v13;
}

- (MMCSHTTPContext)initWithContext:(mmcs_http_context *)context options:(const mmcs_http_context_options *)options activityMarker:(os_activity_s *)marker
{
  if (!context)
  {
    [MMCSHTTPContext initWithContext:options:activityMarker:];
  }

  v12.receiver = self;
  v12.super_class = MMCSHTTPContext;
  v7 = [(MMCSHTTPContext *)&v12 init:context];
  v8 = v7;
  if (v7)
  {
    [(MMCSHTTPContext *)v7 setHc:context];
    C3BaseRetain([(MMCSHTTPContext *)v8 hc]);
    *([(MMCSHTTPContext *)v8 hc]+ 560) = appendTrailers;
    [(MMCSHTTPContext *)v8 setIsValid:1];
    if (marker)
    {
      os_retain(marker);
    }

    [(MMCSHTTPContext *)v8 setActivityMarker:marker];
    valuePtr = 0;
    if (*([(MMCSHTTPContext *)v8 hc][368] + 136))
    {
      CFNumberGetValue(*([(MMCSHTTPContext *)v8 hc][368] + 136), kCFNumberNSIntegerType, &valuePtr);
      v9 = valuePtr;
    }

    else
    {
      v9 = 0;
    }

    [(MMCSHTTPContext *)v8 setContainerType:v9];
  }

  return v8;
}

- (__CFError)send
{
  v3 = [(MMCSHTTPContext *)self hc][368];
  [(MMCSHTTPContext *)self setIsHandlingError:0];
  mEMORY[0x277CF36D8] = [MEMORY[0x277CF36D8] sharedManager];
  v5 = CFHTTPMessageCopyRequestURL([(MMCSHTTPContext *)self hc][336]);
  v6 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v5 cachePolicy:0 timeoutInterval:300.0];
  v7 = CFHTTPMessageCopyRequestMethod([(MMCSHTTPContext *)self hc][336]);
  if (v7)
  {
    [v6 setHTTPMethod:v7];
    [v6 _setRequiresShortConnectionTimeout:*(v3 + 77) != 0];
    [v6 setHTTPShouldHandleCookies:0];
    [v6 setAllowsCellularAccess:*(v3 + 74) != 0];
    [v6 _setAllowsUCA:*(v3 + 76) != 0];
    v8 = *(v3 + 56);
    if (v8)
    {
      [v6 setNetworkServiceType:{objc_msgSend(v8, "intValue")}];
    }

    if (*(v3 + 16))
    {
      [v6 setBoundInterfaceIdentifier:?];
    }

    v9 = CFHTTPMessageCopyAllHeaderFields([(MMCSHTTPContext *)self hc][336]);
    if (v9)
    {
      [v6 setAllHTTPHeaderFields:v9];
    }

    v10 = [(__CFDictionary *)v9 objectForKey:@"Trailer"];

    if (v10)
    {
      [v6 _CFURLRequest];
      _CFURLRequestSetAllowedProtocolTypes();
    }

    if ([(MMCSHTTPContext *)self hc][496])
    {
      if (![(MMCSHTTPContext *)self createNewRequestBodyInputStream])
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"createNewRequestBodyInputStream failed");
        goto LABEL_69;
      }

      v50 = v7;
      v11 = v9;
      v12 = v5;
      v13 = mEMORY[0x277CF36D8];
      inputStream = [(MMCSHTTPContext *)self inputStream];
      [v6 setHTTPBodyStream:inputStream];
    }

    else
    {
      v50 = v7;
      v11 = v9;
      v12 = v5;
      inputStream = CFHTTPMessageCopyBody([(MMCSHTTPContext *)self hc][336]);
      v13 = mEMORY[0x277CF36D8];
      if (inputStream)
      {
        [v6 setHTTPBody:inputStream];
      }
    }

    v16 = MEMORY[0x277CCACA8];
    v54.receiver = self;
    v54.super_class = MMCSHTTPContext;
    v17 = [(MMCSHTTPContext *)&v54 description];
    v18 = [v16 stringWithFormat:@"%@ hc=%p tx%04ld uuid:%@", v17, -[MMCSHTTPContext hc](self, "hc"), -[MMCSHTTPContext hc](self, "hc")[272], -[MMCSHTTPContext hc](self, "hc")[304]];

    if (mmcs_http_request_options_is_background(v3) && [(MMCSHTTPContext *)self hc][384] > 0.0)
    {
      v19 = v18;
      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{-[MMCSHTTPContext hc](self, "hc")[384]}];
      [v6 _setStartTimeoutDate:v20];

      v18 = v19;
      [v6 _setPayloadTransmissionTimeout:3600.0];
    }

    mEMORY[0x277CF36D8] = v13;
    if (v13)
    {
      v49 = v13;
      v21 = objc_alloc_init(MEMORY[0x277CF36E0]);
      v22 = [(MMCSHTTPContext *)self hc][368];
      v5 = v12;
      if (*(v22 + 80) <= 2uLL)
      {
        [v21 setDiscretionaryNetworkBehavior:?];
      }

      v48 = v18;
      v9 = v11;
      if (*(v22 + 88) <= 2uLL)
      {
        [v21 setDuetPreClearedMode:?];
      }

      [v21 set_allowsRetryForBackgroundDataTasks:*(v22 + 96) != 0];
      v7 = v50;
      if (*(v22 + 104))
      {
        v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:CFBooleanGetValue(*(v22 + 104)) != 0];
        [v21 setPrivacyProxyFailClosedOverride:v23];
      }

      if (*(v22 + 112))
      {
        v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:CFBooleanGetValue(*(v22 + 112)) != 0];
        [v21 setUseNWLoaderOverride:v24];
      }

      [v21 setTlsPinning:{mmcs_http_context_is_to_mobile_me(-[MMCSHTTPContext hc](self, "hc")) != 0}];
      [v21 setAllowRouting:{mmcs_http_context_is_to_mobile_me(-[MMCSHTTPContext hc](self, "hc")) != 0}];
      [v21 setMetricOptions:*(v22 + 120)];
      [v21 setNetworkingDelegate:*(v22 + 128)];
      [v21 setRedactRemoteEndpointFromNetworkMetrics:*(v22 + 78) != 0];
      [v21 setRedactUniformResourceIdentifierFromNetworkMetrics:1];
      if ([(MMCSHTTPContext *)self hc][304])
      {
        v25 = CFUUIDCreateString(*MEMORY[0x277CBECE8], [(MMCSHTTPContext *)self hc][304]);
        if (v25)
        {
          v26 = v25;
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ requestUUID:%@", -[MMCSHTTPContext hc](self, "hc")[264], v25];
          CFRelease(v26);
          if (v27)
          {
            [v21 setIdentifier:v27];
          }
        }
      }

      v28 = mmcs_http_total_timeout(3600.0);
      if (v28 <= 0.0)
      {
        v28 = 3600.0;
      }

      [v21 set_timeoutIntervalForResource:v28];
      if (mmcs_http_context_is_container_upload([(MMCSHTTPContext *)self hc]))
      {
        [v21 set_timeoutIntervalForRequest:600.0];
      }

      [v21 set_appleIDContextSessionIdentifier:0];
      if (v21)
      {
        [v21 setOutOfProcessPoolName:*(v22 + 48)];
        [v21 setAllowsCellularAccess:*(v22 + 74) != 0];
        [v21 set_allowsExpensiveAccess:*(v22 + 75) != 0];
        [v21 set_allowsPowerNapScheduling:*(v22 + 73) != 0];
        [v21 setAllowsUCA:*(v22 + 76) != 0];
      }

      v29 = *(v22 + 136);
      mEMORY[0x277CF36D8] = v49;
      if (v29)
      {
        *valuePtr = 0;
        if (CFNumberGetValue(v29, kCFNumberNSIntegerType, valuePtr))
        {
          [v21 setContainerType:*valuePtr];
        }
      }

      if (*([(MMCSHTTPContext *)self hc][368] + 24))
      {
        [v21 set_sourceApplicationBundleIdentifier:{*(-[MMCSHTTPContext hc](self, "hc")[368] + 24)}];
      }

      if (*([(MMCSHTTPContext *)self hc][368] + 32))
      {
        [v21 set_sourceApplicationSecondaryIdentifier:{*(-[MMCSHTTPContext hc](self, "hc")[368] + 32)}];
      }

      if (*([(MMCSHTTPContext *)self hc][368] + 40))
      {
        [v21 set_sourceApplicationAuditTokenData:{*(-[MMCSHTTPContext hc](self, "hc")[368] + 40)}];
      }

      v52 = 0;
      v30 = [v49 createDataTaskWithRequest:v6 options:v21 delegate:self sessionHandle:&v52];
      v31 = v52;
      [(MMCSHTTPContext *)self setDataTask:v30];

      dataTask = [(MMCSHTTPContext *)self dataTask];

      if (dataTask)
      {
        if (mmcs_http_request_options_is_background(v3))
        {
          v33 = [(MMCSHTTPContext *)self hc][352];
          if (v33 != -1)
          {
            dataTask2 = [(MMCSHTTPContext *)self dataTask];
            [dataTask2 setCountOfBytesClientExpectsToSend:v33];
          }

          v35 = [(MMCSHTTPContext *)self hc][360];
          if (v35 != -1)
          {
            dataTask3 = [(MMCSHTTPContext *)self dataTask];
            [dataTask3 setCountOfBytesClientExpectsToReceive:v35];
          }
        }

        if (*([(MMCSHTTPContext *)self hc][368] + 144))
        {
          v37 = [(MMCSHTTPContext *)self hc];
          if (v21)
          {
            if (!v37->var48)
            {
              v51 = 0;
              v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v51];
              v39 = v51;
              v41 = v39;
              if (v38)
              {
                v42 = v38;
                *([(MMCSHTTPContext *)self hc]+ 616) = v42;
              }

              else
              {
                v43 = mmcs_logging_logger_default(v39, v40);
                if (v41)
                {
                  XCFPrintError(v43, @"ErrorSerializingWarmRequestOptions", v41);
                }

                else
                {
                  log = v43;
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *valuePtr = 0;
                    _os_log_impl(&dword_2577D8000, log, OS_LOG_TYPE_ERROR, "Unable to serialize archivedData, error not returned.", valuePtr, 2u);
                  }
                }
              }
            }
          }
        }
      }

      v18 = v48;
    }

    else
    {
      v31 = 0;
      v5 = v12;
      v9 = v11;
      v7 = v50;
    }

    dataTask4 = [(MMCSHTTPContext *)self dataTask];

    if (dataTask4)
    {
      [(MMCSHTTPContext *)self setUrlSession:v31];
      dataTask5 = [(MMCSHTTPContext *)self dataTask];
      [dataTask5 resume];

      error = 0;
      goto LABEL_70;
    }

    [(MMCSHTTPContext *)self setIsTaskDone:1];
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 50, @"Session was invalidated");

LABEL_69:
    goto LABEL_70;
  }

  error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"CFHTTPMessageCopyRequestMethod failed");
LABEL_70:

  return error;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v3 = mmcs_logging_logger_default(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"dealloc");
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v9 = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  if ([(MMCSHTTPContext *)self activityMarker])
  {
    os_release([(MMCSHTTPContext *)self activityMarker]);
  }

  [(MMCSHTTPContext *)self setActivityMarker:0];
  if ([(MMCSHTTPContext *)self hc])
  {
    C3BaseRelease([(MMCSHTTPContext *)self hc]);
  }

  [(MMCSHTTPContext *)self setHc:0];
  v7.receiver = self;
  v7.super_class = MMCSHTTPContext;
  [(MMCSHTTPContext *)&v7 dealloc];
}

- (void)cleanupResponse
{
  [(MMCSHTTPContext *)self invalidate];
  [(MMCSHTTPContext *)self setUrlSession:0];

  [(MMCSHTTPContext *)self setDataTask:0];
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v3 = mmcs_logging_logger_default(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalidate", self);
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v9 = v4;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  [(MMCSHTTPContext *)self invalidateStreamPair];
  [(MMCSHTTPContext *)self setIsValid:0];
  dataTask = [(MMCSHTTPContext *)self dataTask];
  [dataTask cancel];

  [(MMCSHTTPContext *)self setDataTask:0];
  [(MMCSHTTPContext *)self setUrlSession:0];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker:0], &v17);
  handlerCopy[2](handlerCopy, requestCopy);
  os_activity_scope_leave(&v17);
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v45 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  if (gMMCS_DebugLevel >= 5)
  {
    v14 = mmcs_logging_logger_default(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ didSendBodyData:%lld totalBytesSent:%lld totalBytesExpectedToSend:%lld", self, sessionCopy, taskCopy, data, sent, send);
      v17 = mmcs_logging_logger_default(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v44 = v15;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  isValid = [(MMCSHTTPContext *)self isValid];
  if (isValid)
  {
    dataTask = [(MMCSHTTPContext *)self dataTask];
    taskDescription = [dataTask taskDescription];
    if (taskDescription)
    {
      dataTask2 = [(MMCSHTTPContext *)self dataTask];
      taskDescription2 = [dataTask2 taskDescription];
      taskDescription3 = [taskCopy taskDescription];
      v25 = [taskDescription2 isEqualToString:taskDescription3];

      if (v25)
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __91__MMCSHTTPContext_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
        v41[3] = &unk_279844F90;
        v41[4] = self;
        v41[5] = data;
        v41[6] = sent;
        v41[7] = send;
        HttpContextPerformBlockAsync(self, v41);
        goto LABEL_22;
      }
    }

    else
    {
    }

    v32 = mmcs_logging_logger_default(v26, v27);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      taskDescription4 = [taskCopy taskDescription];
      dataTask3 = [(MMCSHTTPContext *)self dataTask];
      taskDescription5 = [dataTask3 taskDescription];
      v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, taskDescription4, taskDescription5);

      v38 = mmcs_logging_logger_default(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v29)
      {
LABEL_21:
        CFRelease(v29);
      }
    }
  }

  else
  {
    v28 = mmcs_logging_logger_default(isValid, v19);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", self);
      v31 = mmcs_logging_logger_default(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v29)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  os_activity_scope_leave(&state);
}

void __91__MMCSHTTPContext_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isValid];
  if (v2)
  {
    v4 = [*(a1 + 32) hc];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    mmcs_nshttp_sent_data(v4, v5, v6);
  }

  else
  {
    v7 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", *(a1 + 32));
      v10 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  v45 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  streamCopy = stream;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  if (gMMCS_DebugLevel >= 5)
  {
    v13 = mmcs_logging_logger_default(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ needNewBodyStream", self, sessionCopy, taskCopy);
      v16 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v44 = v14;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  isValid = [(MMCSHTTPContext *)self isValid];
  if ((isValid & 1) == 0)
  {
    v27 = mmcs_logging_logger_default(isValid, v18);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: calling completionHandler with nil", self);
    v30 = mmcs_logging_logger_default(v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v44 = v28;
      _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v28)
    {
      goto LABEL_22;
    }

LABEL_21:
    CFRelease(v28);
LABEL_22:
    streamCopy[2](streamCopy, 0);
    goto LABEL_23;
  }

  dataTask = [(MMCSHTTPContext *)self dataTask];
  taskDescription = [dataTask taskDescription];
  if (!taskDescription)
  {

    goto LABEL_17;
  }

  dataTask2 = [(MMCSHTTPContext *)self dataTask];
  taskDescription2 = [dataTask2 taskDescription];
  taskDescription3 = [taskCopy taskDescription];
  v24 = [taskDescription2 isEqualToString:taskDescription3];

  if ((v24 & 1) == 0)
  {
LABEL_17:
    v31 = mmcs_logging_logger_default(v25, v26);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    taskDescription4 = [taskCopy taskDescription];
    dataTask3 = [(MMCSHTTPContext *)self dataTask];
    taskDescription5 = [dataTask3 taskDescription];
    v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, taskDescription4, taskDescription5);

    v37 = mmcs_logging_logger_default(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v44 = v28;
      _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v28)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __53__MMCSHTTPContext_URLSession_task_needNewBodyStream___block_invoke;
  v38[3] = &unk_279844FB8;
  v38[4] = self;
  v41 = streamCopy;
  v39 = sessionCopy;
  v40 = taskCopy;
  HttpContextPerformBlockAsync(self, v38);

LABEL_23:
  os_activity_scope_leave(&state);
}

void __53__MMCSHTTPContext_URLSession_task_needNewBodyStream___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isValid];
  if (v2)
  {
    if (gMMCS_DebugLevel >= 4)
    {
      v4 = mmcs_logging_logger_default(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ needNewBodyStream on run loop", *(a1 + 32), *(a1 + 40), *(a1 + 48));
        v7 = mmcs_logging_logger_default(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v14 = v5;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }
    }

    [*(a1 + 32) setDidOpen:0];
    if ([*(a1 + 32) createNewRequestBodyInputStream])
    {
      v8 = [*(a1 + 32) inputStream];
    }

    else
    {
      v8 = 0;
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid. Returning nil body stream", *(a1 + 32));
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v50 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  [(MMCSHTTPContext *)self setIsTaskDone:1];
  if ([(MMCSHTTPContext *)self hc][120] == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *([(MMCSHTTPContext *)self hc]+ 120) = Current;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MMCSHTTPContext *)selfCopy setIsHandlingError:1];
  objc_sync_exit(selfCopy);

  v15 = mmcs_logging_logger_default(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    originalRequest = [taskCopy originalRequest];
    v17 = [originalRequest URL];
    if (errorCopy)
    {
      v18 = [errorCopy description];
    }

    else
    {
      v18 = &stru_2868BF3F0;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ with %@ did complete %@", selfCopy, v17, v18);
    if (errorCopy)
    {
    }

    v22 = mmcs_logging_logger_default(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v49 = v19;
      _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  isValid = [(MMCSHTTPContext *)selfCopy isValid];
  if (isValid)
  {
    dataTask = [(MMCSHTTPContext *)selfCopy dataTask];
    taskDescription = [dataTask taskDescription];
    if (taskDescription)
    {
      dataTask2 = [(MMCSHTTPContext *)selfCopy dataTask];
      taskDescription2 = [dataTask2 taskDescription];
      taskDescription3 = [taskCopy taskDescription];
      v30 = [taskDescription2 isEqualToString:taskDescription3];

      if (v30)
      {
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __56__MMCSHTTPContext_URLSession_task_didCompleteWithError___block_invoke;
        v44[3] = &unk_279844FE0;
        v44[4] = selfCopy;
        v45 = taskCopy;
        v46 = errorCopy;
        HttpContextPerformBlockAsync(selfCopy, v44);

        goto LABEL_28;
      }
    }

    else
    {
    }

    v37 = mmcs_logging_logger_default(v31, v32);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      taskDescription4 = [taskCopy taskDescription];
      dataTask3 = [(MMCSHTTPContext *)selfCopy dataTask];
      taskDescription5 = [dataTask3 taskDescription];
      v34 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", selfCopy, taskDescription4, taskDescription5);

      v43 = mmcs_logging_logger_default(v41, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v49 = v34;
        _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v34)
      {
LABEL_27:
        CFRelease(v34);
      }
    }
  }

  else
  {
    v33 = mmcs_logging_logger_default(isValid, v24);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", selfCopy);
      v36 = mmcs_logging_logger_default(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v49 = v34;
        _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v34)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  os_activity_scope_leave(&state);
}

void __56__MMCSHTTPContext_URLSession_task_didCompleteWithError___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [a1[4] invalidateStreamPair];
  v2 = [a1[4] isValid];
  if (v2)
  {
    v4 = [a1[5] _timingData];
    [a1[4] setTimingData:v4];

    if (gMMCS_DebugLevel >= 5)
    {
      v7 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = a1[4];
        v10 = [v9 timingData];
        v11 = [v10 description];
        v12 = CFStringCreateWithFormat(v8, 0, @"%@ %@", v9, v11);

        v15 = mmcs_logging_logger_default(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v23 = v12;
          _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    if (([a1[4] didOpen] & 1) == 0)
    {
      [a1[4] setDidOpen:1];
      mmcs_nshttp_did_open([a1[4] hc]);
    }

    v16 = [a1[4] hc];
    v17 = [a1[5] countOfBytesSent];
    [a1[5] countOfBytesExpectedToSend];
    mmcs_nshttp_sent_data(v16, 0, v17);
    mmcs_nshttp_did_complete([a1[4] hc], a1[6]);
  }

  else
  {
    v18 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", a1[4]);
      v21 = mmcs_logging_logger_default(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v23 = v19;
        _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  isValid = [(MMCSHTTPContext *)self isValid];
  if (isValid)
  {
    dataTask = [(MMCSHTTPContext *)self dataTask];
    taskDescription = [dataTask taskDescription];
    if (taskDescription)
    {
      dataTask2 = [(MMCSHTTPContext *)self dataTask];
      taskDescription2 = [dataTask2 taskDescription];
      taskDescription3 = [taskCopy taskDescription];
      v18 = [taskDescription2 isEqualToString:taskDescription3];

      if (v18)
      {
LABEL_16:
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __54__MMCSHTTPContext_URLSession_dataTask_didReceiveData___block_invoke;
        v33[3] = &unk_279844FE0;
        v33[4] = self;
        v34 = taskCopy;
        v35 = dataCopy;
        HttpContextPerformBlockSync(self, v33);

        goto LABEL_17;
      }
    }

    else
    {
    }

    v25 = mmcs_logging_logger_default(v19, v20);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      taskDescription4 = [taskCopy taskDescription];
      dataTask3 = [(MMCSHTTPContext *)self dataTask];
      taskDescription5 = [dataTask3 taskDescription];
      v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, taskDescription4, taskDescription5);

      v32 = mmcs_logging_logger_default(v30, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v38 = v29;
        _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    goto LABEL_16;
  }

  v21 = mmcs_logging_logger_default(isValid, v12);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", self);
    v24 = mmcs_logging_logger_default(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v38 = v22;
      _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

LABEL_17:
  os_activity_scope_leave(&state);
}

void __54__MMCSHTTPContext_URLSession_dataTask_didReceiveData___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] isValid];
  if (v2)
  {
    v4 = [a1[4] didOpen];
    if ((v4 & 1) == 0)
    {
      v6 = mmcs_logging_logger_default(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *MEMORY[0x277CBECE8];
        v8 = a1[4];
        v9 = [a1[5] response];
        v10 = CFStringCreateWithFormat(v7, 0, @"%@ not already open. Is there a response?'%@'", v8, v9);

        v13 = mmcs_logging_logger_default(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = v10;
          _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      [a1[4] setDidOpen:1];
      mmcs_nshttp_did_open([a1[4] hc]);
    }

    mmcs_nshttp_received_data([a1[4] hc], a1[6]);
  }

  else
  {
    v14 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", a1[4]);
      v17 = mmcs_logging_logger_default(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  v15 = mmcs_logging_logger_default(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ URLSession:%@ dataTask:%@ didReceiveResponse:%@", self, sessionCopy, taskCopy, responseCopy);
    v18 = mmcs_logging_logger_default(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v46 = v16;
      _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  if ([(MMCSHTTPContext *)self hc][120] == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *([(MMCSHTTPContext *)self hc]+ 120) = Current;
  }

  isValid = [(MMCSHTTPContext *)self isValid];
  if ((isValid & 1) == 0)
  {
    v30 = mmcs_logging_logger_default(isValid, v21);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: calling completionHandler with NSURLSessionResponseCancel", self);
    v33 = mmcs_logging_logger_default(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v46 = v31;
      _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v31)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRelease(v31);
LABEL_23:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_24;
  }

  dataTask = [(MMCSHTTPContext *)self dataTask];
  taskDescription = [dataTask taskDescription];
  if (!taskDescription)
  {

    goto LABEL_18;
  }

  dataTask2 = [(MMCSHTTPContext *)self dataTask];
  taskDescription2 = [dataTask2 taskDescription];
  taskDescription3 = [taskCopy taskDescription];
  v27 = [taskDescription2 isEqualToString:taskDescription3];

  if ((v27 & 1) == 0)
  {
LABEL_18:
    v34 = mmcs_logging_logger_default(v28, v29);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    taskDescription4 = [taskCopy taskDescription];
    dataTask3 = [(MMCSHTTPContext *)self dataTask];
    taskDescription5 = [dataTask3 taskDescription];
    v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, taskDescription4, taskDescription5);

    v40 = mmcs_logging_logger_default(v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v46 = v31;
      _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v31)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __76__MMCSHTTPContext_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v42[3] = &unk_279845008;
  v42[4] = self;
  v43 = handlerCopy;
  HttpContextPerformBlockAsync(self, v42);

LABEL_24:
  os_activity_scope_leave(&state);
}

uint64_t __76__MMCSHTTPContext_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isValid];
  if (v2)
  {
    if (([*(a1 + 32) didOpen] & 1) == 0)
    {
      [*(a1 + 32) setDidOpen:1];
      mmcs_nshttp_did_open([*(a1 + 32) hc]);
    }

    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v6 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", *(a1 + 32));
      v9 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v11 = v7;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  if (gMMCS_DebugLevel >= 4)
  {
    v14 = mmcs_logging_logger_default(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ %@", self, sessionCopy, taskCopy, connectionCopy);
      v17 = mmcs_logging_logger_default(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v64 = v15;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  isValid = [(MMCSHTTPContext *)self isValid];
  if ((isValid & 1) == 0)
  {
    v34 = mmcs_logging_logger_default(isValid, v19);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: calling completionHandler with nil request", self);
    v37 = mmcs_logging_logger_default(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v64 = v35;
      _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v35)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v35);
LABEL_26:
    v45 = 0;
LABEL_27:
    (handlerCopy)[2](handlerCopy, v45);
    goto LABEL_28;
  }

  dataTask = [(MMCSHTTPContext *)self dataTask];
  taskDescription = [dataTask taskDescription];
  if (!taskDescription)
  {

    goto LABEL_21;
  }

  dataTask2 = [(MMCSHTTPContext *)self dataTask];
  taskDescription2 = [dataTask2 taskDescription];
  taskDescription3 = [taskCopy taskDescription];
  v25 = [taskDescription2 isEqualToString:taskDescription3];

  if ((v25 & 1) == 0)
  {
LABEL_21:
    v38 = mmcs_logging_logger_default(v26, v27);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    taskDescription4 = [taskCopy taskDescription];
    dataTask3 = [(MMCSHTTPContext *)self dataTask];
    taskDescription5 = [dataTask3 taskDescription];
    v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, taskDescription4, taskDescription5);

    v44 = mmcs_logging_logger_default(v42, v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v64 = v35;
      _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v35)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  requestIsStreamed = [(MMCSHTTPContext *)self requestIsStreamed];
  if ((requestIsStreamed & 1) == 0)
  {
    v45 = connectionCopy;
    if (gMMCS_DebugLevel < 5)
    {
      goto LABEL_27;
    }

    v46 = mmcs_logging_logger_default(requestIsStreamed, connectionCopy);
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
    v45 = connectionCopy;
    if (!v47)
    {
      goto LABEL_27;
    }

    v48 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ %@ is not streamed; using as is.", self, sessionCopy, taskCopy, connectionCopy);
    v50 = mmcs_logging_logger_default(v48, v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v64 = v48;
      _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v45 = connectionCopy;
    if (!v48)
    {
      goto LABEL_27;
    }

LABEL_34:
    CFRelease(v48);
    v45 = connectionCopy;
    goto LABEL_27;
  }

  if ([(MMCSHTTPContext *)self requestIsStreamed])
  {
    hTTPBodyStream = [connectionCopy HTTPBodyStream];
    if (hTTPBodyStream)
    {
      hTTPBodyStream2 = [connectionCopy HTTPBodyStream];
      inputStream = [(MMCSHTTPContext *)self inputStream];
      v32 = hTTPBodyStream2 == inputStream;

      if (v32)
      {
        v45 = connectionCopy;
        if (gMMCS_DebugLevel < 5)
        {
          goto LABEL_27;
        }

        v51 = mmcs_logging_logger_default(v33, connectionCopy);
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);
        v45 = connectionCopy;
        if (!v52)
        {
          goto LABEL_27;
        }

        v48 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ %@ is streamed, and the request input stream is non-nil and equal context input stream; using as is.", self, sessionCopy, taskCopy, connectionCopy);
        v54 = mmcs_logging_logger_default(v48, v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v64 = v48;
          _os_log_impl(&dword_2577D8000, v54, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v45 = connectionCopy;
        if (!v48)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __94__MMCSHTTPContext_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke;
  v57[3] = &unk_279845030;
  v57[4] = self;
  v61 = handlerCopy;
  v58 = sessionCopy;
  v59 = taskCopy;
  v60 = connectionCopy;
  HttpContextPerformBlockAsync(self, v57);

LABEL_28:
  os_activity_scope_leave(&state);
}

void __94__MMCSHTTPContext_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isValid];
  if (v2)
  {
    if (gMMCS_DebugLevel >= 5)
    {
      v4 = mmcs_logging_logger_default(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *MEMORY[0x277CBECE8];
        v6 = *(a1 + 32);
        v26 = *(a1 + 40);
        v7 = *(a1 + 56);
        v8 = [v6 inputStream];
        v9 = @"using existing stream";
        if (!v8)
        {
          v9 = @"creating new stream";
        }

        v10 = CFStringCreateWithFormat(v5, 0, @"%@ %@ %@ %@ is streamed, and the request input stream is nil or not equal the context input stream; %@.", v6, v26, v7, v9);

        v13 = mmcs_logging_logger_default(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v28 = v10;
          _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    mmcs_http_context_mark_as_writing([*(a1 + 32) hc]);
    v14 = [*(a1 + 32) inputStream];

    if (!v14)
    {
      [*(a1 + 32) createNewRequestBodyInputStream];
    }

    v15 = [*(a1 + 32) inputStream];

    if (v15)
    {
      v18 = [*(a1 + 56) mutableCopy];
      v19 = [*(a1 + 32) inputStream];
      [v18 setHTTPBodyStream:v19];

      (*(*(a1 + 64) + 16))();
      return;
    }

    v24 = mmcs_logging_logger_default(v16, v17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ unable to create new input stream", *(a1 + 32));
      v23 = mmcs_logging_logger_default(v21, v25);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v28 = v21;
LABEL_20:
      _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_21:
      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  else
  {
    v20 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", *(a1 + 32));
      v23 = mmcs_logging_logger_default(v21, v22);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v28 = v21;
      goto LABEL_20;
    }
  }

  (*(*(a1 + 64) + 16))();
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  v45 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  v13 = mmcs_logging_logger_default(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ _willRetryBackgroundDataTask after error %@", self, sessionCopy, taskCopy, errorCopy);
    v16 = mmcs_logging_logger_default(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v44 = v14;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  isValid = [(MMCSHTTPContext *)self isValid];
  if (isValid)
  {
    dataTask = [(MMCSHTTPContext *)self dataTask];
    taskDescription = [dataTask taskDescription];
    if (taskDescription)
    {
      dataTask2 = [(MMCSHTTPContext *)self dataTask];
      taskDescription2 = [dataTask2 taskDescription];
      taskDescription3 = [taskCopy taskDescription];
      v24 = [taskDescription2 isEqualToString:taskDescription3];

      if (v24)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        [(MMCSHTTPContext *)selfCopy setIsHandlingError:1];
        objc_sync_exit(selfCopy);

        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __69__MMCSHTTPContext_URLSession__willRetryBackgroundDataTask_withError___block_invoke;
        v39[3] = &unk_279844FE0;
        v39[4] = selfCopy;
        v40 = taskCopy;
        v41 = errorCopy;
        HttpContextPerformBlockSync(selfCopy, v39);

        goto LABEL_21;
      }
    }

    else
    {
    }

    v32 = mmcs_logging_logger_default(v25, v26);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      taskDescription4 = [taskCopy taskDescription];
      dataTask3 = [(MMCSHTTPContext *)self dataTask];
      taskDescription5 = [dataTask3 taskDescription];
      v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, taskDescription4, taskDescription5);

      v38 = mmcs_logging_logger_default(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v29)
      {
LABEL_20:
        CFRelease(v29);
      }
    }
  }

  else
  {
    v28 = mmcs_logging_logger_default(isValid, v18);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", self);
      v31 = mmcs_logging_logger_default(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v29)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  os_activity_scope_leave(&state);
}

void __69__MMCSHTTPContext_URLSession__willRetryBackgroundDataTask_withError___block_invoke(id *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ synchronous callback", a1[4]);
    v6 = mmcs_logging_logger_default(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v37 = v4;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v7 = [a1[4] isValid];
  if (v7)
  {
    v9 = [a1[5] _timingData];
    [a1[4] setTimingData:v9];

    [a1[4] invalidateStreamPair];
    mmcs_nshttp_will_retry_in_background([a1[4] hc], a1[6]);
    if (![a1[4] hc] || *(objc_msgSend(a1[4], "hc") + 292))
    {
      goto LABEL_9;
    }

    user_data = mmcs_http_context_get_user_data([a1[4] hc]);
    if (*([a1[4] hc] + 368) && *(*(objc_msgSend(a1[4], "hc") + 368) + 77))
    {
      v15 = [a1[6] domain];
      if ([v15 isEqualToString:*MEMORY[0x277CCA738]])
      {
        v16 = [a1[6] code];

        if (v16 == -1001)
        {
          v19 = mmcs_logging_logger_default(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelling request with FailFail enabled after initial background error");
            v26 = mmcs_logging_logger_default(v24, v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v37 = v24;
              _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

          v27 = a1[6];
          v28 = @"Fastfail enabled; cancelling background request after timeout.";
LABEL_36:
          error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, v27, v28, v20, v21, v22, v23);
          mmcs_http_context_should_cancel([a1[4] hc], error_with_underlying_error);
          if (error_with_underlying_error)
          {
            CFRelease(error_with_underlying_error);
          }
        }
      }

      else
      {
      }
    }

    else if (mmcs_http_context_is_request_body_done([a1[4] hc]))
    {
      if (user_data)
      {
        is_put_complete_at_edge_protocol_v2 = mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(user_data + 24));
        if (is_put_complete_at_edge_protocol_v2)
        {
          v31 = mmcs_logging_logger_default(is_put_complete_at_edge_protocol_v2, v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelling background retry with PutCompleteAtEdge && RequestBodyDone after initial background error");
            v34 = mmcs_logging_logger_default(v32, v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v37 = v32;
              _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            if (v32)
            {
              CFRelease(v32);
            }
          }

          v27 = a1[6];
          v28 = @"PutCompleteAtEdge && RequestBodyDone; cancelling background request upon automatic retry.";
          goto LABEL_36;
        }
      }
    }

LABEL_9:
    if ([a1[4] isValid])
    {
      [a1[4] setDidOpen:0];
    }

    return;
  }

  v10 = mmcs_logging_logger_default(v7, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", a1[4]);
    v13 = mmcs_logging_logger_default(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v37 = v11;
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }
}

@end