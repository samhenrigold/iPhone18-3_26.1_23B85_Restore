@interface WFSettingsClientBiomeReversalArbiter
+ (id)reversePublisherOptions;
- (BOOL)lastEventEquals:(id)equals;
- (WFSettingsClientBiomeReversalArbiter)initWithBiomeStream:(id)stream;
- (WFSettingsClientBiomeReversalArbiter)initWithPublisher:(id)publisher reversePublisher:(id)reversePublisher;
- (void)_pollBiomeForBookmarkForFirstEventAfterBookmark:(id)bookmark trial:(unint64_t)trial completionHandler:(id)handler;
- (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler;
- (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler;
- (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler;
@end

@implementation WFSettingsClientBiomeReversalArbiter

- (BOOL)lastEventEquals:(id)equals
{
  equalsCopy = equals;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__72201;
  v14 = __Block_byref_object_dispose__72202;
  v15 = 0;
  publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
  last = [publisher last];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__WFSettingsClientBiomeReversalArbiter_lastEventEquals___block_invoke_2;
  v9[3] = &unk_1E837F610;
  v9[4] = &v10;
  v7 = [last sinkWithCompletion:&__block_literal_global_194_72203 receiveInput:v9];

  LOBYTE(publisher) = [v11[5] isEqual:equalsCopy];
  _Block_object_dispose(&v10, 8);

  return publisher;
}

void __56__WFSettingsClientBiomeReversalArbiter_lastEventEquals___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  if (!bookmarkCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSettingsClientBiomeReversalArbiter.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"bookmark"}];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__72201;
  v42 = __Block_byref_object_dispose__72202;
  v43 = 0;
  v9 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = bookmarkCopy;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEBUG, "%s Got bookmark %@", buf, 0x16u);
  }

  publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
  last = [publisher last];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2;
  v37[3] = &unk_1E837F610;
  v37[4] = &v38;
  v12 = [last sinkWithCompletion:&__block_literal_global_183_72212 receiveInput:v37];

  v13 = v39[5];
  v14 = getWFBiomeReversalArbiterLogObject();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = bookmarkCopy;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEBUG, "%s Walking forward from %@", buf, 0x16u);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    publisher2 = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_187;
    v32[3] = &unk_1E837F6C0;
    v32[4] = &v33;
    v17 = [publisher2 drivableSinkWithBookmark:bookmarkCopy completion:&__block_literal_global_186_72216 shouldContinue:v32];

    v18 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEBUG, "%s Done walking forward", buf, 0xCu);
    }

    if (*(v34 + 24) == 1)
    {
      v19 = getWFBiomeReversalArbiterLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_INFO, "%s State has been invalidated -- something wrote after our bookmark. Cancelling.", buf, 0xCu);
      }

      userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
      handlerCopy[2](handlerCopy, 0, userCancelledError);
    }

    else
    {
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x2020000000;
      v31 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v47 = __Block_byref_object_copy__72201;
      v48 = __Block_byref_object_dispose__72202;
      v49 = 0;
      v22 = getWFBiomeReversalArbiterLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *v44 = 136315138;
        v45 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_DEBUG, "%s Walking back from last event", v44, 0xCu);
      }

      reversePublisher = [(WFSettingsClientBiomeReversalArbiter *)self reversePublisher];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_192;
      v29[3] = &unk_1E837F6E8;
      v29[4] = v30;
      v29[5] = buf;
      v29[6] = &v38;
      v24 = [reversePublisher drivableSinkWithBookmark:0 completion:&__block_literal_global_191_72220 shouldContinue:v29];

      v25 = *(*&buf[8] + 40);
      if (v25)
      {
        eventBody = [v25 eventBody];
        (handlerCopy)[2](handlerCopy, eventBody, 0);
      }

      else
      {
        v27 = getWFBiomeReversalArbiterLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315138;
          v45 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
          _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_ERROR, "%s The only record in the Biome stream is the one we bookmarked — there's nothing to restore to before that", v44, 0xCu);
        }

        eventBody = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.shortcuts.biomereversalarbiter" code:100 userInfo:0];
        handlerCopy[2](handlerCopy, 0, eventBody);
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v30, 8);
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s The Biome stream is empty", buf, 0xCu);
    }

    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.shortcuts.biomereversalarbiter" code:100 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v21);
  }

  _Block_object_dispose(&v38, 8);
}

void __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v8 = 136315394;
    v9 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke_2";
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Last mode is %f", &v8, 0x16u);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

uint64_t __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_187(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v7 = 136315394;
    v8 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke_2";
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Saw %f", &v7, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  return 0;
}

uint64_t __87__WFSettingsClientBiomeReversalArbiter_getReversalStateWithBookmark_completionHandler___block_invoke_2_192(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [v4 timestamp];
    v13 = 136315394;
    v14 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke_2";
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Iterating over %f", &v13, 0x16u);
  }

  v7 = *(*(a1[4] + 8) + 24);
  if (v7 == 1)
  {
    v8 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [*(*(a1[5] + 8) + 40) timestamp];
      v13 = 136315394;
      v14 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke";
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Setting mode to restore to %f, already seen last mode", &v13, 0x16u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else if ([v4 isEqual:*(*(a1[6] + 8) + 40)])
  {
    v10 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [*(*(a1[6] + 8) + 40) timestamp];
      v13 = 136315394;
      v14 = "[WFSettingsClientBiomeReversalArbiter getReversalStateWithBookmark:completionHandler:]_block_invoke";
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s Setting seen last mode. Last mode we know about is %f", &v13, 0x16u);
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  return v7 ^ 1u;
}

- (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__72201;
  v15 = __Block_byref_object_dispose__72202;
  v16 = 0;
  publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__WFSettingsClientBiomeReversalArbiter_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E837F638;
  v10[4] = &v11;
  v6 = [publisher sinkWithBookmark:0 completion:v10 receiveInput:&__block_literal_global_170];

  v7 = v12[5];
  if (v7)
  {
    handlerCopy[2](handlerCopy, v7, 0);
  }

  else
  {
    v8 = getWFBiomeReversalArbiterLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[WFSettingsClientBiomeReversalArbiter getBookmarkForCurrentStateWithCompletionHandler:]";
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s The Biome stream is empty", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.shortcuts.biomereversalarbiter" code:100 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v9);
  }

  _Block_object_dispose(&v11, 8);
}

void __88__WFSettingsClientBiomeReversalArbiter_getBookmarkForCurrentStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [v2 timestamp];
    v5 = 136315394;
    v6 = "[WFSettingsClientBiomeReversalArbiter getBookmarkForCurrentStateWithCompletionHandler:]_block_invoke_2";
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEBUG, "%s Saw %f", &v5, 0x16u);
  }
}

- (void)_pollBiomeForBookmarkForFirstEventAfterBookmark:(id)bookmark trial:(unint64_t)trial completionHandler:(id)handler
{
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  if (trial < 0xA)
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v19 = 0;
    publisher = [(WFSettingsClientBiomeReversalArbiter *)self publisher];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke;
    v14[3] = &unk_1E837F5E8;
    v16 = v18;
    trialCopy = trial;
    v14[4] = self;
    v15 = handlerCopy;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke_2;
    v13[3] = &unk_1E837F610;
    v13[4] = v18;
    v12 = [publisher sinkWithBookmark:bookmarkCopy completion:v14 receiveInput:v13];

    _Block_object_dispose(v18, 8);
  }

  else
  {
    userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
    (*(handlerCopy + 2))(handlerCopy, 0, userCancelledError);
  }
}

void __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 56);
    v7 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 136315650;
    v17 = "[WFSettingsClientBiomeReversalArbiter _pollBiomeForBookmarkForFirstEventAfterBookmark:trial:completionHandler:]_block_invoke";
    v18 = 2048;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Subscription ending @ trial=%lu, sawSomething=%d", buf, 0x1Cu);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = dispatch_time(0, 300000011);
    v9 = [*(a1 + 32) queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke_166;
    v12[3] = &unk_1E837F5C0;
    v12[4] = *(a1 + 32);
    v10 = v4;
    v11 = *(a1 + 56);
    v13 = v10;
    v15 = v11;
    v14 = *(a1 + 40);
    dispatch_after(v8, v9, v12);
  }
}

void __112__WFSettingsClientBiomeReversalArbiter__pollBiomeForBookmarkForFirstEventAfterBookmark_trial_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v6 = 136315394;
    v7 = "[WFSettingsClientBiomeReversalArbiter _pollBiomeForBookmarkForFirstEventAfterBookmark:trial:completionHandler:]_block_invoke_2";
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Publisher inside subscription saw %f", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  v8 = getWFBiomeReversalArbiterLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[WFSettingsClientBiomeReversalArbiter getBookmarkForFirstEventAfterBookmark:completionHandler:]";
    v11 = 2112;
    v12 = bookmarkCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Trying to see what's next after %@", &v9, 0x16u);
  }

  [(WFSettingsClientBiomeReversalArbiter *)self _pollBiomeForBookmarkForFirstEventAfterBookmark:bookmarkCopy trial:0 completionHandler:handlerCopy];
}

- (WFSettingsClientBiomeReversalArbiter)initWithPublisher:(id)publisher reversePublisher:(id)reversePublisher
{
  publisherCopy = publisher;
  reversePublisherCopy = reversePublisher;
  v17.receiver = self;
  v17.super_class = WFSettingsClientBiomeReversalArbiter;
  v9 = [(WFSettingsClientBiomeReversalArbiter *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);

    v12 = dispatch_get_global_queue(0, 0);
    v13 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.biomereversalarbiter.instance", v11, v12);
    queue = v9->_queue;
    v9->_queue = v13;

    objc_storeStrong(&v9->_publisher, publisher);
    objc_storeStrong(&v9->_reversePublisher, reversePublisher);
    v15 = v9;
  }

  return v9;
}

- (WFSettingsClientBiomeReversalArbiter)initWithBiomeStream:(id)stream
{
  streamCopy = stream;
  publisher = [streamCopy publisher];
  reversePublisherOptions = [objc_opt_class() reversePublisherOptions];
  v7 = [streamCopy publisherWithOptions:reversePublisherOptions];

  v8 = [(WFSettingsClientBiomeReversalArbiter *)self initWithPublisher:publisher reversePublisher:v7];
  return v8;
}

+ (id)reversePublisherOptions
{
  v2 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];

  return v2;
}

@end