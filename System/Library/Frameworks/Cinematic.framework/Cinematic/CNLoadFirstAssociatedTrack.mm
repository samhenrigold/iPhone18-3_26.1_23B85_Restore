@interface CNLoadFirstAssociatedTrack
@end

@implementation CNLoadFirstAssociatedTrack

void ___CNLoadFirstAssociatedTrack_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _CNLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      ___CNLoadFirstAssociatedTrack_block_invoke_cold_1();
    }

    v9 = 2;
    v10 = v7;
  }

  else
  {
    if ([v5 count])
    {
      v13 = *(a1 + 48);
      v11 = [v5 firstObject];
      v12 = *(v13 + 16);
      goto LABEL_8;
    }

    v14 = _CNLogSystem(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      ___CNLoadFirstAssociatedTrack_block_invoke_cold_2(a1, v14);
    }

    v9 = 3;
    v10 = 0;
  }

  v11 = _CNCinematicError(v9, v10);
  v12 = *(*(a1 + 48) + 16);
LABEL_8:
  v12();
}

void ___CNLoadFirstAssociatedTrack_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_236F52000, a2, OS_LOG_TYPE_DEBUG, "Error: no tracks associated (type %@) with track %@", &v4, 0x16u);
}

@end