@interface WBTabCyclerTabGroupUpdateObserver
@end

@implementation WBTabCyclerTabGroupUpdateObserver

void __52___WBTabCyclerTabGroupUpdateObserver_startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCycler(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7[0] = 0;
      _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "Beginning to observe Tab Group updates", v7, 2u);
    }

    [v3[2] addTabGroupObserver:v3];
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v3 target:sel__timeout selector:0 userInfo:0 repeats:300.0];
    v6 = v3[3];
    v3[3] = v5;
  }
}

@end