@interface HPSSpatialProfileSoundHapticManager
- (BOOL)isEnrollGuidancePlaying;
- (HPSSpatialProfileSoundHapticManager)init;
- (id)initPlayerWithFileName:(id)name;
- (void)pauseEnrollGuidancePlayer;
- (void)pauseProgressPlayer;
- (void)playEnrollGuidance:(int)guidance;
- (void)playProgressPlayer:(int)player;
- (void)readDynamicEnrollmentFeedback;
- (void)setEnrollGuidancePitch:(float)pitch;
- (void)setProgressPlayerPitch:(float)pitch;
- (void)setupPlayers;
- (void)start;
- (void)stop;
- (void)triggerSoundHapticForEarCaptureState:(int)state completion:(id)completion;
- (void)triggerSoundHapticForEnrollmentState:(int)state completion:(id)completion;
@end

@implementation HPSSpatialProfileSoundHapticManager

- (HPSSpatialProfileSoundHapticManager)init
{
  v10.receiver = self;
  v10.super_class = HPSSpatialProfileSoundHapticManager;
  v2 = [(HPSSpatialProfileSoundHapticManager *)&v10 init];
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

    [(HPSSpatialProfileSoundHapticManager *)v2 readDynamicEnrollmentFeedback];
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

  [(HPSSpatialProfileSoundHapticManager *)self setupPlayers];
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

  [(CHHapticEngine *)self->_engine stopWithCompletionHandler:&__block_literal_global];
}

- (void)setupPlayers
{
  selfCopy = self;
  v3 = [(HPSSpatialProfileSoundHapticManager *)selfCopy initPlayerWithFileName:@"Spatial_Profile_Scan_Lock"];
  scanLockPlayer = selfCopy->_scanLockPlayer;
  selfCopy->_scanLockPlayer = v3;

  v5 = selfCopy;
  v6 = [(HPSSpatialProfileSoundHapticManager *)v5 initPlayerWithFileName:@"Spatial_Profile_Scan_In_Progress"];
  scanInProgressPlayer = v5->_scanInProgressPlayer;
  v5->_scanInProgressPlayer = v6;

  v8 = v5;
  v9 = [(HPSSpatialProfileSoundHapticManager *)v8 initPlayerWithFileName:@"Spatial_Profile_Scan_Orient_User"];
  enrollGuidancePlayer = v8->_enrollGuidancePlayer;
  v8->_enrollGuidancePlayer = v9;

  v11 = v8;
  v12 = [(HPSSpatialProfileSoundHapticManager *)v11 initPlayerWithFileName:@"Spatial_Profile_Scan_First_Tick"];
  scanFirstTickPlayer = v11->_scanFirstTickPlayer;
  v11->_scanFirstTickPlayer = v12;

  v14 = v11;
  v15 = [(HPSSpatialProfileSoundHapticManager *)v14 initPlayerWithFileName:@"Spatial_Profile_Scan_Second_Tick"];
  scanSecondTickPlayer = v14->_scanSecondTickPlayer;
  v14->_scanSecondTickPlayer = v15;

  v17 = v14;
  v18 = [(HPSSpatialProfileSoundHapticManager *)v17 initPlayerWithFileName:@"Spatial_Profile_Scan_Completed"];
  scanCompletedPlayer = v17->_scanCompletedPlayer;
  v17->_scanCompletedPlayer = v18;

  v20 = v17;
  v21 = [(HPSSpatialProfileSoundHapticManager *)v20 initPlayerWithFileName:@"Spatial_Profile_Scan_Error"];
  scanErrorPlayer = v20->_scanErrorPlayer;
  v20->_scanErrorPlayer = v21;

  v23 = v20;
  v24 = [(HPSSpatialProfileSoundHapticManager *)v23 initPlayerWithFileName:@"Spatial_Profile_Enrollment_Completed"];
  enrollmentCompletedPlayer = v23->_enrollmentCompletedPlayer;
  v23->_enrollmentCompletedPlayer = v24;

  MEMORY[0x2821F96F8](v24, enrollmentCompletedPlayer);
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

- (id)initPlayerWithFileName:(id)name
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

  if (state > 10)
  {
    if (state <= 16)
    {
      if (state != 11)
      {
        if (state != 12)
        {
          if (state == 16)
          {
            v13 = sharedBluetoothSettingsLogComponent(v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Enrollment Completed", buf, 2u);
            }

            soundHapticSerialQueue = self->_soundHapticSerialQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_47;
            block[3] = &unk_2796AD5F0;
            v30 = v7;
            selfCopy = self;
            v32 = completionCopy;
            dispatch_async(soundHapticSerialQueue, block);

            v15 = v30;
LABEL_29:

            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_17:
        v16 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Completed", buf, 2u);
        }

        v17 = self->_soundHapticSerialQueue;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_41;
        v33[3] = &unk_2796AD5F0;
        v33[4] = self;
        v34 = v7;
        v35 = completionCopy;
        dispatch_async(v17, v33);

        v15 = v34;
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if ((state - 17) < 3)
    {
      v18 = sharedBluetoothSettingsLogComponent(v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [HPSSpatialProfileSoundHapticManager triggerSoundHapticForEnrollmentState:v18 completion:?];
      }

      v19 = self->_soundHapticSerialQueue;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_53;
      v26[3] = &unk_2796AD5F0;
      v26[4] = self;
      v27 = v7;
      v28 = completionCopy;
      dispatch_async(v19, v26);

      v15 = v27;
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  if (state > 3)
  {
    switch(state)
    {
      case 4:
        goto LABEL_17;
      case 7:
LABEL_26:
        v20 = sharedBluetoothSettingsLogComponent(v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Scan Start", buf, 2u);
        }

        v21 = self->_soundHapticSerialQueue;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke;
        v36[3] = &unk_2796AD5C8;
        v37 = v7;
        selfCopy2 = self;
        stateCopy = state;
        v39 = completionCopy;
        dispatch_async(v21, v36);

        v15 = v37;
        goto LABEL_29;
      case 8:
        goto LABEL_17;
    }

LABEL_38:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_30;
  }

  if (state != 2)
  {
    if (state == 3)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  scanInProgressPlayer = self->_scanInProgressPlayer;
  v42 = v10;
  [(CHHapticAdvancedPatternPlayer *)scanInProgressPlayer stopAtTime:&v42 error:0.0];
  v23 = v42;

  if (v23)
  {
    v25 = sharedBluetoothSettingsLogComponent(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [HPSSpatialProfileSoundHapticManager pauseEnrollGuidancePlayer];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v10 = v23;
LABEL_30:
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2;
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
  if (v9[80] == 1)
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
  v12[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_39;
  v12[3] = &unk_2796AD5A0;
  v13 = *(a1 + 48);
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v12);
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_8.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_39(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_41(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
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
  v15[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_42;
  v15[3] = &unk_2796AD578;
  v16 = *(a1 + 40);
  [*(*(a1 + 32) + 56) setCompletionHandler:v15];
  v7 = *(*(a1 + 32) + 56);
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
  v12[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_46;
  v12[3] = &unk_2796AD5A0;
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v12);
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_42(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_9.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_46(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_47(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_48;
  v10[3] = &unk_2796AD578;
  v11 = *(a1 + 32);
  [*(*(a1 + 40) + 72) setCompletionHandler:v10];
  v2 = *(*(a1 + 40) + 72);
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
  block[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52;
  block[3] = &unk_2796AD5A0;
  v8 = *(a1 + 48);
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_2_48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_10.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_52(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_53(uint64_t a1)
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
  v14[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_54;
  v14[3] = &unk_2796AD578;
  v15 = *(a1 + 40);
  [*(*(a1 + 32) + 64) setCompletionHandler:v14];
  v6 = *(*(a1 + 32) + 64);
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
  v11[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_58;
  v11[3] = &unk_2796AD5A0;
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v11);
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_11.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEnrollmentState_completion___block_invoke_58(uint64_t a1)
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
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8030] error:0];

  v8 = dispatch_group_create();
  soundHapticSerialQueue = self->_soundHapticSerialQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke;
  v12[3] = &unk_2796AD5C8;
  stateCopy = state;
  v13 = v8;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  dispatch_async(soundHapticSerialQueue, v12);
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  if (v3 == 1)
  {
    v14 = sharedBluetoothSettingsLogComponent(a1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Ear Progress Second", buf, 2u);
    }

    dispatch_group_enter(*(a1 + 32));
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_64;
    v21[3] = &unk_2796AD578;
    v5 = &v22;
    v22 = *(a1 + 32);
    [*(*(a1 + 40) + 48) setCompletionHandler:v21];
    v15 = *(*(a1 + 40) + 48);
    v20 = 0;
    [v15 startAtTime:&v20 error:0.0];
    v16 = v20;
    v8 = v16;
    if (v16)
    {
      v17 = sharedBluetoothSettingsLogComponent(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_cold_1();
      }
    }

    v10 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_68;
    v18[3] = &unk_2796AD5A0;
    v11 = &v19;
    v19 = *(a1 + 48);
    v12 = MEMORY[0x277D85CD0];
    v13 = v18;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = sharedBluetoothSettingsLogComponent(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Sound & Haptics: Ear Progress First", buf, 2u);
    }

    dispatch_group_enter(*(a1 + 32));
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_59;
    v26[3] = &unk_2796AD578;
    v5 = &v27;
    v27 = *(a1 + 32);
    [*(*(a1 + 40) + 40) setCompletionHandler:v26];
    v6 = *(*(a1 + 40) + 40);
    v25 = 0;
    [v6 startAtTime:&v25 error:0.0];
    v7 = v25;
    v8 = v7;
    if (v7)
    {
      v9 = sharedBluetoothSettingsLogComponent(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_cold_2();
      }
    }

    v10 = *(a1 + 32);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_63;
    v23[3] = &unk_2796AD5A0;
    v11 = &v24;
    v24 = *(a1 + 48);
    v12 = MEMORY[0x277D85CD0];
    v13 = v23;
  }

  dispatch_group_notify(v10, v12, v13);
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_59(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_12.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_63(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_SpatialProfile_13.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __87__HPSSpatialProfileSoundHapticManager_triggerSoundHapticForEarCaptureState_completion___block_invoke_68(uint64_t a1)
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

@end