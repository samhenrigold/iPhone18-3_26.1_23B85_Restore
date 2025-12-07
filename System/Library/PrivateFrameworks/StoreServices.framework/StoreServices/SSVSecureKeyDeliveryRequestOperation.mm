@interface SSVSecureKeyDeliveryRequestOperation
- (AVAssetResourceLoadingRequest)resourceLoadingRequest;
- (BOOL)isITunesStoreRequest;
- (BOOL)shouldIncludeGUID;
- (NSData)persistentContentKeyContext;
- (NSData)serverPlaybackContextData;
- (NSURL)certificateURL;
- (NSURL)keyServerURL;
- (SSVSecureKeyDeliveryRequestOperation)init;
- (SSVSecureKeyDeliveryRequestOperationDelegate)serverPlaybackContextDataDelegate;
- (double)_timeIntervalForStreamingKeyID:(int64_t)d responseKey:(id)key streamingKeyDictionaries:(id)dictionaries;
- (id)_contentKeyContextForStreamingKeyID:(int64_t)d streamingKeyDictionaries:(id)dictionaries renewAfter:(double *)after error:(id *)error;
- (id)_streamingKeyDictionaryForID:(int64_t)d URI:(id)i serverPlaybackContextData:(id)data;
- (id)_streamingRequestDictionaryWithStreamingKeyDictionaries:(id)dictionaries;
- (id)responseBlock;
- (void)_sendResponseBlockWithError:(id)error;
- (void)configureWithURLBagDictionary:(id)dictionary;
- (void)main;
- (void)setCertificateURL:(id)l;
- (void)setITunesStoreRequest:(BOOL)request;
- (void)setKeyServerURL:(id)l;
- (void)setPersistentContentKeyContext:(id)context;
- (void)setResourceLoadingRequest:(id)request;
- (void)setResponseBlock:(id)block;
- (void)setServerPlaybackContextData:(id)data;
- (void)setShouldIncludeGUID:(BOOL)d;
- (void)start;
@end

@implementation SSVSecureKeyDeliveryRequestOperation

- (SSVSecureKeyDeliveryRequestOperation)init
{
  v6.receiver = self;
  v6.super_class = SSVSecureKeyDeliveryRequestOperation;
  v2 = [(SSVSecureKeyDeliveryRequestOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVSecureKeyDeliveryRequestOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

- (NSURL)certificateURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SSVSecureKeyDeliveryRequestOperation_certificateURL__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSURL)keyServerURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SSVSecureKeyDeliveryRequestOperation_keyServerURL__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSData)persistentContentKeyContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SSVSecureKeyDeliveryRequestOperation_persistentContentKeyContext__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (AVAssetResourceLoadingRequest)resourceLoadingRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__SSVSecureKeyDeliveryRequestOperation_resourceLoadingRequest__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)responseBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__87;
  v10 = __Block_byref_object_dispose__88;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSVSecureKeyDeliveryRequestOperation_responseBlock__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = MEMORY[0x1DA6DFBB0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__SSVSecureKeyDeliveryRequestOperation_responseBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSData)serverPlaybackContextData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SSVSecureKeyDeliveryRequestOperation_serverPlaybackContextData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCertificateURL:(id)l
{
  lCopy = l;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SSVSecureKeyDeliveryRequestOperation_setCertificateURL___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setPersistentContentKeyContext:(id)context
{
  contextCopy = context;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SSVSecureKeyDeliveryRequestOperation_setPersistentContentKeyContext___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setKeyServerURL:(id)l
{
  lCopy = l;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SSVSecureKeyDeliveryRequestOperation_setKeyServerURL___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setITunesStoreRequest:(BOOL)request
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__SSVSecureKeyDeliveryRequestOperation_setITunesStoreRequest___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  requestCopy = request;
  dispatch_barrier_async(accessQueue, v4);
}

- (void)setResourceLoadingRequest:(id)request
{
  requestCopy = request;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SSVSecureKeyDeliveryRequestOperation_setResourceLoadingRequest___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setResponseBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSVSecureKeyDeliveryRequestOperation_setResponseBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_async(accessQueue, v7);
}

void __57__SSVSecureKeyDeliveryRequestOperation_setResponseBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  *(v3 + 280) = v2;
}

- (void)setShouldIncludeGUID:(BOOL)d
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SSVSecureKeyDeliveryRequestOperation_setShouldIncludeGUID___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  dCopy = d;
  dispatch_barrier_async(accessQueue, v4);
}

- (void)setServerPlaybackContextData:(id)data
{
  dataCopy = data;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SSVSecureKeyDeliveryRequestOperation_setServerPlaybackContextData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (BOOL)shouldIncludeGUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SSVSecureKeyDeliveryRequestOperation_shouldIncludeGUID__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isITunesStoreRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__SSVSecureKeyDeliveryRequestOperation_isITunesStoreRequest__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)configureWithURLBagDictionary:(id)dictionary
{
  v4 = [dictionary copy];
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SSVSecureKeyDeliveryRequestOperation_configureWithURLBagDictionary___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __70__SSVSecureKeyDeliveryRequestOperation_configureWithURLBagDictionary___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 296), *(a1 + 40));
  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 288) = 1;
  }
}

- (void)main
{
  v299[1] = *MEMORY[0x1E69E9840];
  if (![(SSVSecureKeyDeliveryRequestOperation *)self isCancelled])
  {
    v279 = 0;
    v280 = &v279;
    v281 = 0x3032000000;
    v282 = __Block_byref_object_copy__2;
    v283 = __Block_byref_object_dispose__2;
    v284 = 0;
    v273 = 0;
    v274 = &v273;
    v275 = 0x3032000000;
    v276 = __Block_byref_object_copy__2;
    v277 = __Block_byref_object_dispose__2;
    v278 = 0;
    v267 = 0;
    v268 = &v267;
    v269 = 0x3032000000;
    v270 = __Block_byref_object_copy__2;
    v271 = __Block_byref_object_dispose__2;
    v272 = 0;
    v261 = 0;
    v262 = &v261;
    v263 = 0x3032000000;
    v264 = __Block_byref_object_copy__2;
    v265 = __Block_byref_object_dispose__2;
    v266 = 0;
    v257 = 0;
    v258 = &v257;
    v259 = 0x2020000000;
    v260 = 0;
    v253 = 0;
    v254 = &v253;
    v255 = 0x2020000000;
    v256 = 0;
    v247 = 0;
    v248 = &v247;
    v249 = 0x3032000000;
    v250 = __Block_byref_object_copy__2;
    v251 = __Block_byref_object_dispose__2;
    v252 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke;
    block[3] = &unk_1E84AD098;
    block[4] = self;
    block[5] = &v279;
    block[6] = &v273;
    block[7] = &v261;
    block[8] = &v257;
    block[9] = &v253;
    block[10] = &v267;
    block[11] = &v247;
    dispatch_sync(accessQueue, block);
    if (!v280[5] || !v274[5] || !v262[5])
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2002 userInfo:0];
      [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v5];
LABEL_188:

      _Block_object_dispose(&v247, 8);
      _Block_object_dispose(&v253, 8);
      _Block_object_dispose(&v257, 8);
      _Block_object_dispose(&v261, 8);

      _Block_object_dispose(&v267, 8);
      _Block_object_dispose(&v273, 8);

      _Block_object_dispose(&v279, 8);
      return;
    }

    if (*(v258 + 24) == 1 && v268[5])
    {
      v4 = [SSVURLBagInterpreter alloc];
      v5 = [(SSVURLBagInterpreter *)v4 initWithURLBagDictionary:v268[5]];
    }

    else
    {
      v5 = 0;
    }

    v6 = objc_alloc(MEMORY[0x1E696AD68]);
    v7 = [v6 initWithURL:v280[5]];
    [v7 setHTTPMethod:@"GET"];
    v220 = v7;
    v240 = 0;
    v241 = &v240;
    v242 = 0x3032000000;
    v243 = __Block_byref_object_copy__2;
    v244 = __Block_byref_object_dispose__2;
    v245 = 0;
    v234 = 0;
    v235 = &v234;
    v236 = 0x3032000000;
    v237 = __Block_byref_object_copy__2;
    v238 = __Block_byref_object_dispose__2;
    v239 = 0;
    v8 = [[SSVLoadURLOperation alloc] initWithURLRequest:v7];
    v9 = v8;
    if (*(v258 + 24) == 1)
    {
      [(SSVLoadURLOperation *)v8 setITunesStoreRequest:1];
      if (v268[5])
      {
        [(SSVLoadURLOperation *)v9 configureWithURLBagDictionary:?];
        storeFrontSuffix = [(SSVLoadURLOperation *)v9 storeFrontSuffix];
        v11 = storeFrontSuffix == 0;

        if (v11)
        {
          storeFrontSuffix2 = [(SSVURLBagInterpreter *)v5 storeFrontSuffix];
          [(SSVLoadURLOperation *)v9 setStoreFrontSuffix:storeFrontSuffix2];
        }

        [(SSVLoadURLOperation *)v9 setMachineDataStyle:2];
        v13 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:1];
        [(SSVLoadURLOperation *)v9 setSAPSignaturePolicy:v13];
      }
    }

    v233[0] = MEMORY[0x1E69E9820];
    v233[1] = 3221225472;
    v233[2] = __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_2;
    v233[3] = &unk_1E84AD0C0;
    v233[4] = &v234;
    v233[5] = &v240;
    [(SSVLoadURLOperation *)v9 setOutputBlock:v233];
    [(SSVLoadURLOperation *)v9 main];
    if ([v235[5] length])
    {
      request = [v262[5] request];
      v218 = [request URL];

      host = [v218 host];
      v16 = [host dataUsingEncoding:4];
      v215 = v16;
      v213 = host;
      if (*(v254 + 24) == 1)
      {
        v18 = SSVAVFoundationFramework(v16, v17);
        v19 = SSVWeakLinkedStringConstantForString("AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey", v18);
        v298 = v19;
        v299[0] = MEMORY[0x1E695E118];
        v214 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v299 forKeys:&v298 count:1];
      }

      else
      {
        v214 = 0;
      }

      if (v248[5])
      {
        v21 = 0;
      }

      else
      {
        v34 = v262[5];
        v35 = v235[5];
        v232 = 0;
        v36 = [v34 streamingContentKeyRequestDataForApp:v35 contentIdentifier:v215 options:v214 error:&v232];
        v21 = v232;
        v37 = v248[5];
        v248[5] = v36;

        [(SSVSecureKeyDeliveryRequestOperation *)self setServerPlaybackContextData:v248[5]];
        serverPlaybackContextDataDelegate = [(SSVSecureKeyDeliveryRequestOperation *)self serverPlaybackContextDataDelegate];
        [serverPlaybackContextDataDelegate secureKeyDeliveryRequestOperationDidChangeServerPlaybackContextData:self];
      }

      absoluteString = [v218 absoluteString];
      v216 = absoluteString;
      if (v21 || !v248[5])
      {
        v20 = v21;
        v40 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v40)
        {
          v40 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v41) = [v40 shouldLog];
        shouldLogToDisk = [v40 shouldLogToDisk];
        oSLogObject = [v40 OSLogObject];
        if (shouldLogToDisk)
        {
          LODWORD(v41) = v41 | 2;
        }

        v44 = oSLogObject;
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v41;
        }

        else
        {
          v41 &= 2u;
        }

        if (v41)
        {
          v45 = objc_opt_class();
          *v293 = 138543618;
          *&v293[4] = v45;
          *&v293[12] = 2112;
          *&v293[14] = v20;
          v46 = v45;
          v47 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_1D48BA000, v44, 0, "[%{public}@] Unable to create key server request because creating the SPC failed with error: %@", v293, 22);

          if (!v47)
          {
LABEL_184:

            goto LABEL_185;
          }

          v44 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:4];
          free(v47);
          SSFileLog(v40, @"%@", v48, v49, v50, v51, v52, v53, v44);
        }

LABEL_183:

        goto LABEL_184;
      }

      v40 = [(SSVSecureKeyDeliveryRequestOperation *)self _streamingKeyDictionaryForID:0 URI:absoluteString serverPlaybackContextData:?];
      v297 = v40;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v297 count:1];
      v212 = [(SSVSecureKeyDeliveryRequestOperation *)self _streamingRequestDictionaryWithStreamingKeyDictionaries:v54];

      v231 = 0;
      v55 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v212 options:0 error:&v231];
      v56 = v231;
      v20 = v56;
      v211 = v55;
      if (v55 && !v56)
      {
        v57 = [MEMORY[0x1E696AD68] requestWithURL:v274[5]];
        [v57 setHTTPBody:v55];
        [v57 setHTTPMethod:@"POST"];
        [v57 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        date = [MEMORY[0x1E695DF00] date];
        *v293 = 0;
        *&v293[8] = v293;
        *&v293[16] = 0x3032000000;
        v294 = __Block_byref_object_copy__2;
        v295 = __Block_byref_object_dispose__2;
        v296 = 0;
        v225 = 0;
        v226 = &v225;
        v227 = 0x3032000000;
        v228 = __Block_byref_object_copy__2;
        v229 = __Block_byref_object_dispose__2;
        v230 = 0;
        v58 = [[SSVLoadURLOperation alloc] initWithURLRequest:v57];
        v59 = v58;
        v209 = v57;
        v210 = v58;
        if (*(v258 + 24) == 1)
        {
          [(SSVLoadURLOperation *)v58 setITunesStoreRequest:1];
          if (v268[5])
          {
            [(SSVLoadURLOperation *)v59 configureWithURLBagDictionary:?];
            storeFrontSuffix3 = [(SSVLoadURLOperation *)v59 storeFrontSuffix];
            v61 = storeFrontSuffix3 == 0;

            if (v61)
            {
              storeFrontSuffix4 = [(SSVURLBagInterpreter *)v5 storeFrontSuffix];
              [(SSVLoadURLOperation *)v210 setStoreFrontSuffix:storeFrontSuffix4];
            }

            [(SSVLoadURLOperation *)v210 setMachineDataStyle:2];
            v63 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:1];
            [(SSVLoadURLOperation *)v210 setSAPSignaturePolicy:v63];

            v59 = v210;
          }
        }

        v64 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
        [(SSVLoadURLOperation *)v59 setDataConsumer:v64];

        v224[0] = MEMORY[0x1E69E9820];
        v224[1] = 3221225472;
        v224[2] = __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_3;
        v224[3] = &unk_1E84AD0E8;
        v224[4] = self;
        v224[5] = &v225;
        v224[6] = v293;
        [(SSVLoadURLOperation *)v210 setOutputBlock:v224];
        [(SSVLoadURLOperation *)v210 main];
        v223 = 0.0;
        v65 = 0.0;
        if (![v212 count] || *(*&v293[8] + 40))
        {
          v66 = 0;
          v20 = 0;
          v67 = 0.0;
          goto LABEL_137;
        }

        v206 = [v226[5] objectForKey:@"fairplay-streaming-response"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v118 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v118)
          {
            v118 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v118 shouldLog];
          shouldLogToDisk2 = [v118 shouldLogToDisk];
          oSLogObject2 = [v118 OSLogObject];
          v115 = oSLogObject2;
          if (shouldLogToDisk2)
          {
            shouldLog |= 2u;
          }

          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v122 = shouldLog;
          }

          else
          {
            v122 = shouldLog & 2;
          }

          v204 = v118;
          if (v122)
          {
            v123 = objc_opt_class();
            v124 = objc_opt_class();
            v287 = 138543618;
            v288 = v123;
            v289 = 2112;
            v290 = v124;
            v125 = v124;
            v20 = _os_log_send_and_compose_impl(v122, 0, 0, 0, &dword_1D48BA000, v115, 0, "[%{public}@] Server response returned invalid root dictionary (class is %@)", &v287, 22);

            if (!v20)
            {
              v66 = 0;
              v67 = 0.0;
              goto LABEL_136;
            }

            v115 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
            free(v20);
            SSFileLog(v204, @"%@", v126, v127, v128, v129, v130, v131, v115);
          }

LABEL_109:
          v66 = 0;
          v20 = 0;
LABEL_134:
          v67 = 0.0;
          goto LABEL_135;
        }

        v204 = [v206 objectForKey:@"version"];
        if (objc_opt_respondsToSelector())
        {
          longLongValue = [v204 longLongValue];
          if (longLongValue == 1)
          {
            v115 = [v206 objectForKey:@"streaming-keys"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v222 = 0;
              v66 = [(SSVSecureKeyDeliveryRequestOperation *)self _contentKeyContextForStreamingKeyID:0 streamingKeyDictionaries:v115 renewAfter:&v223 error:&v222];
              v20 = v222;
              [(SSVSecureKeyDeliveryRequestOperation *)self _expirationTimeForStreamingKeyID:0 streamingKeyDictionaries:v115];
              v67 = v116;
              [(SSVSecureKeyDeliveryRequestOperation *)self _playbackStartTimeForStreamingKeyID:0 streamingKeyDictionaries:v115];
              v65 = v117;
LABEL_135:

LABEL_136:
LABEL_137:
              if (!(v20 | v66))
              {
                v165 = *(*&v293[8] + 40);
                if (!v165)
                {
                  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2005 userInfo:0];
                  goto LABEL_179;
                }

                v205 = v66;
                v20 = v165;
                v166 = +[SSLogConfig sharedStoreServicesConfig];
                if (!v166)
                {
                  v166 = +[SSLogConfig sharedConfig];
                }

                LODWORD(v167) = [v166 shouldLog];
                shouldLogToDisk3 = [v166 shouldLogToDisk];
                v207 = v166;
                oSLogObject3 = [v166 OSLogObject];
                v170 = oSLogObject3;
                if (shouldLogToDisk3)
                {
                  LODWORD(v167) = v167 | 2;
                }

                if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
                {
                  v167 = v167;
                }

                else
                {
                  v167 &= 2u;
                }

                if (v167)
                {
                  v171 = objc_opt_class();
                  v287 = 138543618;
                  v288 = v171;
                  v289 = 2112;
                  v290 = v20;
                  v172 = v171;
                  LODWORD(v202) = 22;
                  v173 = _os_log_send_and_compose_impl(v167, 0, 0, 0, &dword_1D48BA000, v170, 0, "[%{public}@] Unable to create CKC due to streaming request operation error: %@", &v287, v202);

                  if (!v173)
                  {
LABEL_178:

                    v66 = v205;
                    goto LABEL_179;
                  }

                  v170 = [MEMORY[0x1E696AEC0] stringWithCString:v173 encoding:4];
                  free(v173);
                  SSFileLog(v207, @"%@", v174, v175, v176, v177, v178, v179, v170);
                }

LABEL_177:

                goto LABEL_178;
              }

              if (v20)
              {
                goto LABEL_179;
              }

              v164 = v262[5];
              if (!v164 || !v66)
              {
                goto LABEL_179;
              }

              if (self->_leaseAction == 3)
              {
                v20 = 0;
LABEL_179:
                self->_expirationTime = v67;
                self->_playbackStartTime = v65;

                _Block_object_dispose(&v225, 8);
                _Block_object_dispose(v293, 8);

                v86 = date;
                goto LABEL_180;
              }

              if (*(v254 + 24) == 1)
              {
                v221 = 0;
                v207 = [v164 persistentContentKeyFromKeyVendorResponse:v66 options:0 error:&v221];
                v203 = v221;
                if (v203)
                {
                  v180 = +[SSLogConfig sharedStoreServicesConfig];
                  if (!v180)
                  {
                    v180 = +[SSLogConfig sharedConfig];
                  }

                  LODWORD(v181) = [v180 shouldLog];
                  shouldLogToDisk4 = [v180 shouldLogToDisk];
                  oSLogObject4 = [v180 OSLogObject];
                  v184 = oSLogObject4;
                  if (shouldLogToDisk4)
                  {
                    LODWORD(v181) = v181 | 2;
                  }

                  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
                  {
                    v181 = v181;
                  }

                  else
                  {
                    v181 &= 2u;
                  }

                  if (v181)
                  {
                    v185 = objc_opt_class();
                    v287 = 138543618;
                    v288 = v185;
                    v289 = 2112;
                    v290 = v203;
                    v186 = v185;
                    LODWORD(v202) = 22;
                    v187 = _os_log_send_and_compose_impl(v181, 0, 0, 0, &dword_1D48BA000, v184, 2, "[%{public}@] Unable to create persistent CKC due to error: %@", &v287, v202);

                    if (!v187)
                    {
LABEL_168:

LABEL_173:
                      dataRequest = [v262[5] dataRequest];
                      [dataRequest respondWithData:v66];
                      goto LABEL_174;
                    }

                    v184 = [MEMORY[0x1E696AEC0] stringWithCString:v187 encoding:4];
                    free(v187);
                    SSFileLog(v180, @"%@", v188, v189, v190, v191, v192, v193, v184);
                  }

                  goto LABEL_168;
                }

                if (v207)
                {
                  v194 = [(SSVSecureKeyDeliveryRequestOperation *)self setPersistentContentKeyContext:?];
                  v196 = SSVAVFoundationFramework(v194, v195);
                  dataRequest = SSVWeakLinkedStringConstantForString("AVStreamingKeyDeliveryPersistentContentKeyType", v196);
                  contentInformationRequest = [v262[5] contentInformationRequest];
                  [contentInformationRequest setContentType:dataRequest];

                  dataRequest2 = [v262[5] dataRequest];
                  [dataRequest2 respondWithData:v207];

                  v203 = 0;
LABEL_174:
                  v205 = v66;

                  if (v223 != 0.0)
                  {
                    v200 = [date dateByAddingTimeInterval:v223];
                    contentInformationRequest2 = [v262[5] contentInformationRequest];
                    [contentInformationRequest2 setRenewalDate:v200];
                  }

                  v20 = 0;
                  v170 = v203;
                  goto LABEL_177;
                }
              }

              v207 = 0;
              v203 = 0;
              goto LABEL_173;
            }

            goto LABEL_109;
          }

LABEL_122:
          v147 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v147)
          {
            v147 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v148) = [v147 shouldLog];
          shouldLogToDisk5 = [v147 shouldLogToDisk];
          v150 = v147;
          oSLogObject5 = [v147 OSLogObject];
          v152 = oSLogObject5;
          if (shouldLogToDisk5)
          {
            LODWORD(v148) = v148 | 2;
          }

          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
          {
            v148 = v148;
          }

          else
          {
            v148 &= 2u;
          }

          if (v148)
          {
            v153 = objc_opt_class();
            v287 = 138543874;
            v288 = v153;
            v289 = 2048;
            v290 = longLongValue;
            v291 = 2048;
            v292 = 1;
            v154 = v153;
            LODWORD(v202) = 32;
            v155 = _os_log_send_and_compose_impl(v148, 0, 0, 0, &dword_1D48BA000, v152, 0, "[%{public}@] Server response returned invalid version %lli, current version: %lli", &v287, v202);

            if (!v155)
            {
LABEL_133:

              v162 = MEMORY[0x1E696ABC0];
              v285 = @"SSVSecureKeyDeliveryErrorUserInfoKeyResponseVersion";
              v115 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
              v286 = v115;
              v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
              v20 = [v162 errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2005 userInfo:v163];

              v66 = 0;
              goto LABEL_134;
            }

            v152 = [MEMORY[0x1E696AEC0] stringWithCString:v155 encoding:4];
            free(v155);
            SSFileLog(v150, @"%@", v156, v157, v158, v159, v160, v161, v152);
          }

          goto LABEL_133;
        }

        v132 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v132)
        {
          v132 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v133) = [v132 shouldLog];
        shouldLogToDisk6 = [v132 shouldLogToDisk];
        oSLogObject6 = [v132 OSLogObject];
        v136 = oSLogObject6;
        if (shouldLogToDisk6)
        {
          LODWORD(v133) = v133 | 2;
        }

        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v133 = v133;
        }

        else
        {
          v133 &= 2u;
        }

        if (v133)
        {
          v137 = objc_opt_class();
          v138 = objc_opt_class();
          v287 = 138543618;
          v288 = v137;
          v289 = 2112;
          v290 = v138;
          v139 = v138;
          v140 = _os_log_send_and_compose_impl(v133, 0, 0, 0, &dword_1D48BA000, v136, 0, "[%{public}@] Server response returned invalid version object (class is %@)", &v287, 22);

          if (!v140)
          {
LABEL_121:

            longLongValue = 0;
            goto LABEL_122;
          }

          v136 = [MEMORY[0x1E696AEC0] stringWithCString:v140 encoding:4];
          free(v140);
          SSFileLog(v132, @"%@", v141, v142, v143, v144, v145, v146, v136);
        }

        goto LABEL_121;
      }

      if (v56)
      {
        v82 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v82)
        {
          v82 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v83) = [v82 shouldLog];
        shouldLogToDisk7 = [v82 shouldLogToDisk];
        v209 = v82;
        oSLogObject7 = [v82 OSLogObject];
        v86 = oSLogObject7;
        if (shouldLogToDisk7)
        {
          LODWORD(v83) = v83 | 2;
        }

        if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
        {
          v83 = v83;
        }

        else
        {
          v83 &= 2u;
        }

        if (v83)
        {
          v87 = objc_opt_class();
          *v293 = 138543618;
          *&v293[4] = v87;
          *&v293[12] = 2112;
          *&v293[14] = v20;
          v88 = v87;
          v89 = _os_log_send_and_compose_impl(v83, 0, 0, 0, &dword_1D48BA000, v86, 0, "[%{public}@] Unable to create key server request because JSON serialization returned an error: %@", v293, 22);

          if (!v89)
          {
LABEL_181:

            v113 = v211;
            goto LABEL_182;
          }

          v86 = [MEMORY[0x1E696AEC0] stringWithCString:v89 encoding:4];
          free(v89);
          SSFileLog(v209, @"%@", v90, v91, v92, v93, v94, v95, v86);
        }

LABEL_180:

        goto LABEL_181;
      }

      v96 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v96)
      {
        v96 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v96 shouldLog];
      shouldLogToDisk8 = [v96 shouldLogToDisk];
      oSLogObject8 = [v96 OSLogObject];
      v100 = oSLogObject8;
      if (shouldLogToDisk8)
      {
        v101 = shouldLog2 | 2;
      }

      else
      {
        v101 = shouldLog2;
      }

      if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v101;
      }

      else
      {
        v102 = v101 & 2;
      }

      if (v102)
      {
        v103 = objc_opt_class();
        *v293 = 138543362;
        *&v293[4] = v103;
        v104 = v103;
        v105 = _os_log_send_and_compose_impl(v102, 0, 0, 0, &dword_1D48BA000, v100, 0, "[%{public}@] Unable to create key server request because JSON serialization returned no data without an error.", v293, 12);

        if (!v105)
        {
LABEL_93:

          v112 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2004 userInfo:0];
          v113 = v211;
          v20 = v112;
LABEL_182:

          v44 = v212;
          goto LABEL_183;
        }

        v100 = [MEMORY[0x1E696AEC0] stringWithCString:v105 encoding:4];
        free(v105);
        SSFileLog(v96, @"%@", v106, v107, v108, v109, v110, v111, v100);
      }

      goto LABEL_93;
    }

    v20 = v241[5];
    if (v20)
    {
      v21 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v22) = [v21 shouldLog];
      shouldLogToDisk9 = [v21 shouldLogToDisk];
      oSLogObject9 = [v21 OSLogObject];
      if (shouldLogToDisk9)
      {
        LODWORD(v22) = v22 | 2;
      }

      v216 = oSLogObject9;
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v25 = objc_opt_class();
        *v293 = 138543618;
        *&v293[4] = v25;
        *&v293[12] = 2112;
        *&v293[14] = v20;
        v26 = v25;
        v27 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1D48BA000, v216, 0, "[%{public}@] Certificate data operation failed with error: %@", v293, 22);

        if (v27)
        {
          v217 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:4];
          free(v27);
          SSFileLog(v21, @"%@", v28, v29, v30, v31, v32, v33, v217);
        }

        goto LABEL_186;
      }

LABEL_185:

LABEL_186:
      goto LABEL_187;
    }

    v68 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v68)
    {
      v68 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v69) = [v68 shouldLog];
    shouldLogToDisk10 = [v68 shouldLogToDisk];
    oSLogObject10 = [v68 OSLogObject];
    v72 = oSLogObject10;
    if (shouldLogToDisk10)
    {
      LODWORD(v69) = v69 | 2;
    }

    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v69;
    }

    else
    {
      v69 &= 2u;
    }

    if (v69)
    {
      v73 = objc_opt_class();
      *v293 = 138543362;
      *&v293[4] = v73;
      v74 = v73;
      v75 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &dword_1D48BA000, v72, 0, "[%{public}@] Certificate data operation returned no data.", v293, 12);

      if (!v75)
      {
LABEL_69:

        v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2003 userInfo:0];
LABEL_187:
        [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v20];

        _Block_object_dispose(&v234, 8);
        _Block_object_dispose(&v240, 8);

        goto LABEL_188;
      }

      v72 = [MEMORY[0x1E696AEC0] stringWithCString:v75 encoding:4];
      free(v75);
      SSFileLog(v68, @"%@", v76, v77, v78, v79, v80, v81, v72);
    }

    goto LABEL_69;
  }

  v219 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2001 userInfo:0];
  [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v219];
}

void __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 256));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 264));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 272));
  *(*(a1[8] + 8) + 24) = *(a1[4] + 288);
  *(*(a1[9] + 8) + 24) = *(a1[4] + 321);
  objc_storeStrong((*(a1[10] + 8) + 40), *(a1[4] + 296));
  v2 = *(a1[4] + 312);
  v3 = (*(a1[11] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_3(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      v26 = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = objc_opt_class();
      v13 = v29;
      v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v10, 0, "[%{public}@] Server response returned invalid dictionary object (class is %@)", &v26, 22);

      if (!v14)
      {
LABEL_14:

        v5 = 0;
        goto LABEL_15;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v10);
    }

    goto LABEL_14;
  }

LABEL_15:
  v21 = *(a1[5] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v5;
  v23 = v5;

  v24 = *(a1[6] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v6;
}

- (void)start
{
  if ([(SSVSecureKeyDeliveryRequestOperation *)self isFinished]&& [(SSVSecureKeyDeliveryRequestOperation *)self isCancelled])
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2001 userInfo:0];
    [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v3];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SSVSecureKeyDeliveryRequestOperation;
    [(SSVSecureKeyDeliveryRequestOperation *)&v4 start];
  }
}

- (id)_contentKeyContextForStreamingKeyID:(int64_t)d streamingKeyDictionaries:(id)dictionaries renewAfter:(double *)after error:(id *)error
{
  v145 = *MEMORY[0x1E69E9840];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = dictionaries;
  v8 = [obj countByEnumeratingWithState:&v130 objects:v144 count:16];
  if (!v8)
  {
    v45 = 0;
    v46 = 0;
    goto LABEL_110;
  }

  v9 = v8;
  errorCopy = error;
  afterCopy = after;
  v10 = *v131;
  v11 = off_1E84AB000;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v131 != v10)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v130 + 1) + 8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sharedStoreServicesConfig = [(__objc2_class *)v11[75] sharedStoreServicesConfig];
      if (!sharedStoreServicesConfig)
      {
        sharedStoreServicesConfig = [(__objc2_class *)v11[75] sharedConfig];
      }

      shouldLog = [sharedStoreServicesConfig shouldLog];
      if ([sharedStoreServicesConfig shouldLogToDisk])
      {
        v16 = shouldLog | 2;
      }

      else
      {
        v16 = shouldLog;
      }

      oSLogObject = [sharedStoreServicesConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 2;
      }

      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = objc_opt_class();
      v20 = v19;
      v21 = objc_opt_class();
      v134 = 138543618;
      v135 = v19;
      v136 = 2112;
      dCopy4 = v21;
      v22 = v21;
      LODWORD(v122) = 22;
      v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%{public}@] Key server returned a streaming key 'dictionary' of the wrong class (class is %@)", &v134, v122);

      if (!v23)
      {
        v11 = off_1E84AB000;
        goto LABEL_34;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog(sharedStoreServicesConfig, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject);
      goto LABEL_32;
    }

    sharedStoreServicesConfig = [v13 objectForKey:@"id"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      oSLogObject = [(__objc2_class *)v11[75] sharedStoreServicesConfig];
      if (!oSLogObject)
      {
        oSLogObject = [(__objc2_class *)v11[75] sharedConfig];
      }

      shouldLog2 = [oSLogObject shouldLog];
      if ([oSLogObject shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      v17OSLogObject = [oSLogObject OSLogObject];
      if (os_log_type_enabled(v17OSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v32 = shouldLog2;
      }

      else
      {
        v32 = shouldLog2 & 2;
      }

      if (!v32)
      {
        goto LABEL_31;
      }

      v33 = objc_opt_class();
      v34 = v33;
      v35 = objc_opt_class();
      v134 = 138543618;
      v135 = v33;
      v136 = 2112;
      dCopy4 = v35;
      v36 = v35;
      LODWORD(v122) = 22;
      v37 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_1D48BA000, v17OSLogObject, 0, "[%{public}@] Key server returned an invalid streaming key ID (class is %@)", &v134, v122);

      if (v37)
      {
        v17OSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:4];
        free(v37);
        SSFileLog(oSLogObject, @"%@", v38, v39, v40, v41, v42, v43, v17OSLogObject);
        v11 = off_1E84AB000;
LABEL_31:

LABEL_33:
        goto LABEL_34;
      }

LABEL_32:
      v11 = off_1E84AB000;
      goto LABEL_33;
    }

    if ([sharedStoreServicesConfig longLongValue] == d)
    {
      break;
    }

LABEL_34:

    if (v9 == ++v12)
    {
      v44 = [obj countByEnumeratingWithState:&v130 objects:v144 count:16];
      v9 = v44;
      if (!v44)
      {
        v45 = 0;
        v46 = 0;
        goto LABEL_109;
      }

      goto LABEL_3;
    }
  }

  sharedStoreServicesConfig2 = [(__objc2_class *)v11[75] sharedStoreServicesConfig];
  sharedConfig = sharedStoreServicesConfig2;
  if (!sharedStoreServicesConfig2)
  {
    sharedConfig = [(__objc2_class *)v11[75] sharedConfig];
  }

  shouldLog3 = [sharedConfig shouldLog];
  if ([sharedConfig shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject2 = [sharedConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v51 = shouldLog3;
  }

  else
  {
    v51 = shouldLog3 & 2;
  }

  v52 = afterCopy;
  if (v51)
  {
    v53 = objc_opt_class();
    v134 = 138543618;
    v135 = v53;
    v136 = 2048;
    dCopy4 = d;
    v54 = v53;
    LODWORD(v122) = 22;
    v55 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "[%{public}@] Found the streaming key dictionary for ID: %lli", &v134, v122);

    if (v55)
    {
      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v55 encoding:4];
      free(v55);
      SSFileLog(sharedConfig, @"%@", v56, v57, v58, v59, v60, v61, oSLogObject2);
      goto LABEL_49;
    }
  }

  else
  {
LABEL_49:
  }

  v62 = [v13 objectForKey:@"status"];
  v63 = [v13 objectForKey:@"failureType"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v64 = [v62 longLongValue]) == 0)
  {
    v68 = [v13 objectForKey:@"ckc"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v68 options:0];
      if (![v46 length])
      {
        v89 = v62;
        v90 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v90)
        {
          v90 = +[SSLogConfig sharedConfig];
        }

        v127 = v63;
        shouldLog4 = [v90 shouldLog];
        if ([v90 shouldLogToDisk])
        {
          shouldLog4 |= 2u;
        }

        oSLogObject3 = [v90 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v93 = shouldLog4;
        }

        else
        {
          v93 = shouldLog4 & 2;
        }

        if (v93)
        {
          v94 = objc_opt_class();
          v134 = 138543618;
          v135 = v94;
          v136 = 2048;
          dCopy4 = d;
          v95 = v94;
          LODWORD(v122) = 22;
          v96 = _os_log_send_and_compose_impl(v93, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 0, "[%{public}@] Streaming key response for ID %lli has a CKC response string that did not successfully decode into data.", &v134, v122);

          v62 = v89;
          if (!v96)
          {
            goto LABEL_106;
          }

          oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v96 encoding:4];
          free(v96);
          SSFileLog(v90, @"%@", v97, v98, v99, v100, v101, v102, oSLogObject3);
        }

        else
        {
          v62 = v89;
        }

LABEL_106:
        v46 = 0;
        v52 = afterCopy;
        v63 = v127;
        if (!afterCopy)
        {
          goto LABEL_107;
        }

        goto LABEL_96;
      }

LABEL_95:
      if (!afterCopy)
      {
LABEL_107:
        v45 = 0;
        goto LABEL_108;
      }

LABEL_96:
      v71 = v63;
      v72 = [v13 objectForKey:@"renew-after"];
      v118 = 0;
      if (v72 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v72 doubleValue];
        v118 = v119;
      }

      v45 = 0;
      *v52 = v118;
      goto LABEL_103;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v68;
      if (!afterCopy)
      {
        goto LABEL_107;
      }

      goto LABEL_96;
    }

    v103 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v103)
    {
      v103 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v103 shouldLog];
    if ([v103 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject4 = [v103 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v106 = shouldLog5;
    }

    else
    {
      v106 = shouldLog5 & 2;
    }

    if (v106)
    {
      v107 = objc_opt_class();
      v128 = v63;
      v108 = v107;
      v109 = objc_opt_class();
      v134 = 138543874;
      v135 = v107;
      v136 = 2048;
      dCopy4 = d;
      v138 = 2112;
      v139 = v109;
      v110 = v109;
      LODWORD(v122) = 32;
      v111 = _os_log_send_and_compose_impl(v106, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 0, "[%{public}@] Streaming key response for ID %lli has an invalid CKC response class (class is %@)", &v134, v122);

      v63 = v128;
      if (!v111)
      {
LABEL_94:

        v46 = 0;
        goto LABEL_95;
      }

      oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v111 encoding:4];
      free(v111);
      SSFileLog(v103, @"%@", v112, v113, v114, v115, v116, v117, oSLogObject4);
    }

    goto LABEL_94;
  }

  v65 = v64;
  v66 = objc_alloc(MEMORY[0x1E695DF90]);
  v67 = [MEMORY[0x1E696AD98] numberWithLongLong:v65];
  v68 = [v66 initWithObjectsAndKeys:{v67, @"SSVSecureKeyDeliveryErrorUserInfoKeyResponseStatus", 0}];

  v69 = 0x1E696A000;
  if (v63 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v70 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSServerErrorDomain" code:objc_msgSend(v63 userInfo:{"integerValue"), 0}];
    [v68 setObject:v70 forKey:@"SSVSecureKeyDeliveryErrorUserInfoKeyServerError"];

    v69 = 0x1E696A000uLL;
  }

  v71 = v63;
  v72 = [v13 objectForKey:@"dialog"];
  if ([v72 isNSDictionary])
  {
    [v68 setObject:v72 forKey:@"SSVSecureKeyDeliveryErrorUserInfoKeyDialogDictionary"];
  }

  v73 = v62;
  v74 = [objc_alloc(*(v69 + 3008)) initWithDomain:@"com.apple.fpsrequest" code:v65 userInfo:0];
  [v68 setObject:v74 forKey:*MEMORY[0x1E696AA08]];

  v75 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v75)
  {
    v75 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v75 shouldLog];
  if ([v75 shouldLogToDisk])
  {
    shouldLog6 |= 2u;
  }

  oSLogObject5 = [v75 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v78 = shouldLog6;
  }

  else
  {
    v78 = shouldLog6 & 2;
  }

  if (v78)
  {
    v79 = objc_opt_class();
    v134 = 138544386;
    v135 = v79;
    v136 = 2048;
    dCopy4 = d;
    v138 = 2048;
    v139 = v65;
    v140 = 2114;
    v141 = v71;
    v142 = 2114;
    v143 = v72;
    v80 = v79;
    LODWORD(v123) = 52;
    v81 = _os_log_send_and_compose_impl(v78, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 0, "[%{public}@] Streaming key response for ID %lli has an invalid status: %lli or failure type: %{public}@. Dialog dictionary is: %{public}@", &v134, v123);

    v62 = v73;
    v82 = 0x1E696A000;
    if (v81)
    {
      oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v81 encoding:4];
      free(v81);
      SSFileLog(v75, @"%@", v83, v84, v85, v86, v87, v88, oSLogObject5);
      goto LABEL_101;
    }
  }

  else
  {
    v62 = v73;
    v82 = 0x1E696A000uLL;
LABEL_101:
  }

  v45 = [*(v82 + 3008) errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2005 userInfo:v68];
  v46 = 0;
LABEL_103:

  v63 = v71;
LABEL_108:

LABEL_109:
  error = errorCopy;
LABEL_110:

  if (error)
  {
    v120 = v45;
    *error = v45;
  }

  return v46;
}

- (void)_sendResponseBlockWithError:(id)error
{
  errorCopy = error;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__87;
  v12 = __Block_byref_object_dispose__88;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SSVSecureKeyDeliveryRequestOperation__sendResponseBlockWithError___block_invoke;
  v7[3] = &unk_1E84ABF40;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_barrier_sync(accessQueue, v7);
  v6 = v9[5];
  if (v6)
  {
    (*(v6 + 16))(v6, errorCopy);
  }

  _Block_object_dispose(&v8, 8);
}

void __68__SSVSecureKeyDeliveryRequestOperation__sendResponseBlockWithError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 280);
  *(v5 + 280) = 0;
}

- (id)_streamingKeyDictionaryForID:(int64_t)d URI:(id)i serverPlaybackContextData:(id)data
{
  iCopy = i;
  dataCopy = data;
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v12 = [v10 initWithObjectsAndKeys:{v11, @"id", 0}];

  if (iCopy)
  {
    [v12 setObject:iCopy forKey:@"uri"];
  }

  if ([dataCopy length])
  {
    v13 = [dataCopy base64EncodedStringWithOptions:0];
    if ([v13 length])
    {
      [v12 setObject:v13 forKey:@"spc"];
    }
  }

  rentalId = [(SSVSecureKeyDeliveryRequestOperation *)self rentalId];

  if (rentalId)
  {
    rentalId2 = [(SSVSecureKeyDeliveryRequestOperation *)self rentalId];
    [v12 setObject:rentalId2 forKey:@"rental-id"];
  }

  if ([(SSVSecureKeyDeliveryRequestOperation *)self skippedRentalCheckout])
  {
    [v12 setObject:MEMORY[0x1E695E118] forKey:@"skipped-rental-checkout"];
  }

  if ([(SSVSecureKeyDeliveryRequestOperation *)self shouldIncludeGUID])
  {
    v16 = +[SSDevice currentDevice];
    uniqueDeviceIdentifier = [v16 uniqueDeviceIdentifier];

    if (uniqueDeviceIdentifier)
    {
      [v12 setObject:uniqueDeviceIdentifier forKey:@"guid"];
    }
  }

  v18 = [(SSVSecureKeyDeliveryRequestOperation *)self leaseAction]- 1;
  if (v18 <= 2)
  {
    [v12 setObject:off_1E84AD108[v18] forKey:@"lease-action"];
  }

  if ([(SSVSecureKeyDeliveryRequestOperation *)self offline])
  {
    [v12 setObject:MEMORY[0x1E695E118] forKey:@"offline"];
  }

  return v12;
}

- (id)_streamingRequestDictionaryWithStreamingKeyDictionaries:(id)dictionaries
{
  v8[1] = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{&unk_1F507A0F0, @"version", 0}];
  if ([dictionariesCopy count])
  {
    [v4 setObject:dictionariesCopy forKey:@"streaming-keys"];
  }

  v7 = @"fairplay-streaming-request";
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (double)_timeIntervalForStreamingKeyID:(int64_t)d responseKey:(id)key streamingKeyDictionaries:(id)dictionaries
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  dictionariesCopy = dictionaries;
  v8 = [dictionariesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(dictionariesCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 objectForKey:@"id"];
          if (objc_opt_respondsToSelector())
          {
            longLongValue = [v14 longLongValue];
            if (keyCopy)
            {
              if (longLongValue == d)
              {
                v16 = [v13 objectForKey:keyCopy];
                v9 = 0.0;
                if (objc_opt_respondsToSelector())
                {
                  [v16 doubleValue];
                  v9 = v17 / 1000.0;
                }

                goto LABEL_17;
              }
            }
          }
        }
      }

      v10 = [dictionariesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v9;
}

- (SSVSecureKeyDeliveryRequestOperationDelegate)serverPlaybackContextDataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serverPlaybackContextDataDelegate);

  return WeakRetained;
}

@end