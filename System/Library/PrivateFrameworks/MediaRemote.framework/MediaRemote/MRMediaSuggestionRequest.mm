@interface MRMediaSuggestionRequest
+ (id)defaultRequest;
+ (id)defaultRequestWithArtwork;
- (MRMediaSuggestionRequest)initWithBlock:(id)block;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_bundleIdentifierIsSystemMediaApplication:(uint64_t)application;
- (uint64_t)_intentIsValidSuggestion:(void *)suggestion sourceBundleID:;
- (void)_artworkForIntent:(void *)intent completion:;
- (void)performWithCompletion:(id)completion;
- (void)performWithPlaybackIdentifier:(id)identifier completion:(id)completion;
- (void)performWithPreferences:(id)preferences completion:(id)completion;
- (void)performWithPreferences:(id)preferences options:(id)options completion:(id)completion;
@end

@implementation MRMediaSuggestionRequest

- (MRMediaSuggestionRequest)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = MRMediaSuggestionRequest;
  v5 = [(MRMediaSuggestionRequest *)&v9 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
    if (!v5->_requestIdentifier)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = uUID;
    }
  }

  return v5;
}

+ (id)defaultRequest
{
  v2 = [[MRMediaSuggestionRequest alloc] initWithBlock:&__block_literal_global_27];

  return v2;
}

void __42__MRMediaSuggestionRequest_defaultRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncludeArtwork:0];
  v2 = +[MRUserSettings currentSettings];
  [v3 setMaxResults:{objc_msgSend(v2, "maximumNumberOfMediaSuggestions")}];

  [v3 setUseDirectAccess:0];
}

+ (id)defaultRequestWithArtwork
{
  v2 = +[MRMediaSuggestionRequest defaultRequest];
  [v2 setIncludeArtwork:1];

  return v2;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  requestIdentifier = [(MRMediaSuggestionRequest *)self requestIdentifier];
  if ([(MRMediaSuggestionRequest *)self includeArtwork])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 initWithFormat:@"<%@: requestIdentifier=%@ includeArtwork=%@ maxResults=%ld>", v4, requestIdentifier, v6, -[MRMediaSuggestionRequest maxResults](self, "maxResults")];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIncludeArtwork:{-[MRMediaSuggestionRequest includeArtwork](self, "includeArtwork")}];
  [v4 setMaxResults:{-[MRMediaSuggestionRequest maxResults](self, "maxResults")}];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v4 setRequestIdentifier:uUID];

  [v4 setUseDirectAccess:{-[MRMediaSuggestionRequest useDirectAccess](self, "useDirectAccess")}];
  [v4 setIncludeArtwork:{-[MRMediaSuggestionRequest includeArtwork](self, "includeArtwork")}];
  return v4;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MRMediaSuggestionRequest_performWithCompletion___block_invoke;
  v6[3] = &unk_1E769B938;
  v7 = completionCopy;
  v5 = completionCopy;
  [(MRMediaSuggestionRequest *)self performWithPreferences:0 completion:v6];
}

void __50__MRMediaSuggestionRequest_performWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"HomeScreen"];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)performWithPreferences:(id)preferences completion:(id)completion
{
  completionCopy = completion;
  preferencesCopy = preferences;
  v8 = +[MRMediaSuggestionRequestOptions defaultOptions];
  [(MRMediaSuggestionRequest *)self performWithPreferences:preferencesCopy options:v8 completion:completionCopy];
}

- (void)performWithPreferences:(id)preferences options:(id)options completion:(id)completion
{
  v90 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  optionsCopy = options;
  completionCopy = completion;
  v46 = preferencesCopy;
  snapshot = [(MRMediaSuggestionPreferences *)preferencesCopy snapshot];
  v8 = _MRLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = snapshot;
    *&buf[22] = 2112;
    v89 = optionsCopy;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestionRequest] Performing preference-respecting request %{public}@ with preferences %@, options: %@.", buf, 0x20u);
  }

  date = [MEMORY[0x1E695DF00] date];
  v52 = objc_opt_new();
  v9 = objc_opt_new();
  globalDisplayPreferencesForContexts = [(MRMediaSuggestionPreferences *)snapshot globalDisplayPreferencesForContexts];
  contexts = [optionsCopy contexts];
  v11 = contexts;
  if (contexts)
  {
    v49 = contexts;
  }

  else
  {
    v49 = +[MRMediaSuggestionPreferences allContexts];
  }

  if (snapshot)
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke;
    v84[3] = &unk_1E769CA28;
    v85 = globalDisplayPreferencesForContexts;
    v12 = [v49 msv_filter:v84];
  }

  else
  {
    v87 = @"HomeScreen";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  }

  disabledBundlesForContexts = [(MRMediaSuggestionPreferences *)snapshot disabledBundlesForContexts];
  v14 = disabledBundlesForContexts;
  if (disabledBundlesForContexts)
  {
    v51 = disabledBundlesForContexts;
  }

  else
  {
    v15 = MEMORY[0x1E695DF90];
    v16 = objc_opt_new();
    v51 = [v15 dictionaryWithObject:v16 forKey:@"HomeScreen"];
  }

  bundlesDisabledInAllContexts = [(MRMediaSuggestionPreferences *)snapshot bundlesDisabledInAllContexts];
  v18 = bundlesDisabledInAllContexts;
  if (bundlesDisabledInAllContexts)
  {
    v56 = bundlesDisabledInAllContexts;
  }

  else
  {
    v56 = objc_opt_new();
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v20)
  {
    v21 = *v81;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v81 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v80 + 1) + 8 * i);
        v24 = objc_opt_new();
        [v9 setObject:v24 forKeyedSubscript:v23];
      }

      v20 = [v19 countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v20);
  }

  bundleIdentifiers = [optionsCopy bundleIdentifiers];
  v26 = bundleIdentifiers == 0;

  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v27 = MEMORY[0x1E695DFD8];
    bundleIdentifiers2 = [optionsCopy bundleIdentifiers];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2;
    v78[3] = &unk_1E769CA28;
    v79 = v56;
    v29 = [bundleIdentifiers2 msv_filter:v78];
    v30 = [v27 setWithArray:v29];

    if (![v30 count])
    {
      completionCopy[2](completionCopy, v9, 0);
      v44 = v79;
      goto LABEL_28;
    }
  }

  v31 = soft_BiomeLibrary();
  v32 = [v31 App];
  intent = [v32 Intent];

  v47 = [objc_alloc(getBMPublisherOptionsClass()) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v89 = 0;
  v33 = [v19 count];
  maxResults = [(MRMediaSuggestionRequest *)self maxResults];
  v45 = v31;
  INPlayMediaIntentClass = getINPlayMediaIntentClass();
  v36 = NSStringFromClass(INPlayMediaIntentClass);
  v37 = dispatch_group_create();
  v38 = [intent publisherWithOptions:v47];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_3;
  v74[3] = &unk_1E769CA50;
  v39 = v36;
  v75 = v39;
  v30 = v30;
  v76 = v30;
  v77 = v56;
  v40 = [v38 filterWithIsIncluded:v74];
  v41 = maxResults * v33;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_4;
  v68[3] = &unk_1E769CA78;
  v69 = v37;
  selfCopy = self;
  v71 = date;
  v73 = completionCopy;
  v72 = v9;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_93;
  v59[3] = &unk_1E769CAA0;
  v60 = v52;
  selfCopy2 = self;
  v42 = v69;
  v62 = v42;
  v63 = v19;
  v64 = v51;
  v65 = v72;
  v66 = buf;
  v67 = v41;
  v43 = [v40 sinkWithCompletion:v68 shouldContinue:v59];

  v44 = v45;
  _Block_object_dispose(buf, 8);

LABEL_28:
}

uint64_t __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

BOOL __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 intentClass];
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  v14 = 0;
  if (isEqualToString)
  {
    v7 = *(a1 + 40);
    if (!v7 || ([v3 eventBody], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bundleID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "containsObject:", v9), v9, v8, v10))
    {
      if (![*(a1 + 48) count] || (v11 = *(a1 + 48), objc_msgSend(v3, "eventBody"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bundleID"), v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(v11, "containsObject:", v13), v13, v12, (v11 & 1) == 0))
      {
        v14 = 1;
      }
    }
  }

  return v14;
}

void __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_4(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.MediaRemote.MRMediaSuggestionRequest.notifyQueue", v2);

  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_5;
  block[3] = &unk_1E769C2C0;
  v8 = *(a1 + 40);
  v5 = *(&v8 + 1);
  v6 = *(a1 + 64);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_group_notify(v4, v3, block);
}

uint64_t __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_5(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSinceDate:a1[5]];
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestionRequest] Request %{public}@ finished in %lf seconds.", &v7, 0x16u);
  }

  return (*(a1[7] + 16))();
}

BOOL __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_93(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 interaction];

  v59 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getINInteractionClass() fromData:v6 error:&v59];
  v8 = v59;
  if (!v8)
  {
    v10 = [v7 intent];
    getINPlayMediaIntentClass();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_7;
    }

    v11 = v10;
    v12 = *(a1 + 32);
    v13 = [v11 mediaContainer];
    v14 = [(MRMediaSuggestion *)v13 identifier];
    if ([v12 containsObject:v14])
    {
      v49 = v13;
    }

    else
    {
      v17 = *(a1 + 40);
      v18 = [v3 eventBody];
      [v18 bundleID];
      v19 = obja = v14;
      LODWORD(v17) = [(MRMediaSuggestionRequest *)v17 _intentIsValidSuggestion:v11 sourceBundleID:v19];

      if (!v17)
      {
LABEL_27:

        objc_autoreleasePoolPop(v4);
        v15 = *(*(*(a1 + 80) + 8) + 24) < *(a1 + 88);
        goto LABEL_8;
      }

      v20 = [MRMediaSuggestion alloc];
      v21 = [v7 identifier];
      v22 = [(MRMediaSuggestion *)v20 initWithIntent:v11 playbackIdentifier:v21];

      v23 = [v3 eventBody];
      v24 = [v23 bundleID];
      v49 = v22;
      [(MRMediaSuggestion *)v22 setBundleID:v24];

      if ([*(a1 + 40) includeArtwork])
      {
        v25 = [v11 mediaContainer];
        v26 = [v25 artwork];

        if (v26)
        {
          dispatch_group_enter(*(a1 + 48));
          v43 = *(a1 + 40);
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96;
          v56[3] = &unk_1E769C220;
          v57 = v22;
          v58 = *(a1 + 48);
          [(MRMediaSuggestionRequest *)v43 _artworkForIntent:v11 completion:v56];
        }
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = *(a1 + 56);
      v27 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v27)
      {
        v28 = v27;
        v47 = v3;
        v48 = v11;
        v44 = v7;
        v45 = v6;
        v46 = v4;
        v29 = *v53;
        v30 = v49;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v53 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v52 + 1) + 8 * i);
            v33 = [*(a1 + 64) objectForKeyedSubscript:v32];
            v34 = [(MRMediaSuggestion *)v30 bundleID];
            if ([v33 containsObject:v34])
            {
            }

            else
            {
              v35 = [*(a1 + 72) objectForKeyedSubscript:v32];
              v36 = [v35 count];
              v37 = [*(a1 + 40) maxResults];

              v38 = v36 >= v37;
              v30 = v49;
              if (!v38)
              {
                v39 = *(a1 + 32);
                v40 = [v48 mediaContainer];
                v41 = [v40 identifier];
                [v39 addObject:v41];

                v42 = [*(a1 + 72) objectForKeyedSubscript:v32];
                [v42 addObject:v49];

                ++*(*(*(a1 + 80) + 8) + 24);
              }
            }
          }

          v28 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v28);
        v4 = v46;
        v3 = v47;
        v7 = v44;
        v6 = v45;
        v11 = v48;
      }

      v14 = obj;
    }

    goto LABEL_27;
  }

  v9 = v8;

LABEL_7:
  objc_autoreleasePoolPop(v4);
  v15 = 1;
LABEL_8:

  return v15;
}

- (uint64_t)_intentIsValidSuggestion:(void *)suggestion sourceBundleID:
{
  v5 = a2;
  suggestionCopy = suggestion;
  if (self && ([v5 mediaContainer], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    mediaContainer = [v5 mediaContainer];
    type = [mediaContainer type];

    v12 = 0;
    if (type <= 0x13 && ((1 << type) & 0xF87FE) != 0)
    {
      if (([(MRMediaSuggestionRequest *)self _bundleIdentifierIsSystemMediaApplication:suggestionCopy]& 1) != 0)
      {
        v12 = 1;
      }

      else
      {
        v22 = 0;
        v13 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:suggestionCopy allowPlaceholder:0 error:&v22];
        v14 = v22;
        v12 = 0;
        if (v14 || !v13)
        {
          v17 = v13;
          v13 = v14;
        }

        else
        {
          v24 = 0;
          v25 = &v24;
          v26 = 0x2050000000;
          v15 = getINSchemaClass_softClass;
          v27 = getINSchemaClass_softClass;
          if (!getINSchemaClass_softClass)
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __getINSchemaClass_block_invoke;
            v23[3] = &unk_1E769ADA8;
            v23[4] = &v24;
            __getINSchemaClass_block_invoke(v23);
            v15 = v25[3];
          }

          v16 = v15;
          _Block_object_dispose(&v24, 8);
          v17 = [v15 schemaWithBundleRecord:v13 fallbackToSystemSchema:0];
          if (v17)
          {
            v18 = [v5 _validParameterCombinationsWithSchema:v17];
            allKeys = [v18 allKeys];
            v20 = [MEMORY[0x1E695DFD8] setWithObject:@"mediaContainer"];
            v12 = [allKeys containsObject:v20];
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96_cold_1(a1, v5, v6);
    }
  }

  else
  {
    [(MRMediaSuggestion *)*(a1 + 32) setArtwork:a2];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)performWithPlaybackIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = soft_BiomeLibrary();
  v8 = [v7 App];
  intent = [v8 Intent];

  v10 = [objc_alloc(getBMPublisherOptionsClass()) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__8;
  v21[4] = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = [intent publisherWithOptions:v10];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke;
  v18[3] = &unk_1E769CAC8;
  v20 = v21;
  v12 = completionCopy;
  v19 = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E769CAF0;
  v13 = identifierCopy;
  v16 = v13;
  v17 = v21;
  v14 = [v11 sinkWithCompletion:v18 shouldContinue:v15];

  _Block_object_dispose(v21, 8);
}

void __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1 description:@"No suggestion found for playback identifier"];
  }

  v3 = v2;
  (*(*(a1 + 32) + 16))();
}

uint64_t __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 itemID];
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  if (isEqualToString)
  {
    v7 = [v3 eventBody];
    v8 = [v7 interaction];

    v21 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getINInteractionClass() fromData:v8 error:&v21];
    v10 = v21;
    if (!v10)
    {
      v11 = [v9 intent];
      getINPlayMediaIntentClass();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        v13 = [MRMediaSuggestion alloc];
        v14 = [v9 identifier];
        v15 = [(MRMediaSuggestion *)v13 initWithIntent:v12 playbackIdentifier:v14];

        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v18 = [v3 eventBody];
        v19 = [v18 bundleID];
        [(MRMediaSuggestion *)*(*(*(a1 + 40) + 8) + 40) setBundleID:v19];
      }
    }
  }

  return isEqualToString ^ 1u;
}

void __57__MRMediaSuggestionRequest__artworkForIntent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  if (v13)
  {
    v5 = 0;
  }

  else
  {
    v6 = a2;
    v7 = [MRArtwork alloc];
    v8 = [v6 _imageData];
    [v6 _imageSize];
    v10 = v9;
    [v6 _imageSize];
    v12 = v11;

    v5 = [(MRArtwork *)v7 initWithImageData:v8 height:v10 width:v12];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_artworkForIntent:(void *)intent completion:
{
  v5 = a2;
  intentCopy = intent;
  if (self)
  {
    mediaContainer = [v5 mediaContainer];
    artwork = [mediaContainer artwork];
    _requiresRetrieval = [artwork _requiresRetrieval];

    mediaContainer2 = [v5 mediaContainer];
    artwork2 = [mediaContainer2 artwork];
    v12 = artwork2;
    if (_requiresRetrieval)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __57__MRMediaSuggestionRequest__artworkForIntent_completion___block_invoke;
      v27[3] = &unk_1E769CB18;
      v28 = intentCopy;
      [v12 _retrieveImageDataWithReply:v27];
    }

    else
    {
      _imageData = [artwork2 _imageData];

      if (_imageData)
      {
        v26 = [MRArtwork alloc];
        mediaContainer3 = [v5 mediaContainer];
        artwork3 = [mediaContainer3 artwork];
        _imageData2 = [artwork3 _imageData];
        mediaContainer4 = [v5 mediaContainer];
        artwork4 = [mediaContainer4 artwork];
        [artwork4 _imageSize];
        v20 = v19;
        mediaContainer5 = [v5 mediaContainer];
        artwork5 = [mediaContainer5 artwork];
        [artwork5 _imageSize];
        v24 = [(MRArtwork *)v26 initWithImageData:_imageData2 height:v20 width:v23];

        (*(intentCopy + 2))(intentCopy, v24, 0);
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1 description:@"Intent artwork does not require retrieval but has no data."];
        (*(intentCopy + 2))(intentCopy, 0, v25);
      }
    }
  }
}

- (uint64_t)_bundleIdentifierIsSystemMediaApplication:(uint64_t)application
{
  v3 = a2;
  v4 = v3;
  if (application)
  {
    if (MRMediaRemoteApplicationIsSystemMediaApplication(v3))
    {
      application = 1;
    }

    else
    {
      application = MRMediaRemoteApplicationIsSystemPodcastApplication(v4);
    }
  }

  return application;
}

void __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[MRMediaSuggestionRequest] %@ failed to retrieve artwork with error %@", &v4, 0x16u);
}

@end