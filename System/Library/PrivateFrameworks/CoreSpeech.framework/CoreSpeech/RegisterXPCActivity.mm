@interface RegisterXPCActivity
@end

@implementation RegisterXPCActivity

void ___RegisterXPCActivity_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      if (!*(a1 + 32))
      {
        goto LABEL_15;
      }

      if (!xpc_activity_set_state(v3, 4))
      {
        v5 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v14 = "_RegisterXPCActivity_block_invoke";
          _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to continue", buf, 0xCu);
        }
      }

      v6 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___RegisterXPCActivity_block_invoke_6;
      v11[3] = &unk_2784C6FD0;
      v12 = v3;
      (*(v6 + 16))(v6, v12, v11);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }

  if (xpc_activity_should_defer(v3))
  {
    v8 = xpc_activity_set_state(v3, 3);
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"No";
      *buf = 136315650;
      v14 = "_RegisterXPCActivity_block_invoke";
      v15 = 2112;
      v16 = v3;
      if (v8)
      {
        v10 = @"Yes";
      }

      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Deferring activity:%@ deferred:%@", buf, 0x20u);
    }
  }

LABEL_15:
}

void ___RegisterXPCActivity_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "_RegisterXPCActivity_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v1, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to done", &v2, 0xCu);
    }
  }
}

@end