@interface CMWorkoutManagerInternal
- (BOOL)_isAutoPauseAllowedForWorkoutType:(int64_t)type;
- (BOOL)_isReminderAllowedForType:(int64_t)type;
- (CMWorkoutManagerInternal)init;
- (void)_beginWorkoutSession:(id)session withWorkout:(id)workout enableWorkoutChangeDetection:(BOOL)detection;
- (void)_checkWorkout:(id)workout;
- (void)_endWorkoutSession:(id)session;
- (void)_getPromptsNeededForWorkoutType:(int64_t)type handler:(id)handler;
- (void)_handleDaemonEvent:(id)event;
- (void)_handleDaemonResponse:(id)response;
- (void)_muteAutoPauseForWorkoutType:(int64_t)type mute:(BOOL)mute;
- (void)_muteReminderType:(int64_t)type mute:(BOOL)mute;
- (void)_pauseWorkout:(id)workout;
- (void)_registerForWorkoutEvents;
- (void)_resumeWorkout:(id)workout;
- (void)_setCurrentWorkoutType:(id)type isManualTransition:(BOOL)transition;
- (void)_setReminderMuteSettingsForType:(int64_t)type mute:(BOOL)mute;
- (void)_setSuggestedStopTimeout:(double)timeout;
- (void)_setWorkout:(id)workout;
- (void)_snapshotWithCompletion:(id)completion;
- (void)_startWorkout:(id)workout;
- (void)_stopWorkout:(id)workout;
- (void)_teardown;
- (void)_triggerWorkoutLocationUpdateForTesting:(int64_t)testing;
- (void)_unregisterForWorkoutEvents;
- (void)_userDismissedWorkoutAlert;
- (void)dealloc;
@end

@implementation CMWorkoutManagerInternal

- (CMWorkoutManagerInternal)init
{
  v5.receiver = self;
  v5.super_class = CMWorkoutManagerInternal;
  v2 = [(CMWorkoutManagerInternal *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMWorkoutManager", v3);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMWorkoutManagerInternal;
  [(CMWorkoutManagerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__unregisterForWorkoutEvents(self, a2, v2);
  sub_19B428B50(&__p, "kCLConnectionMessageWorkoutEvent");
  CLConnectionClient::setHandlerForMessage();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  self->fSessionState = 0;
  objc_msgSend__setWorkout_(self, v4, 0);

  self->fWorkoutOverview = 0;
  self->fEnableWorkoutChangeDetection = 0;
  if (self->fLocationdConnection)
  {
    v5 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v5, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;

  self->fMuteSettings = 0;
  self->fAutoPauseMuteSettings = 0;
}

- (void)_startWorkout:(id)workout
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v8 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v9 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      workoutCopy = workout;
      v34 = 2112;
      v35 = v8;
      v36 = 1024;
      v37 = getpid();
      v38 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Workout, START, %@, %@, %d, %p", buf, 0x26u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v11 = qword_1EAFE27B8;
      v24 = 138413058;
      workoutCopy2 = workout;
      v26 = 2112;
      v27 = v8;
      v28 = 1024;
      v29 = getpid();
      v30 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 0, "Workout, START, %@, %@, %d, %p", &v24, 38);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _startWorkout:]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = [CMWorkoutOverview alloc];
  v17 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v15, v16);
  workoutCopy3 = workout;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, &workoutCopy3, 1);
  v21 = objc_msgSend_initWithOverviewId_workouts_(v14, v20, v17, v19);
  objc_msgSend__beginWorkoutSession_withWorkout_enableWorkoutChangeDetection_(self, v22, v21, workout, 0);
}

- (void)_stopWorkout:(id)workout
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      workoutCopy = workout;
      v25 = 2112;
      v26 = v9;
      v27 = 1024;
      v28 = getpid();
      v29 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Workout, STOP, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v12 = qword_1EAFE27B8;
      v15 = 138413058;
      workoutCopy2 = workout;
      v17 = 2112;
      v18 = v9;
      v19 = 1024;
      v20 = getpid();
      v21 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 0, "Workout, STOP, %@, %@, %d, %p", &v15, 38);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _stopWorkout:]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  objc_msgSend__endWorkoutSession_(self, v8, workout);
}

- (void)_setSuggestedStopTimeout:(double)timeout
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v10 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v11 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138412802;
      *&buf[1] = v10;
      v25 = 1024;
      v26 = getpid();
      v27 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "Workout, Registering suggested stop timeout, %@, %d, %p", buf, 0x1Cu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v13 = qword_1EAFE27B8;
      *v19 = 138412802;
      *&v19[4] = v10;
      v20 = 1024;
      v21 = getpid();
      v22 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 0, "Workout, Registering suggested stop timeout, %@, %d, %p", v19, 28);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _setSuggestedStopTimeout:]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v17 = @"CMWorkoutTimeout";
    v18 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v8, v9, timeout);
    *v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v18, &v17, 1);
    sub_19B686B90();
  }
}

- (void)_userDismissedWorkoutAlert
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v4, v3);
  if (ExecutablePathFromPid)
  {
    v6 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v7 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138412802;
      *&buf[1] = v6;
      v19 = 1024;
      v20 = getpid();
      v21 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Workout, User dismissed workout alert, %@, %d, %p", buf, 0x1Cu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v9 = qword_1EAFE27B8;
      v12 = 138412802;
      v13 = v6;
      v14 = 1024;
      v15 = getpid();
      v16 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 0, "Workout, User dismissed workout alert, %@, %d, %p", &v12, 28);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _userDismissedWorkoutAlert]", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    sub_19B686CD4();
  }
}

- (void)_triggerWorkoutLocationUpdateForTesting:(int64_t)testing
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 134218754;
      *&buf[1] = testing;
      v27 = 2112;
      v28 = v9;
      v29 = 1024;
      v30 = getpid();
      v31 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Workout, SET LOCATION FOR TESTING, %zd, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v12 = qword_1EAFE27B8;
      v18 = 134218754;
      testingCopy = testing;
      v20 = 2112;
      v21 = v9;
      v22 = 1024;
      v23 = getpid();
      v24 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 0, "Workout, SET LOCATION FOR TESTING, %zd, %@, %d, %p", &v18, 38);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _triggerWorkoutLocationUpdateForTesting:]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v16 = @"CMWorkoutTriggerWorkoutLocationEventForTesting";
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, testing);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, &v17, &v16, 1);
    operator new();
  }
}

- (void)_handleDaemonResponse:(id)response
{
  *&v38[409] = *MEMORY[0x1E69E9840];
  if (self->fDelegate)
  {
    if (response)
    {
      if (!objc_msgSend_objectForKeyedSubscript_(response, a2, @"CMErrorMessage"))
      {
        return;
      }

      v6 = MEMORY[0x1E696ABC0];
      v7 = objc_msgSend_objectForKeyedSubscript_(response, v5, @"CMErrorMessage");
      v10 = objc_msgSend_integerValue(v7, v8, v9);
      v12 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v11, @"CMErrorDomain", v10, 0);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v13 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_msgSend_objectForKeyedSubscript_(response, v14, @"CMErrorMessage");
        v18 = objc_msgSend_intValue(v15, v16, v17);
        fWorkout = self->fWorkout;
        *buf = 67109378;
        v38[0] = v18;
        LOWORD(v38[1]) = 2112;
        *(&v38[1] + 2) = fWorkout;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Workout, Error, %d, %@", buf, 0x12u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v22 = qword_1EAFE27B8;
      v23 = objc_msgSend_objectForKeyedSubscript_(response, v21, @"CMErrorMessage");
      v26 = objc_msgSend_intValue(v23, v24, v25);
      v27 = self->fWorkout;
      *v36 = 67109378;
      *&v36[4] = v26;
      *&v36[8] = 2112;
      *&v36[10] = v27;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v22, 16, "Workout, Error, %d, %@", v36, 18, *v36, *&v36[16]);
    }

    else
    {
      v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v29 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
      {
        v30 = self->fWorkout;
        *buf = 138412290;
        *v38 = v30;
        _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_FAULT, "Workout, nil event dictionary, %@", buf, 0xCu);
      }

      v31 = sub_19B420058();
      if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
      {
        goto LABEL_26;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v32 = self->fWorkout;
      *v36 = 138412290;
      *&v36[4] = v32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 17, "Workout, nil event dictionary, %@", v36, 12, *v36, *&v36[16]);
    }

    v33 = v28;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonResponse:]", "CoreLocation: %s\n", v28);
    if (v33 != buf)
    {
      free(v33);
    }

LABEL_26:
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_workoutManager_didFailWorkout_withError_(self->fDelegate, v34, self->fSender, self->fWorkout, v12);
    }

    else if (objc_opt_respondsToSelector())
    {
      objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v35, self->fSender, self->fWorkout, v12);
    }
  }
}

- (void)_handleDaemonEvent:(id)event
{
  v310 = *MEMORY[0x1E69E9840];
  if (!self->fDelegate)
  {
    return;
  }

  if (!event)
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v33 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
    {
      fWorkout = self->fWorkout;
      *buf = 138412290;
      *v307 = fWorkout;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "Workout, nil event dictionary, %@", buf, 0xCu);
    }

    v35 = sub_19B420058();
    if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
    {
      goto LABEL_55;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v36 = self->fWorkout;
    *v304 = 138412290;
    *&v304[4] = v36;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 17, "Workout, nil event dictionary, %@", v304, 12, *v304, *&v304[8]);
    goto LABEL_53;
  }

  if (objc_msgSend_objectForKeyedSubscript_(event, a2, @"CMErrorMessage"))
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = objc_msgSend_objectForKeyedSubscript_(event, v5, @"CMErrorMessage");
    v10 = objc_msgSend_integerValue(v7, v8, v9);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v11, @"CMErrorDomain", v10, 0);
    v14 = objc_msgSend_objectForKeyedSubscript_(event, v13, @"CMWorkoutAttributes");
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v15 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_msgSend_objectForKeyedSubscript_(event, v16, @"CMErrorMessage");
      *buf = 67109378;
      *v307 = objc_msgSend_intValue(v17, v18, v19);
      *&v307[4] = 2112;
      *&v307[6] = v14;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Workout, ERROR, %d, %@", buf, 0x12u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v22 = qword_1EAFE27B8;
      v23 = objc_msgSend_objectForKeyedSubscript_(event, v21, @"CMErrorMessage");
      *v304 = 67109378;
      *&v304[4] = objc_msgSend_intValue(v23, v24, v25);
      *&v304[8] = 2112;
      *&v304[10] = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v22, 16, "Workout, ERROR, %d, %@", v304, 18);
      v27 = v26;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    v29 = objc_opt_respondsToSelector();
    fDelegate = self->fDelegate;
    if (v29)
    {
      fSender = self->fSender;
      v32 = v14;
LABEL_57:
      objc_msgSend_workoutManager_didFailWorkout_withError_(fDelegate, v28, fSender, v32, v12);
      return;
    }

    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v53, self->fSender, v14, v12);
    }

    return;
  }

  if (objc_msgSend_objectForKeyedSubscript_(event, v5, @"CMReturnCode") && objc_msgSend_objectForKeyedSubscript_(event, v38, @"CMWorkoutAttributes"))
  {
    v39 = objc_msgSend_objectForKeyedSubscript_(event, v38, @"CMReturnCode");
    v42 = objc_msgSend_integerValue(v39, v40, v41);
    v44 = objc_msgSend_objectForKeyedSubscript_(event, v43, @"CMWorkoutAttributes");
    v46 = objc_msgSend_objectForKeyedSubscript_(event, v45, @"CMWorkoutOverviewData");
    v48 = v46;
    switch(v42)
    {
      case 2uLL:
        if (!objc_msgSend_objectForKeyedSubscript_(event, v47, @"CMWorkoutEventDate"))
        {
          goto LABEL_171;
        }

        v135 = objc_msgSend_type(v44, v47, v134);
        isAutoPauseAllowedForWorkoutType = objc_msgSend__isAutoPauseAllowedForWorkoutType_(self, v136, v135);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v138 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          v140 = objc_msgSend_objectForKeyedSubscript_(event, v139, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v140, v141, v142);
          *buf = 134218498;
          *v307 = v143;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          v308 = 1024;
          v309 = isAutoPauseAllowedForWorkoutType;
          _os_log_impl(&dword_19B41C000, v138, OS_LOG_TYPE_DEFAULT, "Workout, WILL PAUSE at %f, %@, allowed %d", buf, 0x1Cu);
        }

        v144 = sub_19B420058();
        if (*(v144 + 160) > 1 || *(v144 + 164) > 1 || *(v144 + 168) > 1 || *(v144 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v146 = qword_1EAFE27B8;
          v147 = objc_msgSend_objectForKeyedSubscript_(event, v145, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v147, v148, v149);
          *v304 = 134218498;
          *&v304[4] = v150;
          *&v304[12] = 2112;
          *&v304[14] = v44;
          *&v304[22] = 1024;
          LODWORD(v305) = isAutoPauseAllowedForWorkoutType;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v146, 0, "Workout, WILL PAUSE at %f, %@, allowed %d", v304, 28);
          v152 = v151;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v151);
          if (v152 != buf)
          {
            free(v152);
          }
        }

        if (isAutoPauseAllowedForWorkoutType)
        {
          v153 = objc_opt_respondsToSelector();
          v155 = self->fDelegate;
          if (v153)
          {
            v156 = self->fSender;
            v157 = objc_msgSend_objectForKeyedSubscript_(event, v154, @"CMWorkoutEventDate");
            objc_msgSend_workoutManager_willPauseWorkout_atDate_(v155, v158, v156, v44, v157);
          }

          else if (objc_opt_respondsToSelector())
          {
            v301 = self->fDelegate;
            v300 = self->fSender;
            v302 = objc_msgSend_objectForKeyedSubscript_(event, v299, @"CMWorkoutEventDate");
            objc_msgSend_workoutManagerWillPauseWorkout_workout_pauseDate_(v301, v303, v300, v44, v302);
          }
        }

        break;
      case 3uLL:
        if (!objc_msgSend_objectForKeyedSubscript_(event, v47, @"CMWorkoutEventDate"))
        {
          goto LABEL_171;
        }

        v96 = objc_msgSend_type(v44, v47, v95);
        v98 = objc_msgSend__isAutoPauseAllowedForWorkoutType_(self, v97, v96);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v99 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          v101 = objc_msgSend_objectForKeyedSubscript_(event, v100, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v101, v102, v103);
          *buf = 134218498;
          *v307 = v104;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          v308 = 1024;
          v309 = v98;
          _os_log_impl(&dword_19B41C000, v99, OS_LOG_TYPE_DEFAULT, "Workout, WILL RESUME at %f, %@, allowed %d", buf, 0x1Cu);
        }

        v105 = sub_19B420058();
        if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || *(v105 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v107 = qword_1EAFE27B8;
          v108 = objc_msgSend_objectForKeyedSubscript_(event, v106, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v108, v109, v110);
          *v304 = 134218498;
          *&v304[4] = v111;
          *&v304[12] = 2112;
          *&v304[14] = v44;
          *&v304[22] = 1024;
          LODWORD(v305) = v98;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v107, 0, "Workout, WILL RESUME at %f, %@, allowed %d", v304, 28);
          v113 = v112;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v112);
          if (v113 != buf)
          {
            free(v113);
          }
        }

        if (v98)
        {
          v114 = objc_opt_respondsToSelector();
          v116 = self->fDelegate;
          if (v114)
          {
            v117 = self->fSender;
            v118 = objc_msgSend_objectForKeyedSubscript_(event, v115, @"CMWorkoutEventDate");
            objc_msgSend_workoutManager_willResumeWorkout_atDate_(v116, v119, v117, v44, v118);
          }

          else if (objc_opt_respondsToSelector())
          {
            v296 = self->fDelegate;
            v295 = self->fSender;
            v297 = objc_msgSend_objectForKeyedSubscript_(event, v294, @"CMWorkoutEventDate");
            objc_msgSend_workoutManagerWillResumeWorkout_workout_resumeDate_(v296, v298, v295, v44, v297);
          }
        }

        break;
      case 4uLL:
        isReminderAllowedForType = objc_msgSend__isReminderAllowedForType_(self, v47, 2);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v181 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          v184 = objc_msgSend_endDate(v44, v182, v183);
          objc_msgSend_timeIntervalSinceReferenceDate(v184, v185, v186);
          *buf = 134218498;
          *v307 = v187;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          v308 = 1024;
          v309 = isReminderAllowedForType;
          _os_log_impl(&dword_19B41C000, v181, OS_LOG_TYPE_DEFAULT, "Workout, SUGGESTED STOP at %f, %@, allowed %d", buf, 0x1Cu);
        }

        v188 = sub_19B420058();
        if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v191 = qword_1EAFE27B8;
          v192 = objc_msgSend_endDate(v44, v189, v190);
          objc_msgSend_timeIntervalSinceReferenceDate(v192, v193, v194);
          *v304 = 134218498;
          *&v304[4] = v195;
          *&v304[12] = 2112;
          *&v304[14] = v44;
          *&v304[22] = 1024;
          LODWORD(v305) = isReminderAllowedForType;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v191, 0, "Workout, SUGGESTED STOP at %f, %@, allowed %d", v304, 28);
          v197 = v196;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v196);
          if (v197 != buf)
          {
            free(v197);
          }
        }

        if (isReminderAllowedForType)
        {
          v198 = objc_opt_respondsToSelector();
          v201 = self->fDelegate;
          if (v198)
          {
            v202 = self->fSender;
            v203 = objc_msgSend_endDate(v44, v199, v200);
            objc_msgSend_workoutManager_suggestedStopWorkout_atDate_(v201, v204, v202, v44, v203);
          }

          else if (objc_opt_respondsToSelector())
          {
            v291 = self->fDelegate;
            v290 = self->fSender;
            v292 = objc_msgSend_endDate(v44, v288, v289);
            objc_msgSend_workoutManagerSuggestedStop_workout_stopDate_(v291, v293, v290, v44, v292);
          }
        }

        break;
      case 6uLL:
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v120 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          v122 = objc_msgSend_objectForKeyedSubscript_(event, v121, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v122, v123, v124);
          *buf = 134218242;
          *v307 = v125;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          _os_log_impl(&dword_19B41C000, v120, OS_LOG_TYPE_DEFAULT, "Workout, PREDICTION START DID MUTE at %f, %@", buf, 0x16u);
        }

        v126 = sub_19B420058();
        if (*(v126 + 160) > 1 || *(v126 + 164) > 1 || *(v126 + 168) > 1 || *(v126 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v128 = qword_1EAFE27B8;
          v129 = objc_msgSend_objectForKeyedSubscript_(event, v127, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v129, v130, v131);
          *v304 = 134218242;
          *&v304[4] = v132;
          *&v304[12] = 2112;
          *&v304[14] = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v128, 0, "Workout, PREDICTION START DID MUTE at %f, %@", v304, 22, *v304, *&v304[8]);
          goto LABEL_256;
        }

        break;
      case 7uLL:
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v78 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          v80 = objc_msgSend_objectForKeyedSubscript_(event, v79, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v80, v81, v82);
          *buf = 134218242;
          *v307 = v83;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          _os_log_impl(&dword_19B41C000, v78, OS_LOG_TYPE_DEFAULT, "Workout, LOCATION DID UPDATE at %f, %@", buf, 0x16u);
        }

        v84 = sub_19B420058();
        if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v87 = qword_1EAFE27B8;
          v88 = objc_msgSend_objectForKeyedSubscript_(event, v86, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v88, v89, v90);
          *v304 = 134218242;
          *&v304[4] = v91;
          *&v304[12] = 2112;
          *&v304[14] = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v87, 0, "Workout, LOCATION DID UPDATE at %f, %@", v304, 22);
          v93 = v92;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v92);
          if (v93 != buf)
          {
            free(v93);
          }
        }

        objc_msgSend__setWorkout_(self, v85, v44);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_workoutManager_workoutLocationEventUpdate_(self->fDelegate, v94, self->fSender, v44);
        }

        break;
      case 8uLL:
      case 0xAuLL:
      case 0xBuLL:
        v49 = objc_msgSend__isReminderAllowedForType_(self, v47, 0);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v50 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          *v307 = v42;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          v308 = 1024;
          v309 = v49;
          _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEFAULT, "Workout, PREDICTION, event %lu, %@, allowed %d", buf, 0x1Cu);
        }

        v51 = sub_19B420058();
        if (*(v51 + 160) <= 1 && *(v51 + 164) <= 1 && *(v51 + 168) <= 1 && !*(v51 + 152))
        {
          goto LABEL_227;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        *v304 = 134218498;
        *&v304[4] = v42;
        *&v304[12] = 2112;
        *&v304[14] = v44;
        *&v304[22] = 1024;
        LODWORD(v305) = v49;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, PREDICTION, event %lu, %@, allowed %d", v304, 28, *v304, *&v304[8], v305);
        goto LABEL_225;
      case 9uLL:
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v205 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v307 = v44;
          _os_log_impl(&dword_19B41C000, v205, OS_LOG_TYPE_DEFAULT, "Workout, (internal only) PREDICTION UPDATE, %@", buf, 0xCu);
        }

        v206 = sub_19B420058();
        if (*(v206 + 160) > 1 || *(v206 + 164) > 1 || *(v206 + 168) > 1 || *(v206 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          *v304 = 138412290;
          *&v304[4] = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, (internal only) PREDICTION UPDATE, %@", v304, 12, *v304, *&v304[8]);
LABEL_256:
          v207 = v133;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v133);
          if (v207 != buf)
          {
            free(v207);
          }
        }

        break;
      case 0xCuLL:
        v49 = objc_msgSend__isReminderAllowedForType_(self, v47, 2);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v176 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          *v307 = 12;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          v308 = 1024;
          v309 = v49;
          _os_log_impl(&dword_19B41C000, v176, OS_LOG_TYPE_DEFAULT, "Workout, STOP RETRACTION, event %lu, %@, allowed %d", buf, 0x1Cu);
        }

        v177 = sub_19B420058();
        if (*(v177 + 160) > 1 || *(v177 + 164) > 1 || *(v177 + 168) > 1 || *(v177 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          *v304 = 134218498;
          *&v304[4] = 12;
          *&v304[12] = 2112;
          *&v304[14] = v44;
          *&v304[22] = 1024;
          LODWORD(v305) = v49;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, STOP RETRACTION, event %lu, %@, allowed %d", v304, 28, *v304, *&v304[8], v305);
LABEL_225:
          v178 = v52;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v52);
          if (v178 != buf)
          {
            free(v178);
          }
        }

LABEL_227:
        if (v49 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          objc_msgSend_workoutManager_issuedPrediction_(self->fDelegate, v179, self->fSender, v44);
        }

        break;
      case 0xDuLL:
        if (v46 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v230 = qword_1EAFE27B8;
          if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v307 = v44;
            _os_log_impl(&dword_19B41C000, v230, OS_LOG_TYPE_DEFAULT, "Workout, SESSION DID BEGIN, %@", buf, 0xCu);
          }

          v231 = sub_19B420058();
          if (*(v231 + 160) > 1 || *(v231 + 164) > 1 || *(v231 + 168) > 1 || *(v231 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2780 != -1)
            {
              dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
            }

            *v304 = 138412290;
            *&v304[4] = v44;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, SESSION DID BEGIN, %@", v304, 12);
            v234 = v233;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v233);
            if (v234 != buf)
            {
              free(v234);
            }
          }

          objc_msgSend_workoutManager_didBeginWorkoutSessionWithWorkout_withOverview_(self->fDelegate, v232, self->fSender, v44, v48);
        }

        else if (objc_opt_respondsToSelector())
        {
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v258 = qword_1EAFE27B8;
          if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
          {
            started = objc_msgSend_startDate(v44, v259, v260);
            objc_msgSend_timeIntervalSinceReferenceDate(started, v262, v263);
            *buf = 134218242;
            *v307 = v264;
            *&v307[8] = 2112;
            *&v307[10] = v44;
            _os_log_impl(&dword_19B41C000, v258, OS_LOG_TYPE_DEFAULT, "Workout, DID START at %f, %@", buf, 0x16u);
          }

          v265 = sub_19B420058();
          if (*(v265 + 160) > 1 || *(v265 + 164) > 1 || *(v265 + 168) > 1 || *(v265 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2780 != -1)
            {
              dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
            }

            v270 = qword_1EAFE27B8;
            v271 = objc_msgSend_startDate(v44, v268, v269);
            objc_msgSend_timeIntervalSinceReferenceDate(v271, v272, v273);
            *v304 = 134218242;
            *&v304[4] = v274;
            *&v304[12] = 2112;
            *&v304[14] = v44;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v270, 0, "Workout, DID START at %f, %@", v304, 22);
            v276 = v275;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v275);
            if (v276 != buf)
            {
              free(v276);
            }
          }

          v278 = self->fDelegate;
          v277 = self->fSender;
          v279 = objc_msgSend_startDate(v44, v266, v267);
          objc_msgSend_workoutManager_didStartWorkout_atDate_(v278, v280, v277, v44, v279);
        }

        else if (objc_opt_respondsToSelector())
        {
          v287 = self->fDelegate;
          v286 = self->fSender;
          objc_msgSend_objectForKeyedSubscript_(event, v285, @"CMWorkoutEventDate");

          MEMORY[0x1EEE66B58](v287, sel_workoutManagerDidStartWorkout_workout_startDate_, v286);
        }

        break;
      case 0xEuLL:
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v72 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v307 = v44;
          _os_log_impl(&dword_19B41C000, v72, OS_LOG_TYPE_DEFAULT, "Workout, SET CURRENT TYPE, %@", buf, 0xCu);
        }

        v73 = sub_19B420058();
        if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          *v304 = 138412290;
          *&v304[4] = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, SET CURRENT TYPE, %@", v304, 12);
          v76 = v75;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v75);
          if (v76 != buf)
          {
            free(v76);
          }
        }

        if (v48)
        {
          objc_msgSend__setWorkout_(self, v74, v44);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_workoutManager_didSetCurrentWorkoutType_withOverview_(self->fDelegate, v77, self->fSender, v44, v48);
          }
        }

        break;
      case 0xFuLL:
        if (v46 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v67 = qword_1EAFE27B8;
          if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v307 = v44;
            _os_log_impl(&dword_19B41C000, v67, OS_LOG_TYPE_DEFAULT, "Workout, SESSION DID END, %@", buf, 0xCu);
          }

          v68 = sub_19B420058();
          if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2780 != -1)
            {
              dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
            }

            *v304 = 138412290;
            *&v304[4] = v44;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, SESSION DID END, %@", v304, 12);
            v71 = v70;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v70);
            if (v71 != buf)
            {
              free(v71);
            }
          }

          objc_msgSend_workoutManager_didEndWorkoutSessionWithWorkout_withOverview_(self->fDelegate, v69, self->fSender, v44, v48);
        }

        else if (objc_opt_respondsToSelector())
        {
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v235 = qword_1EAFE27B8;
          if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
          {
            v238 = objc_msgSend_endDate(v44, v236, v237);
            objc_msgSend_timeIntervalSinceReferenceDate(v238, v239, v240);
            *buf = 134218242;
            *v307 = v241;
            *&v307[8] = 2112;
            *&v307[10] = v44;
            _os_log_impl(&dword_19B41C000, v235, OS_LOG_TYPE_DEFAULT, "Workout, DID STOP at %f, %@", buf, 0x16u);
          }

          v242 = sub_19B420058();
          if (*(v242 + 160) > 1 || *(v242 + 164) > 1 || *(v242 + 168) > 1 || *(v242 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2780 != -1)
            {
              dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
            }

            v247 = qword_1EAFE27B8;
            v248 = objc_msgSend_endDate(v44, v245, v246);
            objc_msgSend_timeIntervalSinceReferenceDate(v248, v249, v250);
            *v304 = 134218242;
            *&v304[4] = v251;
            *&v304[12] = 2112;
            *&v304[14] = v44;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v247, 0, "Workout, DID STOP at %f, %@", v304, 22);
            v253 = v252;
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v252);
            if (v253 != buf)
            {
              free(v253);
            }
          }

          v255 = self->fDelegate;
          v254 = self->fSender;
          v256 = objc_msgSend_endDate(v44, v243, v244);
          objc_msgSend_workoutManager_didStopWorkout_atDate_(v255, v257, v254, v44, v256);
        }

        else if (objc_opt_respondsToSelector())
        {
          v284 = self->fDelegate;
          v283 = self->fSender;
          objc_msgSend_objectForKeyedSubscript_(event, v282, @"CMWorkoutEventDate");

          MEMORY[0x1EEE66B58](v284, sel_workoutManagerDidStopWorkout_workout_stopDate_, v283);
        }

        break;
      case 0x10uLL:
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v61 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v307 = v44;
          _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_DEFAULT, "Workout, PAUSED, %@", buf, 0xCu);
        }

        v62 = sub_19B420058();
        if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          *v304 = 138412290;
          *&v304[4] = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, PAUSED, %@", v304, 12);
          v65 = v64;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v64);
          if (v65 != buf)
          {
            free(v65);
          }
        }

        if (v48)
        {
          objc_msgSend__setWorkout_(self, v63, v44);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_workoutManager_didPauseWorkout_withOverview_(self->fDelegate, v66, self->fSender, v44, v48);
          }
        }

        break;
      case 0x11uLL:
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v165 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v307 = v44;
          _os_log_impl(&dword_19B41C000, v165, OS_LOG_TYPE_DEFAULT, "Workout, RESUMED, %@", buf, 0xCu);
        }

        v166 = sub_19B420058();
        if (*(v166 + 160) > 1 || *(v166 + 164) > 1 || *(v166 + 168) > 1 || *(v166 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          *v304 = 138412290;
          *&v304[4] = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, RESUMED, %@", v304, 12);
          v169 = v168;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v168);
          if (v169 != buf)
          {
            free(v169);
          }
        }

        if (v48)
        {
          objc_msgSend__setWorkout_(self, v167, v44);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_workoutManager_didResumeWorkout_withOverview_(self->fDelegate, v170, self->fSender, v44, v48);
          }
        }

        break;
      case 0x12uLL:
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v171 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v307 = v44;
          _os_log_impl(&dword_19B41C000, v171, OS_LOG_TYPE_DEFAULT, "Workout, DETECTED CHANGE, %@", buf, 0xCu);
        }

        v172 = sub_19B420058();
        if (*(v172 + 160) > 1 || *(v172 + 164) > 1 || *(v172 + 168) > 1 || *(v172 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          *v304 = 138412290;
          *&v304[4] = v44;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "Workout, DETECTED CHANGE, %@", v304, 12);
          v174 = v173;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v173);
          if (v174 != buf)
          {
            free(v174);
          }
        }

        if (v48 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          objc_msgSend_workoutManager_detectedChangeInWorkoutType_withOverview_(self->fDelegate, v175, self->fSender, v44, v48);
        }

        break;
      case 0x16uLL:
        v208 = objc_msgSend__isReminderAllowedForType_(self, v47, 1);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v209 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          v211 = objc_msgSend_objectForKeyedSubscript_(event, v210, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v211, v212, v213);
          *buf = 134218498;
          *v307 = v214;
          *&v307[8] = 2112;
          *&v307[10] = v44;
          v308 = 1024;
          v309 = v208;
          _os_log_impl(&dword_19B41C000, v209, OS_LOG_TYPE_DEFAULT, "Workout, RESUME SUGGESTION at %f, %@, allowed %d", buf, 0x1Cu);
        }

        v215 = sub_19B420058();
        if (*(v215 + 160) > 1 || *(v215 + 164) > 1 || *(v215 + 168) > 1 || *(v215 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v217 = qword_1EAFE27B8;
          v218 = objc_msgSend_objectForKeyedSubscript_(event, v216, @"CMWorkoutEventDate");
          objc_msgSend_timeIntervalSinceReferenceDate(v218, v219, v220);
          *v304 = 134218498;
          *&v304[4] = v221;
          *&v304[12] = 2112;
          *&v304[14] = v44;
          *&v304[22] = 1024;
          LODWORD(v305) = v208;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v217, 0, "Workout, RESUME SUGGESTION at %f, %@, allowed %d", v304, 28);
          v223 = v222;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v222);
          if (v223 != buf)
          {
            free(v223);
          }
        }

        if (v208 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v227 = self->fDelegate;
          v226 = self->fSender;
          v228 = objc_msgSend_startDate(v44, v224, v225);
          objc_msgSend_workoutManager_suggestedResumeWorkout_atDate_(v227, v229, v226, v44, v228);
        }

        break;
      default:
        if (v42 >= 2)
        {
LABEL_171:
          v159 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v47, @"CMErrorDomain", 103, 0);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v160 = qword_1EAFE27B8;
          if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            *v307 = v44;
            *&v307[8] = 2048;
            *&v307[10] = v42;
            _os_log_impl(&dword_19B41C000, v160, OS_LOG_TYPE_FAULT, "Workout, Unrecognized event, %@, %ld", buf, 0x16u);
          }

          v161 = sub_19B420058();
          if ((*(v161 + 160) & 0x80000000) == 0 || (*(v161 + 164) & 0x80000000) == 0 || (*(v161 + 168) & 0x80000000) == 0 || *(v161 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2780 != -1)
            {
              dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
            }

            *v304 = 138412546;
            *&v304[4] = v44;
            *&v304[12] = 2048;
            *&v304[14] = v42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 17, "Workout, Unrecognized event, %@, %ld", v304, 22);
            v163 = v162;
            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v162);
            if (v163 != buf)
            {
              free(v163);
            }
          }

          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_workoutManager_didFailWorkout_withError_(self->fDelegate, v164, self->fSender, v44, v159);
          }

          else if (objc_opt_respondsToSelector())
          {
            objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v281, self->fSender, v44, v159);
          }
        }

        break;
    }

    return;
  }

  v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v38, @"CMErrorDomain", 103, 0);
  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
  }

  v54 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
  {
    v55 = self->fWorkout;
    *buf = 138412290;
    *v307 = v55;
    _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_FAULT, "Workout, Unrecognizable event dictionary, %@", buf, 0xCu);
  }

  v56 = sub_19B420058();
  if ((*(v56 + 160) & 0x80000000) == 0 || (*(v56 + 164) & 0x80000000) == 0 || (*(v56 + 168) & 0x80000000) == 0 || *(v56 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v57 = self->fWorkout;
    *v304 = 138412290;
    *&v304[4] = v57;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 17, "Workout, Unrecognizable event dictionary, %@", v304, 12, *v304, *&v304[8]);
LABEL_53:
    v58 = v37;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v37);
    if (v58 != buf)
    {
      free(v58);
    }
  }

LABEL_55:
  v59 = objc_opt_respondsToSelector();
  fDelegate = self->fDelegate;
  if (v59)
  {
    fSender = self->fSender;
    v32 = self->fWorkout;
    goto LABEL_57;
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v60, self->fSender, self->fWorkout, v12);
  }
}

- (void)_registerForWorkoutEvents
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->fLocationdConnection)
  {
    sub_19B428B50(&__p, "kCLConnectionMessageWorkoutEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v4 < 0)
    {
      operator delete(__p);
    }

    v5 = @"kCLConnectionMessageSubscribeKey";
    v6[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v6, &v5, 1);
    sub_19B6A2040();
  }
}

- (void)_unregisterForWorkoutEvents
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->fLocationdConnection)
  {
    sub_19B428B50(&__p, "kCLConnectionMessageWorkoutEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v4 < 0)
    {
      operator delete(__p);
    }

    v5 = @"kCLConnectionMessageSubscribeKey";
    v6[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v6, &v5, 1);
    sub_19B6A2040();
  }
}

- (void)_getPromptsNeededForWorkoutType:(int64_t)type handler:(id)handler
{
  if (objc_msgSend__shouldAllowMotionCalibrationPromptsForWorkoutType_(self, a2, type))
  {
    sub_19B5DE920();
  }

  v5 = *(handler + 2);

  v5(handler, 0, 0);
}

- (void)_beginWorkoutSession:(id)session withWorkout:(id)workout enableWorkoutChangeDetection:(BOOL)detection
{
  detectionCopy = detection;
  v58 = *MEMORY[0x1E69E9840];
  v9 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v10, v9);
  if (ExecutablePathFromPid)
  {
    v14 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v15 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413570;
      *&buf[1] = session;
      v48 = 2112;
      workoutCopy = workout;
      v50 = 1024;
      v51 = detectionCopy;
      v52 = 2112;
      v53 = v14;
      v54 = 1024;
      v55 = getpid();
      v56 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "WorkoutSession, begin session, %@, %@, %d, %@, %d, %p", buf, 0x36u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v17 = qword_1EAFE27B8;
      *v36 = 138413570;
      *&v36[4] = session;
      v37 = 2112;
      workoutCopy2 = workout;
      v39 = 1024;
      v40 = detectionCopy;
      v41 = 2112;
      v42 = v14;
      v43 = 1024;
      v44 = getpid();
      v45 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v17, 0, "WorkoutSession, begin session, %@, %@, %d, %@, %d, %p", v36, 54);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _beginWorkoutSession:withWorkout:enableWorkoutChangeDetection:]", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = objc_msgSend_workouts(session, v12, v13);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v29, v35, 16);
    if (v23)
    {
      v24 = *v30;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v20);
          }

          objc_msgSend__checkWorkout_(self, v22, *(*(&v29 + 1) + 8 * i));
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v29, v35, 16);
      }

      while (v23);
    }

    objc_msgSend__checkWorkout_(self, v22, workout);
    v33[0] = @"CMWorkoutAttributes";
    v33[1] = @"CMWorkoutOverviewData";
    v34[0] = workout;
    v34[1] = session;
    v33[2] = @"CMWorkoutEnableWorkoutChangeDetection";
    v34[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v26, detectionCopy);
    *v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v34, v33, 3);
    sub_19B5D12C8();
  }

  objc_msgSend__setWorkout_(self, v12, workout);
  sessionCopy = session;

  self->fWorkoutOverview = session;
  self->fSessionState = 1;
  self->fEnableWorkoutChangeDetection = detectionCopy;
}

- (void)_setCurrentWorkoutType:(id)type isManualTransition:(BOOL)transition
{
  transitionCopy = transition;
  v38 = *MEMORY[0x1E69E9840];
  v7 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v8, v7);
  if (ExecutablePathFromPid)
  {
    v11 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v12 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413314;
      *&buf[1] = type;
      v30 = 1024;
      v31 = transitionCopy;
      v32 = 2112;
      v33 = v11;
      v34 = 1024;
      v35 = getpid();
      v36 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "WorkoutSession, set current type, %@, %d, %@, %d, %p", buf, 0x2Cu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v14 = qword_1EAFE27B8;
      *v20 = 138413314;
      *&v20[4] = type;
      v21 = 1024;
      v22 = transitionCopy;
      v23 = 2112;
      v24 = v11;
      v25 = 1024;
      v26 = getpid();
      v27 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v14, 0, "WorkoutSession, set current type, %@, %d, %@, %d, %p", v20, 44);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _setCurrentWorkoutType:isManualTransition:]", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v18[0] = @"CMWorkoutAttributes";
    v18[1] = @"CMWorkoutIsManualTransition";
    v19[0] = type;
    v19[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v10, transitionCopy);
    *v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v19, v18, 2);
    sub_19B44BE58();
  }

  objc_msgSend__setWorkout_(self, v10, type);
  self->fSessionState = 1;
}

- (void)_setWorkout:(id)workout
{
  if (!workout || objc_msgSend_type(workout, a2, workout) != 33)
  {
    workoutCopy = workout;

    self->fLastNonTransitionWorkout = workout;
  }

  workoutCopy2 = workout;

  self->fWorkout = workout;
}

- (void)_endWorkoutSession:(id)session
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413058;
      *&buf[1] = session;
      v25 = 2112;
      v26 = v9;
      v27 = 1024;
      v28 = getpid();
      v29 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "WorkoutSession, end session, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v12 = qword_1EAFE27B8;
      *v17 = 138413058;
      *&v17[4] = session;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = getpid();
      v22 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 0, "WorkoutSession, end session, %@, %@, %d, %p", v17, 38);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _endWorkoutSession:]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v15 = @"CMWorkoutAttributes";
    sessionCopy = session;
    *v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &sessionCopy, &v15, 1);
    sub_19B686B90();
  }

  objc_msgSend__setWorkout_(self, v8, 0);

  self->fWorkoutOverview = 0;
  self->fSessionState = 0;
  self->fEnableWorkoutChangeDetection = 0;
}

- (void)_pauseWorkout:(id)workout
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413058;
      *&buf[1] = workout;
      v25 = 2112;
      v26 = v9;
      v27 = 1024;
      v28 = getpid();
      v29 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "WorkoutSession, manually pause, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v12 = qword_1EAFE27B8;
      *v17 = 138413058;
      *&v17[4] = workout;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = getpid();
      v22 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 0, "WorkoutSession, manually pause, %@, %@, %d, %p", v17, 38);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _pauseWorkout:]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v15 = @"CMWorkoutAttributes";
    workoutCopy = workout;
    *v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &workoutCopy, &v15, 1);
    sub_19B6A2040();
  }

  self->fSessionState = 2;
}

- (void)_resumeWorkout:(id)workout
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413058;
      *&buf[1] = workout;
      v25 = 2112;
      v26 = v9;
      v27 = 1024;
      v28 = getpid();
      v29 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "WorkoutSession, manually resume, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v12 = qword_1EAFE27B8;
      *v17 = 138413058;
      *&v17[4] = workout;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = getpid();
      v22 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 0, "WorkoutSession, manually resume, %@, %@, %d, %p", v17, 38);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _resumeWorkout:]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v15 = @"CMWorkoutAttributes";
    workoutCopy = workout;
    *v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &workoutCopy, &v15, 1);
    sub_19B66451C();
  }

  self->fSessionState = 1;
}

- (void)_snapshotWithCompletion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v8 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v9 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_INFO))
    {
      buf[0] = 138412802;
      *&buf[1] = v8;
      v28 = 1024;
      v29 = getpid();
      v30 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[snapshot] getting state for %@, %d, %p", buf, 0x1Cu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v11 = qword_1EAFE27B8;
      v21 = 138412802;
      v22 = v8;
      v23 = 1024;
      v24 = getpid();
      v25 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 1, "[snapshot] getting state for %@, %d, %p", &v21, 28);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _snapshotWithCompletion:]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    operator new();
  }

  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
  }

  v14 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[snapshot] error, no connection to locationd", buf, 2u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    LOWORD(v21) = 0;
    LODWORD(v20) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 16, "[snapshot] error, no connection to locationd", &v21, v20);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _snapshotWithCompletion:]", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v16, @"CMErrorDomain", 103, 0);
  (*(completion + 2))(completion, 0, v19);
}

- (void)_muteReminderType:(int64_t)type mute:(BOOL)mute
{
  muteCopy = mute;
  v43 = *MEMORY[0x1E69E9840];
  v7 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v8, v7);
  if (ExecutablePathFromPid)
  {
    v11 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v12 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110146;
      *&buf[4] = muteCopy;
      v37[0] = 2048;
      *&v37[1] = type;
      v37[5] = 2112;
      v38 = v11;
      v39 = 1024;
      v40 = getpid();
      v41 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "Workout, reminder mute settings, setting mute behavior to %d for reminder type %ld for client %@, %d, %p", buf, 0x2Cu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v14 = qword_1EAFE27B8;
      LODWORD(v27) = 67110146;
      HIDWORD(v27) = muteCopy;
      v28 = 2048;
      typeCopy = type;
      v30 = 2112;
      v31 = v11;
      v32 = 1024;
      v33 = getpid();
      v34 = 2048;
      selfCopy2 = self;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v14, 0, "Workout, reminder mute settings, setting mute behavior to %d for reminder type %ld for client %@, %d, %p", &v27, 44);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _muteReminderType:mute:]", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  objc_msgSend__setReminderMuteSettingsForType_mute_(self, v10, type, muteCopy);
  if (self->fLocationdConnection)
  {
    v25[0] = @"CMWorkoutReminderSettingType";
    v26[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v17, type);
    v25[1] = @"CMWorkoutReminderMuteValue";
    v26[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v18, muteCopy);
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v26, v25, 2);
    sub_19B6F9514();
  }

  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
  }

  v20 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "Workout, reminder mute settings, no connection to locationd to send mute behavior", buf, 2u);
  }

  v21 = sub_19B420058();
  if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    LOWORD(v27) = 0;
    LODWORD(v24) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 16, "Workout, reminder mute settings, no connection to locationd to send mute behavior", &v27, v24);
    v23 = v22;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _muteReminderType:mute:]", "CoreLocation: %s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }
}

- (void)_muteAutoPauseForWorkoutType:(int64_t)type mute:(BOOL)mute
{
  muteCopy = mute;
  v31 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, mute);
  fAutoPauseMuteSettings = self->fAutoPauseMuteSettings;
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, type);
  objc_msgSend_setObject_forKeyedSubscript_(fAutoPauseMuteSettings, v11, v7, v10);
  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
  }

  v12 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    typeCopy = type;
    v27 = 1024;
    v28 = muteCopy;
    v29 = 1024;
    isAutoPauseAllowedForWorkoutType = objc_msgSend__isAutoPauseAllowedForWorkoutType_(self, v13, type);
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "Workout, auto pause mute settings, setting for workout type %ld to %d, autopause = %d", buf, 0x18u);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v16 = qword_1EAFE27B8;
    v19 = 134218496;
    typeCopy2 = type;
    v21 = 1024;
    v22 = muteCopy;
    v23 = 1024;
    v24 = objc_msgSend__isAutoPauseAllowedForWorkoutType_(self, v15, type);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v16, 0, "Workout, auto pause mute settings, setting for workout type %ld to %d, autopause = %d", &v19, 24);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _muteAutoPauseForWorkoutType:mute:]", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

- (void)_checkWorkout:(id)workout
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_type(workout, a2, workout) == 19)
  {
    if (!objc_msgSend_swimWorkoutInstance_(CMSwimWorkout, v4, workout))
    {
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E28500);
      }

      v6 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Trying to start a swim session without using a CMSwimWorkout!  Treating this swim as an open water swim.", buf, 2u);
      }

      v7 = sub_19B420058();
      if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E28500);
        }

        LOWORD(v13[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2980, 17, "Trying to start a swim session without using a CMSwimWorkout!  Treating this swim as an open water swim.", v13, 2, v13[0]);
LABEL_25:
        v12 = v8;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _checkWorkout:]", "CoreLocation: %s\n", v8);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }

  else if (objc_msgSend_type(workout, v4, v5) == 14 && !objc_msgSend_genericWorkoutInstance_(CMGenericWorkout, v9, workout))
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Trying to start a generic workout without using CMGenericWorkout!", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      LOWORD(v13[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 16, "Trying to start a generic workout without using CMGenericWorkout!", v13, 2, v13[0]);
      goto LABEL_25;
    }
  }
}

- (void)_setReminderMuteSettingsForType:(int64_t)type mute:(BOOL)mute
{
  muteCopy = mute;
  v43 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, mute);
  fMuteSettings = self->fMuteSettings;
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, type);
  objc_msgSend_setObject_forKeyedSubscript_(fMuteSettings, v11, v7, v10);
  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
  }

  v12 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    typeCopy = type;
    v35 = 1024;
    v36 = muteCopy;
    v37 = 1024;
    isReminderAllowedForType = objc_msgSend__isReminderAllowedForType_(self, v13, 0);
    v39 = 1024;
    v40 = objc_msgSend__isReminderAllowedForType_(self, v14, 1);
    v41 = 1024;
    v42 = objc_msgSend__isReminderAllowedForType_(self, v15, 2);
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "Workout, reminder mute settings, setting type %ld to %d, current snapshot, start = %d, resume = %d, end = %d", buf, 0x24u);
  }

  v16 = sub_19B420058();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v18 = qword_1EAFE27B8;
    v23 = 134219008;
    typeCopy2 = type;
    v25 = 1024;
    v26 = muteCopy;
    v27 = 1024;
    v28 = objc_msgSend__isReminderAllowedForType_(self, v17, 0);
    v29 = 1024;
    v30 = objc_msgSend__isReminderAllowedForType_(self, v19, 1);
    v31 = 1024;
    v32 = objc_msgSend__isReminderAllowedForType_(self, v20, 2);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v18, 0, "Workout, reminder mute settings, setting type %ld to %d, current snapshot, start = %d, resume = %d, end = %d", &v23, 36);
    v22 = v21;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _setReminderMuteSettingsForType:mute:]", "CoreLocation: %s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }
}

- (BOOL)_isReminderAllowedForType:(int64_t)type
{
  fMuteSettings = self->fMuteSettings;
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, type);
  if (!objc_msgSend_objectForKey_(fMuteSettings, v7, v6))
  {
    return 1;
  }

  v9 = self->fMuteSettings;
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, type);
  v12 = objc_msgSend_objectForKey_(v9, v11, v10);
  return objc_msgSend_BOOLValue(v12, v13, v14) ^ 1;
}

- (BOOL)_isAutoPauseAllowedForWorkoutType:(int64_t)type
{
  v5 = type > 0x18;
  fAutoPauseMuteSettings = self->fAutoPauseMuteSettings;
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, type);
  if (objc_msgSend_objectForKey_(fAutoPauseMuteSettings, v8, v7))
  {
    v10 = self->fAutoPauseMuteSettings;
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, type);
    v13 = objc_msgSend_objectForKey_(v10, v12, v11);
    LOBYTE(v16) = objc_msgSend_BOOLValue(v13, v14, v15) ^ 1;
  }

  else
  {
    v16 = v5 | (0xFE7FFFu >> type);
  }

  return v16 & 1;
}

@end