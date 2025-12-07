@interface SetEnableEchoMitigation
@end

@implementation SetEnableEchoMitigation

double __localHelper_SetEnableEchoMitigation_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = CFSetContainsValue(**(a1 + 32), *(a1 + 40));
  if (v2)
  {
    if (v3)
    {
      return result;
    }

    v5 = OUTLINED_FUNCTION_2_77();
    CFSetAddValue(**(a1 + 32), *(a1 + 40));
    if (v5)
    {
      return result;
    }
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    v6 = OUTLINED_FUNCTION_2_77();
    CFSetRemoveValue(**(a1 + 32), *(a1 + 40));
    if (v6 != 1)
    {
      return result;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [*(*(a1 + 32) + 16) activeConversations];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v21 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v12 activitySessions];
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v22 + 1) + 8 * j);
              if (!*(a1 + 48))
              {
                goto LABEL_32;
              }

              if ([objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v22 + 1) + 8 * j) "activity")])
              {
                goto LABEL_27;
              }

              if (!*(a1 + 48))
              {
LABEL_32:
                if ([v18 isUsingAirplay])
                {
LABEL_27:
                  if (dword_1EAF170A0)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    OUTLINED_FUNCTION_0_80();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  [*(*(a1 + 32) + 16) setUsingAirplay:*(a1 + 48) != 0 onActivitySession:v18 onConversation:v12];
                  return result;
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v10 = v21;
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  if (dword_1EAF170A0)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_80();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

@end