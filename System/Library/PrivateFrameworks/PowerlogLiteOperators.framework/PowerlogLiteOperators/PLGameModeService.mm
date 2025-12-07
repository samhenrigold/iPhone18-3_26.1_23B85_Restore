@interface PLGameModeService
+ (void)load;
- (PLGameModeService)init;
- (void)initOperatorDependancies;
- (void)postGameModeStatusChangeNotification:(id)notification;
- (void)updateGameMode;
@end

@implementation PLGameModeService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLGameModeService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLGameModeService)init
{
  v3.receiver = self;
  v3.super_class = PLGameModeService;
  result = [(PLOperator *)&v3 init];
  result->_previousGameModeState = 0;
  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F160]);
  workQueue = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PLGameModeService_initOperatorDependancies__block_invoke;
  v7[3] = &unk_2782597E8;
  v7[4] = self;
  v5 = [v3 initWithWorkQueue:workQueue forNotification:@"com.apple.system.console_mode_changed" requireState:1 withBlock:v7];
  consoleModeListener = self->_consoleModeListener;
  self->_consoleModeListener = v5;
}

uint64_t __45__PLGameModeService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogGameMode();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Received notifiction for Console Mode change", v4, 2u);
  }

  return [*(a1 + 32) updateGameMode];
}

- (void)updateGameMode
{
  v16 = *MEMORY[0x277D85DE8];
  state64 = 0;
  consoleModeListener = [(PLGameModeService *)self consoleModeListener];
  state = notify_get_state([consoleModeListener stateToken], &state64);

  if (state)
  {
    v5 = PLLogGameMode();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Console Mode state Unavailable", buf, 2u);
    }

LABEL_10:

    return;
  }

  v6 = state64;
  v7 = PLLogGameMode();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v15 = v6 != 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Console Mode state: %d", buf, 8u);
  }

  if ((v6 != 0) != [(PLGameModeService *)self previousGameModeState])
  {
    [(PLGameModeService *)self setPreviousGameModeState:v6 != 0];
    v8 = PLLogGameMode();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      previousGameModeState = [(PLGameModeService *)self previousGameModeState];
      *buf = 67109120;
      v15 = previousGameModeState;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "self.previousGameModeState: %d", buf, 8u);
    }

    v12 = @"gameMode";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
    v13 = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(PLGameModeService *)self postGameModeStatusChangeNotification:v9];

    goto LABEL_10;
  }
}

- (void)postGameModeStatusChangeNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PLLogGameMode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [notificationCopy objectForKeyedSubscript:@"gameMode"];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "Sent game mode notification to submodules: %@", &v7, 0xCu);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLGameModeNotification" object:self userInfo:notificationCopy];
}

@end