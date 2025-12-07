@interface HPSSpatialProfileSingleStepSoundHapticManager
- (BOOL)isEnrollGuidancePlaying;
- (HPSSpatialProfileSingleStepSoundHapticManager)init;
- (id)createPlayerWithFileName:(id)name;
- (void)pauseEnrollGuidancePlayer;
- (void)pauseProgressPlayer;
- (void)playEnrollGuidance:(int)guidance;
- (void)playProgressPlayer:(int)player;
- (void)readDynamicEnrollmentFeedback;
- (void)setEnrollGuidancePitch:(float)pitch;
- (void)setProgressPlayerPitch:(float)pitch;
- (void)setupPlayers;
- (void)start;
- (void)startEnrollLoop;
- (void)stop;
- (void)stopEnrollLoop;
- (void)triggerSoundHapticForEarCaptureState:(int)state completion:(id)completion;
- (void)triggerSoundHapticForEnrollmentState:(int)state completion:(id)completion;
- (void)updateEnrollLoopVolume:(double)volume;
@end

@implementation HPSSpatialProfileSingleStepSoundHapticManager

- (HPSSpatialProfileSingleStepSoundHapticManager)init
{
  v10.receiver = self;
  v10.super_class = HPSSpatialProfileSingleStepSoundHapticManager;
  v2 = [(HPSSpatialProfileSingleStepSoundHapticManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBF6B0]);
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v5 = [v3 initWithAudioSession:mEMORY[0x277CB83F8] error:0];
    engine = v2->_engine;
    v2->_engine = v5;

    v7 = dispatch_queue_create("com.apple.HeadphoneSettings.soundHapticSerialQueue", 0);
    soundHapticSerialQueue = v2->_soundHapticSerialQueue;
    v2->_soundHapticSerialQueue = v7;

    [(HPSSpatialProfileSingleStepSoundHapticManager *)v2 readDynamicEnrollmentFeedback];
  }

  return v2;
}

- (void)start
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Start Engine", buf, 2u);
  }

  [(HPSSpatialProfileSingleStepSoundHapticManager *)self setupPlayers];
  engine = self->_engine;
  v8 = 0;
  [(CHHapticEngine *)engine startAndReturnError:&v8];
  v5 = v8;
  v6 = v5;
  if (v5)
  {
    v7 = sharedBluetoothSettingsLogComponent(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager start];
    }
  }
}

- (void)stop
{
  v3 = sharedBluetoothSettingsLogComponent(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Stop Engine", v4, 2u);
  }

  [(CHHapticEngine *)self->_engine stopWithCompletionHandler:&__block_literal_global_0];
}

- (void)setupPlayers
{
  v3 = [(HPSSpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_Lock"];
  scanLockPlayer = self->_scanLockPlayer;
  self->_scanLockPlayer = v3;

  v5 = [(HPSSpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_In_Progress"];
  scanInProgressPlayer = self->_scanInProgressPlayer;
  self->_scanInProgressPlayer = v5;

  v7 = [(HPSSpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_Orient_User"];
  enrollGuidancePlayer = self->_enrollGuidancePlayer;
  self->_enrollGuidancePlayer = v7;

  v9 = [(HPSSpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Single_Step_First_Ear_Completed"];
  enrollmentHalfDonePlayer = self->_enrollmentHalfDonePlayer;
  self->_enrollmentHalfDonePlayer = v9;

  v11 = [(HPSSpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Single_Step_Second_Ear_Completed"];
  scanCompletedPlayer = self->_scanCompletedPlayer;
  self->_scanCompletedPlayer = v11;

  v13 = [(HPSSpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Scan_Error"];
  scanErrorPlayer = self->_scanErrorPlayer;
  self->_scanErrorPlayer = v13;

  v15 = [(HPSSpatialProfileSingleStepSoundHapticManager *)self createPlayerWithFileName:@"Spatial_Profile_Single_Step_Scan_Completed"];
  enrollmentCompletedPlayer = self->_enrollmentCompletedPlayer;
  self->_enrollmentCompletedPlayer = v15;

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 URLForResource:@"tonal_loop" withExtension:@"wav"];

  NSLog(&cfstr_PathToPlay.isa, v18);
  v24 = 0;
  v19 = [objc_alloc(MEMORY[0x277CB83D0]) initWithContentsOfURL:v18 error:&v24];
  v20 = v24;
  enrollLooplayer = self->_enrollLooplayer;
  self->_enrollLooplayer = v19;

  if (v20)
  {
    localizedDescription = [v20 localizedDescription];
    NSLog(&cfstr_FailedWithReas.isa, localizedDescription);
  }

  else
  {
    [(AVAudioPlayer *)self->_enrollLooplayer setDelegate:self];
    [(AVAudioPlayer *)self->_enrollLooplayer setNumberOfLoops:-1];
    [(AVAudioPlayer *)self->_enrollLooplayer setCurrentTime:0.0];
    LODWORD(v23) = 1028443341;
    [(AVAudioPlayer *)self->_enrollLooplayer setVolume:v23];
  }
}

- (void)setEnrollGuidancePitch:(float)pitch
{
  enrollGuidancePlayer = self->_enrollGuidancePlayer;
  if (enrollGuidancePlayer)
  {
    if (self->_dynamicEnrollmentFeedback)
    {
      [(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer setPlaybackRate:?];
    }
  }
}

- (BOOL)isEnrollGuidancePlaying
{
  enrollGuidancePlayer = self->_enrollGuidancePlayer;
  if (enrollGuidancePlayer)
  {
    LOBYTE(enrollGuidancePlayer) = [(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer loopEnabled];
  }

  return enrollGuidancePlayer;
}

- (void)pauseEnrollGuidancePlayer
{
  if (self->_dynamicEnrollmentFeedback)
  {
    v9[3] = v2;
    v9[4] = v3;
    enrollGuidancePlayer = self->_enrollGuidancePlayer;
    if (enrollGuidancePlayer)
    {
      v9[0] = 0;
      [(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer stopAtTime:v9 error:0.0];
      v6 = v9[0];
      v7 = [(CHHapticAdvancedPatternPlayer *)self->_enrollGuidancePlayer setLoopEnabled:0];
      if (v6)
      {
        v8 = sharedBluetoothSettingsLogComponent(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [HPSSpatialProfileSoundHapticManager pauseEnrollGuidancePlayer];
        }
      }
    }
  }
}

- (void)playEnrollGuidance:(int)guidance
{
  if (self->_dynamicEnrollmentFeedback)
  {
    v12[3] = v3;
    v12[4] = v4;
    if (guidance == 11 || guidance == 7)
    {
      enrollGuidancePlayer = self->_enrollGuidancePlayer;
      if (enrollGuidancePlayer)
      {
        if (([(CHHapticAdvancedPatternPlayer *)enrollGuidancePlayer loopEnabled]& 1) == 0)
        {
          [(CHHapticAdvancedPatternPlayer *)self->_enrollGuidancePlayer setLoopEnabled:1];
          LODWORD(v7) = 0.5;
          [(CHHapticAdvancedPatternPlayer *)self->_enrollGuidancePlayer setPlaybackRate:v7];
          v8 = self->_enrollGuidancePlayer;
          v12[0] = 0;
          [(CHHapticAdvancedPatternPlayer *)v8 startAtTime:v12 error:0.0];
          v9 = v12[0];
          if (v9)
          {
            v10 = v9;
            v11 = sharedBluetoothSettingsLogComponent(v9);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              [HPSSpatialProfileSoundHapticManager playEnrollGuidance:];
            }
          }
        }
      }
    }
  }
}

- (void)setProgressPlayerPitch:(float)pitch
{
  scanInProgressPlayer = self->_scanInProgressPlayer;
  if (scanInProgressPlayer)
  {
    [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer setPlaybackRate:?];
  }
}

- (void)pauseProgressPlayer
{
  scanInProgressPlayer = self->_scanInProgressPlayer;
  if (scanInProgressPlayer)
  {
    v6 = 0;
    [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer stopAtTime:&v6 error:0.0];
    v3 = v6;
    if (v3)
    {
      v4 = v3;
      v5 = sharedBluetoothSettingsLogComponent(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSoundHapticManager pauseEnrollGuidancePlayer];
      }
    }
  }
}

- (void)playProgressPlayer:(int)player
{
  if (player == 11 || player == 7)
  {
    scanInProgressPlayer = self->_scanInProgressPlayer;
    if (scanInProgressPlayer)
    {
      [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer setLoopEnabled:1];
      LODWORD(v5) = 1.0;
      [(CHHapticAdvancedPatternPlayer *)self->_scanInProgressPlayer setPlaybackRate:v5];
      v6 = self->_scanInProgressPlayer;
      v10 = 0;
      [(CHHapticAdvancedPatternPlayer *)v6 startAtTime:&v10 error:0.0];
      v7 = v10;
      if (v7)
      {
        v8 = v7;
        v9 = sharedBluetoothSettingsLogComponent(v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [HPSSpatialProfileSoundHapticManager playEnrollGuidance:];
        }
      }
    }
  }
}

- (id)createPlayerWithFileName:(id)name
{
  v4 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:nameCopy withExtension:@"ahap"];

  v19 = 0;
  v8 = [objc_alloc(MEMORY[0x277CBF6D0]) initWithContentsOfURL:v7 error:&v19];
  v9 = v19;
  v10 = v9;
  if (v9)
  {
    v11 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager initPlayerWithFileName:];
    }
  }

  engine = self->_engine;
  v18 = 0;
  v13 = [(CHHapticEngine *)engine createAdvancedPlayerWithPattern:v8 error:&v18];
  v14 = v18;
  v15 = v14;
  if (v14)
  {
    v16 = sharedBluetoothSettingsLogComponent(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager initPlayerWithFileName:];
    }
  }

  return v13;
}

- (void)triggerSoundHapticForEnrollmentState:(int)state completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_group_create();
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v9 = *MEMORY[0x277CB8030];
  v43 = 0;
  [mEMORY[0x277CB83F8] setCategory:v9 error:&v43];
  v10 = v43;

  if (v10)
  {
    v12 = sharedBluetoothSettingsLogComponent(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager triggerSoundHapticForEnrollmentState:completion:];
    }
  }

  if (state > 6)
  {
    switch(state)
    {
      case 7:
        v20 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Start", buf, 2u);
        }

        soundHapticSerialQueue = self->_soundHapticSerialQueue;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke;
        v36[3] = &unk_2796AD5C8;
        v37 = v7;
        selfCopy = self;
        v40 = 7;
        v39 = completionCopy;
        dispatch_async(soundHapticSerialQueue, v36);

        v15 = v37;
        goto LABEL_30;
      case 8:
        v22 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
        }

        v23 = self->_soundHapticSerialQueue;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_51;
        v33[3] = &unk_2796AD5F0;
        v33[4] = self;
        v34 = v7;
        v35 = completionCopy;
        dispatch_async(v23, v33);

        v15 = v34;
        goto LABEL_30;
      case 12:
        v13 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Enrollment Completed", buf, 2u);
        }

        v14 = self->_soundHapticSerialQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_57;
        block[3] = &unk_2796AD5F0;
        v30 = v7;
        selfCopy2 = self;
        v32 = completionCopy;
        dispatch_async(v14, block);

        v15 = v30;
LABEL_30:

        goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (state == 3)
  {
    v24 = sharedBluetoothSettingsLogComponent(v11);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager triggerSoundHapticForEnrollmentState:v24 completion:?];
    }

    v25 = self->_soundHapticSerialQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_63;
    v26[3] = &unk_2796AD5F0;
    v26[4] = self;
    v27 = v7;
    v28 = completionCopy;
    dispatch_async(v25, v26);

    v15 = v27;
    goto LABEL_30;
  }

  if (state != 6)
  {
LABEL_32:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_31;
  }

  scanInProgressPlayer = self->_scanInProgressPlayer;
  v42 = v10;
  [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer stopAtTime:&v42 error:0.0];
  v17 = v42;

  if (v17)
  {
    v19 = sharedBluetoothSettingsLogComponent(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v10 = v17;
LABEL_31:
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2;
  v16[3] = &unk_2796AD578;
  v17 = *(a1 + 32);
  [*(*(a1 + 40) + 16) setCompletionHandler:v16];
  v2 = *(*(a1 + 40) + 16);
  v15 = 0;
  [v2 startAtTime:&v15 error:0.0];
  v3 = v15;
  v4 = v3;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_cold_1();
    }
  }

  [*(*(a1 + 40) + 24) setLoopEnabled:1];
  LODWORD(v6) = 1.0;
  [*(*(a1 + 40) + 24) setPlaybackRate:v6];
  v7 = *(*(a1 + 40) + 24);
  v14 = v4;
  [v7 startAtTime:&v14 error:0.0];
  v8 = v14;

  v9 = *(a1 + 40);
  if (v9[72] == 1)
  {
    v9 = [v9 playEnrollGuidance:*(a1 + 56)];
  }

  if (v8)
  {
    v10 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager playEnrollGuidance:];
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_49;
  v12[3] = &unk_2796AD5A0;
  v13 = *(a1 + 48);
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v12);
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_8.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_49(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_51(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    [v2 pauseEnrollGuidancePlayer];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 24);
  v17 = 0;
  [v3 stopAtTime:&v17 error:0.0];
  v4 = v17;
  v5 = v4;
  if (v4)
  {
    v6 = sharedBluetoothSettingsLogComponent(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52;
  v15[3] = &unk_2796AD578;
  v16 = *(a1 + 40);
  [*(*(a1 + 32) + 48) setCompletionHandler:v15];
  v7 = *(*(a1 + 32) + 48);
  v14 = v5;
  [v7 startAtTime:&v14 error:0.0];
  v8 = v14;

  if (v8)
  {
    v10 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_41_cold_2();
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_56;
  v12[3] = &unk_2796AD5A0;
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v12);
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_9.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_56(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_57(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_58;
  v10[3] = &unk_2796AD578;
  v11 = *(a1 + 32);
  [*(*(a1 + 40) + 64) setCompletionHandler:v10];
  v2 = *(*(a1 + 40) + 64);
  v9 = 0;
  [v2 startAtTime:&v9 error:0.0];
  v3 = v9;
  v4 = v3;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_47_cold_1();
    }
  }

  v6 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_62;
  block[3] = &unk_2796AD5A0;
  v8 = *(a1 + 48);
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_10.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_62(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_63(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v16 = 0;
  [v2 stopAtTime:&v16 error:0.0];
  v3 = v16;
  v4 = v3;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_64;
  v14[3] = &unk_2796AD578;
  v15 = *(a1 + 40);
  [*(*(a1 + 32) + 56) setCompletionHandler:v14];
  v6 = *(*(a1 + 32) + 56);
  v13 = v4;
  [v6 startAtTime:&v13 error:0.0];
  v7 = v13;

  if (v7)
  {
    v9 = sharedBluetoothSettingsLogComponent(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_53_cold_2();
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_68;
  v11[3] = &unk_2796AD5A0;
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v11);
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_11.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_68(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)triggerSoundHapticForEarCaptureState:(int)state completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_group_create();
  v8 = sharedBluetoothSettingsLogComponent(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (state)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
    }

    soundHapticSerialQueue = self->_soundHapticSerialQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_70;
    v17[3] = &unk_2796AD5F0;
    v17[4] = self;
    v18 = v7;
    v19 = completionCopy;
    v11 = completionCopy;
    v12 = v7;
    dispatch_async(soundHapticSerialQueue, v17);

    v13 = v18;
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
    }

    v14 = self->_soundHapticSerialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke;
    block[3] = &unk_2796AD5F0;
    v21 = v7;
    selfCopy = self;
    v23 = completionCopy;
    v15 = completionCopy;
    v16 = v7;
    dispatch_async(v14, block);

    v13 = v21;
  }
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_2;
  v10[3] = &unk_2796AD578;
  v11 = *(a1 + 32);
  [*(*(a1 + 40) + 40) setCompletionHandler:v10];
  v2 = *(*(a1 + 40) + 40);
  v9 = 0;
  [v2 startAtTime:&v9 error:0.0];
  v3 = v9;
  v4 = v3;
  if (v3)
  {
    v5 = sharedBluetoothSettingsLogComponent(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_41_cold_2();
    }
  }

  v6 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_69;
  block[3] = &unk_2796AD5A0;
  v8 = *(a1 + 48);
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_9.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_69(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    [v2 pauseEnrollGuidancePlayer];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 24);
  v17 = 0;
  [v3 stopAtTime:&v17 error:0.0];
  v4 = v17;
  v5 = v4;
  if (v4)
  {
    v6 = sharedBluetoothSettingsLogComponent(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_71;
  v15[3] = &unk_2796AD578;
  v16 = *(a1 + 40);
  [*(*(a1 + 32) + 48) setCompletionHandler:v15];
  v7 = *(*(a1 + 32) + 48);
  v14 = v5;
  [v7 startAtTime:&v14 error:0.0];
  v8 = v14;

  if (v8)
  {
    v10 = sharedBluetoothSettingsLogComponent(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_41_cold_2();
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_72;
  v12[3] = &unk_2796AD5A0;
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v12);
}

void __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_71(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_9.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __97__HPSSpatialProfileSingleStepSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_72(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)readDynamicEnrollmentFeedback
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (CFPreferencesGetAppBooleanValue(@"DynamicEnrollmentFeedback", @"com.apple.BTServer", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  self->_dynamicEnrollmentFeedback = v4;
}

- (void)startEnrollLoop
{
  if (![(AVAudioPlayer *)self->_enrollLooplayer isPlaying])
  {
    soundHapticSerialQueue = self->_soundHapticSerialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HPSSpatialProfileSingleStepSoundHapticManager_startEnrollLoop__block_invoke;
    block[3] = &unk_2796AD618;
    block[4] = self;
    dispatch_async(soundHapticSerialQueue, block);
  }
}

- (void)stopEnrollLoop
{
  soundHapticSerialQueue = self->_soundHapticSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HPSSpatialProfileSingleStepSoundHapticManager_stopEnrollLoop__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(soundHapticSerialQueue, block);
}

uint64_t __63__HPSSpatialProfileSingleStepSoundHapticManager_stopEnrollLoop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) stop];
  v2 = *(*(a1 + 32) + 88);

  return [v2 setVolume:0.0];
}

- (void)updateEnrollLoopVolume:(double)volume
{
  soundHapticSerialQueue = self->_soundHapticSerialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HPSSpatialProfileSingleStepSoundHapticManager_updateEnrollLoopVolume___block_invoke;
  v4[3] = &unk_2796AD640;
  v4[4] = self;
  *&v4[5] = volume * 0.7 + 0.05;
  dispatch_async(soundHapticSerialQueue, v4);
}

uint64_t __72__HPSSpatialProfileSingleStepSoundHapticManager_updateEnrollLoopVolume___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + 88) setVolume:v1];
}

@end