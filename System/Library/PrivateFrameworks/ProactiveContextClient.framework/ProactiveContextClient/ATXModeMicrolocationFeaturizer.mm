@interface ATXModeMicrolocationFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (ATXModeMicrolocationFeaturizer)initWithMiloProvider:(id)provider;
- (id)_provideFeaturesWithCurrentULMap:(id)map;
- (id)provideFeatures;
- (void)beginListening;
- (void)connectionDidUpdatePredictionContext:(id)context;
- (void)stopListening;
@end

@implementation ATXModeMicrolocationFeaturizer

- (ATXModeMicrolocationFeaturizer)initWithMiloProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = ATXModeMicrolocationFeaturizer;
  v6 = [(ATXModeMicrolocationFeaturizer *)&v15 init];
  if (v6)
  {
    if (!providerCopy)
    {
      [(ATXModeMicrolocationFeaturizer *)a2 initWithMiloProvider:v6];
    }

    v7 = [MEMORY[0x277D28780] createServiceIdentifierForToken:@"com.apple.proactive.ProactiveContextClient"];
    v8 = [objc_alloc(MEMORY[0x277D28780]) initWithDelegate:v6 serviceIdentifier:v7];
    connection = v6->_connection;
    v6->_connection = v8;

    connect = [(ULConnection *)v6->_connection connect];
    [providerCopy setConnection:v6->_connection];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.ULConnectionDelgetae.queue", v11);
    queue = v6->_queue;
    v6->_queue = v12;
  }

  return v6;
}

- (id)provideFeatures
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_modes(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@] Requesting feature set via pull based feature provider", &v11, 0x16u);
  }

  currentMap = [(ULConnection *)self->_connection currentMap];
  v9 = [(ATXModeMicrolocationFeaturizer *)self _provideFeaturesWithCurrentULMap:currentMap];

  return v9;
}

- (id)_provideFeaturesWithCurrentULMap:(id)map
{
  v66 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v51 = objc_alloc_init(ATXModeFeatureSet);
  isMapValid = [mapCopy isMapValid];
  if (isMapValid)
  {
    date = [MEMORY[0x277CBEAA8] date];
    predictionContext = [mapCopy predictionContext];
    timestamp = [predictionContext timestamp];
    [date timeIntervalSinceDate:timestamp];
    v9 = v8;

    if (v9 > 900.0)
    {
      v11 = __atxlog_handle_modes(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = NSStringFromSelector(a2);
        *buf = 138412802;
        v58 = v12;
        v59 = 2112;
        v60 = v14;
        v61 = 2048;
        v62 = 900.0;
        _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_DEFAULT, "[%@][%@] Warning: Prediction scan was unexpectedly delayed by more than %f seconds", buf, 0x20u);
      }
    }

    v15 = __atxlog_handle_modes(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      v58 = v16;
      v59 = 2112;
      v60 = v18;
      _os_log_impl(&dword_260C9F000, v15, OS_LOG_TYPE_DEFAULT, "[%@][%@] analyzing predicted Microlocation for this device", buf, 0x16u);
    }

    v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C9FC4298-DE04-494A-9791-71AB71B52E27"];
    uUIDString = [v19 UUIDString];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [mapCopy mapItems];
    v21 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = *v54;
      *&v22 = 138413059;
      v48 = v22;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v53 + 1) + 8 * i);
          [v26 name];
          v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          labels = [v26 labels];
          v29 = [labels count];

          v30 = [mapCopy numberOfLabelsInSameSpaceForMapItem:v26];
          if (v29)
          {
            v31 = v30 / v29;
            v32 = [*&v27 isEqual:uUIDString];
            if (v32)
            {
              if (v31 <= 0.4)
              {
LABEL_20:
                v39 = __atxlog_handle_modes(v32);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = objc_opt_class();
                  v41 = v40;
                  v42 = NSStringFromSelector(a2);
                  *buf = 138412803;
                  v58 = v40;
                  v59 = 2112;
                  v60 = v42;
                  v61 = 2049;
                  v62 = 1.0 - v31;
                  _os_log_impl(&dword_260C9F000, v39, OS_LOG_TYPE_DEFAULT, "[%@][%@] Device was predicted (at %{private}f) to not be at a work microlocation", buf, 0x20u);
                }

                v37 = v51;
                v38 = 0;
              }

              else
              {
                v33 = __atxlog_handle_modes(v32);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = objc_opt_class();
                  v35 = v34;
                  v36 = NSStringFromSelector(a2);
                  *buf = 138412803;
                  v58 = v34;
                  v59 = 2112;
                  v60 = v36;
                  v61 = 2049;
                  v62 = v31;
                  _os_log_impl(&dword_260C9F000, v33, OS_LOG_TYPE_DEFAULT, "[%@][%@] Device is predicted (at %{private}f) to be at a work microlocation", buf, 0x20u);
                }

                v37 = v51;
                v38 = 1;
              }

              [(ATXModeFeatureSet *)v37 setValue:v38 forBinaryFeatureOfType:25];
              goto LABEL_27;
            }
          }

          else
          {
            v32 = [*&v27 isEqual:uUIDString];
            v31 = 0.0;
            if (v32)
            {
              goto LABEL_20;
            }
          }

          v43 = __atxlog_handle_modes(v32);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = objc_opt_class();
            v45 = v44;
            v46 = NSStringFromSelector(a2);
            *buf = v48;
            v58 = v44;
            v59 = 2112;
            v60 = v46;
            v61 = 2112;
            v62 = v27;
            v63 = 2049;
            v64 = v31;
            _os_log_impl(&dword_260C9F000, v43, OS_LOG_TYPE_DEFAULT, "[%@][%@] Probability that this device is not at work microlocation [labled:%@]: %{private}f", buf, 0x2Au);
          }

LABEL_27:
        }

        v23 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v23);
    }
  }

  else
  {
    uUIDString = __atxlog_handle_modes(isMapValid);
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeMicrolocationFeaturizer *)self _provideFeaturesWithCurrentULMap:a2, uUIDString];
    }
  }

  return v51;
}

- (void)connectionDidUpdatePredictionContext:(id)context
{
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ATXModeMicrolocationFeaturizer_connectionDidUpdatePredictionContext___block_invoke;
  v7[3] = &__block_descriptor_40_e40_v16__0__ATXModeMicrolocationFeaturizer_8l;
  v7[4] = a2;
  v5 = v7;
  if (queue)
  {
    v6 = queue;
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __ATXDispatchAsyncWithStrongSelf_block_invoke;
    block[3] = &unk_279AB7C48;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __71__ATXModeMicrolocationFeaturizer_connectionDidUpdatePredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[1] currentMap];
  v5 = [v4 predictionContext];
  v6 = __atxlog_handle_modes(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v28 = v7;
    v9 = NSStringFromSelector(v8);
    v10 = [v5 uniqueIdentifier];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isPredictionValid")}];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isMapValid")}];
    *buf = 138413314;
    v30 = v7;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "[%@][%@] MiLo prediction received, uniqueIdentifier: %@, isPredictionValid: %@, isMapValid: %@", buf, 0x34u);
  }

  v13 = [v5 isPredictionValid];
  v14 = v13;
  v15 = __atxlog_handle_modes(v13);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 32);
      v19 = v17;
      v20 = NSStringFromSelector(v18);
      *buf = 138412546;
      v30 = v17;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_260C9F000, v15, OS_LOG_TYPE_DEFAULT, "[%@][%@] Pushing work microlocation prediction to mode heurisic classifier", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(v3 + 3);
    v22 = [v3 _provideFeaturesWithCurrentULMap:v4];
  }

  else
  {
    if (v16)
    {
      v23 = objc_opt_class();
      v24 = *(a1 + 32);
      v25 = v23;
      v26 = NSStringFromSelector(v24);
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&dword_260C9F000, v15, OS_LOG_TYPE_DEFAULT, "[%@][%@] Got invalid MiLo prediction, return empty feature set", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(v3 + 3);
    v22 = objc_alloc_init(ATXModeFeatureSet);
  }

  v27 = v22;
  [WeakRetained featurizer:v3 didUpdateFeatures:v22];
}

- (void)beginListening
{
  connection = self->_connection;
  v4 = [objc_alloc(MEMORY[0x277D28818]) initWithIsLowLatency:0];
  v3 = [(ULConnection *)connection startUpdatingWithConfiguration:v4];
}

- (void)stopListening
{
  disconnect = [(ULConnection *)self->_connection disconnect];
  connection = self->_connection;
  self->_connection = 0;
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithMiloProvider:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXModeMicrolocationFeaturizer.m" lineNumber:55 description:@"miloProvider must not be nil."];
}

- (void)_provideFeaturesWithCurrentULMap:(NSObject *)a3 .cold.1(uint64_t a1, const char *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = NSStringFromSelector(a2);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_260C9F000, a3, OS_LOG_TYPE_ERROR, "[%@][%@] Invalid microlocation map", &v8, 0x16u);
}

@end