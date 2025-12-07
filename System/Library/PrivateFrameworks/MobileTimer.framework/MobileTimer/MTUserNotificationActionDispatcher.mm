@interface MTUserNotificationActionDispatcher
+ (unint64_t)_alarmNotificationActionForUserNotificationAction:(id)action category:(id)category;
+ (unint64_t)_timerNotificationActionForUserNotificationAction:(id)action;
- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)storage timerStorage:(id)timerStorage;
- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)storage timerStorage:(id)timerStorage alarmKit:(id)kit;
- (void)_handleAlarmNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)_handleTimerNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)finishHandlingAlarmNotificationIdentifier:(id)identifier isFirstParty:(BOOL)party action:(unint64_t)action category:(id)category completionHandler:(id)handler;
- (void)finishHandlingTimerNotificationWithIdentifier:(id)identifier action:(unint64_t)action isFirstParty:(BOOL)party withCompletionHandler:(id)handler;
- (void)handleAlarmNotificationIdentifier:(id)identifier action:(unint64_t)action category:(id)category completionHandler:(id)handler;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation MTUserNotificationActionDispatcher

- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)storage timerStorage:(id)timerStorage
{
  storageCopy = storage;
  timerStorageCopy = timerStorage;
  v14.receiver = self;
  v14.super_class = MTUserNotificationActionDispatcher;
  v9 = [(MTUserNotificationActionDispatcher *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alarmStorage, storage);
    objc_storeStrong(&v10->_timerStorage, timerStorage);
    v11 = objc_opt_new();
    metrics = v10->_metrics;
    v10->_metrics = v11;
  }

  return v10;
}

- (MTUserNotificationActionDispatcher)initWithAlarmStorage:(id)storage timerStorage:(id)timerStorage alarmKit:(id)kit
{
  kitCopy = kit;
  v10 = [(MTUserNotificationActionDispatcher *)self initWithAlarmStorage:storage timerStorage:timerStorage];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_alarmKit, kit);
  }

  return v11;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  kdebug_trace();
  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received notification response", buf, 0xCu);
  }

  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  if (([categoryIdentifier isEqualToString:@"MTAlarmCategory"] & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", @"MTAlarmNoSnoozeCategory") & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", @"MTWakeUpAlarmNoSnoozeCategory") & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", @"AlarmSnoozeCountdown") & 1) != 0 || (objc_msgSend(categoryIdentifier, "isEqualToString:", @"MTBedtimeAlarmCategory") & 1) != 0 || objc_msgSend(categoryIdentifier, "isEqualToString:", @"MTWakeUpAlarmCategory"))
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
    v17[3] = &unk_1E7B0D6F0;
    v18 = handlerCopy;
    [(MTUserNotificationActionDispatcher *)self _handleAlarmNotificationResponse:responseCopy withCompletionHandler:v17];
    v14 = v18;
LABEL_10:

    goto LABEL_11;
  }

  if ([categoryIdentifier isEqualToString:@"MTTimerCategory"])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
    v15[3] = &unk_1E7B0D6F0;
    v16 = handlerCopy;
    [(MTUserNotificationActionDispatcher *)self _handleTimerNotificationResponse:responseCopy withCompletionHandler:v15];
    v14 = v16;
    goto LABEL_10;
  }

  kdebug_trace();
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_11:
}

uint64_t __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __114__MTUserNotificationActionDispatcher_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (unint64_t)_alarmNotificationActionForUserNotificationAction:(id)action category:(id)category
{
  actionCopy = action;
  categoryCopy = category;
  if ([actionCopy isEqualToString:@"MTAlarmSnoozeAction"])
  {
    v7 = 1;
    goto LABEL_14;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x1E6983420]])
  {
    if (([categoryCopy isEqualToString:@"MTAlarmNoSnoozeCategory"] & 1) == 0)
    {
      if ([categoryCopy isEqualToString:@"MTWakeUpAlarmNoSnoozeCategory"])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_14;
    }

LABEL_13:
    v7 = 2;
    goto LABEL_14;
  }

  if ([actionCopy isEqualToString:@"MTAlarmGoToBedAction"])
  {
    v7 = 3;
    goto LABEL_14;
  }

  if ([actionCopy isEqualToString:@"MTAlarmDismissAction"] & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", *MEMORY[0x1E69833F8]) & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", *MEMORY[0x1E69833E0]))
  {
    goto LABEL_13;
  }

  if ([actionCopy isEqualToString:@"MTAlarmSecondaryAction"])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)_handleAlarmNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  v13 = MTLogForCategory(3);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543874;
    selfCopy = self;
    v22 = 2114;
    v23 = categoryIdentifier;
    v24 = 2114;
    v25 = actionIdentifier;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ received response for category %{public}@ and action %{public}@", &v20, 0x20u);
  }

  v14 = [objc_opt_class() _alarmNotificationActionForUserNotificationAction:actionIdentifier category:categoryIdentifier];
  if (v14)
  {
    v15 = v14;
    notification2 = [responseCopy notification];
    request2 = [notification2 request];
    identifier = [request2 identifier];
    [(MTUserNotificationActionDispatcher *)self handleAlarmNotificationIdentifier:identifier action:v15 category:categoryIdentifier completionHandler:handlerCopy];
  }

  else
  {
    v19 = MTLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MTUserNotificationActionDispatcher _handleAlarmNotificationResponse:actionIdentifier withCompletionHandler:v19];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)handleAlarmNotificationIdentifier:(id)identifier action:(unint64_t)action category:(id)category completionHandler:(id)handler
{
  categoryCopy = category;
  handlerCopy = handler;
  mtStringByRemovingNotificationPrefixes = [identifier mtStringByRemovingNotificationPrefixes];
  alarmStorage = [(MTUserNotificationActionDispatcher *)self alarmStorage];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__MTUserNotificationActionDispatcher_handleAlarmNotificationIdentifier_action_category_completionHandler___block_invoke;
  v17[3] = &unk_1E7B0D718;
  v17[4] = self;
  v18 = mtStringByRemovingNotificationPrefixes;
  v20 = handlerCopy;
  actionCopy = action;
  v19 = categoryCopy;
  v14 = handlerCopy;
  v15 = categoryCopy;
  v16 = mtStringByRemovingNotificationPrefixes;
  [alarmStorage alarmWithIdentifier:v16 withCompletion:v17];
}

- (void)finishHandlingAlarmNotificationIdentifier:(id)identifier isFirstParty:(BOOL)party action:(unint64_t)action category:(id)category completionHandler:(id)handler
{
  partyCopy = party;
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  categoryCopy = category;
  handlerCopy = handler;
  v15 = [categoryCopy isEqualToString:@"MTBedtimeAlarmCategory"];
  if ([categoryCopy isEqualToString:@"MTWakeUpAlarmCategory"])
  {
    v16 = 1;
  }

  else
  {
    v16 = [categoryCopy isEqualToString:@"MTWakeUpAlarmNoSnoozeCategory"];
  }

  v17 = [categoryCopy isEqualToString:@"AlarmSnoozeCountdown"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__MTUserNotificationActionDispatcher_finishHandlingAlarmNotificationIdentifier_isFirstParty_action_category_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B0D230;
  aBlock[4] = self;
  v18 = handlerCopy;
  v38 = v18;
  v19 = _Block_copy(aBlock);
  if (action > 2)
  {
    if (action == 3)
    {
      if ((v15 & 1) == 0)
      {
        NSLog(&cfstr_UnexpectedAler.isa);
      }

      v33 = MTLogForCategory(3);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy9 = self;
        v41 = 2114;
        v42 = identifierCopy;
        _os_log_impl(&dword_1B1F9F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ received go to bed action for bedtime notification %{public}@", buf, 0x16u);
      }

      alarmStorage = [(MTUserNotificationActionDispatcher *)self alarmStorage];
      [alarmStorage dismissAlarmWithIdentifier:identifierCopy dismissAction:2 withCompletion:v19 source:0];

      metrics = [(MTUserNotificationActionDispatcher *)self metrics];
      metrics2 = metrics;
      v26 = 2;
      goto LABEL_36;
    }

    if (action == 4)
    {
      v20 = MTLogForCategory(3);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy9 = self;
        v41 = 2114;
        v42 = identifierCopy;
        _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ processing secondary action for alarmkit alarm with identifier: %{public}@", buf, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit performSecondaryActionWithIdentifier:identifierCopy];
      goto LABEL_38;
    }

LABEL_13:
    NSLog(&cfstr_UnexpectedActi.isa, action);
    goto LABEL_14;
  }

  if (action == 1)
  {
    v28 = MTLogForCategory(3);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (partyCopy)
    {
      if (v29)
      {
        *buf = 138543618;
        selfCopy9 = self;
        v41 = 2114;
        v42 = identifierCopy;
        _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ received snooze action for %{public}@", buf, 0x16u);
      }

      v30 = 2;
      if (!v16)
      {
        v30 = 0;
      }

      if (v15)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      alarmStorage2 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
      [alarmStorage2 snoozeAlarmWithIdentifier:identifierCopy snoozeAction:v31 withCompletion:v19 source:0];

      metrics2 = [(MTUserNotificationActionDispatcher *)self metrics];
      [metrics2 logAlarmSnoozeAction:v31];
      goto LABEL_37;
    }

    if (v29)
    {
      *buf = 138543618;
      selfCopy9 = self;
      v41 = 2114;
      v42 = identifierCopy;
      _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ processing snooze action for alarmkit alarm with identifier: %{public}@", buf, 0x16u);
    }

    [(MTAlarmKit *)self->_alarmKit snoozeAlarmWithIdentifier:identifierCopy];
    goto LABEL_38;
  }

  if (action != 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v21 = MTLogForCategory(3);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v22)
    {
      *buf = 138543618;
      selfCopy9 = self;
      v41 = 2114;
      v42 = identifierCopy;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for wakeup alarm %{public}@", buf, 0x16u);
    }

    alarmStorage3 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [alarmStorage3 dismissAlarmWithIdentifier:identifierCopy dismissAction:5 withCompletion:v19 source:0];

    metrics = [(MTUserNotificationActionDispatcher *)self metrics];
    metrics2 = metrics;
    v26 = 5;
LABEL_36:
    [metrics logAlarmDismissAction:v26];
LABEL_37:

    goto LABEL_38;
  }

  if (v15)
  {
    if (v22)
    {
      *buf = 138543618;
      selfCopy9 = self;
      v41 = 2114;
      v42 = identifierCopy;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for bedtime notification %{public}@", buf, 0x16u);
    }

    alarmStorage4 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [alarmStorage4 dismissAlarmWithIdentifier:identifierCopy dismissAction:1 withCompletion:v19 source:0];

    metrics = [(MTUserNotificationActionDispatcher *)self metrics];
    metrics2 = metrics;
    v26 = 1;
    goto LABEL_36;
  }

  if (v17)
  {
    if (v22)
    {
      *buf = 138543618;
      selfCopy9 = self;
      v41 = 2114;
      v42 = identifierCopy;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for snooze countdown notification %{public}@", buf, 0x16u);
    }

    alarmStorage5 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [alarmStorage5 dismissAlarmWithIdentifier:identifierCopy dismissAction:6 withCompletion:v19 source:0];

    metrics = [(MTUserNotificationActionDispatcher *)self metrics];
    metrics2 = metrics;
    v26 = 6;
    goto LABEL_36;
  }

  if (partyCopy)
  {
    if (v22)
    {
      *buf = 138543618;
      selfCopy9 = self;
      v41 = 2114;
      v42 = identifierCopy;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for alarm %{public}@", buf, 0x16u);
    }

    alarmStorage6 = [(MTUserNotificationActionDispatcher *)self alarmStorage];
    [alarmStorage6 dismissAlarmWithIdentifier:identifierCopy dismissAction:0 withCompletion:v19 source:0];

    metrics = [(MTUserNotificationActionDispatcher *)self metrics];
    metrics2 = metrics;
    v26 = 0;
    goto LABEL_36;
  }

  if (v22)
  {
    *buf = 138543618;
    selfCopy9 = self;
    v41 = 2114;
    v42 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ processing dismiss action for alarmkit alarm with identifier: %{public}@", buf, 0x16u);
  }

  [(MTAlarmKit *)self->_alarmKit dismissAlarmWithIdentifier:identifierCopy];
LABEL_38:
}

uint64_t __127__MTUserNotificationActionDispatcher_finishHandlingAlarmNotificationIdentifier_isFirstParty_action_category_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ calling completion", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (unint64_t)_timerNotificationActionForUserNotificationAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"MTTimerRepeatAction"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"MTTimerDismissAction"] & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", *MEMORY[0x1E69833F8]) & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", *MEMORY[0x1E69833E0]) & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", *MEMORY[0x1E6983420]))
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"MTTimerSecondaryAction"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleTimerNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MTUserNotificationActionDispatcher__handleTimerNotificationResponse_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7B0D230;
  aBlock[4] = self;
  v8 = handlerCopy;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  actionIdentifier = [responseCopy actionIdentifier];
  v11 = MTLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v28 = 2114;
    v29 = actionIdentifier;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ received response for action %{public}@", buf, 0x16u);
  }

  v12 = [objc_opt_class() _timerNotificationActionForUserNotificationAction:actionIdentifier];
  if (v12)
  {
    v13 = v12;
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];

    timerStorage = self->_timerStorage;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__MTUserNotificationActionDispatcher__handleTimerNotificationResponse_withCompletionHandler___block_invoke_7;
    v20[3] = &unk_1E7B0D740;
    v20[4] = self;
    v21 = identifier;
    v23 = v13;
    v22 = v9;
    v18 = identifier;
    [(MTTimerStorage *)timerStorage getTimerWithIdentifier:v18 completion:v20];
  }

  else
  {
    v19 = MTLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MTUserNotificationActionDispatcher _handleTimerNotificationResponse:actionIdentifier withCompletionHandler:v19];
    }

    v8[2](v8);
  }
}

uint64_t __93__MTUserNotificationActionDispatcher__handleTimerNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ calling completion", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)finishHandlingTimerNotificationWithIdentifier:(id)identifier action:(unint64_t)action isFirstParty:(BOOL)party withCompletionHandler:(id)handler
{
  partyCopy = party;
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  switch(action)
  {
    case 3uLL:
      v19 = MTLogForCategory(3);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        selfCopy5 = self;
        v22 = 2114;
        v23 = identifierCopy;
        _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ processing secondary action for alarmkit timer with identifier: %{public}@", &v20, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit performSecondaryActionWithIdentifier:identifierCopy];
      break;
    case 2uLL:
      v16 = MTLogForCategory(4);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (partyCopy)
      {
        if (v17)
        {
          v20 = 138543618;
          selfCopy5 = self;
          v22 = 2114;
          v23 = identifierCopy;
          _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ received repeat action for timer %{public}@", &v20, 0x16u);
        }

        timerStorage = [(MTUserNotificationActionDispatcher *)self timerStorage];
        [timerStorage repeatTimerWithIdentifier:identifierCopy withCompletion:handlerCopy source:0];

        metrics = [(MTUserNotificationActionDispatcher *)self metrics];
        [metrics logTimerRepeated];
        goto LABEL_12;
      }

      if (v17)
      {
        v20 = 138543618;
        selfCopy5 = self;
        v22 = 2114;
        v23 = identifierCopy;
        _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ processing repeat action for alarmkit timer with identifier: %{public}@", &v20, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit repeatTimerWithIdentifier:identifierCopy];
      break;
    case 1uLL:
      v12 = MTLogForCategory(4);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (partyCopy)
      {
        if (v13)
        {
          v20 = 138543618;
          selfCopy5 = self;
          v22 = 2114;
          v23 = identifierCopy;
          _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ received dismiss action for timer %{public}@", &v20, 0x16u);
        }

        timerStorage2 = [(MTUserNotificationActionDispatcher *)self timerStorage];
        [timerStorage2 dismissTimerWithIdentifier:identifierCopy withCompletion:handlerCopy source:0];

        metrics = [(MTUserNotificationActionDispatcher *)self metrics];
        [metrics logTimerDismissed];
LABEL_12:

        break;
      }

      if (v13)
      {
        v20 = 138543618;
        selfCopy5 = self;
        v22 = 2114;
        v23 = identifierCopy;
        _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ processing dismiss action for alarmkit timer with identifier: %{public}@", &v20, 0x16u);
      }

      [(MTAlarmKit *)self->_alarmKit dismissTimerWithIdentifier:identifierCopy];
      break;
  }
}

- (void)_handleAlarmNotificationResponse:(uint64_t)a1 withCompletionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Unexpected alarm notification action: %{public}@", &v2, 0xCu);
}

- (void)_handleTimerNotificationResponse:(uint64_t)a1 withCompletionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Unexpected timer notification action: %{public}@", &v2, 0xCu);
}

@end