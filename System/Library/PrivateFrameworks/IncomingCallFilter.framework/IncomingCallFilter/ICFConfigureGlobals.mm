@interface ICFConfigureGlobals
@end

@implementation ICFConfigureGlobals

uint64_t ___ICFConfigureGlobals_block_invoke()
{
  sFilterLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  v0 = MEMORY[0x277D85CD0];

  return MEMORY[0x282173510]("com.apple.incoming-call-filter-server-started", 0, v0, &__block_literal_global_5);
}

uint64_t ___ICFConfigureGlobals_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "Server came alive", buf, 2u);
  }

  [sFilterLock lock];
  v3 = [sFilterBlocks count];
  v5 = ICFDefaultLog(v3, v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, " => We have active filters, connecting", v10, 2u);
    }

    _ICFConnectToServer(v6, v7);
  }

  else if (v6)
  {
    *v9 = 0;
    _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, " => No active filters, ignoring", v9, 2u);
  }

  return [sFilterLock unlock];
}

@end