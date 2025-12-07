@interface LACDTOSensorTrustController
- (BOOL)_isHardwareTrustError:(id)error;
- (LACDTOSensorTrustController)initWithReplyQueue:(id)queue ui:(id)ui store:(id)store verifier:(id)verifier flags:(id)flags;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACDTOSensorTrustController

- (LACDTOSensorTrustController)initWithReplyQueue:(id)queue ui:(id)ui store:(id)store verifier:(id)verifier flags:(id)flags
{
  uiCopy = ui;
  storeCopy = store;
  verifierCopy = verifier;
  flagsCopy = flags;
  v19.receiver = self;
  v19.super_class = LACDTOSensorTrustController;
  v16 = [(LACDTOSensorTrustController *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ui, ui);
    objc_storeStrong(&v17->_store, store);
    objc_storeStrong(&v17->_verifier, verifier);
    objc_storeStrong(&v17->_flags, flags);
  }

  return v17;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  requestCopy = request;
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(LACDTOSensorTrustController *)self canProcessRequest:requestCopy])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke;
    v22[3] = &unk_1E7A971C0;
    v11 = requestCopy;
    v23 = v11;
    v12 = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke(v22);
    [v11 updateOptions:v12];

    v14 = LACLogDTOSensor(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Sensor trust verification will start", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    verifier = self->_verifier;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3;
    v17[3] = &unk_1E7A971E8;
    objc_copyWeak(&v20, &buf);
    v19 = completionCopy;
    v18 = v11;
    [(LACDTOSensorTrustVerifier *)verifier verifySensorTrustWithCompletion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&buf);
  }

  else
  {
    v16 = [LACEvaluationResult resultWithNext:requestCopy];
    (*(completionCopy + 2))(completionCopy, v16);
  }
}

id __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) options];
  v2 = [v1 mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:1086];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1085];
  v8 = [v5 objectForKeyedSubscript:v7];
  if ([v8 BOOLValue])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
    v10 = [v5 objectForKeyedSubscript:v9];

    if (v10)
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];
  }

  else
  {
  }

LABEL_9:

  return v5;
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = LACLogDTOSensor(WeakRetained);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3_cold_1(v6, v10);
      }

      v11 = a1[5];
      v12 = [LACEvaluationResult resultWithFailure:v6];
      v11[2](v11, v12);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "Sensor trust verification did finish with result: %@", buf, 0xCu);
      }

      v13 = v8[2];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4;
      v14[3] = &unk_1E7A95648;
      objc_copyWeak(&v17, a1 + 6);
      v16 = a1[5];
      v15 = a1[4];
      [v13 storeSensorTrustState:v5 completion:v14];

      objc_destroyWeak(&v17);
    }
  }
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = LACLogDTOSensor(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4_cold_1(v3, v6);
      }

      v7 = *(a1 + 40);
      v8 = [LACEvaluationResult resultWithFailure:v3];
      (*(v7 + 16))(v7, v8);
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = [LACEvaluationResult resultWithNext:*(a1 + 32)];
      (*(v9 + 16))(v9, v10);
    }
  }
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  completionCopy = completion;
  if (!-[LACDTOSensorTrustController canProcessRequest:](self, "canProcessRequest:", requestCopy) || ([resultCopy error], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[LACDTOSensorTrustController _isHardwareTrustError:](self, "_isHardwareTrustError:", v11), v11, !v12))
  {
LABEL_11:
    completionCopy[2](completionCopy, resultCopy);
    goto LABEL_12;
  }

  options = [requestCopy options];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:1085];
  v15 = [options objectForKey:v14];
  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
  {
    v18 = LACLogDTOSensor(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      error = [resultCopy error];
      *buf = 138543362;
      v38 = error;
      _os_log_impl(&dword_1B0233000, v18, OS_LOG_TYPE_DEFAULT, "Mapping unapproved sensor error %{public}@ to success on client's request", buf, 0xCu);
    }

    v20 = [LACEvaluationResult resultWithSuccess:MEMORY[0x1E695E0F8]];
    completionCopy[2](completionCopy, v20);

    goto LABEL_12;
  }

  options2 = [requestCopy options];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:1039];
  v23 = [options2 objectForKey:v22];
  bOOLValue2 = [v23 BOOLValue];

  if (bOOLValue2)
  {
    v26 = LACLogDTOSensor(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0233000, v26, OS_LOG_TYPE_DEFAULT, "Skipping sensor trust alert on client's request", buf, 2u);
    }

    goto LABEL_11;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke;
  v35[3] = &unk_1E7A97210;
  v27 = requestCopy;
  v36 = v27;
  v28 = __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke(v35);
  v29 = LACLogDTOSensor(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
    *buf = 138412290;
    v38 = v30;
    _os_log_impl(&dword_1B0233000, v29, OS_LOG_TYPE_DEFAULT, "Sensor trust alert with id: %@ will appear.", buf, 0xCu);
  }

  ui = self->_ui;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke_8;
  v32[3] = &unk_1E7A95998;
  v34 = completionCopy;
  v33 = resultCopy;
  [(LACUserInterfacePresenting *)ui presentUIForIdentifier:v28 request:v27 completion:v32];

LABEL_12:
}

uint64_t __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) payload];
  v2 = [v1 objectForKeyedSubscript:@"kLAEvaluationRequestPayloadKeyDTOEnvironment"];

  if ([v2 isStrictModeEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOSensor(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Sensor trust alert did disappear (err: %@)", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_isHardwareTrustError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = [LACError error:errorCopy hasCode:-1 subcode:30]|| [LACError error:errorCopy hasCode:-1 subcode:31];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Sensor trust verification failed %{public}@", &v2, 0xCu);
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Sensor trust verification result could not be stored %{public}@", &v2, 0xCu);
}

@end