@interface CSHapticsPlayer
- (CSHapticsPlayer)init;
- (float)_hapticIntensityValueForIntensity:(unint64_t)intensity;
- (float)_reverbHapticSharpnessValueForIntensity:(unint64_t)intensity;
- (void)_onEngineReset;
- (void)_onEngineStopsWithReason:(int64_t)reason;
- (void)_playButtonFeedbackWithIntensity:(float)intensity andSharpness:(float)sharpness;
- (void)_setupHapticEngine;
- (void)_startHapticsEngineWithCompletion:(id)completion;
- (void)playButtonFeedback;
- (void)playReverbButtonFeedbackWithIntensity:(unint64_t)intensity;
- (void)playVocalButtonFeedbackWithIntensity:(unint64_t)intensity;
@end

@implementation CSHapticsPlayer

- (CSHapticsPlayer)init
{
  v5.receiver = self;
  v5.super_class = CSHapticsPlayer;
  v2 = [(CSHapticsPlayer *)&v5 init];
  if (v2)
  {
    capabilitiesForHardware = [MEMORY[0x277CBF6B0] capabilitiesForHardware];
    v2->_supportsHaptics = [capabilitiesForHardware supportsHaptics];

    [(CSHapticsPlayer *)v2 _setupHapticEngine];
  }

  return v2;
}

- (void)playButtonFeedback
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[CSHapticsPlayer playButtonFeedback]";
  OUTLINED_FUNCTION_2(&dword_2441FB000, self, a3, "%s: Device does not support haptics.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)playVocalButtonFeedbackWithIntensity:(unint64_t)intensity
{
  supportsHaptics = [(CSHapticsPlayer *)self supportsHaptics];
  if (supportsHaptics)
  {
    [(CSHapticsPlayer *)self _hapticIntensityValueForIntensity:intensity];

    [CSHapticsPlayer _playButtonFeedbackWithIntensity:"_playButtonFeedbackWithIntensity:andSharpness:" andSharpness:?];
  }

  else
  {
    v6 = ContinuitySingLog(supportsHaptics);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(CSHapticsPlayer *)v6 playVocalButtonFeedbackWithIntensity:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

- (void)playReverbButtonFeedbackWithIntensity:(unint64_t)intensity
{
  supportsHaptics = [(CSHapticsPlayer *)self supportsHaptics];
  if (supportsHaptics)
  {
    [(CSHapticsPlayer *)self _hapticIntensityValueForIntensity:intensity];
    v7 = v6;
    [(CSHapticsPlayer *)self _reverbHapticSharpnessValueForIntensity:intensity];
    LODWORD(v8) = LODWORD(v9);
    LODWORD(v9) = v7;

    [(CSHapticsPlayer *)self _playButtonFeedbackWithIntensity:v9 andSharpness:v8];
  }

  else
  {
    v10 = ContinuitySingLog(supportsHaptics);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(CSHapticsPlayer *)v10 playReverbButtonFeedbackWithIntensity:v11, v12, v13, v14, v15, v16, v17];
    }
  }
}

- (void)_setupHapticEngine
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Error creating CHHapticEngine: %@", v2, v3, v4, v5, v6);
}

void __37__CSHapticsPlayer__setupHapticEngine__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onEngineReset];
}

void __37__CSHapticsPlayer__setupHapticEngine__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onEngineStopsWithReason:a2];
}

- (void)_startHapticsEngineWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(CHHapticEngine *)self->_engine setPlaysHapticsOnly:1];
  engine = self->_engine;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke;
  v7[3] = &unk_278E0AC20;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(CHHapticEngine *)engine startWithCompletionHandler:v7];
  self->_state = 1;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained state];
    if (v6 == 1)
    {
      v7 = ContinuitySingLog(1);
      v8 = v7;
      if (v3)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke_cold_2();
        }

        [v5 setState:0];
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = "[CSHapticsPlayer _startHapticsEngineWithCompletion:]_block_invoke";
          _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Successfully started the CHHapticEngine.", &v11, 0xCu);
        }

        [v5 setState:2];
        v10 = *(a1 + 32);
        if (v10)
        {
          (*(v10 + 16))();
        }
      }
    }

    else
    {
      v9 = ContinuitySingLog(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke_cold_1();
      }
    }
  }
}

- (void)_onEngineReset
{
  v3 = ContinuitySingLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSHapticsPlayer _onEngineReset]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: CHHapticEngine reset", &v4, 0xCu);
  }

  if (self->_state - 1 <= 1)
  {
    self->_state = 0;
  }
}

- (void)_onEngineStopsWithReason:(int64_t)reason
{
  v5 = ContinuitySingLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSHapticsPlayer _onEngineStopsWithReason:]";
    v12 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: HapticsEngine stopped! Reason: %ld", &v10, 0x16u);
  }

  state = self->_state;
  p_state = &self->_state;
  if (state != 2)
  {
    v9 = ContinuitySingLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CSHapticsPlayer _onEngineStopsWithReason:];
    }
  }

  *p_state = 0;
}

- (void)_playButtonFeedbackWithIntensity:(float)intensity andSharpness:(float)sharpness
{
  v7 = ContinuitySingLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Trying to play haptics.", buf, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277CBF6C0]);
  *&v9 = intensity;
  v10 = [v8 initWithParameterID:*MEMORY[0x277CBF638] value:v9];
  v42[0] = v10;
  v11 = objc_alloc(MEMORY[0x277CBF6C0]);
  *&v12 = sharpness;
  v13 = [v11 initWithParameterID:*MEMORY[0x277CBF640] value:v12];
  v42[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];

  v15 = objc_alloc(MEMORY[0x277CBF6B8]);
  v16 = [v15 initWithEventType:*MEMORY[0x277CBF650] parameters:v14 relativeTime:0.0 duration:1.0];
  v17 = objc_alloc(MEMORY[0x277CBF6D0]);
  v41 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v40 = 0;
  v19 = [v17 initWithEvents:v18 parameters:MEMORY[0x277CBEBF8] error:&v40];
  v20 = v40;

  if (v20)
  {
    v22 = ContinuitySingLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:];
    }

    goto LABEL_30;
  }

  engine = self->_engine;
  v39 = 0;
  v24 = [(CHHapticEngine *)engine createPlayerWithPattern:v19 error:&v39];
  v22 = v39;
  player = self->_player;
  self->_player = v24;

  if (!v22)
  {
    inited = objc_initWeak(&location, self);
    state = self->_state;
    if (state > 1)
    {
      if (state == 2)
      {
        [(CHHapticEngine *)self->_engine notifyWhenPlayersFinished:&__block_literal_global_20];
        v32 = self->_player;
        v35 = 0;
        [(CHHapticPatternPlayer *)v32 startAtTime:&v35 error:0.0];
        v33 = v35;
        v30 = v33;
        if (v33)
        {
          v34 = ContinuitySingLog(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:];
          }
        }

        else
        {
          v34 = ContinuitySingLog(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v44 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
            _os_log_impl(&dword_2441FB000, v34, OS_LOG_TYPE_DEFAULT, "%s: Haptics player starting", buf, 0xCu);
          }
        }

        goto LABEL_28;
      }

      if (state == 3)
      {
        v30 = ContinuitySingLog(inited);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [CSHapticsPlayer _playButtonFeedbackWithIntensity:v30 andSharpness:?];
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (!state)
      {
        v31 = ContinuitySingLog(inited);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v44 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
          _os_log_impl(&dword_2441FB000, v31, OS_LOG_TYPE_DEFAULT, "%s: Restarting the haptics engine.", buf, 0xCu);
        }

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __65__CSHapticsPlayer__playButtonFeedbackWithIntensity_andSharpness___block_invoke;
        v36[3] = &unk_278E0ABD0;
        objc_copyWeak(&v37, &location);
        [(CSHapticsPlayer *)self _startHapticsEngineWithCompletion:v36];
        objc_destroyWeak(&v37);
        goto LABEL_29;
      }

      if (state == 1)
      {
        v30 = ContinuitySingLog(inited);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [CSHapticsPlayer _playButtonFeedbackWithIntensity:v30 andSharpness:?];
        }

LABEL_28:
      }
    }

LABEL_29:
    objc_destroyWeak(&location);
    goto LABEL_30;
  }

  v27 = ContinuitySingLog(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:];
  }

LABEL_30:
}

void __65__CSHapticsPlayer__playButtonFeedbackWithIntensity_andSharpness___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] notifyWhenPlayersFinished:&__block_literal_global];
    v3 = [v2 player];
    v10 = 0;
    [v3 startAtTime:&v10 error:0.0];
    v4 = v10;

    v6 = ContinuitySingLog(v5);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __65__CSHapticsPlayer__playButtonFeedbackWithIntensity_andSharpness___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]_block_invoke";
      _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Haptics player starting", &v8, 0xCu);
    }
  }
}

- (float)_hapticIntensityValueForIntensity:(unint64_t)intensity
{
  result = 0.5;
  if (intensity == 1)
  {
    result = 0.75;
  }

  if (intensity == 2)
  {
    return 1.0;
  }

  return result;
}

- (float)_reverbHapticSharpnessValueForIntensity:(unint64_t)intensity
{
  result = 0.3;
  if (intensity != 1)
  {
    result = 1.0;
  }

  if (intensity == 2)
  {
    return 0.1;
  }

  return result;
}

- (void)playVocalButtonFeedbackWithIntensity:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[CSHapticsPlayer playVocalButtonFeedbackWithIntensity:]";
  OUTLINED_FUNCTION_2(&dword_2441FB000, a1, a3, "%s: Device does not support haptics.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)playReverbButtonFeedbackWithIntensity:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[CSHapticsPlayer playReverbButtonFeedbackWithIntensity:]";
  OUTLINED_FUNCTION_2(&dword_2441FB000, a1, a3, "%s: Device does not support haptics.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Unexpected state: %@", v2, v3, v4, v5, v6);
}

void __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke_cold_2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Error encountered while starting CHHapticEngine: %@", v2, v3, v4, v5, v6);
}

- (void)_onEngineStopsWithReason:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Unexpected state: %@", v2, v3, v4, v5, v6);
}

- (void)_playButtonFeedbackWithIntensity:andSharpness:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Error encountered while creating CHHapticPattern: %@", v2, v3, v4, v5, v6);
}

- (void)_playButtonFeedbackWithIntensity:andSharpness:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Error encountered while creating CHHapticPatternPlayer: %@", v2, v3, v4, v5, v6);
}

- (void)_playButtonFeedbackWithIntensity:(os_log_t)log andSharpness:.cold.3(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Trying to play haptics but we haptic engine failed to create.", &v1, 0xCu);
}

- (void)_playButtonFeedbackWithIntensity:andSharpness:.cold.4()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Failed to start the haptic player. Error: %@", v2, v3, v4, v5, v6);
}

- (void)_playButtonFeedbackWithIntensity:(os_log_t)log andSharpness:.cold.5(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Trying to play haptics but we haptics engine is starting. Nothing will happen.", &v1, 0xCu);
}

void __65__CSHapticsPlayer__playButtonFeedbackWithIntensity_andSharpness___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Failed to start the haptic player. Error: %@", v2, v3, v4, v5, v6);
}

@end