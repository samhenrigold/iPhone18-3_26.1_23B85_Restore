@interface TUIKTStateManager
- (BOOL)isCDPErrorState;
- (BOOL)isErrorState;
- (NSUUID)firstRecentFailedEventId;
- (TUIKTStateManager)init;
- (id)stateDescription;
- (id)stateLabel;
- (int64_t)state;
- (unint64_t)optIn;
- (unint64_t)recentFailedEventIdsCount;
- (void)init;
- (void)isManateeAvailableWithCompletion:(id)completion;
- (void)setExpectedResolutionDays:(id)days;
- (void)stateLabel;
- (void)updateStateWithKTStatusResult:(id)result;
@end

@implementation TUIKTStateManager

- (TUIKTStateManager)init
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager init];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTStateManager init];
  }

  v4.receiver = self;
  v4.super_class = TUIKTStateManager;
  result = [(TUIKTStateManager *)&v4 init];
  if (result)
  {
    result->_state = -1;
  }

  return result;
}

uint64_t __25__TUIKTStateManager_init__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (int64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  objc_sync_exit(selfCopy);

  return state;
}

- (unint64_t)optIn
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  optIn = [(KTStatusResult *)selfCopy->_ktStatusResult optIn];
  objc_sync_exit(selfCopy);

  return optIn;
}

- (unint64_t)recentFailedEventIdsCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recentFailedEventIds = [(KTStatusResult *)selfCopy->_ktStatusResult recentFailedEventIds];
  v4 = [recentFailedEventIds count];

  objc_sync_exit(selfCopy);
  return v4;
}

- (NSUUID)firstRecentFailedEventId
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recentFailedEventIds = [(KTStatusResult *)selfCopy->_ktStatusResult recentFailedEventIds];
  if ([recentFailedEventIds count])
  {
    recentFailedEventIds2 = [(KTStatusResult *)selfCopy->_ktStatusResult recentFailedEventIds];
    firstObject = [recentFailedEventIds2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  objc_sync_exit(selfCopy);

  return firstObject;
}

- (void)updateStateWithKTStatusResult:(id)result
{
  v25 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager updateStateWithKTStatusResult:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    stateDescription = [(TUIKTStateManager *)selfCopy stateDescription];
    v17 = 136315906;
    v18 = "[TUIKTStateManager updateStateWithKTStatusResult:]";
    v19 = 2114;
    v20 = stateDescription;
    v21 = 2114;
    v22 = resultCopy;
    v23 = 2114;
    v24 = selfCopy;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "%s current %{public}@, %{public}@ on %{public}@", &v17, 0x2Au);
  }

  objc_storeStrong(&selfCopy->_ktStatusResult, result);
  if ([(TUIKTStateManager *)resultCopy accountStatus]== 5)
  {
    v9 = 10;
    goto LABEL_38;
  }

  if ([(TUIKTStateManager *)resultCopy optIn]== 1)
  {
    if ([(TUIKTStateManager *)resultCopy accountStatus]== 2)
    {
LABEL_9:
      v9 = 5;
      goto LABEL_38;
    }

    if (_os_feature_enabled_impl() && ![(TUIKTStateManager *)resultCopy idsAccountStatus]|| (_os_feature_enabled_impl() & 1) == 0 && [(TUIKTStateManager *)resultCopy idsAccountStatus]!= 3)
    {
      v9 = 3;
      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)resultCopy accountStatus]== 3)
    {
      v9 = 6;
      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)resultCopy accountStatus]== 4 && [(TUIKTStateManager *)resultCopy selfStatus]== 1)
    {
      v9 = 4;
      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)resultCopy accountStatus]== 4 && ([(TUIKTStateManager *)resultCopy selfStatus]== 3 || [(TUIKTStateManager *)resultCopy selfStatus]== 4))
    {
      v10 = [(TUIKTStateManager *)resultCopy systemStatus]== 3;
      v9 = 7;
      v11 = 9;
LABEL_36:
      if (v10)
      {
        v9 = v11;
      }

      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)resultCopy accountStatus]== 4 && ([(TUIKTStateManager *)resultCopy selfStatus]== 2 || [(TUIKTStateManager *)resultCopy systemStatus]== 2 || [(TUIKTStateManager *)resultCopy systemStatus]== 4))
    {
      systemStatus = [(TUIKTStateManager *)resultCopy systemStatus];
      v9 = 8;
      if (systemStatus == 3)
      {
        v9 = 9;
      }
    }

    else
    {
      systemStatus2 = [(TUIKTStateManager *)resultCopy systemStatus];
      v9 = 12;
      if (systemStatus2 != 5)
      {
        v9 = 1;
      }
    }
  }

  else
  {
    if ([(TUIKTStateManager *)resultCopy optIn]== 2)
    {
      if ([(TUIKTStateManager *)resultCopy serverOptIn]== 1)
      {
        if ([(TUIKTStateManager *)resultCopy accountStatus]== 2)
        {
          goto LABEL_9;
        }

        v10 = [(TUIKTStateManager *)resultCopy accountStatus]== 3;
        v9 = 2;
        v11 = 6;
      }

      else
      {
        if ([(TUIKTStateManager *)resultCopy accountStatus]== 3)
        {
          v9 = 11;
          goto LABEL_38;
        }

        v10 = [(TUIKTStateManager *)resultCopy accountStatus]== 2;
        v9 = 2;
        v11 = 10;
      }

      goto LABEL_36;
    }

    if ([(TUIKTStateManager *)resultCopy optIn])
    {
      v9 = -1;
    }

    else
    {
      systemStatus3 = [(TUIKTStateManager *)resultCopy systemStatus];
      v9 = 12;
      if (systemStatus3 != 5)
      {
        v9 = 0;
      }
    }
  }

LABEL_38:
  selfCopy->_state = v9;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager updateStateWithKTStatusResult:];
  }

  v13 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    stateDescription2 = [(TUIKTStateManager *)selfCopy stateDescription];
    v17 = 136315650;
    v18 = "[TUIKTStateManager updateStateWithKTStatusResult:]";
    v19 = 2114;
    v20 = stateDescription2;
    v21 = 2114;
    v22 = selfCopy;
    _os_log_impl(&dword_26F50B000, v13, OS_LOG_TYPE_DEFAULT, "%s new %{public}@ on %{public}@", &v17, 0x20u);
  }

  objc_sync_exit(selfCopy);
}

uint64_t __51__TUIKTStateManager_updateStateWithKTStatusResult___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __51__TUIKTStateManager_updateStateWithKTStatusResult___block_invoke_23()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)isManateeAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager isManateeAvailableWithCompletion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTStateManager isManateeAvailableWithCompletion:];
  }

  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28;
  block[3] = &unk_279DDAF50;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[TUIKTStateManager isManateeAvailableWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }
  }

  v4 = objc_alloc(MEMORY[0x277CFD548]);
  v5 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v6 = [v4 initWithContext:v5];

  v8 = 0;
  LOBYTE(v5) = [v6 isManateeAvailable:&v8];
  v7 = v8;
  if ((v5 & 1) == 0)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_2();
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
    {
      __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_3();
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_32()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isErrorState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (selfCopy->_state - 3) < 0xA;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isCDPErrorState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  v4 = state < 0xC;
  v5 = 0xC60u >> state;
  objc_sync_exit(selfCopy);

  return v4 & v5;
}

- (id)stateLabel
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  if (state <= 0xC)
  {
    if (((1 << state) & 0x1708) != 0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"UNAVAILABLE" value:&stru_287F92480 table:@"Localizable"];
      goto LABEL_8;
    }

    if (((1 << state) & 0xB0) != 0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"ERROR" value:&stru_287F92480 table:@"Localizable"];
LABEL_8:
      v6 = v5;

      goto LABEL_9;
    }

    if (((1 << state) & 0x840) != 0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"WAITING" value:&stru_287F92480 table:@"Localizable"];
      goto LABEL_8;
    }
  }

  recentFailedEventIds = [(KTStatusResult *)selfCopy->_ktStatusResult recentFailedEventIds];
  v9 = [recentFailedEventIds count];

  if (v9)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
    {
      [TUIKTStateManager stateLabel];
    }

    v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      recentFailedEventIds2 = [(KTStatusResult *)selfCopy->_ktStatusResult recentFailedEventIds];
      [(TUIKTStateManager *)recentFailedEventIds2 stateLabel:selfCopy];
    }

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v12 localizedStringForKey:@"ERROR" value:&stru_287F92480 table:@"Localizable"];
  }

  else
  {
    v6 = &stru_287F92480;
  }

LABEL_9:
  objc_sync_exit(selfCopy);

  return v6;
}

uint64_t __31__TUIKTStateManager_stateLabel__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)setExpectedResolutionDays:(id)days
{
  daysCopy = days;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (daysCopy)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [currentCalendar components:16 fromDate:v7 toDate:daysCopy options:0];

    selfCopy->_expectedResolutionDays = [v8 day] + 1;
  }

  else
  {
    selfCopy->_expectedResolutionDays = 0;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager setExpectedResolutionDays:];
  }

  v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_DEBUG))
  {
    [(TUIKTStateManager *)selfCopy setExpectedResolutionDays:v9];
  }

  objc_sync_exit(selfCopy);
}

uint64_t __47__TUIKTStateManager_setExpectedResolutionDays___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)stateDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state + 1;
  if (v3 >= 0xD)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"unexpected UI state (%ld)", selfCopy->_state];
  }

  else
  {
    v4 = off_279DDAF70[v3];
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UI state = %@", v4];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v1, 0x16u);
}

- (void)isManateeAvailableWithCompletion:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v1, 0x16u);
}

void __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_26F50B000, v2, OS_LOG_TYPE_ERROR, "%s error = %{public}@ on %{public}@", v3, 0x20u);
}

- (void)stateLabel
{
  *buf = 136315650;
  *(buf + 4) = "[TUIKTStateManager stateLabel]";
  *(buf + 6) = 2114;
  *(buf + 14) = self;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_debug_impl(&dword_26F50B000, log, OS_LOG_TYPE_DEBUG, "%s recentFailedEventIds: %{public}@ on %{public}@", buf, 0x20u);
}

- (void)setExpectedResolutionDays:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 136315650;
  v4 = "[TUIKTStateManager setExpectedResolutionDays:]";
  v5 = 2048;
  v6 = v2;
  v7 = 2114;
  v8 = a1;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%s expectedResolutionDays = %ld on %{public}@", &v3, 0x20u);
}

@end