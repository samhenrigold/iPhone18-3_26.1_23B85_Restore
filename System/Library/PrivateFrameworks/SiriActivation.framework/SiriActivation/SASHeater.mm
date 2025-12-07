@interface SASHeater
- (SASHeaterDelegate)delegate;
- (id)_convertVirtualAudioSubTypeToString:(unsigned int)string;
- (void)_cancelPreparation;
- (void)_suggestPreheat;
- (void)cancelPreparationForButtonIdentifier:(int64_t)identifier;
- (void)prepareForUseAfterTimeInterval:(double)interval;
- (void)updatePredictedRouteIsZLL;
@end

@implementation SASHeater

- (void)prepareForUseAfterTimeInterval:(double)interval
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SASHeater_prepareForUseAfterTimeInterval___block_invoke;
  v4[3] = &unk_1E82F36A8;
  objc_copyWeak(v5, &location);
  v5[1] = *&interval;
  SiriInvokeOnMainQueue(v4);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __44__SASHeater_prepareForUseAfterTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x1E696AE30] processInfo];
  [v3 systemUptime];
  [WeakRetained _setPreparationStartTime:?];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setPreheatTimeInterval:*(a1 + 40)];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _cancelPreparation];

  if (*(a1 + 40) + -0.05 >= 0.0)
  {
    v6 = *(a1 + 40) + -0.05;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = MEMORY[0x1E695DFF0];
  v10 = v7;
  v9 = [v8 scheduledTimerWithTimeInterval:v10 target:sel__suggestPreheat selector:0 userInfo:0 repeats:v6];
  [v10 setPreheatTimer:v9];
}

- (void)cancelPreparationForButtonIdentifier:(int64_t)identifier
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v7 = v6;
  [(SASHeater *)self _preparationStartTime];
  v9 = v7 - v8;

  [(SASHeater *)self _cancelPreparation];
  delegate = [(SASHeater *)self delegate];
  [(SASHeater *)self preheatTimeInterval];
  [delegate heater:self cancelledPreparationWithButtonIdentifier:identifier duration:v9 targetDuration:v10];
}

- (void)_cancelPreparation
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31__SASHeater__cancelPreparation__block_invoke;
  v2[3] = &unk_1E82F36D0;
  objc_copyWeak(&v3, &location);
  SiriInvokeOnMainQueue(v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __31__SASHeater__cancelPreparation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained preheatTimer];
  [v3 invalidate];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setPreheatTimer:0];
}

- (void)_suggestPreheat
{
  delegate = [(SASHeater *)self delegate];
  [delegate heaterSuggestsPreheating:self];

  [(SASHeater *)self updatePredictedRouteIsZLL];
}

- (void)updatePredictedRouteIsZLL
{
  if (AFDeviceSupportsZLL())
  {
    [(SASHeater *)self setPredictedRecordRouteIsZLL:1];
    objc_initWeak(&location, self);
    v3 = dispatch_get_global_queue(21, 0);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__SASHeater_updatePredictedRouteIsZLL__block_invoke;
    v4[3] = &unk_1E82F36D0;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {

    [(SASHeater *)self setPredictedRecordRouteIsZLL:0];
  }
}

void __38__SASHeater_updatePredictedRouteIsZLL__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [v2 pickableRoutesForCategory:*MEMORY[0x1E698D298] andMode:@"SpeechRecognition"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v6 = *v24;
    v7 = MEMORY[0x1E69AEC80];
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:*v7];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          v5 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AECA0]];
          v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AEBA0]];
          v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AEC90]];
          v14 = *MEMORY[0x1E698D0A0];
          if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v28 = "[SASHeater updatePredictedRouteIsZLL]_block_invoke";
            v29 = 2112;
            v30 = v9;
            _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s Picked record route: %@", buf, 0x16u);
          }

          goto LABEL_12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
  v13 = 0;
LABEL_12:

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__SASHeater_updatePredictedRouteIsZLL__block_invoke_58;
  v18[3] = &unk_1E82F36F8;
  objc_copyWeak(&v22, (a1 + 32));
  v19 = v5;
  v20 = v13;
  v21 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v18);

  objc_destroyWeak(&v22);
}

void __38__SASHeater_updatePredictedRouteIsZLL__block_invoke_58(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) isEqualToString:*MEMORY[0x1E69AEAD8]];
    v4 = [*(a1 + 40) isEqualToString:*MEMORY[0x1E69AEBD0]] | v3 ^ 1;
    v5 = *(a1 + 48);
    v6 = [WeakRetained _convertVirtualAudioSubTypeToString:1781740087];
    LOBYTE(v5) = [v5 isEqualToString:v6];

    v7 = v4 & (v5 ^ 1);
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[SASHeater updatePredictedRouteIsZLL]_block_invoke";
      v11 = 1024;
      v12 = v7 & 1;
      _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s Predicted record route ZLL: %{BOOL}d", &v9, 0x12u);
    }

    [WeakRetained setPredictedRecordRouteIsZLL:v7 & 1];
  }
}

- (id)_convertVirtualAudioSubTypeToString:(unsigned int)string
{
  if (string)
  {
    cStr[0] = HIBYTE(string);
    cStr[1] = BYTE2(string);
    cStr[2] = BYTE1(string);
    cStr[3] = string;
    cStr[4] = 0;
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SASHeaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end