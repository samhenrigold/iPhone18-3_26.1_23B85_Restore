@interface FigHTTPRequestSessionDataDelegate
- (FigHTTPRequestSessionDataDelegate)initWithResponseDispositionOption:(BOOL)option;
- (FigRetainProxy)_copyAndLockRequestForTask:(id)task;
- (id)adoptVoucherFromRetainProxy:(FigRetainProxy *)proxy;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_deregisterFigHTTPRequestForDataTask:(id)task;
- (void)_registerFigHTTPRequest:(OpaqueFigHTTPRequest *)request forDataTask:(id)task;
- (void)dealloc;
- (void)restoreVoucher:(id)voucher;
@end

@implementation FigHTTPRequestSessionDataDelegate

- (FigHTTPRequestSessionDataDelegate)initWithResponseDispositionOption:(BOOL)option
{
  v7.receiver = self;
  v7.super_class = FigHTTPRequestSessionDataDelegate;
  v4 = [(FigHTTPRequestSessionDataDelegate *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_taskToFigHTTPRequest = v5;
    if (v5 && (v4->_taskToFigHTTPRequestMutex = FigReentrantMutexCreate(), v4->_taskToFigHTTPRequest))
    {
      v4->_doesIgnoreDidReceiveResponseDisposition = option;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  if (self->_taskToFigHTTPRequestMutex)
  {
    FigSimpleMutexDestroy();
  }

  v3.receiver = self;
  v3.super_class = FigHTTPRequestSessionDataDelegate;
  [(FigHTTPRequestSessionDataDelegate *)&v3 dealloc];
}

- (void)_registerFigHTTPRequest:(OpaqueFigHTTPRequest *)request forDataTask:(id)task
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  [(NSMutableDictionary *)self->_taskToFigHTTPRequest setObject:*DerivedStorage forKey:task];

  FigSimpleMutexUnlock();
}

- (void)_deregisterFigHTTPRequestForDataTask:(id)task
{
  FigSimpleMutexLock();
  [(NSMutableDictionary *)self->_taskToFigHTTPRequest removeObjectForKey:task];

  FigSimpleMutexUnlock();
}

- (id)adoptVoucherFromRetainProxy:(FigRetainProxy *)proxy
{
  FigRetainProxyGetOwner();
  v3 = *(CMBaseObjectGetDerivedStorage() + 560);

  return voucher_adopt();
}

- (void)restoreVoucher:(id)voucher
{
  if (voucher)
  {
    v3 = voucher_adopt();
  }
}

- (FigRetainProxy)_copyAndLockRequestForTask:(id)task
{
  FigSimpleMutexLock();
  v5 = [(NSMutableDictionary *)self->_taskToFigHTTPRequest objectForKey:task];
  if (v5)
  {
    FigRetainProxyRetain();
    FigSimpleMutexUnlock();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      FigRetainProxyUnlockMutex();
      FigRetainProxyRelease();
      return 0;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return v5;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  if (![challenge previousFailureCount])
  {
    (*(handler + 2))(handler, 1, 0);
    goto LABEL_6;
  }

  if ([challenge previousFailureCount] != 1 || (objc_msgSend(objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "authenticationMethod"), "isEqual:", *MEMORY[0x1E695AB40]) & 1) != 0)
  {
    goto LABEL_4;
  }

  theArray = 0;
  FigCFHTTPCopyClientCertChain(&theArray);
  if (v8)
  {
    goto LABEL_16;
  }

  if (!theArray)
  {
LABEL_4:
    (*(handler + 2))(handler, 2, 0);
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex || (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 != SecIdentityGetTypeID()) || (v12 = *MEMORY[0x1E695E480], Count = CFArrayGetCount(theArray), (MutableCopy = CFArrayCreateMutableCopy(v12, Count, theArray)) == 0))
  {
LABEL_16:
    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_4;
  }

  v15 = MutableCopy;
  CFArrayRemoveValueAtIndex(MutableCopy, 0);
  v16 = [objc_alloc(MEMORY[0x1E695AC48]) initWithIdentity:v10 certificates:v15 persistence:1];
  if (!v16)
  {
    CFRelease(v15);
    goto LABEL_16;
  }

  (*(handler + 2))(handler, 0, v16);
  CFRelease(v15);
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_6:
  objc_autoreleasePoolPop(v7);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v10 = objc_autoreleasePoolPush();
  v11 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (!v11)
  {
    [FigHTTPRequestSessionDataDelegate URLSession:handler task:? didReceiveChallenge:? completionHandler:?];
    goto LABEL_18;
  }

  v12 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v11];
  FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated() || *(DerivedStorage + 172))
  {
LABEL_16:
    [FigHTTPRequestSessionDataDelegate URLSession:task:didReceiveChallenge:completionHandler:];
    goto LABEL_17;
  }

  if ([challenge previousFailureCount] || !objc_msgSend(challenge, "proposedCredential"))
  {
    if (challenge)
    {
      if (*(DerivedStorage + 464))
      {
        if (!FigCustomURLRequestInfoCreateMutable() && !FigCustomURLRequestInfoSetNSURLAuthenticationChallenge())
        {
          v14 = *(DerivedStorage + 464);
          v15 = *DerivedStorage;
          v16 = *(DerivedStorage + 64);
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v17)
          {
            if (!v17(v14, 0, v15, v16, figHTTPCustomURLLoaderCredentialCallback, DerivedStorage + 480))
            {
              v18 = *(DerivedStorage + 472);
              if (v18)
              {
                _Block_release(v18);
                *(DerivedStorage + 472) = 0;
              }

              *(DerivedStorage + 472) = _Block_copy(handler);
              goto LABEL_17;
            }
          }
        }
      }
    }

    goto LABEL_16;
  }

  (*(handler + 2))(handler, 1, 0);
LABEL_17:
  [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v12];
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
LABEL_18:
  objc_autoreleasePoolPop(v10);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  cf[16] = *MEMORY[0x1E69E9840];
  v103 = 0;
  v102 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (!v11)
  {
    v103 = -12420;
    goto LABEL_77;
  }

  selfCopy = self;
  v12 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v11];
  Owner = FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v98 = v12;
  if (*(DerivedStorage + 172))
  {
    v103 = -12420;
    self = selfCopy;
    goto LABEL_76;
  }

  v15 = DerivedStorage;
  handlerCopy = handler;
  *(DerivedStorage + 216) = FigGetUpTimeNanoseconds();
  v16 = [objc_msgSend(objc_msgSend(task "_incompleteTaskMetrics")];
  if (objc_opt_respondsToSelector())
  {
    _usesMultipath = [v16 _usesMultipath];
  }

  else
  {
    _usesMultipath = 0;
  }

  *(v15 + 536) = _usesMultipath;
  *(v15 + 537) = [v16 isExpensive];
  [objc_msgSend(v16 "domainLookupEndDate")];
  *(v15 + 264) = (v18 * 1000000000.0);
  [objc_msgSend(v16 "secureConnectionEndDate")];
  *(v15 + 272) = (v19 * 1000000000.0);
  [objc_msgSend(v16 "connectEndDate")];
  *(v15 + 280) = (v20 * 1000000000.0);
  [objc_msgSend(v16 "connectEndDate")];
  *(v15 + 288) = (v21 * 1000000000.0);
  [objc_msgSend(v16 "requestEndDate")];
  *(v15 + 296) = (v22 * 1000000000.0);
  [objc_msgSend(v16 "requestStartDate")];
  *(v15 + 312) = -((*(v15 + 264) + *(v15 + 280)) - v23 * 1000000000.0);
  *(v15 + 320) = [v16 isReusedConnection];
  cf[0] = 0;
  v24 = *MEMORY[0x1E695E480];
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v25 && !v25(Owner, @"FHRP_CFNetworkTimingData", v24, cf))
  {
    *v104 = 0;
    v101 = 0.0;
    if (!FigCFDictionaryGetDoubleIfPresent() && !FigCFDictionaryGetDoubleIfPresent() && !FigCFDictionaryGetDoubleIfPresent())
    {
      FigCFDictionaryGetDoubleIfPresent();
    }

    if (*v104 > 0.0)
    {
      *(v15 + 208) = *(v15 + 192) + ((*v104 - *(v15 + 184)) * 1000000000.0);
    }

    FigCFDictionaryGetDoubleIfPresent();
    if (v101 > 0.0)
    {
      *(v15 + 216) = *(v15 + 192) + ((v101 - *(v15 + 184)) * 1000000000.0);
    }

    CFRelease(cf[0]);
  }

  if (!*(v15 + 208))
  {
    *(v15 + 208) = *(v15 + 200);
  }

  [response _CFURLResponse];
  IsCellular = CFURLResponseConnectionIsCellular();
  *(v15 + 376) = IsCellular;
  if (IsCellular)
  {
    [response _CFURLResponse];
    *(v15 + 377) = CFURLResponseConnectionDidFallback();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allHeaderFields = [response allHeaderFields];
    *(v15 + 144) = allHeaderFields;
    if (!allHeaderFields)
    {
      _figHTTPRequestCreateErrorComment(v15, v28, @"NULL HTTP response headers", v29, v30, v31, v32, v33);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, v94, v96);
      v103 = v34;
    }

    statusCode = [response statusCode];
    *(v15 + 416) = 0;
    *(v15 + 424) = 0;
  }

  else if ([objc_msgSend(objc_msgSend(response "URL")] && objc_msgSend(objc_msgSend(objc_msgSend(response, "URL"), "scheme"), "caseInsensitiveCompare:", @"file"))
  {
    v36 = objc_opt_class();
    v37 = [objc_msgSend(response "URL")];
    _figHTTPRequestCreateErrorComment(v15, v38, @"Received response of type %@ for scheme %@", v39, v40, v41, v42, v43, v36, v37);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v95, v96);
    statusCode = 0;
    v103 = v44;
  }

  else
  {
    *(v15 + 144) = objc_alloc_init(MEMORY[0x1E695DF20]);
    *(v15 + 416) = [response expectedContentLength];
    statusCode = 200;
  }

  *(v15 + 457) = 1;
  FigBytePumpGetFigBaseObject();
  if (figHTTPShouldReportNetworkHistory(v15))
  {
    if (*(v15 + 176))
    {
      figHTTPSetIsDormant(Owner, 0);
    }

    else if (!*(v15 + 177))
    {
      *(v15 + 177) = 1;
      if (!*(v15 + 496))
      {
        FigNetworkHistoryRequestBecameActive();
      }

      FigNetworkHistorySetRequestSentTimestamp();
      figHTTPRequestProjectedResponseSize(v15);
      FigNetworkHistorySetRequestLatency();
    }
  }

  Callback = v103;
  if (v103)
  {
    goto LABEL_72;
  }

  v46 = [MEMORY[0x1E695AC08] localizedStringForStatusCode:statusCode];
  Response = CFHTTPMessageCreateResponse(v24, statusCode, v46, *MEMORY[0x1E695ADB8]);
  *(v15 + 152) = Response;
  if (Response)
  {
    v48 = Response;
    v49 = *(v15 + 144);
    if (v49)
    {
      CFDictionaryApplyFunction(v49, figApplyHeaderToCFHTTPMessaage, v48);
    }
  }

  if (!*(v15 + 80))
  {
    *(v15 + 80) = CFRetain([response URL]);
  }

  v50 = *(v15 + 368);
  if (v50)
  {
    CFRelease(v50);
  }

  [response _CFURLResponse];
  *(v15 + 368) = CFURLResponseCopyPeerAddress();
  FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(statusCode, &v103, &v102);
  if (v103)
  {
    v51 = *(v15 + 520);
    v52 = v102;
    *(v15 + 520) = v102;
    if (v52)
    {
      CFRetain(v52);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    LODWORD(v101) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [*(v15 + 144) valueForKey:@"X-Error-Description"];
    goto LABEL_63;
  }

  if (*(v15 + 170))
  {
    v54 = [*(v15 + 144) valueForKey:@"Content-Encoding"];
    if (v54)
    {
      if (![v54 caseInsensitiveCompare:@"gzip"])
      {
        *(v15 + 171) = 1;
      }
    }
  }

  if (*(v15 + 168))
  {
    cf[0] = 0;
    *v104 = 0;
    v101 = 0.0;
    type = OS_LOG_TYPE_DEFAULT;
    if (FigCFHTTPGetContentRangeFromHeaderString([*(v15 + 144) valueForKey:@"Content-Range"], cf, v104, &v101, &type))
    {
      v62 = *(v15 + 120);
      v61 = *(v15 + 128);
      if (cf[0] == v62)
      {
        v63 = *v104;
        if (!v61 || *v104 == cf[0] + v61 - 1 || type && *v104 + 1 == *&v101)
        {
          v64 = *v104 - cf[0] + 1;
          *(v15 + 416) = v64;
          if (v61 > v64)
          {
            *(v15 + 128) = v64;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v63 = *v104;
      }

      _figHTTPRequestCreateErrorComment(v15, v55, @"content range mismatch - should be start %lld length %lld is start %lld length %lld", v56, v57, v58, v59, v60, v62, v61, cf[0], v63);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17508, 4294954357, "HTTPRequest", 2134);
LABEL_85:
      v103 = v66;
      goto LABEL_63;
    }

    if (statusCode == 206 && !*(v15 + 128))
    {
      v74 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, v94, v96);
      v103 = v75;
      _figHTTPRequestCreateErrorComment(v15, v76, @"have 206 with no Content-Range, and no end length", v77, v78, v79, v80, v81, v74, v93);
      goto LABEL_63;
    }
  }

LABEL_66:
  if (*(v15 + 416) || *(v15 + 171))
  {
    goto LABEL_68;
  }

  cf[0] = 0;
  if (FigCFHTTPGetContentLengthFromHeaderString([*(v15 + 144) valueForKey:@"Content-Length"], cf))
  {
    v73 = cf[0];
    *(v15 + 416) = cf[0];
    if (!*(v15 + 168))
    {
      goto LABEL_68;
    }

    if (statusCode == 304)
    {
      *(v15 + 416) = 0;
      goto LABEL_68;
    }

    v90 = *(v15 + 128);
    if (v90)
    {
      if (v90 == v73)
      {
LABEL_68:
        if (*(v15 + 365))
        {
          v65 = 17;
        }

        else
        {
          v65 = 1;
        }

        Callback = figHTTPRequestPerformReadCallback(Owner, 0, 0, 0, v65, 0);
        v103 = Callback;
LABEL_72:
        handler = handlerCopy;
        goto LABEL_73;
      }
    }

    if (*(v15 + 364))
    {
LABEL_98:
      *(v15 + 365) = 1;
      goto LABEL_68;
    }

    _figHTTPRequestCreateErrorComment(v15, v67, @"byte range length mismatch - should be length %lld is length %lld", v68, v69, v70, v71, v72, *(v15 + 128), v73);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17508, 4294954357, "HTTPRequest", 2178);
    goto LABEL_85;
  }

  if (statusCode == 304 || !*(v15 + 168))
  {
    goto LABEL_68;
  }

  if (*(v15 + 364))
  {
    goto LABEL_98;
  }

  v82 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, v94, v96);
  v103 = v83;
  _figHTTPRequestCreateErrorComment(v15, v84, @"byte range and no content length - error code is %d", v85, v86, v87, v88, v89, v82, statusCode);
LABEL_63:
  handler = handlerCopy;
  Callback = v103;
LABEL_73:
  self = selfCopy;
  if (Callback != -12785 && Callback)
  {
    figHTTPRequestPerformReadCallback(Owner, 0, 0, 0, 2u, Callback);
  }

LABEL_76:
  [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v98];
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  if (!v103)
  {
    (*(handler + 2))(handler, 1);
    goto LABEL_80;
  }

LABEL_77:
  (*(handler + 2))(handler, 0);
  if (self->_doesIgnoreDidReceiveResponseDisposition)
  {
    [task cancel];
  }

LABEL_80:
  objc_autoreleasePoolPop(v10);
  if (v102)
  {
    CFRelease(v102);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  if (data)
  {
    v8 = CFRetain(data);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (!v9)
  {
    goto LABEL_59;
  }

  v10 = v9;
  v11 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v9];
  Owner = FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  _incompleteTaskMetrics = *(DerivedStorage + 256);
  if (!_incompleteTaskMetrics)
  {
    _incompleteTaskMetrics = [*(DerivedStorage + 504) _incompleteTaskMetrics];
  }

  v15 = [objc_msgSend(_incompleteTaskMetrics "transactionMetrics")];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  if (v15)
  {
    v16 = v15;
    if (nw_data_transfer_report_get_state([v15 _dataTransferReport]) == nw_data_transfer_report_state_collected)
    {
      transport_smoothed_rtt_milliseconds = nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds([v16 _dataTransferReport], 0);
      *(v49 + 6) = transport_smoothed_rtt_milliseconds;
      if (transport_smoothed_rtt_milliseconds)
      {
        goto LABEL_14;
      }
    }

    else if (*(v49 + 6))
    {
      goto LABEL_14;
    }

    if ([v16 _establishmentReport])
    {
      _establishmentReport = [v16 _establishmentReport];
      enumerate_block = MEMORY[0x1E69E9820];
      *v46 = 3221225472;
      *&v46[8] = __figHTTPGetConnectionRTT_block_invoke;
      *&v46[16] = &unk_1E748EF08;
      v47 = &v48;
      nw_establishment_report_enumerate_protocols(_establishmentReport, &enumerate_block);
    }
  }

LABEL_14:
  _Block_object_dispose(&v48, 8);
  if (!*(DerivedStorage + 172))
  {
    v44 = v11;
    figHTTPSetIsDormant(Owner, 0);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 232) = figHTTPCapUptimeToResponseEndTime(DerivedStorage, UpTimeNanoseconds);
    if (figHTTPShouldReportNetworkHistory(DerivedStorage))
    {
      [data length];
      FigNetworkHistoryRequestReceivedBytes();
    }

    v20 = objc_autoreleasePoolPush();
    Length = CFDataGetLength(v8);
    figHttpRequestEnsureNotTooManyBytes(Owner, Length);
    OutputBuffer = v22;
    v24 = *(DerivedStorage + 365);
    if (v22)
    {
      v26 = 0;
    }

    else
    {
      if (*(DerivedStorage + 365))
      {
        v25 = *(DerivedStorage + 424);
        v26 = *(DerivedStorage + 120) - v25;
        if (v26 < Length)
        {
          *(DerivedStorage + 365) = 0;
          goto LABEL_25;
        }
      }

      else
      {
        v26 = 0;
        if (Length)
        {
          goto LABEL_25;
        }

        v25 = *(DerivedStorage + 424);
      }

      *(DerivedStorage + 424) = v25 + Length;
    }

    if (v24)
    {
LABEL_54:
      if (!FigRetainProxyIsInvalidated())
      {
        if (OutputBuffer)
        {
          [FigHTTPRequestSessionDataDelegate URLSession:? dataTask:? didReceiveData:?];
        }

        else
        {
          *(DerivedStorage + 240) = FigGetUpTimeNanoseconds();
        }
      }

      objc_autoreleasePoolPop(v20);
      v11 = v44;
      goto LABEL_58;
    }

LABEL_25:
    v43 = v20;
    if (*(DerivedStorage + 16))
    {
      selfCopy = self;
      v27 = FigRetainProxyGetOwner();
      v28 = CMBaseObjectGetDerivedStorage();
      v29 = CFDataGetLength(v8) - v26;
      *(v28 + 424) += v26;
      if (v29 < 1)
      {
LABEL_40:
        OutputBuffer = 0;
      }

      else
      {
        while (1)
        {
          v48 = 0;
          enumerate_block = 0;
          OutputBuffer = figHTTPRequestGetOutputBuffer(v27, &enumerate_block, &v48);
          if (FigRetainProxyIsInvalidated() || OutputBuffer)
          {
            break;
          }

          if (!*(v28 + 384))
          {
            goto LABEL_40;
          }

          if (v48 >= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = v48;
          }

          v52.location = v26;
          v52.length = v30;
          CFDataGetBytes(v8, v52, enumerate_block);
          v31 = *(v28 + 408) - v30;
          *(v28 + 400) += v30;
          *(v28 + 408) = v31;
          if (*(v28 + 362) || !v31)
          {
            v33 = figHttpRequestSendOutputBlockBuffer(v10, 0);
            if (v33)
            {
              OutputBuffer = v33;
              break;
            }
          }

          v26 += v30;
          v32 = v29 <= v30;
          v29 -= v30;
          if (v32)
          {
            goto LABEL_40;
          }
        }
      }

      self = selfCopy;
      goto LABEL_42;
    }

    v34 = FigRetainProxyGetOwner();
    v35 = CMBaseObjectGetDerivedStorage();
    v36 = v35;
    if (*(v35 + 365))
    {
      v37 = *(v35 + 120) - *(v35 + 424);
    }

    else
    {
      v37 = 0;
    }

    if (CMBlockBufferCreateEmpty(*(v35 + 160), 0, 0, (v35 + 384)))
    {
      [FigHTTPRequestSessionDataDelegate URLSession:? dataTask:? didReceiveData:?];
    }

    else
    {
      if (*(v36 + 384))
      {
        v38 = CFDataGetLength(v8);
        figHttpRequestEnsureNotTooManyBytes(v34, v38);
        if (!appended)
        {
          v40 = v38 - v37;
          if (v38 <= v37)
          {
            *(v36 + 424) += v38;
            if (v38 != v37)
            {
              v40 = 0;
              goto LABEL_53;
            }

            v40 = 0;
LABEL_52:
            *(v36 + 365) = 0;
LABEL_53:
            v20 = v43;
            *(v36 + 400) = v40;
            *(v36 + 408) = 0;
            *(v36 + 392) = 0;
            OutputBuffer = figHttpRequestSendOutputBlockBuffer(v10, 0);
            goto LABEL_54;
          }

          *v46 = 0;
          enumerate_block = 0;
          *&v46[4] = figHttpRequestFreeCFData;
          *&v46[12] = CFRetain(v8);
          BytePtr = CFDataGetBytePtr(v8);
          appended = CMBlockBufferAppendMemoryBlock(*(v36 + 384), BytePtr, v38, 0, &enumerate_block, v37, v38 - v37, 0);
          if (!appended)
          {
            *(v36 + 424) += v37;
            goto LABEL_52;
          }
        }

        OutputBuffer = appended;
LABEL_42:
        v20 = v43;
        goto LABEL_54;
      }

      [FigHTTPRequestSessionDataDelegate URLSession:? dataTask:? didReceiveData:?];
    }

    OutputBuffer = enumerate_block;
    goto LABEL_42;
  }

LABEL_58:
  [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v11];
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
LABEL_59:
  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  (*(handler + 2))(handler, 0);

  objc_autoreleasePoolPop(v7);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v7 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (v7)
  {
    v8 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v7];
    Owner = FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 552))
    {
      if (error)
      {
        domain = [error domain];
        if ([domain compare:*MEMORY[0x1E696A978]] || objc_msgSend(error, "code") != -999)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }
      }

      else
      {
        v12 = 2;
      }

      *(DerivedStorage + 552) = v12;
    }

    if (*(DerivedStorage + 172))
    {
      goto LABEL_34;
    }

    *(DerivedStorage + 224) = FigGetUpTimeNanoseconds();
    v13 = objc_autoreleasePoolPush();
    *(DerivedStorage + 512) = error;
    v14 = *DerivedStorage;
    v15 = CMBaseObjectGetDerivedStorage();
    if (*(v15 + 172))
    {
LABEL_31:
      if (!FigRetainProxyIsInvalidated())
      {
        figHttpRequestCloseNSURLSessionTask(Owner);
      }

      objc_autoreleasePoolPop(v13);
LABEL_34:
      [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v8];
      FigRetainProxyUnlockMutex();
      FigRetainProxyRelease();
      return;
    }

    v16 = v15;
    v17 = *(v15 + 512);
    if (v17)
    {
      domain2 = [v17 domain];
      code = [*(v16 + 512) code];
      if (*(v16 + 178))
      {
        v26 = *(v16 + 72);
      }

      else
      {
        v26 = @"[]";
      }

      _figHTTPRequestCreateErrorComment(v16, v20, @"Network error: domain=%@, code=%d, %@ for %@", v21, v22, v23, v24, v25, domain2, code, *(v16 + 512), v26);
      [*(v16 + 512) code];
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v50, v51);
      OutputBuffer = v30;
LABEL_24:
      if (OutputBuffer)
      {
        OUTLINED_FUNCTION_0_134();
        v36 = OutputBuffer;
        goto LABEL_29;
      }

LABEL_26:
      if (*(v16 + 384) && *(v16 + 392) < *(v16 + 400))
      {
        figHttpRequestSendOutputBlockBuffer(v14, 2u);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_134();
      v36 = 0;
LABEL_29:
      figHTTPRequestPerformReadCallback(v31, v32, v33, v34, v35, v36);
LABEL_30:
      FigRetainProxyIsInvalidated();
      goto LABEL_31;
    }

    if (!*(v16 + 169))
    {
      goto LABEL_26;
    }

    v27 = *(v16 + 384);
    if (v27)
    {
      if (*(v16 + 408))
      {
        dataPointerOut = 0;
        lengthAtOffsetOut = 0;
        if (!CMBlockBufferGetDataPointer(v27, *(v16 + 400), &lengthAtOffsetOut, 0, &dataPointerOut) && lengthAtOffsetOut)
        {
          OutputBuffer = 0;
          v29 = dataPointerOut;
LABEL_21:
          *v29 = 0;
          *(v16 + 400) = vaddq_s64(*(v16 + 400), xmmword_196E78030);
LABEL_41:
          *(v16 + 169) = 0;
          goto LABEL_24;
        }

        v47 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17508, 4294954874, "HTTPRequest", 1442);
        goto LABEL_46;
      }

      lengthAtOffsetOut = 0;
      figHttpRequestSendOutputBlockBuffer(v14, 0);
      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_31;
      }
    }

    else
    {
      lengthAtOffsetOut = 0;
    }

    if (*(v16 + 16))
    {
      OutputBuffer = figHTTPRequestGetOutputBuffer(Owner, &lengthAtOffsetOut, &dataPointerOut);
      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_31;
      }

      if (!OutputBuffer)
      {
        v29 = lengthAtOffsetOut;
        goto LABEL_21;
      }

LABEL_47:
      _figHTTPRequestCreateErrorComment(v16, v41, @"Memory error", v42, v43, v44, v45, v46, v47);
      goto LABEL_24;
    }

    v37 = MEMORY[0x19A8CC720](*(v16 + 160), 1, 1296807808, 0);
    if (v37)
    {
      v38 = v37;
      v39 = CMBlockBufferCreateWithMemoryBlock(*(v16 + 160), v37, 1uLL, *(v16 + 160), 0, 0, 1uLL, 0, (v16 + 384));
      if (*(v16 + 384))
      {
        OutputBuffer = v39;
        *v38 = 0;
        *(v16 + 400) = xmmword_196E78040;
        *(v16 + 392) = 0;
        goto LABEL_41;
      }

      CFAllocatorDeallocate(*(v16 + 160), v38);
      v48 = 1486;
    }

    else
    {
      v48 = 1477;
    }

    v47 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17508, 4294954874, "HTTPRequest", v48);
LABEL_46:
    OutputBuffer = v40;
    goto LABEL_47;
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  if ([objc_msgSend(metrics transactionMetrics] == 1)
  {
    v8 = [objc_msgSend(metrics "transactionMetrics")];
    v9 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
    if (v9)
    {
      v10 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v9];
      FigRetainProxyGetOwner();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 256) = metrics;
      [objc_msgSend(v8 "responseEndDate")];
      *(DerivedStorage + 304) = (v12 * 1000000000.0);
      *(DerivedStorage + 328) = [metrics redirectCount];
      if (objc_opt_respondsToSelector())
      {
        *(DerivedStorage + 336) = [v8 _privacyStance];
      }

      if (objc_opt_respondsToSelector())
      {
        v13 = *(DerivedStorage + 344);
        if (v13)
        {
          nw_release(v13);
        }

        *(DerivedStorage + 344) = 0;
        _establishmentReport = [v8 _establishmentReport];
        *(DerivedStorage + 344) = _establishmentReport;
        if (_establishmentReport)
        {
          nw_retain(_establishmentReport);
        }
      }

      v15 = *(DerivedStorage + 352);
      if (v15)
      {
        nw_release(v15);
      }

      *(DerivedStorage + 352) = 0;
      _dataTransferReport = [v8 _dataTransferReport];
      *(DerivedStorage + 352) = _dataTransferReport;
      if (_dataTransferReport)
      {
        nw_retain(_dataTransferReport);
      }

      [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v10];
      FigRetainProxyUnlockMutex();

      FigRetainProxyRelease();
    }
  }
}

- (_BYTE)URLSession:(_BYTE *)result dataTask:didReceiveData:.cold.3(_BYTE *result)
{
  if (!*result)
  {
    OUTLINED_FUNCTION_0_134();
    return figHTTPRequestPerformReadCallback(v1, v2, v3, v4, v5, v6);
  }

  return result;
}

@end