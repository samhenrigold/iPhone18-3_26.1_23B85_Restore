@interface _LTTextToSpeechTranslationRequest
- (_LTSpeechTranslationDelegate)delegate;
- (_LTTextToSpeechTranslationRequest)initWithLocalePair:(id)pair suggestedUniqueID:(id)d;
- (_LTTextToSpeechTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale suggestedUniqueID:(id)d;
- (id)nativeAudioFormat;
- (id)requestContext;
- (void)_startTranslationWithService:(id)service done:(id)done;
- (void)_translationFailedWithError:(id)error;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation _LTTextToSpeechTranslationRequest

- (id)requestContext
{
  v7.receiver = self;
  v7.super_class = _LTTextToSpeechTranslationRequest;
  requestContext = [(_LTTranslationRequest *)&v7 requestContext];
  outputFileURL = [(_LTTranslationRequest *)self outputFileURL];
  [requestContext setOutputFileURL:outputFileURL];

  v5 = 1;
  [requestContext setCancelOnCleanup:1];
  [requestContext setRoute:0];
  if (![(_LTTranslationRequest *)self forcedOfflineTranslation])
  {
    if ([(_LTTranslationRequest *)self _forcedOnlineTranslation])
    {
      v5 = 2;
    }

    else
    {
      if (![(_LTTranslationRequest *)self preferOnDeviceIfAvailable])
      {
        goto LABEL_7;
      }

      v5 = 3;
    }
  }

  [requestContext setRoute:v5];
LABEL_7:

  return requestContext;
}

- (_LTTextToSpeechTranslationRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale suggestedUniqueID:(id)d
{
  dCopy = d;
  targetLocaleCopy = targetLocale;
  localeCopy = locale;
  v11 = [[_LTLocalePair alloc] initWithSourceLocale:localeCopy targetLocale:targetLocaleCopy];

  v12 = [(_LTTextToSpeechTranslationRequest *)self initWithLocalePair:v11 suggestedUniqueID:dCopy];
  return v12;
}

- (_LTTextToSpeechTranslationRequest)initWithLocalePair:(id)pair suggestedUniqueID:(id)d
{
  v9.receiver = self;
  v9.super_class = _LTTextToSpeechTranslationRequest;
  v4 = [(_LTTranslationRequest *)&v9 initWithLocalePair:pair suggestedUniqueID:d];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.siri.translation.speechrequest", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = v4;
  }

  return v4;
}

- (id)nativeAudioFormat
{
  v2 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&SupportedASBD];

  return v2;
}

- (void)_startTranslationWithService:(id)service done:(id)done
{
  serviceCopy = service;
  doneCopy = done;
  v9 = _LTOSLogTranslationEngine(doneCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_DEFAULT, "Start text to speech translation with service", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___LTTextToSpeechTranslationRequest__startTranslationWithService_done___block_invoke;
  block[3] = &unk_278B6CCE0;
  objc_copyWeak(&v16, buf);
  v14 = serviceCopy;
  v15 = doneCopy;
  v11 = serviceCopy;
  v12 = doneCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_translationFailedWithError:(id)error
{
  errorCopy = error;
  delegate = [(_LTTextToSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_LTTextToSpeechTranslationRequest *)self delegate];
    [delegate2 translationDidFinishWithError:errorCopy];
  }
}

- (void)translatorDidTranslate:(id)translate
{
  translateCopy = translate;
  v6 = _LTOSLogTranslationEngine(translateCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_INFO, "TextToSpeechTranslation did receive translation result", v10, 2u);
  }

  delegate = [(_LTTextToSpeechTranslationRequest *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(_LTTextToSpeechTranslationRequest *)self delegate];
    [delegate2 translatorDidTranslate:translateCopy];
  }
}

- (void)translationDidFinishWithError:(id)error
{
  errorCopy = error;
  delegate = [(_LTTextToSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_LTTextToSpeechTranslationRequest *)self delegate];
    [delegate2 translationDidFinishWithError:errorCopy];
  }

  done = self->_done;
  if (done)
  {
    done[2]();
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end